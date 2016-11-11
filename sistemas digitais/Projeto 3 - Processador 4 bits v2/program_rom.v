module program_rom
(
	input [3:0] addr_p,
	input clk,
	output [3:0] out_prom
);

	parameter SOMA = 4'b0001;
	parameter SUBTRACAO = 4'b0010;
	parameter MULT = 4'b0011;
	parameter DIV = 4'b0100;
	parameter AND = 4'b0101;
	parameter OR = 4'b0110;
	parameter XOR = 4'b0111;
	// Declare the RAM variable
	reg [3:0] prom[15:0];
	
	// Variable to hold the registered read address
	reg [3:0] addr_reg;
	
	initial
	begin
		prom[0] = SOMA;
		prom[1] = SUBTRACAO;
		prom[2] = MULT;
		prom[3] = DIV;
	end
	
	always @ (posedge clk)
		addr_reg <= addr_p;
				
	// Continuous assignment implies read returns NEW data.
	// This is the natural behavior of the TriMatrix memory
	// blocks in Single Port mode.  
	assign out_prom = prom[addr_reg];
	
endmodule
