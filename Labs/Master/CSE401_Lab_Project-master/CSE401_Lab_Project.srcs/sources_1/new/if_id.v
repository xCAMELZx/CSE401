`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Course: CSE 401 
// Name: Bryant Aparicio & Riley Sherwood
// Create Date: 10/16/2018 01:20:14 PM
// Module Name: if_id
// Project Name: Labratory 1

// Description: The IF_ID latch module will output the incremented value from the 
// PC Incrementor and the value from the Instruction Memory module and send them 
// to the decode portion of the MIPS processor which has not been implemented.

//////////////////////////////////////////////////////////////////////////////////


module if_id(
    output reg [31:0] instruction_out, npc_out,
    input wire [31:0] instruction_in, npc_in
    );
    
initial
begin
    instruction_out <= 0;
    npc_out <= 0;
end

always @ *
begin
    #1 instruction_out <= instruction_in;
        npc_out <= npc_in;
end

endmodule
