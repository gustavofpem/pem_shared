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
parameter JMP = 4'd13; 1011

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
reg [7:0] ACC;
reg [7:0] ACC2;
reg [7:0] REGA;
reg [7:0] REGB;
reg [7:0] REGC;
reg [7:0] MADDR;
reg [7:0] ZERO;

// ULA
wire [7:0] out_ula;
wire CARRY;
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
	.a(ACC),
	.b(ACC2),
	.op(OPCODE),
	.carry(CARRY),
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

always @(posedge clk or posedge rst)
begin
	ZERO <= 8'd0;
	if(rst)
	begin
		PC <= 'd0;
		ACC <= 'd0;
		ACC2 <= 'd0;
		REGA <= 'd0;
		REGB <= 'd0;
		REGC <= 'd0;
		LEDR <= 10'b1111111111;
	end
	else
	begin
		PC <= PC + 1'b1;
		addr_p <= PC;
		OPCODE <= out_prom[15:12];
		LEDR <= REGB;
		case(OPCODE)
			MOVE:
			begin
				case(out_prom[11:8])
					4'b0000: ACC <= out_prom[7:0];
					4'b0001: REGA <= out_prom[7:0];
					4'b0010: REGB <= out_prom[7:0];
					4'b0011: REGC <= out_prom[7:0];
					4'b0100: MADDR <= out_prom[7:0];
					default: ACC <= out_prom[7:0];
				endcase
			end
			ADD:
			begin
				case(out_prom[11:8])
					4'b0000: ACC2 <= out_prom[7:0];
					4'b0001: ACC2 <= REGA;
					4'b0010: ACC2 <= REGB;
					4'b0011: ACC2 <= REGC;
					default: ACC2 <= out_prom[7:0];
				endcase
				REGC <= out_ula;
			end
			AND:
			begin
				case(out_prom[11:8])
					4'b0000: ACC2 <= out_prom[7:0];
					4'b0001: ACC2 <= REGA;
					4'b0010: ACC2 <= REGB;
					4'b0011: ACC2 <= REGC;
					default: ACC2 <= out_prom[7:0];
				endcase
			end
			OR:
			begin
				case(out_prom[11:8])
					4'b0000: ACC2 <= out_prom[7:0];
					4'b0001: ACC2 <= REGA;
					4'b0010: ACC2 <= REGB;
					4'b0011: ACC2 <= REGC;
					default: ACC2 <= out_prom[7:0];
				endcase
			end
			NOT:
			begin
				case(out_prom[11:8])
					4'b0000: ACC2 <= out_prom[7:0];
					4'b0001: ACC2 <= REGA;
					4'b0010: ACC2 <= REGB;
					4'b0011: ACC2 <= REGC;
					default: ACC2 <= out_prom[7:0];
				endcase
			end
			XOR:
			begin
				case(out_prom[11:8])
					4'b0000: ACC2 <= out_prom[7:0];
					4'b0001: ACC2 <= REGA;
					4'b0010: ACC2 <= REGB;
					4'b0011: ACC2 <= REGC;
					default: ACC2 <= out_prom[7:0];
				endcase
			end
			LOAD:
			begin
				addr_d <= out_prom[7:0];
				we_d <= 1'b0;
				case(out_prom[11:8])
					4'b0000: ACC <= out_dram;
					4'b0001: REGA <= out_dram;
					4'b0010: REGB <= out_dram;
					4'b0011: REGC <= out_dram;
					4'b0100: MADDR <= out_dram;
					default: ACC <= out_dram;
				endcase
			end
			STORE:
			begin
				addr_d <= out_prom[7:0];
				we_d <= 1'b1;
				case(out_prom[11:8])
					4'b0000: data <= out_prom;
					4'b0001: data <= REGA;
					4'b0010: data <= REGB;
					4'b0011: data <= REGC;
					4'b0100: data <= MADDR;
					4'b0101: data <= out_ula;
					default: data <= ACC;
				endcase
			end
			CLEAR:
			begin
				case(out_prom[11:8])
					4'b0000: ACC <= 8'd0;
					4'b0001: REGA <= 8'd0;
					4'b0010: REGB <= 8'd0;
					4'b0011: REGC <= 8'd0;
					4'b0100: MADDR <= 8'd0;
					default: ACC <= 8'd0;
				endcase
			end
			PRINT:
			begin
				case(out_prom[11:8])
					4'b0000: LEDG <= ACC;
					4'b0001: LEDG <= ACC2;
					4'b0010: LEDG <= REGA;
					4'b0011: LEDG <= REGB;
					4'b0100: LEDG <= REGC;
					4'b0101: LEDG <= out_ula;
					default: LEDG <= ACC;
				endcase
			end
			PRINT7SEG:
			begin
				case(out_prom[11:8])
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
				endcase
			end
			JMP:
			begin
				PC <= out_prom[7:0];
			end
		endcase
		
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

