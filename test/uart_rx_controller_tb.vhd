LIBRARY IEEE;
LIBRARY vunit_lib;

CONTEXT vunit_lib.vunit_context;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.std_logic_unsigned.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY uart_rx_controller_tb IS
    GENERIC (runner_cfg : STRING);
END ENTITY;

ARCHITECTURE rtl OF uart_rx_controller_tb IS

    SIGNAL rx_serial_i : STD_LOGIC := '1';
    SIGNAL clk, rx_active_o, rx_done_o : STD_LOGIC := '0';
    SIGNAL rx_byte_o : STD_LOGIC_VECTOR(7 DOWNTO 0);
    CONSTANT clk_rate : TIME := 100 ns;

    SIGNAL test_byte : STD_LOGIC_VECTOR(7 DOWNTO 0) := X"55";
    SIGNAL check_byte : STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');

    --Mit Baud-Rate 9600
    CONSTANT c_bit_period : TIME := 104166 ns;

    -- Low-level byte-write
    PROCEDURE UART_WRITE_BYTE (
        i_data_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        SIGNAL o_serial : OUT STD_LOGIC) IS
    BEGIN

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

    clk <= NOT clk AFTER clk_rate/2;

    uart_rx_dut : ENTITY work.uart_rx_controller(Behavioral)
        GENERIC MAP(
            clk_rate => 10_000_000,
            baud_rate => 9600)
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
                UART_WRITE_BYTE(X"55",rx_serial_i);
                wait until rx_done_o='1';
                check_byte <= rx_byte_o;
                WAIT UNTIL rising_edge(clk);
                UART_WRITE_BYTE(X"37",rx_serial_i);
                wait until rx_done_o='1';
                check_byte <= rx_byte_o;
                WAIT UNTIL rising_edge(clk);
                UART_WRITE_BYTE(test_byte, rx_serial_i);
                WAIT UNTIL rx_done_o = '1';
                check_byte <= rx_byte_o;
                WAIT UNTIL rising_edge(clk);
                check(expr => check_byte = test_byte, msg => "Received byte " & to_string(check_byte) & " but expected " & to_string(test_byte));

                WAIT FOR 1ms;
            END IF;
        END LOOP;
        test_runner_cleanup(runner);
    END PROCESS main;
END ARCHITECTURE;