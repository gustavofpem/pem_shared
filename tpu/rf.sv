module rf(
	input logic SYS_CLK,
	input logic we_rf,
	input logic [7:0] addr_rf,
	input logic [7:0] data_rf,
	output logic ready_rf,
	output logic RSTTPU,
	output logic TXSLOT_EN,
	output logic RXSLOT_EN,
	output logic [7:0] TX_SLOT,
	output logic [7:0] RX_SLOT,
	output logic [15:0] TIMER_INT_VALUE
);

//Endereços dos registradores
parameter TPU_CONTROL_ADDR = 8'h20;
parameter TX_SLOT_ADDR = 8'h21;
parameter RX_SLOT_ADDR = 8'h22;
parameter TPUINT_BYTE1_ADDR = 8'h23;
parameter TPUINT_BYTE0_ADDR = 8'h24;

logic [7:0] regfile[63:0];

assign ready_rf = 'd1;

always_ff @(posedge SYS_CLK)
begin
	if(we_rf and ready_rf)
	begin
		case(addr_rf)
			TPU_CONTROL_ADDR:	regfile[TPU_CONTROL_ADDR] <= data_rf;
			TX_SLOT_ADDR:	regfile[TX_SLOT_ADDR] <= data_rf;
			RX_SLOT_ADDR:	regfile[RX_SLOT_ADDR] <= data_rf;
			TPUINT_BYTE1_ADDR:	regfile[TPUINT_BYTE1_ADDR] <= data_rf;
			TPUINT_BYTE0_ADDR:	regfile[TPUINT_BYTE0_ADDR] <= data_rf;
		endcase
	end
end

assign RSTTPU = regfile[TPU_CONTROL_ADDR][0];
assign TXSLOT_EN = regfile[TPU_CONTROL_ADDR][1];
assign RXSLOT_EN = regfile[TPU_CONTROL_ADDR][2];
assign TXSLOT = regfile[TX_SLOT_ADDR];
assign RXSLOT = regfile[RX_SLOT_ADDR];
assign TIMER_INT_VALUE = regfile[TPUINT_BYTE1_ADDR] << 8 | regfile[TPUINT_BYTE0_ADDR];

endmodule