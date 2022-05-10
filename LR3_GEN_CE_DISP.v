`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:49:11 13/04/2022
// Design Name: 
// Module Name:    LR3_GEN_CE_DISP 
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
module LR3_GEN_CE_DISP
#(parameter
	CLK_REF = 50_000_000,
	CLK_REFRESH = 1_000_000,
	CLK_DIGITAL = 8*CLK_REFRESH,
	RELATE_CLK = CLK_REF/CLK_DIGITAL,
	WIDTH_C_D = $clog2(RELATE_CLK)
    )
(
	input CLK,
	input RST,
	output reg DISP_CE
    );

reg [WIDTH_C_D-1:0] CNT_DIV = 0;
always @ (posedge CLK or posedge RST)
	if(RST)
		begin
			CNT_DIV <= 0;
		end
	else
		begin
			if(CNT_DIV > RELATE_CLK) // CLK/DIGITAL
				begin
					CNT_DIV <= 0;
					DISP_CE <= 1'b1;
				end
			else
				begin
					CNT_DIV <= CNT_DIV + 1;
					DISP_CE <= 1'b0;
				end
		end


/*	 
reg [9:0] CLK_DIV_H, CLK_DIV_L;
reg CEO_DIV_H, CEO_DIV_L;

assign DISP_CE = CEO_DIV_L;
	 
// 1048576 Clock Divider:
always @ (posedge CLK, posedge RST)
	if(RST)
		begin
			CLK_DIV_H <= 10'h000;
			CLK_DIV_L <= 10'h000;
			CEO_DIV_H <= 1'b0;
			CEO_DIV_L <= 1'b0;
		end
	else
		begin
			if(CLK_DIV_H == 10'h063) // 3FF - :1024 , 063 - :100
				begin
					CLK_DIV_H <= 10'h000;
					CEO_DIV_H <= 1'b1;
				end
			else
				begin
					CLK_DIV_H <= CLK_DIV_H + 1;
					CEO_DIV_H <= 1'b0;
				end
			if(CEO_DIV_H)
				begin
					if(&(CLK_DIV_L))
						CLK_DIV_L <= 10'h000;
					else
						CLK_DIV_L <= CLK_DIV_L + 1;
				end
			if(&(CLK_DIV_L) & CEO_DIV_H)
				CEO_DIV_L <= 1'b1;
			else
				CEO_DIV_L <= 1'b0;
		end

*/
endmodule
