`timescale 10ns/10ps

module tb();

logic clk, rst, start;
logic [6:0] HEX0;
logic [6:0] HEX1;
logic [6:0] HEX2;
logic [6:0] HEX3;
logic [9:0] milesimos;
logic [4:0] horas;

questao5 q5instance(
	.clk(clk),
	.rst(rst),
	.start(start),
	.HEX0(HEX0),
	.HEX1(HEX1),
	.HEX2(HEX2),
	.HEX3(HEX3),
	.milesimos(milesimos),
	.horas(horas)
);

initial
begin
	clk = 0;
	rst = 0;
	start = 0;
	
	#20ns rst = 1;
	#10ns rst = 0;
	#10ns start = 1;
	#3000ns rst = 1;
	#10ns rst = 0;
	#2000ns start = 0;
	#2000ns start = 1;
end

always
	#10ns clk = ~clk;

endmodule