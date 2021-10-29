-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
-- 
--   FileName:         i2c_master.vhd
--   Dependencies:     none
--   Design Software:  Quartus II 64-bit Version 13.1 Build 162 SJ Full Version
-- 
--   HDL CODE IS PROVIDED "AS IS."  DIGI-KEY EXPRESSLY DISCLAIMS ANY
--   WARRANTY OF ANY KIND, WHETHER EXPRESS OR IMPLIED, INCLUDING BUT NOT
--   LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
--   PARTICULAR PURPOSE, OR NON-INFRINGEMENT. IN NO EVENT SHALL DIGI-KEY
--   BE LIABLE FOR ANY INCIDENTAL, SPECIAL, INDIRECT OR CONSEQUENTIAL
--   DAMAGES, LOST PROFITS OR LOST DATA, HARM TO YOUR EQUIPMENT, COST OF
--   PROCUREMENT OF SUBSTITUTE GOODS, TECHNOLOGY OR SERVICES, ANY CLAIMS
--   BY THIRD PARTIES (INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF),
--   ANY CLAIMS FOR INDEMNITY OR CONTRIBUTION, OR OTHER SIMILAR COSTS.
-- 
--   Version History
--   Version 1.0 11/01/2012 Scott Larson
--     Initial Public Release
--   Version 2.0 06/20/2014 Scott Larson
--     Added ability to interface with different slaves in the same transaction
--     Corrected ack_error bug where ack_error went 'Z' instead of '1' on error
--     Corrected timing of when ack_error signal clears
--   Version 2.1 10/21/2014 Scott Larson
--     Replaced gated clock with clock enable
--     Adjusted timing of SCL during start and stop conditions
--   Version 2.2 02/05/2015 Scott Larson
--     Corrected small SDA glitch introduced in version 2.1
-- 
--   Version 2.3 (PWTI) 13.01.2021 Andreas Kleimann
--     Strukturanpassungen lt. Vorgaben Fachpraktikum 1515
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
--USE ieee.std_logic_unsigned.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY i2c_master IS
	GENERIC (
		input_clk : INTEGER := 100_000_000; -- input clock speed from user logic in Hz
		bus_clk : INTEGER := 400_000); -- speed the i2c bus (scl) will run at in Hz
	PORT (
		clk : IN STD_LOGIC; -- system clock
		reset_n : IN STD_LOGIC; -- active low reset
		ena : IN STD_LOGIC; -- latch in command
		addr : IN STD_LOGIC_VECTOR(6 DOWNTO 0); -- address of target slave
		rw : IN STD_LOGIC; -- '0' is write, '1' is read
		data_wr : IN STD_LOGIC_VECTOR(7 DOWNTO 0); -- data to write to slave
		busy : OUT STD_LOGIC; -- indicates transaction in progress
		data_rd : OUT STD_LOGIC_VECTOR(7 DOWNTO 0); -- data read from slave
		ack_error : OUT STD_LOGIC; -- flag if improper acknowledge from slave
		sda : INOUT STD_LOGIC; -- serial data output of i2c bus
		scl : INOUT STD_LOGIC); -- serial clock output of i2c bus
END i2c_master;

ARCHITECTURE logic OF i2c_master IS
	CONSTANT divider : INTEGER := 63; -- number of clocks in 1/4 cycle of scl

	TYPE machine IS(ready, start, command, slv_ack1, wr, rd, slv_ack2, mstr_ack, stop); -- states
	SIGNAL state, state_next : machine; -- state machine

	SIGNAL count_reg, count_next : INTEGER RANGE 0 TO divider * 4; -- counter for i2c-clock timing
	SIGNAL bit_cnt, bit_cnt_next : INTEGER RANGE 0 TO 7 := 7; -- tracks bit number in transaction
	SIGNAL data_clk : STD_LOGIC; -- data clock for sda
	SIGNAL data_clk_prev : STD_LOGIC; -- data clock during previous system clock
	SIGNAL scl_clk : STD_LOGIC; -- constantly running internal scl
	SIGNAL scl_ena, scl_ena_next : STD_LOGIC := '0'; -- enables internal scl to output
	SIGNAL sda_int, sda_int_next : STD_LOGIC := '1'; -- internal sda
	SIGNAL sda_ena : STD_LOGIC; -- enables internal sda to output
	SIGNAL addr_rw, addr_next : STD_LOGIC_VECTOR(7 DOWNTO 0); -- latched in address and read/write
	SIGNAL data_tx, data_tx_next : STD_LOGIC_VECTOR(7 DOWNTO 0); -- latched in data to write to slave
	SIGNAL data_rx, data_rx_next : STD_LOGIC_VECTOR(7 DOWNTO 0); -- data received from slave
	SIGNAL stretch_reg, stretch_next : STD_LOGIC; -- stretch from slave
	SIGNAL busy_r, busy_next : STD_LOGIC := '0'; -- busy flag
	SIGNAL ack_reg, ack_next : STD_LOGIC; -- acknowledge flag
	SIGNAL data_clk_re, data_clk_fe : STD_LOGIC; -- rising and falling edge of data_clk

