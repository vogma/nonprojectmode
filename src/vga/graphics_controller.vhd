----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/19/2021 04:57:42 PM
-- Design Name: 
-- Module Name: graphics_controller - Behavioral
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

ENTITY graphics_controller IS
    PORT (
        clk : IN STD_LOGIC;
        vga_enable : IN STD_LOGIC;
        HSYNC_CNT_I : IN INTEGER;
        VSYNC_CNT_I : IN INTEGER;
        FRAME_TICK_I : IN STD_LOGIC;
        VGA_RED_O : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
        VGA_BLUE_O : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
        VGA_GREEN_O : OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
END graphics_controller;

ARCHITECTURE Behavioral OF graphics_controller IS
    SIGNAL count_reg, count_next : unsigned(7 DOWNTO 0) := (OTHERS => '0');
    SIGNAL count2r, count2n : unsigned(8 DOWNTO 0) := (OTHERS => '0');
BEGIN

    PROCESS (clk)
    BEGIN
        IF rising_edge(clk) THEN
            count_reg <= count_next;
            count2r <= count2n;
        END IF;
    END PROCESS;

    PROCESS (clk, FRAME_TICK_I, count_reg)
    BEGIN
        count_next <= count_reg;
        IF rising_edge(clk) THEN
            IF FRAME_TICK_I = '1' THEN
                count_next <= count_reg + 1;
            END IF;
        END IF;
    END PROCESS;

    PROCESS (clk, count_reg, count2r)
    BEGIN
        count2n <= count2r;
        IF rising_edge(clk) THEN
            IF (count_reg = "00000001") THEN
                count2n <= count2r + 1;
            END IF;
        END IF;
    END PROCESS;
    
    VGA_RED_O <= (OTHERS => '1') WHEN
        vga_enable = '1' AND
        HSYNC_CNT_I < count2r + 10 AND
        HSYNC_CNT_I > count2r AND
        VSYNC_CNT_I < count2r + 10 AND
        VSYNC_CNT_I > count2r ELSE
        (OTHERS => '0');

    VGA_GREEN_O <= (OTHERS => '1') WHEN
        vga_enable = '1' AND
        HSYNC_CNT_I < count2r + 10 AND
        HSYNC_CNT_I > count2r AND
        VSYNC_CNT_I < count2r + 10 AND
        VSYNC_CNT_I > count2r ELSE
        (OTHERS => '0');

    VGA_BLUE_O <= (OTHERS => '1') WHEN
        vga_enable = '1' AND
        HSYNC_CNT_I < count2r + 10 AND
        HSYNC_CNT_I > count2r AND
        VSYNC_CNT_I < count2r + 10 AND
        VSYNC_CNT_I > count2r ELSE
        (OTHERS => '0');
END Behavioral;