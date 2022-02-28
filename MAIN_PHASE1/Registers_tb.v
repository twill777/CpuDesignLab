
`timescale 1ns/10ps 
module Registers_tb; 
	reg [31:0] 	bus_mux_out;
	reg 			Clear, Clock, R0in, R1in, R2in, R3in, R4in, R5in, R6in, R7in, R8in, R9in, R10in, R11in, R12in, R13in, R14in, R15in;
	wire [31:0] BusMuxR0In, BusMuxR1In, BusMuxR2In, BusMuxR3In, BusMuxR4In, BusMuxR5In, BusMuxR6In, BusMuxR7In, BusMuxR8In, BusMuxR9In,
					BusMuxR10In, BusMuxR11In, BusMuxR12In, BusMuxR13In, BusMuxR14In, BusMuxR15In; 
initial 
	begin 
		bus_mux_out <= 32'd1; 
		Clear <= 1'b0;
		Clock <= 1'b0; 
		R0in <= 1'b0; 
		R1in <= 1'b1; 
		R2in <= 1'b0; 
		R3in <= 1'b0; 
		R4in <= 1'b0; 
		R5in <= 1'b0; 
		R6in <= 1'b0; 
		R7in <= 1'b0; 
		R8in <= 1'b0; 
		R9in <= 1'b0; 
		R10in <= 1'b0; 
		R11in <= 1'b0; 
		R12in <= 1'b0; 
		R13in <= 1'b0; 
		R14in <= 1'b0; 
		R15in <= 1'b0; 
		
		#100	R1in <= 1'b0; 
				R2in <= 1'b1;
		#200	Clear <= 1'b0;	
	end
Registers all_reg(bus_mux_out, Clear, Clock, R0in, R1in, R2in, R3in, R4in, R5in, R6in, R7in, R8in, R9in, R10in, R11in, R12in, R13in, R14in, R15in,
					BusMuxR0In, BusMuxR1In, BusMuxR2In, BusMuxR3In, BusMuxR4In, BusMuxR5In, BusMuxR6In, BusMuxR7In, BusMuxR8In, BusMuxR9In, BusMuxR10In,
					BusMuxR11In, BusMuxR12In, BusMuxR13In, BusMuxR14In, BusMuxR15In);
endmodule