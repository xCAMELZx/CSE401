`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:25:29 04/19/2017 
// Design Name: 
// Module Name:    pipeline 
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
module pipeline( 
input clk,
input PCSrc,
input [31:0] EX_MEM_latch,
input regwrite,
input [31:0] writedata,
output wire [1:0]  EX_MEM_wb_ctlout,
output wire [2:0]  EX_MEM_m_ctlout,
output wire [31:0] EX_MEM_add_result, 
output wire   	    EX_MEM_zero,
output wire [31:0] EX_MEM_alu_result, 
output wire [31:0] EX_MEM_rdata2out, 
output wire [4:0]  EX_MEM_five_bit_muxout
    );
//if - id
wire [31:0] w1,w2; 
// id - ex
wire [1:0] w3;
wire [2:0] w4;
wire [3:0] w5;
wire [31:0] w6,w7,w8,w9;
wire [4:0] w10,w11;

IF_stage if_stage(.clk(clk),
.PCSrc(PCSrc),
.EX_MEM_latch(EX_MEM_latch),
.ID_EX_latch(w1),
.IR(w2)
);

ID_stage id_stage(.clk(clk), 
.IR(w2),
.RegWrite(regwrite),
.writedata(writedata),
.IF_ID_latch(w1),
.WB_ctrl(w3),
.Mem_ctrl(w4),
.EX_ctrl(w5),
.EX_adder(w6),
.EX_ALU(w7),
.EXMux0_latch(w8),
.IR_out(w9),
.EXMux0(w10),
.EXMux1(w11)
    );
	 
EX_stage ex_stage(.clk(clk),
.wb_ctlout(w3), 	// input
.m_ctlout(w4),
.ex_ctlout(w5),
.npcout(w6),
.rdata1out(w7),
.rdata2out(w8),
.s_extendout(w9),
.instrout_2016(w10),
.instrout_1511(w11),
.EX_MEM_wb_ctlout(EX_MEM_wb_ctlout),	// ouput
.EX_MEM_m_ctlout(EX_MEM_m_ctlout),
.EX_MEM_add_result(EX_MEM_add_result),
.EX_MEM_zero(EX_MEM_zero),
.EX_MEM_alu_result(EX_MEM_alu_result),
.EX_MEM_rdata2out(EX_MEM_rdata2out),
.EX_MEM_five_bit_muxout(EX_MEM_five_bit_muxout)
);




endmodule
