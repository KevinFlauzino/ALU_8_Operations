////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: Main_synthesis.v
// /___/   /\     Timestamp: Wed Jun 29 21:34:39 2022
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim Main.ngc Main_synthesis.v 
// Device	: xc3s700an-4-fgg484
// Input file	: Main.ngc
// Output file	: C:\Users\Usuario\OneDrive\FACUL\UFRJ\Repositorios_git\ALU_8_Operations_VHDL\Trabalho1_Kevin_Andre_Igor\netgen\synthesis\Main_synthesis.v
// # of Modules	: 1
// Design Name	: Main
// Xilinx        : C:\Xilinx\14.7\ISE_DS\ISE\
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
  wire N0;
  wire \ULA_FINAL/N11 ;
  wire confirma_IBUF_7;
  wire confirma_IBUF1;
  wire reset_IBUF_10;
  wire resultado_0_OBUF_19;
  wire resultado_2_OBUF_20;
  wire switchs_0_IBUF_25;
  wire switchs_1_IBUF_26;
  wire switchs_2_IBUF_27;
  wire switchs_3_IBUF_28;
  wire [3 : 0] \ULA_FINAL/esc ;
  GND   XST_GND (
    .G(N0)
  );
  LDC   \ULA_FINAL/esc_3  (
    .CLR(reset_IBUF_10),
    .D(switchs_3_IBUF_28),
    .G(confirma_IBUF_7),
    .Q(\ULA_FINAL/esc [3])
  );
  LDC   \ULA_FINAL/esc_2  (
    .CLR(reset_IBUF_10),
    .D(switchs_2_IBUF_27),
    .G(confirma_IBUF_7),
    .Q(\ULA_FINAL/esc [2])
  );
  LDC   \ULA_FINAL/esc_1  (
    .CLR(reset_IBUF_10),
    .D(switchs_1_IBUF_26),
    .G(confirma_IBUF_7),
    .Q(\ULA_FINAL/esc [1])
  );
  LDC   \ULA_FINAL/esc_0  (
    .CLR(reset_IBUF_10),
    .D(switchs_0_IBUF_25),
    .G(confirma_IBUF_7),
    .Q(\ULA_FINAL/esc [0])
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  \ULA_FINAL/resultado_0_mux0004111  (
    .I0(\ULA_FINAL/esc [2]),
    .I1(\ULA_FINAL/esc [3]),
    .I2(confirma_IBUF1),
    .O(\ULA_FINAL/N11 )
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \ULA_FINAL/resultado_0_mux000411  (
    .I0(\ULA_FINAL/esc [0]),
    .I1(\ULA_FINAL/esc [1]),
    .I2(\ULA_FINAL/N11 ),
    .O(resultado_2_OBUF_20)
  );
  LUT3 #(
    .INIT ( 8'h60 ))
  \ULA_FINAL/resultado_0_mux00041  (
    .I0(\ULA_FINAL/esc [0]),
    .I1(\ULA_FINAL/esc [1]),
    .I2(\ULA_FINAL/N11 ),
    .O(resultado_0_OBUF_19)
  );
  IBUF   confirma_IBUF (
    .I(confirma),
    .O(confirma_IBUF1)
  );
  IBUF   reset_IBUF (
    .I(reset),
    .O(reset_IBUF_10)
  );
  IBUF   switchs_3_IBUF (
    .I(switchs[3]),
    .O(switchs_3_IBUF_28)
  );
  IBUF   switchs_2_IBUF (
    .I(switchs[2]),
    .O(switchs_2_IBUF_27)
  );
  IBUF   switchs_1_IBUF (
    .I(switchs[1]),
    .O(switchs_1_IBUF_26)
  );
  IBUF   switchs_0_IBUF (
    .I(switchs[0]),
    .O(switchs_0_IBUF_25)
  );
  OBUF   resultado_7_OBUF (
    .I(N0),
    .O(resultado[7])
  );
  OBUF   resultado_6_OBUF (
    .I(N0),
    .O(resultado[6])
  );
  OBUF   resultado_5_OBUF (
    .I(N0),
    .O(resultado[5])
  );
  OBUF   resultado_4_OBUF (
    .I(N0),
    .O(resultado[4])
  );
  OBUF   resultado_3_OBUF (
    .I(resultado_2_OBUF_20),
    .O(resultado[3])
  );
  OBUF   resultado_2_OBUF (
    .I(resultado_2_OBUF_20),
    .O(resultado[2])
  );
  OBUF   resultado_1_OBUF (
    .I(N0),
    .O(resultado[1])
  );
  OBUF   resultado_0_OBUF (
    .I(resultado_0_OBUF_19),
    .O(resultado[0])
  );
  BUFG   confirma_IBUF_BUFG (
    .I(confirma_IBUF1),
    .O(confirma_IBUF_7)
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

