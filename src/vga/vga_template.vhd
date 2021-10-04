----------------------------------------------------------------------------------
-- Company: Digilent
-- Engineer: Arthur Brown
-- 
--
-- Create Date:    13:01:51 02/15/2013 
-- Project Name:   pmodvga
-- Target Devices: arty
-- Tool versions:  2016.4
-- Additional Comments: 
--
-- Copyright Digilent 2017
----------------------------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

USE IEEE.std_logic_unsigned.ALL;
USE IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

ENTITY vga_template IS
  PORT (
    CLK_I : IN STD_LOGIC;
    VGA_HS_O : OUT STD_LOGIC;
    VGA_VS_O : OUT STD_LOGIC;
    DISPL_ENA_O : OUT STD_LOGIC;
    VGA_R : OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
    VGA_B : OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
    dir_cnt_o : OUT unsigned(7 DOWNTO 0);
    VGA_G : OUT STD_LOGIC_VECTOR (3 DOWNTO 0));
END vga_template;

ARCHITECTURE Behavioral OF vga_template IS

  -- component clk_wiz_0
  -- port
  --  (-- Clock in ports
  --   clk_in1           : in     std_logic;
  --   -- Clock out ports
  --   clk_25_out          : out    std_logic
  --  );
  -- end component;

  --Sync Generation constants

  ----***640x480@60Hz***--  Requires 25 MHz clock
  CONSTANT FRAME_WIDTH : NATURAL := 640;
  CONSTANT FRAME_HEIGHT : NATURAL := 480;

  CONSTANT H_FP : NATURAL := 16; --H front porch width (pixels)
  CONSTANT H_PW : NATURAL := 96; --H sync pulse width (pixels)
  CONSTANT H_MAX : NATURAL := 800; --H total period (pixels)

  CONSTANT V_FP : NATURAL := 10; --V front porch width (lines)
  CONSTANT V_PW : NATURAL := 2; --V sync pulse width (lines)
  CONSTANT V_MAX : NATURAL := 525; --V total period (lines)

  CONSTANT H_POL : STD_LOGIC := '0';
  CONSTANT V_POL : STD_LOGIC := '0';

  ----***800x600@60Hz***--  Requires 40 MHz clock
  --constant FRAME_WIDTH : natural := 800;
  --constant FRAME_HEIGHT : natural := 600;
  --
  --constant H_FP : natural := 40; --H front porch width (pixels)
  --constant H_PW : natural := 128; --H sync pulse width (pixels)
  --constant H_MAX : natural := 1056; --H total period (pixels)
  --
  --constant V_FP : natural := 1; --V front porch width (lines)
  --constant V_PW : natural := 4; --V sync pulse width (lines)
  --constant V_MAX : natural := 628; --V total period (lines)
  --
  --constant H_POL : std_logic := '1';
  --constant V_POL : std_logic := '1';
  ----***1280x720@60Hz***-- Requires 74.25 MHz clock
  --constant FRAME_WIDTH : natural := 1280;
  --constant FRAME_HEIGHT : natural := 720;
  --
  --constant H_FP : natural := 110; --H front porch width (pixels)
  --constant H_PW : natural := 40; --H sync pulse width (pixels)
  --constant H_MAX : natural := 1650; --H total period (pixels)
  --
  --constant V_FP : natural := 5; --V front porch width (lines)
  --constant V_PW : natural := 5; --V sync pulse width (lines)
  --constant V_MAX : natural := 750; --V total period (lines)
  --
  --constant H_POL : std_logic := '1';
  --constant V_POL : std_logic := '1';

  ----***1280x1024@60Hz***-- Requires 108 MHz clock
  --constant FRAME_WIDTH : natural := 1280;
  --constant FRAME_HEIGHT : natural := 1024;

  --constant H_FP : natural := 48; --H front porch width (pixels)
  --constant H_PW : natural := 112; --H sync pulse width (pixels)
  --constant H_MAX : natural := 1688; --H total period (pixels)

  --constant V_FP : natural := 1; --V front porch width (lines)
  --constant V_PW : natural := 3; --V sync pulse width (lines)
  --constant V_MAX : natural := 1066; --V total period (lines)

  --constant H_POL : std_logic := '1';
  --constant V_POL : std_logic := '1';

  --***1920x1080@60Hz***-- Requires 148.5 MHz pxl_clk
  --constant FRAME_WIDTH : natural := 1920;
  --constant FRAME_HEIGHT : natural := 1080;

  --constant H_FP : natural := 88; --H front porch width (pixels)
  --constant H_PW : natural := 44; --H sync pulse width (pixels)
  --constant H_MAX : natural := 2200; --H total period (pixels)

  --constant V_FP : natural := 4; --V front porch width (lines)
  --constant V_PW : natural := 5; --V sync pulse width (lines)
  --constant V_MAX : natural := 1125; --V total period (lines)

  --constant H_POL : std_logic := '1';
  --constant V_POL : std_logic := '1';

  --Moving Box constants
  CONSTANT BOX_WIDTH : NATURAL := 10;
  CONSTANT BOX_CLK_DIV : NATURAL := 250000; --MAX=(2^25 - 1)

  CONSTANT BOX_X_MAX : NATURAL := (640 - BOX_WIDTH);
  CONSTANT BOX_Y_MAX : NATURAL := (FRAME_HEIGHT - BOX_WIDTH);

  CONSTANT BOX_X_MIN : NATURAL := 0;
  CONSTANT BOX_Y_MIN : NATURAL := 0;

  CONSTANT BOX_X_INIT : STD_LOGIC_VECTOR(11 DOWNTO 0) := x"000";
  CONSTANT BOX_Y_INIT : STD_LOGIC_VECTOR(11 DOWNTO 0) := x"190"; --400

  SIGNAL pxl_clk : STD_LOGIC;
  SIGNAL active : STD_LOGIC;

  SIGNAL h_cntr_reg : STD_LOGIC_VECTOR(11 DOWNTO 0) := (OTHERS => '0');
  SIGNAL v_cntr_reg : STD_LOGIC_VECTOR(11 DOWNTO 0) := (OTHERS => '0');

  SIGNAL h_sync_reg : STD_LOGIC := NOT(H_POL);
  SIGNAL v_sync_reg : STD_LOGIC := NOT(V_POL);

  SIGNAL h_sync_dly_reg : STD_LOGIC := NOT(H_POL);
  SIGNAL v_sync_dly_reg : STD_LOGIC := NOT(V_POL);

  SIGNAL vga_red_reg : STD_LOGIC_VECTOR(3 DOWNTO 0) := (OTHERS => '0');
  SIGNAL vga_green_reg : STD_LOGIC_VECTOR(3 DOWNTO 0) := (OTHERS => '0');
  SIGNAL vga_blue_reg : STD_LOGIC_VECTOR(3 DOWNTO 0) := (OTHERS => '0');

  SIGNAL vga_red : STD_LOGIC_VECTOR(3 DOWNTO 0);
  SIGNAL vga_green : STD_LOGIC_VECTOR(3 DOWNTO 0);
  SIGNAL vga_blue : STD_LOGIC_VECTOR(3 DOWNTO 0);

  SIGNAL box_x_reg : STD_LOGIC_VECTOR(11 DOWNTO 0) := BOX_X_INIT;
  SIGNAL box_x_dir : STD_LOGIC := '1'; --0 links / 1 rechts
  SIGNAL box_y_reg : STD_LOGIC_VECTOR(11 DOWNTO 0) := BOX_Y_INIT;
  SIGNAL box_y_dir : STD_LOGIC := '1';
  SIGNAL box_cntr_reg : STD_LOGIC_VECTOR(24 DOWNTO 0) := (OTHERS => '0');

  SIGNAL update_box : STD_LOGIC;
  SIGNAL pixel_in_box : STD_LOGIC;

  SIGNAL dir_cnt : unsigned(7 DOWNTO 0) := (OTHERS => '0');

  SIGNAL box_right_bounds_reached, box_left_bounds_reached, box_upper_bounds_reached, box_lower_bounds_reached : STD_LOGIC;

  COMPONENT clk_wiz_test IS
    PORT (
      clk_out1 : OUT STD_LOGIC;
      reset : IN STD_LOGIC;
      clk_in1 : IN STD_LOGIC
    );
  END COMPONENT;

