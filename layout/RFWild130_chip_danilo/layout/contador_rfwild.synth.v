
// Generated by Cadence Genus(TM) Synthesis Solution 16.21-s018_1
// Generated on: Apr  1 2017 14:06:18 -03 (Apr  1 2017 17:06:18 UTC)

// Verification Directory fv/contador_rfwild 

module contador_rfwild(clk, reset, contador);
  input clk, reset;
  output [3:0] contador;
  wire clk, reset;
  wire [3:0] contador;
  wire UNCONNECTED, UNCONNECTED0, UNCONNECTED1, n_0, n_1, n_2, n_3, n_4;
  wire n_5, n_6;
  DFFR_E \contador_reg[3] (.RN (reset), .CLK (clk), .D (n_6), .Q
       (contador[3]), .QBAR (UNCONNECTED));
  XNOR2_A g64(.A (contador[3]), .B (n_5), .Z (n_6));
  DFFR_E \contador_reg[2] (.RN (reset), .CLK (clk), .D (n_4), .Q
       (contador[2]), .QBAR (UNCONNECTED0));
  NAND2_A g67(.A (n_2), .B (contador[2]), .Z (n_5));
  XNOR2_A g66(.A (contador[2]), .B (n_1), .Z (n_4));
  DFFR_E \contador_reg[1] (.RN (reset), .CLK (clk), .D (n_3), .Q
       (contador[1]), .QBAR (UNCONNECTED1));
  XOR2_A g68(.A (contador[1]), .B (contador[0]), .Z (n_3));
  INVERT_A g70(.A (n_1), .Z (n_2));
  DFFR_E \contador_reg[0] (.RN (reset), .CLK (clk), .D (n_0), .Q
       (contador[0]), .QBAR (n_0));
  NAND2_A g71(.A (contador[0]), .B (contador[1]), .Z (n_1));
endmodule

