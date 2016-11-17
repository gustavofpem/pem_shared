// Quartus II Verilog Template
// Single port RAM with single read/write address 

module data_ram 
#(parameter DATA_WIDTH=8, parameter ADDR_WIDTH=1)
(
	input [(DATA_WIDTH-1):0] data,
	input [(ADDR_WIDTH-1):0] addr_d,
	input we_d, clk,
	output [(DATA_WIDTH-1):0] out_dram
);

	// Declare the RAM variable
	reg [DATA_WIDTH-1:0] dram[2**ADDR_WIDTH-1:0];

	// Variable to hold the registered read address
	reg [ADDR_WIDTH-1:0] addr_reg;

	always @ (posedge clk)
	begin
		// Write
		if (we_d)
			dram[addr_d] <= data;

		addr_reg <= addr_d;
	end

	// Continuous assignment implies read returns NEW data.
	// This is the natural behavior of the TriMatrix memory
	// blocks in Single Port mode.  
	assign out_dram = dram[addr_reg];

endmodule
