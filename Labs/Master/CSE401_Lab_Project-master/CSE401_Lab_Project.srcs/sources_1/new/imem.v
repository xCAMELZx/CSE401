`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Course: CSE 401 
// Name: Bryant Aparicio & Riley Sherwood
// Create Date: 10/16/2018 01:20:14 PM
// Module Name: imem
// Project Name: Labratory 1

// Description: The Instruction Memory module simply receives the current value 
// from the PC and outputs the location of where the value is pointing at.

//////////////////////////////////////////////////////////////////////////////////


module imem(
    output reg [31:0] data,
    input wire [31:0] addr
    );
    
    reg [31:0] MEM[0:127];

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

    always @(addr)
    begin
        data <= MEM[addr];
    end

endmodule
