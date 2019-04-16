`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Course: CSE 401 
// Name: Bryant Aparicio & Riley Sherwood
// Create Date: 10/23/2018 11:22:52 AM
// Module Name: s_extend
// Project Name: Labratory 2

// Description: 

//////////////////////////////////////////////////////////////////////////////////


module s_extend(
        output reg [31:0] extend,
        
        input wire [15:0] nextend
    );
    
    always@* begin
        assign extend = {{16{nextend[15]}}, {nextend[15:0]}};
    end
endmodule
