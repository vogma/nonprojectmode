LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.NUMERIC_STD.ALL;

ENTITY temp_controller IS
    PORT (
        clk : IN STD_LOGIC; -- system clock
        reset_n : IN STD_LOGIC; -- active low reset
        i2c_sda : INOUT STD_LOGIC;
        i2c_scl : INOUT STD_LOGIC
    );
END temp_controller;

ARCHITECTURE rtl OF temp_controller IS

    SIGNAL i2c_ena_i, i2c_rw_i, i2c_busy_o, i2c_ackerror_o : STD_LOGIC := '0';
    SIGNAL i2c_addr_i : STD_LOGIC_VECTOR(6 DOWNTO 0);
    SIGNAL i2c_data_i, i2c_data_o : STD_LOGIC_VECTOR(7 DOWNTO 0);

BEGIN

    i2c_master : ENTITY work.i2c_master(logic)
        GENERIC MAP(
            input_clk => 100_000_000,
            bus_clk => 400_000
        )
        PORT MAP(
            clk => clk,
            reset_n => reset_n,
            ena => i2c_ena_i,
            addr => i2c_addr_i,
            rw => i2c_rw_i,
            data_wr => i2c_data_i,
            busy => i2c_busy_o,
            data_rd => i2c_data_o,
            ack_error => i2c_ackerror_o,
            sda => i2c_sda,
            scl => i2c_scl
        );

    i2c_controller : ENTITY work.i2c_controller(rtl)
        PORT MAP(
            clk => clk,
            reset_n => reset_n,
            i2c_ena_o => i2c_ena_i,
            i2c_addr_o => i2c_addr_i,
            i2c_rw_o => i2c_rw_i,
            i2c_data_write => i2c_data_i,
            i2c_busy_i => i2c_busy_o,
            i2c_data_read => i2c_data_o,
            i2c_ackerror_i => i2c_ackerror_o
        );

END ARCHITECTURE rtl;