`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:32:02 04/12/2017 
// Design Name: 
// Module Name:    IF_stage 
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
module IF_stage(
input clk,
input PCSrc,
input [31:0] EX_MEM_latch,
output [31:0] ID_EX_latch,
output [31:0] IR
    );

wire [31:0] w1, w2, w3, w4;

mux_2_to_1 MUX (.A(EX_MEM_latch), .B(w1), .sel(PCSrc), .y(w2));

PC PC (.clk(clk), .pc(w2), .PC(w3));

add add(.pcin(w3), .pcout(w1));

InstructionMemory InstructionMem (.clk(clk), .addr(w3), .data(w4));

IF_ID_latch IF_ID_latch (.clk(clk), .pcin(w1), .instrin(w4), .pcout(ID_EX_latch), .instrout(IR));

endmodule
