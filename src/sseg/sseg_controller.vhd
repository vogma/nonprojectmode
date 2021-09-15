LIBRARY ieee;

USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY sseg_controller IS
    PORT (
        clk : IN STD_LOGIC;
        data_i : IN unsigned(7 DOWNTO 0);
        sseg_cs_o : OUT STD_LOGIC;
        sseg_o : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
    );
END sseg_controller;

ARCHITECTURE arch OF sseg_controller IS
    SIGNAL sseg_decoder1_o, sseg_decoder2_o : STD_LOGIC_VECTOR(6 DOWNTO 0) := (others => '0');
    SIGNAL sseg_cs_sig : STD_LOGIC;
BEGIN

    hex_decoder1 : ENTITY work.hex_decoder(arch)
        PORT MAP(
            input => data_i(3 DOWNTO 0),
            display => sseg_decoder1_o
        );

    hex_decoder2 : ENTITY work.hex_decoder(arch)
        PORT MAP(
            input => data_i(7 DOWNTO 4),
            display => sseg_decoder2_o
        );

    chip_select_gen : ENTITY work.sseg_cs_generator(arch)
        PORT MAP(
            clk_i => clk,
            chip_select_o => sseg_cs_sig
        );

    sseg_cs_o <= sseg_cs_sig;
    sseg_o <= sseg_decoder1_o WHEN sseg_cs_sig = '0' ELSE
        sseg_decoder2_o;

END arch;