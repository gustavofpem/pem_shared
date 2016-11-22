module ula(
	input clk,					//Input operand - clock signal
	input rst,					//Input operand - reset signal
	input [7:0] a,
	input [7:0] b,
	input [3:0] op,
	output sinal,
	output reg carry,
	output reg [7:0] out_ula
);

wire [8:0] out_somador;		
wire [7:0] out_subtrator;		
wire [7:0] out_and;		
wire [7:0] out_or;
wire [7:0] out_not;
wire [7:0] out_xor;

somador somadorinstance (		//Adder module instantiation
    .a(a),							//Relation between the "a" input from the calctop and the "a" input of the adder module.
    .b(b),							//Relation between the "b" input from the calctop and the "b" input of the adder module.					 
    .out(out_somador)			//Relation between the "out" output of the calctop and the "out_adder" output of the adder module.
    );

subtrator subtratorinstance (	
    .clk(clk),
	 .a(a),							
    .b(b),	
	 .op(op),						 				 
    .s(sinal),
	 .out(out_subtrator)			
    );

op_and op_andinstance (		//AND module instantiation
    .a(a),						//Relation between the "a" input from the calctop and the "a" input of the adder module.
    .b(b),						//Relation between the "b" input from the calctop and the "b" input of the adder module.					 
    .out(out_and)			//Relation between the "out" output of the calctop and the "out_adder" output of the adder module.
    );

op_or op_orinstance (		//OR module instantiation
    .a(a),						//Relation between the "a" input from the calctop and the "a" input of the adder module.
    .b(b),						//Relation between the "b" input from the calctop and the "b" input of the adder module.					 
    .out(out_or)			//Relation between the "out" output of the calctop and the "out_adder" output of the adder module.
    );
	 
op_not op_notinstance (
    .a(b),
    .out(out_not)
    );

op_xor op_xorinstance (		//XOR module instantiation
    .a(a),						//Relation between the "a" input from the calctop and the "a" input of the adder module.
    .b(b),						//Relation between the "b" input from the calctop and the "b" input of the adder module.					 
    .out(out_xor)			//Relation between the "out" output of the calctop and the "out_adder" output of the adder module.
    );	
	 
parameter ADD = 4'h1;
parameter SUB = 4'h2;
parameter AND = 4'h3;
parameter OR = 4'h4;
parameter NOT = 4'h5;
parameter XOR = 4'h6;

always @(posedge clk)
begin
	case(op)
		ADD:
		begin
			out_ula <= out_somador[7:0];
			if(out_somador[8])
				carry <= out_somador[8];
			else
				carry <= 1'd0;
		end
		SUB:
			out_ula <= out_subtrator;
		AND:
			out_ula <= out_and;
		OR:
			out_ula <= out_or;
		NOT:
			out_ula <= out_not;
		XOR:
			out_ula <= out_xor;
		default: out_ula <= 8'd0;
	endcase
end

endmodule