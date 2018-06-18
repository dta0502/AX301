library verilog;
use verilog.vl_types.all;
entity cycloneive_mac_mult_internal is
    generic(
        dataa_width     : integer := 18;
        datab_width     : integer := 18;
        dataout_width   : vl_notype
    );
    port(
        dataa           : in     vl_logic_vector;
        datab           : in     vl_logic_vector;
        signa           : in     vl_logic;
        signb           : in     vl_logic;
        dataout         : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of dataa_width : constant is 1;
    attribute mti_svvh_generic_type of datab_width : constant is 1;
    attribute mti_svvh_generic_type of dataout_width : constant is 3;
end cycloneive_mac_mult_internal;
