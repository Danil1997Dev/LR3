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
module LR3_GEN_CE_DISP(
	input CLK,
	input RST,
	output DISP_CE
    );
	 
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


endmodule
