`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:33:07 13/04/2022
// Design Name:   LR3
// Module Name:   C:/XLX/Examples/LR3_Geyker/LR3_33_TB.v
// Project Name:  LR3_Geyker
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: LR3_33
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module LR3_TB;

	// Inputs
	reg CLK;
	reg RST;
	reg BTN_CE;
	reg [3:0] DAT_I;
	reg DISP_CE;

	// Outputs
	wire [6:0] CAT;
	wire [7:0] AN;

	// Instantiate the Unit Under Test (UUT)
	LR3 uut (
		.CLK(CLK), 
		.RST(RST), 
		.BTN_CE(BTN_CE), 
		.DAT_I(DAT_I), 
		.DISP_CE(DISP_CE), 
		.CAT(CAT), 
		.AN(AN)
	);
	
	
	always begin #5 CLK = ~CLK; end
	
	always begin
		#80;
		DISP_CE = 1;
		#10;
		DISP_CE = 0;
	end

	initial begin
		// Initialize Inputs
		CLK = 0;
		RST = 0;
		BTN_CE = 0;
		DAT_I = 0;
		DISP_CE = 0;

		// Wait 100 ns for global reset to finish
		#10;
		RST = 1;
		#20;
		RST = 0;
		DAT_I = 4'h2;
		#700;
		BTN_CE = 1;
		#10;
		BTN_CE = 0;
		
		DAT_I = 4'h3;
		#700;
		BTN_CE = 1;
		#10;
		BTN_CE = 0;
		
		////////////////////////
		
		DAT_I = 4'h0;
		#700;
		BTN_CE = 1;
		#10;
		BTN_CE = 0;
		
		DAT_I = 4'hB;
		#700;
		BTN_CE = 1;
		#10;
		BTN_CE = 0;
		
		//////////////////////
		
		DAT_I = 4'h2;
		#700;
		BTN_CE = 1;
		#10;
		BTN_CE = 0;
		
		DAT_I = 4'h3;
		#700;
		BTN_CE = 1;
		#10;
		BTN_CE = 0;
		
		DAT_I = 4'h8;
		#700;
		BTN_CE = 1;
		#10;
		BTN_CE = 0;
		
		DAT_I = 4'h0;
		#700;
		BTN_CE = 1;
		#10;
		BTN_CE = 0;
		
		DAT_I = 4'h3;
		#700;
		BTN_CE = 1;
		#10;
		BTN_CE = 0;
		
		DAT_I = 4'hB;
		#700;
		BTN_CE = 1;
		#10;
		BTN_CE = 0;
		
		DAT_I = 4'hA;
		#700;
		BTN_CE = 1;
		#10;
		BTN_CE = 0;
		
		DAT_I = 4'hD;
		#700;
		BTN_CE = 1;
		#10;
		BTN_CE = 0;
		
		DAT_I = 4'h9;
		#700;
		BTN_CE = 1;
		#10;
		BTN_CE = 0;
		
		DAT_I = 4'hF;
		#700;
		BTN_CE = 1;
		#10;
		BTN_CE = 0;
		
		DAT_I = 4'hC;
		#700;
		BTN_CE = 1;
		#10;
		BTN_CE = 0;
		
		DAT_I = 4'h7;
		#700;
		BTN_CE = 1;
		#10;
		BTN_CE = 0;
		
		DAT_I = 4'h1;
		#700;
		BTN_CE = 1;
		#10;
		BTN_CE = 0;
		
		DAT_I = 4'h2;
		#700;
		BTN_CE = 1;
		#10;
		BTN_CE = 0;
		
		DAT_I = 4'h1;
		#700;
		BTN_CE = 1;
		#10;
		BTN_CE = 0;
		
		//////////////////////////////////
		
		DAT_I = 4'h9;
		#700;
		BTN_CE = 1;
		#10;
		BTN_CE = 0;
		
		/////////////////////////////////
		
		DAT_I = 4'h1;
		#700;
		BTN_CE = 1;
		#10;
		BTN_CE = 0;
		
		DAT_I = 4'h2;
		#700;
		BTN_CE = 1;
		#10;
		BTN_CE = 0;
		
		DAT_I = 4'h1;
		#700;
		BTN_CE = 1;
		#10;
		BTN_CE = 0;
		
		DAT_I = 4'h4;
		#700;
		BTN_CE = 1;
		#10;
		BTN_CE = 0;
        
		// Add stimulus here

	end
      
endmodule

