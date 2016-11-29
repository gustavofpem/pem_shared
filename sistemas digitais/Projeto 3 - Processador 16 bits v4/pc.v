module pc(
    input clk,	
	 input rst,
	 input we_pc,
	 input [7:0] data_pc,
	 output reg [7:0] pc
);

always @(posedge clk or posedge rst)
begin
	if(rst)
		pc <= 'd0;
	else
		if(we_pc)
			pc <= data_pc;
		else
			pc <= pc + 1;
	
end
endmodule