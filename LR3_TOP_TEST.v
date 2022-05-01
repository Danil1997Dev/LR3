`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:37:06 04/14/2022
// Design Name:   LR3_TOP
// Module Name:   C:/Users/Geralt/Desktop/LR3/LR3_TOP_TEST.v
// Project Name:  LR3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: LR3_TOP
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module LR3_TOP_TEST;

	// Inputs
	reg CLK;
	reg CPU_RSTn;
	reg [3:0] SW;
	reg BTN_C;

	// Outputs
	wire [6:0] CAT;
	wire [7:0] AN;

	// Instantiate the Unit Under Test (UUT)
	LR3_TOP uut (
		.CLK(CLK), 
		.CPU_RSTn(CPU_RSTn), 
		.SW(SW), 
		.BTN_C(BTN_C), 
		.CAT(CAT), 
		.AN(AN)
	);

	initial begin
		// Initialize Inputs
		CLK = 0;
		CPU_RSTn = 1;
		BTN_C = 0;
		SW = 0;

		// Wait 100 ns for global reset to finish
		#100;
		CPU_RSTn = 0;
		#10;
		
		SW = 'h2;
		BTN_C = 1;
		#15;
		BTN_C = 0;
		#5;
		
		SW = 'h3;
		BTN_C = 1;
		#15;
		BTN_C = 0;
		#5;

		///

		SW = 'h9;
		BTN_C = 1;
		#15;
		BTN_C = 0;
		#5;
		
		///
		
		SW = 'h2;
		BTN_C = 1;
		#15;
		BTN_C = 0;
		#5;
		
		SW = 'h3;
		BTN_C = 1;
		#15;
		BTN_C = 0;
		#5;
		
		SW = 'h8;
		BTN_C = 1;
		#15;
		BTN_C = 0;
		#5;
		
		SW = 'h0;
		BTN_C = 1;
		#15;
		BTN_C = 0;
		#5;

	end
	
	initial begin
		forever #10 CLK = ~CLK;
	end
      
endmodule

