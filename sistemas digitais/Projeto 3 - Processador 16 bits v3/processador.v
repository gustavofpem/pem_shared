module processador(
	input clk,					//Input operand - clock signal
	input rst,
	input [7:0] SW,			//Input switches
	input	[2:1] KEY,					//Input operand - 1 bit wide
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

parameter NOP = 4'h0;
parameter ADD = 4'h1;
parameter SUB = 4'h2;
parameter AND = 4'h3;
parameter OR = 4'h4;
parameter NOT = 4'h5;
parameter XOR = 4'h6;
parameter NAND = 4'h7;
parameter NOR = 4'h8;
parameter LOAD = 4'h9;
parameter STORE = 4'hA;
parameter PRINT = 4'hB;

//Data RAM
reg we_d;
reg [7:0] data;
reg addr_d;
wire [7:0] out_dram;

//Program ROM
reg [7:0] addr_p;
wire [15:0] out_prom;

//AUX
wire [7:0] STDIN;
wire [7:0] STDOUT;

//Registradores
reg [7:0] PC;
reg [3:0] OPCODE;
reg [7:0] REGA;
reg [7:0] REGB;
reg [7:0] REGC;
reg [7:0] MADDR;
reg [7:0] ZERO;
assign ZERO = 8'd0;

// ULA
wire [7:0] out_ula;
wire sinal;

program_rom prominstance(
	.addr_p(addr_p),
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
	.clk(clk),
	.rst(rst),
	.a(REGA),
	.b(REGB),
	.op(OPCODE),
	.sinal(sinal),
	.out_ula(out_ula)			
);
	 
seg7 seg7instance0(			
	.clk(clk),
	.rst(rst),
	.sinal(0),
	.d(disp0), 			   
	.hex_out(HEX0)
);

seg7 seg7instance1(			
	.clk(clk),		
	.rst(rst),
	.sinal(sinal),
	.d(disp1), 			   
	.hex_out(HEX1)
);

seg7 seg7instance2(			
	.clk(clk), 				
	.rst(rst),
	.sinal(0),
	.d(disp2), 			   
	.hex_out(HEX2)
);

seg7 seg7instance3(			
	.clk(clk), 				
	.rst(rst),
	.sinal(0),
	.d(disp3), 			   
	.hex_out(HEX3)
);

assign STDIN = SW[7:0];
assign STDOUT = LEDR[7:0];

always @(posedge clk or posedge rst)
begin
	if(rst)
	begin
		PC <= 0;
		REGA <= 0;
		REGB <= 0;
		REGC <= 0;
	end
	else
	begin
		addr_p <= PC;
		OPCODE <= out_prom[15:12];
		case(OPCODE)
			LOAD:
			begin
				case(out_prom[11:8])
					4'b0000: REGA <= out_prom[7:0];
					4'b0001: REGB <= out_prom[7:0];
					4'b0010: REGC <= out_prom[7:0];
					4'b0011: MADDR <= out_prom[7:0];
					default: REGA <= out_prom[7:0];
				endcase
			end
			ADD:
			begin
				
			end
			
		endcase
		
		/*
		disp3 <= out_dram[3:0];
		disp2 <= out_dram[7:4];
		disp1 <= out_ula[7:4];
		disp0 <= out_ula[3:0];
		*/
	end
end

/*
always @(posedge KEY[3] or posedge rst) //Armazenar operacoes
begin
	if(rst)
	begin
		PC = 0;
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
end*/

endmodule
