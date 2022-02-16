module mux32_1(
	input clk,
	input [31:0] BusMuxR0In, BusMuxR1In, BusMuxR2In, BusMuxR3In, BusMuxR4In, BusMuxR5In,
					BusMuxR6In, BusMuxR7In, BusMuxR8In, BusMuxR9In, BusMuxR10In,
					BusMuxR11In, BusMuxR12In, BusMuxR13In, BusMuxR14In, BusMuxR15In,
					BusMuxHIIn, BusMuxLOIn, BusMuxZhighIn, BusMuxZlowIn, BusMuxPCIn,
					BusMuxMDRIn, BusMuxPortIn, C_sign_extended,
	input [4:0] S,
	output reg[31:0] BusMuxOut);

always @(posedge clk)
begin
	 case(S)
		5'b00000 : BusMuxOut = BusMuxR0In;
		5'b00001 : BusMuxOut = BusMuxR1In;
		5'b00010 : BusMuxOut = BusMuxR2In;
		5'b00011 : BusMuxOut = BusMuxR3In;
		5'b00100 : BusMuxOut = BusMuxR4In;
		5'b00101 : BusMuxOut = BusMuxR5In;
		5'b00110 : BusMuxOut = BusMuxR6In;
		5'b00111 : BusMuxOut = BusMuxR7In;
		5'b01000 : BusMuxOut = BusMuxR8In;
		5'b01001 : BusMuxOut = BusMuxR9In;
		5'b01010 : BusMuxOut = BusMuxR10In;
		5'b01011 : BusMuxOut = BusMuxR11In;
		5'b01100 : BusMuxOut = BusMuxR12In;
		5'b01101 : BusMuxOut = BusMuxR13In;
		5'b01110 : BusMuxOut = BusMuxR14In;
		5'b01111 : BusMuxOut = BusMuxR15In;
		5'b10000 : BusMuxOut = BusMuxHIIn;
		5'b10001 : BusMuxOut = BusMuxLOIn;
		5'b10010 : BusMuxOut = BusMuxZhighIn;
		5'b10011 : BusMuxOut = BusMuxZlowIn;
		5'b10100 : BusMuxOut = BusMuxPCIn;
		5'b10101 : BusMuxOut = BusMuxMDRIn;
		5'b10110 : BusMuxOut = BusMuxPortIn;
		5'b10111 : BusMuxOut = C_sign_extended;
		5'b11000 : BusMuxOut = 0;
		5'b11001 : BusMuxOut = 0;
		5'b11010 : BusMuxOut = 0;
		5'b11011 : BusMuxOut = 0;
		5'b11100 : BusMuxOut = 0;
		5'b11101 : BusMuxOut = 0;
		5'b11110 : BusMuxOut = 0;
		5'b11111 : BusMuxOut = 0;
		default	: BusMuxOut = 0;
	endcase
end
endmodule