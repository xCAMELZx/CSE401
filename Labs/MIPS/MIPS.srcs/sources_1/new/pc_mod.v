`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/08/2019 08:05:37 PM
// Design Name: 
// Module Name: pc_mod
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
