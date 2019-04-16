/*
* Yousef Jarrar & Nicholas Chiodini
* CSE 401 - Computer Arch
* Dr. Gomez - Spring 2019
* Lab 1 - Instruction Fetch Stage
* 04/15/2019
*
* Desc:  This is the test-bench design for Lab 1
* */


`timescale 1ns / 1ps

module pipeline();

// Inputs
reg EX_MEM_PCSrc;
reg [31:0] EX_MEM_NPC;

// Outputs
wire [31:0] IF_ID_INSTR;
wire [31:0] IF_ID_NPC;

// Instantiate the Unit Under Test (UUT)
I_FETCH uut (
    .EX_MEM_PCSrc(EX_MEM_PCSrc),
    .EX_MEM_NPC(EX_MEM_NPC),
    .IF_ID_INSTR(IF_ID_INSTR),
    .IF_ID_NPC(IF_ID_NPC)
 );

 initial
 begin
    EX_MEM_NPC = 0;
    EX_MEM_PCSrc = 0;
 #9
    EX_MEM_PCSrc = 1;
    EX_MEM_NPC = 5;
 #1
    EX_MEM_PCSrc = 0;
 #10;
 $stop;
 end

endmodule
