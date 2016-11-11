module op_and(				//Declaration of the input and output ports used by the module
    input [2:0] a,		//Input operand - 3 bits wide
    input [2:0] b,		//Input operand - 3 bits wide
    output [3:0] out		//Output - 4 bits wide
    );

assign out = a & b;		//And function set as output.

endmodule