`timescale 1ns / 1ps

module MEMORY(
	input		wire	[1:0]		wb_ctlout,
	input		wire				branch, memread, memwrite,
	input		wire				zero,
	input		wire	[31:0]	alu_result, rdata2out,
	input		wire	[4:0]		five_bit_muxout,
	output	wire				MEM_PCSrc,
	output	wire				MEM_WB_regwrite, MEM_WB_memtoreg,
	output	wire	[31:0]	read_data, mem_alu_result,
	output	wire	[4:0]		mem_write_reg
    );

	// signals
	wire	[31:0]	read_data_in;

	// instantiations
	
  // Finish wiring this puppy up 
	AND AND_4	(.membranch( ),	
					.zero( ),
					.PCSrc( ));
					
	data_memory data_memory4	(.addr( ),
										.write_data( ),
										.memwrite( ),
										.memread( ),
										.read_data( ));
										
	mem_wb mem_wb4	(.control_wb_in( ),
						.read_data_in( ),
						.alu_result_in( ),
						.write_reg_in(  ),
						.regwrite( ),
						.memtoreg(  ),
						.read_data( ),
						.mem_alu_result( ),
						.mem_write_reg( ));
	
endmodule  // MEMORY
