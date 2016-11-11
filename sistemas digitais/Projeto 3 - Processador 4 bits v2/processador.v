module processador(
	input CLOCK_50,					//Input operand - clock signal
	input [7:0] SW,			//Input switches
	input	[3:0] KEY,					//Input operand - 1 bit wide
	output reg [2:0] LEDG,					//Input operand - 3 bit wide
	output reg [7:0] LEDR,
	output reg [3:0] disp0,		//Output operand - 4 bits wide 
	output reg [3:0] disp1, 		//Output operand - 4 bits wide
	output reg [3:0] disp2, 		//Output operand - 4 bits wide
	output reg [3:0] disp3, 		//Output operand - 4 bits wide
	output [7:0] HEX0,		//Output operand - 7 bits wide - 7 segments display
	output [7:0] HEX1,		//Output operand - 7 bits wide - 7 segments display
	output [7:0] HEX2,		//Output operand - 7 bits wide - 7 segments display
	output [7:0] HEX3			//Output operand - 7 bits wide - 7 segments display
);

wire clk;
assign clk = CLOCK_50;
wire rst;
assign rst = KEY[0];

//Data RAM
reg we_d;
reg [8:0] data;
reg addr_d;
wire [7:0] out_dram;	

//Program ROM
reg [3:0] addr_p;
wire [3:0] out_prom;	

//Other
wire [3:0] a;
wire [3:0] b;
reg [2:0] pc;
wire [7:0] out_ula;
reg [3:0] opcode;
reg sinal;

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
	  
ula_3bits ulainstance (		//XOR module instantiation
    .a(out_dram[3:0]),			
    .b(out_dram[7:4]),			
	 .op(opcode),
	 .sinal(sinal),
    .out_ula(out_ula)			
    );	
	 
seg7 seg7instance (			//7 segments display module instantiation
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

always @(posedge clk)
begin
	addr_d <= 0;
	we_d <= 0;
	
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
	disp1 <= 5; //out_ula/10;
	disp0 <= out_ula%10;
end

always @(negedge KEY[3]) //Armazenar operacoes
begin
	pc <= pc + 1;
	if(pc > 4)
		pc <= 0;
	
	addr_p <= pc;
	opcode <= pc;//out_prom;
	LEDG <= pc;
	
end

endmodule