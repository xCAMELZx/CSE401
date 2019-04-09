`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:34:19 04/28/2015 
// Design Name: 
// Module Name:    test_alu 
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
module test_alu();

// Register Declarations
	reg [31:0] A, B;
	reg [2:0] control;
	
// Wire Ports
	wire [31:0] result;
	wire			zero;
	
	initial begin
		A 			<= 'b1010; //10
		B			<= 'b0111; //7
		control 	<= 3'b011;
		$display ("A = %b\tB = %b", A, B);
		$monitor ("ALUOp = %b\tresult = %b", control, result);
		#1;
		control	<= 'b100;
		#1;
		control	<= 'b010;
		#1;
		control	<= 'b111; // set on less than
		#1;
		control	<= 'b011;
		#1;
		control	<= 'b110;
		#1;
		control	<= 'b001;
		#1;
		control	<= 'b000;
		#1;
		$finish;
	
	end
	
	alu alu1 (.result(result), .zero(zero), .a(A), .b(B), .control(control));
endmodule
