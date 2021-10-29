LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY i2c_controller IS
    PORT (
        clk : IN STD_LOGIC;
        reset_n : IN STD_LOGIC;
        i2c_ena_o : OUT STD_LOGIC;
        i2c_addr_o : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
        i2c_rw_o : OUT STD_LOGIC;
        i2c_data_write : OUT std_logic_vector(7 downto 0);
        i2c_busy_i : IN STD_LOGIC;
        i2c_data_read : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        i2c_ackerror_i : IN STD_LOGIC
    );
END i2c_controller;

ARCHITECTURE rtl OF i2c_controller IS

BEGIN

END ARCHITECTURE rtl;