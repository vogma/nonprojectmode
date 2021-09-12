// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Sun Sep 12 13:46:26 2021
// Host        : marco running 64-bit Ubuntu 21.04
// Command     : write_verilog -force ./output/top_impl_netlist.v
// Design      : top
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* ECO_CHECKSUM = "3478b183" *) (* POWER_OPT_BRAM_CDC = "0" *) (* POWER_OPT_BRAM_SR_ADDR = "0" *) 
(* POWER_OPT_LOOPED_NET_PERCENTAGE = "0" *) 
(* STRUCTURAL_NETLIST = "yes" *)
module top
   (clk,
    btn,
    led,
    uart_txd_in,
    uart_rxd_out);
  input clk;
  input [3:0]btn;
  output [3:0]led;
  input uart_txd_in;
  output uart_rxd_out;

  wire \<const0> ;
  wire \<const1> ;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [3:0]led;
  wire uart_rxd_out;
  wire uart_rxd_out_OBUF;
  wire uart_txd_in;
  wire uart_txd_in_IBUF;

  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  OBUFT \led_OBUF[0]_inst 
       (.I(\<const0> ),
        .O(led[0]),
        .T(\<const1> ));
  OBUFT \led_OBUF[1]_inst 
       (.I(\<const0> ),
        .O(led[1]),
        .T(\<const1> ));
  OBUFT \led_OBUF[2]_inst 
       (.I(\<const0> ),
        .O(led[2]),
        .T(\<const1> ));
  OBUFT \led_OBUF[3]_inst 
       (.I(\<const0> ),
        .O(led[3]),
        .T(\<const1> ));
  uart_mirror uart_mirror2
       (.clk_IBUF_BUFG(clk_IBUF_BUFG),
        .uart_rxd_out_OBUF(uart_rxd_out_OBUF),
        .uart_txd_in_IBUF(uart_txd_in_IBUF));
  OBUF uart_rxd_out_OBUF_inst
       (.I(uart_rxd_out_OBUF),
        .O(uart_rxd_out));
  IBUF uart_txd_in_IBUF_inst
       (.I(uart_txd_in),
        .O(uart_txd_in_IBUF));
endmodule

module uart_mirror
   (uart_rxd_out_OBUF,
    clk_IBUF_BUFG,
    uart_txd_in_IBUF);
  output uart_rxd_out_OBUF;
  input clk_IBUF_BUFG;
  input uart_txd_in_IBUF;

  wire clk_IBUF_BUFG;
  wire [7:0]rxbyte_reg;
  wire uart_receiver_n_0;
  wire uart_rxd_out_OBUF;
  wire uart_txd_in_IBUF;

  uart_tx_controller tx_controller
       (.\FSM_sequential_state_reg_reg[0]_0 (uart_receiver_n_0),
        .Q(rxbyte_reg),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .uart_rxd_out_OBUF(uart_rxd_out_OBUF));
  uart_rx_controller uart_receiver
       (.\FSM_sequential_state_reg_reg[1]_0 (uart_receiver_n_0),
        .Q(rxbyte_reg),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .uart_txd_in_IBUF(uart_txd_in_IBUF));
endmodule

