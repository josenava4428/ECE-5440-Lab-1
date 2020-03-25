// ECE5440
// Jose Navarro, 4207
// Lab1_Navarro_J
// Module calls adder module and seven segment decoder module to 
// appropriately output the inputs from the switches to the board

module adder_top(switch1, switch2, seg1, seg2, segSum, red, green);

	input [3:0]  switch1, switch2;
	output [6:0] seg1, seg2, segSum;
	output red, green;

	wire [3:0] sum;

	adder adder_1 (switch1, switch2, sum);

	sevenSegDecoder segNum1(switch1, seg1);
	sevenSegDecoder segNum2(switch2, seg2);
	sevenSegDecoder segSumation(sum, segSum);
	
	ledToggle led(sum, red, green); 
endmodule
