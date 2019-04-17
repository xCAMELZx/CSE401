`timescale 1ns / 1ps

module alu (
    input wire [31:0] a,
    input wire [31:0] b,
    input wire [2:0] control,
    output reg [31:0] result,
    output wire zero
  );
  
  parameter ALUadd = 3'b010,
            ALUsub = 3'b110,
            ALUand = 3'b000,
            ALUor  = 3'b001,
            ALUslt = 3'b111;
   
   // Handles negative inputs
   wire sign_mismatch;
   assign sign_mismatch = a[31] ^ b[31];
   
   initial
    result <= 0;
    
    always @ *
        case( control )
            ALUadd : result = a + b;
            ALUsub : result = a - b;
            ALUand : result = a & b;
            ALUor  : result = a | b;
            ALUslt : result = a < b ? 1 - sign_mismatch : 0 + sign_mismatch;
            default : result = 32'bX;
         endcase
         
         /* Check to see if result is equal to zero. If it is assign true (1),
            false (0) otherwise, meaning it is a non-zero number */
         assign zero = ( result == 0 ) ? 1 : 0;
  
endmodule