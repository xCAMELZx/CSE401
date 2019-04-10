`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/08/2019 08:01:55 PM
// Design Name: 
// Module Name: ifetch
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
