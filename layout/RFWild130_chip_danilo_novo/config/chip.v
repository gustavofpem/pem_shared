`include "./layout/contador_rfwild.synth.v"

module chip_rfwild(clk,reset,contador);
	input clk;
	input reset;
	output [3:0] contador;
	//interface to module
	wire i_clk,i_rst;
	wire [3:0]i_contador;

//Modules
	contador_rfwild contador1(.clk(i_clk),
		.reset(i_rst),
		.contador(i_contador[3:0]));
//TieHi
	wire hiclk,hireset,hicontador0,hicontador1,hicontador2,hicontador3;
	TIE1_D tiehi_clk(.Z(hiclk));
	TIE1_D tiehi_reset(.Z(hireset));
	TIE1_D tiehi_contador0(.Z(hicontador0));
	TIE1_D tiehi_contador1(.Z(hicontador1));
	TIE1_D tiehi_contador2(.Z(hicontador2));
	TIE1_D tiehi_contador3(.Z(hicontador3));

//TieLo
	wire loclk,loreset,locontador0,locontador1,locontador2,locontador3;
	TIE0_D tielo_clk(.Z(loclk));
	TIE0_D tielo_reset(.Z(loreset));
	TIE0_D tielo_contador0(.Z(locontador0));
	TIE0_D tielo_contador1(.Z(locontador1));
	TIE0_D tielo_contador2(.Z(locontador2));
	TIE0_D tielo_contador3(.Z(locontador3));

//PADS/IO
wire VDD_pad,VDD;
wire VDD150_pad,VDD150;
//Power
	AINSD_VDD150_PM_A ain_vdd(.PAD(VDD_pad),
			.PT(VDD));

//input
	BC1520_PM_A p_clk(.PAD(clk),
			.Z(i_clk),
			.ZH(),
			.A(),
			.RE(hiclk),
			.DE(loclk));

	BC1520_PM_A p_reset(.PAD(reset),
			.Z(i_rst),
			.ZH(),
			.A(),
			.RE(hireset),
			.DE(loreset));
//output
	BC1520_PM_A p_contador0(.PAD(contador[0]),
			.Z(),
			.ZH(),
			.A(i_contador[0]),
			.RE(locontador0),
			.DE(hicontador0));
	BC1520_PM_A p_contador1(.PAD(contador[1]),
			.Z(),
			.ZH(),
			.A(i_contador[1]),
			.RE(locontador1),
			.DE(hicontador1));
	BC1520_PM_A p_contador2(.PAD(contador[2]),
			.Z(),
			.ZH(),
			.A(i_contador[2]),
			.RE(locontador2),
			.DE(hicontador2));
	BC1520_PM_A p_contador3(.PAD(contador[3]),
			.Z(),
			.ZH(),
			.A(i_contador[3]),
			.RE(locontador3),
			.DE(hicontador3));


endmodule
