LIBRARY IEEE;
LIBRARY vunit_lib;

CONTEXT vunit_lib.vunit_context;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.std_logic_unsigned.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY uart_rx_controller_tb IS
    GENERIC (
        runner_cfg : STRING;
        tb_path : STRING;
        csv_i : STRING := "car_pxl_reduced.csv"
    );
END ENTITY;

ARCHITECTURE rtl OF uart_rx_controller_tb IS
    --data width of values in csv file 
    CONSTANT data_width : NATURAL := 4;

    --loads csv file containing test data 
    CONSTANT c_csv_loaded : integer_array_t := load_csv(tb_path & csv_i);

    CONSTANT c_1s_in_ns : NATURAL := 1_000_000_000;
    CONSTANT c_clk_rate : NATURAL := 100_000_000; --clk speed for the testbench (in Hz)
    CONSTANT c_baud_rate : NATURAL := 115200; --baud rate constant for UART entity-generics
    CONSTANT c_clk_period : TIME := (c_1s_in_ns/c_clk_rate) * 1 ns; --clock period is calculated from requested clk rate
    CONSTANT c_bit_period : TIME := ((c_clk_rate/c_baud_rate) * (c_1s_in_ns/c_clk_rate)) * 1 ns;--constant used for waiting the right amount of time between bits

    SIGNAL rx_serial_i : STD_LOGIC := '1';
    SIGNAL clk, rx_active_o, rx_done_o : STD_LOGIC := '0';
    SIGNAL rx_byte_o : STD_LOGIC_VECTOR(7 DOWNTO 0);

    SIGNAL transmit_byte : STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');

    -- Low-level byte-write
    PROCEDURE UART_WRITE_BYTE (
        i_data_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        SIGNAL o_serial : OUT STD_LOGIC) IS
    BEGIN
        info("Transmitting byte " & to_string(i_data_in));
        o_serial <= '0';
        WAIT FOR c_bit_period;

        FOR ii IN 0 TO 7 LOOP
            o_serial <= i_data_in(ii);
            check(expr => rx_active_o = '1', msg => "Expected rx_active_o to be 1 during transaction");
            WAIT FOR c_bit_period;
        END LOOP;

        o_serial <= '1'; --stop bit
    END UART_WRITE_BYTE;

BEGIN

    clk <= NOT clk AFTER c_clk_period/2;

    uart_rx_dut : ENTITY work.uart_rx_controller(Behavioral)
        GENERIC MAP(
            clk_rate => c_clk_rate,
            baud_rate => c_baud_rate)
        PORT MAP(
            clk => clk,
            rx_serial => rx_serial_i,
            rx_byte => rx_byte_o,
            rx_active => rx_active_o,
            rx_done => rx_done_o);

    main : PROCESS
    BEGIN
        test_runner_setup(runner, runner_cfg);
        WHILE test_suite LOOP

            IF run("test_init_values") THEN
                check(expr => rx_byte_o = X"00", msg => "Expected rx_byte_o to have init value '00000000'");
                check(expr => rx_active_o = '0', msg => "Expected rx_active_o to have init value 0");
                check(expr => rx_done_o = '0', msg => "Expected rx_done_o to have init value 0");

            ELSIF run("test_receive_single_byte") THEN
                WAIT UNTIL rising_edge(clk);
                UART_WRITE_BYTE(X"54", rx_serial_i);
                WAIT UNTIL rx_done_o = '1';
                check(expr => rx_byte_o = X"54", msg => "Received byte " & to_string(rx_byte_o) & " but expected " & to_string(X"54"));
                info("Received correct byte (" & to_string(rx_byte_o) & ")");

            ELSIF run("test_receive_multiple_bytes") THEN

                FOR y IN 0 TO height(c_csv_loaded) - 1 LOOP
                    FOR x IN 0 TO width(c_csv_loaded) - 1 LOOP
                        WAIT UNTIL rising_edge(clk);
                        transmit_byte <= STD_LOGIC_VECTOR(to_unsigned(get(c_csv_loaded, x, y), 8));
                        WAIT UNTIL rising_edge(clk);
                        UART_WRITE_BYTE(transmit_byte, rx_serial_i);
                        WAIT UNTIL rx_done_o = '1';
                        check(expr => rx_byte_o = transmit_byte, msg => "Received byte " & to_string(rx_byte_o) & " but expected " & to_string(transmit_byte));
                        info("Correct Byte (" & to_string(transmit_byte) & ") received");
                        info("---------------------------------------------");
                    END LOOP;
                END LOOP;
            END IF;
        END LOOP;
        test_runner_cleanup(runner);
    END PROCESS main;
END ARCHITECTURE;