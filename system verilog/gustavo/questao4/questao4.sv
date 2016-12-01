module questao4(
	input logic clk, rst,
	output logic [3:0] sequencia
);

logic sentido;

always_ff @(posedge clk or posedge rst)
begin
	if(rst)
	begin
		sequencia <= 'd1;
		sentido <= 'd0;
	end
	else
	begin
		if(~sentido)
		begin
			sequencia <= sequencia << 1'd1;
			if(sequencia[2])
				sentido <= 'd1;
		end
		else
		begin
			sequencia <= sequencia >> 1'd1;
			if(sequencia[1])
				sentido <= 'd0;
		end
	end
end
endmodule