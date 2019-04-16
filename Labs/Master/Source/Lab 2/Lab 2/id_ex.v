`timescale 1ns / 1ps
/*   id_ex.v  */
module id_ex(
	input		wire 	[1:0]		ctlwb_out,
	input		wire 	[2:0]		ctlm_out,
	input		wire 	[3:0]		ctlex_out,
	input		wire 	[31:0]	npc, readdat1, readdat2, signext_out,
	input		wire	[4:0]		instr_2016, instr_1511,
	output	reg	[1:0]		wb_ctlout,
	output	reg	[2:0]		m_ctlout,
	output	reg				regdst, alusrc,
	output	reg	[1:0]		aluop, 
	output	reg 	[31:0]	npcout, rdata1out, rdata2out, s_extendout,
	output	reg	[4:0]		instrout_2016, instrout_1511
 );
		
initial 
begin
      //Assign 0's to everything
  		wb_ctlout <= 
	  	m_ctlout <= 
	  	regdst <=  
	  	aluop <=  
	  	alusrc <= 
	  	npcout <= 
	  	rdata1out <=  
	  	rdata2out <=  
	  	s_extendout <= 
		  instrout_2016 <=  
		  instrout_1511 <= 
end

always @ * 
begin
     //Wire the inputs to the outputs corresponding outputs
 		 #1
	 	 wb_ctlout <=
		 m_ctlout <=
		 regdst <= 
		 aluop <= 
		 alusrc <= 
		 npcout <= 
		 rdata1out <= 
		 rdata2out <= 
		 s_extendout <= 
		 instrout_2016 <= 
		 instrout_1511 <= 
end
endmodule //id_ex
