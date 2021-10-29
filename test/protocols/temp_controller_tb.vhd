LIBRARY IEEE;
LIBRARY vunit_lib;

CONTEXT vunit_lib.vunit_context;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY temp_controller_tb IS
    GENERIC (runner_cfg : STRING);
END ENTITY;

ARCHITECTURE rtl OF temp_controller_tb IS
    SIGNAL clk : STD_LOGIC := '0';
    SIGNAL reset_n : STD_LOGIC := '0';
    SIGNAL i2c_sda, i2c_scl : STD_LOGIC;

    SIGNAL i2c_ena_i, i2c_rw_i, i2c_busy_o, i2c_ackerror_o, busy_prev, done : STD_LOGIC := '0';
    SIGNAL i2c_addr_i : STD_LOGIC_VECTOR(6 DOWNTO 0);
    SIGNAL i2c_data_i, i2c_data_o : STD_LOGIC_VECTOR(7 DOWNTO 0);

BEGIN

    clk <= NOT clk AFTER 5 ns;

    PROCESS (clk)
    BEGIN
        IF rising_edge(clk) THEN
            busy_prev <= i2c_busy_o;
        END IF;
    END PROCESS;

    done <= '1' WHEN busy_prev = '1' AND i2c_busy_o = '0' ELSE
        '0';

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
    main : PROCESS
    BEGIN
        test_runner_setup(runner, runner_cfg);
        WHILE test_suite LOOP

            IF run("test_init_zero") THEN
                i2c_sda <= 'H';
                i2c_scl <= 'H';
                WAIT FOR 100 ns;
                WAIT UNTIL rising_edge(clk);
                reset_n <= '1';
                WAIT UNTIL rising_edge(clk);
                WAIT UNTIL rising_edge(clk);
                i2c_ena_i <= '1';
                i2c_addr_i <= "1010010";
                i2c_data_i <= "11010010";
                WAIT UNTIL rising_edge(clk);
                --i2c_addr_i <= (others => '0');
                --i2c_data_i <= (others => '0');
                WAIT UNTIL done = '1';
                i2c_sda <= '0';
                WAIT UNTIL rising_edge(clk);
                WAIT UNTIL rising_edge(clk);
                i2c_sda <= 'H';
                WAIT FOR 100 ns;
            END IF;
        END LOOP;
        test_runner_cleanup(runner);
    END PROCESS main;

END ARCHITECTURE rtl;