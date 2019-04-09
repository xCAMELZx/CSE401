// Class: CSCI 401 Computer Architecture
// Term: SPR15
// Name(s): Jaron Patena
//
//                              -*- Mode: Verilog -*-
// Filename        : pipeline.v
// Description     : The pipeline module which simulates the
//                   function of the IF stage of the pipeline
// Authors         : George M. Georgiou and Scott McWilliams
// Created On      : 2/06/2003
// Modified On     : 4/5/2011
// Modified By     : Jason Fredrick and David Sturgeon

module pipeline();

  wire [31:0] IF_ID_instr, IF_ID_npc;
  wire EX_MEM_PCSrc; // wire EX_MEM_PCSrc;
  wire [31:0] EX_MEM_NPC; // wire [31:0] EX_MEM_NPC;

   I_FETCH STAGE1(
						  .IF_ID_instr(IF_ID_instr),
                    .IF_ID_npc(IF_ID_npc),
                    .EX_MEM_PCSrc(EX_MEM_PCSrc),
                    .EX_MEM_NPC(EX_MEM_NPC) );

// IDECODE
	wire	[4:0]		MEM_WB_rd;
	wire				MEM_WB_regwrite;
	wire	[31:0]	WB_mux_writedata;	
	wire	[1:0]		wb_ctlout;
	wire	[2:0]		m_ctlout;
	wire				regdst, alusrc;
	wire	[1:0]		aluop; 
	wire	[31:0]	npcout, rdata1out, rdata2out, s_extendout;
	wire	[4:0]		instrout_2016, instrout_1511;

	IDECODE STAGE2(
							.IF_ID_instrout(IF_ID_instr),
							.IF_ID_npcout(IF_ID_npc),
							.MEM_WB_rd(MEM_WB_rd),
							.MEM_WB_regwrite(MEM_WB_regwrite),
							.WB_mux_writedata(WB_mux_writedata),
							.wb_ctlout(wb_ctlout),
							.m_ctlout(m_ctlout),
							.regdst(regdst),
							.alusrc(alusrc),
							.aluop(aluop),
							.npcout(npcout),
							.rdata1out(rdata1out),
							.rdata2out(rdata2out),
							.s_extendout(s_extendout),
							.instrout_2016(instrout_2016),
							.instrout_1511(instrout_1511));
							
// EXECUTE
	wire	[1:0]		wb_ctlout_pipe;
	wire				branch, memread, memwrite;
	wire				zero;
	wire	[31:0]	alu_result, rdata2out_pipe;
	wire	[4:0]		five_bit_muxout;
	
	EXECUTE STAGE3(
							// inputs
							.wb_ctl(wb_ctlout),
							.m_ctl(m_ctlout),
							.regdst(regdst),
							.alusrc(alusrc),
							.aluop(aluop),
							.npcout(npcout),
							.rdata1(rdata1out),
							.rdata2(rdata2out),
							.s_extendout(s_extendout),
							.instrout_2016(instrout_2016),
							.instrout_1511(instrout_1511),
							// outputs
							.wb_ctlout(wb_ctlout_pipe),
							.branch(branch), 
							.memread(memread), 
							.memwrite(memwrite),
							.zero(zero),
							.alu_result(alu_result),
							.rdata2out(rdata2out_pipe),
							.add_result(EX_MEM_NPC),
							.five_bit_muxout(five_bit_muxout));

// MEMORY
	wire				MEM_WB_memtoreg;
	wire	[31:0]	read_data, mem_alu_result;

	MEMORY STAGE4(
							// inputs
							.wb_ctlout(wb_ctlout_pipe),
							.branch(branch),
							.memread(memread),
							.memwrite(memwrite),
							.zero(zero),
							.alu_result(alu_result),
							.rdata2out(rdata2out_pipe),
							.five_bit_muxout(five_bit_muxout),
							// outputs
							.MEM_PCSrc(EX_MEM_PCSrc),
							.MEM_WB_regwrite(MEM_WB_regwrite),
							.MEM_WB_memtoreg(MEM_WB_memtoreg),
							.read_data(read_data),
							.mem_alu_result(mem_alu_result),
							.mem_write_reg(MEM_WB_rd));
	
// WRITEBACK
   WRITEBACK STAGE5(
							// inputs
							.MEM_WB_memtoreg(MEM_WB_memtoreg),
							.read_data(read_data),
							.mem_alu_result(mem_alu_result),
							// output
							.WB_mux_writedata(WB_mux_writedata));		
endmodule // pipeline





