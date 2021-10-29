----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.03.2021 19:11:43
-- Design Name: 
-- Module Name: uart_tx_controller - arch
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
USE IEEE.NUMERIC_STD.ALL;

ENTITY uart_tx_controller IS
    GENERIC (
        clk_rate : INTEGER := 100_000_000;
        baud_rate : INTEGER := 9600
    );
    PORT (
        clk : IN STD_LOGIC;
        tx_start : IN STD_LOGIC;
        led : OUT STD_LOGIC_VECTOR(3 downto 0);
        tx_byte : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        tx_active : OUT STD_LOGIC;
        tx_serial : OUT STD_LOGIC;
        tx_done : OUT STD_LOGIC
    );
END uart_tx_controller;

ARCHITECTURE arch OF uart_tx_controller IS

    CONSTANT clks_per_bit : INTEGER := (clk_rate/baud_rate) - 1;

    TYPE state_type IS (idle, send_start_bit, send_data_bits, send_stop_bit, cleanup);
    SIGNAL state_reg, state_next : state_type;

    --Register um zu sendendes Byte zu speichern
    SIGNAL tx_data_reg, tx_data_next : STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');

    --Speichert Anzahl der gewarteten Takte
    SIGNAL clk_cnt_reg, clk_cnt_next : unsigned(13 DOWNTO 0) := (OTHERS => '0');

    SIGNAL bit_index_reg, bit_index_next : INTEGER RANGE 0 TO 7 := 0;

    SIGNAL led_reg, led_next : STD_LOGIC := '0';
    SIGNAL load, dec, zero : STD_LOGIC := '0';
BEGIN

    PROCESS (clk)
    BEGIN
        IF (rising_edge(clk)) THEN
            state_reg <= state_next;
            led_reg <= led_next;
            tx_data_reg <= tx_data_next;
            bit_index_reg <= bit_index_next;
            clk_cnt_reg <= clk_cnt_next;
        END IF;
    END PROCESS;

    clk_cnt_next <= to_unsigned(clks_per_bit, 14) WHEN load = '1' ELSE
        clk_cnt_reg - 1 WHEN dec = '1' ELSE
        clk_cnt_reg;

    zero <= '1' WHEN clk_cnt_reg = 0 ELSE
        '0';

    led <= led_reg & "000";    

    next_state_process : PROCESS (state_reg, tx_start, tx_data_reg, bit_index_reg, clk_cnt_reg, tx_byte, led_reg, zero)
    BEGIN
        --defaults
        state_next <= state_reg;
        tx_data_next <= tx_data_reg;
        bit_index_next <= bit_index_reg;
        led_next <= led_reg;

        tx_done <= '0';
        tx_active <= '0';
        tx_serial <= '1';

        load <= '0';
        dec <= '0';

        CASE state_reg IS
            WHEN idle =>
                IF (tx_start = '1') THEN
                    load <= '1';
                    tx_active <= '1';
                    tx_data_next <= tx_byte; --save byte in register
                    state_next <= send_start_bit;
                END IF;

            WHEN send_start_bit =>
                tx_active <= '1';
                tx_serial <= '0'; --start bit 
                dec <= '1';
                IF (zero = '1') THEN
                    state_next <= send_data_bits;
                    load <= '1';
                END IF;

            WHEN send_data_bits =>
                tx_active <= '1';
                tx_serial <= tx_data_reg(bit_index_reg); --aktuelles Bit wird auf dem Bus gehalten

                dec <= '1'; --Z�hler z�hlt die zu wartenden Takte ab
                IF (zero = '1') THEN --Z�hler steht auf 0
                    load <= '1';
                    IF (bit_index_reg < 7) THEN
                        bit_index_next <= bit_index_reg + 1;--im n�chsten Takt wird das n�chste Bit auf den Bus gelegt
                    ELSE
                        bit_index_next <= 0;
                        state_next <= send_stop_bit;
                    END IF;
                END IF;

            WHEN send_stop_bit =>
                tx_active <= '1';
                tx_serial <= '1';
                dec <= '1';
                IF (zero = '1') THEN
                    state_next <= cleanup;
                    load <= '1';
                END IF;

            WHEN cleanup =>
                tx_done <= '1';
                led_next <= '1';
                state_next <= idle;

        END CASE;
    END PROCESS;

END arch;