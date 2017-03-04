module timer(
	input logic SYS_CLK,
	input logic RSTTPU,
	input logic TIMERINTMSK,
	input logic [15:0] TIMER_INT_VALUE,
	output logic TPUINT,
	output logic [7:0] TIME
);

logic [15:0] TIMER_COUNTER;

always_ff @(posedge SYS_CLK)
begin
	if(RSTTPU)
	begin
		TIMER_COUNTER <= 'd0;
	end
	else
	begin
		if(TIMER_COUNTER > TIMER_INT_VALUE)
		begin
			TIMER_COUNTER <= 'd0;
		end
		else
			TIMER_COUNTER <= TIMER_COUNTER + 1'd1;
	end
end

endmodule