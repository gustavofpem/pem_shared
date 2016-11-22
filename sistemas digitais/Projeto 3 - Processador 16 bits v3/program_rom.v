module program_rom
(
	input [7:0] addr_p,
	input clk,
	output [15:0] out_prom
);

parameter NOP = 4'd0;
parameter ADD = 4'd1;
parameter SUB = 4'd2;
parameter AND = 4'd3;
parameter OR = 4'd4;
parameter NOT = 4'd5;
parameter XOR = 4'd6;
parameter CLEAR = 4'd7;
parameter MOVE = 4'd8;
parameter LOAD = 4'd9;
parameter STORE = 4'd10;
parameter PRINT = 4'd11;
parameter JMP = 4'd12;

	// Declare the RAM variable
	reg [15:0] prom[255:0];
	
	// Variable to hold the registered read address
	reg [7:0] addr_reg;
	
	initial
	begin
		prom[0] = (MOVE << 12) | (4'd0 << 8) | 8'd4; // MOVE 4 para ACC
		prom[1] = (MOVE << 12) | (4'd1 << 8) | 8'd5; // MOVE 5 para REGA
		prom[2] = (ADD << 12) | (4'd1 << 8) | 8'd0; // ADD ACC com REGA
		prom[3] = (STORE << 12) | (4'd0 << 8) | 8'd0; // STORE ACC no endereço 0 da RAM
		prom[4] = (PRINT << 12) | (4'd5 << 8) | 8'd0; // PRINT out_ula no LEDG
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
