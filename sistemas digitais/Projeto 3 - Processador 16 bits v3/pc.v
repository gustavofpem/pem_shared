module pc(
    input clk,	
	 input rst,
	 output reg [7:0] pc
);

always @(posedge clk or posedge rst)
begin
	if(rst)
		pc <= 'd0;
	else
		pc <= pc + 1;
	
end
endmodule