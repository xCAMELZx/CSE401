`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:57:06 04/26/2017 
// Design Name: 
// Module Name:    alu_control 
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
module alu_control(
	input wire [5:0] funct,
	input wire [1:0] alu_op,
	output reg [2:0] select
    );
localparam [1:0] 	LWSW = 2'b00, // alu_op
						BEQ = 2'b01,
						RType = 2'b10;
localparam [5:0]	ADD = 6'b100000, // funct
						SUB = 6'b100010,
						AND = 6'b100100,
						OR = 6'b100101,
						SLT = 6'b101010;
						
always @ *

case(alu_op)
	LWSW: 
	begin
		select = 3'b010;
	end
	BEQ: 
	begin 
		select = 3'b110;
	end
	RType: 
	begin
		case(funct)
			ADD:
			begin
				select = 3'b010;
			end
			SUB:
			begin
				select = 3'b110;
			end
			AND:
			begin
				select = 3'b000;
			end
			OR:
			begin
				select = 3'b001;
			end
			SLT:
			begin
				select = 3'b111;
			end
			default: $display("functl Error");
		endcase
	end
	default: $display("alu_op Error");
endcase
endmodule
