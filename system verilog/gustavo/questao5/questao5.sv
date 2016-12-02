module questao5(
	input logic clk, rst, start,
	output logic [6:0] HEX0,
	output logic [6:0] HEX1,
	output logic [6:0] HEX2,
	output logic [6:0] HEX3,
	output logic [9:0] milesimos,
	output logic [4:0] horas
);

logic [15:0] cont;
logic [5:0] segundos;
logic [5:0] minutos;

seg7 seg7instance0(
	.d(segundos%10),
	.hex_out(HEX0)
);
seg7 seg7instance1(
	.d(segundos/10),
	.hex_out(HEX1)
);
seg7 seg7instance2(
	.d(minutos%10),
	.hex_out(HEX2)
);
seg7 seg7instance3(
	.d(minutos/10),
	.hex_out(HEX3)
);

always_ff @(posedge clk or posedge rst)
begin
	if(rst)
	begin
		cont <= 'd0;
		milesimos <= 'd0;
		segundos <= 'd0;
		minutos <= 'd0;
		horas <= 'd0;
	end
	else
	begin
		if(start)
		begin
			cont <= cont + 1'd1;
			if(cont >= 16'd50)
			begin
				cont <= 'd0;
				if(milesimos < 10'd999)
					milesimos <= milesimos + 1'd1;
				else
				begin
					milesimos <= 'd0;
					if(segundos < 6'd59)
						segundos <= segundos + 1'd1;
					else
					begin
						segundos <= 'd0;
						if(minutos < 6'd59)
							minutos <= minutos + 1'd1;
						else
						begin
							minutos <= 'd0;
							if(horas < 5'd23)
								horas <= horas + 1'd1;
							else
								horas <= 'd0;
						end
					end
				end
			end
		end
	end
end
endmodule