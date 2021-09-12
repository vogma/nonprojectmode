LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

USE IEEE.std_logic_unsigned.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY top IS
    PORT (
        clk : IN STD_LOGIC;
        btn : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
        led : OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
        uart_txd_in : IN STD_LOGIC;
        uart_rxd_out : OUT STD_LOGIC
    );
END top;

ARCHITECTURE Behavioral OF top IS

    SIGNAL edge : STD_LOGIC_VECTOR(3 DOWNTO 0);
    SIGNAL r_counter, r_counter_next : unsigned(25 DOWNTO 0) := (OTHERS => '0');
    SIGNAL r_led_counter, r_led_counter_next : unsigned(3 DOWNTO 0) := (OTHERS => '0');
    SIGNAL clk10 : STD_LOGIC;

    COMPONENT clk_wiz_test IS
        PORT (
            clk_out1 : OUT STD_LOGIC;
            reset : IN STD_LOGIC;
            clk_in1 : IN STD_LOGIC
        );
    END COMPONENT;

BEGIN

    -- uart_demo : ENTITY work.uart_transmitter(Behavioral)
    --     PORT MAP(
    --         clk => clk,
    --         start => edge(0),
    --         uart_tx => uart_rxd_out
    --     );
    uart_mirror2 : ENTITY work.uart_mirror(Behavioral) PORT MAP(
        clk => clk,
        o_rx_serial => uart_rxd_out,
        i_rx_serial => uart_txd_in
        );

    -- clk_div : clk_wiz_test
    -- PORT MAP(
    --     clk_in1 => clk,
    --     reset => '0',
    --     clk_out1 => clk10
    -- );

    -- PROCESS (clk10)
    -- BEGIN
    --     IF (rising_edge(clk10)) THEN
    --         r_counter <= r_counter_next;
    --     END IF;
    -- END PROCESS;

    -- PROCESS (r_counter, clk10)
    -- BEGIN
    --     IF (rising_edge(clk10)) THEN
    --         IF (r_counter = 0) THEN
    --             r_led_counter <= r_led_counter_next;
    --         END IF;
    --     END IF;
    -- END PROCESS;

    -- r_counter_next <= r_counter + 1;
    -- r_led_counter_next <= r_led_counter + 1;

    -- led <= STD_LOGIC_VECTOR(r_led_counter);

    debouncer : ENTITY work.debounce
        PORT MAP(
            clk => clk,
            btn => btn,
            edge => edge
        );

END Behavioral;