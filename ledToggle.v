// ECE5440
// Jose Navarro, 4207
// ledToggle
// Turns on green LED and red LED when appropriate according to the rules of the game

module ledToggle(sum, red, green);

	input [3:0] sum;
	output red, green;
	reg red, green;

	always @ (sum)
		begin
		if (sum == 15)
			begin
			red = 0;
			green = 1;
			end 
		else
			begin
			red = 1; 
			green = 0;
		end
	end
endmodule			
