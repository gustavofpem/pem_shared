module regfile(
    input clk,	
	 input rst,
	 input we_reg,
	 input [3:0] addr_reg,
	 input [7:0] data_reg,
	 output [7:0] out_reg
);

//Registradores
parameter ACCUMULATOR = 12'h000;
parameter REGA = 4'd1;
parameter REGB = 4'd2;
parameter REGC = 4'd3;
parameter REGE = 4'd5;
parameter REGD = 4'd4;
parameter MADDR = 4'd14;
parameter ZERO = 4'd15;

reg [7:0] regfile[15:0];

always @(posedge clk or posedge rst)
begin
	if(rst)
	begin
		regfile[REGA] <= 'd0;
		regfile[REGB] <= 'd0;
		regfile[REGC] <= 'd0;
		regfile[REGD] <= 'd0;
		regfile[REGE] <= 'd0;
		regfile[MADDR] <= 'd0;
	end
	else
	begin
		if(we_reg)
			regfile[addr_reg] <= data_reg;
	end
end

assign out_reg = regfile[addr_reg];

endmodule