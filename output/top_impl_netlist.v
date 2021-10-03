// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Sun Oct  3 14:31:04 2021
// Host        : marco running 64-bit Ubuntu Impish Indri (development branch)
// Command     : write_verilog -force ./output/top_impl_netlist.v
// Design      : top
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "clk_wiz_test,clk_wiz_v6_0_6_0_0,{component_name=clk_wiz_test,use_phase_alignment=true,use_min_o_jitter=false,use_max_i_jitter=false,use_dyn_phase_shift=false,use_inclk_switchover=false,use_dyn_reconfig=false,enable_axi=0,feedback_source=FDBK_AUTO,PRIMITIVE=MMCM,num_out_clk=1,clkin1_period=10.000,clkin2_period=10.000,use_power_down=false,use_reset=true,use_locked=true,use_inclk_stopped=false,feedback_type=SINGLE,CLOCK_MGR_TYPE=NA,manual_override=false}" *) 
module clk_wiz_test
   (clk_out1,
    reset,
    locked,
    clk_in1);
  output clk_out1;
  input reset;
  output locked;
  input clk_in1;

  wire clk_in1;
  wire clk_out1;
  wire reset;

  clk_wiz_testclk_wiz_test_clk_wiz inst
       (.clk_in1(clk_in1),
        .clk_out1(clk_out1),
        .reset(reset));
endmodule

