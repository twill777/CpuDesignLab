module register(D,clr,clk,enable,Q);
input[7:0] D;
input clr;
input clk;
input enable;
output reg[7:0] Q;
always @(posedge clk)
begin
	if(enable==1'b1)
		Q <= D;
end
endmodule