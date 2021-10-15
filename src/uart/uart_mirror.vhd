LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.std_logic_unsigned.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY uart_mirror IS
    PORT (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        transmit : IN STD_LOGIC;
        test : IN STD_LOGIC;
        i_rx_serial : IN STD_LOGIC;
        o_rx_serial : OUT STD_LOGIC;
        out_byte : OUT unsigned(7 DOWNTO 0)
    );
END uart_mirror;

ARCHITECTURE Behavioral OF uart_mirror IS
    SIGNAL rx_done : STD_LOGIC;
    SIGNAL uart_rx_byte : STD_LOGIC_VECTOR(7 DOWNTO 0);
    SIGNAL uart_rx_done : STD_LOGIC;

    TYPE uart_result IS ARRAY(63 DOWNTO 0) OF STD_LOGIC_VECTOR(7 DOWNTO 0);
    TYPE state_type IS (idle, receive, transmit_state, start_transmission, write_to_ram, cleanup);
    SIGNAL state_reg, state_next : state_type := idle;
    SIGNAL uart_result_reg, uart_result_next : uart_result := (OTHERS => (OTHERS => '0'));

    SIGNAL uart_tx_start, tx_uart_done : STD_LOGIC;
    SIGNAL uart_tx_byte : STD_LOGIC_VECTOR(7 DOWNTO 0);

    COMPONENT blk_mem_gen_0 IS
        PORT (
            clka : IN STD_LOGIC;
            ena : IN STD_LOGIC;
            wea : IN STD_LOGIC_VECTOR (0 TO 0);
            addra : IN STD_LOGIC_VECTOR (18 DOWNTO 0);
            dina : IN STD_LOGIC_VECTOR (11 DOWNTO 0);
            douta : OUT STD_LOGIC_VECTOR (11 DOWNTO 0)
        );
    END COMPONENT;
    SIGNAL index_reg, index_next : INTEGER RANGE 0 TO 63 := 0;
    SIGNAL rx_busy, rx_busy_prev, tx_busy, reset_n : STD_LOGIC;

    SIGNAL bram_ena, brame_write_ena : STD_LOGIC := '0';
    SIGNAL bram_write_ena_vector : STD_LOGIC_VECTOR(0 DOWNTO 0);
    SIGNAL bram_address : STD_LOGIC_VECTOR(18 DOWNTO 0) := (OTHERS => '0');
    SIGNAL ram_address, ram_address_next : unsigned(18 DOWNTO 0) := (OTHERS => '0');
    SIGNAL bram_data_in, bram_data_out : STD_LOGIC_VECTOR(11 DOWNTO 0);
BEGIN

    bram_write_ena_vector(0) <= brame_write_ena;

    bram_vmem : blk_mem_gen_0
    PORT MAP(
        clka => clk,
        ena => bram_ena,
        wea => bram_write_ena_vector,
        addra => bram_address,
        dina => bram_data_in,
        douta => bram_data_out
    );

    reset_n <= '1';
    bram_ena <= '1';
    bram_address <= STD_LOGIC_VECTOR(ram_address);

    PROCESS (clk)
    BEGIN
        IF (rising_edge(clk)) THEN
            state_reg <= state_next;
            uart_result_reg <= uart_result_next;
            index_reg <= index_next;
            rx_busy_prev <= rx_busy;
            ram_address <= ram_address_next;
        END IF;
    END PROCESS;
    out_byte <= unsigned(bram_data_out(7 DOWNTO 0));

    PROCESS (state_reg, transmit, state_reg, ram_address, rx_busy_prev, rx_busy, index_reg, uart_result_reg, uart_rx_done, uart_rx_done)
    BEGIN
        state_next <= state_reg;
        uart_result_next <= uart_result_reg;
        index_next <= index_reg;
        uart_tx_start <= '0';
        brame_write_ena <= '0';
        ram_address_next <= ram_address;
        --uart_tx_byte <= (OTHERS => '0');

        CASE state_reg IS
            WHEN idle =>

                IF rx_busy_prev = '1' AND rx_busy = '0' THEN
                    brame_write_ena <= '1';
                    bram_data_in <= "0000" & uart_rx_byte;
                    ram_address_next <= ram_address + 1;
                END IF;

                IF reset = '1' THEN
                    ram_address_next <= (OTHERS => '0');
                    uart_result_next <= (OTHERS => (OTHERS => '0'));
                END IF;

                IF test = '1' THEN
                    ram_address_next <= "0000000000000000001";
                END IF;

                IF transmit = '1' THEN
                    ram_address_next <= (OTHERS => '0');
                    state_next <= cleanup;
                END IF;

            WHEN cleanup =>
                state_next <= start_transmission;

            WHEN start_transmission =>
                uart_tx_start <= '1';
                uart_tx_byte <= bram_data_out(7 DOWNTO 0);
                ram_address_next <= ram_address + 1;
                state_next <= transmit_state;

            WHEN transmit_state =>
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

    -- uart_receiver : ENTITY work.uart_rx_controller(Behavioral)
    --     GENERIC MAP(
    --         clk_rate => 100_000_000,
    --         baud_rate => 115200
    --     )
    --     PORT MAP(
    --         clk => clk,
    --         rx_serial => i_rx_serial,
    --         rx_byte => uart_rx_byte,
    --         rx_done => uart_rx_done
    --     );

    -- --entity transmits one byte over uart
    -- tx_controller : ENTITY work.uart_tx_controller(arch)
    --     GENERIC MAP(
    --         clk_rate => 100_000_000,
    --         baud_rate => 115200
    --     )
    --     PORT MAP(
    --         clk => clk,
    --         tx_start => uart_tx_start,
    --         tx_byte => uart_tx_byte,
    --         tx_active => OPEN,
    --         tx_serial => o_rx_serial,
    --         tx_done => tx_uart_done
    --     );
    uart : ENTITY work.uart(logic)
        GENERIC MAP(
            clk_freq => 100_000_000,
            parity => 0
        )
        PORT MAP(
            clk => clk,
            reset_n => reset_n,
            tx_ena => uart_tx_start,
            tx_data => uart_tx_byte,
            rx => i_rx_serial,
            rx_busy => rx_busy,
            rx_error => OPEN,
            rx_data => uart_rx_byte,
            tx_busy => tx_busy,
            tx => o_rx_serial
        );

END Behavioral;