module tpu(
	input logic SYS_CLK,
	output logic G_CLK_TX,
	output logic G_CLK_RX,
	input logic valid_out_m,
	input logic ready_out,
	input logic [7:0] addr_out,
	input logic [7:0] data_out,
	output logic TPUINT
);

