LIBRARY ieee;

USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY sseg_cs_generator IS
    PORT (
        clk_i : IN STD_LOGIC;
        chip_select_o : OUT STD_LOGIC
    );
END sseg_cs_generator;

ARCHITECTURE arch OF sseg_cs_generator IS
    SIGNAL chip_select_reg : STD_LOGIC := '0';
    SIGNAL clkcnt_reg : unsigned(19 DOWNTO 0) := (OTHERS => '0');
BEGIN

    PROCESS (clk_i)
    BEGIN
        IF (rising_edge(clk_i)) THEN
            clkcnt_reg <= clkcnt_reg + 1;
        END IF;
    END PROCESS;

    PROCESS (clkcnt_reg, chip_select_reg, clk_i)
    BEGIN
        IF (rising_edge(clk_i)) THEN
            IF (clkcnt_reg = 0) THEN
                chip_select_reg <= NOT chip_select_reg;
            END IF;
        END IF;
    END PROCESS;

    chip_select_o <= chip_select_reg;

END arch;