module cronometro2(
	input logic clk, rst, ss, lap,
	input logic [1:0] exibe,
	output logic [7:0] LEDG,
	output logic [6:0] HEX0,
	output logic [6:0] HEX1,
	output logic [6:0] HEX2,
	output logic [6:0] HEX3,
	output logic [6:0] LEDR
);

logic start;
logic [18:0] cont;
logic [6:0] centesimos, c_lap1, c_lap2, c_lap3;
logic [5:0] segundos, s_lap1, s_lap2, s_lap3, s_exibe;
logic [5:0] minutos, m_lap1, m_lap2, m_lap3, m_exibe;
logic [1:0] cont_lap;

seg7 seg7instance0(
	.d(s_exibe%10),
	.hex_out(HEX0)
);
seg7 seg7instance1(
	.d(s_exibe/10),
	.hex_out(HEX1)
);
seg7 seg7instance2(
	.d(m_exibe%10),
	.hex_out(HEX2)
);
seg7 seg7instance3(
	.d(m_exibe/10),
	.hex_out(HEX3)
);

assign LEDG = cont_lap;

always_ff @(posedge clk or posedge rst)
begin
	if(rst)
	begin
		cont <= 'd0;
		centesimos <= 'd0;
		segundos <= 'd0;
		minutos <= 'd0;
	end
	else
	begin
		if(start)
		begin
			if(cont > 19'd499999)
			begin
				cont <= 'd0;
				if(centesimos < 10'd99)
					centesimos <= centesimos + 1'd1;
				else
				begin
					centesimos <= 'd0;
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
						end
					end
				end
			end
			else
				cont <= cont + 1'd1;
		end
	end
end

always @(posedge ss)
	start <= ~start;

always @(posedge lap or posedge rst)
begin
	if(rst)
	begin
		c_lap1 <= 'd0;
		c_lap2 <= 'd0;
		c_lap3 <= 'd0;
		s_lap1 <= 'd0;
		s_lap2 <= 'd0;
		s_lap3 <= 'd0;
		m_lap1 <= 'd0;
		m_lap2 <= 'd0;
		m_lap3 <= 'd0;
		cont_lap <= 'd0;
	end
	else
	begin
		if(lap)
		begin
			case(cont_lap)
				2'b00:
				begin
					c_lap1 <= centesimos;
					s_lap1 <= segundos;
					m_lap1 <= minutos;
					cont_lap <= cont_lap + 'd1;
				end
				2'b01:
				begin
					c_lap2 <= centesimos;
					s_lap2 <= segundos;
					m_lap2 <= minutos;
					cont_lap <= cont_lap + 'd1;
				end
				2'b10:
				begin
					c_lap3 <= centesimos;
					s_lap3 <= segundos;
					m_lap3 <= minutos;
					cont_lap <= 'd0;
				end
				default:
				begin
					c_lap1 <= 'd0;
					c_lap2 <= 'd0;
					c_lap3 <= 'd0;
					s_lap1 <= 'd0;
					s_lap2 <= 'd0;
					s_lap3 <= 'd0;
					m_lap1 <= 'd0;
					m_lap2 <= 'd0;
					m_lap3 <= 'd0;
				end	
			endcase
		end
	end
end

always @(*)
	case(exibe)
	2'b00:
	begin
		LEDR <= centesimos;
		s_exibe <= segundos;
		m_exibe <= minutos;
	end
	2'b01:
	begin
		LEDR <= c_lap1;
		s_exibe <= s_lap1;
		m_exibe <= m_lap1;
	end
	2'b10:
	begin
		LEDR <= c_lap2;
		s_exibe <= s_lap2;
		m_exibe <= m_lap2;
	end
	2'b11:
	begin
		LEDR <= c_lap3;
		s_exibe <= s_lap3;
		m_exibe <= m_lap3;
	end
	default:
	begin
		LEDR <= centesimos;
		s_exibe <= segundos;
		m_exibe <= minutos;
	end
	endcase

endmodule