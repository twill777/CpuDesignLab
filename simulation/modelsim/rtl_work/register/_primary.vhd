library verilog;
use verilog.vl_types.all;
entity \register\ is
    port(
        D               : in     vl_logic_vector(31 downto 0);
        clr             : in     vl_logic;
        clk             : in     vl_logic;
        enable          : in     vl_logic;
        Q               : out    vl_logic_vector(31 downto 0)
    );
end \register\;
