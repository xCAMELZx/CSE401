`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/08/2019 08:04:10 PM
// Design Name: 
// Module Name: incr
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


module incr(
 output wire [31:0] pc_out,  //Output of incremented module
    input wire [31:0] pc_in     //Input from pc_module
    );
      assign pc_out = pc_in + 1;  //Increment input by value of 1
endmodule
