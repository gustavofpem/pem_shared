module div(				//Declaration of the input and output ports used by the module
    input [3:0] a,		//Input operand - 3 bits wide
    input [3:0] b,      //Input operand - 3 bits wide
	 output reg [3:0] out		//Output - 9 bits wide
);

always @(*)
begin
	if(b)
		out = a/b;		//Division
	else
		out = 00;
end
endmodule