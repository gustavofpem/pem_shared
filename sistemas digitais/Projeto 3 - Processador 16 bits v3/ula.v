module ula(
	input [7:0] a,
	input [7:0] b,
	input [3:0] op,
	output reg carry,
	output reg [7:0] out_ula
	);

wire [8:0] out_somador;		
wire [7:0] out_subtrator;		
wire [7:0] out_and;		
wire [7:0] out_or;
wire [7:0] out_not;
wire [7:0] out_xor;

somador somadorinstance (
    .a(a),					
    .b(b),				
    .out(out_somador)
    );

subtrator subtratorinstance (
	 .a(a),
    .b(b),
	 .out(out_subtrator)
    );

op_and op_andinstance (
    .a(a),
    .b(b),
    .out(out_and)
    );

op_or op_orinstance (
    .a(a),
    .b(b),
    .out(out_or)
    );
	 
op_not op_notinstance (
    .a(b),
    .out(out_not)
    );

op_xor op_xorinstance (
    .a(a),
    .b(b),
    .out(out_xor)
    );	
	 
parameter ADD = 4'h1;
parameter SUB = 4'h2;
parameter AND = 4'h3;
parameter OR = 4'h4;
parameter NOT = 4'h5;
parameter XOR = 4'h6;

always @(*)
begin
	case(op)
		ADD:
		begin
			out_ula <= out_somador[7:0];
			if(out_somador[8])
				carry <= out_somador[8];
			else
				carry <= 'd0;
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
		default: out_ula <= 'd0;
	endcase
end

endmodule