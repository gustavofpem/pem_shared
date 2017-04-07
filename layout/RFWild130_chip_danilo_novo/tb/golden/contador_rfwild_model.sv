`timescale 1ps/1ps
module contador_rfwild_model(input clk,input reset, output logic [3:0] contador);

always_ff @(posedge clk or negedge reset)
  if (~reset)
    contador<=4'd0;
  else
    contador<=contador+4'd1;

endmodule 


