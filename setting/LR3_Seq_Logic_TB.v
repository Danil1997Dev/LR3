`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:43:03 11/14/2021
// Design Name:   LR3_33_Seq_Logic
// Module Name:   C:/XLX/Examples/LR3_Geyker/LR3_33_Seq_Logic_TB.v
// Project Name:  LR3_Geyker
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: LR3_33_Seq_Logic
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module LR3_33_Seq_Logic_TB;

	// Inputs
	reg CLK;
	reg RST;
	reg CE;
	reg [3:0] DAT_I;

	// Outputs
	wire [31:0] DISP_SEQ;
	wire [7:0] DISP_OFF;

	// Instantiate the Unit Under Test (UUT)
	LR3_33_Seq_Logic uut (
		.CLK(CLK), 
		.RST(RST), 
		.CE(CE), 
		.DAT_I(DAT_I), 
		.DISP_SEQ(DISP_SEQ), 
		.DISP_OFF(DISP_OFF)
	);

	initial begin
		// Initialize Inputs
		CLK = 0;
		RST = 1;
		CE = 0;
		DAT_I = 0;

		// Wait 100 ns for global reset to finish
		#100;
		RST = 0;
		DAT_I = 'h2;
		CE = 1;
		#15;
		CE = 0;
		#5;
		
		DAT_I = 'h2;
		CE = 1;
		#15;
		CE = 0;
		#5;
		//////////////////
		DAT_I = 'h0;
		CE = 1;
		#15;
		CE = 0;
      
		#5;
		DAT_I = 4'hB;
		CE = 1;
		#15;
		CE = 0;
		//////////////////
		#5;
		DAT_I = 'h2;
		CE = 1;
		#15;
		CE = 0;
		#5;
		
		DAT_I = 'h2;
		CE = 1;
		#15;
		CE = 0;
		#5;
		
		#5;
		DAT_I = 4'hA;
		CE = 1;
		#15;
		CE = 0;
		
		#5;
		DAT_I = 4'h1;
		CE = 1;
		#15;
		CE = 0;
		
		#5;
		DAT_I = 4'hC;
		CE = 1;
		#15;
		CE = 0;
		
		#5;
		DAT_I = 4'h6;
		CE = 1;
		#15;
		CE = 0;
		
		#5;
		DAT_I = 4'h0;
		CE = 1;
		#15;
		CE = 0;
		
		#5;
		DAT_I = 4'h5;
		CE = 1;
		#15;
		CE = 0;
		
		#5;
		DAT_I = 4'hF;
		CE = 1;
		#15;
		CE = 0;
		
		#5;
		DAT_I = 4'hC;
		CE = 1;
		#15;
		CE = 0;
		
		#5;
		DAT_I = 4'h4;
		CE = 1;
		#15;
		CE = 0;
		
		#5;
		DAT_I = 4'hB;
		CE = 1;
		#15;
		CE = 0;
		
		#5;
		DAT_I = 4'hA;
		CE = 1;
		#15;
		CE = 0;
		
		#5;
		DAT_I = 4'h9;
		CE = 1;
		#15;
		CE = 0;
		
		#5;
		DAT_I = 4'h5;
		CE = 1;
		#15;
		CE = 0;
		//////////////////////////
		#5;
		DAT_I = 4'h9;
		CE = 1;
		#15;
		CE = 0;
		/////////////////////////
		#5;
		DAT_I = 4'hA;
		CE = 1;
		#15;
		CE = 0;
		
		#5;
		DAT_I = 4'h9;
		CE = 1;
		#15;
		CE = 0;
		
		#5;
		DAT_I = 4'h5;
		CE = 1;
		#15;
		CE = 0;
		
		#5;
		DAT_I = 4'h5;
		CE = 1;
		#15;
		CE = 0;
		
		#5;
		DAT_I = 4'h2;
		CE = 1;
		#15;
		CE = 0;
		
		RST = 1;
		#15;
		RST = 0;
		
		#10;
		DAT_I = 4'h2;
		CE = 1;
		#15;
		CE = 0;
		
		
		// Add stimulus here

	end
	
	initial begin
		forever #10 CLK = ~CLK;
	end
      
endmodule

