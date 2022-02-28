module div_merge(
	input [31:0] MergeInHI, MergeInLO,
	output reg[63:0] MergeOut);

always
begin
		MergeOut[63:32] = MergeInHI;
		MergeOut[31:0] = MergeInLO;
end
endmodule