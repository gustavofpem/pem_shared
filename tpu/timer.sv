module timer(
	input logic SYS_CLK,
	input logic RST,
	input logic RSTTPU,
	input logic TIMERINTMSK,
	input logic INTFLAG,
	input logic [15:0] TIMER_INT_VALUE,
	output logic TPUINT,
	output logic [6:0] TIME
);

logic [15:0] TIMER_COUNTER;

always_ff @(posedge SYS_CLK)
begin
	if(RST)
	begin
		TIMER_COUNTER <= 'd0;
//		TPUINT <= 'd0;
	end
	else
	begin
		if(RSTTPU)
		begin
			TIMER_COUNTER <= 'd0;
			//TPUINT <= 'd0;
		end
		else
		begin
			if(TIMER_COUNTER >= 16'd65535)
			begin
				TIMER_COUNTER <= 'd0;
			end
			else
				TIMER_COUNTER <= TIMER_COUNTER + 1'd1;
		end
	end
end

assign TIME = TIMER_COUNTER[15:9];
assign TPUINT = ((TIMERINTMSK && TIMER_COUNTER == TIMER_INT_VALUE) && ~RST) ? 'd1:((TIMERINTMSK & INTFLAG) & ~RST);


//if(TIMERINTMSK && TIMER_COUNTER == TIMER_INT_VALUE)
//				TPUINT <= 'd1;
//			else
//				TPUINT <= TIMERINTMSK & INTFLAG;

endmodule