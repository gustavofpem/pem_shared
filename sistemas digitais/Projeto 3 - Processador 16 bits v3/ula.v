module ula(
	input [7:0] a,
	input [7:0] b,
	input [3:0] op,
	output reg carry,
	output reg [7:0] out_ula
	);
	 
parameter ADD = 4'd1;
parameter SUB = 4'd2;
parameter AND = 4'd3;
parameter OR = 4'd4;
parameter NOT = 4'd5;
parameter XOR = 4'd6;

always @(*)
begin
	case(op)
		ADD:
			{carry, out_ula} <= a + b;
		SUB:
			{carry, out_ula} <= a - b;
		AND:
			{carry, out_ula} <= a & b;
		OR:
			{carry, out_ula} <= a | b;
		NOT:
			{carry, out_ula} <= ~a;
		XOR:
			{carry, out_ula} <= a ^ b;
		default: {carry, out_ula} <= 'd0;
	endcase
end

endmodule