module uart_rx_controller
   (\FSM_sequential_state_reg_reg[1]_0 ,
    Q,
    clk_IBUF_BUFG,
    uart_txd_in_IBUF);
  output \FSM_sequential_state_reg_reg[1]_0 ;
  output [7:0]Q;
  input clk_IBUF_BUFG;
  input uart_txd_in_IBUF;

  wire \<const0> ;
  wire \FSM_sequential_state_reg[0]_i_1_n_0 ;
  wire \FSM_sequential_state_reg[0]_i_2_n_0 ;
  wire \FSM_sequential_state_reg[0]_i_3__0_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_1_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_3_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_4_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_5_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_6_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_7_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_8_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_9_n_0 ;
  wire \FSM_sequential_state_reg[2]_i_1_n_0 ;
  wire \FSM_sequential_state_reg[2]_i_2_n_0 ;
  wire \FSM_sequential_state_reg_reg[0]_CE_cooolgate_en_sig_14 ;
  wire \FSM_sequential_state_reg_reg[1]_0 ;
  wire [7:0]Q;
  wire [2:0]bitIndex_reg;
  wire \bitIndex_reg[0]_i_1_n_0 ;
  wire \bitIndex_reg[1]_i_1_n_0 ;
  wire \bitIndex_reg[2]_i_1_n_0 ;
  wire \bitIndex_reg[2]_i_2_n_0 ;
  wire clk_IBUF_BUFG;
  wire \clk_cnt_reg[0]_i_10_n_0 ;
  wire \clk_cnt_reg[0]_i_11_n_0 ;
  wire \clk_cnt_reg[0]_i_12_n_0 ;
  wire \clk_cnt_reg[0]_i_13_n_0 ;
  wire \clk_cnt_reg[0]_i_1_n_0 ;
  wire \clk_cnt_reg[0]_i_3__0_n_0 ;
  wire \clk_cnt_reg[0]_i_4__0_n_0 ;
  wire \clk_cnt_reg[0]_i_5__0_n_0 ;
  wire \clk_cnt_reg[0]_i_6__0_n_0 ;
  wire \clk_cnt_reg[0]_i_7_n_0 ;
  wire \clk_cnt_reg[0]_i_8_n_0 ;
  wire \clk_cnt_reg[0]_i_9_n_0 ;
  wire \clk_cnt_reg[12]_i_2_n_0 ;
  wire \clk_cnt_reg[12]_i_3_n_0 ;
  wire \clk_cnt_reg[12]_i_4_n_0 ;
  wire \clk_cnt_reg[4]_i_2__0_n_0 ;
  wire \clk_cnt_reg[4]_i_3__0_n_0 ;
  wire \clk_cnt_reg[4]_i_4__0_n_0 ;
  wire \clk_cnt_reg[4]_i_5__0_n_0 ;
  wire \clk_cnt_reg[4]_i_6_n_0 ;
  wire \clk_cnt_reg[4]_i_7_n_0 ;
  wire \clk_cnt_reg[4]_i_8_n_0 ;
  wire \clk_cnt_reg[4]_i_9_n_0 ;
  wire \clk_cnt_reg[8]_i_2__0_n_0 ;
  wire \clk_cnt_reg[8]_i_3__0_n_0 ;
  wire \clk_cnt_reg[8]_i_4__0_n_0 ;
  wire \clk_cnt_reg[8]_i_5__0_n_0 ;
  wire \clk_cnt_reg[8]_i_6_n_0 ;
  wire \clk_cnt_reg[8]_i_7_n_0 ;
  wire \clk_cnt_reg[8]_i_8_n_0 ;
  wire \clk_cnt_reg[8]_i_9_n_0 ;
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
  wire \clk_cnt_reg_reg_n_0_[0] ;
  wire \clk_cnt_reg_reg_n_0_[10] ;
  wire \clk_cnt_reg_reg_n_0_[11] ;
  wire \clk_cnt_reg_reg_n_0_[12] ;
  wire \clk_cnt_reg_reg_n_0_[13] ;
  wire \clk_cnt_reg_reg_n_0_[1] ;
  wire \clk_cnt_reg_reg_n_0_[2] ;
  wire \clk_cnt_reg_reg_n_0_[3] ;
  wire \clk_cnt_reg_reg_n_0_[4] ;
  wire \clk_cnt_reg_reg_n_0_[5] ;
  wire \clk_cnt_reg_reg_n_0_[6] ;
  wire \clk_cnt_reg_reg_n_0_[7] ;
  wire \clk_cnt_reg_reg_n_0_[8] ;
  wire \clk_cnt_reg_reg_n_0_[9] ;
  wire [7:0]rxbyte_next;
  wire \rxbyte_reg[7]_i_2_n_0 ;
  wire \rxbyte_reg[7]_i_3_n_0 ;
  wire \rxbyte_reg[7]_i_4_n_0 ;
  wire \rxbyte_reg[7]_i_5_n_0 ;
  wire \rxbyte_reg[7]_i_6_n_0 ;
  wire \rxbyte_reg[7]_i_7_n_0 ;
  wire \rxbyte_reg_reg[0]_CE_cooolgate_en_sig_3 ;
  wire \rxbyte_reg_reg[0]_CE_cooolgate_en_sig_4 ;
  wire \rxbyte_reg_reg[1]_CE_cooolgate_en_sig_5 ;
  wire \rxbyte_reg_reg[2]_CE_cooolgate_en_sig_6 ;
  wire \rxbyte_reg_reg[3]_CE_cooolgate_en_sig_7 ;
  wire \rxbyte_reg_reg[4]_CE_cooolgate_en_sig_8 ;
  wire \rxbyte_reg_reg[5]_CE_cooolgate_en_sig_9 ;
  wire \rxbyte_reg_reg[6]_CE_cooolgate_en_sig_10 ;
  wire \rxbyte_reg_reg[7]_CE_cooolgate_en_sig_11 ;
  wire [1:1]state_next__0;
  wire [2:0]state_reg;
  wire uart_txd_in_IBUF;
  wire [3:0]\NLW_clk_cnt_reg_reg[0]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_clk_cnt_reg_reg[4]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_clk_cnt_reg_reg[8]_i_1_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h111111111111D0F0)) 
    \FSM_sequential_state_reg[0]_i_1 
       (.I0(\FSM_sequential_state_reg[0]_i_2_n_0 ),
        .I1(state_reg[2]),
        .I2(state_reg[0]),
        .I3(\FSM_sequential_state_reg[0]_i_3__0_n_0 ),
        .I4(rxbyte_next[7]),
        .I5(\FSM_sequential_state_reg[1]_i_4_n_0 ),
        .O(\FSM_sequential_state_reg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA00000020)) 
    \FSM_sequential_state_reg[0]_i_2 
       (.I0(state_reg[0]),
        .I1(\FSM_sequential_state_reg[1]_i_5_n_0 ),
        .I2(\FSM_sequential_state_reg[1]_i_6_n_0 ),
        .I3(\FSM_sequential_state_reg[1]_i_7_n_0 ),
        .I4(\FSM_sequential_state_reg[1]_i_8_n_0 ),
        .I5(state_reg[1]),
        .O(\FSM_sequential_state_reg[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFDFFFFFFFF)) 
    \FSM_sequential_state_reg[0]_i_3 
       (.I0(state_reg[1]),
        .I1(\FSM_sequential_state_reg[1]_i_3_n_0 ),
        .I2(\rxbyte_reg[7]_i_6_n_0 ),
        .I3(\rxbyte_reg[7]_i_5_n_0 ),
        .I4(\rxbyte_reg[7]_i_4_n_0 ),
        .I5(\rxbyte_reg[7]_i_3_n_0 ),
        .O(\FSM_sequential_state_reg_reg[1]_0 ));
  LUT5 #(
    .INIT(32'h0100FFFF)) 
    \FSM_sequential_state_reg[0]_i_3__0 
       (.I0(\rxbyte_reg[7]_i_6_n_0 ),
        .I1(\rxbyte_reg[7]_i_5_n_0 ),
        .I2(\rxbyte_reg[7]_i_4_n_0 ),
        .I3(\rxbyte_reg[7]_i_3_n_0 ),
        .I4(state_reg[1]),
        .O(\FSM_sequential_state_reg[0]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAEF22)) 
    \FSM_sequential_state_reg[1]_i_1 
       (.I0(state_next__0),
        .I1(\FSM_sequential_state_reg[1]_i_3_n_0 ),
        .I2(\FSM_sequential_state_reg[2]_i_2_n_0 ),
        .I3(state_reg[1]),
        .I4(rxbyte_next[7]),
        .I5(\FSM_sequential_state_reg[1]_i_4_n_0 ),
        .O(\FSM_sequential_state_reg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5555555555555575)) 
    \FSM_sequential_state_reg[1]_i_2 
       (.I0(\rxbyte_reg[7]_i_2_n_0 ),
        .I1(\FSM_sequential_state_reg[1]_i_5_n_0 ),
        .I2(\FSM_sequential_state_reg[1]_i_6_n_0 ),
        .I3(\FSM_sequential_state_reg[1]_i_7_n_0 ),
        .I4(\FSM_sequential_state_reg[1]_i_8_n_0 ),
        .I5(\FSM_sequential_state_reg[1]_i_9_n_0 ),
        .O(state_next__0));
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_state_reg[1]_i_3 
       (.I0(state_reg[2]),
        .I1(state_reg[0]),
        .O(\FSM_sequential_state_reg[1]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h1011)) 
    \FSM_sequential_state_reg[1]_i_4 
       (.I0(state_reg[1]),
        .I1(state_reg[0]),
        .I2(state_reg[2]),
        .I3(uart_txd_in_IBUF),
        .O(\FSM_sequential_state_reg[1]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \FSM_sequential_state_reg[1]_i_5 
       (.I0(\clk_cnt_reg_reg_n_0_[0] ),
        .I1(\clk_cnt_reg_reg_n_0_[10] ),
        .I2(\clk_cnt_reg_reg_n_0_[6] ),
        .I3(\clk_cnt_reg_reg_n_0_[12] ),
        .O(\FSM_sequential_state_reg[1]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \FSM_sequential_state_reg[1]_i_6 
       (.I0(\clk_cnt_reg_reg_n_0_[9] ),
        .I1(\clk_cnt_reg_reg_n_0_[11] ),
        .I2(\clk_cnt_reg_reg_n_0_[8] ),
        .O(\FSM_sequential_state_reg[1]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \FSM_sequential_state_reg[1]_i_7 
       (.I0(\clk_cnt_reg_reg_n_0_[1] ),
        .I1(\clk_cnt_reg_reg_n_0_[2] ),
        .I2(\clk_cnt_reg_reg_n_0_[4] ),
        .I3(\clk_cnt_reg_reg_n_0_[13] ),
        .O(\FSM_sequential_state_reg[1]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_sequential_state_reg[1]_i_8 
       (.I0(\clk_cnt_reg_reg_n_0_[5] ),
        .I1(\clk_cnt_reg_reg_n_0_[3] ),
        .I2(\clk_cnt_reg_reg_n_0_[7] ),
        .O(\FSM_sequential_state_reg[1]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \FSM_sequential_state_reg[1]_i_9 
       (.I0(state_reg[0]),
        .I1(state_reg[2]),
        .I2(state_reg[1]),
        .I3(uart_txd_in_IBUF),
        .O(\FSM_sequential_state_reg[1]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hE8E0)) 
    \FSM_sequential_state_reg[2]_i_1 
       (.I0(state_reg[0]),
        .I1(state_reg[1]),
        .I2(state_reg[2]),
        .I3(\FSM_sequential_state_reg[2]_i_2_n_0 ),
        .O(\FSM_sequential_state_reg[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \FSM_sequential_state_reg[2]_i_2 
       (.I0(\rxbyte_reg[7]_i_3_n_0 ),
        .I1(\clk_cnt_reg_reg_n_0_[1] ),
        .I2(\clk_cnt_reg_reg_n_0_[0] ),
        .I3(\clk_cnt_reg_reg_n_0_[10] ),
        .I4(\rxbyte_reg[7]_i_5_n_0 ),
        .I5(\rxbyte_reg[7]_i_6_n_0 ),
        .O(\FSM_sequential_state_reg[2]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "receive_stopbit:011,cleanup:100,receive_startbit:001,idle:000,receive_databits:010" *) 
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[0]_CE_cooolgate_en_sig_14 ),
        .D(\FSM_sequential_state_reg[0]_i_1_n_0 ),
        .Q(state_reg[0]),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'h111fffffffffffff)) 
    \FSM_sequential_state_reg_reg[0]_CE_cooolgate_en_gate_30 
       (.I0(\clk_cnt_reg_reg_n_0_[1] ),
        .I1(\clk_cnt_reg_reg_n_0_[0] ),
        .I2(\rxbyte_reg[7]_i_6_n_0 ),
        .I3(\FSM_sequential_state_reg[1]_i_3_n_0 ),
        .I4(state_reg[2]),
        .I5(state_reg[1]),
        .O(\FSM_sequential_state_reg_reg[0]_CE_cooolgate_en_sig_14 ));
  (* FSM_ENCODED_STATES = "receive_stopbit:011,cleanup:100,receive_startbit:001,idle:000,receive_databits:010" *) 
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[0]_CE_cooolgate_en_sig_14 ),
        .D(\FSM_sequential_state_reg[1]_i_1_n_0 ),
        .Q(state_reg[1]),
        .R(\<const0> ));
  (* FSM_ENCODED_STATES = "receive_stopbit:011,cleanup:100,receive_startbit:001,idle:000,receive_databits:010" *) 
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[0]_CE_cooolgate_en_sig_14 ),
        .D(\FSM_sequential_state_reg[2]_i_1_n_0 ),
        .Q(state_reg[2]),
        .R(\<const0> ));
  GND GND
       (.G(\<const0> ));
  LUT2 #(
    .INIT(4'h6)) 
    \bitIndex_reg[0]_i_1 
       (.I0(\bitIndex_reg[2]_i_2_n_0 ),
        .I1(bitIndex_reg[0]),
        .O(\bitIndex_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \bitIndex_reg[1]_i_1 
       (.I0(bitIndex_reg[0]),
        .I1(\bitIndex_reg[2]_i_2_n_0 ),
        .I2(bitIndex_reg[1]),
        .O(\bitIndex_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \bitIndex_reg[2]_i_1 
       (.I0(bitIndex_reg[1]),
        .I1(bitIndex_reg[0]),
        .I2(\bitIndex_reg[2]_i_2_n_0 ),
        .I3(bitIndex_reg[2]),
        .O(\bitIndex_reg[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000100)) 
    \bitIndex_reg[2]_i_2 
       (.I0(\rxbyte_reg[7]_i_6_n_0 ),
        .I1(\rxbyte_reg[7]_i_5_n_0 ),
        .I2(\rxbyte_reg[7]_i_4_n_0 ),
        .I3(\rxbyte_reg[7]_i_3_n_0 ),
        .I4(\rxbyte_reg[7]_i_2_n_0 ),
        .O(\bitIndex_reg[2]_i_2_n_0 ));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bitIndex_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\bitIndex_reg[2]_i_2_n_0 ),
        .D(\bitIndex_reg[0]_i_1_n_0 ),
        .Q(bitIndex_reg[0]),
        .R(\<const0> ));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bitIndex_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\bitIndex_reg[2]_i_2_n_0 ),
        .D(\bitIndex_reg[1]_i_1_n_0 ),
        .Q(bitIndex_reg[1]),
        .R(\<const0> ));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bitIndex_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\bitIndex_reg[2]_i_2_n_0 ),
        .D(\bitIndex_reg[2]_i_1_n_0 ),
        .Q(bitIndex_reg[2]),
        .R(\<const0> ));
  LUT4 #(
    .INIT(16'hFF0E)) 
    \clk_cnt_reg[0]_i_1 
       (.I0(state_reg[0]),
        .I1(state_reg[1]),
        .I2(state_reg[2]),
        .I3(\clk_cnt_reg[0]_i_3__0_n_0 ),
        .O(\clk_cnt_reg[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFD)) 
    \clk_cnt_reg[0]_i_10 
       (.I0(\clk_cnt_reg_reg_n_0_[1] ),
        .I1(\bitIndex_reg[2]_i_2_n_0 ),
        .I2(\clk_cnt_reg[0]_i_3__0_n_0 ),
        .O(\clk_cnt_reg[0]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hFD)) 
    \clk_cnt_reg[0]_i_11 
       (.I0(\clk_cnt_reg_reg_n_0_[0] ),
        .I1(\bitIndex_reg[2]_i_2_n_0 ),
        .I2(\clk_cnt_reg[0]_i_3__0_n_0 ),
        .O(\clk_cnt_reg[0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFFFFFFFFFF)) 
    \clk_cnt_reg[0]_i_12 
       (.I0(state_reg[1]),
        .I1(uart_txd_in_IBUF),
        .I2(\clk_cnt_reg_reg_n_0_[12] ),
        .I3(state_reg[0]),
        .I4(\clk_cnt_reg_reg_n_0_[10] ),
        .I5(\clk_cnt_reg_reg_n_0_[0] ),
        .O(\clk_cnt_reg[0]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \clk_cnt_reg[0]_i_13 
       (.I0(state_reg[0]),
        .I1(state_reg[1]),
        .I2(uart_txd_in_IBUF),
        .O(\clk_cnt_reg[0]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000040055555555)) 
    \clk_cnt_reg[0]_i_3__0 
       (.I0(state_reg[2]),
        .I1(\rxbyte_reg[7]_i_3_n_0 ),
        .I2(\FSM_sequential_state_reg[1]_i_7_n_0 ),
        .I3(\rxbyte_reg[7]_i_6_n_0 ),
        .I4(\clk_cnt_reg[0]_i_12_n_0 ),
        .I5(\clk_cnt_reg[0]_i_13_n_0 ),
        .O(\clk_cnt_reg[0]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \clk_cnt_reg[0]_i_4__0 
       (.I0(\clk_cnt_reg[0]_i_3__0_n_0 ),
        .I1(\bitIndex_reg[2]_i_2_n_0 ),
        .O(\clk_cnt_reg[0]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \clk_cnt_reg[0]_i_5__0 
       (.I0(\clk_cnt_reg[0]_i_3__0_n_0 ),
        .I1(\bitIndex_reg[2]_i_2_n_0 ),
        .O(\clk_cnt_reg[0]_i_5__0_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \clk_cnt_reg[0]_i_6__0 
       (.I0(\clk_cnt_reg[0]_i_3__0_n_0 ),
        .I1(\bitIndex_reg[2]_i_2_n_0 ),
        .O(\clk_cnt_reg[0]_i_6__0_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \clk_cnt_reg[0]_i_7 
       (.I0(\clk_cnt_reg[0]_i_3__0_n_0 ),
        .I1(\bitIndex_reg[2]_i_2_n_0 ),
        .O(\clk_cnt_reg[0]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hFD)) 
    \clk_cnt_reg[0]_i_8 
       (.I0(\clk_cnt_reg_reg_n_0_[3] ),
        .I1(\bitIndex_reg[2]_i_2_n_0 ),
        .I2(\clk_cnt_reg[0]_i_3__0_n_0 ),
        .O(\clk_cnt_reg[0]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hFD)) 
    \clk_cnt_reg[0]_i_9 
       (.I0(\clk_cnt_reg_reg_n_0_[2] ),
        .I1(\bitIndex_reg[2]_i_2_n_0 ),
        .I2(\clk_cnt_reg[0]_i_3__0_n_0 ),
        .O(\clk_cnt_reg[0]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \clk_cnt_reg[12]_i_2 
       (.I0(\clk_cnt_reg[0]_i_3__0_n_0 ),
        .I1(\bitIndex_reg[2]_i_2_n_0 ),
        .O(\clk_cnt_reg[12]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hFD)) 
    \clk_cnt_reg[12]_i_3 
       (.I0(\clk_cnt_reg_reg_n_0_[13] ),
        .I1(\bitIndex_reg[2]_i_2_n_0 ),
        .I2(\clk_cnt_reg[0]_i_3__0_n_0 ),
        .O(\clk_cnt_reg[12]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \clk_cnt_reg[12]_i_4 
       (.I0(\clk_cnt_reg_reg_n_0_[12] ),
        .I1(\bitIndex_reg[2]_i_2_n_0 ),
        .I2(\clk_cnt_reg[0]_i_3__0_n_0 ),
        .O(\clk_cnt_reg[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \clk_cnt_reg[4]_i_2__0 
       (.I0(\clk_cnt_reg[0]_i_3__0_n_0 ),
        .I1(\bitIndex_reg[2]_i_2_n_0 ),
        .O(\clk_cnt_reg[4]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \clk_cnt_reg[4]_i_3__0 
       (.I0(\clk_cnt_reg[0]_i_3__0_n_0 ),
        .I1(\bitIndex_reg[2]_i_2_n_0 ),
        .O(\clk_cnt_reg[4]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \clk_cnt_reg[4]_i_4__0 
       (.I0(\clk_cnt_reg[0]_i_3__0_n_0 ),
        .I1(\bitIndex_reg[2]_i_2_n_0 ),
        .O(\clk_cnt_reg[4]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \clk_cnt_reg[4]_i_5__0 
       (.I0(\clk_cnt_reg[0]_i_3__0_n_0 ),
        .I1(\bitIndex_reg[2]_i_2_n_0 ),
        .O(\clk_cnt_reg[4]_i_5__0_n_0 ));
  LUT3 #(
    .INIT(8'hFD)) 
    \clk_cnt_reg[4]_i_6 
       (.I0(\clk_cnt_reg_reg_n_0_[7] ),
        .I1(\bitIndex_reg[2]_i_2_n_0 ),
        .I2(\clk_cnt_reg[0]_i_3__0_n_0 ),
        .O(\clk_cnt_reg[4]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \clk_cnt_reg[4]_i_7 
       (.I0(\clk_cnt_reg_reg_n_0_[6] ),
        .I1(\bitIndex_reg[2]_i_2_n_0 ),
        .I2(\clk_cnt_reg[0]_i_3__0_n_0 ),
        .O(\clk_cnt_reg[4]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hFD)) 
    \clk_cnt_reg[4]_i_8 
       (.I0(\clk_cnt_reg_reg_n_0_[5] ),
        .I1(\bitIndex_reg[2]_i_2_n_0 ),
        .I2(\clk_cnt_reg[0]_i_3__0_n_0 ),
        .O(\clk_cnt_reg[4]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \clk_cnt_reg[4]_i_9 
       (.I0(\clk_cnt_reg_reg_n_0_[4] ),
        .I1(\bitIndex_reg[2]_i_2_n_0 ),
        .I2(\clk_cnt_reg[0]_i_3__0_n_0 ),
        .O(\clk_cnt_reg[4]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \clk_cnt_reg[8]_i_2__0 
       (.I0(\clk_cnt_reg[0]_i_3__0_n_0 ),
        .I1(\bitIndex_reg[2]_i_2_n_0 ),
        .O(\clk_cnt_reg[8]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \clk_cnt_reg[8]_i_3__0 
       (.I0(\clk_cnt_reg[0]_i_3__0_n_0 ),
        .I1(\bitIndex_reg[2]_i_2_n_0 ),
        .O(\clk_cnt_reg[8]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \clk_cnt_reg[8]_i_4__0 
       (.I0(\clk_cnt_reg[0]_i_3__0_n_0 ),
        .I1(\bitIndex_reg[2]_i_2_n_0 ),
        .O(\clk_cnt_reg[8]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \clk_cnt_reg[8]_i_5__0 
       (.I0(\clk_cnt_reg[0]_i_3__0_n_0 ),
        .I1(\bitIndex_reg[2]_i_2_n_0 ),
        .O(\clk_cnt_reg[8]_i_5__0_n_0 ));
  LUT3 #(
    .INIT(8'hFD)) 
    \clk_cnt_reg[8]_i_6 
       (.I0(\clk_cnt_reg_reg_n_0_[11] ),
        .I1(\bitIndex_reg[2]_i_2_n_0 ),
        .I2(\clk_cnt_reg[0]_i_3__0_n_0 ),
        .O(\clk_cnt_reg[8]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \clk_cnt_reg[8]_i_7 
       (.I0(\clk_cnt_reg_reg_n_0_[10] ),
        .I1(\bitIndex_reg[2]_i_2_n_0 ),
        .I2(\clk_cnt_reg[0]_i_3__0_n_0 ),
        .O(\clk_cnt_reg[8]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \clk_cnt_reg[8]_i_8 
       (.I0(\clk_cnt_reg_reg_n_0_[9] ),
        .I1(\bitIndex_reg[2]_i_2_n_0 ),
        .I2(\clk_cnt_reg[0]_i_3__0_n_0 ),
        .O(\clk_cnt_reg[8]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \clk_cnt_reg[8]_i_9 
       (.I0(\clk_cnt_reg_reg_n_0_[8] ),
        .I1(\bitIndex_reg[2]_i_2_n_0 ),
        .I2(\clk_cnt_reg[0]_i_3__0_n_0 ),
        .O(\clk_cnt_reg[8]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_cnt_reg[0]_i_1_n_0 ),
        .D(\clk_cnt_reg_reg[0]_i_2_n_7 ),
        .Q(\clk_cnt_reg_reg_n_0_[0] ),
        .R(\<const0> ));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \clk_cnt_reg_reg[0]_i_2 
       (.CI(\<const0> ),
        .CO({\clk_cnt_reg_reg[0]_i_2_n_0 ,\NLW_clk_cnt_reg_reg[0]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\clk_cnt_reg[0]_i_4__0_n_0 ,\clk_cnt_reg[0]_i_5__0_n_0 ,\clk_cnt_reg[0]_i_6__0_n_0 ,\clk_cnt_reg[0]_i_7_n_0 }),
        .O({\clk_cnt_reg_reg[0]_i_2_n_4 ,\clk_cnt_reg_reg[0]_i_2_n_5 ,\clk_cnt_reg_reg[0]_i_2_n_6 ,\clk_cnt_reg_reg[0]_i_2_n_7 }),
        .S({\clk_cnt_reg[0]_i_8_n_0 ,\clk_cnt_reg[0]_i_9_n_0 ,\clk_cnt_reg[0]_i_10_n_0 ,\clk_cnt_reg[0]_i_11_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_cnt_reg[0]_i_1_n_0 ),
        .D(\clk_cnt_reg_reg[8]_i_1_n_5 ),
        .Q(\clk_cnt_reg_reg_n_0_[10] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_cnt_reg[0]_i_1_n_0 ),
        .D(\clk_cnt_reg_reg[8]_i_1_n_4 ),
        .Q(\clk_cnt_reg_reg_n_0_[11] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_cnt_reg[0]_i_1_n_0 ),
        .D(\clk_cnt_reg_reg[12]_i_1_n_7 ),
        .Q(\clk_cnt_reg_reg_n_0_[12] ),
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
        .Q(\clk_cnt_reg_reg_n_0_[13] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_cnt_reg[0]_i_1_n_0 ),
        .D(\clk_cnt_reg_reg[0]_i_2_n_6 ),
        .Q(\clk_cnt_reg_reg_n_0_[1] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_cnt_reg[0]_i_1_n_0 ),
        .D(\clk_cnt_reg_reg[0]_i_2_n_5 ),
        .Q(\clk_cnt_reg_reg_n_0_[2] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_cnt_reg[0]_i_1_n_0 ),
        .D(\clk_cnt_reg_reg[0]_i_2_n_4 ),
        .Q(\clk_cnt_reg_reg_n_0_[3] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_cnt_reg[0]_i_1_n_0 ),
        .D(\clk_cnt_reg_reg[4]_i_1_n_7 ),
        .Q(\clk_cnt_reg_reg_n_0_[4] ),
        .R(\<const0> ));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \clk_cnt_reg_reg[4]_i_1 
       (.CI(\clk_cnt_reg_reg[0]_i_2_n_0 ),
        .CO({\clk_cnt_reg_reg[4]_i_1_n_0 ,\NLW_clk_cnt_reg_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\clk_cnt_reg[4]_i_2__0_n_0 ,\clk_cnt_reg[4]_i_3__0_n_0 ,\clk_cnt_reg[4]_i_4__0_n_0 ,\clk_cnt_reg[4]_i_5__0_n_0 }),
        .O({\clk_cnt_reg_reg[4]_i_1_n_4 ,\clk_cnt_reg_reg[4]_i_1_n_5 ,\clk_cnt_reg_reg[4]_i_1_n_6 ,\clk_cnt_reg_reg[4]_i_1_n_7 }),
        .S({\clk_cnt_reg[4]_i_6_n_0 ,\clk_cnt_reg[4]_i_7_n_0 ,\clk_cnt_reg[4]_i_8_n_0 ,\clk_cnt_reg[4]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_cnt_reg[0]_i_1_n_0 ),
        .D(\clk_cnt_reg_reg[4]_i_1_n_6 ),
        .Q(\clk_cnt_reg_reg_n_0_[5] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_cnt_reg[0]_i_1_n_0 ),
        .D(\clk_cnt_reg_reg[4]_i_1_n_5 ),
        .Q(\clk_cnt_reg_reg_n_0_[6] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_cnt_reg[0]_i_1_n_0 ),
        .D(\clk_cnt_reg_reg[4]_i_1_n_4 ),
        .Q(\clk_cnt_reg_reg_n_0_[7] ),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_cnt_reg[0]_i_1_n_0 ),
        .D(\clk_cnt_reg_reg[8]_i_1_n_7 ),
        .Q(\clk_cnt_reg_reg_n_0_[8] ),
        .R(\<const0> ));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \clk_cnt_reg_reg[8]_i_1 
       (.CI(\clk_cnt_reg_reg[4]_i_1_n_0 ),
        .CO({\clk_cnt_reg_reg[8]_i_1_n_0 ,\NLW_clk_cnt_reg_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\clk_cnt_reg[8]_i_2__0_n_0 ,\clk_cnt_reg[8]_i_3__0_n_0 ,\clk_cnt_reg[8]_i_4__0_n_0 ,\clk_cnt_reg[8]_i_5__0_n_0 }),
        .O({\clk_cnt_reg_reg[8]_i_1_n_4 ,\clk_cnt_reg_reg[8]_i_1_n_5 ,\clk_cnt_reg_reg[8]_i_1_n_6 ,\clk_cnt_reg_reg[8]_i_1_n_7 }),
        .S({\clk_cnt_reg[8]_i_6_n_0 ,\clk_cnt_reg[8]_i_7_n_0 ,\clk_cnt_reg[8]_i_8_n_0 ,\clk_cnt_reg[8]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_cnt_reg[0]_i_1_n_0 ),
        .D(\clk_cnt_reg_reg[8]_i_1_n_6 ),
        .Q(\clk_cnt_reg_reg_n_0_[9] ),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \rxbyte_reg[7]_i_1 
       (.I0(\rxbyte_reg[7]_i_2_n_0 ),
        .I1(\rxbyte_reg[7]_i_3_n_0 ),
        .I2(\rxbyte_reg[7]_i_4_n_0 ),
        .I3(\rxbyte_reg[7]_i_5_n_0 ),
        .I4(\rxbyte_reg[7]_i_6_n_0 ),
        .I5(\rxbyte_reg[7]_i_7_n_0 ),
        .O(rxbyte_next[7]));
  LUT3 #(
    .INIT(8'hFB)) 
    \rxbyte_reg[7]_i_2 
       (.I0(state_reg[0]),
        .I1(state_reg[1]),
        .I2(state_reg[2]),
        .O(\rxbyte_reg[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \rxbyte_reg[7]_i_3 
       (.I0(\clk_cnt_reg_reg_n_0_[8] ),
        .I1(\clk_cnt_reg_reg_n_0_[11] ),
        .I2(\clk_cnt_reg_reg_n_0_[9] ),
        .I3(\clk_cnt_reg_reg_n_0_[7] ),
        .I4(\clk_cnt_reg_reg_n_0_[3] ),
        .I5(\clk_cnt_reg_reg_n_0_[5] ),
        .O(\rxbyte_reg[7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \rxbyte_reg[7]_i_4 
       (.I0(\clk_cnt_reg_reg_n_0_[10] ),
        .I1(\clk_cnt_reg_reg_n_0_[0] ),
        .I2(\clk_cnt_reg_reg_n_0_[1] ),
        .O(\rxbyte_reg[7]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rxbyte_reg[7]_i_5 
       (.I0(\clk_cnt_reg_reg_n_0_[4] ),
        .I1(\clk_cnt_reg_reg_n_0_[13] ),
        .I2(\clk_cnt_reg_reg_n_0_[2] ),
        .I3(\clk_cnt_reg_reg_n_0_[12] ),
        .O(\rxbyte_reg[7]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \rxbyte_reg[7]_i_6 
       (.I0(\clk_cnt_reg_reg_n_0_[8] ),
        .I1(\clk_cnt_reg_reg_n_0_[7] ),
        .I2(\clk_cnt_reg_reg_n_0_[6] ),
        .O(\rxbyte_reg[7]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \rxbyte_reg[7]_i_7 
       (.I0(bitIndex_reg[2]),
        .I1(bitIndex_reg[1]),
        .I2(bitIndex_reg[0]),
        .O(\rxbyte_reg[7]_i_7_n_0 ));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rxbyte_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\rxbyte_reg_reg[0]_CE_cooolgate_en_sig_4 ),
        .D(uart_txd_in_IBUF),
        .Q(Q[0]),
        .R(\<const0> ));
  LUT3 #(
    .INIT(8'hf8)) 
    \rxbyte_reg_reg[0]_CE_cooolgate_en_gate_10 
       (.I0(bitIndex_reg[1]),
        .I1(bitIndex_reg[0]),
        .I2(\bitIndex_reg[2]_i_2_n_0 ),
        .O(\rxbyte_reg_reg[0]_CE_cooolgate_en_sig_3 ));
  (* OPT_MODIFIED = "REMAP" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \rxbyte_reg_reg[0]_CE_cooolgate_en_gate_11_LOPT_REMAP 
       (.I0(bitIndex_reg[1]),
        .I1(bitIndex_reg[0]),
        .I2(\bitIndex_reg[2]_i_2_n_0 ),
        .I3(bitIndex_reg[2]),
        .I4(\rxbyte_reg_reg[0]_CE_cooolgate_en_sig_3 ),
        .O(\rxbyte_reg_reg[0]_CE_cooolgate_en_sig_4 ));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rxbyte_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\rxbyte_reg_reg[1]_CE_cooolgate_en_sig_5 ),
        .D(uart_txd_in_IBUF),
        .Q(Q[1]),
        .R(\<const0> ));
  (* OPT_MODIFIED = "REMAP" *) 
  LUT5 #(
    .INIT(32'h00400000)) 
    \rxbyte_reg_reg[1]_CE_cooolgate_en_gate_12_LOPT_REMAP 
       (.I0(bitIndex_reg[1]),
        .I1(bitIndex_reg[0]),
        .I2(\bitIndex_reg[2]_i_2_n_0 ),
        .I3(bitIndex_reg[2]),
        .I4(\rxbyte_reg_reg[0]_CE_cooolgate_en_sig_3 ),
        .O(\rxbyte_reg_reg[1]_CE_cooolgate_en_sig_5 ));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rxbyte_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\rxbyte_reg_reg[2]_CE_cooolgate_en_sig_6 ),
        .D(uart_txd_in_IBUF),
        .Q(Q[2]),
        .R(\<const0> ));
  (* OPT_MODIFIED = "REMAP" *) 
  LUT5 #(
    .INIT(32'h00400000)) 
    \rxbyte_reg_reg[2]_CE_cooolgate_en_gate_13_LOPT_REMAP 
       (.I0(bitIndex_reg[0]),
        .I1(bitIndex_reg[1]),
        .I2(\bitIndex_reg[2]_i_2_n_0 ),
        .I3(bitIndex_reg[2]),
        .I4(\rxbyte_reg_reg[0]_CE_cooolgate_en_sig_3 ),
        .O(\rxbyte_reg_reg[2]_CE_cooolgate_en_sig_6 ));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rxbyte_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\rxbyte_reg_reg[3]_CE_cooolgate_en_sig_7 ),
        .D(uart_txd_in_IBUF),
        .Q(Q[3]),
        .R(\<const0> ));
  (* OPT_MODIFIED = "REMAP" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    \rxbyte_reg_reg[3]_CE_cooolgate_en_gate_14_LOPT_REMAP 
       (.I0(bitIndex_reg[1]),
        .I1(bitIndex_reg[0]),
        .I2(\bitIndex_reg[2]_i_2_n_0 ),
        .I3(bitIndex_reg[2]),
        .I4(\rxbyte_reg_reg[0]_CE_cooolgate_en_sig_3 ),
        .O(\rxbyte_reg_reg[3]_CE_cooolgate_en_sig_7 ));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rxbyte_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\rxbyte_reg_reg[4]_CE_cooolgate_en_sig_8 ),
        .D(uart_txd_in_IBUF),
        .Q(Q[4]),
        .R(\<const0> ));
  (* OPT_MODIFIED = "REMAP" *) 
  LUT5 #(
    .INIT(32'h10000000)) 
    \rxbyte_reg_reg[4]_CE_cooolgate_en_gate_15_LOPT_REMAP 
       (.I0(bitIndex_reg[1]),
        .I1(bitIndex_reg[0]),
        .I2(\bitIndex_reg[2]_i_2_n_0 ),
        .I3(bitIndex_reg[2]),
        .I4(\rxbyte_reg_reg[0]_CE_cooolgate_en_sig_3 ),
        .O(\rxbyte_reg_reg[4]_CE_cooolgate_en_sig_8 ));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rxbyte_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\rxbyte_reg_reg[5]_CE_cooolgate_en_sig_9 ),
        .D(uart_txd_in_IBUF),
        .Q(Q[5]),
        .R(\<const0> ));
  (* OPT_MODIFIED = "REMAP" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \rxbyte_reg_reg[5]_CE_cooolgate_en_gate_16_LOPT_REMAP 
       (.I0(bitIndex_reg[1]),
        .I1(bitIndex_reg[0]),
        .I2(\bitIndex_reg[2]_i_2_n_0 ),
        .I3(bitIndex_reg[2]),
        .I4(\rxbyte_reg_reg[0]_CE_cooolgate_en_sig_3 ),
        .O(\rxbyte_reg_reg[5]_CE_cooolgate_en_sig_9 ));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rxbyte_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\rxbyte_reg_reg[6]_CE_cooolgate_en_sig_10 ),
        .D(uart_txd_in_IBUF),
        .Q(Q[6]),
        .R(\<const0> ));
  (* OPT_MODIFIED = "REMAP" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \rxbyte_reg_reg[6]_CE_cooolgate_en_gate_17_LOPT_REMAP 
       (.I0(bitIndex_reg[0]),
        .I1(bitIndex_reg[1]),
        .I2(\bitIndex_reg[2]_i_2_n_0 ),
        .I3(bitIndex_reg[2]),
        .I4(\rxbyte_reg_reg[0]_CE_cooolgate_en_sig_3 ),
        .O(\rxbyte_reg_reg[6]_CE_cooolgate_en_sig_10 ));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rxbyte_reg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\rxbyte_reg_reg[7]_CE_cooolgate_en_sig_11 ),
        .D(uart_txd_in_IBUF),
        .Q(Q[7]),
        .R(\<const0> ));
  LUT2 #(
    .INIT(4'h8)) 
    \rxbyte_reg_reg[7]_CE_cooolgate_en_gate_18 
       (.I0(rxbyte_next[7]),
        .I1(\rxbyte_reg_reg[0]_CE_cooolgate_en_sig_3 ),
        .O(\rxbyte_reg_reg[7]_CE_cooolgate_en_sig_11 ));
endmodule

module uart_tx_controller
   (uart_rxd_out_OBUF,
    clk_IBUF_BUFG,
    \FSM_sequential_state_reg_reg[0]_0 ,
    Q);
  output uart_rxd_out_OBUF;
  input clk_IBUF_BUFG;
  input \FSM_sequential_state_reg_reg[0]_0 ;
  input [7:0]Q;

  wire \<const0> ;
  wire \FSM_sequential_state_reg[0]_i_1__0_n_0 ;
  wire \FSM_sequential_state_reg[0]_i_2__0_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_1__0_n_0 ;
  wire \FSM_sequential_state_reg[2]_i_1__0_n_0 ;
  wire \FSM_sequential_state_reg[2]_i_2__0_n_0 ;
  wire \FSM_sequential_state_reg[2]_i_3_n_0 ;
  wire \FSM_sequential_state_reg[2]_i_4_n_0 ;
  wire \FSM_sequential_state_reg_reg[0]_0 ;
  wire \FSM_sequential_state_reg_reg[0]_CE_cooolgate_en_sig_13 ;
  wire [7:0]Q;
  wire [2:0]bit_index_reg;
  wire \bit_index_reg[0]_i_1_n_0 ;
  wire \bit_index_reg[1]_i_1_n_0 ;
  wire \bit_index_reg[2]_i_1_n_0 ;
  wire \bit_index_reg[2]_i_2_n_0 ;
  wire \bit_index_reg[2]_i_3_n_0 ;
  wire \bit_index_reg_reg[0]_CE_cooolgate_en_sig_12 ;
  wire clk_IBUF_BUFG;
  wire \clk_cnt_reg[0]_i_10__0_n_0 ;
  wire \clk_cnt_reg[0]_i_1__0_n_0 ;
  wire \clk_cnt_reg[0]_i_3_n_0 ;
  wire \clk_cnt_reg[0]_i_4_n_0 ;
  wire \clk_cnt_reg[0]_i_5_n_0 ;
  wire \clk_cnt_reg[0]_i_6_n_0 ;
  wire \clk_cnt_reg[0]_i_7__0_n_0 ;
  wire \clk_cnt_reg[0]_i_8__0_n_0 ;
  wire \clk_cnt_reg[0]_i_9__0_n_0 ;
  wire \clk_cnt_reg[12]_i_2__0_n_0 ;
  wire \clk_cnt_reg[12]_i_3__0_n_0 ;
  wire \clk_cnt_reg[12]_i_4__0_n_0 ;
  wire \clk_cnt_reg[4]_i_2_n_0 ;
  wire \clk_cnt_reg[4]_i_3_n_0 ;
  wire \clk_cnt_reg[4]_i_4_n_0 ;
  wire \clk_cnt_reg[4]_i_5_n_0 ;
  wire \clk_cnt_reg[4]_i_6__0_n_0 ;
  wire \clk_cnt_reg[4]_i_7__0_n_0 ;
  wire \clk_cnt_reg[4]_i_8__0_n_0 ;
  wire \clk_cnt_reg[4]_i_9__0_n_0 ;
  wire \clk_cnt_reg[8]_i_2_n_0 ;
  wire \clk_cnt_reg[8]_i_3_n_0 ;
  wire \clk_cnt_reg[8]_i_4_n_0 ;
  wire \clk_cnt_reg[8]_i_5_n_0 ;
  wire \clk_cnt_reg[8]_i_6__0_n_0 ;
  wire \clk_cnt_reg[8]_i_7__0_n_0 ;
  wire \clk_cnt_reg[8]_i_8__0_n_0 ;
  wire \clk_cnt_reg[8]_i_9__0_n_0 ;
  wire [13:0]clk_cnt_reg_reg;
  wire \clk_cnt_reg_reg[0]_i_2__0_n_0 ;
  wire \clk_cnt_reg_reg[0]_i_2__0_n_4 ;
  wire \clk_cnt_reg_reg[0]_i_2__0_n_5 ;
  wire \clk_cnt_reg_reg[0]_i_2__0_n_6 ;
  wire \clk_cnt_reg_reg[0]_i_2__0_n_7 ;
  wire \clk_cnt_reg_reg[12]_i_1__0_n_6 ;
  wire \clk_cnt_reg_reg[12]_i_1__0_n_7 ;
  wire \clk_cnt_reg_reg[4]_i_1__0_n_0 ;
  wire \clk_cnt_reg_reg[4]_i_1__0_n_4 ;
  wire \clk_cnt_reg_reg[4]_i_1__0_n_5 ;
  wire \clk_cnt_reg_reg[4]_i_1__0_n_6 ;
  wire \clk_cnt_reg_reg[4]_i_1__0_n_7 ;
  wire \clk_cnt_reg_reg[8]_i_1__0_n_0 ;
  wire \clk_cnt_reg_reg[8]_i_1__0_n_4 ;
  wire \clk_cnt_reg_reg[8]_i_1__0_n_5 ;
  wire \clk_cnt_reg_reg[8]_i_1__0_n_6 ;
  wire \clk_cnt_reg_reg[8]_i_1__0_n_7 ;
  wire [2:0]state_reg;
  wire [7:0]tx_data_reg;
  wire \tx_data_reg[7]_i_1_n_0 ;
  wire \tx_data_reg_reg[0]_CE_cooolgate_en_sig_2 ;
  wire uart_rxd_out_OBUF;
  wire uart_rxd_out_OBUF_inst_i_2_n_0;
  wire uart_rxd_out_OBUF_inst_i_3_n_0;
  wire [3:0]\NLW_clk_cnt_reg_reg[0]_i_2__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_clk_cnt_reg_reg[4]_i_1__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_clk_cnt_reg_reg[8]_i_1__0_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hEEEE1000EEEE1055)) 
    \FSM_sequential_state_reg[0]_i_1__0 
       (.I0(state_reg[2]),
        .I1(\FSM_sequential_state_reg[2]_i_2__0_n_0 ),
        .I2(\FSM_sequential_state_reg[0]_i_2__0_n_0 ),
        .I3(state_reg[1]),
        .I4(state_reg[0]),
        .I5(\FSM_sequential_state_reg_reg[0]_0 ),
        .O(\FSM_sequential_state_reg[0]_i_1__0_n_0 ));
  (* \PinAttr:I1:HOLD_DETOUR  = "190" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \FSM_sequential_state_reg[0]_i_2__0 
       (.I0(bit_index_reg[2]),
        .I1(bit_index_reg[0]),
        .I2(bit_index_reg[1]),
        .O(\FSM_sequential_state_reg[0]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hE1F0)) 
    \FSM_sequential_state_reg[1]_i_1__0 
       (.I0(state_reg[2]),
        .I1(\FSM_sequential_state_reg[2]_i_2__0_n_0 ),
        .I2(state_reg[1]),
        .I3(state_reg[0]),
        .O(\FSM_sequential_state_reg[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hBAA0)) 
    \FSM_sequential_state_reg[2]_i_1__0 
       (.I0(state_reg[2]),
        .I1(\FSM_sequential_state_reg[2]_i_2__0_n_0 ),
        .I2(state_reg[1]),
        .I3(state_reg[0]),
        .O(\FSM_sequential_state_reg[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_sequential_state_reg[2]_i_2__0 
       (.I0(\FSM_sequential_state_reg[2]_i_3_n_0 ),
        .I1(\FSM_sequential_state_reg[2]_i_4_n_0 ),
        .I2(clk_cnt_reg_reg[9]),
        .I3(clk_cnt_reg_reg[10]),
        .I4(clk_cnt_reg_reg[8]),
        .I5(clk_cnt_reg_reg[11]),
        .O(\FSM_sequential_state_reg[2]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_sequential_state_reg[2]_i_3 
       (.I0(clk_cnt_reg_reg[4]),
        .I1(clk_cnt_reg_reg[5]),
        .I2(clk_cnt_reg_reg[13]),
        .I3(clk_cnt_reg_reg[1]),
        .I4(clk_cnt_reg_reg[12]),
        .I5(clk_cnt_reg_reg[2]),
        .O(\FSM_sequential_state_reg[2]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_state_reg[2]_i_4 
       (.I0(clk_cnt_reg_reg[0]),
        .I1(clk_cnt_reg_reg[3]),
        .I2(clk_cnt_reg_reg[6]),
        .I3(clk_cnt_reg_reg[7]),
        .O(\FSM_sequential_state_reg[2]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "idle:000,send_start_bit:001,send_data_bits:010,send_stop_bit:011,cleanup:100," *) 
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE \FSM_sequential_state_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[0]_CE_cooolgate_en_sig_13 ),
        .D(\FSM_sequential_state_reg[0]_i_1__0_n_0 ),
        .Q(state_reg[0]),
        .R(\<const0> ));
  LUT5 #(
    .INIT(32'hff0703ff)) 
    \FSM_sequential_state_reg_reg[0]_CE_cooolgate_en_gate_26 
       (.I0(\FSM_sequential_state_reg_reg[0]_0 ),
        .I1(\FSM_sequential_state_reg[2]_i_2__0_n_0 ),
        .I2(state_reg[2]),
        .I3(state_reg[1]),
        .I4(state_reg[0]),
        .O(\FSM_sequential_state_reg_reg[0]_CE_cooolgate_en_sig_13 ));
  (* FSM_ENCODED_STATES = "idle:000,send_start_bit:001,send_data_bits:010,send_stop_bit:011,cleanup:100," *) 
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE \FSM_sequential_state_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[0]_CE_cooolgate_en_sig_13 ),
        .D(\FSM_sequential_state_reg[1]_i_1__0_n_0 ),
        .Q(state_reg[1]),
        .R(\<const0> ));
  (* FSM_ENCODED_STATES = "idle:000,send_start_bit:001,send_data_bits:010,send_stop_bit:011,cleanup:100," *) 
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE \FSM_sequential_state_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_sequential_state_reg_reg[0]_CE_cooolgate_en_sig_13 ),
        .D(\FSM_sequential_state_reg[2]_i_1__0_n_0 ),
        .Q(state_reg[2]),
        .R(\<const0> ));
  GND GND
       (.G(\<const0> ));
  (* \PinAttr:I1:HOLD_DETOUR  = "190" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \bit_index_reg[0]_i_1 
       (.I0(\bit_index_reg[2]_i_2_n_0 ),
        .I1(bit_index_reg[0]),
        .O(\bit_index_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \bit_index_reg[1]_i_1 
       (.I0(bit_index_reg[0]),
        .I1(\bit_index_reg[2]_i_2_n_0 ),
        .I2(bit_index_reg[1]),
        .O(\bit_index_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \bit_index_reg[2]_i_1 
       (.I0(bit_index_reg[1]),
        .I1(bit_index_reg[0]),
        .I2(\bit_index_reg[2]_i_2_n_0 ),
        .I3(bit_index_reg[2]),
        .O(\bit_index_reg[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \bit_index_reg[2]_i_2 
       (.I0(\FSM_sequential_state_reg[2]_i_3_n_0 ),
        .I1(\FSM_sequential_state_reg[2]_i_4_n_0 ),
        .I2(\bit_index_reg[2]_i_3_n_0 ),
        .I3(state_reg[2]),
        .I4(state_reg[1]),
        .I5(state_reg[0]),
        .O(\bit_index_reg[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \bit_index_reg[2]_i_3 
       (.I0(clk_cnt_reg_reg[9]),
        .I1(clk_cnt_reg_reg[10]),
        .I2(clk_cnt_reg_reg[8]),
        .I3(clk_cnt_reg_reg[11]),
        .O(\bit_index_reg[2]_i_3_n_0 ));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bit_index_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\bit_index_reg_reg[0]_CE_cooolgate_en_sig_12 ),
        .D(\bit_index_reg[0]_i_1_n_0 ),
        .Q(bit_index_reg[0]),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \bit_index_reg_reg[0]_CE_cooolgate_en_gate_19 
       (.I0(state_reg[2]),
        .I1(state_reg[1]),
        .I2(state_reg[0]),
        .I3(clk_cnt_reg_reg[9]),
        .I4(\FSM_sequential_state_reg[2]_i_4_n_0 ),
        .I5(\FSM_sequential_state_reg[2]_i_3_n_0 ),
        .O(\bit_index_reg_reg[0]_CE_cooolgate_en_sig_12 ));
  (* IS_CLOCK_GATED *) 
  (* IS_PWROPT_IDT_ONLY *) 
  (* POWER_OPTED_CE = "CE=NEW" *) 
  FDRE #(
    .INIT(1'b0)) 
    \bit_index_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\bit_index_reg_reg[0]_CE_cooolgate_en_sig_12 ),
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
        .CE(\bit_index_reg_reg[0]_CE_cooolgate_en_sig_12 ),
        .D(\bit_index_reg[2]_i_1_n_0 ),
        .Q(bit_index_reg[2]),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'h5555555777757777)) 
    \clk_cnt_reg[0]_i_10__0 
       (.I0(clk_cnt_reg_reg[0]),
        .I1(state_reg[2]),
        .I2(state_reg[1]),
        .I3(state_reg[0]),
        .I4(\FSM_sequential_state_reg_reg[0]_0 ),
        .I5(\FSM_sequential_state_reg[2]_i_2__0_n_0 ),
        .O(\clk_cnt_reg[0]_i_10__0_n_0 ));
  LUT4 #(
    .INIT(16'h5551)) 
    \clk_cnt_reg[0]_i_1__0 
       (.I0(state_reg[2]),
        .I1(\FSM_sequential_state_reg_reg[0]_0 ),
        .I2(state_reg[1]),
        .I3(state_reg[0]),
        .O(\clk_cnt_reg[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAABFFFB)) 
    \clk_cnt_reg[0]_i_3 
       (.I0(clk_cnt_reg_reg[3]),
        .I1(\FSM_sequential_state_reg_reg[0]_0 ),
        .I2(state_reg[1]),
        .I3(state_reg[0]),
        .I4(\FSM_sequential_state_reg[2]_i_2__0_n_0 ),
        .I5(state_reg[2]),
        .O(\clk_cnt_reg[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAABFFFB)) 
    \clk_cnt_reg[0]_i_4 
       (.I0(clk_cnt_reg_reg[2]),
        .I1(\FSM_sequential_state_reg_reg[0]_0 ),
        .I2(state_reg[1]),
        .I3(state_reg[0]),
        .I4(\FSM_sequential_state_reg[2]_i_2__0_n_0 ),
        .I5(state_reg[2]),
        .O(\clk_cnt_reg[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAABFFFB)) 
    \clk_cnt_reg[0]_i_5 
       (.I0(clk_cnt_reg_reg[1]),
        .I1(\FSM_sequential_state_reg_reg[0]_0 ),
        .I2(state_reg[1]),
        .I3(state_reg[0]),
        .I4(\FSM_sequential_state_reg[2]_i_2__0_n_0 ),
        .I5(state_reg[2]),
        .O(\clk_cnt_reg[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAABFFFB)) 
    \clk_cnt_reg[0]_i_6 
       (.I0(clk_cnt_reg_reg[0]),
        .I1(\FSM_sequential_state_reg_reg[0]_0 ),
        .I2(state_reg[1]),
        .I3(state_reg[0]),
        .I4(\FSM_sequential_state_reg[2]_i_2__0_n_0 ),
        .I5(state_reg[2]),
        .O(\clk_cnt_reg[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h5555555777757777)) 
    \clk_cnt_reg[0]_i_7__0 
       (.I0(clk_cnt_reg_reg[3]),
        .I1(state_reg[2]),
        .I2(state_reg[1]),
        .I3(state_reg[0]),
        .I4(\FSM_sequential_state_reg_reg[0]_0 ),
        .I5(\FSM_sequential_state_reg[2]_i_2__0_n_0 ),
        .O(\clk_cnt_reg[0]_i_7__0_n_0 ));
  LUT6 #(
    .INIT(64'h5555555777757777)) 
    \clk_cnt_reg[0]_i_8__0 
       (.I0(clk_cnt_reg_reg[2]),
        .I1(state_reg[2]),
        .I2(state_reg[1]),
        .I3(state_reg[0]),
        .I4(\FSM_sequential_state_reg_reg[0]_0 ),
        .I5(\FSM_sequential_state_reg[2]_i_2__0_n_0 ),
        .O(\clk_cnt_reg[0]_i_8__0_n_0 ));
  LUT6 #(
    .INIT(64'h5555555777757777)) 
    \clk_cnt_reg[0]_i_9__0 
       (.I0(clk_cnt_reg_reg[1]),
        .I1(state_reg[2]),
        .I2(state_reg[1]),
        .I3(state_reg[0]),
        .I4(\FSM_sequential_state_reg_reg[0]_0 ),
        .I5(\FSM_sequential_state_reg[2]_i_2__0_n_0 ),
        .O(\clk_cnt_reg[0]_i_9__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAA80008)) 
    \clk_cnt_reg[12]_i_2__0 
       (.I0(clk_cnt_reg_reg[12]),
        .I1(\FSM_sequential_state_reg_reg[0]_0 ),
        .I2(state_reg[1]),
        .I3(state_reg[0]),
        .I4(\FSM_sequential_state_reg[2]_i_2__0_n_0 ),
        .I5(state_reg[2]),
        .O(\clk_cnt_reg[12]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h000001FDFFFFFFFF)) 
    \clk_cnt_reg[12]_i_3__0 
       (.I0(\FSM_sequential_state_reg_reg[0]_0 ),
        .I1(state_reg[1]),
        .I2(state_reg[0]),
        .I3(\FSM_sequential_state_reg[2]_i_2__0_n_0 ),
        .I4(state_reg[2]),
        .I5(clk_cnt_reg_reg[13]),
        .O(\clk_cnt_reg[12]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h5555555444454444)) 
    \clk_cnt_reg[12]_i_4__0 
       (.I0(clk_cnt_reg_reg[12]),
        .I1(state_reg[2]),
        .I2(state_reg[1]),
        .I3(state_reg[0]),
        .I4(\FSM_sequential_state_reg_reg[0]_0 ),
        .I5(\FSM_sequential_state_reg[2]_i_2__0_n_0 ),
        .O(\clk_cnt_reg[12]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAABFFFB)) 
    \clk_cnt_reg[4]_i_2 
       (.I0(clk_cnt_reg_reg[7]),
        .I1(\FSM_sequential_state_reg_reg[0]_0 ),
        .I2(state_reg[1]),
        .I3(state_reg[0]),
        .I4(\FSM_sequential_state_reg[2]_i_2__0_n_0 ),
        .I5(state_reg[2]),
        .O(\clk_cnt_reg[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAA80008)) 
    \clk_cnt_reg[4]_i_3 
       (.I0(clk_cnt_reg_reg[6]),
        .I1(\FSM_sequential_state_reg_reg[0]_0 ),
        .I2(state_reg[1]),
        .I3(state_reg[0]),
        .I4(\FSM_sequential_state_reg[2]_i_2__0_n_0 ),
        .I5(state_reg[2]),
        .O(\clk_cnt_reg[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAABFFFB)) 
    \clk_cnt_reg[4]_i_4 
       (.I0(clk_cnt_reg_reg[5]),
        .I1(\FSM_sequential_state_reg_reg[0]_0 ),
        .I2(state_reg[1]),
        .I3(state_reg[0]),
        .I4(\FSM_sequential_state_reg[2]_i_2__0_n_0 ),
        .I5(state_reg[2]),
        .O(\clk_cnt_reg[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAA80008)) 
    \clk_cnt_reg[4]_i_5 
       (.I0(clk_cnt_reg_reg[4]),
        .I1(\FSM_sequential_state_reg_reg[0]_0 ),
        .I2(state_reg[1]),
        .I3(state_reg[0]),
        .I4(\FSM_sequential_state_reg[2]_i_2__0_n_0 ),
        .I5(state_reg[2]),
        .O(\clk_cnt_reg[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h5555555777757777)) 
    \clk_cnt_reg[4]_i_6__0 
       (.I0(clk_cnt_reg_reg[7]),
        .I1(state_reg[2]),
        .I2(state_reg[1]),
        .I3(state_reg[0]),
        .I4(\FSM_sequential_state_reg_reg[0]_0 ),
        .I5(\FSM_sequential_state_reg[2]_i_2__0_n_0 ),
        .O(\clk_cnt_reg[4]_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'h5555555444454444)) 
    \clk_cnt_reg[4]_i_7__0 
       (.I0(clk_cnt_reg_reg[6]),
        .I1(state_reg[2]),
        .I2(state_reg[1]),
        .I3(state_reg[0]),
        .I4(\FSM_sequential_state_reg_reg[0]_0 ),
        .I5(\FSM_sequential_state_reg[2]_i_2__0_n_0 ),
        .O(\clk_cnt_reg[4]_i_7__0_n_0 ));
  LUT6 #(
    .INIT(64'h5555555777757777)) 
    \clk_cnt_reg[4]_i_8__0 
       (.I0(clk_cnt_reg_reg[5]),
        .I1(state_reg[2]),
        .I2(state_reg[1]),
        .I3(state_reg[0]),
        .I4(\FSM_sequential_state_reg_reg[0]_0 ),
        .I5(\FSM_sequential_state_reg[2]_i_2__0_n_0 ),
        .O(\clk_cnt_reg[4]_i_8__0_n_0 ));
  LUT6 #(
    .INIT(64'h5555555444454444)) 
    \clk_cnt_reg[4]_i_9__0 
       (.I0(clk_cnt_reg_reg[4]),
        .I1(state_reg[2]),
        .I2(state_reg[1]),
        .I3(state_reg[0]),
        .I4(\FSM_sequential_state_reg_reg[0]_0 ),
        .I5(\FSM_sequential_state_reg[2]_i_2__0_n_0 ),
        .O(\clk_cnt_reg[4]_i_9__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAABFFFB)) 
    \clk_cnt_reg[8]_i_2 
       (.I0(clk_cnt_reg_reg[11]),
        .I1(\FSM_sequential_state_reg_reg[0]_0 ),
        .I2(state_reg[1]),
        .I3(state_reg[0]),
        .I4(\FSM_sequential_state_reg[2]_i_2__0_n_0 ),
        .I5(state_reg[2]),
        .O(\clk_cnt_reg[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAA80008)) 
    \clk_cnt_reg[8]_i_3 
       (.I0(clk_cnt_reg_reg[10]),
        .I1(\FSM_sequential_state_reg_reg[0]_0 ),
        .I2(state_reg[1]),
        .I3(state_reg[0]),
        .I4(\FSM_sequential_state_reg[2]_i_2__0_n_0 ),
        .I5(state_reg[2]),
        .O(\clk_cnt_reg[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAA80008)) 
    \clk_cnt_reg[8]_i_4 
       (.I0(clk_cnt_reg_reg[9]),
        .I1(\FSM_sequential_state_reg_reg[0]_0 ),
        .I2(state_reg[1]),
        .I3(state_reg[0]),
        .I4(\FSM_sequential_state_reg[2]_i_2__0_n_0 ),
        .I5(state_reg[2]),
        .O(\clk_cnt_reg[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAA80008)) 
    \clk_cnt_reg[8]_i_5 
       (.I0(clk_cnt_reg_reg[8]),
        .I1(\FSM_sequential_state_reg_reg[0]_0 ),
        .I2(state_reg[1]),
        .I3(state_reg[0]),
        .I4(\FSM_sequential_state_reg[2]_i_2__0_n_0 ),
        .I5(state_reg[2]),
        .O(\clk_cnt_reg[8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h5555555777757777)) 
    \clk_cnt_reg[8]_i_6__0 
       (.I0(clk_cnt_reg_reg[11]),
        .I1(state_reg[2]),
        .I2(state_reg[1]),
        .I3(state_reg[0]),
        .I4(\FSM_sequential_state_reg_reg[0]_0 ),
        .I5(\FSM_sequential_state_reg[2]_i_2__0_n_0 ),
        .O(\clk_cnt_reg[8]_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'h5555555444454444)) 
    \clk_cnt_reg[8]_i_7__0 
       (.I0(clk_cnt_reg_reg[10]),
        .I1(state_reg[2]),
        .I2(state_reg[1]),
        .I3(state_reg[0]),
        .I4(\FSM_sequential_state_reg_reg[0]_0 ),
        .I5(\FSM_sequential_state_reg[2]_i_2__0_n_0 ),
        .O(\clk_cnt_reg[8]_i_7__0_n_0 ));
  LUT6 #(
    .INIT(64'h5555555444454444)) 
    \clk_cnt_reg[8]_i_8__0 
       (.I0(clk_cnt_reg_reg[9]),
        .I1(state_reg[2]),
        .I2(state_reg[1]),
        .I3(state_reg[0]),
        .I4(\FSM_sequential_state_reg_reg[0]_0 ),
        .I5(\FSM_sequential_state_reg[2]_i_2__0_n_0 ),
        .O(\clk_cnt_reg[8]_i_8__0_n_0 ));
  LUT6 #(
    .INIT(64'h5555555444454444)) 
    \clk_cnt_reg[8]_i_9__0 
       (.I0(clk_cnt_reg_reg[8]),
        .I1(state_reg[2]),
        .I2(state_reg[1]),
        .I3(state_reg[0]),
        .I4(\FSM_sequential_state_reg_reg[0]_0 ),
        .I5(\FSM_sequential_state_reg[2]_i_2__0_n_0 ),
        .O(\clk_cnt_reg[8]_i_9__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_cnt_reg[0]_i_1__0_n_0 ),
        .D(\clk_cnt_reg_reg[0]_i_2__0_n_7 ),
        .Q(clk_cnt_reg_reg[0]),
        .R(\<const0> ));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \clk_cnt_reg_reg[0]_i_2__0 
       (.CI(\<const0> ),
        .CO({\clk_cnt_reg_reg[0]_i_2__0_n_0 ,\NLW_clk_cnt_reg_reg[0]_i_2__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\clk_cnt_reg[0]_i_3_n_0 ,\clk_cnt_reg[0]_i_4_n_0 ,\clk_cnt_reg[0]_i_5_n_0 ,\clk_cnt_reg[0]_i_6_n_0 }),
        .O({\clk_cnt_reg_reg[0]_i_2__0_n_4 ,\clk_cnt_reg_reg[0]_i_2__0_n_5 ,\clk_cnt_reg_reg[0]_i_2__0_n_6 ,\clk_cnt_reg_reg[0]_i_2__0_n_7 }),
        .S({\clk_cnt_reg[0]_i_7__0_n_0 ,\clk_cnt_reg[0]_i_8__0_n_0 ,\clk_cnt_reg[0]_i_9__0_n_0 ,\clk_cnt_reg[0]_i_10__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_cnt_reg[0]_i_1__0_n_0 ),
        .D(\clk_cnt_reg_reg[8]_i_1__0_n_5 ),
        .Q(clk_cnt_reg_reg[10]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_cnt_reg[0]_i_1__0_n_0 ),
        .D(\clk_cnt_reg_reg[8]_i_1__0_n_4 ),
        .Q(clk_cnt_reg_reg[11]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_cnt_reg[0]_i_1__0_n_0 ),
        .D(\clk_cnt_reg_reg[12]_i_1__0_n_7 ),
        .Q(clk_cnt_reg_reg[12]),
        .R(\<const0> ));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \clk_cnt_reg_reg[12]_i_1__0 
       (.CI(\clk_cnt_reg_reg[8]_i_1__0_n_0 ),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\clk_cnt_reg[12]_i_2__0_n_0 }),
        .O({\clk_cnt_reg_reg[12]_i_1__0_n_6 ,\clk_cnt_reg_reg[12]_i_1__0_n_7 }),
        .S({\<const0> ,\<const0> ,\clk_cnt_reg[12]_i_3__0_n_0 ,\clk_cnt_reg[12]_i_4__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_cnt_reg[0]_i_1__0_n_0 ),
        .D(\clk_cnt_reg_reg[12]_i_1__0_n_6 ),
        .Q(clk_cnt_reg_reg[13]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_cnt_reg[0]_i_1__0_n_0 ),
        .D(\clk_cnt_reg_reg[0]_i_2__0_n_6 ),
        .Q(clk_cnt_reg_reg[1]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_cnt_reg[0]_i_1__0_n_0 ),
        .D(\clk_cnt_reg_reg[0]_i_2__0_n_5 ),
        .Q(clk_cnt_reg_reg[2]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_cnt_reg[0]_i_1__0_n_0 ),
        .D(\clk_cnt_reg_reg[0]_i_2__0_n_4 ),
        .Q(clk_cnt_reg_reg[3]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_cnt_reg[0]_i_1__0_n_0 ),
        .D(\clk_cnt_reg_reg[4]_i_1__0_n_7 ),
        .Q(clk_cnt_reg_reg[4]),
        .R(\<const0> ));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \clk_cnt_reg_reg[4]_i_1__0 
       (.CI(\clk_cnt_reg_reg[0]_i_2__0_n_0 ),
        .CO({\clk_cnt_reg_reg[4]_i_1__0_n_0 ,\NLW_clk_cnt_reg_reg[4]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\clk_cnt_reg[4]_i_2_n_0 ,\clk_cnt_reg[4]_i_3_n_0 ,\clk_cnt_reg[4]_i_4_n_0 ,\clk_cnt_reg[4]_i_5_n_0 }),
        .O({\clk_cnt_reg_reg[4]_i_1__0_n_4 ,\clk_cnt_reg_reg[4]_i_1__0_n_5 ,\clk_cnt_reg_reg[4]_i_1__0_n_6 ,\clk_cnt_reg_reg[4]_i_1__0_n_7 }),
        .S({\clk_cnt_reg[4]_i_6__0_n_0 ,\clk_cnt_reg[4]_i_7__0_n_0 ,\clk_cnt_reg[4]_i_8__0_n_0 ,\clk_cnt_reg[4]_i_9__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_cnt_reg[0]_i_1__0_n_0 ),
        .D(\clk_cnt_reg_reg[4]_i_1__0_n_6 ),
        .Q(clk_cnt_reg_reg[5]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_cnt_reg[0]_i_1__0_n_0 ),
        .D(\clk_cnt_reg_reg[4]_i_1__0_n_5 ),
        .Q(clk_cnt_reg_reg[6]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_cnt_reg[0]_i_1__0_n_0 ),
        .D(\clk_cnt_reg_reg[4]_i_1__0_n_4 ),
        .Q(clk_cnt_reg_reg[7]),
        .R(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_cnt_reg[0]_i_1__0_n_0 ),
        .D(\clk_cnt_reg_reg[8]_i_1__0_n_7 ),
        .Q(clk_cnt_reg_reg[8]),
        .R(\<const0> ));
  (* ADDER_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \clk_cnt_reg_reg[8]_i_1__0 
       (.CI(\clk_cnt_reg_reg[4]_i_1__0_n_0 ),
        .CO({\clk_cnt_reg_reg[8]_i_1__0_n_0 ,\NLW_clk_cnt_reg_reg[8]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const0> ),
        .DI({\clk_cnt_reg[8]_i_2_n_0 ,\clk_cnt_reg[8]_i_3_n_0 ,\clk_cnt_reg[8]_i_4_n_0 ,\clk_cnt_reg[8]_i_5_n_0 }),
        .O({\clk_cnt_reg_reg[8]_i_1__0_n_4 ,\clk_cnt_reg_reg[8]_i_1__0_n_5 ,\clk_cnt_reg_reg[8]_i_1__0_n_6 ,\clk_cnt_reg_reg[8]_i_1__0_n_7 }),
        .S({\clk_cnt_reg[8]_i_6__0_n_0 ,\clk_cnt_reg[8]_i_7__0_n_0 ,\clk_cnt_reg[8]_i_8__0_n_0 ,\clk_cnt_reg[8]_i_9__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \clk_cnt_reg_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\clk_cnt_reg[0]_i_1__0_n_0 ),
        .D(\clk_cnt_reg_reg[8]_i_1__0_n_6 ),
        .Q(clk_cnt_reg_reg[9]),
        .R(\<const0> ));
  LUT4 #(
    .INIT(16'h0001)) 
    \tx_data_reg[7]_i_1 
       (.I0(state_reg[2]),
        .I1(state_reg[1]),
        .I2(state_reg[0]),
        .I3(\FSM_sequential_state_reg_reg[0]_0 ),
        .O(\tx_data_reg[7]_i_1_n_0 ));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\tx_data_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(Q[0]),
        .Q(tx_data_reg[0]),
        .R(\<const0> ));
  (* OPT_MODIFIED = "REMAP" *) 
  LUT5 #(
    .INIT(32'h00000004)) 
    \tx_data_reg_reg[0]_CE_cooolgate_en_gate_2_LOPT_REMAP 
       (.I0(\FSM_sequential_state_reg_reg[0]_0 ),
        .I1(\tx_data_reg[7]_i_1_n_0 ),
        .I2(state_reg[2]),
        .I3(state_reg[1]),
        .I4(state_reg[0]),
        .O(\tx_data_reg_reg[0]_CE_cooolgate_en_sig_2 ));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\tx_data_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(Q[1]),
        .Q(tx_data_reg[1]),
        .R(\<const0> ));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\tx_data_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(Q[2]),
        .Q(tx_data_reg[2]),
        .R(\<const0> ));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\tx_data_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(Q[3]),
        .Q(tx_data_reg[3]),
        .R(\<const0> ));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\tx_data_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(Q[4]),
        .Q(tx_data_reg[4]),
        .R(\<const0> ));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\tx_data_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(Q[5]),
        .Q(tx_data_reg[5]),
        .R(\<const0> ));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\tx_data_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(Q[6]),
        .Q(tx_data_reg[6]),
        .R(\<const0> ));
  (* IS_CLOCK_GATED *) 
  (* POWER_OPTED_CE = "CE=AUG" *) 
  FDRE #(
    .INIT(1'b0)) 
    \tx_data_reg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\tx_data_reg_reg[0]_CE_cooolgate_en_sig_2 ),
        .D(Q[7]),
        .Q(tx_data_reg[7]),
        .R(\<const0> ));
  LUT6 #(
    .INIT(64'h0000FFE200FF00FF)) 
    uart_rxd_out_OBUF_inst_i_1
       (.I0(uart_rxd_out_OBUF_inst_i_2_n_0),
        .I1(bit_index_reg[2]),
        .I2(uart_rxd_out_OBUF_inst_i_3_n_0),
        .I3(state_reg[0]),
        .I4(state_reg[2]),
        .I5(state_reg[1]),
        .O(uart_rxd_out_OBUF));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    uart_rxd_out_OBUF_inst_i_2
       (.I0(tx_data_reg[3]),
        .I1(tx_data_reg[2]),
        .I2(bit_index_reg[1]),
        .I3(tx_data_reg[1]),
        .I4(bit_index_reg[0]),
        .I5(tx_data_reg[0]),
        .O(uart_rxd_out_OBUF_inst_i_2_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    uart_rxd_out_OBUF_inst_i_3
       (.I0(tx_data_reg[7]),
        .I1(tx_data_reg[6]),
        .I2(bit_index_reg[1]),
        .I3(tx_data_reg[5]),
        .I4(bit_index_reg[0]),
        .I5(tx_data_reg[4]),
        .O(uart_rxd_out_OBUF_inst_i_3_n_0));
endmodule
