`timescale 1ns / 1ps


module top_mux(
      output wire [31:0] y,
      input  wire [31:0] a, b,
      input  wire alusrc
    );
    
    assign y = alusrc ? a : b;
    
endmodule   // top_mux
