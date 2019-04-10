`timescale 1ns / 1ps

/*  control.v  */


module control (
    input	wire	[5:0] opcode,
	  output	reg	[3:0] EX,
    output	reg	[2:0] M,
    output	reg	[1:0] WB
    );
	 
	parameter RTYPE	= 6'b000000; 
	parameter LW		= 6'b100011;
	parameter SW		= 6'b101011;
	parameter BEQ		= 6'b000100;
	parameter NOP		= 6'b100000;	
	

	initial 
	 begin
		 /*  
		     We assign decimal representation of 0 to our outpur REG's here. 
		     Note the difference 
		 */
		EX <= 0;
		M <= 0;
		WB <= 0;
	end

	/* Assign the don't cares (X) to high impedence (Z)...
	   For design correctness and more proper MIPS emulation 
	*/
	always@* begin
		case (opcode)
			RTYPE: begin
				EX <= 4'b1100; /* Note use of non-blocking  operator ( <= ) versus blocking  operator( = ) */
				M  <= 3'b000; 
				WB <= 2'b10;
			end
			/* Assign remaining values according to chart in Lab Manuel.
		     Either paramterize it, or hardcode at as is done for RTYPE.
		  */
			LW: begin
				EX <= ; 
				M <= ; 
				WB <= ;
			end
			SW: 
			  begin
				
			  end
			BEQ: 
			begin
				
			end
			
			NOP: //Not in Lab Manual, but needed to make life easier for final implementation
			begin  
				EX <=4{1'b0};  //replicating operator 
				M <=3{1'b0}; 
				WB <=2{1'b0};
			end
			default:	$display ("Opcode not recognized.");
		endcase
	end

endmodule