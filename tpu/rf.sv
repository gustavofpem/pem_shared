module rf(
	input logic SYS_CLK,
	input logic RST,
	input logic we_rf,
	input logic [7:0] addr_rf,
	input logic [7:0] data_rf,
	input logic TPUINT_RF,
	input logic TIME,
	output logic ready_rf,
	output logic RSTTPU,
	output logic TIMERINTMSK,
	output logic INTFLAG,
	output logic TXSLOT_EN,
	output logic RXSLOT_EN,
	output logic [7:0] TX_SLOT,
	output logic [7:0] RX_SLOT,
	output logic [15:0] TIMER_INT_VALUE,
	output logic [7:0] data_out
);

//Endereços dos registradores
parameter TPU_CONTROL_ADDR = 8'h20;
parameter TX_SLOT_ADDR = 8'h21;
parameter RX_SLOT_ADDR = 8'h22;
parameter TPUINT_BYTE1_ADDR = 8'h23;
parameter TPUINT_BYTE0_ADDR = 8'h24;

logic [7:0] regfile[63:0];

//assign ready_rf = ~RST;

always_ff @(posedge SYS_CLK)
begin
	if(RST)
	begin
		regfile[TPU_CONTROL_ADDR][7:5] <= 'd0;
		regfile[TPU_CONTROL_ADDR][3:0] <= 'd0;
		regfile[TX_SLOT_ADDR] <= 'd0;
		regfile[RX_SLOT_ADDR] <= 'd0;
		regfile[TPUINT_BYTE1_ADDR] <= 'd0;
		regfile[TPUINT_BYTE0_ADDR] <= 'd0;
	end
	else
	begin
		if(we_rf)
		begin
			case(addr_rf)
				TPU_CONTROL_ADDR:
				begin
					regfile[TPU_CONTROL_ADDR][7:5] <= data_rf[7:5];
					regfile[TPU_CONTROL_ADDR][3:0] <= data_rf[3:0];
				end
				TX_SLOT_ADDR:
				begin
					regfile[TX_SLOT_ADDR] <= data_rf;
					regfile[TPU_CONTROL_ADDR][0] <= 'd0;
					//regfile[TPU_CONTROL_ADDR][4] <= TPUINT_RF;
				end
				RX_SLOT_ADDR:
				begin
					regfile[RX_SLOT_ADDR] <= data_rf;
					regfile[TPU_CONTROL_ADDR][0] <= 'd0;
					//regfile[TPU_CONTROL_ADDR][4] <= TPUINT_RF;
				end
				TPUINT_BYTE1_ADDR:
				begin
					regfile[TPUINT_BYTE1_ADDR] <= data_rf;
					regfile[TPU_CONTROL_ADDR][0] <= 'd0;
					//regfile[TPU_CONTROL_ADDR][4] <= TPUINT_RF;
				end
				TPUINT_BYTE0_ADDR:
				begin
					regfile[TPUINT_BYTE0_ADDR] <= data_rf;
					regfile[TPU_CONTROL_ADDR][0] <= 'd0;
					//regfile[TPU_CONTROL_ADDR][4] <= TPUINT_RF;
				end
			endcase
		end
		else
		begin
			//regfile[TPU_CONTROL_ADDR][4] <= TPUINT_RF;
			regfile[TPU_CONTROL_ADDR][0] <= 'd0;
		end
	end
end

assign RSTTPU = regfile[TPU_CONTROL_ADDR][0];
assign TXSLOT_EN = regfile[TPU_CONTROL_ADDR][1];
assign RXSLOT_EN = regfile[TPU_CONTROL_ADDR][2];
assign TIMERINTMSK = regfile[TPU_CONTROL_ADDR][3];
assign regfile[TPU_CONTROL_ADDR][4] = ((we_rf && addr_rf == TPU_CONTROL_ADDR) && ~RST) ? (data_rf[4]):(TPUINT_RF & ~RST);
assign INTFLAG = regfile[TPU_CONTROL_ADDR][4];
assign TX_SLOT = regfile[TX_SLOT_ADDR];
assign RX_SLOT = regfile[RX_SLOT_ADDR];
assign TIMER_INT_VALUE = {regfile[TPUINT_BYTE1_ADDR], regfile[TPUINT_BYTE0_ADDR]};
assign data_out = regfile[addr_rf];

endmodule