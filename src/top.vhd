LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.std_logic_unsigned.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY top IS
    PORT (
        clk : IN STD_LOGIC;
        -- sw : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        --btn : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
        led : OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
        -- ja : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
        -- jb : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
        ddr3_dq : INOUT STD_LOGIC_VECTOR (15 DOWNTO 0);
        ddr3_dqs_n : INOUT STD_LOGIC_VECTOR (1 DOWNTO 0);
        ddr3_dqs_p : INOUT STD_LOGIC_VECTOR (1 DOWNTO 0);
        ddr3_addr : OUT STD_LOGIC_VECTOR (13 DOWNTO 0);
        ddr3_ba : OUT STD_LOGIC_VECTOR (2 DOWNTO 0);
        ddr3_ras_n : OUT STD_LOGIC;
        ddr3_cas_n : OUT STD_LOGIC;
        ddr3_we_n : OUT STD_LOGIC;
        ddr3_reset_n : OUT STD_LOGIC;
        ddr3_ck_p : OUT STD_LOGIC_VECTOR (0 TO 0);
        ddr3_ck_n : OUT STD_LOGIC_VECTOR (0 TO 0);
        ddr3_cke : OUT STD_LOGIC_VECTOR (0 TO 0);
        ddr3_cs_n : OUT STD_LOGIC_VECTOR (0 TO 0);
        ddr3_dm : OUT STD_LOGIC_VECTOR (1 DOWNTO 0);
        ddr3_odt : OUT STD_LOGIC_VECTOR (0 TO 0);
        sseg_cs_out : OUT STD_LOGIC;
        -- uart_txd_in : IN STD_LOGIC;
        -- uart_rxd_out : OUT STD_LOGIC;
        ck_a10_power : OUT STD_LOGIC;
        ck_a11_power : OUT STD_LOGIC;
        sseg : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
        -- vga_red : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
        -- vga_green : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
        -- vga_blue : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
        -- vga_hsync_o : OUT STD_LOGIC;
        -- vga_vsync_o : OUT STD_LOGIC
    );
END top;

