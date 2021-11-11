LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.std_logic_unsigned.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY uart_controller IS
    PORT (
        clk : IN STD_LOGIC;
        reset_in : IN STD_LOGIC;
        init_transmission : IN STD_LOGIC;
        rx_busy : IN STD_LOGIC;
        tx_busy : IN STD_LOGIC;
        rx_data : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        ram_data_out : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
        tx_data : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
        tx_ena : OUT STD_LOGIC;
        reset_out : OUT STD_LOGIC;
        ram_ena : OUT STD_LOGIC;
        ram_write_ena : OUT STD_LOGIC;
        ram_address : OUT STD_LOGIC_VECTOR(18 DOWNTO 0);
        ram_data_in : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
        frame_tick : IN STD_LOGIC;
        pxl_clk : IN STD_LOGIC;
        data_in : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
        debug : OUT unsigned(7 DOWNTO 0)
    );
END uart_controller;

ARCHITECTURE arch OF uart_controller IS
    TYPE state_type IS (idle, save_pxl_to_ram, wait_for_pxl_clk, receive, wait_for_bram, read_blue, wait_for_frame_tick, read_ram, read_green, transmit_state, start_transmission, write_to_ram, cleanup);

    SIGNAL state_reg, state_next : state_type := idle;
    SIGNAL index_reg, index_next : INTEGER RANGE 0 TO 400_000 := 0;
    SIGNAL debug_reg, debug_next : unsigned(7 DOWNTO 0);
    SIGNAL ram_address_reg, ram_address_next, ram_max, ram_max_next : unsigned(18 DOWNTO 0) := (OTHERS => '0');
    SIGNAL clk_cnt_reg, clk_cnt_next : INTEGER RANGE 0 TO 2 := 2;
    SIGNAL pxl_reg, pxl_next : STD_LOGIC_VECTOR(11 DOWNTO 0) := (OTHERS => '0');
    SIGNAL pxl_clk3, pxl_clk1, pxl_clk2 : STD_LOGIC := '0';
    SIGNAL frame_tick1, frame_tick2 : STD_LOGIC := '0';
    SIGNAL data_vga_reg, data_vga_next : STD_LOGIC_VECTOR(11 DOWNTO 0) := (OTHERS => '0');
    SIGNAL rx_busy_prev : STD_LOGIC;
BEGIN
    reset_out <= '1';
    ram_ena <= '1';
    ram_address <= STD_LOGIC_VECTOR(ram_address_reg);

    PROCESS (clk)
    BEGIN
        IF rising_edge(clk) THEN
            pxl_clk1 <= pxl_clk;
            pxl_clk2 <= pxl_clk1;
            pxl_clk3 <= pxl_clk2;

            frame_tick1 <= frame_tick;
            frame_tick2 <= frame_tick1;
        END IF;
    END PROCESS;

    register_process : PROCESS (clk)
    BEGIN
        IF (rising_edge(clk)) THEN
            state_reg <= state_next;
            index_reg <= index_next;
            data_vga_reg <= data_vga_next;
            rx_busy_prev <= rx_busy;
            ram_address_reg <= ram_address_next;
            ram_max <= ram_max_next;
            clk_cnt_reg <= clk_cnt_next;
            pxl_reg <= pxl_next;
            debug_reg <= debug_next;
        END IF;
    END PROCESS;

    --Debug auf HEX-Display
    debug <= debug_reg;
    --out_byte <= unsigned(bram_data_out(7 DOWNTO 0));

    data_in <= data_vga_reg;

    PROCESS (state_reg, ram_max, data_vga_reg, pxl_reg, rx_data, reset_in, init_transmission, ram_data_out, tx_busy, clk_cnt_reg, debug_reg, ram_address_reg, rx_busy_prev, rx_busy, index_reg)
    BEGIN
        state_next <= state_reg;
        index_next <= index_reg;
        data_vga_next <= data_vga_reg;
        tx_ena <= '0';
        ram_write_ena <= '0';
        clk_cnt_next <= clk_cnt_reg;
        ram_address_next <= ram_address_reg;
        ram_max_next <= ram_max;
        pxl_next <= pxl_reg;
        debug_next <= debug_reg;
        tx_data <= (OTHERS => '0');

        CASE state_reg IS

            WHEN idle =>

                debug_next <= "00000101";

                --Uart Received
                IF rx_busy_prev = '1' AND rx_busy = '0' THEN
                    pxl_next(3 DOWNTO 0) <= rx_data(3 DOWNTO 0);
                    state_next <= read_green;
                END IF;

                IF reset_in = '1' THEN
                    ram_address_next <= (OTHERS => '0');
                END IF;

                --Start Transmission
                IF init_transmission = '1' THEN
                    debug_next <= "00000010";
                    ram_max_next <= ram_address_reg; --save highest written address
                    ram_address_next <= (OTHERS => '0'); --and then reset ram_address to first
                    state_next <= wait_for_frame_tick;
                END IF;

            WHEN wait_for_frame_tick =>
                IF frame_tick2 = '1' THEN
                    state_next <= wait_for_pxl_clk;
                END IF;

            WHEN read_ram =>
                ram_address_next <= ram_address_reg + 1;
                state_next <= wait_for_bram;

            WHEN wait_for_bram =>
                state_next <= wait_for_pxl_clk;

            WHEN wait_for_pxl_clk =>
                data_vga_next <= ram_data_out;
                IF pxl_clk3 = '0' AND pxl_clk2 = '1' THEN
                    state_next <= read_ram;
                END IF;

            WHEN read_blue =>
                IF rx_busy_prev = '1' AND rx_busy = '0' THEN
                    pxl_next(11 DOWNTO 8) <= rx_data(3 DOWNTO 0);
                    state_next <= save_pxl_to_ram;
                END IF;

            WHEN read_green =>
                IF rx_busy_prev = '1' AND rx_busy = '0' THEN
                    pxl_next(7 DOWNTO 4) <= rx_data(3 DOWNTO 0);
                    state_next <= read_blue;
                END IF;

            WHEN save_pxl_to_ram =>
                ram_write_ena <= '1';
                ram_data_in <= pxl_reg;
                ram_address_next <= ram_address_reg + 1;
                pxl_next <= (OTHERS => '0');
                state_next <= idle;

            WHEN cleanup =>
                clk_cnt_next <= clk_cnt_reg - 1;
                IF (clk_cnt_reg = 0) THEN
                    state_next <= start_transmission;
                    clk_cnt_next <= 1;
                END IF;

            WHEN start_transmission =>
                debug_next <= "00000100";
                tx_ena <= '1';
                tx_data <= ram_data_out(7 DOWNTO 0);
                ram_address_next <= ram_address_reg + 1;
                state_next <= transmit_state;

            WHEN transmit_state =>
                debug_next <= "00001000";
                debug_next(2) <= tx_busy;
                IF tx_busy = '0' THEN
                    IF index_reg = 63 THEN
                        state_next <= idle;
                        ram_address_next <= (OTHERS => '0');
                        index_next <= 0;
                    ELSE
                        index_next <= index_reg + 1;
                        state_next <= start_transmission;
                    END IF;
                END IF;

            WHEN OTHERS => NULL;
        END CASE;
    END PROCESS;
END arch;