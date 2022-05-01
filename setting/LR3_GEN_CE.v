`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:42:25 10/28/2021 
// Design Name: 
// Module Name:    LR3_GEN_CE 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module LR3_GEN_CE(
	input CLK,
	input RST,
	output reg CEO
    );
	 
	reg [16:0] CNT;
	
	always @(posedge CLK, posedge RST)
		if (RST)
			begin
				CNT <= 17'd0;
				CEO <= 1'b0;
			end
		else
			if (CNT == 17'd99999)
				begin
					CNT <= 17'd0;
					CEO <= 1'b1;
				end
			else
				begin
					CNT <= CNT + 1;
					CEO <= 1'b0;
				end
				
endmodule
