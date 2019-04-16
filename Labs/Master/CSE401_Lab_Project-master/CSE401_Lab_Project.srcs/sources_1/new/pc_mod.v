`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Course: CSE 401 
// Name: Bryant Aparicio & Riley Sherwood
// Create Date: 10/16/2018 01:20:14 PM
// Module Name: pc_mod
// Project Name: Labratory 1

// Description: The Program Counter (PC) will hold the current 32 bit number 
// being incremented and will then receive a new number as an input from the MUX. 
// Upon receiving a new value it will send it to the PC Incrementor and the 
// Instruction Memory module.

//////////////////////////////////////////////////////////////////////////////////


module pc_mod(
    output reg [31:0] pc_out,   //Output of pc_module 
    input wire [31:0] npc       //Input of pc_module
    );
    
initial begin
    pc_out <= 0;    //  Sets pc_out to zero to on first run 
end

always @ (npc)
begin
    #1 pc_out <= npc;   //Update value of PC to NPC
end

endmodule
