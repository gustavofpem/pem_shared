module data_ram
(
	input [7:0] data,
	input addr_d,
	input we_d, clk,
	output [7:0] out_dram
);

	// Declare the RAM variable
	//reg [7:0] dram[1:0] /* synthesis ramstyle = "M512" */;
	(* ramstyle = "M512" *) reg [7:0] dram[1:0];
	// Variable to hold the registered read address
	(* ramstyle = "M512" *) reg [0:7] my_ram[0:63];
		reg addr_reg;
	
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