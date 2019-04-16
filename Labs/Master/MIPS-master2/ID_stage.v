

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:14:47 04/19/2017 
// Design Name: 
// Module Name:    ID_stage 
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
module ID_stage(
input clk,
input [31:0] IR,
input RegWrite,
input [31:0] writedata,
input [31:0] IF_ID_latch,
output [1:0] WB_ctrl,
output [2:0] Mem_ctrl,
output [3:0] EX_ctrl,
output [31:0] EX_adder,
output [31:0] EX_ALU,
output [31:0] EXMux0_latch,
output [31:0] IR_out,
output [4:0]  EXMux0,
output [4:0]  EXMux1
    );
	 
wire [1:0] w1;
wire [2:0] w2;
wire [3:0] w3; 
wire [31:0] w4, w5, w6;

control control(.OpCode( IR [31:26]), .EX(w3), .M(w2), .WB(w1) );

ID_REG ID_REG (.clk(clk), .regwrite(RegWrite), 
.RS(IR [25:21] ), 
.RT(IR [20:16]),
.RD(IR [15:11]), 
.writedata(writedata), .A(w4), .B(w5));

signExtend signExtend (.IRIN(IR [15:0]), .IROUT(w6));

ID_EX_latch ID_EX_latch (.clk(clk), .ctlwb_out(w1), .ctlm_out(w2), .ctlex_out(w3), 
.npc(IF_ID_latch), .readdat1(w4), .readdat2(w5), .signext_out(w6), 
.instr_2016(IR [20:16]), .instr_1511( IR [15:11]), 
.wb_ctlout(WB_ctrl), .m_ctlout(Mem_ctrl), .ex_ctlout(EX_ctrl), 
.npcout(EX_adder), .rdata1out(EX_ALU), .rdata2out(EXMux0_latch), 
.s_extendout(IR_out), .instrout_2016(EXMux0), .instrout_1511(EXMux1));
endmodule
