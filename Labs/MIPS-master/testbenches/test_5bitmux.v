`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    04:08:52 04/29/2015 
// Design Name: 
// Module Name:    test_5bitmux 
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
module test_5bitmux();

// Wire Ports
	wire [4:0] Y;
	
// Register Declarations
	reg [4:0] A, B;
	reg sel;
	
	bottom_mux mux5 (.y(Y), .a(A), .b(B), .sel(sel)); // instantiate the mux
	
	initial begin
		A = 5'b01010;
		B = 5'b10101;
		sel = 1'b1;
		#10;
		A = 5'b00000;
		#10;
		sel = 1'b1;
		#10;
		B = 5'b11111;
		#5;
		A = 5'b00101;
		#5;
		sel = 1'b0;
		B = 5'b11101;
		#5;
		sel = 1'bx;
	end
	
	always @(A or B or sel)
	begin
		#1;
		$display("At t = %0d sel = %b A = %b B = %b Y = %b", $time, sel, A, B, Y);
	end



endmodule // test
