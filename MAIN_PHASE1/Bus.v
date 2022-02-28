// Copyright (C) 1991-2013 Altera Corporation
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, Altera MegaCore Function License 
// Agreement, or other applicable license agreement, including, 
// without limitation, that your use is for the sole purpose of 
// programming logic devices manufactured by Altera and sold by 
// Altera or its authorized distributors.  Please refer to the 
// applicable agreement for further details.

// PROGRAM		"Quartus II 64-Bit"
// VERSION		"Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"
// CREATED		"Thu Feb 17 15:34:03 2022"

module Bus(BusMuxR0In, BusMuxR1In, BusMuxR2In, BusMuxR3In, BusMuxR4In, BusMuxR5In, BusMuxR6In, BusMuxR7In, 
	 BusMuxR8In, BusMuxR9In, BusMuxR10In, BusMuxR11In, BusMuxR12In, BusMuxR13In, BusMuxR14In, BusMuxR15In,
	 BusMuxHIIn, BusMuxLOIn, BusMuxZhighIn, BusMuxZlowIn, BusMuxPCIn, BusMuxMDRIn, BusMuxPortIn, C_sign_extended,
	 R0out, R1out, R2out, R3out, R4out, R5out, R6out, R7out, 
	 R8out, R9out, R10out, R11out, R12out, R13out, R14out, R15out,
	 HIout, LOout, Zhighout, Zlowout, PCout, MDRout, Portout, Cout, clk, BusMuxOut);


input wire	LOout;
input wire	R0out;
input wire	R1out;
input wire	R2out;
input wire	R3out;
input wire	R4out;
input wire	R5out;
input wire	R6out;
input wire	R7out;
input wire	R8out;
input wire	R9out;
input wire	R10out;
input wire	R11out;
input wire	R12out;
input wire	R13out;
input wire	R14out;
input wire	R15out;
input wire	HIout;
input wire	Zhighout;
input wire	Zlowout;
input wire	PCout;
input wire	MDRout;
input wire	Portout;
input wire	Cout;
input wire	clk;
input wire	[31:0] BusMuxHIIn;
input wire	[31:0] BusMuxLOIn;
input wire	[31:0] BusMuxMDRIn;
input wire	[31:0] BusMuxPCIn;
input wire	[31:0] BusMuxPortIn;
input wire	[31:0] BusMuxR0In;
input wire	[31:0] BusMuxR10In;
input wire	[31:0] BusMuxR11In;
input wire	[31:0] BusMuxR12In;
input wire	[31:0] BusMuxR13In;
input wire	[31:0] BusMuxR14In;
input wire	[31:0] BusMuxR15In;
input wire	[31:0] BusMuxR1In;
input wire	[31:0] BusMuxR2In;
input wire	[31:0] BusMuxR3In;
input wire	[31:0] BusMuxR4In;
input wire	[31:0] BusMuxR5In;
input wire	[31:0] BusMuxR6In;
input wire	[31:0] BusMuxR7In;
input wire	[31:0] BusMuxR8In;
input wire	[31:0] BusMuxR9In;
input wire	[31:0] BusMuxZhighIn;
input wire	[31:0] BusMuxZlowIn;
input wire	[31:0] C_sign_extended;
output wire	[31:0] BusMuxOut;

wire	[4:0] SYNTHESIZED_WIRE_0;





encoder32_5	b2v_inst(
	.R0out(R0out),
	.R1out(R1out),
	.R2out(R2out),
	.R3out(R3out),
	.R4out(R4out),
	.R5out(R5out),
	.R6out(R6out),
	.R7out(R7out),
	.R8out(R8out),
	.R9out(R9out),
	.R10out(R10out),
	.R11out(R11out),
	.R12out(R12out),
	.R13out(R13out),
	.R14out(R14out),
	.R15out(R15out),
	.HIout(HIout),
	.LOout(LOout),
	.Zhighout(Zhighout),
	.Zlowout(Zlowout),
	.PCout(PCout),
	.MDRout(MDRout),
	.Portout(Portout),
	.Cout(Cout),
	.clk(clk),
	.S(SYNTHESIZED_WIRE_0));


mux32_1	b2v_inst1(
	.clk(clk),
	.BusMuxHIIn(BusMuxHIIn),
	.BusMuxLOIn(BusMuxLOIn),
	.BusMuxMDRIn(BusMuxMDRIn),
	.BusMuxPCIn(BusMuxPCIn),
	.BusMuxPortIn(BusMuxPortIn),
	.BusMuxR0In(BusMuxR0In),
	.BusMuxR10In(BusMuxR10In),
	.BusMuxR11In(BusMuxR11In),
	.BusMuxR12In(BusMuxR12In),
	.BusMuxR13In(BusMuxR13In),
	.BusMuxR14In(BusMuxR14In),
	.BusMuxR15In(BusMuxR15In),
	.BusMuxR1In(BusMuxR1In),
	.BusMuxR2In(BusMuxR2In),
	.BusMuxR3In(BusMuxR3In),
	.BusMuxR4In(BusMuxR4In),
	.BusMuxR5In(BusMuxR5In),
	.BusMuxR6In(BusMuxR6In),
	.BusMuxR7In(BusMuxR7In),
	.BusMuxR8In(BusMuxR8In),
	.BusMuxR9In(BusMuxR9In),
	.BusMuxZhighIn(BusMuxZhighIn),
	.BusMuxZlowIn(BusMuxZlowIn),
	.C_sign_extended(C_sign_extended),
	.S(SYNTHESIZED_WIRE_0),
	.BusMuxOut(BusMuxOut));


endmodule
