module processador(
	input clk,
	input rst,
	input [9:0] SW,
	input	[2:1] KEY,
	output reg [7:0] LEDG,
	output reg [9:0] LEDR,
	output reg [3:0] disp0,
	output reg [3:0] disp1,
	output reg [3:0] disp2,
	output reg [3:0] disp3,
	output [6:0] HEX0,
	output [6:0] HEX1,
	output [6:0] HEX2,
	output [6:0] HEX3
);

parameter NOP = 4'd0; //0000
parameter ADD = 4'd1; //0001
parameter SUB = 4'd2;
parameter AND = 4'd3;
parameter OR = 4'd4;
parameter NOT = 4'd5;
parameter XOR = 4'd6;
parameter CLEAR = 4'd7; // 0111
parameter MOVE = 4'd8;
parameter LOAD = 4'd9;
parameter STORE = 4'd10;
parameter PRINT = 4'd11;
parameter PRINT7SEG = 4'd12;
parameter JMP = 4'd13;

//Data RAM
reg we_d;
reg [7:0] data;
reg addr_d;
wire [7:0] out_dram;

//Register File
reg we_reg;
reg [3:0] addr_reg;
reg [3:0] data_reg;
wire [7:0] out_reg;

//Program ROM
wire [15:0] out_prom;

//AUX
wire [7:0] STDIN;
wire [7:0] STDOUT;
wire [7:0] PC;
reg [3:0] OPCODE;

// ULA
wire [7:0] ACC;
reg [7:0] ACC2;
wire [7:0] out_ula;
wire CARRY;

pc pcinstance(
	.clk(clk),
	.rst(rst),
	.pc(PC)
);

regfile regfileinstance(
	.clk(clk),	
	.rst(rst),
	.we_reg(we_reg),
	.addr_reg(addr_reg),
	.data_reg(data_reg),
	.out_reg(out_reg),
	.ACC(ACC)
);

program_rom prominstance(
	.addr_p(PC),
	.clk(clk),
	.out_prom(out_prom)
);
	  
dram draminstance(
	.data(data),
	.address(addr_d),
	.wren(we_d),
	.clock(clk),
	.q(out_dram)
);
	  
ula ulainstance(
	.a(ACC),
	.b(ACC2),
	.op(OPCODE),
	.carry(CARRY),
	.out_ula(out_ula)			
);
	 
seg7 seg7instance0(
	.d(disp0), 			   
	.hex_out(HEX0)
);

seg7 seg7instance1(
	.d(disp1), 			   
	.hex_out(HEX1)
);

seg7 seg7instance2(
	.d(disp2), 			   
	.hex_out(HEX2)
);

seg7 seg7instance3(
	.d(disp3), 			   
	.hex_out(HEX3)
);

assign STDIN = SW[9:0];

/*
ALTERAÇOES:
	- SUBTRATOR SEM SINAL, RESPOSTA EM COMPLEMENTO DE 2, USUARIO QUE SE VIRE
	- ULA E SEUS SUBMODULOS, SAO TODOS COMBINACIONAIS
	- SEG7 NAO USA CLOCK, TAMBEM E´ COMBINACIONAL
	- NAO TEM NECESSIDADE DE ADDR_P, PQ A SAIDA DA ROM E´ DO ENDEREÇO DO PC (VER INSTANCIA DA PROM)
	
FAZER:
	- CCU (PROCESSADOR.V) E´ COMBINACIONAL, NAO DEPENDE DE CLOCK. PEGA INSTRUCAO E DECODIFICA. OU SEJA, UMA ENTRADA = UMA SAIDA, NAO E´ REPROGRAMAVEL.
	- REGISTER FILE (BANCO DE REGISTRADORES)
*/

always @(*)
begin
	if(rst)
	begin
		LEDR <= 10'b1111111111;
	end
	else
	begin
		OPCODE <= out_prom[15:12]; // 4 bits opcode
		LEDR <= out_reg;
		LEDG <= ACC;
		case(OPCODE)
			MOVE:
			begin
				we_reg <= 'd1;
				addr_reg <= out_prom[11:8];
				data_reg <= out_prom[7:0];
			end
			ADD:
			begin
				we_reg <= 'd0;
				addr_reg <= out_prom[11:8];
				ACC2 <= out_reg;
			end
			AND:
			begin
				we_reg <= 'd0;
				addr_reg <= out_prom[11:8];
				ACC2 <= out_reg;
			end
			OR:
			begin
				we_reg <= 'd0;
				addr_reg <= out_prom[11:8];
				ACC2 <= out_reg;
			end
			NOT:
			begin
				we_reg <= 'd0;
				addr_reg <= out_prom[11:8];
				ACC2 <= out_reg;
			end
			XOR:
			begin
				we_reg <= 'd0;
				addr_reg <= out_prom[11:8];
				ACC2 <= out_reg;
			end
			LOAD:
			begin
				addr_d <= out_prom[7:0];
				addr_reg <= out_prom[11:8];
				data_reg <= out_dram;
				we_d <= 'd0;
				we_reg <= 'd1;
			end
			STORE:
			begin
				addr_d <= out_prom[7:0];
				addr_reg <= out_prom[11:8];
				we_reg <= 'd0;
				data_reg <= out_dram;
				we_d <= 'd1;
			end
			CLEAR:
			begin
				we_reg <= 'd1;
				addr_reg <= out_prom[11:8];
				data_reg <= 'd0;
			end
			PRINT:
			begin
				we_reg <= 'd0;
				addr_reg <= out_prom[11:8];
				LEDG <= out_reg;
			end
			PRINT7SEG:
			begin
				/*case(out_prom[11:8])
					4'b0000: 
					begin	
						disp0 <= out_ula[3:0];
						disp1 <= out_ula[7:4];
						disp2 <= ACC2;
						disp3 <= ACC;
					end
					4'b0001:
					begin	
						disp0 <= REGA;
						disp1 <= REGB;
						disp2 <= REGC;
						disp3 <= ACC;
					end
					default:				
					begin	
						disp0 <= out_ula[3:0];
						disp1 <= out_ula[7:4];
						disp2 <= ACC2;
						disp3 <= ACC;
					end
				endcase*/
			end
			JMP:
			begin
			end
		endcase
	end
end
endmodule

