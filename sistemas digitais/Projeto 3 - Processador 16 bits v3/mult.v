module mult(				//Declaration of the input and output ports used by the module
    input [2:0] a,		//Input operand - 3 bits wide
    input [2:0] b,      //Input operand - 3 bits wide
	 output [8:0] out		//Output - 8 bits wide
    );

assign out = a * b;		//Multiplication

endmodule