(* ORIG_REF_NAME = "clk_wiz_test_clk_wiz" *) 
module clk_wiz_testclk_wiz_test_clk_wiz
   (clk_out1,
    reset,
    locked,
    clk_in1);
  output clk_out1;
  input reset;
  output locked;
  input clk_in1;

  wire \<const0> ;
  wire \<const1> ;
  wire clk_in1;
  wire clk_in1_clk_wiz_test;
  wire clk_out1;
  wire clk_out1_clk_wiz_test;
  wire clkfbout_buf_clk_wiz_test;
  wire clkfbout_clk_wiz_test;
  wire reset;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkf_buf
       (.I(clkfbout_clk_wiz_test),
        .O(clkfbout_buf_clk_wiz_test));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUF #(
    .IOSTANDARD("DEFAULT")) 
    clkin1_ibufg
       (.I(clk_in1),
        .O(clk_in1_clk_wiz_test));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFG clkout1_buf
       (.I(clk_out1_clk_wiz_test),
        .O(clk_out1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  MMCME2_ADV #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKFBOUT_MULT_F(49.875000),
    .CLKFBOUT_PHASE(0.000000),
    .CLKFBOUT_USE_FINE_PS("FALSE"),
    .CLKIN1_PERIOD(10.000000),
    .CLKIN2_PERIOD(0.000000),
    .CLKOUT0_DIVIDE_F(33.250000),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(0.000000),
    .CLKOUT0_USE_FINE_PS("FALSE"),
    .CLKOUT1_DIVIDE(1),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(0.000000),
    .CLKOUT1_USE_FINE_PS("FALSE"),
    .CLKOUT2_DIVIDE(1),
    .CLKOUT2_DUTY_CYCLE(0.500000),
    .CLKOUT2_PHASE(0.000000),
    .CLKOUT2_USE_FINE_PS("FALSE"),
    .CLKOUT3_DIVIDE(1),
    .CLKOUT3_DUTY_CYCLE(0.500000),
    .CLKOUT3_PHASE(0.000000),
    .CLKOUT3_USE_FINE_PS("FALSE"),
    .CLKOUT4_CASCADE("FALSE"),
    .CLKOUT4_DIVIDE(1),
    .CLKOUT4_DUTY_CYCLE(0.500000),
    .CLKOUT4_PHASE(0.000000),
    .CLKOUT4_USE_FINE_PS("FALSE"),
    .CLKOUT5_DIVIDE(1),
    .CLKOUT5_DUTY_CYCLE(0.500000),
    .CLKOUT5_PHASE(0.000000),
    .CLKOUT5_USE_FINE_PS("FALSE"),
    .CLKOUT6_DIVIDE(1),
    .CLKOUT6_DUTY_CYCLE(0.500000),
    .CLKOUT6_PHASE(0.000000),
    .CLKOUT6_USE_FINE_PS("FALSE"),
    .COMPENSATION("ZHOLD"),
    .DIVCLK_DIVIDE(5),
    .IS_CLKINSEL_INVERTED(1'b0),
    .IS_PSEN_INVERTED(1'b0),
    .IS_PSINCDEC_INVERTED(1'b0),
    .IS_PWRDWN_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .REF_JITTER1(0.010000),
    .REF_JITTER2(0.010000),
    .SS_EN("FALSE"),
    .SS_MODE("CENTER_HIGH"),
    .SS_MOD_PERIOD(10000),
    .STARTUP_WAIT("FALSE")) 
    mmcm_adv_inst
       (.CLKFBIN(clkfbout_buf_clk_wiz_test),
        .CLKFBOUT(clkfbout_clk_wiz_test),
        .CLKIN1(clk_in1_clk_wiz_test),
        .CLKIN2(\<const0> ),
        .CLKINSEL(\<const1> ),
        .CLKOUT0(clk_out1_clk_wiz_test),
        .DADDR({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .DCLK(\<const0> ),
        .DEN(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .DWE(\<const0> ),
        .PSCLK(\<const0> ),
        .PSEN(\<const0> ),
        .PSINCDEC(\<const0> ),
        .PWRDWN(\<const0> ),
        .RST(reset));
endmodule

(* ECO_CHECKSUM = "4c1f66c" *) (* POWER_OPT_BRAM_CDC = "0" *) (* POWER_OPT_BRAM_SR_ADDR = "0" *) 
(* POWER_OPT_LOOPED_NET_PERCENTAGE = "0" *) 
(* STRUCTURAL_NETLIST = "yes" *)
module top
   (clk,
    vga_red,
    vga_green,
    vga_blue,
    vga_hsync_o,
    vga_vsync_o);
  input clk;
  output [3:0]vga_red;
  output [3:0]vga_green;
  output [3:0]vga_blue;
  output vga_hsync_o;
  output vga_vsync_o;

  wire \<const0> ;
  (* IBUF_LOW_PWR *) wire clk;
  wire pxl_clk;
  wire [3:0]vga_blue;
  wire [3:0]vga_blue_OBUF;
  wire [3:0]vga_green;
  wire [3:0]vga_green_OBUF;
  wire vga_hsync_o;
  wire vga_hsync_o_OBUF;
  wire [3:0]vga_red;
  wire [3:0]vga_red_OBUF;
  wire vga_vsync_o;
  wire vga_vsync_o_OBUF;

  GND GND
       (.G(\<const0> ));
  (* IMPORTED_FROM = "/home/marco/entwicklung/projekte/ArtyA7-Projects/nonprojectmode/src/ip/clk_wiz_test/clk_wiz_test.dcp" *) 
  (* IMPORTED_TYPE = "CHECKPOINT" *) 
  (* IS_IMPORTED *) 
  clk_wiz_test clk_div_inst
       (.clk_in1(clk),
        .clk_out1(pxl_clk),
        .reset(\<const0> ));
  OBUF \vga_blue_OBUF[0]_inst 
       (.I(vga_blue_OBUF[0]),
        .O(vga_blue[0]));
  OBUF \vga_blue_OBUF[1]_inst 
       (.I(vga_blue_OBUF[1]),
        .O(vga_blue[1]));
  OBUF \vga_blue_OBUF[2]_inst 
       (.I(vga_blue_OBUF[2]),
        .O(vga_blue[2]));
  OBUF \vga_blue_OBUF[3]_inst 
       (.I(vga_blue_OBUF[3]),
        .O(vga_blue[3]));
  OBUF \vga_green_OBUF[0]_inst 
       (.I(vga_green_OBUF[0]),
        .O(vga_green[0]));
  OBUF \vga_green_OBUF[1]_inst 
       (.I(vga_green_OBUF[1]),
        .O(vga_green[1]));
  OBUF \vga_green_OBUF[2]_inst 
       (.I(vga_green_OBUF[2]),
        .O(vga_green[2]));
  OBUF \vga_green_OBUF[3]_inst 
       (.I(vga_green_OBUF[3]),
        .O(vga_green[3]));
  OBUF vga_hsync_o_OBUF_inst
       (.I(vga_hsync_o_OBUF),
        .O(vga_hsync_o));
  OBUF \vga_red_OBUF[0]_inst 
       (.I(vga_red_OBUF[0]),
        .O(vga_red[0]));
  OBUF \vga_red_OBUF[1]_inst 
       (.I(vga_red_OBUF[1]),
        .O(vga_red[1]));
  OBUF \vga_red_OBUF[2]_inst 
       (.I(vga_red_OBUF[2]),
        .O(vga_red[2]));
  OBUF \vga_red_OBUF[3]_inst 
       (.I(vga_red_OBUF[3]),
        .O(vga_red[3]));
  vga_template vga_templ
       (.VGA_HS_O(vga_hsync_o_OBUF),
        .VGA_VS_O(vga_vsync_o_OBUF),
        .clk_out1(pxl_clk),
        .vga_blue_OBUF(vga_blue_OBUF),
        .vga_green_OBUF(vga_green_OBUF),
        .vga_red_OBUF(vga_red_OBUF));
  OBUF vga_vsync_o_OBUF_inst
       (.I(vga_vsync_o_OBUF),
        .O(vga_vsync_o));
endmodule

module vga_template
   (VGA_HS_O,
    VGA_VS_O,
    vga_red_OBUF,
    vga_blue_OBUF,
    vga_green_OBUF,
    clk_out1);
  output VGA_HS_O;
  output VGA_VS_O;
  output [3:0]vga_red_OBUF;
  output [3:0]vga_blue_OBUF;
  output [3:0]vga_green_OBUF;
  input clk_out1;

  wire \<const0> ;
  wire \<const1> ;
  wire VGA_HS_O;
  wire VGA_VS_O;
  wire __23_carry__0_i_1_n_0;
  wire __23_carry__0_i_2_n_0;
  wire __23_carry__0_i_3_n_0;
  wire __23_carry__0_i_4_n_0;
  wire __23_carry__0_i_5_n_0;
  wire __23_carry__0_i_5_n_4;
  wire __23_carry__0_i_5_n_5;
  wire __23_carry__0_i_5_n_6;
  wire __23_carry__0_i_5_n_7;
  wire __23_carry__0_i_6_n_0;
  wire __23_carry__0_n_0;
  wire __23_carry__1_i_1_n_0;
  wire __23_carry__1_i_2_n_0;
  wire __23_carry__1_i_3_n_0;
  wire __23_carry__1_i_4_n_0;
  wire __23_carry__1_i_5_n_4;
  wire __23_carry__1_i_5_n_5;
  wire __23_carry__1_i_5_n_6;
  wire __23_carry__1_i_5_n_7;
  wire __23_carry__1_n_0;
  wire __23_carry_i_1_n_0;
  wire __23_carry_i_2_n_0;
  wire __23_carry_i_3_n_0;
  wire __23_carry_i_4_n_0;
  wire __23_carry_n_0;
  wire _carry__0_i_1_n_0;
  wire _carry__0_i_2_n_0;
  wire _carry__0_i_3_n_0;
  wire _carry__0_i_4_n_0;
  wire _carry__0_i_5_n_0;
  wire _carry__0_i_5_n_4;
  wire _carry__0_i_5_n_5;
  wire _carry__0_i_5_n_6;
  wire _carry__0_i_5_n_7;
  wire _carry__0_i_6_n_0;
  wire _carry__0_n_0;
  wire _carry__1_i_1_n_0;
  wire _carry__1_i_2_n_0;
  wire _carry__1_i_3_n_0;
  wire _carry__1_i_4_n_0;
  wire _carry__1_i_5_n_4;
  wire _carry__1_i_5_n_5;
  wire _carry__1_i_5_n_6;
  wire _carry__1_i_5_n_7;
  wire _carry__1_n_0;
  wire _carry_i_1_n_0;
  wire _carry_i_2_n_0;
  wire _carry_i_3_n_0;
  wire _carry_i_4_n_0;
  wire _carry_n_0;
  wire \box_cntr_reg[0]_i_3_n_0 ;
  wire \box_cntr_reg[0]_i_4_n_0 ;
  wire \box_cntr_reg[0]_i_5_n_0 ;
  wire \box_cntr_reg[0]_i_6_n_0 ;
  wire \box_cntr_reg[0]_i_7_n_0 ;
  wire \box_cntr_reg[0]_i_8_n_0 ;
  wire [24:0]box_cntr_reg_reg;
  wire \box_cntr_reg_reg[0]_i_2_n_0 ;
  wire \box_cntr_reg_reg[0]_i_2_n_4 ;
  wire \box_cntr_reg_reg[0]_i_2_n_5 ;
  wire \box_cntr_reg_reg[0]_i_2_n_6 ;
  wire \box_cntr_reg_reg[0]_i_2_n_7 ;
  wire \box_cntr_reg_reg[10]_CE_cooolgate_en_sig_1 ;
  wire \box_cntr_reg_reg[12]_i_1_n_0 ;
  wire \box_cntr_reg_reg[12]_i_1_n_4 ;
  wire \box_cntr_reg_reg[12]_i_1_n_5 ;
  wire \box_cntr_reg_reg[12]_i_1_n_6 ;
  wire \box_cntr_reg_reg[12]_i_1_n_7 ;
  wire \box_cntr_reg_reg[16]_i_1_n_0 ;
  wire \box_cntr_reg_reg[16]_i_1_n_4 ;
  wire \box_cntr_reg_reg[16]_i_1_n_5 ;
  wire \box_cntr_reg_reg[16]_i_1_n_6 ;
  wire \box_cntr_reg_reg[16]_i_1_n_7 ;
  wire \box_cntr_reg_reg[20]_i_1_n_0 ;
  wire \box_cntr_reg_reg[20]_i_1_n_4 ;
  wire \box_cntr_reg_reg[20]_i_1_n_5 ;
  wire \box_cntr_reg_reg[20]_i_1_n_6 ;
  wire \box_cntr_reg_reg[20]_i_1_n_7 ;
  wire \box_cntr_reg_reg[24]_i_1_n_7 ;
  wire \box_cntr_reg_reg[4]_i_1_n_0 ;
  wire \box_cntr_reg_reg[4]_i_1_n_4 ;
  wire \box_cntr_reg_reg[4]_i_1_n_5 ;
  wire \box_cntr_reg_reg[4]_i_1_n_6 ;
  wire \box_cntr_reg_reg[4]_i_1_n_7 ;
  wire \box_cntr_reg_reg[8]_i_1_n_0 ;
  wire \box_cntr_reg_reg[8]_i_1_n_4 ;
  wire \box_cntr_reg_reg[8]_i_1_n_5 ;
  wire \box_cntr_reg_reg[8]_i_1_n_6 ;
  wire \box_cntr_reg_reg[8]_i_1_n_7 ;
  wire box_x_dir_i_1_n_0;
  wire box_x_dir_i_4_n_0;
  wire box_x_dir_i_5_n_0;
  wire box_x_dir_i_6_n_0;
  wire box_x_dir_i_7_n_0;
  wire box_x_dir_reg_n_0;
  wire \box_x_reg[0]_i_2_n_0 ;
  wire \box_x_reg[0]_i_3_n_0 ;
  wire \box_x_reg[0]_i_4_n_0 ;
  wire \box_x_reg[4]_i_2_n_0 ;
  wire \box_x_reg[4]_i_3_n_0 ;
  wire \box_x_reg[4]_i_4_n_0 ;
  wire \box_x_reg[4]_i_5_n_0 ;
  wire \box_x_reg[8]_i_2_n_0 ;
  wire \box_x_reg[8]_i_3_n_0 ;
  wire \box_x_reg[8]_i_4_n_0 ;
  wire \box_x_reg[8]_i_5_n_0 ;
  wire [11:0]box_x_reg_reg;
  wire \box_x_reg_reg[0]_i_1_n_0 ;
  wire \box_x_reg_reg[0]_i_1_n_4 ;
  wire \box_x_reg_reg[0]_i_1_n_5 ;
  wire \box_x_reg_reg[0]_i_1_n_6 ;
  wire \box_x_reg_reg[0]_i_1_n_7 ;
  wire \box_x_reg_reg[4]_i_1_n_0 ;
  wire \box_x_reg_reg[4]_i_1_n_4 ;
  wire \box_x_reg_reg[4]_i_1_n_5 ;
  wire \box_x_reg_reg[4]_i_1_n_6 ;
  wire \box_x_reg_reg[4]_i_1_n_7 ;
  wire \box_x_reg_reg[8]_i_1_n_4 ;
  wire \box_x_reg_reg[8]_i_1_n_5 ;
  wire \box_x_reg_reg[8]_i_1_n_6 ;
  wire \box_x_reg_reg[8]_i_1_n_7 ;
  wire box_y_dir_i_1_n_0;
  wire box_y_dir_i_4_n_0;
  wire box_y_dir_i_5_n_0;
  wire box_y_dir_i_6_n_0;
  wire box_y_dir_i_7_n_0;
  wire box_y_dir_reg_n_0;
  wire \box_y_reg[0]_i_2_n_0 ;
  wire \box_y_reg[0]_i_3_n_0 ;
  wire \box_y_reg[0]_i_4_n_0 ;
  wire \box_y_reg[4]_i_2_n_0 ;
  wire \box_y_reg[4]_i_3_n_0 ;
  wire \box_y_reg[4]_i_4_n_0 ;
  wire \box_y_reg[4]_i_5_n_0 ;
  wire \box_y_reg[8]_i_2_n_0 ;
  wire \box_y_reg[8]_i_3_n_0 ;
  wire \box_y_reg[8]_i_4_n_0 ;
  wire \box_y_reg[8]_i_5_n_0 ;
  wire [11:0]box_y_reg_reg;
  wire \box_y_reg_reg[0]_i_1_n_0 ;
  wire \box_y_reg_reg[0]_i_1_n_4 ;
  wire \box_y_reg_reg[0]_i_1_n_5 ;
  wire \box_y_reg_reg[0]_i_1_n_6 ;
  wire \box_y_reg_reg[0]_i_1_n_7 ;
  wire \box_y_reg_reg[4]_i_1_n_0 ;
  wire \box_y_reg_reg[4]_i_1_n_4 ;
  wire \box_y_reg_reg[4]_i_1_n_5 ;
  wire \box_y_reg_reg[4]_i_1_n_6 ;
  wire \box_y_reg_reg[4]_i_1_n_7 ;
  wire \box_y_reg_reg[8]_i_1_n_4 ;
  wire \box_y_reg_reg[8]_i_1_n_5 ;
  wire \box_y_reg_reg[8]_i_1_n_6 ;
  wire \box_y_reg_reg[8]_i_1_n_7 ;
  wire clk_out1;
  wire eqOp;
  wire eqOp14_in;
  wire eqOp15_in;
  wire eqOp16_in;
  wire eqOp19_in;
  wire eqOp20_in;
  wire geqOp;
  wire geqOp12_in;
  wire geqOp27_in;
  wire geqOp28_in;
  wire geqOp__11_carry__0_i_1_n_0;
  wire geqOp__11_carry__0_i_2_n_0;
  wire geqOp__11_carry__0_i_3_n_0;
  wire geqOp__11_carry__0_i_4_n_0;
  wire geqOp__11_carry_i_1_n_0;
  wire geqOp__11_carry_i_2_n_0;
  wire geqOp__11_carry_i_3_n_0;
  wire geqOp__11_carry_i_4_n_0;
  wire geqOp__11_carry_i_5_n_0;
  wire geqOp__11_carry_i_6_n_0;
  wire geqOp__11_carry_i_7_n_0;
  wire geqOp__11_carry_i_8_n_0;
  wire geqOp__11_carry_n_0;
  wire geqOp__17_carry__0_i_1_n_0;
  wire geqOp__17_carry__0_i_2_n_0;
  wire geqOp__17_carry__0_i_3_n_0;
  wire geqOp__17_carry__0_i_4_n_0;
  wire geqOp__17_carry_i_1_n_0;
  wire geqOp__17_carry_i_2_n_0;
  wire geqOp__17_carry_i_3_n_0;
  wire geqOp__17_carry_i_4_n_0;
  wire geqOp__17_carry_i_5_n_0;
  wire geqOp__17_carry_i_6_n_0;
  wire geqOp__17_carry_i_7_n_0;
  wire geqOp__17_carry_i_8_n_0;
  wire geqOp__17_carry_n_0;
  wire geqOp__5_carry__0_i_1_n_0;
  wire geqOp__5_carry__0_i_2_n_0;
  wire geqOp__5_carry__0_i_3_n_0;
  wire geqOp__5_carry_i_1_n_0;
  wire geqOp__5_carry_i_2_n_0;
  wire geqOp__5_carry_i_3_n_0;
  wire geqOp__5_carry_i_4_n_0;
  wire geqOp__5_carry_i_5_n_0;
  wire geqOp__5_carry_i_6_n_0;
  wire geqOp__5_carry_n_0;
  wire geqOp_carry__0_i_1_n_0;
  wire geqOp_carry__0_i_2_n_0;
  wire geqOp_carry__0_i_3_n_0;
  wire geqOp_carry__0_i_4_n_0;
  wire geqOp_carry_i_1_n_0;
  wire geqOp_carry_i_2_n_0;
  wire geqOp_carry_i_3_n_0;
  wire geqOp_carry_i_4_n_0;
  wire geqOp_carry_i_5_n_0;
  wire geqOp_carry_i_6_n_0;
  wire geqOp_carry_n_0;
  wire \h_cntr_reg[0]_i_3_n_0 ;
  wire \h_cntr_reg[0]_i_4_n_0 ;
  wire \h_cntr_reg[0]_i_5_n_0 ;
  wire \h_cntr_reg_reg[0]_i_2_n_0 ;
  wire \h_cntr_reg_reg[0]_i_2_n_4 ;
  wire \h_cntr_reg_reg[0]_i_2_n_5 ;
  wire \h_cntr_reg_reg[0]_i_2_n_6 ;
  wire \h_cntr_reg_reg[0]_i_2_n_7 ;
  wire \h_cntr_reg_reg[4]_i_1_n_0 ;
  wire \h_cntr_reg_reg[4]_i_1_n_4 ;
  wire \h_cntr_reg_reg[4]_i_1_n_5 ;
  wire \h_cntr_reg_reg[4]_i_1_n_6 ;
  wire \h_cntr_reg_reg[4]_i_1_n_7 ;
  wire \h_cntr_reg_reg[8]_i_1_n_4 ;
  wire \h_cntr_reg_reg[8]_i_1_n_5 ;
  wire \h_cntr_reg_reg[8]_i_1_n_6 ;
  wire \h_cntr_reg_reg[8]_i_1_n_7 ;
  wire \h_cntr_reg_reg_n_0_[0] ;
  wire \h_cntr_reg_reg_n_0_[10] ;
  wire \h_cntr_reg_reg_n_0_[11] ;
  wire \h_cntr_reg_reg_n_0_[1] ;
  wire \h_cntr_reg_reg_n_0_[6] ;
  wire \h_cntr_reg_reg_n_0_[9] ;
  wire h_sync_reg;
  wire h_sync_reg_i_1_n_0;
  wire ltOp;
  wire ltOp10_in;
  wire ltOp11_in;
  wire ltOp23_in;
  wire ltOp24_in;
  wire ltOp6_in;
  wire ltOp__5_carry__0_i_1_n_0;
  wire ltOp__5_carry__0_i_2_n_0;
  wire ltOp__5_carry__0_i_3_n_0;
  wire ltOp__5_carry_i_1_n_0;
  wire ltOp__5_carry_i_2_n_0;
  wire ltOp__5_carry_i_3_n_0;
  wire ltOp__5_carry_i_4_n_0;
  wire ltOp__5_carry_i_5_n_0;
  wire ltOp__5_carry_i_6_n_0;
  wire ltOp__5_carry_i_7_n_0;
  wire ltOp__5_carry_i_8_n_0;
  wire ltOp__5_carry_n_0;
  wire ltOp_carry__0_i_1_n_0;
  wire ltOp_carry__0_i_2_n_0;
  wire ltOp_carry__0_i_3_n_0;
  wire ltOp_carry_i_1_n_0;
  wire ltOp_carry_i_2_n_0;
  wire ltOp_carry_i_3_n_0;
  wire ltOp_carry_i_4_n_0;
  wire ltOp_carry_i_5_n_0;
  wire ltOp_carry_i_6_n_0;
  wire ltOp_carry_i_7_n_0;
  wire ltOp_carry_i_8_n_0;
  wire ltOp_carry_n_0;
  wire [3:0]p_0_in;
  wire p_0_in3_in;
  wire p_0_in7_in;
  wire [1:1]p_0_in_0;
  wire v_cntr_reg0;
  wire \v_cntr_reg[0]_i_3_n_0 ;
  wire \v_cntr_reg[0]_i_4_n_0 ;
  wire \v_cntr_reg[0]_i_5_n_0 ;
  wire [11:0]v_cntr_reg_reg;
  wire \v_cntr_reg_reg[0]_i_2_n_0 ;
  wire \v_cntr_reg_reg[0]_i_2_n_4 ;
  wire \v_cntr_reg_reg[0]_i_2_n_5 ;
  wire \v_cntr_reg_reg[0]_i_2_n_6 ;
  wire \v_cntr_reg_reg[0]_i_2_n_7 ;
  wire \v_cntr_reg_reg[4]_i_1_n_0 ;
  wire \v_cntr_reg_reg[4]_i_1_n_4 ;
  wire \v_cntr_reg_reg[4]_i_1_n_5 ;
  wire \v_cntr_reg_reg[4]_i_1_n_6 ;
  wire \v_cntr_reg_reg[4]_i_1_n_7 ;
  wire \v_cntr_reg_reg[8]_i_1_n_4 ;
  wire \v_cntr_reg_reg[8]_i_1_n_5 ;
  wire \v_cntr_reg_reg[8]_i_1_n_6 ;
  wire \v_cntr_reg_reg[8]_i_1_n_7 ;
  wire v_sync_reg;
  wire v_sync_reg_i_1_n_0;
  wire vga_blue1__1;
  wire [3:0]vga_blue_OBUF;
  wire \vga_blue_reg[0]_i_1_n_0 ;
  wire \vga_blue_reg[1]_i_1_n_0 ;
  wire \vga_blue_reg[2]_i_1_n_0 ;
  wire \vga_blue_reg[3]_i_1_n_0 ;
  wire \vga_blue_reg[3]_i_2_n_0 ;
  wire vga_green1__1;
  wire [3:0]vga_green_OBUF;
  wire \vga_green_reg[0]_i_1_n_0 ;
  wire \vga_green_reg[1]_i_1_n_0 ;
  wire \vga_green_reg[2]_i_1_n_0 ;
  wire \vga_green_reg[3]_i_1_n_0 ;
  wire \vga_green_reg[3]_i_2_n_0 ;
  wire vga_red0__5;
  wire vga_red1__1;
  wire [3:0]vga_red_OBUF;
  wire \vga_red_reg[0]_i_1_n_0 ;
  wire \vga_red_reg[1]_i_1_n_0 ;
  wire \vga_red_reg[2]_i_1_n_0 ;
  wire \vga_red_reg[3]_i_10_n_0 ;
  wire \vga_red_reg[3]_i_11_n_0 ;
  wire \vga_red_reg[3]_i_12_n_0 ;
  wire \vga_red_reg[3]_i_13_n_0 ;
  wire \vga_red_reg[3]_i_14_n_0 ;
  wire \vga_red_reg[3]_i_15_n_0 ;
  wire \vga_red_reg[3]_i_16_n_0 ;
  wire \vga_red_reg[3]_i_17_n_0 ;
  wire \vga_red_reg[3]_i_18_n_0 ;
  wire \vga_red_reg[3]_i_19_n_0 ;
  wire \vga_red_reg[3]_i_1_n_0 ;
  wire \vga_red_reg[3]_i_20_n_0 ;
  wire \vga_red_reg[3]_i_21_n_0 ;
  wire \vga_red_reg[3]_i_22_n_0 ;
  wire \vga_red_reg[3]_i_23_n_0 ;
  wire \vga_red_reg[3]_i_24_n_0 ;
  wire \vga_red_reg[3]_i_25_n_0 ;
  wire \vga_red_reg[3]_i_26_n_0 ;
  wire \vga_red_reg[3]_i_27_n_0 ;
  wire \vga_red_reg[3]_i_2_n_0 ;
  wire \vga_red_reg[3]_i_7_n_0 ;
  wire [3:0]NLW___23_carry_CO_UNCONNECTED;
  wire [3:0]NLW___23_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW___23_carry__0_i_5_CO_UNCONNECTED;
  wire [3:0]NLW___23_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW__carry_CO_UNCONNECTED;
  wire [3:0]NLW__carry__0_CO_UNCONNECTED;
  wire [3:0]NLW__carry__0_i_5_CO_UNCONNECTED;
  wire [3:0]NLW__carry__1_CO_UNCONNECTED;
  wire [3:0]\NLW_box_cntr_reg_reg[0]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_box_cntr_reg_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_box_cntr_reg_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_box_cntr_reg_reg[20]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_box_cntr_reg_reg[4]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_box_cntr_reg_reg[8]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_box_x_reg_reg[0]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_box_x_reg_reg[4]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_box_y_reg_reg[0]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_box_y_reg_reg[4]_i_1_CO_UNCONNECTED ;
  wire [3:0]NLW_geqOp__11_carry_CO_UNCONNECTED;
  wire [3:0]NLW_geqOp__11_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_geqOp__17_carry_CO_UNCONNECTED;
  wire [3:0]NLW_geqOp__17_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_geqOp__5_carry_CO_UNCONNECTED;
  wire [3:0]NLW_geqOp__5_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_geqOp_carry_CO_UNCONNECTED;
  wire [3:0]NLW_geqOp_carry__0_CO_UNCONNECTED;
  wire [3:0]\NLW_h_cntr_reg_reg[0]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_h_cntr_reg_reg[4]_i_1_CO_UNCONNECTED ;
  wire [3:0]NLW_ltOp__5_carry_CO_UNCONNECTED;
  wire [3:0]NLW_ltOp__5_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_ltOp_carry_CO_UNCONNECTED;
  wire [3:0]NLW_ltOp_carry__0_CO_UNCONNECTED;
  wire [3:0]\NLW_v_cntr_reg_reg[0]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_v_cntr_reg_reg[4]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_vga_red_reg_reg[3]_i_4_CO_UNCONNECTED ;
  wire [3:0]\NLW_vga_red_reg_reg[3]_i_5_CO_UNCONNECTED ;
  wire [3:0]\NLW_vga_red_reg_reg[3]_i_6_CO_UNCONNECTED ;
  wire [3:0]\NLW_vga_red_reg_reg[3]_i_9_CO_UNCONNECTED ;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 __23_carry
       (.CI(\<const0> ),
        .CO({__23_carry_n_0,NLW___23_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(\<const1> ),
        .DI({p_0_in_0,p_0_in[0],\h_cntr_reg_reg_n_0_[1] ,\h_cntr_reg_reg_n_0_[0] }),
        .S({__23_carry_i_1_n_0,__23_carry_i_2_n_0,__23_carry_i_3_n_0,__23_carry_i_4_n_0}));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 __23_carry__0
       (.CI(__23_carry_n_0),
        .CO({__23_carry__0_n_0,NLW___23_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(\<const0> ),
        .DI({p_0_in3_in,\h_cntr_reg_reg_n_0_[6] ,p_0_in[3:2]}),
        .S({__23_carry__0_i_1_n_0,__23_carry__0_i_2_n_0,__23_carry__0_i_3_n_0,__23_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    __23_carry__0_i_1
       (.I0(p_0_in3_in),
        .I1(__23_carry__0_i_5_n_4),
        .O(__23_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    __23_carry__0_i_2
       (.I0(\h_cntr_reg_reg_n_0_[6] ),
        .I1(__23_carry__0_i_5_n_5),
        .O(__23_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    __23_carry__0_i_3
       (.I0(p_0_in[3]),
        .I1(__23_carry__0_i_5_n_6),
        .O(__23_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    __23_carry__0_i_4
       (.I0(p_0_in[2]),
        .I1(__23_carry__0_i_5_n_7),
        .O(__23_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "PROPCONST SWEEP" *) 
  CARRY4 __23_carry__0_i_5
       (.CI(\<const0> ),
        .CO({__23_carry__0_i_5_n_0,NLW___23_carry__0_i_5_CO_UNCONNECTED[2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,box_x_reg_reg[5],\<const0> }),
        .O({__23_carry__0_i_5_n_4,__23_carry__0_i_5_n_5,__23_carry__0_i_5_n_6,__23_carry__0_i_5_n_7}),
        .S({box_x_reg_reg[7:6],__23_carry__0_i_6_n_0,box_x_reg_reg[4]}));
  LUT1 #(
    .INIT(2'h1)) 
    __23_carry__0_i_6
       (.I0(box_x_reg_reg[5]),
        .O(__23_carry__0_i_6_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 __23_carry__1
       (.CI(__23_carry__0_n_0),
        .CO({__23_carry__1_n_0,NLW___23_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(\<const0> ),
        .DI({\h_cntr_reg_reg_n_0_[11] ,\h_cntr_reg_reg_n_0_[10] ,\h_cntr_reg_reg_n_0_[9] ,p_0_in7_in}),
        .S({__23_carry__1_i_1_n_0,__23_carry__1_i_2_n_0,__23_carry__1_i_3_n_0,__23_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    __23_carry__1_i_1
       (.I0(\h_cntr_reg_reg_n_0_[11] ),
        .I1(__23_carry__1_i_5_n_4),
        .O(__23_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    __23_carry__1_i_2
       (.I0(\h_cntr_reg_reg_n_0_[10] ),
        .I1(__23_carry__1_i_5_n_5),
        .O(__23_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    __23_carry__1_i_3
       (.I0(\h_cntr_reg_reg_n_0_[9] ),
        .I1(__23_carry__1_i_5_n_6),
        .O(__23_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    __23_carry__1_i_4
       (.I0(p_0_in7_in),
        .I1(__23_carry__1_i_5_n_7),
        .O(__23_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 __23_carry__1_i_5
       (.CI(__23_carry__0_i_5_n_0),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({__23_carry__1_i_5_n_4,__23_carry__1_i_5_n_5,__23_carry__1_i_5_n_6,__23_carry__1_i_5_n_7}),
        .S(box_x_reg_reg[11:8]));
  LUT2 #(
    .INIT(4'h9)) 
    __23_carry_i_1
       (.I0(p_0_in_0),
        .I1(box_x_reg_reg[3]),
        .O(__23_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    __23_carry_i_2
       (.I0(p_0_in[0]),
        .I1(box_x_reg_reg[2]),
        .O(__23_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    __23_carry_i_3
       (.I0(\h_cntr_reg_reg_n_0_[1] ),
        .I1(box_x_reg_reg[1]),
        .O(__23_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    __23_carry_i_4
       (.I0(\h_cntr_reg_reg_n_0_[0] ),
        .I1(box_x_reg_reg[0]),
        .O(__23_carry_i_4_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 _carry
       (.CI(\<const0> ),
        .CO({_carry_n_0,NLW__carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(\<const1> ),
        .DI(v_cntr_reg_reg[3:0]),
        .S({_carry_i_1_n_0,_carry_i_2_n_0,_carry_i_3_n_0,_carry_i_4_n_0}));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 _carry__0
       (.CI(_carry_n_0),
        .CO({_carry__0_n_0,NLW__carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(\<const0> ),
        .DI(v_cntr_reg_reg[7:4]),
        .S({_carry__0_i_1_n_0,_carry__0_i_2_n_0,_carry__0_i_3_n_0,_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    _carry__0_i_1
       (.I0(v_cntr_reg_reg[7]),
        .I1(_carry__0_i_5_n_4),
        .O(_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    _carry__0_i_2
       (.I0(v_cntr_reg_reg[6]),
        .I1(_carry__0_i_5_n_5),
        .O(_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    _carry__0_i_3
       (.I0(v_cntr_reg_reg[5]),
        .I1(_carry__0_i_5_n_6),
        .O(_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    _carry__0_i_4
       (.I0(v_cntr_reg_reg[4]),
        .I1(_carry__0_i_5_n_7),
        .O(_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "PROPCONST SWEEP" *) 
  CARRY4 _carry__0_i_5
       (.CI(\<const0> ),
        .CO({_carry__0_i_5_n_0,NLW__carry__0_i_5_CO_UNCONNECTED[2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,box_y_reg_reg[5],\<const0> }),
        .O({_carry__0_i_5_n_4,_carry__0_i_5_n_5,_carry__0_i_5_n_6,_carry__0_i_5_n_7}),
        .S({box_y_reg_reg[7:6],_carry__0_i_6_n_0,box_y_reg_reg[4]}));
  LUT1 #(
    .INIT(2'h1)) 
    _carry__0_i_6
       (.I0(box_y_reg_reg[5]),
        .O(_carry__0_i_6_n_0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 _carry__1
       (.CI(_carry__0_n_0),
        .CO({_carry__1_n_0,NLW__carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(\<const0> ),
        .DI(v_cntr_reg_reg[11:8]),
        .S({_carry__1_i_1_n_0,_carry__1_i_2_n_0,_carry__1_i_3_n_0,_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    _carry__1_i_1
       (.I0(v_cntr_reg_reg[11]),
        .I1(_carry__1_i_5_n_4),
        .O(_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    _carry__1_i_2
       (.I0(v_cntr_reg_reg[10]),
        .I1(_carry__1_i_5_n_5),
        .O(_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    _carry__1_i_3
       (.I0(v_cntr_reg_reg[9]),
        .I1(_carry__1_i_5_n_6),
        .O(_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    _carry__1_i_4
       (.I0(v_cntr_reg_reg[8]),
        .I1(_carry__1_i_5_n_7),
        .O(_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 _carry__1_i_5
       (.CI(_carry__0_i_5_n_0),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({_carry__1_i_5_n_4,_carry__1_i_5_n_5,_carry__1_i_5_n_6,_carry__1_i_5_n_7}),
        .S(box_y_reg_reg[11:8]));
  LUT2 #(
    .INIT(4'h9)) 
    _carry_i_1
       (.I0(v_cntr_reg_reg[3]),
        .I1(box_y_reg_reg[3]),
        .O(_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    _carry_i_2
       (.I0(v_cntr_reg_reg[2]),
        .I1(box_y_reg_reg[2]),
        .O(_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    _carry_i_3
       (.I0(v_cntr_reg_reg[1]),
        .I1(box_y_reg_reg[1]),
        .O(_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    _carry_i_4
       (.I0(v_cntr_reg_reg[0]),
        .I1(box_y_reg_reg[0]),
        .O(_carry_i_4_n_0));
  LUT5 #(
    .INIT(32'h00004000)) 
    \box_cntr_reg[0]_i_1 
       (.I0(\box_cntr_reg[0]_i_3_n_0 ),
        .I1(\box_cntr_reg[0]_i_4_n_0 ),
        .I2(\box_cntr_reg[0]_i_5_n_0 ),
        .I3(\box_cntr_reg[0]_i_6_n_0 ),
        .I4(\box_cntr_reg[0]_i_7_n_0 ),
        .O(eqOp));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \box_cntr_reg[0]_i_3 
       (.I0(box_cntr_reg_reg[10]),
        .I1(box_cntr_reg_reg[7]),
        .I2(box_cntr_reg_reg[8]),
        .I3(box_cntr_reg_reg[13]),
        .I4(box_cntr_reg_reg[11]),
        .I5(box_cntr_reg_reg[12]),
        .O(\box_cntr_reg[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \box_cntr_reg[0]_i_4 
       (.I0(box_cntr_reg_reg[23]),
        .I1(box_cntr_reg_reg[22]),
        .I2(box_cntr_reg_reg[24]),
        .I3(box_cntr_reg_reg[15]),
        .I4(box_cntr_reg_reg[20]),
        .I5(box_cntr_reg_reg[21]),
        .O(\box_cntr_reg[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \box_cntr_reg[0]_i_5 
       (.I0(box_cntr_reg_reg[6]),
        .I1(box_cntr_reg_reg[18]),
        .I2(box_cntr_reg_reg[19]),
        .I3(box_cntr_reg_reg[17]),
        .I4(box_cntr_reg_reg[14]),
        .I5(box_cntr_reg_reg[16]),
        .O(\box_cntr_reg[0]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \box_cntr_reg[0]_i_6 
       (.I0(box_cntr_reg_reg[9]),
        .I1(box_cntr_reg_reg[5]),
        .I2(box_cntr_reg_reg[4]),
        .O(\box_cntr_reg[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \box_cntr_reg[0]_i_7 
       (.I0(box_cntr_reg_reg[1]),
        .I1(box_cntr_reg_reg[0]),
        .I2(box_cntr_reg_reg[3]),
        .I3(box_cntr_reg_reg[2]),
        .O(\box_cntr_reg[0]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \box_cntr_reg[0]_i_8 
       (.I0(box_cntr_reg_reg[0]),
        .O(\box_cntr_reg[0]_i_8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \box_cntr_reg_reg[0] 
       (.C(clk_out1),
        .CE(\<const1> ),
        .D(\box_cntr_reg_reg[0]_i_2_n_7 ),
        .Q(box_cntr_reg_reg[0]),
        .R(eqOp));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \box_cntr_reg_reg[0]_i_2 
       (.CI(\<const0> ),
        .CO({\box_cntr_reg_reg[0]_i_2_n_0 ,\NLW_box_cntr_reg_reg[0]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const1> }),
        .O({\box_cntr_reg_reg[0]_i_2_n_4 ,\box_cntr_reg_reg[0]_i_2_n_5 ,\box_cntr_reg_reg[0]_i_2_n_6 ,\box_cntr_reg_reg[0]_i_2_n_7 }),
        .S({box_cntr_reg_reg[3:1],\box_cntr_reg[0]_i_8_n_0 }));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \box_cntr_reg_reg[10] 
       (.C(clk_out1),
        .CE(\box_cntr_reg_reg[10]_CE_cooolgate_en_sig_1 ),
        .D(\box_cntr_reg_reg[8]_i_1_n_5 ),
        .Q(box_cntr_reg_reg[10]),
        .R(eqOp));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \box_cntr_reg_reg[10]_CE_cooolgate_en_gate_1 
       (.I0(box_cntr_reg_reg[9]),
        .I1(box_cntr_reg_reg[8]),
        .I2(box_cntr_reg_reg[6]),
        .I3(box_cntr_reg_reg[5]),
        .I4(box_cntr_reg_reg[4]),
        .I5(\box_cntr_reg_reg[0]_i_2_n_0 ),
        .O(\box_cntr_reg_reg[10]_CE_cooolgate_en_sig_1 ));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \box_cntr_reg_reg[11] 
       (.C(clk_out1),
        .CE(\box_cntr_reg_reg[10]_CE_cooolgate_en_sig_1 ),
        .D(\box_cntr_reg_reg[8]_i_1_n_4 ),
        .Q(box_cntr_reg_reg[11]),
        .R(eqOp));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \box_cntr_reg_reg[12] 
       (.C(clk_out1),
        .CE(\box_cntr_reg_reg[10]_CE_cooolgate_en_sig_1 ),
        .D(\box_cntr_reg_reg[12]_i_1_n_7 ),
        .Q(box_cntr_reg_reg[12]),
        .R(eqOp));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \box_cntr_reg_reg[12]_i_1 
       (.CI(\box_cntr_reg_reg[8]_i_1_n_0 ),
        .CO({\box_cntr_reg_reg[12]_i_1_n_0 ,\NLW_box_cntr_reg_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\box_cntr_reg_reg[12]_i_1_n_4 ,\box_cntr_reg_reg[12]_i_1_n_5 ,\box_cntr_reg_reg[12]_i_1_n_6 ,\box_cntr_reg_reg[12]_i_1_n_7 }),
        .S(box_cntr_reg_reg[15:12]));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \box_cntr_reg_reg[13] 
       (.C(clk_out1),
        .CE(\box_cntr_reg_reg[10]_CE_cooolgate_en_sig_1 ),
        .D(\box_cntr_reg_reg[12]_i_1_n_6 ),
        .Q(box_cntr_reg_reg[13]),
        .R(eqOp));
  FDRE #(
    .INIT(1'b0)) 
    \box_cntr_reg_reg[14] 
       (.C(clk_out1),
        .CE(\<const1> ),
        .D(\box_cntr_reg_reg[12]_i_1_n_5 ),
        .Q(box_cntr_reg_reg[14]),
        .R(eqOp));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \box_cntr_reg_reg[15] 
       (.C(clk_out1),
        .CE(\box_cntr_reg_reg[10]_CE_cooolgate_en_sig_1 ),
        .D(\box_cntr_reg_reg[12]_i_1_n_4 ),
        .Q(box_cntr_reg_reg[15]),
        .R(eqOp));
  FDRE #(
    .INIT(1'b0)) 
    \box_cntr_reg_reg[16] 
       (.C(clk_out1),
        .CE(\<const1> ),
        .D(\box_cntr_reg_reg[16]_i_1_n_7 ),
        .Q(box_cntr_reg_reg[16]),
        .R(eqOp));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \box_cntr_reg_reg[16]_i_1 
       (.CI(\box_cntr_reg_reg[12]_i_1_n_0 ),
        .CO({\box_cntr_reg_reg[16]_i_1_n_0 ,\NLW_box_cntr_reg_reg[16]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\box_cntr_reg_reg[16]_i_1_n_4 ,\box_cntr_reg_reg[16]_i_1_n_5 ,\box_cntr_reg_reg[16]_i_1_n_6 ,\box_cntr_reg_reg[16]_i_1_n_7 }),
        .S(box_cntr_reg_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \box_cntr_reg_reg[17] 
       (.C(clk_out1),
        .CE(\<const1> ),
        .D(\box_cntr_reg_reg[16]_i_1_n_6 ),
        .Q(box_cntr_reg_reg[17]),
        .R(eqOp));
  FDRE #(
    .INIT(1'b0)) 
    \box_cntr_reg_reg[18] 
       (.C(clk_out1),
        .CE(\<const1> ),
        .D(\box_cntr_reg_reg[16]_i_1_n_5 ),
        .Q(box_cntr_reg_reg[18]),
        .R(eqOp));
  FDRE #(
    .INIT(1'b0)) 
    \box_cntr_reg_reg[19] 
       (.C(clk_out1),
        .CE(\<const1> ),
        .D(\box_cntr_reg_reg[16]_i_1_n_4 ),
        .Q(box_cntr_reg_reg[19]),
        .R(eqOp));
  FDRE #(
    .INIT(1'b0)) 
    \box_cntr_reg_reg[1] 
       (.C(clk_out1),
        .CE(\<const1> ),
        .D(\box_cntr_reg_reg[0]_i_2_n_6 ),
        .Q(box_cntr_reg_reg[1]),
        .R(eqOp));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \box_cntr_reg_reg[20] 
       (.C(clk_out1),
        .CE(\box_cntr_reg_reg[10]_CE_cooolgate_en_sig_1 ),
        .D(\box_cntr_reg_reg[20]_i_1_n_7 ),
        .Q(box_cntr_reg_reg[20]),
        .R(eqOp));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \box_cntr_reg_reg[20]_i_1 
       (.CI(\box_cntr_reg_reg[16]_i_1_n_0 ),
        .CO({\box_cntr_reg_reg[20]_i_1_n_0 ,\NLW_box_cntr_reg_reg[20]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\box_cntr_reg_reg[20]_i_1_n_4 ,\box_cntr_reg_reg[20]_i_1_n_5 ,\box_cntr_reg_reg[20]_i_1_n_6 ,\box_cntr_reg_reg[20]_i_1_n_7 }),
        .S(box_cntr_reg_reg[23:20]));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \box_cntr_reg_reg[21] 
       (.C(clk_out1),
        .CE(\box_cntr_reg_reg[10]_CE_cooolgate_en_sig_1 ),
        .D(\box_cntr_reg_reg[20]_i_1_n_6 ),
        .Q(box_cntr_reg_reg[21]),
        .R(eqOp));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \box_cntr_reg_reg[22] 
       (.C(clk_out1),
        .CE(\box_cntr_reg_reg[10]_CE_cooolgate_en_sig_1 ),
        .D(\box_cntr_reg_reg[20]_i_1_n_5 ),
        .Q(box_cntr_reg_reg[22]),
        .R(eqOp));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \box_cntr_reg_reg[23] 
       (.C(clk_out1),
        .CE(\box_cntr_reg_reg[10]_CE_cooolgate_en_sig_1 ),
        .D(\box_cntr_reg_reg[20]_i_1_n_4 ),
        .Q(box_cntr_reg_reg[23]),
        .R(eqOp));
  FDRE #(
    .INIT(1'b0)) 
    \box_cntr_reg_reg[24] 
       (.C(clk_out1),
        .CE(\<const1> ),
        .D(\box_cntr_reg_reg[24]_i_1_n_7 ),
        .Q(box_cntr_reg_reg[24]),
        .R(eqOp));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \box_cntr_reg_reg[24]_i_1 
       (.CI(\box_cntr_reg_reg[20]_i_1_n_0 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(\box_cntr_reg_reg[24]_i_1_n_7 ),
        .S({\<const0> ,\<const0> ,\<const0> ,box_cntr_reg_reg[24]}));
  FDRE #(
    .INIT(1'b0)) 
    \box_cntr_reg_reg[2] 
       (.C(clk_out1),
        .CE(\<const1> ),
        .D(\box_cntr_reg_reg[0]_i_2_n_5 ),
        .Q(box_cntr_reg_reg[2]),
        .R(eqOp));
  FDRE #(
    .INIT(1'b0)) 
    \box_cntr_reg_reg[3] 
       (.C(clk_out1),
        .CE(\<const1> ),
        .D(\box_cntr_reg_reg[0]_i_2_n_4 ),
        .Q(box_cntr_reg_reg[3]),
        .R(eqOp));
  FDRE #(
    .INIT(1'b0)) 
    \box_cntr_reg_reg[4] 
       (.C(clk_out1),
        .CE(\<const1> ),
        .D(\box_cntr_reg_reg[4]_i_1_n_7 ),
        .Q(box_cntr_reg_reg[4]),
        .R(eqOp));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \box_cntr_reg_reg[4]_i_1 
       (.CI(\box_cntr_reg_reg[0]_i_2_n_0 ),
        .CO({\box_cntr_reg_reg[4]_i_1_n_0 ,\NLW_box_cntr_reg_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\box_cntr_reg_reg[4]_i_1_n_4 ,\box_cntr_reg_reg[4]_i_1_n_5 ,\box_cntr_reg_reg[4]_i_1_n_6 ,\box_cntr_reg_reg[4]_i_1_n_7 }),
        .S(box_cntr_reg_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \box_cntr_reg_reg[5] 
       (.C(clk_out1),
        .CE(\<const1> ),
        .D(\box_cntr_reg_reg[4]_i_1_n_6 ),
        .Q(box_cntr_reg_reg[5]),
        .R(eqOp));
  FDRE #(
    .INIT(1'b0)) 
    \box_cntr_reg_reg[6] 
       (.C(clk_out1),
        .CE(\<const1> ),
        .D(\box_cntr_reg_reg[4]_i_1_n_5 ),
        .Q(box_cntr_reg_reg[6]),
        .R(eqOp));
  FDRE #(
    .INIT(1'b0)) 
    \box_cntr_reg_reg[7] 
       (.C(clk_out1),
        .CE(\<const1> ),
        .D(\box_cntr_reg_reg[4]_i_1_n_4 ),
        .Q(box_cntr_reg_reg[7]),
        .R(eqOp));
  FDRE #(
    .INIT(1'b0)) 
    \box_cntr_reg_reg[8] 
       (.C(clk_out1),
        .CE(\<const1> ),
        .D(\box_cntr_reg_reg[8]_i_1_n_7 ),
        .Q(box_cntr_reg_reg[8]),
        .R(eqOp));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \box_cntr_reg_reg[8]_i_1 
       (.CI(\box_cntr_reg_reg[4]_i_1_n_0 ),
        .CO({\box_cntr_reg_reg[8]_i_1_n_0 ,\NLW_box_cntr_reg_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\box_cntr_reg_reg[8]_i_1_n_4 ,\box_cntr_reg_reg[8]_i_1_n_5 ,\box_cntr_reg_reg[8]_i_1_n_6 ,\box_cntr_reg_reg[8]_i_1_n_7 }),
        .S(box_cntr_reg_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \box_cntr_reg_reg[9] 
       (.C(clk_out1),
        .CE(\<const1> ),
        .D(\box_cntr_reg_reg[8]_i_1_n_6 ),
        .Q(box_cntr_reg_reg[9]),
        .R(eqOp));
  LUT4 #(
    .INIT(16'h5FC0)) 
    box_x_dir_i_1
       (.I0(eqOp20_in),
        .I1(eqOp19_in),
        .I2(eqOp),
        .I3(box_x_dir_reg_n_0),
        .O(box_x_dir_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    box_x_dir_i_2
       (.I0(box_x_reg_reg[9]),
        .I1(box_x_reg_reg[5]),
        .I2(box_x_reg_reg[10]),
        .I3(box_x_reg_reg[11]),
        .I4(box_x_dir_i_4_n_0),
        .I5(box_x_dir_i_5_n_0),
        .O(eqOp20_in));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    box_x_dir_i_3
       (.I0(box_x_reg_reg[9]),
        .I1(box_x_reg_reg[8]),
        .I2(box_x_reg_reg[10]),
        .I3(box_x_reg_reg[11]),
        .I4(box_x_dir_i_6_n_0),
        .I5(box_x_dir_i_7_n_0),
        .O(eqOp19_in));
  LUT4 #(
    .INIT(16'h7FFF)) 
    box_x_dir_i_4
       (.I0(box_x_reg_reg[2]),
        .I1(box_x_reg_reg[3]),
        .I2(box_x_reg_reg[0]),
        .I3(box_x_reg_reg[1]),
        .O(box_x_dir_i_4_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    box_x_dir_i_5
       (.I0(box_x_reg_reg[6]),
        .I1(box_x_reg_reg[8]),
        .I2(box_x_reg_reg[4]),
        .I3(box_x_reg_reg[7]),
        .O(box_x_dir_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFEF)) 
    box_x_dir_i_6
       (.I0(box_x_reg_reg[2]),
        .I1(box_x_reg_reg[3]),
        .I2(box_x_reg_reg[0]),
        .I3(box_x_reg_reg[1]),
        .O(box_x_dir_i_6_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    box_x_dir_i_7
       (.I0(box_x_reg_reg[6]),
        .I1(box_x_reg_reg[7]),
        .I2(box_x_reg_reg[4]),
        .I3(box_x_reg_reg[5]),
        .O(box_x_dir_i_7_n_0));
  FDRE #(
    .INIT(1'b1)) 
    box_x_dir_reg
       (.C(clk_out1),
        .CE(\<const1> ),
        .D(box_x_dir_i_1_n_0),
        .Q(box_x_dir_reg_n_0),
        .R(\<const0> ));
  LUT2 #(
    .INIT(4'h9)) 
    \box_x_reg[0]_i_2 
       (.I0(box_x_dir_reg_n_0),
        .I1(box_x_reg_reg[3]),
        .O(\box_x_reg[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \box_x_reg[0]_i_3 
       (.I0(box_x_dir_reg_n_0),
        .I1(box_x_reg_reg[2]),
        .O(\box_x_reg[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \box_x_reg[0]_i_4 
       (.I0(box_x_dir_reg_n_0),
        .I1(box_x_reg_reg[1]),
        .O(\box_x_reg[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \box_x_reg[4]_i_2 
       (.I0(box_x_dir_reg_n_0),
        .I1(box_x_reg_reg[7]),
        .O(\box_x_reg[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \box_x_reg[4]_i_3 
       (.I0(box_x_dir_reg_n_0),
        .I1(box_x_reg_reg[6]),
        .O(\box_x_reg[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \box_x_reg[4]_i_4 
       (.I0(box_x_dir_reg_n_0),
        .I1(box_x_reg_reg[5]),
        .O(\box_x_reg[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \box_x_reg[4]_i_5 
       (.I0(box_x_dir_reg_n_0),
        .I1(box_x_reg_reg[4]),
        .O(\box_x_reg[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \box_x_reg[8]_i_2 
       (.I0(box_x_dir_reg_n_0),
        .I1(box_x_reg_reg[11]),
        .O(\box_x_reg[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \box_x_reg[8]_i_3 
       (.I0(box_x_dir_reg_n_0),
        .I1(box_x_reg_reg[10]),
        .O(\box_x_reg[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \box_x_reg[8]_i_4 
       (.I0(box_x_dir_reg_n_0),
        .I1(box_x_reg_reg[9]),
        .O(\box_x_reg[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \box_x_reg[8]_i_5 
       (.I0(box_x_dir_reg_n_0),
        .I1(box_x_reg_reg[8]),
        .O(\box_x_reg[8]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \box_x_reg_reg[0] 
       (.C(clk_out1),
        .CE(eqOp),
        .D(\box_x_reg_reg[0]_i_1_n_7 ),
        .Q(box_x_reg_reg[0]),
        .R(\<const0> ));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \box_x_reg_reg[0]_i_1 
       (.CI(\<const0> ),
        .CO({\box_x_reg_reg[0]_i_1_n_0 ,\NLW_box_x_reg_reg[0]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const1> ),
        .DI({box_x_reg_reg[3:1],\<const0> }),
        .O({\box_x_reg_reg[0]_i_1_n_4 ,\box_x_reg_reg[0]_i_1_n_5 ,\box_x_reg_reg[0]_i_1_n_6 ,\box_x_reg_reg[0]_i_1_n_7 }),
        .S({\box_x_reg[0]_i_2_n_0 ,\box_x_reg[0]_i_3_n_0 ,\box_x_reg[0]_i_4_n_0 ,box_x_reg_reg[0]}));
  FDRE #(
    .INIT(1'b0)) 
    \box_x_reg_reg[10] 
       (.C(clk_out1),
        .CE(eqOp),
        .D(\box_x_reg_reg[8]_i_1_n_5 ),
        .Q(box_x_reg_reg[10]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \box_x_reg_reg[11] 
       (.C(clk_out1),
        .CE(eqOp),
        .D(\box_x_reg_reg[8]_i_1_n_4 ),
        .Q(box_x_reg_reg[11]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \box_x_reg_reg[1] 
       (.C(clk_out1),
        .CE(eqOp),
        .D(\box_x_reg_reg[0]_i_1_n_6 ),
        .Q(box_x_reg_reg[1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \box_x_reg_reg[2] 
       (.C(clk_out1),
        .CE(eqOp),
        .D(\box_x_reg_reg[0]_i_1_n_5 ),
        .Q(box_x_reg_reg[2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \box_x_reg_reg[3] 
       (.C(clk_out1),
        .CE(eqOp),
        .D(\box_x_reg_reg[0]_i_1_n_4 ),
        .Q(box_x_reg_reg[3]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \box_x_reg_reg[4] 
       (.C(clk_out1),
        .CE(eqOp),
        .D(\box_x_reg_reg[4]_i_1_n_7 ),
        .Q(box_x_reg_reg[4]),
        .R(\<const0> ));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \box_x_reg_reg[4]_i_1 
       (.CI(\box_x_reg_reg[0]_i_1_n_0 ),
        .CO({\box_x_reg_reg[4]_i_1_n_0 ,\NLW_box_x_reg_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI(box_x_reg_reg[7:4]),
        .O({\box_x_reg_reg[4]_i_1_n_4 ,\box_x_reg_reg[4]_i_1_n_5 ,\box_x_reg_reg[4]_i_1_n_6 ,\box_x_reg_reg[4]_i_1_n_7 }),
        .S({\box_x_reg[4]_i_2_n_0 ,\box_x_reg[4]_i_3_n_0 ,\box_x_reg[4]_i_4_n_0 ,\box_x_reg[4]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \box_x_reg_reg[5] 
       (.C(clk_out1),
        .CE(eqOp),
        .D(\box_x_reg_reg[4]_i_1_n_6 ),
        .Q(box_x_reg_reg[5]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \box_x_reg_reg[6] 
       (.C(clk_out1),
        .CE(eqOp),
        .D(\box_x_reg_reg[4]_i_1_n_5 ),
        .Q(box_x_reg_reg[6]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \box_x_reg_reg[7] 
       (.C(clk_out1),
        .CE(eqOp),
        .D(\box_x_reg_reg[4]_i_1_n_4 ),
        .Q(box_x_reg_reg[7]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \box_x_reg_reg[8] 
       (.C(clk_out1),
        .CE(eqOp),
        .D(\box_x_reg_reg[8]_i_1_n_7 ),
        .Q(box_x_reg_reg[8]),
        .R(\<const0> ));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \box_x_reg_reg[8]_i_1 
       (.CI(\box_x_reg_reg[4]_i_1_n_0 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,box_x_reg_reg[10:8]}),
        .O({\box_x_reg_reg[8]_i_1_n_4 ,\box_x_reg_reg[8]_i_1_n_5 ,\box_x_reg_reg[8]_i_1_n_6 ,\box_x_reg_reg[8]_i_1_n_7 }),
        .S({\box_x_reg[8]_i_2_n_0 ,\box_x_reg[8]_i_3_n_0 ,\box_x_reg[8]_i_4_n_0 ,\box_x_reg[8]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \box_x_reg_reg[9] 
       (.C(clk_out1),
        .CE(eqOp),
        .D(\box_x_reg_reg[8]_i_1_n_6 ),
        .Q(box_x_reg_reg[9]),
        .R(\<const0> ));
  LUT4 #(
    .INIT(16'h5FC0)) 
    box_y_dir_i_1
       (.I0(eqOp16_in),
        .I1(eqOp15_in),
        .I2(eqOp),
        .I3(box_y_dir_reg_n_0),
        .O(box_y_dir_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    box_y_dir_i_2
       (.I0(box_y_reg_reg[9]),
        .I1(box_y_reg_reg[6]),
        .I2(box_y_reg_reg[10]),
        .I3(box_y_reg_reg[11]),
        .I4(box_y_dir_i_4_n_0),
        .I5(box_y_dir_i_5_n_0),
        .O(eqOp16_in));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    box_y_dir_i_3
       (.I0(box_y_reg_reg[9]),
        .I1(box_y_reg_reg[1]),
        .I2(box_y_reg_reg[10]),
        .I3(box_y_reg_reg[11]),
        .I4(box_y_dir_i_6_n_0),
        .I5(box_y_dir_i_7_n_0),
        .O(eqOp15_in));
  LUT4 #(
    .INIT(16'h7FFF)) 
    box_y_dir_i_4
       (.I0(box_y_reg_reg[2]),
        .I1(box_y_reg_reg[3]),
        .I2(box_y_reg_reg[0]),
        .I3(box_y_reg_reg[1]),
        .O(box_y_dir_i_4_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    box_y_dir_i_5
       (.I0(box_y_reg_reg[7]),
        .I1(box_y_reg_reg[8]),
        .I2(box_y_reg_reg[4]),
        .I3(box_y_reg_reg[5]),
        .O(box_y_dir_i_5_n_0));
  LUT4 #(
    .INIT(16'hEFFF)) 
    box_y_dir_i_6
       (.I0(box_y_reg_reg[2]),
        .I1(box_y_reg_reg[3]),
        .I2(box_y_reg_reg[0]),
        .I3(box_y_reg_reg[8]),
        .O(box_y_dir_i_6_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    box_y_dir_i_7
       (.I0(box_y_reg_reg[6]),
        .I1(box_y_reg_reg[7]),
        .I2(box_y_reg_reg[4]),
        .I3(box_y_reg_reg[5]),
        .O(box_y_dir_i_7_n_0));
  FDRE #(
    .INIT(1'b1)) 
    box_y_dir_reg
       (.C(clk_out1),
        .CE(\<const1> ),
        .D(box_y_dir_i_1_n_0),
        .Q(box_y_dir_reg_n_0),
        .R(\<const0> ));
  LUT2 #(
    .INIT(4'h9)) 
    \box_y_reg[0]_i_2 
       (.I0(box_y_dir_reg_n_0),
        .I1(box_y_reg_reg[3]),
        .O(\box_y_reg[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \box_y_reg[0]_i_3 
       (.I0(box_y_dir_reg_n_0),
        .I1(box_y_reg_reg[2]),
        .O(\box_y_reg[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \box_y_reg[0]_i_4 
       (.I0(box_y_dir_reg_n_0),
        .I1(box_y_reg_reg[1]),
        .O(\box_y_reg[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \box_y_reg[4]_i_2 
       (.I0(box_y_dir_reg_n_0),
        .I1(box_y_reg_reg[7]),
        .O(\box_y_reg[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \box_y_reg[4]_i_3 
       (.I0(box_y_dir_reg_n_0),
        .I1(box_y_reg_reg[6]),
        .O(\box_y_reg[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \box_y_reg[4]_i_4 
       (.I0(box_y_dir_reg_n_0),
        .I1(box_y_reg_reg[5]),
        .O(\box_y_reg[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \box_y_reg[4]_i_5 
       (.I0(box_y_dir_reg_n_0),
        .I1(box_y_reg_reg[4]),
        .O(\box_y_reg[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \box_y_reg[8]_i_2 
       (.I0(box_y_dir_reg_n_0),
        .I1(box_y_reg_reg[11]),
        .O(\box_y_reg[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \box_y_reg[8]_i_3 
       (.I0(box_y_dir_reg_n_0),
        .I1(box_y_reg_reg[10]),
        .O(\box_y_reg[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \box_y_reg[8]_i_4 
       (.I0(box_y_dir_reg_n_0),
        .I1(box_y_reg_reg[9]),
        .O(\box_y_reg[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \box_y_reg[8]_i_5 
       (.I0(box_y_dir_reg_n_0),
        .I1(box_y_reg_reg[8]),
        .O(\box_y_reg[8]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \box_y_reg_reg[0] 
       (.C(clk_out1),
        .CE(eqOp),
        .D(\box_y_reg_reg[0]_i_1_n_7 ),
        .Q(box_y_reg_reg[0]),
        .R(\<const0> ));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \box_y_reg_reg[0]_i_1 
       (.CI(\<const0> ),
        .CO({\box_y_reg_reg[0]_i_1_n_0 ,\NLW_box_y_reg_reg[0]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const1> ),
        .DI({box_y_reg_reg[3:1],\<const0> }),
        .O({\box_y_reg_reg[0]_i_1_n_4 ,\box_y_reg_reg[0]_i_1_n_5 ,\box_y_reg_reg[0]_i_1_n_6 ,\box_y_reg_reg[0]_i_1_n_7 }),
        .S({\box_y_reg[0]_i_2_n_0 ,\box_y_reg[0]_i_3_n_0 ,\box_y_reg[0]_i_4_n_0 ,box_y_reg_reg[0]}));
  FDRE #(
    .INIT(1'b0)) 
    \box_y_reg_reg[10] 
       (.C(clk_out1),
        .CE(eqOp),
        .D(\box_y_reg_reg[8]_i_1_n_5 ),
        .Q(box_y_reg_reg[10]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \box_y_reg_reg[11] 
       (.C(clk_out1),
        .CE(eqOp),
        .D(\box_y_reg_reg[8]_i_1_n_4 ),
        .Q(box_y_reg_reg[11]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \box_y_reg_reg[1] 
       (.C(clk_out1),
        .CE(eqOp),
        .D(\box_y_reg_reg[0]_i_1_n_6 ),
        .Q(box_y_reg_reg[1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \box_y_reg_reg[2] 
       (.C(clk_out1),
        .CE(eqOp),
        .D(\box_y_reg_reg[0]_i_1_n_5 ),
        .Q(box_y_reg_reg[2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \box_y_reg_reg[3] 
       (.C(clk_out1),
        .CE(eqOp),
        .D(\box_y_reg_reg[0]_i_1_n_4 ),
        .Q(box_y_reg_reg[3]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b1)) 
    \box_y_reg_reg[4] 
       (.C(clk_out1),
        .CE(eqOp),
        .D(\box_y_reg_reg[4]_i_1_n_7 ),
        .Q(box_y_reg_reg[4]),
        .R(\<const0> ));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \box_y_reg_reg[4]_i_1 
       (.CI(\box_y_reg_reg[0]_i_1_n_0 ),
        .CO({\box_y_reg_reg[4]_i_1_n_0 ,\NLW_box_y_reg_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI(box_y_reg_reg[7:4]),
        .O({\box_y_reg_reg[4]_i_1_n_4 ,\box_y_reg_reg[4]_i_1_n_5 ,\box_y_reg_reg[4]_i_1_n_6 ,\box_y_reg_reg[4]_i_1_n_7 }),
        .S({\box_y_reg[4]_i_2_n_0 ,\box_y_reg[4]_i_3_n_0 ,\box_y_reg[4]_i_4_n_0 ,\box_y_reg[4]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \box_y_reg_reg[5] 
       (.C(clk_out1),
        .CE(eqOp),
        .D(\box_y_reg_reg[4]_i_1_n_6 ),
        .Q(box_y_reg_reg[5]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \box_y_reg_reg[6] 
       (.C(clk_out1),
        .CE(eqOp),
        .D(\box_y_reg_reg[4]_i_1_n_5 ),
        .Q(box_y_reg_reg[6]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b1)) 
    \box_y_reg_reg[7] 
       (.C(clk_out1),
        .CE(eqOp),
        .D(\box_y_reg_reg[4]_i_1_n_4 ),
        .Q(box_y_reg_reg[7]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b1)) 
    \box_y_reg_reg[8] 
       (.C(clk_out1),
        .CE(eqOp),
        .D(\box_y_reg_reg[8]_i_1_n_7 ),
        .Q(box_y_reg_reg[8]),
        .R(\<const0> ));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \box_y_reg_reg[8]_i_1 
       (.CI(\box_y_reg_reg[4]_i_1_n_0 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,box_y_reg_reg[10:8]}),
        .O({\box_y_reg_reg[8]_i_1_n_4 ,\box_y_reg_reg[8]_i_1_n_5 ,\box_y_reg_reg[8]_i_1_n_6 ,\box_y_reg_reg[8]_i_1_n_7 }),
        .S({\box_y_reg[8]_i_2_n_0 ,\box_y_reg[8]_i_3_n_0 ,\box_y_reg[8]_i_4_n_0 ,\box_y_reg[8]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \box_y_reg_reg[9] 
       (.C(clk_out1),
        .CE(eqOp),
        .D(\box_y_reg_reg[8]_i_1_n_6 ),
        .Q(box_y_reg_reg[9]),
        .R(\<const0> ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 geqOp__11_carry
       (.CI(\<const0> ),
        .CO({geqOp__11_carry_n_0,NLW_geqOp__11_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(\<const1> ),
        .DI({geqOp__11_carry_i_1_n_0,geqOp__11_carry_i_2_n_0,geqOp__11_carry_i_3_n_0,geqOp__11_carry_i_4_n_0}),
        .S({geqOp__11_carry_i_5_n_0,geqOp__11_carry_i_6_n_0,geqOp__11_carry_i_7_n_0,geqOp__11_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 geqOp__11_carry__0
       (.CI(geqOp__11_carry_n_0),
        .CO({geqOp27_in,NLW_geqOp__11_carry__0_CO_UNCONNECTED[0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,geqOp__11_carry__0_i_1_n_0,geqOp__11_carry__0_i_2_n_0}),
        .S({\<const0> ,\<const0> ,geqOp__11_carry__0_i_3_n_0,geqOp__11_carry__0_i_4_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    geqOp__11_carry__0_i_1
       (.I0(v_cntr_reg_reg[10]),
        .I1(box_y_reg_reg[10]),
        .I2(box_y_reg_reg[11]),
        .I3(v_cntr_reg_reg[11]),
        .O(geqOp__11_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    geqOp__11_carry__0_i_2
       (.I0(v_cntr_reg_reg[8]),
        .I1(box_y_reg_reg[8]),
        .I2(box_y_reg_reg[9]),
        .I3(v_cntr_reg_reg[9]),
        .O(geqOp__11_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    geqOp__11_carry__0_i_3
       (.I0(v_cntr_reg_reg[10]),
        .I1(box_y_reg_reg[10]),
        .I2(v_cntr_reg_reg[11]),
        .I3(box_y_reg_reg[11]),
        .O(geqOp__11_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    geqOp__11_carry__0_i_4
       (.I0(v_cntr_reg_reg[8]),
        .I1(box_y_reg_reg[8]),
        .I2(v_cntr_reg_reg[9]),
        .I3(box_y_reg_reg[9]),
        .O(geqOp__11_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    geqOp__11_carry_i_1
       (.I0(v_cntr_reg_reg[6]),
        .I1(box_y_reg_reg[6]),
        .I2(box_y_reg_reg[7]),
        .I3(v_cntr_reg_reg[7]),
        .O(geqOp__11_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    geqOp__11_carry_i_2
       (.I0(v_cntr_reg_reg[4]),
        .I1(box_y_reg_reg[4]),
        .I2(box_y_reg_reg[5]),
        .I3(v_cntr_reg_reg[5]),
        .O(geqOp__11_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    geqOp__11_carry_i_3
       (.I0(v_cntr_reg_reg[2]),
        .I1(box_y_reg_reg[2]),
        .I2(box_y_reg_reg[3]),
        .I3(v_cntr_reg_reg[3]),
        .O(geqOp__11_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    geqOp__11_carry_i_4
       (.I0(v_cntr_reg_reg[0]),
        .I1(box_y_reg_reg[0]),
        .I2(box_y_reg_reg[1]),
        .I3(v_cntr_reg_reg[1]),
        .O(geqOp__11_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    geqOp__11_carry_i_5
       (.I0(v_cntr_reg_reg[6]),
        .I1(box_y_reg_reg[6]),
        .I2(v_cntr_reg_reg[7]),
        .I3(box_y_reg_reg[7]),
        .O(geqOp__11_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    geqOp__11_carry_i_6
       (.I0(v_cntr_reg_reg[4]),
        .I1(box_y_reg_reg[4]),
        .I2(v_cntr_reg_reg[5]),
        .I3(box_y_reg_reg[5]),
        .O(geqOp__11_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    geqOp__11_carry_i_7
       (.I0(v_cntr_reg_reg[2]),
        .I1(box_y_reg_reg[2]),
        .I2(v_cntr_reg_reg[3]),
        .I3(box_y_reg_reg[3]),
        .O(geqOp__11_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    geqOp__11_carry_i_8
       (.I0(v_cntr_reg_reg[0]),
        .I1(box_y_reg_reg[0]),
        .I2(v_cntr_reg_reg[1]),
        .I3(box_y_reg_reg[1]),
        .O(geqOp__11_carry_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 geqOp__17_carry
       (.CI(\<const0> ),
        .CO({geqOp__17_carry_n_0,NLW_geqOp__17_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(\<const1> ),
        .DI({geqOp__17_carry_i_1_n_0,geqOp__17_carry_i_2_n_0,geqOp__17_carry_i_3_n_0,geqOp__17_carry_i_4_n_0}),
        .S({geqOp__17_carry_i_5_n_0,geqOp__17_carry_i_6_n_0,geqOp__17_carry_i_7_n_0,geqOp__17_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 geqOp__17_carry__0
       (.CI(geqOp__17_carry_n_0),
        .CO({geqOp28_in,NLW_geqOp__17_carry__0_CO_UNCONNECTED[0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,geqOp__17_carry__0_i_1_n_0,geqOp__17_carry__0_i_2_n_0}),
        .S({\<const0> ,\<const0> ,geqOp__17_carry__0_i_3_n_0,geqOp__17_carry__0_i_4_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    geqOp__17_carry__0_i_1
       (.I0(\h_cntr_reg_reg_n_0_[10] ),
        .I1(box_x_reg_reg[10]),
        .I2(box_x_reg_reg[11]),
        .I3(\h_cntr_reg_reg_n_0_[11] ),
        .O(geqOp__17_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    geqOp__17_carry__0_i_2
       (.I0(p_0_in7_in),
        .I1(box_x_reg_reg[8]),
        .I2(box_x_reg_reg[9]),
        .I3(\h_cntr_reg_reg_n_0_[9] ),
        .O(geqOp__17_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    geqOp__17_carry__0_i_3
       (.I0(\h_cntr_reg_reg_n_0_[10] ),
        .I1(box_x_reg_reg[10]),
        .I2(\h_cntr_reg_reg_n_0_[11] ),
        .I3(box_x_reg_reg[11]),
        .O(geqOp__17_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    geqOp__17_carry__0_i_4
       (.I0(p_0_in7_in),
        .I1(box_x_reg_reg[8]),
        .I2(\h_cntr_reg_reg_n_0_[9] ),
        .I3(box_x_reg_reg[9]),
        .O(geqOp__17_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    geqOp__17_carry_i_1
       (.I0(\h_cntr_reg_reg_n_0_[6] ),
        .I1(box_x_reg_reg[6]),
        .I2(box_x_reg_reg[7]),
        .I3(p_0_in3_in),
        .O(geqOp__17_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    geqOp__17_carry_i_2
       (.I0(p_0_in[2]),
        .I1(box_x_reg_reg[4]),
        .I2(box_x_reg_reg[5]),
        .I3(p_0_in[3]),
        .O(geqOp__17_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    geqOp__17_carry_i_3
       (.I0(p_0_in[0]),
        .I1(box_x_reg_reg[2]),
        .I2(box_x_reg_reg[3]),
        .I3(p_0_in_0),
        .O(geqOp__17_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    geqOp__17_carry_i_4
       (.I0(\h_cntr_reg_reg_n_0_[0] ),
        .I1(box_x_reg_reg[0]),
        .I2(box_x_reg_reg[1]),
        .I3(\h_cntr_reg_reg_n_0_[1] ),
        .O(geqOp__17_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    geqOp__17_carry_i_5
       (.I0(\h_cntr_reg_reg_n_0_[6] ),
        .I1(box_x_reg_reg[6]),
        .I2(p_0_in3_in),
        .I3(box_x_reg_reg[7]),
        .O(geqOp__17_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    geqOp__17_carry_i_6
       (.I0(p_0_in[2]),
        .I1(box_x_reg_reg[4]),
        .I2(p_0_in[3]),
        .I3(box_x_reg_reg[5]),
        .O(geqOp__17_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    geqOp__17_carry_i_7
       (.I0(p_0_in[0]),
        .I1(box_x_reg_reg[2]),
        .I2(p_0_in_0),
        .I3(box_x_reg_reg[3]),
        .O(geqOp__17_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    geqOp__17_carry_i_8
       (.I0(\h_cntr_reg_reg_n_0_[0] ),
        .I1(box_x_reg_reg[0]),
        .I2(\h_cntr_reg_reg_n_0_[1] ),
        .I3(box_x_reg_reg[1]),
        .O(geqOp__17_carry_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 geqOp__5_carry
       (.CI(\<const0> ),
        .CO({geqOp__5_carry_n_0,NLW_geqOp__5_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(\<const1> ),
        .DI({\<const0> ,geqOp__5_carry_i_1_n_0,geqOp__5_carry_i_2_n_0,v_cntr_reg_reg[1]}),
        .S({geqOp__5_carry_i_3_n_0,geqOp__5_carry_i_4_n_0,geqOp__5_carry_i_5_n_0,geqOp__5_carry_i_6_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 geqOp__5_carry__0
       (.CI(geqOp__5_carry_n_0),
        .CO({geqOp,NLW_geqOp__5_carry__0_CO_UNCONNECTED[0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,geqOp__5_carry__0_i_1_n_0,v_cntr_reg_reg[9]}),
        .S({\<const0> ,\<const0> ,geqOp__5_carry__0_i_2_n_0,geqOp__5_carry__0_i_3_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    geqOp__5_carry__0_i_1
       (.I0(v_cntr_reg_reg[10]),
        .I1(v_cntr_reg_reg[11]),
        .O(geqOp__5_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    geqOp__5_carry__0_i_2
       (.I0(v_cntr_reg_reg[10]),
        .I1(v_cntr_reg_reg[11]),
        .O(geqOp__5_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    geqOp__5_carry__0_i_3
       (.I0(v_cntr_reg_reg[8]),
        .I1(v_cntr_reg_reg[9]),
        .O(geqOp__5_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    geqOp__5_carry_i_1
       (.I0(v_cntr_reg_reg[4]),
        .I1(v_cntr_reg_reg[5]),
        .O(geqOp__5_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    geqOp__5_carry_i_2
       (.I0(v_cntr_reg_reg[3]),
        .I1(v_cntr_reg_reg[2]),
        .O(geqOp__5_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    geqOp__5_carry_i_3
       (.I0(v_cntr_reg_reg[6]),
        .I1(v_cntr_reg_reg[7]),
        .O(geqOp__5_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    geqOp__5_carry_i_4
       (.I0(v_cntr_reg_reg[5]),
        .I1(v_cntr_reg_reg[4]),
        .O(geqOp__5_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    geqOp__5_carry_i_5
       (.I0(v_cntr_reg_reg[3]),
        .I1(v_cntr_reg_reg[2]),
        .O(geqOp__5_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    geqOp__5_carry_i_6
       (.I0(v_cntr_reg_reg[0]),
        .I1(v_cntr_reg_reg[1]),
        .O(geqOp__5_carry_i_6_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 geqOp_carry
       (.CI(\<const0> ),
        .CO({geqOp_carry_n_0,NLW_geqOp_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(\<const1> ),
        .DI({geqOp_carry_i_1_n_0,geqOp_carry_i_2_n_0,\<const0> ,\<const0> }),
        .S({geqOp_carry_i_3_n_0,geqOp_carry_i_4_n_0,geqOp_carry_i_5_n_0,geqOp_carry_i_6_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 geqOp_carry__0
       (.CI(geqOp_carry_n_0),
        .CO({geqOp12_in,NLW_geqOp_carry__0_CO_UNCONNECTED[0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,geqOp_carry__0_i_1_n_0,geqOp_carry__0_i_2_n_0}),
        .S({\<const0> ,\<const0> ,geqOp_carry__0_i_3_n_0,geqOp_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    geqOp_carry__0_i_1
       (.I0(\h_cntr_reg_reg_n_0_[10] ),
        .I1(\h_cntr_reg_reg_n_0_[11] ),
        .O(geqOp_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    geqOp_carry__0_i_2
       (.I0(p_0_in7_in),
        .I1(\h_cntr_reg_reg_n_0_[9] ),
        .O(geqOp_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    geqOp_carry__0_i_3
       (.I0(\h_cntr_reg_reg_n_0_[10] ),
        .I1(\h_cntr_reg_reg_n_0_[11] ),
        .O(geqOp_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    geqOp_carry__0_i_4
       (.I0(\h_cntr_reg_reg_n_0_[9] ),
        .I1(p_0_in7_in),
        .O(geqOp_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    geqOp_carry_i_1
       (.I0(\h_cntr_reg_reg_n_0_[6] ),
        .I1(p_0_in3_in),
        .O(geqOp_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    geqOp_carry_i_2
       (.I0(p_0_in[2]),
        .I1(p_0_in[3]),
        .O(geqOp_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    geqOp_carry_i_3
       (.I0(p_0_in3_in),
        .I1(\h_cntr_reg_reg_n_0_[6] ),
        .O(geqOp_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    geqOp_carry_i_4
       (.I0(p_0_in[2]),
        .I1(p_0_in[3]),
        .O(geqOp_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    geqOp_carry_i_5
       (.I0(p_0_in[0]),
        .I1(p_0_in_0),
        .O(geqOp_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    geqOp_carry_i_6
       (.I0(\h_cntr_reg_reg_n_0_[1] ),
        .I1(\h_cntr_reg_reg_n_0_[0] ),
        .O(geqOp_carry_i_6_n_0));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \h_cntr_reg[0]_i_1 
       (.I0(\h_cntr_reg[0]_i_3_n_0 ),
        .I1(p_0_in7_in),
        .I2(p_0_in[2]),
        .I3(p_0_in_0),
        .I4(p_0_in[0]),
        .I5(\h_cntr_reg[0]_i_4_n_0 ),
        .O(eqOp14_in));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \h_cntr_reg[0]_i_3 
       (.I0(\h_cntr_reg_reg_n_0_[10] ),
        .I1(p_0_in3_in),
        .I2(\h_cntr_reg_reg_n_0_[11] ),
        .I3(\h_cntr_reg_reg_n_0_[9] ),
        .I4(p_0_in[3]),
        .I5(\h_cntr_reg_reg_n_0_[6] ),
        .O(\h_cntr_reg[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \h_cntr_reg[0]_i_4 
       (.I0(\h_cntr_reg_reg_n_0_[0] ),
        .I1(\h_cntr_reg_reg_n_0_[1] ),
        .O(\h_cntr_reg[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \h_cntr_reg[0]_i_5 
       (.I0(\h_cntr_reg_reg_n_0_[0] ),
        .O(\h_cntr_reg[0]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \h_cntr_reg_reg[0] 
       (.C(clk_out1),
        .CE(\<const1> ),
        .D(\h_cntr_reg_reg[0]_i_2_n_7 ),
        .Q(\h_cntr_reg_reg_n_0_[0] ),
        .R(eqOp14_in));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \h_cntr_reg_reg[0]_i_2 
       (.CI(\<const0> ),
        .CO({\h_cntr_reg_reg[0]_i_2_n_0 ,\NLW_h_cntr_reg_reg[0]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const1> }),
        .O({\h_cntr_reg_reg[0]_i_2_n_4 ,\h_cntr_reg_reg[0]_i_2_n_5 ,\h_cntr_reg_reg[0]_i_2_n_6 ,\h_cntr_reg_reg[0]_i_2_n_7 }),
        .S({p_0_in_0,p_0_in[0],\h_cntr_reg_reg_n_0_[1] ,\h_cntr_reg[0]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \h_cntr_reg_reg[10] 
       (.C(clk_out1),
        .CE(\<const1> ),
        .D(\h_cntr_reg_reg[8]_i_1_n_5 ),
        .Q(\h_cntr_reg_reg_n_0_[10] ),
        .R(eqOp14_in));
  FDRE #(
    .INIT(1'b0)) 
    \h_cntr_reg_reg[11] 
       (.C(clk_out1),
        .CE(\<const1> ),
        .D(\h_cntr_reg_reg[8]_i_1_n_4 ),
        .Q(\h_cntr_reg_reg_n_0_[11] ),
        .R(eqOp14_in));
  FDRE #(
    .INIT(1'b0)) 
    \h_cntr_reg_reg[1] 
       (.C(clk_out1),
        .CE(\<const1> ),
        .D(\h_cntr_reg_reg[0]_i_2_n_6 ),
        .Q(\h_cntr_reg_reg_n_0_[1] ),
        .R(eqOp14_in));
  FDRE #(
    .INIT(1'b0)) 
    \h_cntr_reg_reg[2] 
       (.C(clk_out1),
        .CE(\<const1> ),
        .D(\h_cntr_reg_reg[0]_i_2_n_5 ),
        .Q(p_0_in[0]),
        .R(eqOp14_in));
  FDRE #(
    .INIT(1'b0)) 
    \h_cntr_reg_reg[3] 
       (.C(clk_out1),
        .CE(\<const1> ),
        .D(\h_cntr_reg_reg[0]_i_2_n_4 ),
        .Q(p_0_in_0),
        .R(eqOp14_in));
  FDRE #(
    .INIT(1'b0)) 
    \h_cntr_reg_reg[4] 
       (.C(clk_out1),
        .CE(\<const1> ),
        .D(\h_cntr_reg_reg[4]_i_1_n_7 ),
        .Q(p_0_in[2]),
        .R(eqOp14_in));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \h_cntr_reg_reg[4]_i_1 
       (.CI(\h_cntr_reg_reg[0]_i_2_n_0 ),
        .CO({\h_cntr_reg_reg[4]_i_1_n_0 ,\NLW_h_cntr_reg_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\h_cntr_reg_reg[4]_i_1_n_4 ,\h_cntr_reg_reg[4]_i_1_n_5 ,\h_cntr_reg_reg[4]_i_1_n_6 ,\h_cntr_reg_reg[4]_i_1_n_7 }),
        .S({p_0_in3_in,\h_cntr_reg_reg_n_0_[6] ,p_0_in[3:2]}));
  FDRE #(
    .INIT(1'b0)) 
    \h_cntr_reg_reg[5] 
       (.C(clk_out1),
        .CE(\<const1> ),
        .D(\h_cntr_reg_reg[4]_i_1_n_6 ),
        .Q(p_0_in[3]),
        .R(eqOp14_in));
  FDRE #(
    .INIT(1'b0)) 
    \h_cntr_reg_reg[6] 
       (.C(clk_out1),
        .CE(\<const1> ),
        .D(\h_cntr_reg_reg[4]_i_1_n_5 ),
        .Q(\h_cntr_reg_reg_n_0_[6] ),
        .R(eqOp14_in));
  FDRE #(
    .INIT(1'b0)) 
    \h_cntr_reg_reg[7] 
       (.C(clk_out1),
        .CE(\<const1> ),
        .D(\h_cntr_reg_reg[4]_i_1_n_4 ),
        .Q(p_0_in3_in),
        .R(eqOp14_in));
  FDRE #(
    .INIT(1'b0)) 
    \h_cntr_reg_reg[8] 
       (.C(clk_out1),
        .CE(\<const1> ),
        .D(\h_cntr_reg_reg[8]_i_1_n_7 ),
        .Q(p_0_in7_in),
        .R(eqOp14_in));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \h_cntr_reg_reg[8]_i_1 
       (.CI(\h_cntr_reg_reg[4]_i_1_n_0 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\h_cntr_reg_reg[8]_i_1_n_4 ,\h_cntr_reg_reg[8]_i_1_n_5 ,\h_cntr_reg_reg[8]_i_1_n_6 ,\h_cntr_reg_reg[8]_i_1_n_7 }),
        .S({\h_cntr_reg_reg_n_0_[11] ,\h_cntr_reg_reg_n_0_[10] ,\h_cntr_reg_reg_n_0_[9] ,p_0_in7_in}));
  FDRE #(
    .INIT(1'b0)) 
    \h_cntr_reg_reg[9] 
       (.C(clk_out1),
        .CE(\<const1> ),
        .D(\h_cntr_reg_reg[8]_i_1_n_6 ),
        .Q(\h_cntr_reg_reg_n_0_[9] ),
        .R(eqOp14_in));
  FDRE #(
    .INIT(1'b1)) 
    h_sync_dly_reg_reg
       (.C(clk_out1),
        .CE(\<const1> ),
        .D(h_sync_reg),
        .Q(VGA_HS_O),
        .R(\<const0> ));
  LUT2 #(
    .INIT(4'h7)) 
    h_sync_reg_i_1
       (.I0(geqOp12_in),
        .I1(ltOp11_in),
        .O(h_sync_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    h_sync_reg_reg
       (.C(clk_out1),
        .CE(\<const1> ),
        .D(h_sync_reg_i_1_n_0),
        .Q(h_sync_reg),
        .R(\<const0> ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 ltOp__5_carry
       (.CI(\<const0> ),
        .CO({ltOp__5_carry_n_0,NLW_ltOp__5_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(\<const0> ),
        .DI({ltOp__5_carry_i_1_n_0,ltOp__5_carry_i_2_n_0,ltOp__5_carry_i_3_n_0,ltOp__5_carry_i_4_n_0}),
        .S({ltOp__5_carry_i_5_n_0,ltOp__5_carry_i_6_n_0,ltOp__5_carry_i_7_n_0,ltOp__5_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 ltOp__5_carry__0
       (.CI(ltOp__5_carry_n_0),
        .CO({ltOp10_in,NLW_ltOp__5_carry__0_CO_UNCONNECTED[0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,ltOp__5_carry__0_i_1_n_0}),
        .S({\<const0> ,\<const0> ,ltOp__5_carry__0_i_2_n_0,ltOp__5_carry__0_i_3_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    ltOp__5_carry__0_i_1
       (.I0(v_cntr_reg_reg[8]),
        .I1(v_cntr_reg_reg[9]),
        .O(ltOp__5_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ltOp__5_carry__0_i_2
       (.I0(v_cntr_reg_reg[10]),
        .I1(v_cntr_reg_reg[11]),
        .O(ltOp__5_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    ltOp__5_carry__0_i_3
       (.I0(v_cntr_reg_reg[8]),
        .I1(v_cntr_reg_reg[9]),
        .O(ltOp__5_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    ltOp__5_carry_i_1
       (.I0(v_cntr_reg_reg[6]),
        .I1(v_cntr_reg_reg[7]),
        .O(ltOp__5_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    ltOp__5_carry_i_2
       (.I0(v_cntr_reg_reg[5]),
        .O(ltOp__5_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    ltOp__5_carry_i_3
       (.I0(v_cntr_reg_reg[3]),
        .O(ltOp__5_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    ltOp__5_carry_i_4
       (.I0(v_cntr_reg_reg[0]),
        .I1(v_cntr_reg_reg[1]),
        .O(ltOp__5_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    ltOp__5_carry_i_5
       (.I0(v_cntr_reg_reg[6]),
        .I1(v_cntr_reg_reg[7]),
        .O(ltOp__5_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    ltOp__5_carry_i_6
       (.I0(v_cntr_reg_reg[5]),
        .I1(v_cntr_reg_reg[4]),
        .O(ltOp__5_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    ltOp__5_carry_i_7
       (.I0(v_cntr_reg_reg[3]),
        .I1(v_cntr_reg_reg[2]),
        .O(ltOp__5_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    ltOp__5_carry_i_8
       (.I0(v_cntr_reg_reg[0]),
        .I1(v_cntr_reg_reg[1]),
        .O(ltOp__5_carry_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 ltOp_carry
       (.CI(\<const0> ),
        .CO({ltOp_carry_n_0,NLW_ltOp_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(\<const0> ),
        .DI({ltOp_carry_i_1_n_0,ltOp_carry_i_2_n_0,ltOp_carry_i_3_n_0,ltOp_carry_i_4_n_0}),
        .S({ltOp_carry_i_5_n_0,ltOp_carry_i_6_n_0,ltOp_carry_i_7_n_0,ltOp_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 ltOp_carry__0
       (.CI(ltOp_carry_n_0),
        .CO({ltOp11_in,NLW_ltOp_carry__0_CO_UNCONNECTED[0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,ltOp_carry__0_i_1_n_0}),
        .S({\<const0> ,\<const0> ,ltOp_carry__0_i_2_n_0,ltOp_carry__0_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    ltOp_carry__0_i_1
       (.I0(\h_cntr_reg_reg_n_0_[9] ),
        .O(ltOp_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ltOp_carry__0_i_2
       (.I0(\h_cntr_reg_reg_n_0_[10] ),
        .I1(\h_cntr_reg_reg_n_0_[11] ),
        .O(ltOp_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    ltOp_carry__0_i_3
       (.I0(\h_cntr_reg_reg_n_0_[9] ),
        .I1(p_0_in7_in),
        .O(ltOp_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    ltOp_carry_i_1
       (.I0(\h_cntr_reg_reg_n_0_[6] ),
        .I1(p_0_in3_in),
        .O(ltOp_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    ltOp_carry_i_2
       (.I0(p_0_in[3]),
        .O(ltOp_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    ltOp_carry_i_3
       (.I0(p_0_in[0]),
        .I1(p_0_in_0),
        .O(ltOp_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    ltOp_carry_i_4
       (.I0(\h_cntr_reg_reg_n_0_[0] ),
        .I1(\h_cntr_reg_reg_n_0_[1] ),
        .O(ltOp_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    ltOp_carry_i_5
       (.I0(\h_cntr_reg_reg_n_0_[6] ),
        .I1(p_0_in3_in),
        .O(ltOp_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    ltOp_carry_i_6
       (.I0(p_0_in[3]),
        .I1(p_0_in[2]),
        .O(ltOp_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    ltOp_carry_i_7
       (.I0(p_0_in[0]),
        .I1(p_0_in_0),
        .O(ltOp_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    ltOp_carry_i_8
       (.I0(\h_cntr_reg_reg_n_0_[1] ),
        .I1(\h_cntr_reg_reg_n_0_[0] ),
        .O(ltOp_carry_i_8_n_0));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \v_cntr_reg[0]_i_1 
       (.I0(eqOp14_in),
        .I1(\v_cntr_reg[0]_i_3_n_0 ),
        .I2(v_cntr_reg_reg[10]),
        .I3(v_cntr_reg_reg[11]),
        .I4(v_cntr_reg_reg[8]),
        .I5(v_cntr_reg_reg[1]),
        .O(v_cntr_reg0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \v_cntr_reg[0]_i_3 
       (.I0(v_cntr_reg_reg[5]),
        .I1(v_cntr_reg_reg[4]),
        .I2(v_cntr_reg_reg[7]),
        .I3(v_cntr_reg_reg[6]),
        .I4(\v_cntr_reg[0]_i_5_n_0 ),
        .O(\v_cntr_reg[0]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \v_cntr_reg[0]_i_4 
       (.I0(v_cntr_reg_reg[0]),
        .O(\v_cntr_reg[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \v_cntr_reg[0]_i_5 
       (.I0(v_cntr_reg_reg[9]),
        .I1(v_cntr_reg_reg[0]),
        .I2(v_cntr_reg_reg[3]),
        .I3(v_cntr_reg_reg[2]),
        .O(\v_cntr_reg[0]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_cntr_reg_reg[0] 
       (.C(clk_out1),
        .CE(eqOp14_in),
        .D(\v_cntr_reg_reg[0]_i_2_n_7 ),
        .Q(v_cntr_reg_reg[0]),
        .R(v_cntr_reg0));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \v_cntr_reg_reg[0]_i_2 
       (.CI(\<const0> ),
        .CO({\v_cntr_reg_reg[0]_i_2_n_0 ,\NLW_v_cntr_reg_reg[0]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const1> }),
        .O({\v_cntr_reg_reg[0]_i_2_n_4 ,\v_cntr_reg_reg[0]_i_2_n_5 ,\v_cntr_reg_reg[0]_i_2_n_6 ,\v_cntr_reg_reg[0]_i_2_n_7 }),
        .S({v_cntr_reg_reg[3:1],\v_cntr_reg[0]_i_4_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \v_cntr_reg_reg[10] 
       (.C(clk_out1),
        .CE(eqOp14_in),
        .D(\v_cntr_reg_reg[8]_i_1_n_5 ),
        .Q(v_cntr_reg_reg[10]),
        .R(v_cntr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \v_cntr_reg_reg[11] 
       (.C(clk_out1),
        .CE(eqOp14_in),
        .D(\v_cntr_reg_reg[8]_i_1_n_4 ),
        .Q(v_cntr_reg_reg[11]),
        .R(v_cntr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \v_cntr_reg_reg[1] 
       (.C(clk_out1),
        .CE(eqOp14_in),
        .D(\v_cntr_reg_reg[0]_i_2_n_6 ),
        .Q(v_cntr_reg_reg[1]),
        .R(v_cntr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \v_cntr_reg_reg[2] 
       (.C(clk_out1),
        .CE(eqOp14_in),
        .D(\v_cntr_reg_reg[0]_i_2_n_5 ),
        .Q(v_cntr_reg_reg[2]),
        .R(v_cntr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \v_cntr_reg_reg[3] 
       (.C(clk_out1),
        .CE(eqOp14_in),
        .D(\v_cntr_reg_reg[0]_i_2_n_4 ),
        .Q(v_cntr_reg_reg[3]),
        .R(v_cntr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \v_cntr_reg_reg[4] 
       (.C(clk_out1),
        .CE(eqOp14_in),
        .D(\v_cntr_reg_reg[4]_i_1_n_7 ),
        .Q(v_cntr_reg_reg[4]),
        .R(v_cntr_reg0));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \v_cntr_reg_reg[4]_i_1 
       (.CI(\v_cntr_reg_reg[0]_i_2_n_0 ),
        .CO({\v_cntr_reg_reg[4]_i_1_n_0 ,\NLW_v_cntr_reg_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\v_cntr_reg_reg[4]_i_1_n_4 ,\v_cntr_reg_reg[4]_i_1_n_5 ,\v_cntr_reg_reg[4]_i_1_n_6 ,\v_cntr_reg_reg[4]_i_1_n_7 }),
        .S(v_cntr_reg_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \v_cntr_reg_reg[5] 
       (.C(clk_out1),
        .CE(eqOp14_in),
        .D(\v_cntr_reg_reg[4]_i_1_n_6 ),
        .Q(v_cntr_reg_reg[5]),
        .R(v_cntr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \v_cntr_reg_reg[6] 
       (.C(clk_out1),
        .CE(eqOp14_in),
        .D(\v_cntr_reg_reg[4]_i_1_n_5 ),
        .Q(v_cntr_reg_reg[6]),
        .R(v_cntr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \v_cntr_reg_reg[7] 
       (.C(clk_out1),
        .CE(eqOp14_in),
        .D(\v_cntr_reg_reg[4]_i_1_n_4 ),
        .Q(v_cntr_reg_reg[7]),
        .R(v_cntr_reg0));
  FDRE #(
    .INIT(1'b0)) 
    \v_cntr_reg_reg[8] 
       (.C(clk_out1),
        .CE(eqOp14_in),
        .D(\v_cntr_reg_reg[8]_i_1_n_7 ),
        .Q(v_cntr_reg_reg[8]),
        .R(v_cntr_reg0));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \v_cntr_reg_reg[8]_i_1 
       (.CI(\v_cntr_reg_reg[4]_i_1_n_0 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\v_cntr_reg_reg[8]_i_1_n_4 ,\v_cntr_reg_reg[8]_i_1_n_5 ,\v_cntr_reg_reg[8]_i_1_n_6 ,\v_cntr_reg_reg[8]_i_1_n_7 }),
        .S(v_cntr_reg_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \v_cntr_reg_reg[9] 
       (.C(clk_out1),
        .CE(eqOp14_in),
        .D(\v_cntr_reg_reg[8]_i_1_n_6 ),
        .Q(v_cntr_reg_reg[9]),
        .R(v_cntr_reg0));
  FDRE #(
    .INIT(1'b1)) 
    v_sync_dly_reg_reg
       (.C(clk_out1),
        .CE(\<const1> ),
        .D(v_sync_reg),
        .Q(VGA_VS_O),
        .R(\<const0> ));
  LUT2 #(
    .INIT(4'h7)) 
    v_sync_reg_i_1
       (.I0(geqOp),
        .I1(ltOp10_in),
        .O(v_sync_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    v_sync_reg_reg
       (.C(clk_out1),
        .CE(\<const1> ),
        .D(v_sync_reg_i_1_n_0),
        .Q(v_sync_reg),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \vga_blue_reg[0]_i_1 
       (.I0(p_0_in[0]),
        .I1(ltOp),
        .I2(ltOp6_in),
        .I3(\h_cntr_reg_reg_n_0_[6] ),
        .I4(ltOp24_in),
        .I5(ltOp23_in),
        .O(\vga_blue_reg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \vga_blue_reg[1]_i_1 
       (.I0(p_0_in_0),
        .I1(ltOp),
        .I2(ltOp6_in),
        .I3(\h_cntr_reg_reg_n_0_[6] ),
        .I4(ltOp24_in),
        .I5(ltOp23_in),
        .O(\vga_blue_reg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \vga_blue_reg[2]_i_1 
       (.I0(p_0_in[2]),
        .I1(ltOp),
        .I2(ltOp6_in),
        .I3(\h_cntr_reg_reg_n_0_[6] ),
        .I4(ltOp24_in),
        .I5(ltOp23_in),
        .O(\vga_blue_reg[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAAEAAA)) 
    \vga_blue_reg[3]_i_1 
       (.I0(vga_red0__5),
        .I1(ltOp6_in),
        .I2(ltOp24_in),
        .I3(ltOp23_in),
        .I4(\vga_red_reg[3]_i_7_n_0 ),
        .I5(vga_blue1__1),
        .O(\vga_blue_reg[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \vga_blue_reg[3]_i_2 
       (.I0(p_0_in[3]),
        .I1(ltOp),
        .I2(ltOp6_in),
        .I3(\h_cntr_reg_reg_n_0_[6] ),
        .I4(ltOp24_in),
        .I5(ltOp23_in),
        .O(\vga_blue_reg[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \vga_blue_reg[3]_i_3 
       (.I0(ltOp23_in),
        .I1(ltOp24_in),
        .I2(\h_cntr_reg_reg_n_0_[6] ),
        .I3(ltOp6_in),
        .I4(ltOp),
        .O(vga_blue1__1));
  FDSE #(
    .INIT(1'b0)) 
    \vga_blue_reg_reg[0] 
       (.C(clk_out1),
        .CE(\<const1> ),
        .D(\vga_blue_reg[0]_i_1_n_0 ),
        .Q(vga_blue_OBUF[0]),
        .S(\vga_blue_reg[3]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \vga_blue_reg_reg[1] 
       (.C(clk_out1),
        .CE(\<const1> ),
        .D(\vga_blue_reg[1]_i_1_n_0 ),
        .Q(vga_blue_OBUF[1]),
        .S(\vga_blue_reg[3]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \vga_blue_reg_reg[2] 
       (.C(clk_out1),
        .CE(\<const1> ),
        .D(\vga_blue_reg[2]_i_1_n_0 ),
        .Q(vga_blue_OBUF[2]),
        .S(\vga_blue_reg[3]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \vga_blue_reg_reg[3] 
       (.C(clk_out1),
        .CE(\<const1> ),
        .D(\vga_blue_reg[3]_i_2_n_0 ),
        .Q(vga_blue_OBUF[3]),
        .S(\vga_blue_reg[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \vga_green_reg[0]_i_1 
       (.I0(p_0_in[0]),
        .I1(ltOp),
        .I2(ltOp6_in),
        .I3(p_0_in3_in),
        .I4(ltOp24_in),
        .I5(ltOp23_in),
        .O(\vga_green_reg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \vga_green_reg[1]_i_1 
       (.I0(p_0_in_0),
        .I1(ltOp),
        .I2(ltOp6_in),
        .I3(p_0_in3_in),
        .I4(ltOp24_in),
        .I5(ltOp23_in),
        .O(\vga_green_reg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \vga_green_reg[2]_i_1 
       (.I0(p_0_in[2]),
        .I1(ltOp),
        .I2(ltOp6_in),
        .I3(p_0_in3_in),
        .I4(ltOp24_in),
        .I5(ltOp23_in),
        .O(\vga_green_reg[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAAEAAA)) 
    \vga_green_reg[3]_i_1 
       (.I0(vga_red0__5),
        .I1(ltOp6_in),
        .I2(ltOp24_in),
        .I3(ltOp23_in),
        .I4(\vga_red_reg[3]_i_7_n_0 ),
        .I5(vga_green1__1),
        .O(\vga_green_reg[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \vga_green_reg[3]_i_2 
       (.I0(p_0_in[3]),
        .I1(ltOp),
        .I2(ltOp6_in),
        .I3(p_0_in3_in),
        .I4(ltOp24_in),
        .I5(ltOp23_in),
        .O(\vga_green_reg[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \vga_green_reg[3]_i_3 
       (.I0(ltOp23_in),
        .I1(ltOp24_in),
        .I2(p_0_in3_in),
        .I3(ltOp6_in),
        .I4(ltOp),
        .O(vga_green1__1));
  FDSE #(
    .INIT(1'b0)) 
    \vga_green_reg_reg[0] 
       (.C(clk_out1),
        .CE(\<const1> ),
        .D(\vga_green_reg[0]_i_1_n_0 ),
        .Q(vga_green_OBUF[0]),
        .S(\vga_green_reg[3]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \vga_green_reg_reg[1] 
       (.C(clk_out1),
        .CE(\<const1> ),
        .D(\vga_green_reg[1]_i_1_n_0 ),
        .Q(vga_green_OBUF[1]),
        .S(\vga_green_reg[3]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \vga_green_reg_reg[2] 
       (.C(clk_out1),
        .CE(\<const1> ),
        .D(\vga_green_reg[2]_i_1_n_0 ),
        .Q(vga_green_OBUF[2]),
        .S(\vga_green_reg[3]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \vga_green_reg_reg[3] 
       (.C(clk_out1),
        .CE(\<const1> ),
        .D(\vga_green_reg[3]_i_2_n_0 ),
        .Q(vga_green_OBUF[3]),
        .S(\vga_green_reg[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \vga_red_reg[0]_i_1 
       (.I0(p_0_in[0]),
        .I1(ltOp),
        .I2(ltOp6_in),
        .I3(p_0_in7_in),
        .I4(ltOp24_in),
        .I5(ltOp23_in),
        .O(\vga_red_reg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \vga_red_reg[1]_i_1 
       (.I0(p_0_in_0),
        .I1(ltOp),
        .I2(ltOp6_in),
        .I3(p_0_in7_in),
        .I4(ltOp24_in),
        .I5(ltOp23_in),
        .O(\vga_red_reg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \vga_red_reg[2]_i_1 
       (.I0(p_0_in[2]),
        .I1(ltOp),
        .I2(ltOp6_in),
        .I3(p_0_in7_in),
        .I4(ltOp24_in),
        .I5(ltOp23_in),
        .O(\vga_red_reg[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAAEAAA)) 
    \vga_red_reg[3]_i_1 
       (.I0(vga_red0__5),
        .I1(ltOp6_in),
        .I2(ltOp24_in),
        .I3(ltOp23_in),
        .I4(\vga_red_reg[3]_i_7_n_0 ),
        .I5(vga_red1__1),
        .O(\vga_red_reg[3]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \vga_red_reg[3]_i_10 
       (.I0(\h_cntr_reg_reg_n_0_[9] ),
        .O(\vga_red_reg[3]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \vga_red_reg[3]_i_11 
       (.I0(\h_cntr_reg_reg_n_0_[10] ),
        .I1(\h_cntr_reg_reg_n_0_[11] ),
        .O(\vga_red_reg[3]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \vga_red_reg[3]_i_12 
       (.I0(\h_cntr_reg_reg_n_0_[9] ),
        .I1(p_0_in7_in),
        .O(\vga_red_reg[3]_i_12_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \vga_red_reg[3]_i_13 
       (.I0(\h_cntr_reg_reg_n_0_[9] ),
        .O(\vga_red_reg[3]_i_13_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \vga_red_reg[3]_i_14 
       (.I0(p_0_in3_in),
        .O(\vga_red_reg[3]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \vga_red_reg[3]_i_15 
       (.I0(\h_cntr_reg_reg_n_0_[10] ),
        .I1(\h_cntr_reg_reg_n_0_[11] ),
        .O(\vga_red_reg[3]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \vga_red_reg[3]_i_16 
       (.I0(\h_cntr_reg_reg_n_0_[9] ),
        .I1(p_0_in7_in),
        .O(\vga_red_reg[3]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \vga_red_reg[3]_i_17 
       (.I0(p_0_in3_in),
        .I1(\h_cntr_reg_reg_n_0_[6] ),
        .O(\vga_red_reg[3]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \vga_red_reg[3]_i_18 
       (.I0(v_cntr_reg_reg[8]),
        .I1(v_cntr_reg_reg[9]),
        .O(\vga_red_reg[3]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \vga_red_reg[3]_i_19 
       (.I0(v_cntr_reg_reg[6]),
        .I1(v_cntr_reg_reg[7]),
        .O(\vga_red_reg[3]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \vga_red_reg[3]_i_2 
       (.I0(p_0_in[3]),
        .I1(ltOp),
        .I2(ltOp6_in),
        .I3(p_0_in7_in),
        .I4(ltOp24_in),
        .I5(ltOp23_in),
        .O(\vga_red_reg[3]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \vga_red_reg[3]_i_20 
       (.I0(v_cntr_reg_reg[5]),
        .O(\vga_red_reg[3]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \vga_red_reg[3]_i_21 
       (.I0(v_cntr_reg_reg[10]),
        .I1(v_cntr_reg_reg[11]),
        .O(\vga_red_reg[3]_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \vga_red_reg[3]_i_22 
       (.I0(v_cntr_reg_reg[8]),
        .I1(v_cntr_reg_reg[9]),
        .O(\vga_red_reg[3]_i_22_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \vga_red_reg[3]_i_23 
       (.I0(v_cntr_reg_reg[6]),
        .I1(v_cntr_reg_reg[7]),
        .O(\vga_red_reg[3]_i_23_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \vga_red_reg[3]_i_24 
       (.I0(v_cntr_reg_reg[5]),
        .I1(v_cntr_reg_reg[4]),
        .O(\vga_red_reg[3]_i_24_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \vga_red_reg[3]_i_25 
       (.I0(v_cntr_reg_reg[8]),
        .I1(v_cntr_reg_reg[9]),
        .O(\vga_red_reg[3]_i_25_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \vga_red_reg[3]_i_26 
       (.I0(v_cntr_reg_reg[10]),
        .I1(v_cntr_reg_reg[11]),
        .O(\vga_red_reg[3]_i_26_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \vga_red_reg[3]_i_27 
       (.I0(v_cntr_reg_reg[8]),
        .I1(v_cntr_reg_reg[9]),
        .O(\vga_red_reg[3]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h0000888000000800)) 
    \vga_red_reg[3]_i_3 
       (.I0(ltOp23_in),
        .I1(ltOp24_in),
        .I2(v_cntr_reg_reg[8]),
        .I3(v_cntr_reg_reg[3]),
        .I4(ltOp6_in),
        .I5(p_0_in_0),
        .O(vga_red0__5));
  LUT5 #(
    .INIT(32'hFFFF1000)) 
    \vga_red_reg[3]_i_7 
       (.I0(__23_carry__1_n_0),
        .I1(_carry__1_n_0),
        .I2(geqOp28_in),
        .I3(geqOp27_in),
        .I4(ltOp),
        .O(\vga_red_reg[3]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \vga_red_reg[3]_i_8 
       (.I0(ltOp23_in),
        .I1(ltOp24_in),
        .I2(p_0_in7_in),
        .I3(ltOp6_in),
        .I4(ltOp),
        .O(vga_red1__1));
  FDSE #(
    .INIT(1'b0)) 
    \vga_red_reg_reg[0] 
       (.C(clk_out1),
        .CE(\<const1> ),
        .D(\vga_red_reg[0]_i_1_n_0 ),
        .Q(vga_red_OBUF[0]),
        .S(\vga_red_reg[3]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \vga_red_reg_reg[1] 
       (.C(clk_out1),
        .CE(\<const1> ),
        .D(\vga_red_reg[1]_i_1_n_0 ),
        .Q(vga_red_OBUF[1]),
        .S(\vga_red_reg[3]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \vga_red_reg_reg[2] 
       (.C(clk_out1),
        .CE(\<const1> ),
        .D(\vga_red_reg[2]_i_1_n_0 ),
        .Q(vga_red_OBUF[2]),
        .S(\vga_red_reg[3]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \vga_red_reg_reg[3] 
       (.C(clk_out1),
        .CE(\<const1> ),
        .D(\vga_red_reg[3]_i_2_n_0 ),
        .Q(vga_red_OBUF[3]),
        .S(\vga_red_reg[3]_i_1_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \vga_red_reg_reg[3]_i_4 
       (.CI(\<const0> ),
        .CO({ltOp6_in,\NLW_vga_red_reg_reg[3]_i_4_CO_UNCONNECTED [0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\vga_red_reg[3]_i_10_n_0 }),
        .S({\<const0> ,\<const0> ,\vga_red_reg[3]_i_11_n_0 ,\vga_red_reg[3]_i_12_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \vga_red_reg_reg[3]_i_5 
       (.CI(\<const0> ),
        .CO({ltOp24_in,\NLW_vga_red_reg_reg[3]_i_5_CO_UNCONNECTED [1:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\vga_red_reg[3]_i_13_n_0 ,\vga_red_reg[3]_i_14_n_0 }),
        .S({\<const0> ,\vga_red_reg[3]_i_15_n_0 ,\vga_red_reg[3]_i_16_n_0 ,\vga_red_reg[3]_i_17_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \vga_red_reg_reg[3]_i_6 
       (.CI(\<const0> ),
        .CO({ltOp23_in,\NLW_vga_red_reg_reg[3]_i_6_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\vga_red_reg[3]_i_18_n_0 ,\vga_red_reg[3]_i_19_n_0 ,\vga_red_reg[3]_i_20_n_0 }),
        .S({\vga_red_reg[3]_i_21_n_0 ,\vga_red_reg[3]_i_22_n_0 ,\vga_red_reg[3]_i_23_n_0 ,\vga_red_reg[3]_i_24_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \vga_red_reg_reg[3]_i_9 
       (.CI(\<const0> ),
        .CO({ltOp,\NLW_vga_red_reg_reg[3]_i_9_CO_UNCONNECTED [0]}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\vga_red_reg[3]_i_25_n_0 }),
        .S({\<const0> ,\<const0> ,\vga_red_reg[3]_i_26_n_0 ,\vga_red_reg[3]_i_27_n_0 }));
endmodule
