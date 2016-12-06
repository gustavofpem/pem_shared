`timescale 10ns/10ps

module tb();

logic [3:0] in0, in1, in2, in3;
logic [3:0] max, min, med1, med2;
logic [6:0] HEX0, HEX1, HEX2, HEX3;

questao1 q1instance(
	.in0(in0),
	.in1(in1),
	.in2(in2),
	.in3(in3),
	.max(max),
	.min(min),
	.med1(med1),
	.med2(med2),
	.HEX0(HEX0),
	.HEX1(HEX1),
	.HEX2(HEX2),
	.HEX3(HEX3)
);

initial
begin
	in0 = 0;
	in1 = 5;
	in2 = 10;
	in3 = 7;
end

endmodule