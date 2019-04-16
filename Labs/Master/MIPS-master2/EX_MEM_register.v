`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:08:36 04/26/2017 
// Design Name: 
// Module Name:    EX_MEM_register 
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
module EX_MEM_register(
	input clk,
	input wire [1:0]  ctlwb_out,
	input wire [2:0]  ctlm_out,
	input wire [31:0] adder_out,
	input wire 		   aluzero,
	input wire [31:0] aluout,
	input wire [31:0] readdat2,
	input wire [4:0]  muxout,
	output reg [1:0]  wb_ctlout,
	output reg [2:0]  m_ctlout,
	output reg [31:0] add_result, 
	output reg   	   zero,
	output reg [31:0] alu_result, 
	output reg [31:0] rdata2out, 
	output reg [4:0]  five_bit_muxout
    );
always @ (posedge clk) begin
	wb_ctlout <= ctlwb_out;
	m_ctlout <= ctlm_out;
	add_result <= adder_out;
	zero <= aluzero;
	alu_result <= aluout;
	rdata2out <= readdat2;
	five_bit_muxout <= muxout;
end

endmodule
