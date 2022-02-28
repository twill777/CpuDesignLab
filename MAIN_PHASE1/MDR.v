module reg32 (busMuxIn, busMuxOut, clk, clr, in);
    output reg [31:0] busMuxIn;
    input [31:0] busMuxOut;
    input clk, clr, in;
    
    always@(posedge clk)
    begin
        if (clr)
            busMuxIn <= 32'h0000;
        else
            busMuxIn <= busMuxOut;
    end

endmodule