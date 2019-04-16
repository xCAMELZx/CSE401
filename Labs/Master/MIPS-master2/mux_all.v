`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:59:41 04/26/2017 
// Design Name: 
// Module Name:    mux_all 
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
module mux_all #(SIZE = 32)(
	input [SIZE-1:0]a, b, 
	input sel, 
	output [SIZE-1:0] y
    );
	 
assign y = sel ? a : b;



endmodule
