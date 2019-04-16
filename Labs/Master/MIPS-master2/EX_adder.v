`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:50:12 04/26/2017 
// Design Name: 
// Module Name:    EX_adder 
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
module EX_adder(
	input  [31:0] add_in1,
	input  [31:0] add_in2,
	output reg [31:0] add_out
    );
always @ *
begin
 add_out <= add_in1 + add_in2;
end
endmodule
