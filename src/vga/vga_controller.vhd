----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/30/2021 05:22:41 PM
-- Design Name: 
-- Module Name: top - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
USE IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

ENTITY vga_controller IS
    PORT (
        pxl_clk : IN STD_LOGIC;
        HSYNC_CNT_O : OUT INTEGER;
        VSYNC_CNT_O : OUT INTEGER;
        HSYNC_O : OUT STD_LOGIC;
        VSYNC_O : OUT STD_LOGIC;
        VGA_RED_O : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
        VGA_BLUE_O : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
        VGA_GREEN_O : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
        DISPL_ENA_O : OUT STD_LOGIC;
        FRAME_TICK_O : out std_logic
    );
END vga_controller;

ARCHITECTURE Behavioral OF vga_controller IS

    --640x480 Constants
    CONSTANT H_FRONT_PORCH : INTEGER := 16;
    CONSTANT H_SYNC_PULSE : INTEGER := 96;
    CONSTANT H_BACK_PORCH : INTEGER := 48;
    CONSTANT H_DISPLAY : INTEGER := 650;
    CONSTANT V_FRONT_PORCH : INTEGER := 10;
    CONSTANT V_SYNC_PULSE : INTEGER := 2;
    CONSTANT V_BACK_PORCH : INTEGER := 33;
    CONSTANT V_DISPLAY : INTEGER := 480;

    CONSTANT H_MAX : INTEGER := (H_FRONT_PORCH + H_SYNC_PULSE + H_BACK_PORCH + H_DISPLAY);
    CONSTANT V_MAX : INTEGER := (V_FRONT_PORCH + V_SYNC_PULSE + V_BACK_PORCH + V_DISPLAY);

    SIGNAL hsync_cnt : INTEGER RANGE 0 TO H_MAX := 0;
    SIGNAL vsync_cnt : INTEGER RANGE 0 TO V_MAX := 0;
    SIGNAL hsync_sig, vsync_sig : STD_LOGIC := '1';
    SIGNAL displ_ena, frame_tick : STD_LOGIC := '0';

BEGIN
    --HSYNC Signal generation
    PROCESS (pxl_clk)
    BEGIN
        IF rising_edge(pxl_clk) THEN
            IF hsync_cnt < H_MAX - 1 THEN
                hsync_cnt <= hsync_cnt + 1;
            ELSE
                hsync_cnt <= 0;
            END IF;
        END IF;
    END PROCESS;

    hsync_sig <= '0' WHEN hsync_cnt >= (H_DISPLAY + H_FRONT_PORCH) AND hsync_cnt <= (H_DISPLAY + H_FRONT_PORCH + H_SYNC_PULSE) ELSE
        '1';

    --VSYNC Signal generation
    PROCESS (pxl_clk, hsync_cnt, vsync_cnt)
    BEGIN
        IF rising_edge(pxl_clk) THEN

            IF hsync_cnt = H_MAX - 1 THEN
                IF vsync_cnt = V_MAX - 1 THEN
                    frame_tick <= '1';
                    vsync_cnt <= 0;
                ELSE
                    vsync_cnt <= vsync_cnt + 1;
                    frame_tick <= '0';
                END IF;
            END IF;
        END IF;
    END PROCESS;

    vsync_sig <= '0' WHEN vsync_cnt >= (V_DISPLAY + V_FRONT_PORCH) AND vsync_cnt <= (V_DISPLAY + V_FRONT_PORCH + V_SYNC_PULSE) ELSE
        '1';

    displ_ena <= '1' WHEN hsync_cnt < H_DISPLAY AND vsync_cnt < V_DISPLAY ELSE
        '0';
    HSYNC_O <= hsync_sig;
    VSYNC_O <= vsync_sig;
    HSYNC_CNT_O <= hsync_cnt;
    VSYNC_CNT_O <= vsync_cnt;
    DISPL_ENA_O <= displ_ena;
    FRAME_TICK_O <= frame_tick;

    VGA_RED_O <= STD_LOGIC_VECTOR(to_unsigned(hsync_cnt, 4)) WHEN displ_ena = '1' ELSE
        (OTHERS => '0');
    VGA_GREEN_O <= STD_LOGIC_VECTOR(to_unsigned(hsync_cnt, 4)) WHEN displ_ena = '1' ELSE
        (OTHERS => '0');
    VGA_BLUE_O <= STD_LOGIC_VECTOR(to_unsigned(hsync_cnt, 4)) WHEN displ_ena = '1' ELSE
        (OTHERS => '0');
END Behavioral;