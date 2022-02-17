library verilog;
use verilog.vl_types.all;
entity Bus_tb is
    generic(
        Default         : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi0, Hi0);
        Reg_load1a      : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi0, Hi1);
        Reg_load1b      : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi1, Hi0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of Default : constant is 1;
    attribute mti_svvh_generic_type of Reg_load1a : constant is 1;
    attribute mti_svvh_generic_type of Reg_load1b : constant is 1;
end Bus_tb;
