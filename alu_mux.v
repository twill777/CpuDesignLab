module alu_mux(
	input clk,
	input [63:0] Mux1In, Mux2In,
	input [31:0] Mux3In, Mux4In, Mux5In, Mux6In, Mux7In, Mux8In,
	input [2:0] S,
	output reg[63:0] MuxOut);

always @(posedge clk)
begin
	 MuxOut = 0;
	 case(S)
		3'b000 : MuxOut = Mux1In;
		3'b001 : MuxOut = Mux2In;
		3'b010 : MuxOut[31:0] = Mux3In;
		3'b011 : MuxOut[31:0] = Mux4In;
		3'b100 : MuxOut[31:0] = Mux5In;
		3'b101 : MuxOut[31:0] = Mux6In;
		3'b110 : MuxOut[31:0] = Mux7In;
		3'b111 : MuxOut[31:0] = Mux8In;
	endcase
end
endmodule