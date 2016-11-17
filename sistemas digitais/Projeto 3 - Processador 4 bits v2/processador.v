module processador(
	input clk,					//Input operand - clock signal
	input rst,
	input [7:0] SW,			//Input switches
	input	[3:1] KEY,					//Input operand - 1 bit wide
	output reg [2:0] LEDG,					//Input operand - 3 bit wide
	output reg [7:0] LEDR,
	output reg [3:0] disp0,		//Output operand - 4 bits wide 
	output reg [3:0] disp1, 		//Output operand - 4 bits wide
	output reg [3:0] disp2, 		//Output operand - 4 bits wide
	output reg [3:0] disp3, 		//Output operand - 4 bits wide
	output [6:0] HEX0,		//Output operand - 7 bits wide - 7 segments display
	output [6:0] HEX1,		//Output operand - 7 bits wide - 7 segments display
	output [6:0] HEX2,		//Output operand - 7 bits wide - 7 segments display
	output [6:0] HEX3			//Output operand - 7 bits wide - 7 segments display
);

//Data RAM
reg we_d;
reg [7:0] data;
reg addr_d;
wire [7:0] out_dram;

//Program ROM
reg [3:0] addr_p;
wire [3:0] out_prom;	

//Other
wire [3:0] a;
wire [3:0] b;
reg [2:0] pc;

// ULA
wire [7:0] out_ula;
reg [3:0] opcode;
wire sinal;

program_rom prominstance(
	.addr_p(addr_p),
	.clk(clk),
	.out_prom(out_prom)
);
	  
data_ram draminstance(
	.data(data),
	.addr_d(addr_d),
	.we_d(we_d),
	.clk(clk),
	.out_dram(out_dram)
);
	  
ula ulainstance(		
	.clk(clk),
	.rst(rst),
	.a(out_dram[3:0]),
	.b(out_dram[7:4]),
	.op(opcode),
	.sinal(sinal),
	.out_ula(out_ula)			
);
	 
seg7 seg7instance(			
	.clk(clk), 				
	.rst(rst), 				
	.sinal(sinal),
	.d0(disp0), 				
	.d1(disp1), 				
	.d2(disp2), 				
	.d3(disp3), 			   
	.hex_out0(HEX0),
	.hex_out1(HEX1),			 
	.hex_out2(HEX2),			
	.hex_out3(HEX3)
);

assign a[3:0] = SW[7:4];
assign b[3:0] = SW[3:0];

// FAZER BANCO DE REGISTRADORES
// NAO EXECUTAR INSTRUCOES DIRETAMENTE DA MEMORIA
// FAZER MODELO RISC

always @(posedge clk or negedge rst)
begin
	if(~rst)
	begin
		addr_d <= 0;
		we_d <= 1;
		data <= 0;
		LEDR <= 0;
		disp0 <= 0;
		disp1 <= 0;
		disp2 <= 0;
		disp3 <= 0;
	end
	else
	begin
		if(~KEY[2])
		begin
			we_d <= 1;
			addr_d <= 0;
			data <= (b << 4) | a;
			LEDR <= out_dram;
		end
		else
			we_d <= 0;

		disp3 <= out_dram[3:0];
		disp2 <= out_dram[7:4];
		disp1 <= out_ula[7:4];
		disp0 <= out_ula[3:0];
	end
end

always @(negedge KEY[3] or negedge rst) //Armazenar operacoes
begin
	if(~rst)
	begin
		pc = 0;
		opcode = 0;
		LEDG = 0;
		addr_p = 0;
	end
	else
	begin
		pc = pc + 1;
		if(pc > 4)
			pc = 0;

		addr_p = pc;
		opcode = out_prom;
		LEDG = opcode;
	end
end

endmodule