ARCHITECTURE Behavioral OF top IS

    SIGNAL edge : STD_LOGIC_VECTOR(3 DOWNTO 0);
    SIGNAL r_counter, r_counter_next : unsigned(25 DOWNTO 0) := (OTHERS => '0');
    SIGNAL r_led_counter, r_led_counter_next : unsigned(3 DOWNTO 0) := (OTHERS => '0');
    SIGNAL clk10 : STD_LOGIC;
    SIGNAL display : STD_LOGIC_VECTOR(6 DOWNTO 0);
    SIGNAL bitinput : STD_LOGIC_VECTOR(7 DOWNTO 0);

    TYPE state_type IS (IDLE, WRITE, WRITE_DONE, READ, READ_DONE, PARK);
    SIGNAL state_reg, state_next : state_type := IDLE;

    SIGNAL ui_clk, ui_clk_sync_rst : STD_LOGIC := '0';

    SIGNAL data_in : STD_LOGIC_VECTOR(11 DOWNTO 0) := (OTHERS => '0');
    SIGNAL frame_tick : STD_LOGIC := '0';

    COMPONENT clk_wiz_test IS
        PORT (
            clk_out1 : OUT STD_LOGIC;
            reset : IN STD_LOGIC;
            clk_in1 : IN STD_LOGIC
        );
    END COMPONENT;

    COMPONENT mig_7series_0 IS
        PORT (
            ddr3_dq : INOUT STD_LOGIC_VECTOR (15 DOWNTO 0);
            ddr3_dqs_n : INOUT STD_LOGIC_VECTOR (1 DOWNTO 0);
            ddr3_dqs_p : INOUT STD_LOGIC_VECTOR (1 DOWNTO 0);
            ddr3_addr : OUT STD_LOGIC_VECTOR (13 DOWNTO 0);
            ddr3_ba : OUT STD_LOGIC_VECTOR (2 DOWNTO 0);
            ddr3_ras_n : OUT STD_LOGIC;
            ddr3_cas_n : OUT STD_LOGIC;
            ddr3_we_n : OUT STD_LOGIC;
            ddr3_reset_n : OUT STD_LOGIC;
            ddr3_ck_p : OUT STD_LOGIC_VECTOR (0 TO 0);
            ddr3_ck_n : OUT STD_LOGIC_VECTOR (0 TO 0);
            ddr3_cke : OUT STD_LOGIC_VECTOR (0 TO 0);
            ddr3_cs_n : OUT STD_LOGIC_VECTOR (0 TO 0);
            ddr3_dm : OUT STD_LOGIC_VECTOR (1 DOWNTO 0);
            ddr3_odt : OUT STD_LOGIC_VECTOR (0 TO 0);
            sys_clk_i : IN STD_LOGIC;
            clk_ref_i : IN STD_LOGIC;
            app_addr : IN STD_LOGIC_VECTOR (27 DOWNTO 0);
            app_cmd : IN STD_LOGIC_VECTOR (2 DOWNTO 0);
            app_en : IN STD_LOGIC;
            app_wdf_data : IN STD_LOGIC_VECTOR (127 DOWNTO 0);
            app_wdf_end : IN STD_LOGIC;
            app_wdf_mask : IN STD_LOGIC_VECTOR (15 DOWNTO 0);
            app_wdf_wren : IN STD_LOGIC;
            app_rd_data : OUT STD_LOGIC_VECTOR (127 DOWNTO 0);
            app_rd_data_end : OUT STD_LOGIC;
            app_rd_data_valid : OUT STD_LOGIC;
            app_rdy : OUT STD_LOGIC;
            app_wdf_rdy : OUT STD_LOGIC;
            app_sr_req : IN STD_LOGIC;
            app_ref_req : IN STD_LOGIC;
            app_zq_req : IN STD_LOGIC;
            app_sr_active : OUT STD_LOGIC;
            app_ref_ack : OUT STD_LOGIC;
            app_zq_ack : OUT STD_LOGIC;
            ui_clk : OUT STD_LOGIC;
            ui_clk_sync_rst : OUT STD_LOGIC;
            init_calib_complete : OUT STD_LOGIC;
            device_temp : OUT STD_LOGIC_VECTOR (11 DOWNTO 0);
            sys_rst : IN STD_LOGIC
        );

    END COMPONENT;

    SIGNAL pxl_clk, vga_enable : STD_LOGIC;
    SIGNAL vsync_cnt, hsync_cnt : INTEGER;

    SIGNAL clk200 : STD_LOGIC := '0';
    SIGNAL sseg_o : STD_LOGIC_VECTOR(6 DOWNTO 0);
    SIGNAL sseg_cs_o : STD_LOGIC;
    SIGNAL dir_cnt_o, uart_test : unsigned(7 DOWNTO 0);
    SIGNAL rx_busy_prev, rx_busy : STD_LOGIC := '0';
    SIGNAL done : STD_LOGIC := '0';
    SIGNAL reset : STD_LOGIC;
    SIGNAL rx_data : STD_LOGIC_VECTOR(7 DOWNTO 0);

    SIGNAL app_addr : STD_LOGIC_VECTOR (27 DOWNTO 0);
    SIGNAL app_cmd : STD_LOGIC_VECTOR (2 DOWNTO 0);
    SIGNAL app_en : STD_LOGIC;
    SIGNAL app_wdf_data : STD_LOGIC_VECTOR (127 DOWNTO 0);
    SIGNAL app_wdf_end : STD_LOGIC;
    SIGNAL app_wdf_mask : STD_LOGIC_VECTOR (15 DOWNTO 0);
    SIGNAL app_wdf_wren : STD_LOGIC;
    SIGNAL app_rd_data : STD_LOGIC_VECTOR (127 DOWNTO 0);
    SIGNAL app_rd_data_end : STD_LOGIC;
    SIGNAL app_rd_data_valid : STD_LOGIC;
    SIGNAL app_rdy : STD_LOGIC;
    SIGNAL app_wdf_rdy : STD_LOGIC;
    SIGNAL app_sr_req : STD_LOGIC := '0';
    SIGNAL app_ref_req : STD_LOGIC := '0';
    SIGNAL app_zq_req : STD_LOGIC := '0';
    SIGNAL app_sr_active : STD_LOGIC;
    SIGNAL app_ref_ack : STD_LOGIC;
    SIGNAL app_zq_ack : STD_LOGIC;
    SIGNAL init_calib_complete : STD_LOGIC;
    SIGNAL device_temp : STD_LOGIC_VECTOR (11 DOWNTO 0);
    SIGNAL sys_rst : STD_LOGIC := '0';

    SIGNAL app_wdf_wren_reg, app_wdf_wren_next : STD_LOGIC := '0';
    SIGNAL app_addr_reg, app_addr_next : STD_LOGIC_VECTOR(27 DOWNTO 0) := (OTHERS => '0');
    SIGNAL app_cmd_reg, app_cmd_next : STD_LOGIC_VECTOR(2 DOWNTO 0) := (OTHERS => '0');
    SIGNAL app_wdf_data_reg, app_wdf_data_next : STD_LOGIC_VECTOR(127 DOWNTO 0);

    SIGNAL led_reg, led_next : STD_LOGIC := '0';

    SIGNAL app_en_reg, app_en_next : STD_LOGIC := '0';
    SIGNAL data_to_write : STD_LOGIC_VECTOR(127 DOWNTO 0) := X"123456789ABCDEF123456789ABCDEFFF";
    SIGNAL data_read_from_memory_reg, data_read_from_memory_next : STD_LOGIC_VECTOR(127 DOWNTO 0) := (OTHERS => '0');
