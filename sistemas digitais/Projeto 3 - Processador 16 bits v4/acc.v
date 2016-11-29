module acc(
    input clk,	
	 input rst,
	 input we_acc,
	 input [7:0] data_acc,
	 input [7:0] out_ula,
	 output reg [7:0] acc
);

always @(posedge clk or posedge rst)
begin
	if(rst)
		acc <= 'd0;
	else
		if(we_acc)
			acc <= data_acc;
end
endmodule