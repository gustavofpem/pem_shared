module questao3(
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
			if(sequencia < 15)
				sequencia <= sequencia + 1'd1;
			else
				sentido <= 'd1;
		end
		else
		begin
			if(sequencia > 0)
				sequencia <= sequencia - 1'd1;
			else
				sentido <= 'd0;
		end
	end
end
endmodule