BEGIN

  clk_div_inst : clk_wiz_test
  PORT MAP
  (-- Clock in ports
    clk_in1 => CLK_I,
    reset => '0',
    -- Clock out ports
    clk_out1 => pxl_clk
  );
  --  pxl_clk <= CLK_I;
  ----------------------------------------------------
  -------         TEST PATTERN LOGIC           -------
  ----------------------------------------------------
  vga_red <= (OTHERS => '1') WHEN (active = '1' AND pixel_in_box = '1') ELSE
  (OTHERS => '0');

  vga_blue <= (OTHERS => '1') WHEN (active = '1' AND pixel_in_box = '1') ELSE
  (OTHERS => '0');

  vga_green <= (OTHERS => '1') WHEN (active = '1' AND pixel_in_box = '1') ELSE
  (OTHERS => '0');
  ------------------------------------------------------
  -------         MOVING BOX LOGIC                ------
  ------------------------------------------------------
  PROCESS (pxl_clk)
  BEGIN
    IF (rising_edge(pxl_clk)) THEN
      IF (update_box = '1') THEN -- Box wird alle 40ms aktualisiert
        IF (box_x_dir = '1') THEN
          box_x_reg <= box_x_reg + 1;
          ELSE
          box_x_reg <= box_x_reg - 1;
        END IF;
        IF (box_y_dir = '1') THEN
          box_y_reg <= box_y_reg + 1;
          ELSE
          box_y_reg <= box_y_reg - 1;
        END IF;
      END IF;
    END IF;
  END PROCESS;

  --Signale geben an, ob die Box einen Rand des Bildschirms erreicht hat
  box_right_bounds_reached <= '1' WHEN (box_x_dir = '1' AND (box_x_reg = BOX_X_MAX - 1)) ELSE
  '0';
  box_left_bounds_reached <= '1' WHEN (box_x_dir = '0' AND (box_x_reg = BOX_X_MIN + 1)) ELSE
  '0';

  box_upper_bounds_reached <= '1' WHEN (box_y_dir = '1' AND (box_y_reg = BOX_Y_MAX - 1)) ELSE
  '0';
  box_lower_bounds_reached <= '1' WHEN (box_y_dir = '0' AND (box_y_reg = BOX_Y_MIN + 1)) ELSE
  '0';

  --Logik für Richtungsbestimmung. Wenn Box an Kante ankommt wird die entsprechende Richtung invertiert
  PROCESS (pxl_clk)
  BEGIN
    IF (rising_edge(pxl_clk)) THEN
      IF (update_box = '1') THEN
        IF (box_right_bounds_reached = '1' OR box_left_bounds_reached = '1') THEN --Ist Box Rechts oder links angekommen?
          box_x_dir <= NOT(box_x_dir); --Kehre Richtung um 
          dir_cnt <= dir_cnt + 1;
        END IF;
        IF (box_upper_bounds_reached = '1' OR box_lower_bounds_reached = '1') THEN
          box_y_dir <= NOT(box_y_dir);
          dir_cnt <= dir_cnt + 1;
        END IF;
      END IF;
    END IF;
  END PROCESS;

  PROCESS (pxl_clk)
  BEGIN
    IF (rising_edge(pxl_clk)) THEN
      IF (box_cntr_reg = (BOX_CLK_DIV - 1)) THEN
        box_cntr_reg <= (OTHERS => '0');
        ELSE
        box_cntr_reg <= box_cntr_reg + 1;
      END IF;
    END IF;
  END PROCESS;

  --alle 1Mio Taktzyklen wird Box Position neu berechnet
  update_box <= '1' WHEN box_cntr_reg = (BOX_CLK_DIV - 1) ELSE
  '0';

  --Aktiv wenn aktueller Pixel Teil der bewegenden Box ist
  pixel_in_box <= '1' WHEN (((h_cntr_reg >= box_x_reg) AND (h_cntr_reg < (box_x_reg + BOX_WIDTH))) AND
  ((v_cntr_reg >= box_y_reg) AND (v_cntr_reg < (box_y_reg + BOX_WIDTH)))) ELSE
  '0';
  ------------------------------------------------------
  -------         SYNC GENERATION                 ------
  ------------------------------------------------------

  --Logik für horizontalen Zähler
  PROCESS (pxl_clk)
  BEGIN
    IF (rising_edge(pxl_clk)) THEN
      IF (h_cntr_reg = (H_MAX - 1)) THEN
        h_cntr_reg <= (OTHERS => '0');
        ELSE
        h_cntr_reg <= h_cntr_reg + 1;
      END IF;
    END IF;
  END PROCESS;

  --Logik für vertikalen Zähler
  PROCESS (pxl_clk)
  BEGIN
    IF (rising_edge(pxl_clk)) THEN
      IF ((h_cntr_reg = (H_MAX - 1)) AND (v_cntr_reg = (V_MAX - 1))) THEN --Nach der letzten Zeile wird an die erste zurückgesprungen
        v_cntr_reg <= (OTHERS => '0');
        ELSIF (h_cntr_reg = (H_MAX - 1)) THEN --Am Ende einer Zeile wird vertikaler Zähler inkrementiert 
        v_cntr_reg <= v_cntr_reg + 1;
      END IF;
    END IF;
  END PROCESS;

  --Logik für H_SYNC Signal
  PROCESS (pxl_clk)
  BEGIN
    IF (rising_edge(pxl_clk)) THEN
      IF (h_cntr_reg >= (H_FP + FRAME_WIDTH - 1)) AND (h_cntr_reg < (H_FP + FRAME_WIDTH + H_PW - 1)) THEN
        h_sync_reg <= H_POL;
        ELSE
        h_sync_reg <= NOT(H_POL);
      END IF;
    END IF;
  END PROCESS;

  --Logik für V_SYNC Signal
  PROCESS (pxl_clk)
  BEGIN
    IF (rising_edge(pxl_clk)) THEN
      IF (v_cntr_reg >= (V_FP + FRAME_HEIGHT - 1)) AND (v_cntr_reg < (V_FP + FRAME_HEIGHT + V_PW - 1)) THEN
        v_sync_reg <= V_POL;
        ELSE
        v_sync_reg <= NOT(V_POL);
      END IF;
    END IF;
  END PROCESS;

  --Aktiv wenn aktueller Pixel im Bildschirm liegt (was mit Front Porch?)
  active <= '1' WHEN ((h_cntr_reg < FRAME_WIDTH) AND (v_cntr_reg < FRAME_HEIGHT))ELSE
  '0';

  DISPL_ENA_O <= active;

  --Output Logik. Werte werden mit einem Takt Verzögerung weitergereicht(?)
  PROCESS (pxl_clk)
  BEGIN
    IF (rising_edge(pxl_clk)) THEN
      v_sync_dly_reg <= v_sync_reg;
      h_sync_dly_reg <= h_sync_reg;
      vga_red_reg <= vga_red;
      vga_green_reg <= vga_green;
      vga_blue_reg <= vga_blue;
    END IF;
  END PROCESS;

  VGA_HS_O <= h_sync_dly_reg;
  VGA_VS_O <= v_sync_dly_reg;
  VGA_R <= vga_red_reg;
  VGA_G <= vga_green_reg;
  VGA_B <= vga_blue_reg;
  dir_cnt_o <= dir_cnt;

END Behavioral;