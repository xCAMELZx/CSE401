`timescale 1ns / 1ps
/* ex_mem.v */
module ex_mem(
	input		wire	[1:0]		ctlwb_out,
	input		wire	[2:0]		ctlm_out,
	input		wire	[31:0]	adder_out,
	input		wire				aluzero,
	input		wire	[31:0]	aluout, readdat2,
	input		wire	[4:0]		muxout,
	output	reg	[1:0]		wb_ctlout,
	output	reg				branch, memread, memwrite,
	output	reg	[31:0]	add_result,
	output	reg				zero,
	output	reg	[31:0]	alu_result, rdata2out,
	output	reg	[4:0]		five_bit_muxout
    );

	initial begin
		wb_ctlout <= 0; 
		branch <= 0; memread <= 0; memwrite <= 0;
		add_result <= 0;
		zero <= 0;
		alu_result <= 0; rdata2out <= 0;
		five_bit_muxout <= 0;
	end

	always@* begin
		#1 //Update Delay
		
		//Use Fig 3.7 to assign the inputs to the outputs 
		wb_ctlout <= ;
		branch <= ;    /* branch, memread, and memwrite are not listed in Fig 3.7 
		memread <=;       so what do we do wit them?
		memwrite <= ;     Well we code them, obviously.
                   	                          Here's your hint for these 3: 
                                                               Look at their size (listed in the port listings on top)
                                                               Figure out which input wire needs to get assigned to them.
                                                               Then trace the wires in the "MIPS Data Path Diagram" 
                                              */
            
          	add_result <= ;   
		zero <= ;
		alu_result <= ;
		rdata2out <= ;
		five_bit_muxout <= ;
	end

endmodule // ex_mem
