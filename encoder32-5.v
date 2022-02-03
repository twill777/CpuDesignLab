module encoder32_5(
	input R0out, R1out, R2out, R3out, R4out, R5out,
					R6out, R7out, R8out, R9out, R10out,
					R11out, R12out, R13out, R14out, R15out,
					HIout, LOout, Zhighout, Zlowout, PCout,
					MDRout, Portout, Cout, clk,
	output reg[4:0] S);

always @(posedge clk)
begin
	if(R0out==1'b1) begin
		S <= 5'b00000;
	end else if(R1out==1'b1) begin
		S <= 5'b00001;
	end else if(R2out==1'b1) begin
		S <= 5'b00010;
	end else if(R3out==1'b1) begin
		S <= 5'b00011;
	end else if(R4out==1'b1) begin
		S <= 5'b00100;
	end else if(R5out==1'b1) begin
		S <= 5'b00101;
	end else if(R6out==1'b1) begin
		S <= 5'b00110;
	end else if(R7out==1'b1) begin
		S <= 5'b00111;
	end else if(R8out==1'b1) begin
		S <= 5'b01000;
	end else if(R9out==1'b1) begin
		S <= 5'b01001;
	end else if(R10out==1'b1) begin
		S <= 5'b01010;
	end else if(R11out==1'b1) begin
		S <= 5'b01011;
	end else if(R12out==1'b1) begin
		S <= 5'b01100;
	end else if(R13out==1'b1) begin
		S <= 5'b01101;
	end else if(R14out==1'b1) begin
		S <= 5'b01110;
	end else if(R15out==1'b1) begin
		S <= 5'b01111;
	end else if(HIout==1'b1) begin
		S <= 5'b10000;
	end else if(LOout==1'b1) begin
		S <= 5'b10001;
	end else if(Zhighout==1'b1) begin
		S <= 5'b10010;
	end else if(Zlowout==1'b1) begin
		S <= 5'b10011;
	end else if(PCout==1'b1) begin
		S <= 5'b10100;
	end else if(MDRout==1'b1) begin
		S <= 5'b10101;
	end else if(Portout==1'b1) begin
		S <= 5'b10110;
	end else if(Cout==1'b1) begin
		S <= 5'b10111;
	end  
end
endmodule