`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:42:15 13/04/2022 
// Design Name: 
// Module Name:    LR3_Seq_Logic 
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
module LR3_Seq_Logic(
	input CLK,
	input RST,
	input CE,
	input [3:0] DAT_I,
	output [31:0] DISP_SEQ, //¬ывод значений дл€ 7-сегментных индикаторов, каждые 4 разр€да (начина€ с младших) это значение дл€ одного индиктора (начина€ с правого)
	output [7:0] DISP_OFF
    );

reg [3:0] STATE = 4'h0;
reg [15:0] WAIT_SEQ = 16'h0002;
reg [15:0] LOG_SEQ = 16'h0000;
reg [3:0] WAIT_DISP_OFF = 4'b1110;
reg [3:0] LOG_DISP_OFF = 4'hf;
reg [1:0] CNT = 2'b00;
reg [3:0] WAIT_VAL = 4'h2;
wire [3:0] VAL;
wire [3:0] NEXT_STATE;
wire [3:0] NEXT_VAL;

assign DISP_SEQ = {WAIT_SEQ, LOG_SEQ};
assign DISP_OFF = {WAIT_DISP_OFF, LOG_DISP_OFF};
assign NEXT_STATE = STATE + 1;

LR3_Seq_Logic_L L(.X(STATE), .Y(VAL));
LR3_Seq_Logic_L LN(.X(NEXT_STATE), .Y(NEXT_VAL));

always @(posedge CLK or posedge RST)
	begin
	if (RST)
		begin
			STATE <= 4'b0;
			WAIT_SEQ <= 16'h0002;
			LOG_SEQ <= 16'h0000;
			WAIT_DISP_OFF <= 4'b1110;
			LOG_DISP_OFF <= 4'hF;
			CNT <= 2'b00;
			WAIT_VAL <= 16'h0002;
		end
	else if (CE)
		begin
			if (DAT_I == VAL)
				begin
					LOG_SEQ <= (LOG_SEQ << 4) | DAT_I;
					WAIT_SEQ <= (WAIT_SEQ << 4) | NEXT_VAL;
					if (!WAIT_DISP_OFF) WAIT_DISP_OFF <= 4'b1110;
					else WAIT_DISP_OFF <= WAIT_DISP_OFF << 1;
					LOG_DISP_OFF <= LOG_DISP_OFF << 1;
					STATE <= STATE + 1;
					if (CNT == 2'b11) WAIT_VAL <= NEXT_VAL;
					CNT <= CNT + 1;
				end
			else
				begin
					WAIT_DISP_OFF <= 4'b1110;
					WAIT_SEQ <= {12'h000, WAIT_VAL};
					LOG_SEQ <= (LOG_SEQ << 4) | DAT_I;
					LOG_DISP_OFF <= LOG_DISP_OFF << 1;
					STATE <= STATE - CNT;
					CNT <= 2'b00;
				end
		end
	end
	

endmodule