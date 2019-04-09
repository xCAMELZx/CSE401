`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:12:40 04/26/2017 
// Design Name: 
// Module Name:    EX_stage 
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
module EX_stage(
	input clk, 
	input  [1:0]  wb_ctlout,
	input  [2:0]  m_ctlout,
	input  [3:0]  ex_ctlout,
	input  [31:0]  npcout,
	input  [31:0]  rdata1out,
	input  [31:0]  rdata2out,
	input  [31:0]  s_extendout,
	input  [4:0]  instrout_2016,
	input  [4:0]  instrout_1511,
	
	output  [1:0]  EX_MEM_wb_ctlout,
	output  [2:0]  EX_MEM_m_ctlout,
	output  [31:0] EX_MEM_add_result, 
	output    	    EX_MEM_zero,
	output  [31:0] EX_MEM_alu_result, 
	output  [31:0] EX_MEM_rdata2out, 
	output  [4:0]  EX_MEM_five_bit_muxout
    );

wire [31:0] w1;
wire [31:0] w2;
wire [2:0] w3;
wire w4;
wire [31:0] w5;
wire [4:0] w6;
EX_adder ex_adder( .add_in1(npcout), .add_in2(s_extendout), .add_out(w1));
   	
mux_all mux_32( .a(rdata2out), .b(s_extendout), .sel(ex_ctlout [3]), .y(w2)); 

alu alu( .A(rdata1out), .B(w2), .control( w3), .zero(w4), .result(w5));

alu_control alu_control_ex(.funct(s_extendout[5:0]), .alu_op(ex_ctlout [2:1]), .select(w3));

mux_all #(5) mux_5(.a(instrout_2016), .b(instrout_1511), .sel(ex_ctlout[0]), .y(w6));

EX_MEM_register EX_MEM_register(.clk(clk), 
.ctlwb_out(wb_ctlout), .ctlm_out(m_ctlout), .adder_out(w1),
.aluzero(w4), .aluout(w5),	.readdat2(rdata2out), .muxout(w6),
//output
.wb_ctlout(EX_MEM_wb_ctlout), .m_ctlout(EX_MEM_m_ctlout),
.add_result(EX_MEM_add_result), .zero(EX_MEM_zero), 
.alu_result(EX_MEM_alu_result), .rdata2out( EX_MEM_rdata2out), 
.five_bit_muxout(EX_MEM_five_bit_muxout) )	 ;

endmodule
