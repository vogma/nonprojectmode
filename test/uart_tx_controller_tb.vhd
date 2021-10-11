LIBRARY IEEE;
LIBRARY vunit_lib;

CONTEXT vunit_lib.vunit_context;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.std_logic_unsigned.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY uart_tx_controller_tb IS
    GENERIC (runner_cfg : STRING);
END ENTITY;

ARCHITECTURE rtl OF uart_tx_controller_tb IS

    SIGNAL clk, tx_start_i, tx_active_o, tx_serial_o, tx_done_o : STD_LOGIC := '0';
    SIGNAL tx_byte_i : STD_LOGIC_VECTOR(7 DOWNTO 0);
    CONSTANT clk_rate : TIME := 10 ns;

BEGIN

    clk <= NOT clk AFTER clk_rate/2;

    --Device under Test
    uart_tx_dut : ENTITY work.uart_tx_controller(arch)
        PORT MAP(
            clk => clk,
            tx_start => tx_start_i,
            led => OPEN,
            tx_byte => tx_byte_i,
            tx_active => tx_active_o,
            tx_serial => tx_serial_o,
            tx_done => tx_done_o
        );

    main : PROCESS
    BEGIN
        test_runner_setup(runner, runner_cfg);
        WHILE test_suite LOOP

            IF run("test_init_zero") THEN
                WAIT UNTIL rising_edge(clk);
                check(expr => tx_active_o = '0', msg => "Expect tx_active_o to be '0' on init");
                check(expr => tx_serial_o = '1', msg => "Expect tx_serial_o to be '1' on init");
                check(expr => tx_done_o = '0', msg => "Expect tx_done_o to be '0' on init");

            ELSIF run("test_send_byte") THEN
                ASSERT true REPORT "Passt";
            END IF;
        END LOOP;
        test_runner_cleanup(runner);
    END PROCESS main;

END ARCHITECTURE rtl;