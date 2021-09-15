LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

USE IEEE.std_logic_unsigned.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY top IS
    PORT (
        clk : IN STD_LOGIC;
        sw : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        btn : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
        led : OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
        ja : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
        jb : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
        sseg_cs_out : OUT STD_LOGIC;
        uart_txd_in : IN STD_LOGIC;
        uart_rxd_out : OUT STD_LOGIC
    );
END top;

ARCHITECTURE Behavioral OF top IS

    SIGNAL edge : STD_LOGIC_VECTOR(3 DOWNTO 0);
    SIGNAL r_counter, r_counter_next : unsigned(25 DOWNTO 0) := (OTHERS => '0');
    SIGNAL r_led_counter, r_led_counter_next : unsigned(3 DOWNTO 0) := (OTHERS => '0');
    SIGNAL clk10 : STD_LOGIC;
    SIGNAL display : STD_LOGIC_VECTOR(6 DOWNTO 0);
    signal bitinput : STD_LOGIC_VECTOR(7 downto 0);

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

    ja <= display(3 DOWNTO 0);
    jb <= display(6 DOWNTO 4);

    clk_div : clk_wiz_test
    PORT MAP(
        clk_in1 => clk,
        reset => '0',
        clk_out1 => clk10
    );

    PROCESS (clk)
    BEGIN
        IF (rising_edge(clk)) THEN
            r_counter <= r_counter_next;
        END IF;
    END PROCESS;

    PROCESS (r_counter, clk)
    BEGIN
        IF (rising_edge(clk)) THEN
            IF (r_counter = 0) THEN
                r_led_counter <= r_led_counter_next;
            END IF;
        END IF;
    END PROCESS;

    r_counter_next <= r_counter + 1;
    r_led_counter_next <= r_led_counter + 1;

    led <= STD_LOGIC_VECTOR(r_led_counter);

    debouncer : ENTITY work.debounce
        PORT MAP(
            clk => clk,
            btn => btn,
            edge => edge
        );

    bitinput <= sw & btn;

    sseg_pmod_controller : ENTITY work.sseg_controller(arch)
        PORT MAP(
            clk => clk,
            data_i => unsigned(bitinput),
            sseg_cs_o => sseg_cs_out,
            sseg_o => display
        );

END Behavioral;