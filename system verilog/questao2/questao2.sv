module questao2(
	input logic clk, rst,
	output logic [3:0] sequencia
);

logic sentido;

always_ff @(posedge clk or posedge rst)
begin
	if(rst)
	begin	
		sequencia <= 'd0;
		sentido <= 'd0;
	end
	else
	begin
		if(~sentido)
		begin
			sequencia <= sequencia + 1'd1;
			if(sequencia >= 4'd15)
				sentido <= 'd1;
			else
				sentido <= 'd0;
		end
		else
		begin
			sequencia <= sequencia - 1'd1;
			if(sequencia <= 4'd0)
				sentido <= 'd0;
			else
				sentido <= 'd1;
		end
	end
end
endmodule