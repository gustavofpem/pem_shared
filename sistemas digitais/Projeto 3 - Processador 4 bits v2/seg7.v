//////////////////////////////////////////////////////////////////////////////////
// Embedded and Ambient Systems Laboratory - FPGA measurements
// Group: M15
//		Gustavo Gonçalves de Sousa Forte - BU4YBL
module seg7(				//Declaration of the input and output ports used by the module
    input clk,				//Input clock signal
    input rst,				//Input reset signal
	 input sinal,
	 input [3:0] d0,			//Input operand - 4 bits wide - Represents the value showed on the first 7 segments display.
    input [3:0] d1,			//Input operand - 4 bits wide - Represents the value showed on the second 7 segments display.
	 input [3:0] d2,			//Input operand - 4 bits wide - Represents the value showed on the third 7 segments display.
    input [3:0] d3,			//Input operand - 4 bits wide - Represents the value showed on the fourth 7 segments display.
    output reg [7:0] hex_out0,	//Output operand - 4 bits wide - Represents the output value after the binary to 7 segments conversion.
    output reg [7:0] hex_out1,	//Output operand - 4 bits wide - Represents the output value after the binary to 7 segments conversion.
	 output reg [7:0] hex_out2,	//Output operand - 4 bits wide - Represents the output value after the binary to 7 segments conversion.
	 output reg [7:0] hex_out3		//Output operand - 4 bits wide - Represents the output value after the binary to 7 segments conversion.
    );

reg [3:0] d;
reg [1:0] display_state;
reg [7:0] hex_out;

// 7-segment encoding
//       0
//      ----
//  5  |   | 1
//     ---- <--6
//  4 |   | 2
//    ----
//      3

always @(posedge clk)
begin
	case(display_state)
		2'b00:
		begin
			d = d0;
			display_state = 1;
		end
		2'b01:
		begin
			d = d1;
			display_state = 2;
		end
		2'b10:
		begin
			d = d2;
			display_state = 3;
		end
		2'b11:
		begin
			d = d3;
			display_state = 0;
		end
		default:
		begin
			d = 0;
			display_state = 0;
		end
	endcase
	
	case(d)									  	 // 7 segments display encoding conditions, depending of the "d0".
		4'b0001: hex_out = 7'b1111001;   // 1
		4'b0010: hex_out = 7'b0100100;   // 2
		4'b0011: hex_out = 7'b0110000;   // 3
		4'b0100: hex_out = 7'b0011001;   // 4
		4'b0101: hex_out = 7'b0010010;   // 5
		4'b0110: hex_out = 7'b0000010;   // 6
		4'b0111: hex_out = 7'b1111000;   // 7
		4'b1000: hex_out = 7'b0000000;   // 8
		4'b1001: hex_out = 7'b0010000;   // 9
		4'b1010: hex_out = 7'b0001000;   // A
		4'b1011: hex_out = 7'b0000011;   // b
		4'b1100: hex_out = 7'b1000110;   // C
		4'b1101: hex_out = 7'b0100001;   // d
		4'b1110: hex_out = 7'b0000110;   // E
		4'b1111: hex_out = 7'b0001110;   // F
		default: hex_out = 7'b1000000;   // 0
	endcase
	
	case(display_state)
		2'b00: hex_out3 = hex_out;
		2'b01: hex_out0 = hex_out;
		2'b10: 
		begin
			if(sinal)
				hex_out1 = 7'b0111111;		// -
			else
				hex_out1 = hex_out;
		end
		2'b11: hex_out2 = hex_out;
		//default:
	endcase
end
endmodule