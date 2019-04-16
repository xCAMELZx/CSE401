/*
* Yousef Jarrar & Nicholas Chiodini
* CSE 401 - Computer Arch
* Dr. Gomez - Spring 2019
* Lab 1 - Instruction Fetch Stage
* 04/15/2019
*/

`timescale 1ns / 1ps

module pc_mod( output reg [31:0] pc_out, input wire [31:0] npc
);

    initial
    begin
        pc_out <= 0;
    end

    always @ ( npc )
    begin
        #1 pc_out <= npc;
    end

endmodule
