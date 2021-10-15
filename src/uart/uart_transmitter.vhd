----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.03.2021 17:12:58
-- Design Name: 
-- Module Name: uart_transmitter - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

ENTITY uart_transmitter IS
	PORT (
		clk : IN STD_LOGIC;
		start : IN STD_LOGIC;
		uart_tx : OUT STD_LOGIC);
END uart_transmitter;

ARCHITECTURE Behavioral OF uart_transmitter IS

	SIGNAL tx_done : STD_LOGIC;
	SIGNAL tx_start : STD_LOGIC;
	TYPE state_type IS (idle, transmit_byte, finished);
	TYPE CHAR_ARRAY IS ARRAY (INTEGER RANGE <>) OF STD_LOGIC_VECTOR(7 DOWNTO 0);

	SIGNAL state_reg, state_next : state_type := idle;
	SIGNAL tx_byte : STD_LOGIC_VECTOR(7 DOWNTO 0);

	--Button press string definition.
	CONSTANT BTN_STR : CHAR_ARRAY(0 TO 23) := (X"42", --B
	X"75", --u
	X"74", --t
	X"74", --t
	X"6F", --o
	X"6E", --n
	X"20", -- 
	X"70", --p
	X"72", --r
	X"65", --e
	X"73", --s
	X"73", --s
	X"20", --
	X"64", --d
	X"65", --e
	X"74", --t
	X"65", --e
	X"63", --c
	X"74", --t
	X"65", --e
	X"64", --d
	X"21", --!
	X"0A", --\n
	X"0D"); --\r

	SIGNAL char_index_reg, char_index_next : INTEGER RANGE 0 TO BTN_STR'length := 0;

BEGIN

	register_logic : PROCESS (clk)
	BEGIN
		IF (rising_edge(clk)) THEN
			state_reg <= state_next;
			char_index_reg <= char_index_next;
		END IF;
	END PROCESS;

	next_state_logic : PROCESS (state_reg, tx_done, start, char_index_reg)
	BEGIN
		state_next <= state_reg;
		char_index_next <= char_index_reg;

		tx_start <= '0';
		tx_byte <= (OTHERS => '0');

		CASE state_reg IS
			WHEN idle =>
				IF (start = '1') THEN
					state_next <= transmit_byte;
				END IF;

			WHEN transmit_byte =>
				tx_start <= '1'; --signal to start transmission 
				tx_byte <= BTN_STR(char_index_reg);

				IF (tx_done = '1') THEN --Transmission of byte finished
					char_index_next <= char_index_reg + 1;
					IF (char_index_reg < BTN_STR'length-1) THEN
						state_next <= transmit_byte;
					ELSE
						state_next <= finished;
					END IF;
				END IF;

			WHEN finished =>
				char_index_next <= 0;
				state_next <= idle;

		END CASE;
	END PROCESS;

	--entity transmits one byte over uart
	tx_controller : ENTITY work.uart_tx_controller(arch)
		GENERIC MAP(
			clk_rate => 100_000_000,
			baud_rate => 115200
		)
		PORT MAP(
			clk => CLK,
			tx_start => tx_start,
			tx_byte => tx_byte,
			tx_active => OPEN,
			tx_serial => uart_tx,
			tx_done => tx_done
		);
END Behavioral;