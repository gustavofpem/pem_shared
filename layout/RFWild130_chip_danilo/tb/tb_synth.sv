`include "./layout/contador_rfwild.synth.v"
`include "./tb/golden/contador_rfwild_model.sv"
`include "./tb/auxiliar/mod_checker.sv"
`timescale 10ps/1ps
module contador_tb();

//fios e registradores auxiliares
reg clk,rst;
wire [3:0] cnt,cnt_model;
wire diff_flag;

//instanciacao do módulo a ser verificado
contador_rfwild DUV(
                .clk(clk),
                .reset(rst),
                .contador(cnt[3:0])
);
contador_rfwild_model model(
                .clk(clk),
                .reset(rst),
                .contador(cnt_model[3:0])
);

mod_checker chk1(.model(cnt_model[3:0]),
		 .duv_in(cnt[3:0]),
		 .diff_flag(diff_flag)
);
/////////testbench propriamente dito
//always@(posedge clk) begin
//  $write("Time: %t, clk: %b, rst:%b, cnt:%b, cnt_model:%b\n", $time, clk, rst, cnt, cnt_model); 
//end

always #250 clk = ~clk;

initial begin
  clk = 1'b0;
  rst = 1'b0;
  #2000;
  rst = 1'b1;
  #8000;
	if(diff_flag==1'b0)
	begin
		$write("Success!!\n");
		$finish;
	end
end 

always @(negedge clk)
	begin
	if(diff_flag==1'b1)
	begin
		$write("Error. Time: %t, clk: %b, rst:%b, cnt:%b, cnt_model:%b\n", $time, clk, rst, cnt, cnt_model);
	#200 $stop;
	end
end

//fim do testbench
endmodule
