module questao1(
	input logic [3:0] in0, in1, in2, in3,
	output logic [3:0] max, min, med1, med2,
	output logic [6:0] HEX0, HEX1, HEX2, HEX3
);

logic [3:0] out0, out1, out2, out3, out5, out6;

max2 max2instance0(
	.in0(in0),
	.in1(in1),
	.max(out0),
	.min(out1)
);
max2 max2instance1(
	.in0(in2),
	.in1(in3),
	.max(out2),
	.min(out3)
);
max2 max2instance2(
	.in0(out0),
	.in1(out2),
	.max(max),
	.min(out5)
);
max2 max2instance3(
	.in0(out1),
	.in1(out3),
	.max(out6),
	.min(min)
);
max2 max2instance4(
	.in0(out5),
	.in1(out6),
	.max(med1),
	.min(med2)
);

seg7 seg7instance0(
	.d(min),
	.hex_out(HEX0)
);
seg7 seg7instance1(
	.d(med2),
	.hex_out(HEX1)
);
seg7 seg7instance2(
	.d(med1),
	.hex_out(HEX2)
);
seg7 seg7instance3(
	.d(max),
	.hex_out(HEX3)
);

endmodule