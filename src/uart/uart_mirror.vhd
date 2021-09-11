LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

USE IEEE.std_logic_unsigned.ALL;

ENTITY uart_mirror IS
    PORT (
        clk : IN STD_LOGIC;
        btn : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
        led : OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
        uart_rxd_out : OUT STD_LOGIC
    );
END uart_mirror;

ARCHITECTURE Behavioral OF uart_mirror IS

    SIGNAL edge : STD_LOGIC_VECTOR(3 DOWNTO 0);
BEGIN

    

END Behavioral;