`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Course: CSE 401 
// Name: Bryant Aparicio & Riley Sherwood
// Create Date: 10/16/2018 01:20:14 PM
// Module Name: mux
// Project Name: Labratory 1

// Description: The MUX will receive a value from the incrementor and the value 
// calculated from stage 3 the execution of the simulation. Then it will use select
// to determine the output value from the result of the instruction memory module.

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
