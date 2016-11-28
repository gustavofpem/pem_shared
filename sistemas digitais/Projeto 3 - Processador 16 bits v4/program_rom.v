module program_rom
(
	input [7:0] addr_p,
	input clk,
	output [15:0] out_prom
);

parameter NOP = 16'h0000;		// No Operation
parameter LI = 16'h1000;		// Load Immediate
parameter LOAD = 16'h2000;		// Load from RAM
parameter STORE = 16'h3000;		// Store to RAM
parameter ADD = 16'h4000;
parameter SUB = 16'h5000;
parameter AND = 16'h6000;
parameter OR = 16'h7000;
parameter XOR = 16'h8000;
parameter NOT = 16'h9000;
parameter LIN = 16'hA000;		// Load from Input
parameter PRINT = 16'hB000;		// Print to Output LEDs
parameter PRINT7SEG = 16'hC000;	// Print to Output 7seg
parameter JMP = 16'hD000;		// Jump
parameter ACCUMULATOR = 12'h000;
parameter REGA = 12'h100;
parameter REGB = 12'h200;
parameter REGC = 12'h300;
parameter REGE = 12'h400;
parameter REGD = 12'h500;
parameter MADDR = 12'hE00;
parameter ZERO = 12'hF00;

	// Declare the RAM variable
	reg [15:0] prom[255:0];
	
	// Variable to hold the registered read address
	reg [7:0] addr_reg;

	initial
	begin
		prom[0] = NOP; //16'b0000000000000000; // No Operation
		prom[1] = LI | ACCUMULATOR | 8'd4; //16'b1000000000000100; // LI 4 para ACC
		prom[2] = LI | REGB | 8'd5; //16'b1000001000000101; // LI 5 para REGB
		prom[3] = ADD | REGB; //16'b0001001000000000; // ADD ACC com REGB
		prom[4] = PRINT | REGB; //16'b1011010100000000; // PRINT out_ula no LEDG
		prom[5] = //16'b1011001000000000; // PRINT REGB no LEDG
		prom[6] = //16'b1010010000000000; // STORE REGC no endereço 0 da RAM
		
	/*	prom[5] = ;
		prom[6] = ;
		prom[7] = ;
		prom[8] = ;
		prom[9] = ;
		prom[10] = ;
		prom[11] = ;
		prom[12] = ;
		prom[13] = ;
		prom[14] = ;
		prom[15] = ;
		prom[16] = ;
		prom[17] = ;
		prom[18] = ;
		prom[19] = ;
		prom[20] = ;
		prom[21] = ;
		prom[22] = ;
		prom[23] = ;*/
	end
	
	always @ (posedge clk)
		addr_reg <= addr_p;
				
	// Continuous assignment implies read returns NEW data.
	// This is the natural behavior of the TriMatrix memory
	// blocks in Single Port mode.  
	assign out_prom = prom[addr_reg];
	
endmodule
