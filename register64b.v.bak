module register64b(D,clr,clk,enable,Q);
input[63:0] D;
input clr;
input clk;
input enable;
output reg[63:0] Q;
always @(posedge clk)
begin
	if(enable==1'b1)
		if(clr==1'b1)
			Q <= 0;
		else
			Q <= D;
end
endmodule