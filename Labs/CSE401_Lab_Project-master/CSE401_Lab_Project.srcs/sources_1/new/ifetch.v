`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Course: CSE 401 
// Name: Bryant Aparicio & Riley Sherwood
// Create Date: 10/16/2018 01:20:14 PM
// Module Name: ifetch
// Project Name: Labratory 1

// Description: The Instruction Fetch module will be the hierarchy module 
// which connects all the sub-modules together.

//////////////////////////////////////////////////////////////////////////////////

//github test

module ifetch(
    output wire [31:0] IF_ID_INSTR, IF_ID_NPC,
    input wire EX_MEM_PCSrc,
    input wire [31:0] EX_MEM_NPC
    );
    
//signals
    wire [31:0] PC;
    wire [31:0] dataout;
    wire [31:0] npc, npc_mux;
    
//instantiations
    mux mux_1 (.npc(npc_mux), .s1(EX_MEM_NPC),
        .s0(npc), .select(EX_MEM_PCSrc));
       
    pc_mod pc_1 (.pc_out(PC), .npc(npc_mux));
    
    imem mem_1 (.data(dataout), .addr(PC));
    
    if_id IF_ID_1(.instruction_out(IF_ID_INSTR),
        .npc_out(IF_ID_NPC),
        .instruction_in(dataout),
        .npc_in(npc));
        
    incr incrementer1 (.pc_out(npc),
        .pc_in(PC));
    
endmodule
