module clock_gen(
	input logic SYS_CLK,
	input logic [6:0] TIME,
	input logic [7:0] TX_SLOT,
	input logic [7:0] RX_SLOT,
	input logic TXSLOT_EN,
	input logic RXSLOT_EN,
	output logic G_CLK_TX,
	output logic G_CLK_RX
);

assign G_CLK_TX = (TXSLOT_EN && (TIME == TX_SLOT)) ? SYS_CLK : 'd0;
assign G_CLK_RX = (RXSLOT_EN && (TIME == RX_SLOT)) ? SYS_CLK : 'd0;

endmodule