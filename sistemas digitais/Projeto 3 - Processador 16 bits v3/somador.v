module somador(			//Declaration of the input and output ports used by the module
    input [7:0] a,		//Input operand - 4 bits wide
    input [7:0] b,		//Input operand - 4 bits wide
    output [4:0] out		//Output - 5 bits wide
    );

assign out = a + b;		//Adder function set as output, sum of the operand "a" and the operand "b".

endmodule