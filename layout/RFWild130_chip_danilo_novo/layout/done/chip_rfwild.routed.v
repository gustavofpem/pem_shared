/*
###############################################################
#  Generated by:      Cadence Encounter 14.28-s033_1
#  OS:                Linux x86_64(Host ID pem-24)
#  Generated on:      Sat Apr  1 17:06:38 2017
#  Design:            chip_rfwild
#  Command:           saveNetlist ./layout/done/chip_rfwild.routed.v
###############################################################
*/
// Generated by Cadence Encounter(R) RTL Compiler RC14.28 - v14.20-s067_1
// Verification Directory fv/contador_rfwild 
module contador_rfwild (
	clk, 
	reset, 
	contador);
   input clk;
   input reset;
   output [3:0] contador;

   // Internal wires
   wire UNCONNECTED;
   wire UNCONNECTED0;
   wire UNCONNECTED1;
   wire n_4;
   wire n_5;
   wire n_6;
   wire n_7;
   wire n_8;
   wire n_9;
   wire n_10;

   DFFR_E \contador_reg[3]  (.RN(reset),
	.QBAR(UNCONNECTED),
	.Q(contador[3]),
	.D(n_10),
	.CLK(clk));
   XNOR2_C g65 (.Z(n_10),
	.B(n_8),
	.A(contador[3]));
   DFFR_E \contador_reg[2]  (.RN(reset),
	.QBAR(UNCONNECTED0),
	.Q(contador[2]),
	.D(n_9),
	.CLK(clk));
   XNOR2_C g67 (.Z(n_9),
	.B(n_6),
	.A(contador[2]));
   NAND2_D g68 (.Z(n_8),
	.B(contador[2]),
	.A(n_7));
   DFFR_E \contador_reg[1]  (.RN(reset),
	.QBAR(UNCONNECTED1),
	.Q(contador[1]),
	.D(n_5),
	.CLK(clk));
   INVERT_H g71 (.Z(n_7),
	.A(n_6));
   XOR2_C g69 (.Z(n_5),
	.B(contador[0]),
	.A(contador[1]));
   DFFR_E \contador_reg[0]  (.RN(reset),
	.QBAR(n_4),
	.Q(contador[0]),
	.D(n_4),
	.CLK(clk));
   NAND2_D g72 (.Z(n_6),
	.B(contador[1]),
	.A(contador[0]));
endmodule

module chip_rfwild (
	clk, 
	reset, 
	contador);
   input clk;
   input reset;
   output [3:0] contador;

   // Internal wires
   wire i_clk;
   wire i_rst;
   wire [3:0] i_contador;
   wire hiclk;
   wire hireset;
   wire hicontador0;
   wire hicontador1;
   wire hicontador2;
   wire hicontador3;
   wire loclk;
   wire loreset;
   wire locontador0;
   wire locontador1;
   wire locontador2;
   wire locontador3;
   wire VDD_pad;
   wire VDD;
   wire VDD150_pad;
   wire VDD150;

   contador_rfwild contador1 (.clk(i_clk),
	.reset(i_rst),
	.contador(i_contador));
   TIE1_D tiehi_clk (.Z(hiclk));
   TIE1_D tiehi_reset (.Z(hireset));
   TIE1_D tiehi_contador0 (.Z(hicontador0));
   TIE1_D tiehi_contador1 (.Z(hicontador1));
   TIE1_D tiehi_contador2 (.Z(hicontador2));
   TIE1_D tiehi_contador3 (.Z(hicontador3));
   TIE0_D tielo_clk (.Z(loclk));
   TIE0_D tielo_reset (.Z(loreset));
   TIE0_D tielo_contador0 (.Z(locontador0));
   TIE0_D tielo_contador1 (.Z(locontador1));
   TIE0_D tielo_contador2 (.Z(locontador2));
   TIE0_D tielo_contador3 (.Z(locontador3));
   AINSD_VDD150_PM_A ain_vdd (.PT(VDD),
	.PAD(VDD_pad));
   BC1520_PM_A p_clk (.ZH(),
	.Z(i_clk),
	.RE(hiclk),
	.PAD(clk),
	.DE(loclk),
	.A());
   BC1520_PM_A p_reset (.ZH(),
	.Z(i_rst),
	.RE(hireset),
	.PAD(reset),
	.DE(loreset),
	.A());
   BC1520_PM_A p_contador0 (.ZH(),
	.Z(),
	.RE(locontador0),
	.PAD(contador[0]),
	.DE(hicontador0),
	.A(i_contador[0]));
   BC1520_PM_A p_contador1 (.ZH(),
	.Z(),
	.RE(locontador1),
	.PAD(contador[1]),
	.DE(hicontador1),
	.A(i_contador[1]));
   BC1520_PM_A p_contador2 (.ZH(),
	.Z(),
	.RE(locontador2),
	.PAD(contador[2]),
	.DE(hicontador2),
	.A(i_contador[2]));
   BC1520_PM_A p_contador3 (.ZH(),
	.Z(),
	.RE(locontador3),
	.PAD(contador[3]),
	.DE(hicontador3),
	.A(i_contador[3]));
endmodule