BEGIN

	-- register setup for i2c-bus clock and data clock
	PROCESS (clk, reset_n)
	BEGIN
		IF (reset_n = '0') THEN -- reset asserted
			stretch_reg <= '0';
			count_reg <= 0;
		ELSIF (rising_edge(clk)) THEN
			stretch_reg <= stretch_next;
			data_clk_prev <= data_clk; -- store previous value of data clock
			count_reg <= count_next;
		END IF;
	END PROCESS;

	-- generate the timing for the bus clock (scl_clk) and the data clock (data_clk)
	PROCESS (count_reg, stretch_reg, scl)
	BEGIN
		stretch_next <= stretch_reg;
		CASE count_reg IS
			WHEN 0 TO divider - 1 => -- first 1/4 cycle of clocking
				scl_clk <= '0'; -- set scl
				data_clk <= '0';
			WHEN divider TO divider * 2 - 1 => -- second 1/4 cycle of clocking
				scl_clk <= '0';
				data_clk <= '1';
			WHEN divider * 2 TO divider * 3 - 1 => -- third 1/4 cycle of clocking
				scl_clk <= '1'; -- release scl
				IF (scl = '0') THEN -- detect if slave is stretching clock
					stretch_next <= '1';
				ELSE
					stretch_next <= '0';
				END IF;
				data_clk <= '1';
			WHEN OTHERS => -- last 1/4 cycle of clocking
				scl_clk <= '1';
				data_clk <= '0';
		END CASE;
	END PROCESS;

	-- register setup and reset
	PROCESS (clk, reset_n)
	BEGIN
		IF (reset_n = '0') THEN -- reset asserted
			state <= ready; -- return to initial state
			busy_r <= '1'; -- indicate not available
			scl_ena <= '0'; -- sets scl high impedance
			sda_int <= '1'; -- sets sda high impedance
			ack_reg <= '0'; -- clear acknowledge error flag
			bit_cnt <= 7; -- restarts data bit counter
			data_rx <= x"00"; -- clear data read port
		ELSIF (rising_edge(clk)) THEN -- set new register values
			state <= state_next;
			busy_r <= busy_next;
			ack_reg <= ack_next;
			bit_cnt <= bit_cnt_next;
			scl_ena <= scl_ena_next;
			sda_int <= sda_int_next;
			addr_rw <= addr_next;
			data_tx <= data_tx_next;
			data_rx <= data_rx_next;
		END IF;
	END PROCESS;

	-- state machine and writing to sda during scl low (data_clk rising edge)
	PROCESS (state, busy_r, ack_reg, bit_cnt, scl_ena, sda_int, data_clk_re, data_clk_fe, ena, addr, rw, data_wr, addr_rw, data_tx, data_rx, sda)
	BEGIN
		-- hold previous values as default
		state_next <= state;
		busy_next <= busy_r;
		ack_next <= ack_reg;
		bit_cnt_next <= bit_cnt;
		scl_ena_next <= scl_ena;
		sda_int_next <= sda_int;
		addr_next <= addr_rw;
		data_tx_next <= data_tx;
		data_rx_next <= data_rx;

		-- differentiate between rising and falling edge of data clock
		IF (data_clk_re = '1') THEN -- data clock rising edge
			CASE state IS
				WHEN ready => -- idle state
					IF (ena = '1') THEN -- transaction requested
						busy_next <= '1'; -- flag busy
						addr_next <= addr & rw; -- collect requested slave address and command
						data_tx_next <= data_wr; -- collect requested data to write
						state_next <= start; -- go to start bit
					ELSE -- remain idle
						busy_next <= '0'; -- unflag busy and remain idle
					END IF;
				WHEN start => -- start bit of transaction
					busy_next <= '1'; -- resume busy if continuous mode
					sda_int_next <= addr_rw(bit_cnt); -- set first address bit to bus
					state_next <= command; -- go to command
				WHEN command => -- address and command byte of transaction
					IF (bit_cnt = 0) THEN -- command transmit finished
						sda_int_next <= '1'; -- release sda for slave acknowledge
						bit_cnt_next <= 7; -- reset bit counter for "byte" states
						state_next <= slv_ack1; -- go to slave acknowledge (command)
					ELSE -- next clock cycle of command state
						bit_cnt_next <= bit_cnt - 1; -- keep track of transaction bits
						sda_int_next <= addr_rw(bit_cnt - 1); -- write address/command bit to bus and continue with command
					END IF;
				WHEN slv_ack1 => -- slave acknowledge bit (command)
					IF (addr_rw(0) = '0') THEN -- write command
						sda_int_next <= data_tx(bit_cnt); -- write first bit of data
						state_next <= wr; -- go to write byte
					ELSE -- read command
						sda_int_next <= '1'; -- release sda from incoming data
						state_next <= rd; -- go to read byte
					END IF;
				WHEN wr => -- write byte of transaction
					busy_next <= '1'; -- resume busy if continuous mode
					IF (bit_cnt = 0) THEN -- write byte transmit finished
						sda_int_next <= '1'; -- release sda for slave acknowledge
						bit_cnt_next <= 7; -- reset bit counter for "byte" states
						state_next <= slv_ack2; -- go to slave acknowledge (write)
					ELSE -- next clock cycle of write state
						bit_cnt_next <= bit_cnt - 1; -- keep track of transaction bits
						sda_int_next <= data_tx(bit_cnt - 1); -- write next bit to bus and continue writing
					END IF;
				WHEN rd => -- read byte of transaction
					busy_next <= '1'; -- resume busy if continuous mode
					IF (bit_cnt = 0) THEN -- read byte receive finished
						IF (ena = '1' AND addr_rw = addr & rw) THEN -- continuing with another read at same address
							sda_int_next <= '0'; -- acknowledge the byte has been received
						ELSE -- stopping or continuing with a write
							sda_int_next <= '1'; -- send a no-acknowledge (before stop or repeated start)
						END IF;
						bit_cnt_next <= 7; -- reset bit counter for "byte" states
						state_next <= mstr_ack; -- go to master acknowledge
					ELSE -- next clock cycle of read state
						bit_cnt_next <= bit_cnt - 1; -- keep track of transaction bits and continue reading
					END IF;
				WHEN slv_ack2 => -- slave acknowledge bit (write)
					IF (ena = '1') THEN -- continue transaction
						busy_next <= '0'; -- continue is accepted
						addr_next <= addr & rw; -- collect requested slave address and command
						data_tx_next <= data_wr; -- collect requested data to write
						IF (addr_rw = addr & rw) THEN -- continue transaction with another write
							sda_int_next <= data_wr(bit_cnt); -- write first bit of data
							state_next <= wr; -- go to write byte
						ELSE -- continue transaction with a read or new slave
							state_next <= start; -- go to repeated start
						END IF;
					ELSE -- complete transaction
						state_next <= stop; -- go to stop bit
					END IF;
				WHEN mstr_ack => -- master acknowledge bit after a read
					IF (ena = '1') THEN -- continue transaction
						busy_next <= '0'; -- continue is accepted and data received is available on bus
						addr_next <= addr & rw; -- collect requested slave address and command
						data_tx_next <= data_wr; -- collect requested data to write
						IF (addr_rw = addr & rw) THEN -- continue transaction with another read
							sda_int_next <= '1'; -- release sda from incoming data
							state_next <= rd; -- go to read byte
						ELSE -- continue transaction with a write or new slave
							state_next <= start; -- repeated start
						END IF;
					ELSE -- complete transaction
						state_next <= stop; -- go to stop bit
					END IF;
				WHEN stop => -- stop bit of transaction
					busy_next <= '0'; -- unflag busy
					state_next <= ready; -- go to idle state
			END CASE;
		ELSIF (data_clk_fe = '1') THEN -- data clock falling edge
			CASE state IS
				WHEN start =>
					IF (scl_ena = '0') THEN -- starting new transaction
						scl_ena_next <= '1'; -- enable scl output
						ack_next <= '0'; -- reset acknowledge error output
					END IF;
				WHEN slv_ack1 => -- receiving slave acknowledge (command)
					IF (sda /= '0') THEN -- no-acknowledge or previous no-acknowledge
						ack_next <= '1'; -- set error output if no-acknowledge
					END IF;
				WHEN rd => -- receiving slave data
					data_rx_next(bit_cnt) <= sda; -- receive current slave data bit
				WHEN slv_ack2 => -- receiving slave acknowledge (write)
					IF (sda /= '0') THEN -- no-acknowledge or previous no-acknowledge
						ack_next <= '1'; -- set error output if no-acknowledge
					END IF;
				WHEN stop =>
					scl_ena_next <= '0'; -- disable scl
				WHEN OTHERS =>
					NULL;
			END CASE;
		END IF;
	END PROCESS;

	data_clk_re <= data_clk AND NOT data_clk_prev; -- rising edge of data_clk
	data_clk_fe <= NOT data_clk AND data_clk_prev; -- falling edge of data_clk

	-- next-logic for i2c-clock timing
	count_next <= 0 WHEN count_reg = divider * 4 - 1 ELSE -- reset timer when end of timing cycle
		count_reg + 1 WHEN stretch_reg = '0' -- continue clock timing when no clock stretching from slave detected
		ELSE
		count_reg; -- hold clock timing if clock stretching from slave detected

	-- next-logic for sda output enable
	WITH state SELECT
		sda_ena <= data_clk_prev WHEN start, -- generate start condition
		NOT data_clk_prev WHEN stop, -- generate stop condition
		sda_int WHEN OTHERS; -- set to internal sda signal    

	-- set scl and sda outputs
	scl <= '0' WHEN (scl_ena = '1' AND scl_clk = '0') ELSE
		'Z';
	sda <= '0' WHEN sda_ena = '0' ELSE
		'Z';

	-- set flag output
	busy <= busy_r;
	ack_error <= ack_reg;

	-- set data_rd output
	data_rd <= data_rx;

END logic;