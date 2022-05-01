`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:41:04 13/04/2022
// Design Name: 
// Module Name:    LR3_TOP 
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
module LR3_TOP(
	input CLK,
	input CPU_RSTn,
	input [3:0] SW,
	input BTN_C,
	output [6:0] CAT, // DISP Segments
	output [7:0] AN//, // DISP Anodes
   );
 
	wire CEO;
	wire BTN_C_CE;
	wire DISP_CE;
	
	LR3_GEN_CE gce(.CLK(CLK), .RST(CPU_RSTn), .CEO(CEO));
	LR3_BTN_FLTR btnf_c(.CLK(CLK), .RST(CPU_RSTn), .CE(CEO), .BTN_I(BTN_C), .BTN_O(), .BTN_CEO(BTN_C_CE));
	LR3_GEN_CE_DISP gced(.CLK(CLK), .RST(RST), .DISP_CE(DISP_CE));
	LR3 main(.CLK(CLK), .RST(CPU_RSTn), .BTN_CE(BTN_C_CE), .DISP_CE(DISP_CE) , .DAT_I(SW), .CAT(CAT), .AN(AN));


endmodule
