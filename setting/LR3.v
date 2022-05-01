`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:38:27 11/14/2021 
// Design Name: 
// Module Name:    LR3_33 
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
module LR3_33(
	input CLK,
	input RST,
	input BTN_CE,
	input [3:0] DAT_I,
	input DISP_CE,
	output [6:0] CAT, // DISP Segments
	output [7:0] AN//, // DISP Anodes
   );
	
	wire [31:0] DISP_DATA;
	wire [7:0] DISP_OFF;
	
	LR3_33_Seq_Logic seq_logic(.CLK(CLK), .RST(RST), .CE(BTN_CE), .DAT_I(DAT_I), .DISP_SEQ(DISP_DATA), . DISP_OFF(DISP_OFF));
	M_Nexys4_DISP DISP_7_MODULE (.CLK(CLK), .RST(RST), .DISP_CE(DISP_CE) , .HEX_IN(DISP_DATA), .DP_IN(8'h11), .CA(CAT[0]), .CB(CAT[1]), .CC(CAT[2]), .CD(CAT[3]), .CE(CAT[4]), .CF(CAT[5]), .CG(CAT[6]), .AN(AN),  .DISP_OFF(DISP_OFF));

reg [3:0] CAT_HEX;
always@(CAT)
	begin
		case(CAT)
			7'b1000000: CAT_HEX <= 4'h0;
			7'b1111001: CAT_HEX <= 4'h1;
			7'b0100100: CAT_HEX <= 4'h2;
			7'b0110000: CAT_HEX <= 4'h3;
			
			7'b0011001: CAT_HEX <= 4'h4;
			7'b0010010: CAT_HEX <= 4'h5;
			7'b0000010: CAT_HEX <= 4'h6;
			7'b1111000: CAT_HEX <= 4'h7;
			
			7'b0000000: CAT_HEX <= 4'h8;
			7'b0010000: CAT_HEX <= 4'h9;
			7'b0001000: CAT_HEX <= 4'hA;
			7'b0000011: CAT_HEX <= 4'hB;
			
			7'b1000110: CAT_HEX <= 4'hC;
			7'b0100001: CAT_HEX <= 4'hD;
			7'b0000110: CAT_HEX <= 4'hE;
			7'b0001110: CAT_HEX <= 4'hF;
			
			7'b1111111: CAT_HEX <= 4'hx;		
		endcase
	end

reg [3:0] AN_HEX;
always@(AN)
	begin
		case(AN)
			8'hFE: AN_HEX <= 4'h0;
			8'hFD: AN_HEX <= 4'h1;
			8'hFB: AN_HEX <= 4'h2;
			8'hF7: AN_HEX <= 4'h3;
			8'hEF: AN_HEX <= 4'h4;
			8'hDF: AN_HEX <= 4'h5;
			8'hBF: AN_HEX <= 4'h6;
			8'h7F: AN_HEX <= 4'h7;
		endcase
	end

endmodule
