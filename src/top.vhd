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

constant test : STD_LOGIC_VECTOR(7 downto 0) := "01111010";
signal edge : STD_LOGIC_VECTOR(3 downto 0);
BEGIN

 
    uart_transmit : ENTITY work.uart_tx_controller(arch)
        PORT MAP(
            clk => clk,
            tx_start => edge(1),
            tx_byte => test,
            led => led,
            tx_serial => uart_rxd_out
        );

        debouncer : entity work.debounce 
        port map(
            clk => clk,
            btn => btn,
            edge => edge
        );

END Behavioral;