`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/08/2019 08:04:58 PM
// Design Name: 
// Module Name: mux
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


module mux(
 output wire [31:0] npc,      //Output of multiplexor module
    input wire [31:0] s0, s1,   //Input from incremented module and ex_npc
    input wire select           //Selects an input
    );
    /*
    If select is high then npc = s1
    If select is low then npc = s0
*/
assign npc = select ? s1:s0;

endmodule
