`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:37:46 04/12/2017 
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
module IF_ID_latch(
input clk,
input wire [31:0] pcin, instrin,
output reg [31:0] pcout, instrout
    );

always @ (posedge clk) begin
	pcout <= pcin;
	instrout <= instrin;
end
endmodule
