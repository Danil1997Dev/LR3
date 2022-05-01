`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:05:11 11/14/2021 
// Design Name: 
// Module Name:    LR3_33_Seq_Logic_L 
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
module LR3_33_Seq_Logic_L(
	input [3:0] X,
	output reg [3:0] Y
	);

always@(X)
	begin
		case(X)
			4'h0: Y <= 4'h2;
			4'h1: Y <= 4'h2;
			4'h2: Y <= 4'hA;
			4'h3: Y <= 4'h1;
			4'h4: Y <= 4'hC;
			4'h5: Y <= 4'h6;
			4'h6: Y <= 4'h0;
			4'h7: Y <= 4'h5;
			4'h8: Y <= 4'hF;
			4'h9: Y <= 4'hC;
			4'hA: Y <= 4'h4;
			4'hB: Y <= 4'hB;
			4'hC: Y <= 4'hA;
			4'hD: Y <= 4'h9;
			4'hE: Y <= 4'h5;
			4'hF: Y <= 4'h5;
		endcase
	end

endmodule
