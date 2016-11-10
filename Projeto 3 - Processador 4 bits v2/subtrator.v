module subtrator(			//Declaration of the input and output ports used by the module
    input clk,
	 input [3:0] a,		//Input operand - 3 bits wide
    input [3:0] b,		//Input operand - 3 bits wide
	 input [3:0] op,
	 output reg s,
    output reg [4:0] out		//Output - 4 bits wide
    );

reg [4:0] resultado;

always @(posedge clk)
begin
	resultado <= a - b;
	if(op == 4'b0010)
		s <= 1; //resultado[4];
	else
		s <= 0;
	if(s)
		out <= ~resultado + 1'b1;
	else
		out <= resultado;
end
endmodule