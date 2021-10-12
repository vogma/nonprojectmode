LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY uart_rx_controller IS
    GENERIC (
        clk_rate : INTEGER := 100_000_000;
        baud_rate : INTEGER := 9600
    );
    PORT (
        clk : IN STD_LOGIC;
        rx_serial : IN STD_LOGIC;
        rx_byte : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
        rx_active : OUT STD_LOGIC;
        rx_done : OUT STD_LOGIC);
END uart_rx_controller;

ARCHITECTURE Behavioral OF uart_rx_controller IS

    CONSTANT clks_per_bit : INTEGER := (clk_rate/baud_rate) - 1;

    TYPE state_type IS (idle, receive_startbit, receive_databits, receive_stopbit, cleanup);
    SIGNAL state_reg, state_next : state_type := idle;
    SIGNAL clk_cnt_reg, clk_cnt_next : unsigned(13 DOWNTO 0) := (OTHERS => '0');
    SIGNAL rxbyte_reg, rxbyte_next : STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');
    SIGNAL bitIndex_reg, bitIndex_next : INTEGER RANGE 0 TO 7 := 0;
    SIGNAL rx_done_reg, rx_done_next : STD_LOGIC := '0';
    SIGNAL load, dec, zero : STD_LOGIC;

BEGIN

    PROCESS (clk)
    BEGIN
        IF (rising_edge(clk)) THEN
            state_reg <= state_next;
            clk_cnt_reg <= clk_cnt_next;
            rxbyte_reg <= rxbyte_next;
            rx_done_reg <= rx_done_next;
            bitIndex_reg <= bitIndex_next;
        END IF;
    END PROCESS;

    clk_cnt_next <= to_unsigned(clks_per_bit, 14) WHEN load = '1' ELSE
        clk_cnt_reg - 1 WHEN dec = '1' ELSE
        clk_cnt_reg;

    zero <= '1' WHEN clk_cnt_reg = 0 ELSE
        '0';

    rx_done <= rx_done_reg;
    rx_byte <= rxbyte_reg;

    PROCESS (state_reg, rx_serial, zero, rxbyte_reg, bitIndex_reg, clk_cnt_reg)
    BEGIN
        state_next <= state_reg;
        rxbyte_next <= rxbyte_reg;
        rx_done_next <= rx_done_reg;
        bitIndex_next <= bitIndex_reg;
        rx_active <= '0';
        load <= '0';
        dec <= '0';

        CASE state_reg IS
            WHEN idle =>
                IF (rx_serial = '0') THEN
                    load <= '1';
                    rxbyte_next <= (others => '0');
                    state_next <= receive_startbit;
                END IF;

            WHEN receive_startbit =>
                rx_active <= '1';
                dec <= '1';
                IF (clk_cnt_reg = (clks_per_bit - 1)/2) THEN
                    IF (rx_serial = '0') THEN
                        load <= '1';
                        state_next <= receive_databits;
                    ELSE
                        state_next <= idle;
                    END IF;
                ELSE
                    state_next <= receive_startbit;
                END IF;

            WHEN receive_databits =>
                dec <= '1';
                rx_active <= '1';
                IF (zero = '1') THEN
                    rxbyte_next(bitIndex_reg) <= rx_serial;
                    load <= '1';

                    IF (bitIndex_reg < 7) THEN
                        bitIndex_next <= bitIndex_reg + 1;
                    ELSE
                        bitIndex_next <= 0;
                        state_next <= receive_stopbit;
                    END IF;
                END IF;
            WHEN receive_stopbit =>
                rx_active <= '1';
                dec <= '1';
                IF (zero = '1') THEN --Stop Bit finished
                    rx_done_next <= '1';
                    state_next <= cleanup;
                END IF;

            WHEN cleanup =>
                rx_done_next <= '0';
                state_next <= idle;
        END CASE;
    END PROCESS;

END Behavioral;