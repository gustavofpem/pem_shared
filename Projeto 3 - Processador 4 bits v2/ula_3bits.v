module ula_3bits(
	input clk,					//Input operand - clock signal
	input rst,					//Input operand - reset signal
	input [3:0] a,
	input [3:0] b,
	input [3:0] op,
	input sinal,
	output reg [8:0] out_ula
);

wire [3:0] out_somador;	//Transition operand - Connected to the adder output		
wire [3:0] out_subtrator;	//Transition operand - Connected to the adder output	
wire [8:0] out_mult;	//Transition operand - Connected to the multiplication output	
wire [3:0] out_op_and;	//Transition operand - Connected to the op_and output		
wire [3:0] out_op_or;	//Transition operand - Connected to the op_or output		
wire [3:0] out_op_xor;	//Transition operand - Connected to the op_xor output
wire [8:0] out_div;	//Transition operand - Connected to the div output

somador somadorinstance (		//Adder module instantiation
    .a(a),							//Relation between the "a" input from the calctop and the "a" input of the adder module.
    .b(b),							//Relation between the "b" input from the calctop and the "b" input of the adder module.					 
    .out(out_somador)			//Relation between the "out" output of the calctop and the "out_adder" output of the adder module.
    );

subtrator subtratorinstance (		//Adder module instantiation
    .clk(clk),
	 .a(a),							//Relation between the "a" input from the calctop and the "a" input of the adder module.
    .b(b),							//Relation between the "b" input from the calctop and the "b" input of the adder module.					 
    .s(sinal),
	 .op(op),
	 .out(out_subtrator)			//Relation between the "out" output of the calctop and the "out_adder" output of the adder module.
    );	 
	 
mult multinstance (			//Multiplication module instantiation
    .a(a),						//Relation between the "a" input from the calctop and the "a" input of the adder module.
    .b(b),
	 .out(out_mult)			//Relation between the "out" output of the calctop and the "out_adder" output of the adder module.
    );
	 
op_and op_andinstance (		//AND module instantiation
    .a(a),						//Relation between the "a" input from the calctop and the "a" input of the adder module.
    .b(b),						//Relation between the "b" input from the calctop and the "b" input of the adder module.					 
    .out(out_op_and)			//Relation between the "out" output of the calctop and the "out_adder" output of the adder module.
    );
	 
op_or op_orinstance (		//OR module instantiation
    .a(a),						//Relation between the "a" input from the calctop and the "a" input of the adder module.
    .b(b),						//Relation between the "b" input from the calctop and the "b" input of the adder module.					 
    .out(out_op_or)			//Relation between the "out" output of the calctop and the "out_adder" output of the adder module.
    );

op_xor op_xorinstance (		//XOR module instantiation
    .a(a),						//Relation between the "a" input from the calctop and the "a" input of the adder module.
    .b(b),						//Relation between the "b" input from the calctop and the "b" input of the adder module.					 
    .out(out_op_xor)			//Relation between the "out" output of the calctop and the "out_adder" output of the adder module.
    );	

div divinstance (		//XOR module instantiation
    .a(a),						//Relation between the "a" input from the calctop and the "a" input of the adder module.
    .b(b),						//Relation between the "b" input from the calctop and the "b" input of the adder module.					 
    .out(out_div)			//Relation between the "out" output of the calctop and the "out_adder" output of the adder module.
    );	
	 
always @(posedge clk)
begin
	case(op)				   	//Selects the output of the ALU
		4'b0001:				//Somador
			out_ula <= 5;//out_somador;
		4'b0010:				//Subtrator
			out_ula <= 6;//out_subtrator;
		4'b0011:				//Multiplicacao
			out_ula <= out_mult;
		4'b0100:				//AND
			out_ula <= out_op_and;
		4'b0101:				//OR
			out_ula <= out_op_or;
		4'b0110:				//XOR
			out_ula <= out_op_xor;
		4'b0111:				//DIV
			out_ula <= out_div;
		default: out_ula <= 0;
	endcase
end

endmodule