`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:51:36 04/19/2017 
// Design Name: 
// Module Name:    signExtend 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module signExtend(
input [15:0] IRIN,
output reg[31:0] IROUT
    );
always @ *
begin
IROUT <= { {16 {IRIN[15]} }, IRIN[15:0] } ;
end


endmodule
