`timescale 1ns / 1ps
	
module I_DECODE(
	input	wire  	[31:0]	IF_ID_instrout,
 	input	wire  	[31:0]	IF_ID_npcout,
	input	wire	[4:0]	MEM_WB_rd,
	input	wire		    MEM_WB_regwrite,
	input	wire	[31:0]	WB_mux5_writedata,
	output	wire	[1:0]	wb_ctlout,
	output	wire	[2:0]	m_ctlout,
	output	wire		    regdst, alusrc,
	output	wire	[1:0]	aluop, 
	output	wire	[31:0]	npcout, rdata1out, rdata2out, s_extendout,
	output	wire	[4:0]	instrout_2016, instrout_1511
  );

	// signals
	wire [3:0]	ctlex_out;
	wire [2:0]	ctlm_out;
	wire [1:0]	ctlwb_out;
	wire [31:0]	readdata1, readdata2, signext_out;
	
	// instantiations
	control control2(
		.opcode( IF_ID_instrout[31:26] ), // input
		.EX( ctlex_out ),			// outputs
		.M( ctlm_out ),
		.WB( ctlwb_out )
	  );
	
	register register2(
		.rs( IF_ID_instrout[25:21] ),	// inputs
		.rt( IF_ID_instrout[20:16] ),
		.rd( MEM_WB_rd ),
		.write_data( WB_mux5_writedata ),
		.reg_write( MEM_WB_regwrite ),
		.A( readdata1 ),			//outputs
		.B( readdata2 )
	 );
	
	s_extend s_extend2(
		.next_end( IF_ID_instrout[15:0] ),
		.extend( signext_out )
	  );
	
	id_ex id_ex2(
		.ctlwb_out( ctlwb_out ),	// 9 inputs
		.ctlm_out( ctlm_out ),
		.ctlex_out( ctlex_out ),
		.npc( IF_ID_npcout ),
		.readdata1( readdata1 ),
		.readdata2( readdata2 ),
		.signext_out( signext_out ),
		.instr_2016( IF_ID_instrout[20:16] ),
		.instr_1511( IF_ID_instrout[15:11] ),
		.wb_ctlout( wb_ctlout ),	// outputs
		.m_ctlout( m_ctlout ),
		.regdst( regdst ),
		.alusrc( alusrc ),
		.aluop( aluop ),
		.npcout( npcout ),
		.rdata1out( rdata1out ),
		.rdata2out( rdata2out ),
		.s_extendout( s_extendout ),
		.instrout_2016( instrout_2016 ),
		.instrout_1511( instrout_1511 )
	  );
								
endmodule // IDECODE
