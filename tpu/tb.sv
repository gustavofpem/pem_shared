`timescale 10ns/10ps

module tb();

logic SYS_CLK;
logic RST;
/*logic RSTTPU;
logic TIMERINTMSK;
logic INTFLAG;
logic TXSLOT_EN;
logic RXSLOT_EN;
logic [7:0] TX_SLOT;
logic [7:0] RX_SLOT;
logic [15:0] TIMER_INT_VALUE;*/

logic [7:0] addr;
logic [7:0] data_in;
logic [7:0] valid;
	
tpu tpu_instance(
	.SYS_CLK(SYS_CLK),
	.addr(addr),
	.data_in(data_in),
	.valid(valid)
	/*.RSTTPU(RSTTPU),
	.TIMERINTMSK(TIMERINTMSK),
	.INTFLAG(INTFLAG),
	.TXSLOT_EN(TXSLOT_EN),
	.RXSLOT_EN(RXSLOT_EN),
	.TX_SLOT(TX_SLOT),
	.RX_SLOT(RX_SLOT),
	.TIMER_INT_VALUE(TIMER_INT_VALUE)*/
);

initial
begin
	SYS_CLK = 'd0;
	RST = 'd1;
	addr = 'd20;
	data_in = 'd0;
	valid = 'd0;
	
	/*RSTTPU = 'd1;
	TIMERINTMSK = 'd0;
	INTFLAG = 'd0;
	TXSLOT_EN = 'd0;
	RXSLOT_EN = 'd0;
	TX_SLOT = 'd0;
	RX_SLOT = 'd0;
	TIMER_INT_VALUE = 'd0;*/
	
	/*#10 RSTTPU = 'd0;
	#10 TIMERINTMSK = 'd1; TXSLOT_EN = 'd1; RXSLOT_EN = 'd1;
	TX_SLOT = 'd60; RX_SLOT = 'd120; TIMER_INT_VALUE = 'd33000;
	#30000000ns TXSLOT_EN = 'd0; RX_SLOT = 'd30;	*/
	
	#10 data_in = 'h0F; valid = 'd1;
	#2 valid = 'd0;
	#5 addr = 'd21; data_in = 'd100; valid = 'd1;
	#2 valid = 'd0;
	#5 addr = 'd22; data_in = 'd200; valid = 'd1;
	#2 valid = 'd0;
	#5 addr = 'd23; data_in = 'd16; valid = 'd1;
	#2 valid = 'd0;
	#5 addr = 'd24; data_in = 'd01; valid = 'd1;
	#2 valid = 'd0;
	
end

always
	#1 SYS_CLK = ~SYS_CLK;

endmodule