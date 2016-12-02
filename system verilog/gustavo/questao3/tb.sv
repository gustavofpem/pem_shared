`timescale 10ns/10ps

module tb();

logic clk, rst;
logic [3:0] sequencia;

questao3 q3instance(
	.clk(clk),
	.rst(rst),
	.sequencia(sequencia)
);

initial
begin
	clk = 0;
	rst = 0;
	
	#20ns rst = 1;
	#10ns rst = 0;
	#50ns rst = 1;
	#10ns rst = 0;
end

always
	#10ns clk = ~clk;

endmodule