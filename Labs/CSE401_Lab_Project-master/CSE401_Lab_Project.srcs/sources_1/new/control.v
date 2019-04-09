`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Course: CSE 401 
// Name: Bryant Aparicio & Riley Sherwood
// Create Date: 10/23/2018 11:22:52 AM
// Module Name: control.v
// Project Name: Labratory 2

// Description: 

//////////////////////////////////////////////////////////////////////////////////


module control(
    output reg [3:0] EX,
    output reg [2:0] M,
    output reg [1:0] WB,
    
    input wire [5:0] opcode    
    );
    
    parameter RTYPE = 6'b000000;
    parameter LW    = 6'b100011;
    parameter SW    = 6'b101011;
    parameter BEQ   = 6'b000100;
    parameter NOP   = 6'b100000;
    
    initial begin
        EX <= 0;
        M  <= 0;
        WB <= 0;
    end
    
    always@* begin
        case (opcode)
            RTYPE: begin
                EX <= 4'b1100;
                M  <= 3'b000;
                WB <= 2'b10;
            end
            
            LW: begin
                EX <= ;
                M  <= ;
                WB <= ;
            end
            
            SW: begin
                EX <= ;
                M  <= ;
                WB <= ;
            end
                
            BEQ: begin
                EX <= ;
                M  <= ;
                WB <= ;
            end
           
            NOP: begin
                EX <= 4{1'b0};
                M  <= 3{1'b0};
                WB <= 2{1'b0};
            end
            
            default: $display ("Incorrect Opcode.");
        endcase
    end
    
endmodule
