LIBRARY IEEE;
LIBRARY vunit_lib;

CONTEXT vunit_lib.vunit_context;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY sseg_controller_tb IS
    GENERIC (runner_cfg : STRING);
END ENTITY;

ARCHITECTURE rtl OF sseg_controller_tb IS
    SIGNAL clk : STD_LOGIC := '0';
    SIGNAL reset_n : STD_LOGIC := '0';
    SIGNAL sseg_data_i : unsigned(7 DOWNTO 0) := (OTHERS => '0');
    SIGNAL sseg_cs_o : STD_LOGIC := '0';
    SIGNAL sseg_o : STD_LOGIC_VECTOR(6 DOWNTO 0) := (OTHERS => '0');

BEGIN

    clk <= NOT clk AFTER 5 ns;

    sseg_controller : ENTITY work.sseg_controller(arch)
        GENERIC MAP(
            clk_freq => 100_000_000,
            toggle_freq => 1000
        )
        PORT MAP(
            clk => clk,
            data_i => sseg_data_i,
            sseg_cs_o => sseg_cs_o,
            sseg_o => sseg_o
        );

    main : PROCESS
    BEGIN
        test_runner_setup(runner, runner_cfg);
        WHILE test_suite LOOP

            IF run("test_init_zero") THEN
                WAIT UNTIL rising_edge(clk);
                sseg_data_i <= X"01";
                WAIT UNTIL rising_edge(clk);
                WAIT UNTIL rising_edge(clk);
                sseg_data_i <= X"FF";
                wait until rising_edge(sseg_cs_o);
                wait until rising_edge(clk);
                wait for 5 ms;
            END IF;
        END LOOP;
        test_runner_cleanup(runner);
    END PROCESS main;

END ARCHITECTURE rtl;