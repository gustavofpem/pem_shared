module program_rom
(
	input [3:0] addr_p,
	input clk,
	output [3:0] out_prom
);

	// Declare the RAM variable
	reg [3:0] prom[15:0];
	
	// Variable to hold the registered read address
	reg [3:0] addr_reg;
	
	always @ (posedge clk)
		addr_reg <= addr_p;
				
	// Continuous assignment implies read returns NEW data.
	// This is the natural behavior of the TriMatrix memory
	// blocks in Single Port mode.  
	assign out_prom = prom[addr_reg];
	
endmodule
