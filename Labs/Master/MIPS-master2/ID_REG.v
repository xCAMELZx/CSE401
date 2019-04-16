`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:44:35 04/19/2017 
// Design Name: 
// Module Name:    ID_REG 
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
module ID_REG( input clk, 
input regwrite, 
input [4:0] RS, RT, RD,
input [31:0] writedata,
output reg [31:0] A, B
    );
	 
reg [31:0] regFile [31:0];
integer i;
initial begin
for( i = 0; i<32; i= i+1)
	regFile[i] = i;
	//regFile[0] = 32'hFFFFFFFF; test if A and B work
end
always @ *
begin
A = regFile[RS];
B = regFile[RT];
end
always @ ( posedge clk )
	begin
		regFile[RD] <= writedata;
	end
endmodule
