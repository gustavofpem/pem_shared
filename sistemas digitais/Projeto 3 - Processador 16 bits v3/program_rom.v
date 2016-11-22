module program_rom
(
	input [7:0] addr_p,
	input clk,
	output [7:0] out_prom
);

parameter NOP = 4'h0;
parameter ADD = 4'h1;
parameter SUB = 4'h2;
parameter AND = 4'h3;
parameter OR = 4'h4;
parameter NOT = 4'h5;
parameter XOR = 4'h6;
parameter NAND = 4'h7;
parameter NOR = 4'h8;
parameter LOAD = 4'h9;
parameter STORE = 4'hA;

	// Declare the RAM variable
	reg [7:0] prom[255:0];
	
	// Variable to hold the registered read address
	reg [7:0] addr_reg;
	
	initial
	begin
		prom[0] = ADD;
		prom[1] = SUB;
	end
	
	always @ (posedge clk)
		addr_reg <= addr_p;
				
	// Continuous assignment implies read returns NEW data.
	// This is the natural behavior of the TriMatrix memory
	// blocks in Single Port mode.  
	assign out_prom = prom[addr_reg];
	
endmodule
