// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Wed Aug 25 11:55:57 2021
// Host        : marco running 64-bit Ubuntu 21.04
// Command     : write_verilog -force ./output/top_impl_netlist.v
// Design      : top
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module debounce
   (c1,
    c2,
    \c2_reg[1]_0 ,
    btn_IBUF,
    clk_IBUF_BUFG);
  output [0:0]c1;
  output [0:0]c2;
  output \c2_reg[1]_0 ;
  input [0:0]btn_IBUF;
  input clk_IBUF_BUFG;

  wire \<const0> ;
  wire \<const1> ;
  wire [0:0]btn_IBUF;
  wire [1:1]c0;
  wire [0:0]c1;
  wire [0:0]c2;
  wire \c2_reg[1]_0 ;
  wire clk_IBUF_BUFG;

  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_state_reg[0]_i_2 
       (.I0(c2),
        .I1(c1),
        .O(\c2_reg[1]_0 ));
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  FDRE \c0_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(btn_IBUF),
        .Q(c0),
        .R(\<const0> ));
  FDRE \c1_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(c0),
        .Q(c1),
        .R(\<const0> ));
  FDRE \c2_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\<const1> ),
        .D(c1),
        .Q(c2),
        .R(\<const0> ));
endmodule

(* ECO_CHECKSUM = "59e712d4" *) (* POWER_OPT_BRAM_CDC = "0" *) (* POWER_OPT_BRAM_SR_ADDR = "0" *) 
(* POWER_OPT_LOOPED_NET_PERCENTAGE = "0" *) 
(* STRUCTURAL_NETLIST = "yes" *)
module top
   (clk,
    btn,
    led,
    uart_rxd_out);
  input clk;
  input [3:0]btn;
  output [3:0]led;
  output uart_rxd_out;

  wire \<const0> ;
  wire [3:0]btn;
  wire [1:1]btn_IBUF;
  wire [1:1]c1;
  wire [1:1]c2;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire debouncer_n_2;
  wire [3:0]led;
  wire [3:3]led_OBUF;
  wire uart_rxd_out;
  wire uart_rxd_out_OBUF;

  GND GND
       (.G(\<const0> ));
  IBUF \btn_IBUF[1]_inst 
       (.I(btn[1]),
        .O(btn_IBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  debounce debouncer
       (.btn_IBUF(btn_IBUF),
        .c1(c1),
        .c2(c2),
        .\c2_reg[1]_0 (debouncer_n_2),
        .clk_IBUF_BUFG(clk_IBUF_BUFG));
  OBUF \led_OBUF[0]_inst 
       (.I(\<const0> ),
        .O(led[0]));
  OBUF \led_OBUF[1]_inst 
       (.I(\<const0> ),
        .O(led[1]));
  OBUF \led_OBUF[2]_inst 
       (.I(\<const0> ),
        .O(led[2]));
  OBUF \led_OBUF[3]_inst 
       (.I(led_OBUF),
        .O(led[3]));
  OBUF uart_rxd_out_OBUF_inst
       (.I(uart_rxd_out_OBUF),
        .O(uart_rxd_out));
  uart_tx_controller uart_transmit
       (.\FSM_sequential_state_reg_reg[0]_0 (debouncer_n_2),
        .c1(c1),
        .c2(c2),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .led_OBUF(led_OBUF),
        .uart_rxd_out_OBUF(uart_rxd_out_OBUF));
endmodule

module uart_tx_controller
   (led_OBUF,
    uart_rxd_out_OBUF,
    clk_IBUF_BUFG,
    c2,
    c1,
    \FSM_sequential_state_reg_reg[0]_0 );
  output [0:0]led_OBUF;
  output uart_rxd_out_OBUF;
  input clk_IBUF_BUFG;
  input [0:0]c2;
  input [0:0]c1;
  input \FSM_sequential_state_reg_reg[0]_0 ;

  wire \<const0> ;
  wire \<const1> ;
  wire \FSM_sequential_state_reg[0]_i_1_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_1_n_0 ;
  wire \FSM_sequential_state_reg[2]_i_1_n_0 ;
  wire \FSM_sequential_state_reg[2]_i_2_n_0 ;
  wire \FSM_sequential_state_reg[2]_i_3_n_0 ;
  wire \FSM_sequential_state_reg[2]_i_4_n_0 ;
  wire \FSM_sequential_state_reg[2]_i_5_n_0 ;
  wire \FSM_sequential_state_reg[2]_i_6_n_0 ;
  wire \FSM_sequential_state_reg[2]_i_7_n_0 ;
  wire \FSM_sequential_state_reg_reg[0]_0 ;
  wire \FSM_sequential_state_reg_reg[0]_CE_cooolgate_en_sig_2 ;
  wire [2:0]bit_index_reg;
  wire \bit_index_reg[0]_i_1_n_0 ;
  wire \bit_index_reg[1]_i_1_n_0 ;
  wire \bit_index_reg[2]_i_1_n_0 ;
  wire \bit_index_reg_reg[0]_CE_cooolgate_en_sig_1 ;
  wire [0:0]c1;
  wire [0:0]c2;
  wire clk_IBUF_BUFG;
  wire \clk_cnt_reg[0]_i_10_n_0 ;
  wire \clk_cnt_reg[0]_i_11_n_0 ;
  wire \clk_cnt_reg[0]_i_1_n_0 ;
  wire \clk_cnt_reg[0]_i_3_n_0 ;
  wire \clk_cnt_reg[0]_i_4_n_0 ;
  wire \clk_cnt_reg[0]_i_5_n_0 ;
  wire \clk_cnt_reg[0]_i_6_n_0 ;
  wire \clk_cnt_reg[0]_i_7_n_0 ;
  wire \clk_cnt_reg[0]_i_8_n_0 ;
  wire \clk_cnt_reg[0]_i_9_n_0 ;
  wire \clk_cnt_reg[12]_i_2_n_0 ;
  wire \clk_cnt_reg[12]_i_3_n_0 ;
  wire \clk_cnt_reg[12]_i_4_n_0 ;
  wire \clk_cnt_reg[4]_i_2_n_0 ;
  wire \clk_cnt_reg[4]_i_3_n_0 ;
  wire \clk_cnt_reg[4]_i_4_n_0 ;
  wire \clk_cnt_reg[4]_i_5_n_0 ;
  wire \clk_cnt_reg[4]_i_6_n_0 ;
  wire \clk_cnt_reg[4]_i_7_n_0 ;
  wire \clk_cnt_reg[4]_i_8_n_0 ;
  wire \clk_cnt_reg[4]_i_9_n_0 ;
  wire \clk_cnt_reg[8]_i_2_n_0 ;
  wire \clk_cnt_reg[8]_i_3_n_0 ;
  wire \clk_cnt_reg[8]_i_4_n_0 ;
  wire \clk_cnt_reg[8]_i_5_n_0 ;
  wire \clk_cnt_reg[8]_i_6_n_0 ;
  wire \clk_cnt_reg[8]_i_7_n_0 ;
  wire \clk_cnt_reg[8]_i_8_n_0 ;
  wire \clk_cnt_reg[8]_i_9_n_0 ;
  wire [13:0]clk_cnt_reg_reg;
  wire \clk_cnt_reg_reg[0]_i_2_n_0 ;
  wire \clk_cnt_reg_reg[0]_i_2_n_4 ;
  wire \clk_cnt_reg_reg[0]_i_2_n_5 ;
  wire \clk_cnt_reg_reg[0]_i_2_n_6 ;
  wire \clk_cnt_reg_reg[0]_i_2_n_7 ;
  wire \clk_cnt_reg_reg[12]_i_1_n_6 ;
  wire \clk_cnt_reg_reg[12]_i_1_n_7 ;
  wire \clk_cnt_reg_reg[4]_i_1_n_0 ;
  wire \clk_cnt_reg_reg[4]_i_1_n_4 ;
  wire \clk_cnt_reg_reg[4]_i_1_n_5 ;
  wire \clk_cnt_reg_reg[4]_i_1_n_6 ;
  wire \clk_cnt_reg_reg[4]_i_1_n_7 ;
  wire \clk_cnt_reg_reg[8]_i_1_n_0 ;
  wire \clk_cnt_reg_reg[8]_i_1_n_4 ;
  wire \clk_cnt_reg_reg[8]_i_1_n_5 ;
  wire \clk_cnt_reg_reg[8]_i_1_n_6 ;
  wire \clk_cnt_reg_reg[8]_i_1_n_7 ;
  wire [0:0]led_OBUF;
  wire led_reg_i_1_n_0;
  wire [2:0]state_reg;
  wire [1:1]tx_data_reg;
  wire \tx_data_reg[1]_i_1_n_0 ;
  wire \tx_data_reg_reg[1]_CE_cooolgate_en_sig_3 ;
  wire uart_rxd_out_OBUF;
  wire uart_rxd_out_OBUF_inst_i_2_n_0;
  wire [3:0]\NLW_clk_cnt_reg_reg[0]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_clk_cnt_reg_reg[4]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_clk_cnt_reg_reg[8]_i_1_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h3308330F33083300)) 
    \FSM_sequential_state_reg[0]_i_1 
       (.I0(\FSM_sequential_state_reg[2]_i_2_n_0 ),
        .I1(\FSM_sequential_state_reg[2]_i_3_n_0 ),
        .I2(state_reg[2]),
        .I3(state_reg[0]),
        .I4(state_reg[1]),
        .I5(\FSM_sequential_state_reg_reg[0]_0 ),
        .O(\FSM_sequential_state_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h337F0C00)) 
    \FSM_sequential_state_reg[1]_i_1 
       (.I0(\FSM_sequential_state_reg[2]_i_2_n_0 ),
        .I1(\FSM_sequential_state_reg[2]_i_3_n_0 ),
        .I2(state_reg[2]),
        .I3(state_reg[0]),
        .I4(state_reg[1]),
        .O(\FSM_sequential_state_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h3C703000)) 
    \FSM_sequential_state_reg[2]_i_1 
       (.I0(\FSM_sequential_state_reg[2]_i_2_n_0 ),
        .I1(\FSM_sequential_state_reg[2]_i_3_n_0 ),
        .I2(state_reg[2]),
        .I3(state_reg[0]),
        .I4(state_reg[1]),
        .O(\FSM_sequential_state_reg[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \FSM_sequential_state_reg[2]_i_2 
       (.I0(bit_index_reg[2]),
        .I1(bit_index_reg[1]),
        .I2(bit_index_reg[0]),
        .O(\FSM_sequential_state_reg[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \FSM_sequential_state_reg[2]_i_3 
       (.I0(\FSM_sequential_state_reg[2]_i_4_n_0 ),
        .I1(\FSM_sequential_state_reg[2]_i_5_n_0 ),
        .I2(\FSM_sequential_state_reg[2]_i_6_n_0 ),
        .I3(\FSM_sequential_state_reg[2]_i_7_n_0 ),
        .I4(state_reg[2]),
        .O(\FSM_sequential_state_reg[2]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \FSM_sequential_state_reg[2]_i_4 
       (.I0(clk_cnt_reg_reg[13]),
        .I1(clk_cnt_reg_reg[12]),
        .I2(clk_cnt_reg_reg[11]),
        .I3(clk_cnt_reg_reg[10]),
        .O(\FSM_sequential_state_reg[2]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \FSM_sequential_state_reg[2]_i_5 
       (.I0(clk_cnt_reg_reg[8]),
        .I1(clk_cnt_reg_reg[7]),
        .I2(clk_cnt_reg_reg[5]),
        .I3(clk_cnt_reg_reg[4]),
        .O(\FSM_sequential_state_reg[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000230000002323)) 
    \FSM_sequential_state_reg[2]_i_6 
       (.I0(clk_cnt_reg_reg[10]),
        .I1(clk_cnt_reg_reg[11]),
        .I2(clk_cnt_reg_reg[9]),
        .I3(clk_cnt_reg_reg[7]),
        .I4(clk_cnt_reg_reg[8]),
        .I5(clk_cnt_reg_reg[6]),
        .O(\FSM_sequential_state_reg[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000023)) 
    \FSM_sequential_state_reg[2]_i_7 
       (.I0(clk_cnt_reg_reg[4]),
        .I1(clk_cnt_reg_reg[5]),
        .I2(clk_cnt_reg_reg[3]),
        .I3(clk_cnt_reg_reg[0]),
        .I4(clk_cnt_reg_reg[1]),
        .I5(clk_cnt_reg_reg[2]),
        .O(\FSM_sequential_state_reg[2]_i_7_n_0 ));
  (* FSM_ENCODED_STATES = "idle:000,send_start_bit:001,send_data_bits:010,send_stop_bit:011,cleanup:100," *) 
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE \FSM_sequential_state_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(\FSM_sequential_state_reg[0]_i_1_n_0 ),
        .Q(state_reg[0]),
        .R(\<const0> ));
  LUT5 #(
    .INIT(32'hffffffc5)) 
    \FSM_sequential_state_reg_reg[0]_CE_cooolgate_en_gate_5 
       (.I0(state_reg[1]),
        .I1(\FSM_sequential_state_reg[2]_i_6_n_0 ),
        .I2(state_reg[0]),
        .I3(\FSM_sequential_state_reg[2]_i_3_n_0 ),
        .I4(c2),
        .O(\FSM_sequential_state_reg_reg[0]_CE_cooolgate_en_sig_2 ));
  (* FSM_ENCODED_STATES = "idle:000,send_start_bit:001,send_data_bits:010,send_stop_bit:011,cleanup:100," *) 
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE \FSM_sequential_state_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(\FSM_sequential_state_reg[1]_i_1_n_0 ),
        .Q(state_reg[1]),
        .R(\<const0> ));
  (* FSM_ENCODED_STATES = "idle:000,send_start_bit:001,send_data_bits:010,send_stop_bit:011,cleanup:100," *) 
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE \FSM_sequential_state_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(\FSM_sequential_state_reg[2]_i_1_n_0 ),
        .Q(state_reg[2]),
        .R(\<const0> ));
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hBF40)) 
    \bit_index_reg[0]_i_1 
       (.I0(state_reg[0]),
        .I1(state_reg[1]),
        .I2(\FSM_sequential_state_reg[2]_i_3_n_0 ),
        .I3(bit_index_reg[0]),
        .O(\bit_index_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hDFFF2000)) 
    \bit_index_reg[1]_i_1 
       (.I0(bit_index_reg[0]),
        .I1(state_reg[0]),
        .I2(state_reg[1]),
        .I3(\FSM_sequential_state_reg[2]_i_3_n_0 ),
        .I4(bit_index_reg[1]),
        .O(\bit_index_reg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFFFFF08000000)) 
    \bit_index_reg[2]_i_1 
       (.I0(bit_index_reg[1]),
        .I1(bit_index_reg[0]),
        .I2(state_reg[0]),
        .I3(state_reg[1]),
        .I4(\FSM_sequential_state_reg[2]_i_3_n_0 ),
        .I5(bit_index_reg[2]),
        .O(\bit_index_reg[2]_i_1_n_0 ));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bit_index_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\bit_index_reg_reg[0]_CE_cooolgate_en_sig_1 ),
        .D(\bit_index_reg[0]_i_1_n_0 ),
        .Q(bit_index_reg[0]),
        .R(\<const0> ));
  LUT3 #(
    .INIT(8'h20)) 
    \bit_index_reg_reg[0]_CE_cooolgate_en_gate_1 
       (.I0(state_reg[1]),
        .I1(state_reg[0]),
        .I2(\FSM_sequential_state_reg[2]_i_3_n_0 ),
        .O(\bit_index_reg_reg[0]_CE_cooolgate_en_sig_1 ));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bit_index_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\bit_index_reg_reg[0]_CE_cooolgate_en_sig_1 ),
        .D(\bit_index_reg[1]_i_1_n_0 ),
        .Q(bit_index_reg[1]),
        .R(\<const0> ));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bit_index_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\bit_index_reg_reg[0]_CE_cooolgate_en_sig_1 ),
        .D(\bit_index_reg[2]_i_1_n_0 ),
        .Q(bit_index_reg[2]),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'hFFFFFF0455555504)) 
    \clk_cnt_reg[0]_i_1 
       (.I0(state_reg[2]),
        .I1(c2),
        .I2(c1),
        .I3(state_reg[0]),
        .I4(state_reg[1]),
        .I5(\FSM_sequential_state_reg[2]_i_3_n_0 ),
        .O(\clk_cnt_reg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF557555555575)) 
    \clk_cnt_reg[0]_i_10 
       (.I0(clk_cnt_reg_reg[0]),
        .I1(state_reg[2]),
        .I2(c2),
        .I3(c1),
        .I4(\clk_cnt_reg[0]_i_11_n_0 ),
        .I5(\FSM_sequential_state_reg[2]_i_3_n_0 ),
        .O(\clk_cnt_reg[0]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \clk_cnt_reg[0]_i_11 
       (.I0(state_reg[1]),
        .I1(state_reg[0]),
        .O(\clk_cnt_reg[0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF040004)) 
    \clk_cnt_reg[0]_i_3 
       (.I0(state_reg[2]),
        .I1(c2),
        .I2(c1),
        .I3(\clk_cnt_reg[0]_i_11_n_0 ),
        .I4(\FSM_sequential_state_reg[2]_i_3_n_0 ),
        .I5(clk_cnt_reg_reg[3]),
        .O(\clk_cnt_reg[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF040004)) 
    \clk_cnt_reg[0]_i_4 
       (.I0(state_reg[2]),
        .I1(c2),
        .I2(c1),
        .I3(\clk_cnt_reg[0]_i_11_n_0 ),
        .I4(\FSM_sequential_state_reg[2]_i_3_n_0 ),
        .I5(clk_cnt_reg_reg[2]),
        .O(\clk_cnt_reg[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF040004)) 
    \clk_cnt_reg[0]_i_5 
       (.I0(state_reg[2]),
        .I1(c2),
        .I2(c1),
        .I3(\clk_cnt_reg[0]_i_11_n_0 ),
        .I4(\FSM_sequential_state_reg[2]_i_3_n_0 ),
        .I5(clk_cnt_reg_reg[1]),
        .O(\clk_cnt_reg[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF040004)) 
    \clk_cnt_reg[0]_i_6 
       (.I0(state_reg[2]),
        .I1(c2),
        .I2(c1),
        .I3(\clk_cnt_reg[0]_i_11_n_0 ),
        .I4(\FSM_sequential_state_reg[2]_i_3_n_0 ),
        .I5(clk_cnt_reg_reg[0]),
        .O(\clk_cnt_reg[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF557555555575)) 
    \clk_cnt_reg[0]_i_7 
       (.I0(clk_cnt_reg_reg[3]),
        .I1(state_reg[2]),
        .I2(c2),
        .I3(c1),
        .I4(\clk_cnt_reg[0]_i_11_n_0 ),
        .I5(\FSM_sequential_state_reg[2]_i_3_n_0 ),
        .O(\clk_cnt_reg[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF557555555575)) 
    \clk_cnt_reg[0]_i_8 
       (.I0(clk_cnt_reg_reg[2]),
        .I1(state_reg[2]),
        .I2(c2),
        .I3(c1),
        .I4(\clk_cnt_reg[0]_i_11_n_0 ),
        .I5(\FSM_sequential_state_reg[2]_i_3_n_0 ),
        .O(\clk_cnt_reg[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF557555555575)) 
    \clk_cnt_reg[0]_i_9 
       (.I0(clk_cnt_reg_reg[1]),
        .I1(state_reg[2]),
        .I2(c2),
        .I3(c1),
        .I4(\clk_cnt_reg[0]_i_11_n_0 ),
        .I5(\FSM_sequential_state_reg[2]_i_3_n_0 ),
        .O(\clk_cnt_reg[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000AA8AAAAAAA8A)) 
    \clk_cnt_reg[12]_i_2 
       (.I0(clk_cnt_reg_reg[12]),
        .I1(state_reg[2]),
        .I2(c2),
        .I3(c1),
        .I4(\clk_cnt_reg[0]_i_11_n_0 ),
        .I5(\FSM_sequential_state_reg[2]_i_3_n_0 ),
        .O(\clk_cnt_reg[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF040004FFFFFFFF)) 
    \clk_cnt_reg[12]_i_3 
       (.I0(state_reg[2]),
        .I1(c2),
        .I2(c1),
        .I3(\clk_cnt_reg[0]_i_11_n_0 ),
        .I4(\FSM_sequential_state_reg[2]_i_3_n_0 ),
        .I5(clk_cnt_reg_reg[13]),
        .O(\clk_cnt_reg[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000554555555545)) 
    \clk_cnt_reg[12]_i_4 
       (.I0(clk_cnt_reg_reg[12]),
        .I1(state_reg[2]),
        .I2(c2),
        .I3(c1),
        .I4(\clk_cnt_reg[0]_i_11_n_0 ),
        .I5(\FSM_sequential_state_reg[2]_i_3_n_0 ),
        .O(\clk_cnt_reg[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF040004)) 
    \clk_cnt_reg[4]_i_2 
       (.I0(state_reg[2]),
        .I1(c2),
        .I2(c1),
        .I3(\clk_cnt_reg[0]_i_11_n_0 ),
        .I4(\FSM_sequential_state_reg[2]_i_3_n_0 ),
        .I5(clk_cnt_reg_reg[7]),
        .O(\clk_cnt_reg[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000AA8AAAAAAA8A)) 
    \clk_cnt_reg[4]_i_3 
       (.I0(clk_cnt_reg_reg[6]),
        .I1(state_reg[2]),
        .I2(c2),
        .I3(c1),
        .I4(\clk_cnt_reg[0]_i_11_n_0 ),
        .I5(\FSM_sequential_state_reg[2]_i_3_n_0 ),
        .O(\clk_cnt_reg[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF040004)) 
    \clk_cnt_reg[4]_i_4 
       (.I0(state_reg[2]),
        .I1(c2),
        .I2(c1),
        .I3(\clk_cnt_reg[0]_i_11_n_0 ),
        .I4(\FSM_sequential_state_reg[2]_i_3_n_0 ),
        .I5(clk_cnt_reg_reg[5]),
        .O(\clk_cnt_reg[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000AA8AAAAAAA8A)) 
    \clk_cnt_reg[4]_i_5 
       (.I0(clk_cnt_reg_reg[4]),
        .I1(state_reg[2]),
        .I2(c2),
        .I3(c1),
        .I4(\clk_cnt_reg[0]_i_11_n_0 ),
        .I5(\FSM_sequential_state_reg[2]_i_3_n_0 ),
        .O(\clk_cnt_reg[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF557555555575)) 
    \clk_cnt_reg[4]_i_6 
       (.I0(clk_cnt_reg_reg[7]),
        .I1(state_reg[2]),
        .I2(c2),
        .I3(c1),
        .I4(\clk_cnt_reg[0]_i_11_n_0 ),
        .I5(\FSM_sequential_state_reg[2]_i_3_n_0 ),
        .O(\clk_cnt_reg[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000554555555545)) 
    \clk_cnt_reg[4]_i_7 
       (.I0(clk_cnt_reg_reg[6]),
        .I1(state_reg[2]),
        .I2(c2),
        .I3(c1),
        .I4(\clk_cnt_reg[0]_i_11_n_0 ),
        .I5(\FSM_sequential_state_reg[2]_i_3_n_0 ),
        .O(\clk_cnt_reg[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF557555555575)) 
    \clk_cnt_reg[4]_i_8 
       (.I0(clk_cnt_reg_reg[5]),
        .I1(state_reg[2]),
        .I2(c2),
        .I3(c1),
        .I4(\clk_cnt_reg[0]_i_11_n_0 ),
        .I5(\FSM_sequential_state_reg[2]_i_3_n_0 ),
        .O(\clk_cnt_reg[4]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000554555555545)) 
    \clk_cnt_reg[4]_i_9 
       (.I0(clk_cnt_reg_reg[4]),
        .I1(state_reg[2]),
        .I2(c2),
        .I3(c1),
        .I4(\clk_cnt_reg[0]_i_11_n_0 ),
        .I5(\FSM_sequential_state_reg[2]_i_3_n_0 ),
        .O(\clk_cnt_reg[4]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF040004)) 
    \clk_cnt_reg[8]_i_2 
       (.I0(state_reg[2]),
        .I1(c2),
        .I2(c1),
        .I3(\clk_cnt_reg[0]_i_11_n_0 ),
        .I4(\FSM_sequential_state_reg[2]_i_3_n_0 ),
        .I5(clk_cnt_reg_reg[11]),
        .O(\clk_cnt_reg[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000AA8AAAAAAA8A)) 
    \clk_cnt_reg[8]_i_3 
       (.I0(clk_cnt_reg_reg[10]),
        .I1(state_reg[2]),
        .I2(c2),
        .I3(c1),
        .I4(\clk_cnt_reg[0]_i_11_n_0 ),
        .I5(\FSM_sequential_state_reg[2]_i_3_n_0 ),
        .O(\clk_cnt_reg[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000AA8AAAAAAA8A)) 
    \clk_cnt_reg[8]_i_4 
       (.I0(clk_cnt_reg_reg[9]),
        .I1(state_reg[2]),
        .I2(c2),
        .I3(c1),
        .I4(\clk_cnt_reg[0]_i_11_n_0 ),
        .I5(\FSM_sequential_state_reg[2]_i_3_n_0 ),
        .O(\clk_cnt_reg[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000AA8AAAAAAA8A)) 
    \clk_cnt_reg[8]_i_5 
       (.I0(clk_cnt_reg_reg[8]),
        .I1(state_reg[2]),
        .I2(c2),
        .I3(c1),
        .I4(\clk_cnt_reg[0]_i_11_n_0 ),
        .I5(\FSM_sequential_state_reg[2]_i_3_n_0 ),
        .O(\clk_cnt_reg[8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF557555555575)) 
    \clk_cnt_reg[8]_i_6 
       (.I0(clk_cnt_reg_reg[11]),
        .I1(state_reg[2]),
        .I2(c2),
        .I3(c1),
        .I4(\clk_cnt_reg[0]_i_11_n_0 ),
        .I5(\FSM_sequential_state_reg[2]_i_3_n_0 ),
        .O(\clk_cnt_reg[8]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000554555555545)) 
    \clk_cnt_reg[8]_i_7 
       (.I0(clk_cnt_reg_reg[10]),
        .I1(state_reg[2]),
        .I2(c2),
        .I3(c1),
        .I4(\clk_cnt_reg[0]_i_11_n_0 ),
        .I5(\FSM_sequential_state_reg[2]_i_3_n_0 ),
        .O(\clk_cnt_reg[8]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000554555555545)) 
    \clk_cnt_reg[8]_i_8 
       (.I0(clk_cnt_reg_reg[9]),
        .I1(state_reg[2]),
        .I2(c2),
        .I3(c1),
        .I4(\clk_cnt_reg[0]_i_11_n_0 ),
        .I5(\FSM_sequential_state_reg[2]_i_3_n_0 ),
        .O(\clk_cnt_reg[8]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000554555555545)) 
    \clk_cnt_reg[8]_i_9 
       (.I0(clk_cnt_reg_reg[8]),
        .I1(state_reg[2]),
        .I2(c2),
        .I3(c1),
        .I4(\clk_cnt_reg[0]_i_11_n_0 ),
        .I5(\FSM_sequential_state_reg[2]_i_3_n_0 ),
        .O(\clk_cnt_reg[8]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_cnt_reg[0]_i_1_n_0 ),
        .D(\clk_cnt_reg_reg[0]_i_2_n_7 ),
        .Q(clk_cnt_reg_reg[0]),
        .R(\<const0> ));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \clk_cnt_reg_reg[0]_i_2 
       (.CI(\<const0> ),
        .CO({\clk_cnt_reg_reg[0]_i_2_n_0 ,\NLW_clk_cnt_reg_reg[0]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\clk_cnt_reg[0]_i_3_n_0 ,\clk_cnt_reg[0]_i_4_n_0 ,\clk_cnt_reg[0]_i_5_n_0 ,\clk_cnt_reg[0]_i_6_n_0 }),
        .O({\clk_cnt_reg_reg[0]_i_2_n_4 ,\clk_cnt_reg_reg[0]_i_2_n_5 ,\clk_cnt_reg_reg[0]_i_2_n_6 ,\clk_cnt_reg_reg[0]_i_2_n_7 }),
        .S({\clk_cnt_reg[0]_i_7_n_0 ,\clk_cnt_reg[0]_i_8_n_0 ,\clk_cnt_reg[0]_i_9_n_0 ,\clk_cnt_reg[0]_i_10_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_cnt_reg[0]_i_1_n_0 ),
        .D(\clk_cnt_reg_reg[8]_i_1_n_5 ),
        .Q(clk_cnt_reg_reg[10]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_cnt_reg[0]_i_1_n_0 ),
        .D(\clk_cnt_reg_reg[8]_i_1_n_4 ),
        .Q(clk_cnt_reg_reg[11]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_cnt_reg[0]_i_1_n_0 ),
        .D(\clk_cnt_reg_reg[12]_i_1_n_7 ),
        .Q(clk_cnt_reg_reg[12]),
        .R(\<const0> ));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \clk_cnt_reg_reg[12]_i_1 
       (.CI(\clk_cnt_reg_reg[8]_i_1_n_0 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\clk_cnt_reg[12]_i_2_n_0 }),
        .O({\clk_cnt_reg_reg[12]_i_1_n_6 ,\clk_cnt_reg_reg[12]_i_1_n_7 }),
        .S({\<const0> ,\<const0> ,\clk_cnt_reg[12]_i_3_n_0 ,\clk_cnt_reg[12]_i_4_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_cnt_reg[0]_i_1_n_0 ),
        .D(\clk_cnt_reg_reg[12]_i_1_n_6 ),
        .Q(clk_cnt_reg_reg[13]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_cnt_reg[0]_i_1_n_0 ),
        .D(\clk_cnt_reg_reg[0]_i_2_n_6 ),
        .Q(clk_cnt_reg_reg[1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_cnt_reg[0]_i_1_n_0 ),
        .D(\clk_cnt_reg_reg[0]_i_2_n_5 ),
        .Q(clk_cnt_reg_reg[2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_cnt_reg[0]_i_1_n_0 ),
        .D(\clk_cnt_reg_reg[0]_i_2_n_4 ),
        .Q(clk_cnt_reg_reg[3]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_cnt_reg[0]_i_1_n_0 ),
        .D(\clk_cnt_reg_reg[4]_i_1_n_7 ),
        .Q(clk_cnt_reg_reg[4]),
        .R(\<const0> ));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \clk_cnt_reg_reg[4]_i_1 
       (.CI(\clk_cnt_reg_reg[0]_i_2_n_0 ),
        .CO({\clk_cnt_reg_reg[4]_i_1_n_0 ,\NLW_clk_cnt_reg_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\clk_cnt_reg[4]_i_2_n_0 ,\clk_cnt_reg[4]_i_3_n_0 ,\clk_cnt_reg[4]_i_4_n_0 ,\clk_cnt_reg[4]_i_5_n_0 }),
        .O({\clk_cnt_reg_reg[4]_i_1_n_4 ,\clk_cnt_reg_reg[4]_i_1_n_5 ,\clk_cnt_reg_reg[4]_i_1_n_6 ,\clk_cnt_reg_reg[4]_i_1_n_7 }),
        .S({\clk_cnt_reg[4]_i_6_n_0 ,\clk_cnt_reg[4]_i_7_n_0 ,\clk_cnt_reg[4]_i_8_n_0 ,\clk_cnt_reg[4]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_cnt_reg[0]_i_1_n_0 ),
        .D(\clk_cnt_reg_reg[4]_i_1_n_6 ),
        .Q(clk_cnt_reg_reg[5]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_cnt_reg[0]_i_1_n_0 ),
        .D(\clk_cnt_reg_reg[4]_i_1_n_5 ),
        .Q(clk_cnt_reg_reg[6]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_cnt_reg[0]_i_1_n_0 ),
        .D(\clk_cnt_reg_reg[4]_i_1_n_4 ),
        .Q(clk_cnt_reg_reg[7]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_cnt_reg[0]_i_1_n_0 ),
        .D(\clk_cnt_reg_reg[8]_i_1_n_7 ),
        .Q(clk_cnt_reg_reg[8]),
        .R(\<const0> ));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \clk_cnt_reg_reg[8]_i_1 
       (.CI(\clk_cnt_reg_reg[4]_i_1_n_0 ),
        .CO({\clk_cnt_reg_reg[8]_i_1_n_0 ,\NLW_clk_cnt_reg_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\clk_cnt_reg[8]_i_2_n_0 ,\clk_cnt_reg[8]_i_3_n_0 ,\clk_cnt_reg[8]_i_4_n_0 ,\clk_cnt_reg[8]_i_5_n_0 }),
        .O({\clk_cnt_reg_reg[8]_i_1_n_4 ,\clk_cnt_reg_reg[8]_i_1_n_5 ,\clk_cnt_reg_reg[8]_i_1_n_6 ,\clk_cnt_reg_reg[8]_i_1_n_7 }),
        .S({\clk_cnt_reg[8]_i_6_n_0 ,\clk_cnt_reg[8]_i_7_n_0 ,\clk_cnt_reg[8]_i_8_n_0 ,\clk_cnt_reg[8]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_cnt_reg[0]_i_1_n_0 ),
        .D(\clk_cnt_reg_reg[8]_i_1_n_6 ),
        .Q(clk_cnt_reg_reg[9]),
        .R(\<const0> ));
  LUT3 #(
    .INIT(8'h02)) 
    led_reg_i_1
       (.I0(state_reg[2]),
        .I1(state_reg[0]),
        .I2(state_reg[1]),
        .O(led_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    led_reg_reg
       (.C(clk_IBUF_BUFG),
        .CE(led_reg_i_1_n_0),
        .D(\<const1> ),
        .Q(led_OBUF),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000100)) 
    \tx_data_reg[1]_i_1 
       (.I0(state_reg[1]),
        .I1(state_reg[0]),
        .I2(c1),
        .I3(c2),
        .I4(state_reg[2]),
        .I5(tx_data_reg),
        .O(\tx_data_reg[1]_i_1_n_0 ));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\tx_data_reg_reg[1]_CE_cooolgate_en_sig_3 ),
        .D(\tx_data_reg[1]_i_1_n_0 ),
        .Q(tx_data_reg),
        .R(\<const0> ));
  LUT5 #(
    .INIT(32'h00000100)) 
    \tx_data_reg_reg[1]_CE_cooolgate_en_gate_9 
       (.I0(state_reg[2]),
        .I1(state_reg[1]),
        .I2(state_reg[0]),
        .I3(c2),
        .I4(c1),
        .O(\tx_data_reg_reg[1]_CE_cooolgate_en_sig_3 ));
  LUT4 #(
    .INIT(16'hABEB)) 
    uart_rxd_out_OBUF_inst_i_1
       (.I0(uart_rxd_out_OBUF_inst_i_2_n_0),
        .I1(state_reg[0]),
        .I2(state_reg[1]),
        .I3(state_reg[2]),
        .O(uart_rxd_out_OBUF));
  LUT6 #(
    .INIT(64'h1544000000000000)) 
    uart_rxd_out_OBUF_inst_i_2
       (.I0(state_reg[2]),
        .I1(bit_index_reg[2]),
        .I2(bit_index_reg[1]),
        .I3(bit_index_reg[0]),
        .I4(tx_data_reg),
        .I5(state_reg[1]),
        .O(uart_rxd_out_OBUF_inst_i_2_n_0));
endmodule
