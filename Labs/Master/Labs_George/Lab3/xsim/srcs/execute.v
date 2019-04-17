`timescale 1ns / 1ps

module EXECUTE(
    input wire [1:0] wb_ctl,
    input wire [2:0] m_ctl,
    input wire regdst, alusrc,
    input wire [1:0] aluop,
    input wire [31:0] npcout, rdata1, rdata2, s_extendout,
    input wire [4:0] instrout_2016, instrout_1511,
    output wire [1:0] wb_ctlout,
    output wire branch, memread, memwrite,
    output wire [31:0] EX_MEM_NPC,
    output wire zero,
    output wire [31:0] alu_result, rdata2out,
    output wire [4:0] five_bit_muxout
  );
  
  // signals
  wire [31:0] adder_out, b, aluout;
  wire [4:0] muxout;
  wire [2:0] control;
  wire aluzero;
  
  // Instantiations
  adder adder1(
    .add_in1( npcout ),
    .add_in2( s_extendout ),
    .add_out( adder_out ) 
  );
  
  bottom_mux bottom_mux1(
    .y( muxout ),
    .a( instrout_1511 ),
    .b( instrout_2016 ),
    .sel( regdst )
   );
   
   top_mux top_mux1(
     .y( b ),
     .a( s_extendout ),
     .b( rdata2 ),
     .alusrc( alusrc )
    );
   
   alu alu1(
    .a( rdata1 ),
    .b( b ),
    .control( control ),
    .result ( aluout ),
    .zero( aluzero )
   );
   
   alu_control alu_control1(
    .funct( s_extendout[5:0] ),
    .aluop( aluop ),
    .select( control )
   );
  
     ex_mem ex_mem1(
        .ctlwb_out( wb_ctl ),
        .ctlm_out( m_ctl ),
        .adder_out( adder_out ),
        .aluzero( aluzero ),
        .aluout( aluout ),
        .readdata2( rdata2 ),
        .muxout( muxout ),
        .wb_ctlout( wb_ctlout ),
        .branch( branch ),
        .memread( memread ),
        .memwrite( memwrite ),
        .add_result( EX_MEM_NPC ),
        .zero( zero ),
        .alu_result( alu_result ),
        .rdata2out( rdata2out ),
        .five_bit_muxout( five_bit_muxout )
       );
  
  
endmodule // IEXECUTE