`timescale 1ns/1ps
module mod_checker(input [3:0] model,input [3:0] duv_in, output logic diff_flag);
	always_comb
		if(model!=duv_in)
			diff_flag<=1'b1;
		else
			diff_flag<=1'b0;

endmodule 


