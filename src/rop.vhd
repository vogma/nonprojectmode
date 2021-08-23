LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

USE IEEE.std_logic_unsigned.ALL;

ENTITY rop IS
    PORT (
        btn : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
        led : OUT STD_LOGIC_VECTOR (3 DOWNTO 0)
    );
END rop;

ARCHITECTURE Behavioral OF rop IS

BEGIN

    led <= "0000" WHEN btn(1) = '1' ELSE
        (OTHERS => '1');

END Behavioral;