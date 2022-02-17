module MDMux(MDRInput, BusMuxOut, Mdatain, read);
    output reg [31:0] MDRInput;
    input [31:0] BusMuxOut, Mdatain;
    input read;
    
    always
    begin
        if (read)
            MDRInput <= Mdatain;
        else
            MDRInput <= BusMuxOut;
    end
	 
endmodule