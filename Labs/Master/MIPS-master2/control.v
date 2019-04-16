`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:13:03 04/19/2017 
// Design Name: 
// Module Name:    control 
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
module control( input [5:0] OpCode,
output reg[3:0] EX,
output reg[2:0] M,
output reg[1:0] WB
    );
localparam [5:0] 	Rtype = 6'b000000, //define constant
						SW = 6'b101011,
						LW = 6'b100011,
						beq = 6'b000100; 
always @ *

case(OpCode)
	Rtype: 
	begin
		EX = 4'b1100; M = 3'b000; WB = 2'b10;
	end
	SW: 
	begin 
		EX = 4'b0001; M = 3'b010; WB = 2'b11;
	end
	LW: 
	begin
		EX = 4'bx001; M = 3'b001; WB = 2'b0x;
	end
	beq: 
	begin
		EX = 4'bx010; M = 3'b100; WB = 2'b0x;
	end
	default: $display("Error");
endcase

endmodule