BEGIN
     ck_a10_power <= '1';
    ck_a11_power <= '1';

     sseg <= sseg_o;
     sseg_cs_out <= sseg_cs_o;

    led(0) <= init_calib_complete;
    led(3) <= led_reg;
    sys_rst <= '1';

    -- reset <= '1';

    sseg_controller : ENTITY work.sseg_controller(arch)
        PORT MAP(
            clk => clk,
            data_i => unsigned(data_read_from_memory_reg(7 downto 0)),
            sseg_cs_o => sseg_cs_o,
            sseg_o => sseg_o
        );

    PROCESS (ui_clk, ui_clk_sync_rst)
    BEGIN
        IF ui_clk_sync_rst = '1' THEN
            state_reg <= IDLE;
            app_en_reg <= '0';
            app_wdf_wren_reg <= '0';
            app_addr_reg <= (OTHERS => '0');
            app_cmd_reg <= (OTHERS => '0');
            app_wdf_data_reg <= (OTHERS => '0');
            data_read_from_memory_reg <= (OTHERS => '0');
            led_reg <= '0';
        ELSIF rising_edge(ui_clk) THEN
            state_reg <= state_next;
            app_en_reg <= app_en_next;
            app_wdf_wren_reg <= app_wdf_wren_next;
            app_addr_reg <= app_addr_next;
            app_cmd_reg <= app_cmd_next;
            app_wdf_data_reg <= app_wdf_data_next;
            data_read_from_memory_reg <= data_read_from_memory_next;
            led_reg <= led_next;
        END IF;
    END PROCESS;

    app_en <= app_en_reg;
    app_wdf_wren <= app_wdf_wren_reg;
    app_addr <= app_addr_reg;
    app_cmd <= app_cmd_reg;
    app_wdf_data <= app_wdf_data_reg;

    PROCESS (init_calib_complete, app_rdy, app_wdf_rdy, app_wdf_wren, app_en_reg, app_rd_data_valid, data_to_write, app_wdf_data_reg, app_wdf_wren_reg, app_cmd_reg, app_addr_reg, data_read_from_memory_reg)
    BEGIN
        state_next <= state_reg;
        app_en_next <= app_en_reg;
        app_wdf_wren_next <= app_wdf_wren_reg;
        app_addr_next <= app_addr_reg;
        app_cmd_next <= app_cmd_reg;
        app_wdf_data_next <= app_wdf_data_reg;
        data_read_from_memory_next <= data_read_from_memory_reg;
        led_next <= led_reg;

        CASE state_reg IS

            WHEN IDLE =>
                IF (init_calib_complete = '1') THEN
                    state_next <= WRITE;
                END IF;

            WHEN WRITE =>
                IF app_rdy = '1' AND app_wdf_rdy = '1' THEN
                    state_next <= WRITE_DONE;
                    app_en_next <= '1';
                    app_wdf_wren_next <= '1';
                    app_cmd_next <= "000";
                    app_wdf_data_next <= data_to_write;
                END IF;

            WHEN WRITE_DONE =>
                IF app_rdy = '1' AND app_en_reg = '1' THEN
                    app_en_next <= '0';
                END IF;

                IF app_wdf_rdy = '1' AND app_wdf_wren_reg = '1' THEN
                    app_wdf_wren_next <= '0';
                END IF;

                IF app_en_reg = '0' AND app_wdf_wren_reg = '0' THEN
                    state_next <= READ;
                END IF;

            WHEN READ =>
                IF app_rdy = '1' THEN
                    app_en_next <= '1';
                    app_addr_next <= (OTHERS => '0');
                    app_cmd_next <= "001";
                    state_next <= READ_DONE;
                END IF;

            WHEN READ_DONE =>
                IF app_rdy = '1' AND app_en_reg = '1' THEN
                    app_en_next <= '0';
                END IF;

                IF app_rd_data_valid = '1' THEN
                    data_read_from_memory_next <= app_rd_data;
                    state_next <= PARK;
                END IF;

            WHEN PARK =>
                IF data_to_write = data_read_from_memory_reg THEN
                    led_next <= '1';
                END IF;
        END CASE;

    END PROCESS;

    ddr3_mig : mig_7series_0
    PORT MAP(
        ddr3_dq => ddr3_dq,
        ddr3_dqs_n => ddr3_dqs_n,
        ddr3_dqs_p => ddr3_dqs_p,
        ddr3_addr => ddr3_addr,
        ddr3_ba => ddr3_ba,
        ddr3_ras_n => ddr3_ras_n,
        ddr3_cas_n => ddr3_cas_n,
        ddr3_we_n => ddr3_we_n,
        ddr3_reset_n => ddr3_reset_n,
        ddr3_ck_p => ddr3_ck_p,
        ddr3_ck_n => ddr3_ck_n,
        ddr3_cke => ddr3_cke,
        ddr3_cs_n => ddr3_cs_n,
        ddr3_dm => ddr3_dm,
        ddr3_odt => ddr3_odt,
        ui_clk => ui_clk,
        ui_clk_sync_rst => ui_clk_sync_rst,
        sys_clk_i => clk200,
        clk_ref_i => clk, --TODO
        app_addr => app_addr,
        app_cmd => app_cmd,
        app_en => app_en,
        app_wdf_data => app_wdf_data,
        app_wdf_end => '0',
        app_wdf_mask => (others => '0'),
        app_wdf_wren => app_wdf_wren,
        app_rd_data => app_rd_data,
        app_rd_data_end => app_rd_data_end,
        app_rd_data_valid => app_rd_data_valid,
        app_rdy => app_rdy,
        app_wdf_rdy => app_wdf_rdy,
        app_sr_req => app_sr_req,
        app_ref_req => '0',
        app_zq_req => app_zq_req,
        app_sr_active => app_sr_active,
        app_ref_ack => app_ref_ack,
        app_zq_ack => app_zq_ack,
        init_calib_complete => init_calib_complete,
        device_temp => device_temp,
        sys_rst => sys_rst
    );

    clk_div_inst : clk_wiz_test
    PORT MAP
    (-- Clock in ports
        clk_in1 => clk,
        reset => '0',
        -- Clock out ports
        clk_out1 => clk200
    );

    -- debouncer : ENTITY work.debounce
    --     PORT MAP(
    --         clk => clk,
    --         btn => btn,
    --         edge => edge
    --     );

    -- uart_demo : ENTITY work.uart_transmitter(Behavioral)
    --     PORT MAP(
    --         clk => clk,
    --         start => edge(0),
    --         uart_tx => uart_rxd_out
    --     );

    -- uart_to_vram : ENTITY work.uart_to_vram(Behavioral)
    --     PORT MAP(
    --         clk => clk,
    --         transmit => edge(0),
    --         reset => edge(1),
    --         test => edge(2),
    --         i_rx_serial => uart_txd_in,
    --         o_rx_serial => uart_rxd_out,
    --         out_byte => uart_test,
    --         data_vga => data_in,
    --         frame_tick => frame_tick,
    --         pxl_clk => pxl_clk
    --     );

    --led <= STD_LOGIC_VECTOR(uart_test(3 DOWNTO 0));

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

    -- vga_templ : ENTITY work.vga_template(Behavioral)
    --     PORT MAP(
    --         CLK_I => pxl_clk,
    --         VGA_HS_O => vga_hsync_o,
    --         VGA_VS_O => vga_vsync_o,
    --         DISPL_ENA_O => OPEN,
    --         dir_cnt_o => dir_cnt_o,
    --         data_in => data_in,
    --         frame_tick => frame_tick,
    --         VGA_R => vga_red,
    --         VGA_G => vga_green,
    --         VGA_B => vga_blue
    --     );

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