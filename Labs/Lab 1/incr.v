/*
* Yousef Jarrar & Nicholas Chiodini
* CSE 401 - Computer Arch
* Dr. Gomez - Spring 2019
* Lab 1 - Instruction Fetch Stage
* 04/15/2019
*
* Desc:  the incrementer verilog file -- Increasing the number
* by 1.
* */

`timescale 1ns / 1ps

module incrementer ( input wire [31:0] pc_in, output wire
[31:0] pc_out );

    assign pc_out = pc_in + 1;  // Increment PC by 1

endmodule 
