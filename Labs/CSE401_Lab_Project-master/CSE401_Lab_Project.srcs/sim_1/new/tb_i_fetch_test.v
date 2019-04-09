`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Course: CSE 401 
// Name: Bryant Aparicio
// Create Date: 10/16/2018 01:20:14 PM
// Module Name: tb_i_fetch_test
// Project Name: Labratory 1

// Description: This is the test program the runs for 20ns to check if the IF
// stage of the MIPS processor is running correctly.

//////////////////////////////////////////////////////////////////////////////////


module tb_i_fetch_test;
    //Inputs
    reg EX_MEM_PCSrc;
    reg [31:0] EX_MEM_NPC;
    
    //Outputs
    wire [31:0] IF_ID_INSTR;
    wire [31:0] IF_ID_NPC;
    
    //Instantiate the Unit Under Test (UTT)
    ifetch uut (
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
        EX_MEM_NPC = 1;
        EX_MEM_PCSrc = 5; 
        #1
        EX_MEM_PCSrc = 0; #10;

        /*EX_MEM_NPC = 0;
        EX_MEM_PCSrc = 0; #1;
        EX_MEM_NPC = 20;
        EX_MEM_PCSrc = 1; #20;*/
        $stop;
end

endmodule
