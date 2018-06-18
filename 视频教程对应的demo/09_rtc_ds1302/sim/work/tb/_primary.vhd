library verilog;
use verilog.vl_types.all;
entity tb is
    generic(
        CLOCK_P         : integer := 10
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of CLOCK_P : constant is 1;
end tb;
