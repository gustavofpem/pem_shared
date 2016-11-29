module processador(
	input clk,
	input rst,
	input [9:0] SW,
	input	[2:1] KEY,
	output [7:0] LEDG,
	output reg [9:0] LEDR,
	output [3:0] disp0,
	output [3:0] disp1,
	output [3:0] disp2,
	output [3:0] disp3,
	output [6:0] HEX0,
	output [6:0] HEX1,
	output [6:0] HEX2,
	output [6:0] HEX3
);

parameter NOP = 4'd0;			// No Operation
parameter LI = 4'd1;			// Load Immediate
parameter LOAD = 4'd2;			// Load from RAM
parameter STORE = 4'd3;			// Store to RAM
parameter ADD = 4'd4;			// ACC and ACC2
parameter SUB = 4'd5;
parameter AND = 4'd6;
parameter OR = 4'd7;
parameter XOR = 4'd8;
parameter NOT = 4'd9;
parameter LIN = 4'd10;			// Load from Input
parameter PRINT = 4'd11;		// Print to Output LEDs
parameter PRINT7SEG = 4'd12;	// Print to Output 7seg
parameter JMP = 4'd13;			// Jump

//Data RAM
wire we_d;
wire [7:0] data;
wire [7:0] addr_d;
wire [7:0] out_dram;

//Register File
reg we_reg;
wire [3:0] addr_reg;
reg [7:0] data_reg;
wire [7:0] out_reg;

//Program ROM
wire [15:0] out_prom;

//PC
wire [7:0] PC;
wire we_pc;
wire [7:0] data_pc;

//AUX
wire [7:0] STDIN;
wire [7:0] STDOUT;
wire [3:0] OPCODE;

//ULA & ACC
wire [7:0] ACC;
wire [7:0] ACC2;
wire [7:0] RESULT;
wire [7:0] out_ula;
wire CARRY;
wire we_acc;
reg [7:0] data_acc;

pc pcinstance(
	.clk(clk),
	.rst(rst),
	.we_pc(we_pc),
	.data_pc(data_pc),
	.pc(PC)
);

regfile regfileinstance(
	.clk(clk),	
	.rst(rst),
	.we_reg(we_reg),
	.addr_reg(addr_reg),
	.data_reg(data_reg),
	.out_reg(out_reg)
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

acc accinstance(
	.clk(clk),
	.rst(rst),
	.acc(ACC),
	.we_acc(we_acc),
	.data_acc(data_acc)
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

assign STDIN = SW[7:0];

assign OPCODE = out_prom[15:12]; // 4 bits opcode
assign addr_reg = out_prom[11:8];
assign addr_d = (OPCODE == STORE || OPCODE == LOAD) ? out_prom[7:0] : 'd0;
assign data = (OPCODE == STORE) ? out_reg : 'd0;
assign we_d = (OPCODE == STORE) ? 'd1 : 'd0;
assign LEDG = (OPCODE == PRINT) ? out_reg : 'd0;
assign disp0 = (OPCODE == PRINT7SEG) ? out_prom[3:0] : 'd0;
assign disp1 = (OPCODE == PRINT7SEG) ? out_prom[7:4] : 'd0;
assign disp2 = (OPCODE == PRINT7SEG) ? 'd15 : 'd0;
assign disp3 = (OPCODE == PRINT7SEG) ? 'd15 : 'd0;
assign we_pc = (OPCODE == JMP) ? 'd1 : 'd0;
assign data_pc = (OPCODE == JMP) ? out_prom[7:0] : 'd0;
assign we_acc = ((OPCODE == LI || OPCODE == LOAD || OPCODE == LIN) && out_prom[11:8] == 4'd0) ? 'd1 : 'd0;
assign ACC2 = (OPCODE == ADD || OPCODE == SUB || OPCODE == AND || OPCODE == OR || OPCODE == XOR || OPCODE == NOT) ? out_reg : 'd0;
assign RESULT = (OPCODE == ADD || OPCODE == SUB || OPCODE == AND || OPCODE == OR || OPCODE == XOR || OPCODE == NOT) ? out_ula : 'd0;

//assign data_acc = ((OPCODE == LI || OPCODE == LOAD || OPCODE == LIN) && out_prom[11:8] == 4'd0) ? out_prom[7:0] : 'd0;

always @(*)
begin
	if(rst)
	begin
		we_reg <= 'd0;
		data_reg <= 'd0;
		//RESULT <= 'd0;
	end
	else
	begin
		LEDR <= PC;
		case(OPCODE)
			LI:
			begin
				if(out_prom[11:8] == 4'b0000)
				begin
					data_acc <= out_prom[7:0];
					we_reg <= 'd0;
				end
				else
				begin
					we_reg <= 'd1;
					data_reg <= out_prom[7:0];
				end
			end
			LOAD:
			begin
				if(out_prom[11:8] == 4'b0000)
					we_reg <= 'd0;
				else
				begin
					we_reg <= 'd1;
					data_reg <= out_dram;
				end
			end
			STORE:
			begin
				//data <= out_reg;
			end
			ADD:
			begin
				we_reg <= 'd0;
				//ACC2 <= out_reg;
				//RESULT <= out_ula;
			end
			AND:
			begin
				we_reg <= 'd0;
			//	ACC2 <= out_reg;
				//RESULT <= out_ula;
			end
			OR:
			begin
				we_reg <= 'd0;
				//ACC2 <= out_reg;
				//RESULT <= out_ula;
			end
			XOR:
			begin
				we_reg <= 'd0;
				//ACC2 <= out_reg;
			end
			NOT:
			begin
				we_reg <= 'd0;
				//ACC2 <= out_reg;
			end
			LIN:
			begin
				if(out_prom[11:8] == 4'b0000)
					we_reg <= 'd0;
				else
				begin
					we_reg <= 'd1;
					data_reg <= STDIN;
				end
			end
			PRINT:
			begin
				we_reg <= 'd0;
				//LEDG <= out_reg;
			end
/*			PRINT7SEG:
			begin
				we_reg <= 'd0;
				disp0 <= out_ula[3:0];
				disp1 <= out_ula[7:4];
			end*/
			JMP:
			begin
				we_reg <= 'd0;
			end
			default:
			begin
				we_reg <= 'd0;
			end
		endcase
	end
end

/*always @(posedge clk or posedge rst)
	if(rst)
		RESULT <= 'd0;
	else
		RESULT <= out_ula;*/

endmodule
