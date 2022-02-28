// and datapath_tb.v file: <This is the filename> 
`timescale 1ns/10ps 
module Bus_tb;       
    reg  [31:0] BusMuxR0In, BusMuxR1In, BusMuxR2In, BusMuxR3In, BusMuxR4In, BusMuxR5In, BusMuxR6In, BusMuxR7In, 
	 BusMuxR8In, BusMuxR9In, BusMuxR10In, BusMuxR11In, BusMuxR12In, BusMuxR13In, BusMuxR14In, BusMuxR15In;
	 
    reg  [31:0] BusMuxHIIn, BusMuxLOIn, BusMuxZhighIn, BusMuxZlowIn, BusMuxPCIn, BusMuxMDRIn, BusMuxPortIn, C_sign_extended;
	 
    reg  R0out, R1out, R2out, R3out, R4out, R5out, R6out, R7out, 
	 R8out, R9out, R10out, R11out, R12out, R13out, R14out, R15out;
	 
	 reg  HIout, LOout, Zhighout, Zlowout, MuxPCout, MDRout, Portout, Cout, clk;
	  
	 parameter Default = 4'b0000, Reg_load1a = 4'b0001, Reg_load1b = 4'b0010;
	  
    reg   [3:0] Present_state = Default; 
 
Bus DUT(BusMuxR0In, BusMuxR1In, BusMuxR2In, BusMuxR3In, BusMuxR4In, BusMuxR5In, BusMuxR6In, BusMuxR7In, 
	 BusMuxR8In, BusMuxR9In, BusMuxR10In, BusMuxR11In, BusMuxR12In, BusMuxR13In, BusMuxR14In, BusMuxR15In,
	 BusMuxHIIn, BusMuxLOIn, BusMuxZhighIn, BusMuxZlowIn, BusMuxPCIn, BusMuxMDRIn, BusMuxPortIn, C_sign_extended,
	 R0out, R1out, R2out, R3out, R4out, R5out, R6out, R7out, 
	 R8out, R9out, R10out, R11out, R12out, R13out, R14out, R15out,
	 HIout, LOout, Zhighout, Zlowout, MuxPCout, MDRout, Portout, Cout, clk); 
 
// add test logic here 
initial  
    begin 
       clk = 0; 
       forever #10 clk = ~ clk; 
end 
 
always @(posedge clk)  // finite state machine; if clock rising-edge 
   begin 
      case (Present_state) 
   Default   :  Present_state = Reg_load1a; 
Reg_load1a  :  Present_state = Reg_load1b;
       endcase 
   end   
                                                          
always @(Present_state)  // do the required job in each state 
   begin 
      case (Present_state)               // assert the required signals in each clock cycle 
Default: begin 
    BusMuxR0In <= 32'h00000000;   BusMuxR1In <= 32'h00000000;	BusMuxR2In <= 32'h00000000;	BusMuxR3In <= 32'h00000000;
    BusMuxR4In <= 32'h00000000;   BusMuxR5In <= 32'h00000000;	BusMuxR6In <= 32'h00000000;	BusMuxR7In <= 32'h00000000;
    BusMuxR8In <= 32'h00000000;   BusMuxR9In <= 32'h00000000;	BusMuxR10In <= 32'h00000000;	BusMuxR11In <= 32'h00000000;
	 BusMuxR12In <= 32'h00000000;   BusMuxR13In <= 32'h00000000;	BusMuxR14In <= 32'h00000000;	BusMuxR15In <= 32'h00000000;
    BusMuxHIIn <= 32'h00000000; BusMuxLOIn <= 32'h00000000; BusMuxZhighIn <= 32'h00000000; BusMuxZlowIn <= 32'h00000000;
	 BusMuxPCIn <= 32'h00000000; BusMuxMDRIn <= 32'h00000000; BusMuxPortIn <= 32'h00000000; C_sign_extended <= 32'h00000000;
	 R0out <= 0; R1out <= 0; R2out <= 0; R3out <= 0; R4out <= 0; R5out <= 0; R6out <= 0; R7out <= 0; R8out <= 0; R9out <= 0;
	 R10out <= 0; R11out <= 0; R12out <= 0; R13out <= 0; R14out <= 0; R15out <= 0; R14out <= 0; R15out <= 0; HIout <= 0;
	 LOout <= 0; Zhighout <= 0; Zlowout <= 0; MuxPCout <= 0; MDRout <= 0; Portout <= 0; Cout <= 0;
end 
Reg_load1a: begin   
      R1out <= 1; 
end 
              Reg_load1b: begin  
                              R1out <= 0;
										R2out <= 0;
end
          endcase 
    end 
endmodule  