`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/08/2019 08:00:38 PM
// Design Name: 
// Module Name: if_id
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
