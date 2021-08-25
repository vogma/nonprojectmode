LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

USE IEEE.std_logic_unsigned.ALL;

ENTITY top IS
    PORT (
        clk : IN STD_LOGIC;
        btn : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
        led : OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
        uart_rxd_out : OUT STD_LOGIC
    );
END top;

ARCHITECTURE Behavioral OF top IS

    SIGNAL edge : STD_LOGIC_VECTOR(3 DOWNTO 0);
BEGIN

    uart_demo : ENTITY work.uart_transmitter(Behavioral)
        PORT MAP(
            clk => clk,
            start => edge(0),
            uart_tx => uart_rxd_out
        );

    debouncer : ENTITY work.debounce
        PORT MAP(
            clk => clk,
            btn => btn,
            edge => edge
        );

END Behavioral;