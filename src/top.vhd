LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.std_logic_unsigned.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY top IS
    PORT (
        clk : IN STD_LOGIC;
        sw : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        btn : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
        -- led : OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
        -- ja : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
        -- jb : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
        sseg_cs_out : OUT STD_LOGIC;
        uart_txd_in : IN STD_LOGIC;
        uart_rxd_out : OUT STD_LOGIC;
        ck_a10_power : OUT STD_LOGIC;
        ck_a11_power : OUT STD_LOGIC;
        sseg : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
        vga_red : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
        vga_green : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
        vga_blue : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
        vga_hsync_o : OUT STD_LOGIC;
        vga_vsync_o : OUT STD_LOGIC
    );
END top;

ARCHITECTURE Behavioral OF top IS

    SIGNAL edge : STD_LOGIC_VECTOR(3 DOWNTO 0);
    SIGNAL r_counter, r_counter_next : unsigned(25 DOWNTO 0) := (OTHERS => '0');
    SIGNAL r_led_counter, r_led_counter_next : unsigned(3 DOWNTO 0) := (OTHERS => '0');
    SIGNAL clk10 : STD_LOGIC;
    SIGNAL display : STD_LOGIC_VECTOR(6 DOWNTO 0);
    SIGNAL bitinput : STD_LOGIC_VECTOR(7 DOWNTO 0);

    COMPONENT clk_wiz_test IS
        PORT (
            clk_out1 : OUT STD_LOGIC;
            reset : IN STD_LOGIC;
            clk_in1 : IN STD_LOGIC
        );
    END COMPONENT;

    SIGNAL pxl_clk, vga_enable, frame_tick : STD_LOGIC;
    SIGNAL vsync_cnt, hsync_cnt : INTEGER;

    SIGNAL sseg_o : STD_LOGIC_VECTOR(6 DOWNTO 0);
    SIGNAL sseg_cs_o : STD_LOGIC;
    SIGNAL dir_cnt_o,uart_test : unsigned(7 DOWNTO 0);
    SIGNAL rx_busy_prev, rx_busy : STD_LOGIC := '0';
    signal done :std_logic := '0';
    signal reset : std_logic;
    SIGNAL rx_data : STD_LOGIC_VECTOR(7 DOWNTO 0);


BEGIN
    ck_a10_power <= '1';
    ck_a11_power <= '1';

    sseg <= sseg_o;
    sseg_cs_out <= sseg_cs_o;

    reset <= '1';

    sseg_controller : ENTITY work.sseg_controller(arch)
        PORT MAP(
            clk => clk,
            data_i => uart_test,
            sseg_cs_o => sseg_cs_o,
            sseg_o => sseg_o
        );

    -- clk_div_inst : clk_wiz_test
    -- PORT MAP
    -- (-- Clock in ports
    --     clk_in1 => clk,
    --     reset => '0',
    --     -- Clock out ports
    --     clk_out1 => pxl_clk
    -- );

    debouncer : ENTITY work.debounce
        PORT MAP(
            clk => clk,
            btn => btn,
            edge => edge
        );

    -- uart_demo : ENTITY work.uart_transmitter(Behavioral)
    --     PORT MAP(
    --         clk => clk,
    --         start => edge(0),
    --         uart_tx => uart_rxd_out
    --     );

    uart_mirror : entity work.uart_mirror(Behavioral)
    port map(
        clk => clk,
        transmit => edge(0),
        reset => edge(1),
        test => edge(2),
        i_rx_serial => uart_txd_in,
        o_rx_serial => uart_rxd_out,
        out_byte => uart_test
    );

    -- done <= '1' when rx_busy_prev='1' and rx_busy='0' else '0';

    -- uart : ENTITY work.uart(logic)
    --     PORT MAP(
    --         clk => clk,
    --         reset_n => reset,
    --         tx_ena => done,
    --         tx_data => rx_data,
    --         rx => uart_txd_in,
    --         tx => uart_rxd_out,
    --         rx_busy => rx_busy,
    --         rx_error => OPEN,
    --         rx_data => rx_data,
    --         tx_busy => OPEN
    --     );

    -- PROCESS (clk)
    -- BEGIN
    --     rx_busy_prev <= rx_busy;
    -- END PROCESS;


-- ja <= display(3 DOWNTO 0);
-- jb <= display(6 DOWNTO 4);

vga_templ : ENTITY work.vga_template(Behavioral)
    PORT MAP(
        CLK_I => clk,
        VGA_HS_O => vga_hsync_o,
        VGA_VS_O => vga_vsync_o,
        DISPL_ENA_O => OPEN,
        dir_cnt_o => dir_cnt_o,
        VGA_R => vga_red,
        VGA_G => vga_green,
        VGA_B => vga_blue
    );

-- graphics_controller : ENTITY work.graphics_controller(Behavioral)
--     PORT MAP(
--         clk => pxl_clk,
--         vga_enable => vga_enable,
--         HSYNC_CNT_I => hsync_cnt,
--         VSYNC_CNT_I => vsync_cnt,
--         FRAME_TICK_I => frame_tick,
--         VGA_RED_O => vga_red,
--         VGA_BLUE_O => vga_blue,
--         VGA_GREEN_O => vga_green
--     );

-- vga_cntrl : ENTITY work.vga_controller(Behavioral)
--     PORT MAP(
--         pxl_clk => pxl_clk,
--         DISPL_ENA_O => vga_enable,
--         HSYNC_CNT_O => hsync_cnt,
--         VSYNC_CNT_O => vsync_cnt,
--         HSYNC_O => vga_hsync_o,
--         VSYNC_O => vga_vsync_o,
--         FRAME_TICK_O => frame_tick
--         --VGA_RED_O => vga_red,
--         --VGA_BLUE_O => vga_blue,
--         --VGA_GREEN_O => vga_green
--     );
-- PROCESS (clk)
-- BEGIN
--     IF (rising_edge(clk)) THEN
--         r_counter <= r_counter_next;
--     END IF;
-- END PROCESS;

-- PROCESS (r_counter, clk)
-- BEGIN
--     IF (rising_edge(clk)) THEN
--         IF (r_counter = 0) THEN
--             r_led_counter <= r_led_counter_next;
--         END IF;
--     END IF;
-- END PROCESS;

-- r_counter_next <= r_counter + 1;
-- r_led_counter_next <= r_led_counter + 1;

-- led <= STD_LOGIC_VECTOR(r_led_counter);

-- bitinput <= sw & btn;

-- sseg_pmod_controller : ENTITY work.sseg_controller(arch)
--     PORT MAP(
--         clk => clk,
--         data_i => unsigned(bitinput),
--         sseg_cs_o => sseg_cs_out,
--         sseg_o => display
--     );

END Behavioral;