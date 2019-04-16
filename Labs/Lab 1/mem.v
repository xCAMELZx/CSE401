/*
* Yousef Jarrar & Nicholas Chiodini
* CSE 401 - Computer Arch
* Dr. Gomez - Spring 2019
* Lab 1 - Instruction Fetch Stage
* 04/15/2019
*
* Desc:  The memory file of the p
* */



`timescale 1ns / 1ps

module mem(
    output reg [31:0] data,
    input wire [31:0] addr
    );

    // Regsiter Declarations
    reg [31:0] MEM[0:127];

    // Initialize Registers
    initial begin
       MEM[0] <= 'hA00000AA;
       MEM[1] <= 'h10000011;
       MEM[2] <= 'h20000022;
       MEM[3] <= 'h30000033;
       MEM[4] <= 'h40000044;
       MEM[5] <= 'h50000055;
       MEM[6] <= 'h60000066;
       MEM[7] <= 'h70000077;
       MEM[8] <= 'h80000088;
       MEM[9] <= 'h90000099;
     end

     always @ ( addr )
     begin
        data <= MEM[addr];
     end
endmodule
 
