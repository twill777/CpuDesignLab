library verilog;
use verilog.vl_types.all;
entity mux32_1 is
    port(
        clk             : in     vl_logic;
        BusMuxR0In      : in     vl_logic_vector(31 downto 0);
        BusMuxR1In      : in     vl_logic_vector(31 downto 0);
        BusMuxR2In      : in     vl_logic_vector(31 downto 0);
        BusMuxR3In      : in     vl_logic_vector(31 downto 0);
        BusMuxR4In      : in     vl_logic_vector(31 downto 0);
        BusMuxR5In      : in     vl_logic_vector(31 downto 0);
        BusMuxR6In      : in     vl_logic_vector(31 downto 0);
        BusMuxR7In      : in     vl_logic_vector(31 downto 0);
        BusMuxR8In      : in     vl_logic_vector(31 downto 0);
        BusMuxR9In      : in     vl_logic_vector(31 downto 0);
        BusMuxR10In     : in     vl_logic_vector(31 downto 0);
        BusMuxR11In     : in     vl_logic_vector(31 downto 0);
        BusMuxR12In     : in     vl_logic_vector(31 downto 0);
        BusMuxR13In     : in     vl_logic_vector(31 downto 0);
        BusMuxR14In     : in     vl_logic_vector(31 downto 0);
        BusMuxR15In     : in     vl_logic_vector(31 downto 0);
        BusMuxHIIn      : in     vl_logic_vector(31 downto 0);
        BusMuxLOIn      : in     vl_logic_vector(31 downto 0);
        BusMuxZhighIn   : in     vl_logic_vector(31 downto 0);
        BusMuxZlowIn    : in     vl_logic_vector(31 downto 0);
        BusMuxPCIn      : in     vl_logic_vector(31 downto 0);
        BusMuxMDRIn     : in     vl_logic_vector(31 downto 0);
        BusMuxPortIn    : in     vl_logic_vector(31 downto 0);
        C_sign_extended : in     vl_logic_vector(31 downto 0);
        S               : in     vl_logic_vector(4 downto 0);
        BusMuxOut       : out    vl_logic_vector(31 downto 0)
    );
end mux32_1;
