`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/08/2019 08:53:16 PM
// Design Name: 
// Module Name: test_mux
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module test_mux();
// Wire Ports
	wire [31:0] Y;
	
// Register Declarations
	reg [31:0] A, B;
	reg sel;
	
	mux mux1 (
		.a(A),
		.b(B),
		.sel(sel),
		.y(Y)
	); //instantiate the mux
	
	initial begin
		A = 32'hAAAAAAAA;
		B = 32'h55555555;
		sel = 1'b1;
		#10;
		A = 32'h00000000;
		#10;
		sel = 1'b1;
		#10;
		B = 32'hFFFFFFFF;
		#5;
		A = 32'hA5A5A5A5;
		#5;
		sel = 1'b0;
		B = 32'hDDDDDDDD;
		#5;
		sel = 1'bx;
	end
	
	always @(A or B or sel)
		#1 $display("At t = %0d sel = %b A = %h B = %h Y = %h", $time, sel, A, B, Y);
		
endmodule
