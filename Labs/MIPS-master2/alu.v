`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:36:39 04/26/2017 
// Design Name: 
// Module Name:    alu 
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
module alu(
	input  [31:0] A,
	input  [31:0] B,
	input  [2:0]  control,
	output reg 	      zero,
	output reg [31:0] result
    );

localparam [2:0] 	ADD = 3'b010,
						SUB = 3'b110,
						AND = 3'b000,
						OR = 3'b001,
						SLT = 3'b111;
						//TEST = 3'b000;
always @ *
case(control)
	/*TEST:
	begin
		result = 32'hzzzzzzzz;
		zero = 0;
	end*/
	ADD: 
	begin
		result = A + B;
		zero = 0;
	end
	SUB: 
	begin 
		result = A - B;
		zero = 0;
	end
	AND: 
	begin
		result = A & B;
		zero = 0;
	end
	OR: 
	begin
		result = A | B;
		zero = 0;
	end
	SLT:
	begin
		zero = A < B? 1 : 0;
		result = 32'h00000000;
	/*
		if(A < B)
			begin
				result = 32'h00000000;
				zero = 1;
			end
		else
			begin
				result = 32'h00000000;
				zero = 0;
			end*/
	end
	default:
	begin
		result = 32'h10101010;
		zero = 0;
	end
endcase
endmodule
