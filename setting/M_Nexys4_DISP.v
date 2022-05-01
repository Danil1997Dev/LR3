`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:43:51 10/28/2021 
// Design Name: 
// Module Name:    M_Nexys4_DISP 
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
module M_Nexys4_DISP(
	input CLK,
	input RST,
	input DISP_CE,
	input [31:0] HEX_IN,
	output CA,
	output CB,
	output CC,
	output CD,
	output CE,
	output CF,
	output CG,
	output reg DP,
	output [7:0] AN,
	input [7:0] DP_IN,
	input [7:0] DISP_OFF
	);
// Internal signals declaration:
//------------------------------------------
reg [2:0] DIGIT_CNT;
reg [3:0] I_CODE;
reg DEC_ENABLE;
wire O_SEG_A, O_SEG_B, O_SEG_C, O_SEG_D, O_SEG_E, O_SEG_F, O_SEG_G;
reg [7:0] ANODE_DC;
//------------------------------------------

//------------------------------------------
// Display Digit Counter:
always @ (posedge CLK, posedge RST)
	if(RST) DIGIT_CNT <= 3'd7;
	else if(DISP_CE) DIGIT_CNT <= DIGIT_CNT - 1;
//------------------------------------------
// Display Digit Multiplexer:
always @ (DIGIT_CNT)
	case(DIGIT_CNT)
	3'd0:
		begin
			DEC_ENABLE <= ~(DISP_OFF[0] | RST);
			I_CODE <= HEX_IN[3:0];
			DP <= ~DP_IN[0];
			ANODE_DC <= 8'd1;
		end
	3'd1:
		begin
			DEC_ENABLE <= ~(DISP_OFF[1] | RST);
			I_CODE <= HEX_IN[7:4];
			DP <= ~DP_IN[1];
			ANODE_DC <= 8'd2;
		end
	3'd2:
		begin
			DEC_ENABLE <= ~(DISP_OFF[2] | RST);
			I_CODE <= HEX_IN[11:8];
			DP <= ~DP_IN[2];
			ANODE_DC <= 8'd4;
		end
	3'd3:
		begin
			DEC_ENABLE <= ~(DISP_OFF[3] | RST);
			I_CODE <= HEX_IN[15:12];
			DP <= ~DP_IN[3];
			ANODE_DC <= 8'd8;
		end
	3'd4:
		begin
			DEC_ENABLE <= ~(DISP_OFF[4] | RST);
			I_CODE <= HEX_IN[19:16];
			DP <= ~DP_IN[4];
			ANODE_DC <= 8'd16;
		end
	3'd5:
		begin
			DEC_ENABLE <= ~(DISP_OFF[5] | RST);
			I_CODE <= HEX_IN[23:20];
			DP <= ~DP_IN[5];
			ANODE_DC <= 8'd32;
		end
	3'd6:
		begin
			DEC_ENABLE <= ~(DISP_OFF[6] | RST);
			I_CODE <= HEX_IN[27:24];
			DP <= ~DP_IN[6];
			ANODE_DC <= 8'd64;
		end
	default:
		begin
			DEC_ENABLE <= ~(DISP_OFF[7] | RST);
			I_CODE <= HEX_IN[31:28];
			DP <= ~DP_IN[7];
			ANODE_DC <= 8'd128;
		end
	endcase
//------------------------------------------
// 7-Segment Decoder:
M_7SEG_DECODER_V10 DISP_DEC (.I_CODE(I_CODE), .EN(DEC_ENABLE) , .O_SEG_A(O_SEG_A), .O_SEG_B(O_SEG_B), .O_SEG_C(O_SEG_C), .O_SEG_D(O_SEG_D), .O_SEG_E(O_SEG_E), .O_SEG_F(O_SEG_F), .O_SEG_G(O_SEG_G));
//------------------------------------------
assign AN = ~ANODE_DC | {8{RST}};
assign CA = ~O_SEG_A;
assign CB = ~O_SEG_B;
assign CC = ~O_SEG_C;
assign CD = ~O_SEG_D;
assign CE = ~O_SEG_E;
assign CF = ~O_SEG_F;
assign CG = ~O_SEG_G;
//------------------------------------------
endmodule