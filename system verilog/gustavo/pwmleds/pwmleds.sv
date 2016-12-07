module pwmleds(
	input logic clk, rst, sentido,
	output logic [9:0] LEDR
);

logic [9:0] saida;
logic [6:0] periodo;
logic [25:0] cont;
logic [6:0] tau [9:0];
logic [3:0] i, j;

always_ff @(posedge clk or posedge rst)
begin
	if(rst)
	begin
		periodo <= 'd0;
		for(int i = 'd0; i <= 'd9; i++)
			tau[i] <= i*4'd10;
	end
	else
	begin
		if(periodo < 7'd99)
			periodo <= periodo + 1'd1;
		else
		begin
			periodo <= 'd0;
		end
		if(cont < 24999999)
			cont <= cont + 1'd1;
		else
		begin
			cont <= 'd0;
			if(sentido)
			begin
				for(j = 'd0; j <= 'd8; j++)
				begin
					tau[j] <= tau[j+1];
					if(j == 4'd8)
						tau[9] <= tau[0];
				end
			end
			else
			begin
				for(j = 'd9; j >= 'd1; j--)
				begin
					tau[j] <= tau[j-1];
					if(j == 4'd1)
						tau[0] <= tau[9];
				end
			end
		end
	end
end

assign LEDR[0] = (periodo > tau[0]) ? 'd0 : 'd1;
assign LEDR[1] = (periodo > tau[1]) ? 'd0 : 'd1;
assign LEDR[2] = (periodo > tau[2]) ? 'd0 : 'd1;
assign LEDR[3] = (periodo > tau[3]) ? 'd0 : 'd1;
assign LEDR[4] = (periodo > tau[4]) ? 'd0 : 'd1;
assign LEDR[5] = (periodo > tau[5]) ? 'd0 : 'd1;
assign LEDR[6] = (periodo > tau[6]) ? 'd0 : 'd1;
assign LEDR[7] = (periodo > tau[7]) ? 'd0 : 'd1;
assign LEDR[8] = (periodo > tau[8]) ? 'd0 : 'd1;
assign LEDR[9] = (periodo > tau[9]) ? 'd0 : 'd1;

endmodule