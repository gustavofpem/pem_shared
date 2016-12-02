module max2(
	input logic [3:0] in0, in1,
	output logic [3:0] max, min
);

assign max = (in0 >= in1) ? in0 : in1;
assign min = (in0 < in1) ? in0 : in1;

endmodule