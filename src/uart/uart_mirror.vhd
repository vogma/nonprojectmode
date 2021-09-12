LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

USE IEEE.std_logic_unsigned.ALL;

ENTITY uart_mirror IS
    PORT (
        clk : IN STD_LOGIC;
        i_rx_serial : IN STD_LOGIC;
        o_rx_serial : OUT STD_LOGIC
    );
END uart_mirror;

ARCHITECTURE Behavioral OF uart_mirror IS

    SIGNAL rx_done : STD_LOGIC;
    SIGNAL uart_rx_byte : STD_LOGIC_VECTOR(7 DOWNTO 0);
    signal uart_rx_done : std_logic;

BEGIN

    uart_receiver : ENTITY work.uart_rx_controller(Behavioral)
        GENERIC MAP(
            clk_rate => 100_000_000,
            baud_rate => 9600
        )
        PORT MAP(
            clk => clk,
            rx_serial => i_rx_serial,
            rx_byte => uart_rx_byte,
            rx_done => uart_rx_done
        );

    --entity transmits one byte over uart
    tx_controller : ENTITY work.uart_tx_controller(arch)
        GENERIC MAP(
            clk_rate => 100_000_000,
            baud_rate => 9600
        )
        PORT MAP(
            clk => clk,
            tx_start => uart_rx_done,
            tx_byte => uart_rx_byte,
            tx_active => OPEN,
            tx_serial => o_rx_serial,
            tx_done => OPEN
        );
END Behavioral;