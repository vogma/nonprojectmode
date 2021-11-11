LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY uart_to_vram IS
    PORT (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        transmit : IN STD_LOGIC;
        test : IN STD_LOGIC;
        i_rx_serial : IN STD_LOGIC;
        o_rx_serial : OUT STD_LOGIC;
        out_byte : OUT unsigned(7 DOWNTO 0);
        data_vga : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
        frame_tick : IN STD_LOGIC;
        pxl_clk : in std_logic
    );
END uart_to_vram;

ARCHITECTURE Behavioral OF uart_to_vram IS

    --UART-Signals
    SIGNAL uart_rx_byte, uart_tx_byte : STD_LOGIC_VECTOR(7 DOWNTO 0);
    SIGNAL uart_tx_start, rx_busy, tx_busy, reset_n : STD_LOGIC := '0';

    --RAM Signals
    SIGNAL bram_ena, brame_write_ena : STD_LOGIC := '0';
    SIGNAL bram_write_ena_vector : STD_LOGIC_VECTOR(0 DOWNTO 0) := (OTHERS => '0');
    SIGNAL bram_address : STD_LOGIC_VECTOR(18 DOWNTO 0) := (OTHERS => '0');
    SIGNAL bram_data_in, bram_data_out : STD_LOGIC_VECTOR(11 DOWNTO 0);

    --IP Component decleration
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
BEGIN

    --Control Logic for UART and RAM Entity
    --After three UART-Bytes the FSM saves the lower Nibble of each Byte as a 12-Bit value to RAM
    --A 12 Bit value represents one RGB-12 Pixel   
    uart_ram_fsm : ENTITY work.uart_controller(arch)
        PORT MAP(
            clk => clk,
            reset_in => reset,
            init_transmission => transmit,
            rx_busy => rx_busy,
            tx_busy => tx_busy,
            rx_data => uart_rx_byte,
            tx_data => uart_tx_byte,
            tx_ena => uart_tx_start,
            reset_out => reset_n,
            ram_ena => bram_ena,
            ram_write_ena => brame_write_ena,
            ram_address => bram_address,
            ram_data_in => bram_data_in,
            ram_data_out => bram_data_out,
            debug => out_byte,
            data_vga => data_vga,
            frame_tick => frame_tick,
            pxl_clk => pxl_clk
        );

    --Block RAM IP expects Vector of length 1 as Enable
    bram_write_ena_vector(0) <= brame_write_ena;

    --Block RAM IP Entity
    bram_vmem : blk_mem_gen_0
    PORT MAP(
        clka => clk,
        ena => bram_ena,
        wea => bram_write_ena_vector,
        addra => bram_address,
        dina => bram_data_in,
        douta => bram_data_out
    );

    --UART Entity
    --TODO eigene UART Implementierung benutzen. Funktioniert natürlich noch nicht :/ (laut Sim aber schon)
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