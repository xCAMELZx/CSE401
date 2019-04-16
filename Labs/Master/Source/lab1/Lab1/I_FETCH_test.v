`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:31:53 04/05/2011
// Design Name:   I_FETCH
// Module Name:   C:/Users/Red/Desktop/401/Lab1/I_FETCH_test.v
// Project Name:  Lab1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: I_FETCH
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module I_FETCH_test;

	// Inputs
	reg EX_MEM_PCSrc;
	reg [31:0] EX_MEM_NPC;

	// Outputs
	wire [31:0] IF_ID_instr;
	wire [31:0] IF_ID_npc;

	// Instantiate the Unit Under Test (UUT)
	I_FETCH uut (
		.IF_ID_instr(IF_ID_instr), 
		.IF_ID_npc(IF_ID_npc), 
		.EX_MEM_PCSrc(EX_MEM_PCSrc), 
		.EX_MEM_NPC(EX_MEM_NPC)
	);

	initial begin
		// Initialize Inputs
		EX_MEM_PCSrc = 0;
		EX_MEM_NPC = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

