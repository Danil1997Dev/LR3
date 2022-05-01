`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:43:01 13/04/2022 
// Design Name: 
// Module Name:    M_7SEG_DECODER_V10 
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
module M_7SEG_DECODER_V10(
	input [3:0] I_CODE, // Input HEX-Digit
	input EN,
	output reg O_SEG_A, // Segment-A Active High
	output reg O_SEG_B, // Segment-B Active High
	output reg O_SEG_C, // Segment-C Active High
	output reg O_SEG_D, // Segment-D Active High
	output reg O_SEG_E, // Segment-E Active High
	output reg O_SEG_F, // Segment-F Active High
	output reg O_SEG_G  // Segment-G Active High
	);
//------------------------------------------
// Decoder Comb. Logic:
always @ (I_CODE or EN)
	if (!EN)
		begin
			O_SEG_A <= 1'b0;
			O_SEG_B <= 1'b0;
			O_SEG_C <= 1'b0;
			O_SEG_D <= 1'b0;
			O_SEG_E <= 1'b0;
			O_SEG_F <= 1'b0;
			O_SEG_G <= 1'b0;
		end
	else
	case(I_CODE)
	4'h0:
		begin
			O_SEG_A <= 1'b1;
			O_SEG_B <= 1'b1;
			O_SEG_C <= 1'b1;
			O_SEG_D <= 1'b1;
			O_SEG_E <= 1'b1;
			O_SEG_F <= 1'b1;
			O_SEG_G <= 1'b0;
		end
	4'h1:
		begin
			O_SEG_A <= 1'b0;
			O_SEG_B <= 1'b1;
			O_SEG_C <= 1'b1;
			O_SEG_D <= 1'b0;
			O_SEG_E <= 1'b0;
			O_SEG_F <= 1'b0;
			O_SEG_G <= 1'b0;
		end
	4'h2:
		begin
			O_SEG_A <= 1'b1;
			O_SEG_B <= 1'b1;
			O_SEG_C <= 1'b0;
			O_SEG_D <= 1'b1;
			O_SEG_E <= 1'b1;
			O_SEG_F <= 1'b0;
			O_SEG_G <= 1'b1;
		end
	4'h3:
		begin
			O_SEG_A <= 1'b1;
			O_SEG_B <= 1'b1;
			O_SEG_C <= 1'b1;
			O_SEG_D <= 1'b1;
			O_SEG_E <= 1'b0;
			O_SEG_F <= 1'b0;
			O_SEG_G <= 1'b1;
		end
	4'h4:
		begin
			O_SEG_A <= 1'b0;
			O_SEG_B <= 1'b1;
			O_SEG_C <= 1'b1;
			O_SEG_D <= 1'b0;
			O_SEG_E <= 1'b0;
			O_SEG_F <= 1'b1;
			O_SEG_G <= 1'b1;
		end
	4'h5:
		begin
			O_SEG_A <= 1'b1;
			O_SEG_B <= 1'b0;
			O_SEG_C <= 1'b1;
			O_SEG_D <= 1'b1;
			O_SEG_E <= 1'b0;
			O_SEG_F <= 1'b1;
			O_SEG_G <= 1'b1;
		end
	4'h6:
		begin
			O_SEG_A <= 1'b1;
			O_SEG_B <= 1'b0;
			O_SEG_C <= 1'b1;
			O_SEG_D <= 1'b1;
			O_SEG_E <= 1'b1;
			O_SEG_F <= 1'b1;
			O_SEG_G <= 1'b1;
		end
	4'h7:
		begin
			O_SEG_A <= 1'b1;
			O_SEG_B <= 1'b1;
			O_SEG_C <= 1'b1;
			O_SEG_D <= 1'b0;
			O_SEG_E <= 1'b0;
			O_SEG_F <= 1'b0;
			O_SEG_G <= 1'b0;
		end
	4'h8:
		begin
			O_SEG_A <= 1'b1;
			O_SEG_B <= 1'b1;
			O_SEG_C <= 1'b1;
			O_SEG_D <= 1'b1;
			O_SEG_E <= 1'b1;
			O_SEG_F <= 1'b1;
			O_SEG_G <= 1'b1;
		end
	4'h9:
		begin
			O_SEG_A <= 1'b1;
			O_SEG_B <= 1'b1;
			O_SEG_C <= 1'b1;
			O_SEG_D <= 1'b1;
			O_SEG_E <= 1'b0;
			O_SEG_F <= 1'b1;
			O_SEG_G <= 1'b1;
		end
	4'hA:
		begin
			O_SEG_A <= 1'b1;
			O_SEG_B <= 1'b1;
			O_SEG_C <= 1'b1;
			O_SEG_D <= 1'b0;
			O_SEG_E <= 1'b1;
			O_SEG_F <= 1'b1;
			O_SEG_G <= 1'b1;
		end
	4'hB:
		begin
			O_SEG_A <= 1'b0;
			O_SEG_B <= 1'b0;
			O_SEG_C <= 1'b1;
			O_SEG_D <= 1'b1;
			O_SEG_E <= 1'b1;
			O_SEG_F <= 1'b1;
			O_SEG_G <= 1'b1;
		end
	4'hC:
		begin
			O_SEG_A <= 1'b1;
			O_SEG_B <= 1'b0;
			O_SEG_C <= 1'b0;
			O_SEG_D <= 1'b1;
			O_SEG_E <= 1'b1;
			O_SEG_F <= 1'b1;
			O_SEG_G <= 1'b0;
		end
	4'hD:
		begin
			O_SEG_A <= 1'b0;
			O_SEG_B <= 1'b1;
			O_SEG_C <= 1'b1;
			O_SEG_D <= 1'b1;
			O_SEG_E <= 1'b1;
			O_SEG_F <= 1'b0;
			O_SEG_G <= 1'b1;
		end
	4'hE:
		begin
			O_SEG_A <= 1'b1;
			O_SEG_B <= 1'b0;
			O_SEG_C <= 1'b0;
			O_SEG_D <= 1'b1;
			O_SEG_E <= 1'b1;
			O_SEG_F <= 1'b1;
			O_SEG_G <= 1'b1;
		end
	default:
		begin
			O_SEG_A <= 1'b1;
			O_SEG_B <= 1'b0;
			O_SEG_C <= 1'b0;
			O_SEG_D <= 1'b0;
			O_SEG_E <= 1'b1;
			O_SEG_F <= 1'b1;
			O_SEG_G <= 1'b1;
		end
	endcase
//-----------------------------------------
endmodule
