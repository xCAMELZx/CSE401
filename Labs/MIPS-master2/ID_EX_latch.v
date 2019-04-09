`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:52:14 04/19/2017 
// Design Name: 
// Module Name:    latch 
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
module ID_EX_latch(
	input clk,
	input wire [1:0] ctlwb_out,
	input wire [2:0] ctlm_out,
	input wire [3:0] ctlex_out,
	input wire [31:0] npc,
	input wire [31:0] readdat1, readdat2,
	input wire [31:0] signext_out,
	input wire [4:0] instr_2016,
	input wire [4:0] instr_1511,
	output reg [1:0] wb_ctlout,
	output reg [2:0] m_ctlout,
	output reg [3:0] ex_ctlout,
	output reg [31:0] npcout,
	output reg [31:0] rdata1out, rdata2out,
	output reg [31:0] s_extendout,
	output reg [4:0] instrout_2016,
	output reg [4:0] instrout_1511
    );
always @ (posedge clk) begin
	wb_ctlout <= ctlwb_out;
	m_ctlout <= ctlm_out;
	ex_ctlout <= ctlex_out;
	npcout <= npc;
	rdata1out <= readdat1;
	rdata2out <= readdat2;
	s_extendout <= signext_out;
	instrout_2016 <= instr_2016;
	instrout_1511 <= instr_1511;
end
endmodule
