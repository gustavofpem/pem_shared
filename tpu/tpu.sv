module tpu(
	input logic SYS_CLK,
	input logic RST,
	input logic [7:0] addr,
	input logic [7:0] data_in,
	input logic we,
//	output logic ready_out,
	output logic G_CLK_TX,
	output logic G_CLK_RX,
	output logic TPUINT,
	output logic [7:0] data_out
/*	input logic RSTTPU,
	input logic TIMERINTMSK,
	input logic INTFLAG,
	input logic TXSLOT_EN,
	input logic RXSLOT_EN,
	input logic [7:0] TX_SLOT,
	input logic [7:0] RX_SLOT,
	input logic [15:0] TIMER_INT_VALUE*/
);

logic RSTTPU;
logic TIMERINTMSK;
logic INTFLAG;
logic TXSLOT_EN;
logic RXSLOT_EN;
logic [7:0] TX_SLOT;
logic [7:0] RX_SLOT;
logic [15:0] TIMER_INT_VALUE;
logic TPUINT_TIMER;
logic [6:0] TIME;

rf rf_instance(
	.SYS_CLK(SYS_CLK),
	.RST(RST),
	.addr_rf(addr),
	.data_rf(data_in),
	.we_rf(we),
//	.ready_rf(ready_out),
	.RSTTPU(RSTTPU),
	.TIMERINTMSK(TIMERINTMSK),
	.INTFLAG(INTFLAG),
	.TXSLOT_EN(TXSLOT_EN),
	.RXSLOT_EN(RXSLOT_EN),
	.TX_SLOT(TX_SLOT),
	.RX_SLOT(RX_SLOT),
	.TIMER_INT_VALUE(TIMER_INT_VALUE),
	.TPUINT_RF(TPUINT_TIMER),
	.data_out(data_out),
	.TIME(TIME)
);

timer timer_instance(
	.SYS_CLK(SYS_CLK),
	.RST(RST),
	.RSTTPU(RSTTPU),
	.TIMERINTMSK(TIMERINTMSK),
	.INTFLAG(INTFLAG),
	.TIMER_INT_VALUE(TIMER_INT_VALUE),
	.TPUINT(TPUINT_TIMER),
	.TIME(TIME)
);

clock_gen clock_gen_instance(
	.SYS_CLK(SYS_CLK),
	.RST(RST),
	.TIME(TIME),
	.TX_SLOT(TX_SLOT),
	.RX_SLOT(RX_SLOT),
	.TXSLOT_EN(TXSLOT_EN),
	.RXSLOT_EN(RXSLOT_EN),
	.G_CLK_TX(G_CLK_TX),
	.G_CLK_RX(G_CLK_RX)
);

assign TPUINT = TPUINT_TIMER;

endmodule