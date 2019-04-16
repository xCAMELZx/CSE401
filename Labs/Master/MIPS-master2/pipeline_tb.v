`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:16:15 05/03/2017
// Design Name:   pipeline
// Module Name:   C:/Users/004173090/pipeline/pipeline_tb.v
// Project Name:  pipeline
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: pipeline
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module pipeline_tb;

	// Inputs
	reg clk;
	reg PCSrc;
	reg [31:0] EX_MEM_latch;
	reg regwrite;
	reg [31:0] writedata;

	// Outputs
	wire [1:0] EX_MEM_wb_ctlout;
	wire [2:0] EX_MEM_m_ctlout;
	wire [31:0] EX_MEM_add_result;
	wire EX_MEM_zero;
	wire [31:0] EX_MEM_alu_result;
	wire [31:0] EX_MEM_rdata2out; 
	wire [4:0] EX_MEM_five_bit_muxout;

	// Instantiate the Unit Under Test (UUT)
	pipeline uut (
		.clk(clk), 
		.PCSrc(PCSrc),   
		.EX_MEM_latch(EX_MEM_latch), 
		.regwrite(regwrite), 
		.writedata(writedata), 
		.EX_MEM_wb_ctlout(EX_MEM_wb_ctlout), 
		.EX_MEM_m_ctlout(EX_MEM_m_ctlout), 
		.EX_MEM_add_result(EX_MEM_add_result), 
		.EX_MEM_zero(EX_MEM_zero), 
		.EX_MEM_alu_result(EX_MEM_alu_result), 
		.EX_MEM_rdata2out(EX_MEM_rdata2out), 
		.EX_MEM_five_bit_muxout(EX_MEM_five_bit_muxout)
	);
always #10 clk = ~clk;
	initial begin
		// Initialize Inputs
		clk = 0;
		PCSrc = 0;
		EX_MEM_latch = 0;
		regwrite = 0;
		writedata = 0;
		
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

