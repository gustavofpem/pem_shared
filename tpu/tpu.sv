module tpu(
	input logic SYS_CLK,
	input logic [7:0] addr_out,
	input logic [7:0] data_out,
	input logic valid_out_m,
	output logic ready_out,
	output logic G_CLK_TX,
	output logic G_CLK_RX,
	output logic TPUINT,
	input logic RSTTPU,
	input logic TIMERINTMSK,
	input logic INTFLAG,
	input logic TXSLOT_EN,
	input logic RXSLOT_EN,
	input logic [7:0] TX_SLOT,
	input logic [7:0] RX_SLOT,
	input logic [15:0] TIMER_INT_VALUE
);

/*logic RSTTPU;
logic TIMERINTMSK;
logic INTFLAG;
logic TXSLOT_EN;
logic RXSLOT_EN;
logic [7:0] TX_SLOT;
logic [7:0] RX_SLOT;
logic [15:0] TIMER_INT_VALUE;*/
logic [6:0] TIME;

/*rf rf_instance(
	.SYS_CLK(SYS_CLK),
	.addr_rf(addr_out),
	.data_rf(data_out),
	.we_rf(valid_out_m),
	.ready_rf(ready_out),
	.RSTTPU(RSTTPU),
	.TIMERINTMSK(TIMERINTMSK),
	.INTFLAG(INTFLAG),
	.TXSLOT_EN(TXSLOT_EN),
	.RXSLOT_EN(RXSLOT_EN),
	.TX_SLOT(TX_SLOT),
	.RX_SLOT(RX_SLOT),
	.TIMER_INT_VALUE(TIMER_INT_VALUE)
);*/

timer timer_instance(
	.SYS_CLK(SYS_CLK),
	.RSTTPU(RSTTPU),
	.TIMERINTMSK(TIMERINTMSK),
	.INTFLAG(INTFLAG),
	.TIMER_INT_VALUE(TIMER_INT_VALUE),
	.TPUINT(TPUINT),
	.TIME(TIME)
);

clock_gen clock_gen_instance(
	.SYS_CLK(SYS_CLK),
	.TIME(TIME),
	.TX_SLOT(TX_SLOT),
	.RX_SLOT(RX_SLOT),
	.TXSLOT_EN(TXSLOT_EN),
	.RXSLOT_EN(RXSLOT_EN),
	.G_CLK_TX(G_CLK_TX),
	.G_CLK_RX(G_CLK_RX)
);

endmodule