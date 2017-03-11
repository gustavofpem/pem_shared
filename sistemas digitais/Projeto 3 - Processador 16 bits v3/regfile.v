module regfile(
    input clk,	
	 input rst,
	 input we_reg,
	 input [3:0] addr_reg,
	 input [7:0] data_reg,
	 output [7:0] out_reg,
	 output [7:0] ACC
);

//Registradores
parameter [7:0] REGA = 'd1;
parameter [7:0] REGB = 'd2;
parameter [7:0] REGC = 'd3;
parameter [7:0] MADDR = 'd4;
parameter [7:0] ZERO = 'd15;

reg [7:0] regfile[15:0];

always @(posedge clk or posedge rst)
begin
	if(rst)
	begin
		regfile[ACC] <= 'd0;
		regfile[REGA] <= 'd0;
		regfile[REGB] <= 'd0;
		regfile[REGC] <= 'd0;
		regfile[MADDR] <= 'd0;
	end
	else
		if(we_reg)
			regfile[addr_reg] <= data_reg;
end

assign out_reg = regfile[addr_reg];
assign ACC = regfile[0];

endmodule