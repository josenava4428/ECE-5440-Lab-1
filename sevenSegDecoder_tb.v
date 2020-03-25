// ECE5440
// Jose Navarro, 4207
// sevenSegDecoder_tb
// This module tests the seven segment decoder module to ensure that it
// is properly working.

`timescale 10ns/100ps
module sevenSegDecoder_tb();

	reg [3:0] inputPin;
	wire [6:0] outputSeg;
	sevenSegDecoder DUT_sevenSegDecoder(inputPin, outputSeg);

	initial
		begin
			inputPin = 4'b0000;
			#10;
			inputPin = 4'b0001;
			#10;
			inputPin = 4'b0010;
			#10;
			inputPin = 4'b0011;
			#10;
			inputPin = 4'b0100;
			#10;
			inputPin = 4'b0101;
			#10;	
			inputPin = 4'b0110;
			#10;		
			inputPin = 4'b0111;
			#10;
			inputPin = 4'b1000;
			#10;
			inputPin = 4'b1001;
			#10;
			inputPin = 4'b1010;
			#10;
			inputPin = 4'b1011;
			#10;
			inputPin = 4'b1100;
			#10;
			inputPin = 4'b1101;
			#10;
			inputPin = 4'b1110;
			#10;
			inputPin = 4'b1111;
			#10;
		end
endmodule 