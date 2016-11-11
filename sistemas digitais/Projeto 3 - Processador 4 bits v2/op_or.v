module op_or(				//Declaration of the input and output ports used by the module
    input [2:0] a,		//Input operand - 1 bits wide
    input [2:0] b,		//Input operand - 1 bits wide
    output [3:0] out		//Output - 1 bits wide
    );

assign out = a | b;		//Or function set as output.

endmodule