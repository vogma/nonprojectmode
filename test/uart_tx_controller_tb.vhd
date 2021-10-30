LIBRARY IEEE;
LIBRARY vunit_lib;

CONTEXT vunit_lib.vunit_context;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY uart_tx_controller_tb IS
    GENERIC (
        runner_cfg : STRING;
        tb_path : STRING;
        csv_i : STRING := "car_pxl_reduced.csv"
    );
END ENTITY;

ARCHITECTURE rtl OF uart_tx_controller_tb IS

    --data width of values in csv file 
    CONSTANT data_width : NATURAL := 4;

    --loads csv file containing test data 
    CONSTANT c_csv_loaded : integer_array_t := load_csv(tb_path & csv_i);

    CONSTANT c_1s_in_ns : NATURAL := 1_000_000_000;
    CONSTANT c_clk_rate : NATURAL := 100_000_000; --clk speed for the testbench (in Hz)
    CONSTANT c_baud_rate : NATURAL := 9600; --baud rate constant for UART entity-generics
    CONSTANT c_clk_period : TIME := (c_1s_in_ns/c_clk_rate) * 1 ns; --clock period is calculated from requested clk rate
    CONSTANT c_bit_period : TIME := ((c_clk_rate/c_baud_rate) * (c_1s_in_ns/c_clk_rate)) * 1 ns;--constant used for waiting the right amount of time while checking the serial line when receiving data
    CONSTANT test_byte : STD_LOGIC_VECTOR(7 DOWNTO 0) := X"34";--Constant for single byte transmission test

    SIGNAL received_byte, byte_transmitted : STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');--Signals to compare the transmitted byte with the received byte

    --uart_rx_dut signals
    SIGNAL rx_serial_i, rx_active_o, rx_done_o : STD_LOGIC := '0';
    SIGNAL rx_byte_o : STD_LOGIC_VECTOR(7 DOWNTO 0);

    --uart_tx_dut signals
    SIGNAL clk, tx_start_i, tx_active_o, tx_serial_o, tx_done_o : STD_LOGIC := '0';
    SIGNAL tx_byte_i : STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');

    --Procedure to check correct Uart Transmission on serial line
    PROCEDURE check_uart_transmission (
        SIGNAL tx_serial_in : IN STD_LOGIC;
        expected_byte : IN STD_LOGIC_VECTOR(7 DOWNTO 0)) IS
    BEGIN
        WAIT UNTIL tx_serial_in = '0'; --start bit
        WAIT FOR c_bit_period/2;
        check(expr => tx_serial_in = '0', msg => "Expected tx_serial to be '0' during start bit (value:" & to_string(tx_serial_in) & ")");
        WAIT FOR c_bit_period;
        FOR ii IN 0 TO 7 LOOP
            --Check that the expected bit is being transmitted
            check(
            expr => tx_serial_in = expected_byte(ii),
            msg => "Expected tx_serial_o to be " & to_string(test_byte(ii)) & " at Position " & INTEGER'IMAGE(ii));
            WAIT FOR c_bit_period; --Wait until the next bit has been stable for half the time on serial line
        END LOOP;
    END check_uart_transmission;
BEGIN

    clk <= NOT clk AFTER c_clk_period / 2;

    --Device under Test
    uart_tx_dut : ENTITY work.uart_tx_controller(arch)
        GENERIC MAP(
            clk_rate => c_clk_rate,
            baud_rate => c_baud_rate)
        PORT MAP(
            clk => clk,
            tx_start => tx_start_i,
            led => OPEN,
            tx_byte => tx_byte_i,
            tx_active => tx_active_o,
            tx_serial => tx_serial_o,
            tx_done => tx_done_o
        );

    uart_rx_dut : ENTITY work.uart_rx_controller
        GENERIC MAP(
            clk_rate => c_clk_rate,
            baud_rate => c_baud_rate
        )
        PORT MAP(
            clk => clk,
            rx_serial => rx_serial_i,
            rx_byte => rx_byte_o,
            rx_active => rx_active_o,
            rx_done => rx_done_o
        );

    --Connect serial port of transmitter with the receiving entity
    rx_serial_i <= tx_serial_o;

    main : PROCESS
    BEGIN
        test_runner_setup(runner, runner_cfg);
        WHILE test_suite LOOP

            IF run("test_init_zero") THEN
                WAIT UNTIL rising_edge(clk);
                check(expr => tx_active_o = '0', msg => "Expected tx_active_o to be '0' on init");
                check(expr => tx_serial_o = '1', msg => "Expected tx_serial_o to be '1' on init");
                check(expr => tx_done_o = '0', msg => "Expected tx_done_o to be '0' on init");
                show(get_logger("system0"), display_handler, info);
                info("Loaded CSV of Size " & to_string(height(c_csv_loaded)) & "x" & to_string(width(c_csv_loaded)));

            ELSIF run("test_transmit_single_byte") THEN

                check(expr => tx_active_o = '0', msg => "Expected tx_active_o to be '0'");
                check(expr => tx_serial_o = '1', msg => "Expected tx_serial_o to be '1' when not transmitting");

                WAIT UNTIL rising_edge(clk);
                tx_start_i <= '1';
                tx_byte_i <= test_byte;
                WAIT UNTIL rising_edge(clk); --Nach der zweiten Taktflanke sind Daten gelatched und serial wird auf '0' gezogen
                check(expr => tx_active_o = '1', msg => "Expected tx_active_o to be '1'");
                tx_start_i <= '1'; 
                tx_byte_i <= (others => '0');
                check_uart_transmission(tx_serial_o,test_byte);
                -- WAIT FOR c_bit_period/2;
                -- check(expr => tx_serial_o = '0', msg => "Expected tx_serial_o to be '0' to signal start of transmission");
                
                
                -- WAIT FOR c_bit_period;

                -- FOR ii IN 0 TO 7 LOOP
                --     check(
                --     expr => tx_serial_o = test_byte(ii),
                --     msg => "Expected tx_serial_o to be " & INTEGER'IMAGE(to_integer(unsigned(test_byte(ii DOWNTO ii)))) & " at Position " & INTEGER'IMAGE(ii));
                --     WAIT FOR c_bit_period;
                -- END LOOP;

                --check(expr => tx_serial_o = '1', msg => "Expected tx_serial_o to be '1' (Stop Bit Check)");
                WAIT UNTIL tx_done_o = '1';

            ELSIF run("test_transmit_multiple_values") THEN
                FOR y IN 0 TO height(c_csv_loaded) - 1 LOOP
                    FOR x IN 0 TO width(c_csv_loaded) - 1 LOOP
                        byte_transmitted <= STD_LOGIC_VECTOR(to_unsigned(get(c_csv_loaded, x, y), 8));
                        WAIT UNTIL rising_edge(clk);
                        tx_start_i <= '1';
                        info("Sending UART Byte: " & to_string(byte_transmitted));
                        tx_byte_i <= byte_transmitted;
                        WAIT UNTIL rising_edge(clk);
                        tx_start_i <= '0';
                        tx_byte_i <= (OTHERS => '0');
                        check_uart_transmission(tx_serial_o, byte_transmitted);
                        WAIT UNTIL tx_done_o <= '1';
                    END LOOP;
                END LOOP;
            END IF;
        END LOOP;

        test_runner_cleanup(runner);
    END PROCESS main;

END ARCHITECTURE rtl;