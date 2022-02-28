module register64b(D,clr,clk,enable, hi,Q);
input[63:0] D;
input clr;
input clk;
input enable;
input hi;
output reg[31:0] Q;
always @(posedge clk)
begin
	if(enable==1'b1)
		if(clr==1'b1)
			Q <= 0;
		else
			if(hi==1'b0)
				Q <= D[31:0];
			else
				Q <= D[63:32];
end
endmodule