module somador(			//Declaration of the input and output ports used by the module
    input [3:0] a,		//Input operand - 3 bits wide
    input [3:0] b,		//Input operand - 3 bits wide
    output [4:0] out		//Output - 4 bits wide
    );

assign out = a + b;		//Adder function set as output, sum of the operand "a" and the operand "b".

endmodule