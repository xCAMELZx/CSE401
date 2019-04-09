`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Course: CSE 401 
// Name: Bryant Aparicio & Riley Sherwood
// Create Date: 10/16/2018 01:20:14 PM
// Module Name: incr
// Project Name: Labratory 1

// Description: The PC Incrementor will receive a value from the program counter 
// and simply increment it by a value of 1 and send it to the MUX and the IF_ID latch.

//////////////////////////////////////////////////////////////////////////////////


module incr(
    output wire [31:0] pc_out,  //Output of incremented module
    input wire [31:0] pc_in     //Input from pc_module
    );
    
    assign pc_out = pc_in + 1;  //Increment input by value of 1

endmodule
