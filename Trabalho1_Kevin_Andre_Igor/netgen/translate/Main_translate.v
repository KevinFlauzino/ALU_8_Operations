////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: Main_translate.v
// /___/   /\     Timestamp: Wed Jun 29 16:51:17 2022
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/translate -ofmt verilog -sim Main.ngd Main_translate.v 
// Device	: 3s700anfgg484-4
// Input file	: Main.ngd
// Output file	: /home/sd/Documents/Trab1/Trabalho1_Kevin_Andre_Igor/netgen/translate/Main_translate.v
// # of Modules	: 1
// Design Name	: Main
// Xilinx        : /opt/Xilinx/14.7/ISE_DS/ISE/
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module Main (
  reset, confirma, resultado, switchs
);
  input reset;
  input confirma;
  output [7 : 0] resultado;
  input [3 : 0] switchs;
  wire N2;
  wire NlwRenamedSig_IO_confirma;
  wire confirma_IBUF_2;
  wire confirma_IBUF1;
  wire resultado_0_OBUF_16;
  wire resultado_1_OBUF_17;
  wire resultado_2_OBUF_18;
  wire resultado_3_OBUF_19;
  wire resultado_4_OBUF_20;
  wire switchs_0_IBUF_25;
  wire switchs_1_IBUF_26;
  wire switchs_2_IBUF_27;
  wire switchs_3_IBUF_28;
  wire NlwRenamedSig_IO_reset;
  wire reset_IBUF_30;
  wire VCC;
  wire GND;
  wire [3 : 0] n1_mux0000;
  assign
    NlwRenamedSig_IO_reset = reset,
    NlwRenamedSig_IO_confirma = confirma;
  X_ZERO   XST_GND (
    .O(resultado_4_OBUF_20)
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  n1_mux0000_0 (
    .I(switchs_0_IBUF_25),
    .CLK(confirma_IBUF_2),
    .O(n1_mux0000[0]),
    .GE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  n1_mux0000_1 (
    .I(switchs_1_IBUF_26),
    .CLK(confirma_IBUF_2),
    .O(n1_mux0000[1]),
    .GE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  n1_mux0000_2 (
    .I(switchs_2_IBUF_27),
    .CLK(confirma_IBUF_2),
    .O(n1_mux0000[2]),
    .GE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LATCHE #(
    .INIT ( 1'b0 ))
  n1_mux0000_3 (
    .I(switchs_3_IBUF_28),
    .CLK(confirma_IBUF_2),
    .O(n1_mux0000[3]),
    .GE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LUT3 #(
    .INIT ( 8'h10 ))
  resultado_0_mux0004111 (
    .ADR0(switchs_2_IBUF_27),
    .ADR1(switchs_3_IBUF_28),
    .ADR2(confirma_IBUF1),
    .O(N2)
  );
  X_LUT4 #(
    .INIT ( 16'h0828 ))
  resultado_3_mux00041 (
    .ADR0(N2),
    .ADR1(n1_mux0000[3]),
    .ADR2(switchs_1_IBUF_26),
    .ADR3(switchs_0_IBUF_25),
    .O(resultado_3_OBUF_19)
  );
  X_LUT4 #(
    .INIT ( 16'h0828 ))
  resultado_2_mux00041 (
    .ADR0(N2),
    .ADR1(n1_mux0000[2]),
    .ADR2(switchs_1_IBUF_26),
    .ADR3(switchs_0_IBUF_25),
    .O(resultado_2_OBUF_18)
  );
  X_LUT4 #(
    .INIT ( 16'h0828 ))
  resultado_1_mux00041 (
    .ADR0(N2),
    .ADR1(n1_mux0000[1]),
    .ADR2(switchs_1_IBUF_26),
    .ADR3(switchs_0_IBUF_25),
    .O(resultado_1_OBUF_17)
  );
  X_LUT4 #(
    .INIT ( 16'h0828 ))
  resultado_0_mux00041 (
    .ADR0(N2),
    .ADR1(n1_mux0000[0]),
    .ADR2(switchs_1_IBUF_26),
    .ADR3(switchs_0_IBUF_25),
    .O(resultado_0_OBUF_16)
  );
  X_BUF   confirma_IBUF (
    .I(NlwRenamedSig_IO_confirma),
    .O(confirma_IBUF1)
  );
  X_BUF   switchs_3_IBUF (
    .I(switchs[3]),
    .O(switchs_3_IBUF_28)
  );
  X_BUF   switchs_2_IBUF (
    .I(switchs[2]),
    .O(switchs_2_IBUF_27)
  );
  X_BUF   switchs_1_IBUF (
    .I(switchs[1]),
    .O(switchs_1_IBUF_26)
  );
  X_BUF   switchs_0_IBUF (
    .I(switchs[0]),
    .O(switchs_0_IBUF_25)
  );
  X_CKBUF   confirma_IBUF_BUFG (
    .I(confirma_IBUF1),
    .O(confirma_IBUF_2)
  );
  X_IPAD #(
    .LOC ( "T15" ))
  confirma_25 (
    .PAD(NlwRenamedSig_IO_confirma)
  );
  X_OPAD #(
    .LOC ( "R20" ))
  \resultado<0>  (
    .PAD(resultado[0])
  );
  X_OPAD #(
    .LOC ( "T19" ))
  \resultado<1>  (
    .PAD(resultado[1])
  );
  X_OPAD #(
    .LOC ( "U20" ))
  \resultado<2>  (
    .PAD(resultado[2])
  );
  X_OPAD #(
    .LOC ( "U19" ))
  \resultado<3>  (
    .PAD(resultado[3])
  );
  X_OPAD #(
    .LOC ( "V19" ))
  \resultado<4>  (
    .PAD(resultado[4])
  );
  X_OPAD #(
    .LOC ( "V20" ))
  \resultado<5>  (
    .PAD(resultado[5])
  );
  X_OPAD #(
    .LOC ( "Y22" ))
  \resultado<6>  (
    .PAD(resultado[6])
  );
  X_OPAD #(
    .LOC ( "W21" ))
  \resultado<7>  (
    .PAD(resultado[7])
  );
  X_IPAD #(
    .LOC ( "V8" ))
  \switchs<0>  (
    .PAD(switchs[0])
  );
  X_IPAD #(
    .LOC ( "U10" ))
  \switchs<1>  (
    .PAD(switchs[1])
  );
  X_IPAD #(
    .LOC ( "U8" ))
  \switchs<2>  (
    .PAD(switchs[2])
  );
  X_IPAD #(
    .LOC ( "T9" ))
  \switchs<3>  (
    .PAD(switchs[3])
  );
  X_IPAD #(
    .LOC ( "T16" ))
  reset_38 (
    .PAD(NlwRenamedSig_IO_reset)
  );
  X_BUF   reset_IBUF (
    .I(NlwRenamedSig_IO_reset),
    .O(reset_IBUF_30)
  );
  X_PD   confirma_PULLDOWN (
    .O(NlwRenamedSig_IO_confirma)
  );
  X_PD   reset_PULLDOWN (
    .O(NlwRenamedSig_IO_reset)
  );
  X_OBUF   resultado_0_OBUF (
    .I(resultado_0_OBUF_16),
    .O(resultado[0])
  );
  X_OBUF   resultado_1_OBUF (
    .I(resultado_1_OBUF_17),
    .O(resultado[1])
  );
  X_OBUF   resultado_2_OBUF (
    .I(resultado_2_OBUF_18),
    .O(resultado[2])
  );
  X_OBUF   resultado_3_OBUF (
    .I(resultado_3_OBUF_19),
    .O(resultado[3])
  );
  X_OBUF   resultado_4_OBUF (
    .I(resultado_4_OBUF_20),
    .O(resultado[4])
  );
  X_OBUF   resultado_5_OBUF (
    .I(resultado_4_OBUF_20),
    .O(resultado[5])
  );
  X_OBUF   resultado_6_OBUF (
    .I(resultado_4_OBUF_20),
    .O(resultado[6])
  );
  X_OBUF   resultado_7_OBUF (
    .I(resultado_4_OBUF_20),
    .O(resultado[7])
  );
  X_ONE   NlwBlock_Main_VCC (
    .O(VCC)
  );
  X_ZERO   NlwBlock_Main_GND (
    .O(GND)
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

