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
    SIGNAL tx_byte_i : STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');
    CONSTANT clk_rate : TIME := 100 ns;

    --Mit Baud-Rate 9600
    CONSTANT c_bit_period : TIME := 104166 ns;

    SIGNAL test_byte : STD_LOGIC_VECTOR(7 DOWNTO 0) := X"55";

BEGIN

    clk <= NOT clk AFTER clk_rate/2;

    --Device under Test
    uart_tx_dut : ENTITY work.uart_tx_controller(arch)
        GENERIC MAP(
            clk_rate => 10_000_000,
            baud_rate => 9600)
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
                check(expr => tx_active_o = '0', msg => "Expected tx_active_o to be '0' on init");
                check(expr => tx_serial_o = '1', msg => "Expected tx_serial_o to be '1' on init");
                check(expr => tx_done_o = '0', msg => "Expected tx_done_o to be '0' on init");

            ELSIF run("test_send_byte") THEN
                tx_start_i <= '1'; --neue UART-Transaktion
                tx_byte_i <= test_byte; --zu sendende Daten

                check(expr => tx_active_o = '0', msg => "Expected tx_active_o to be '0'");
                check(expr => tx_serial_o = '1', msg => "Expected tx_serial_o to be '1' when not transmitting");

                WAIT UNTIL rising_edge(clk);
                tx_start_i <= '0';
                WAIT UNTIL rising_edge(clk); --Nach der zweiten Taktflanke sind Daten gelatched und serial wird auf '0' gezogen

                check(expr => tx_active_o = '1', msg => "Expected tx_active_o to be '1'");

                WAIT FOR c_bit_period/2;
                check(expr => tx_serial_o = '0', msg => "Expected tx_serial_o to be '0' to signal start of transmission");
                WAIT FOR c_bit_period;

                FOR ii IN 0 TO 7 LOOP
                    check(
                    expr => tx_serial_o = test_byte(ii),
                    msg => "Expected tx_serial_o to be " & INTEGER'IMAGE(to_integer(unsigned(test_byte(ii DOWNTO ii)))) & " at Position " & INTEGER'IMAGE(ii));
                    WAIT FOR c_bit_period;
                END LOOP;

                check(expr => tx_serial_o = '1', msg => "Expected tx_serial_o to be '1' (Stop Bit Check)");
                WAIT UNTIL tx_done_o = '1';
            END IF;
        END LOOP;
        test_runner_cleanup(runner);
    END PROCESS main;

END ARCHITECTURE rtl;