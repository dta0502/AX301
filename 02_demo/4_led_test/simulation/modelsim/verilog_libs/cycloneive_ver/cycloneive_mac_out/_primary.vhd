library verilog;
use verilog.vl_types.all;
entity cycloneive_mac_out is
    generic(
        dataa_width     : integer := 1;
        output_clock    : string  := "none";
        lpm_hint        : string  := "true";
        lpm_type        : string  := "cycloneive_mac_out";
        dataout_width   : vl_notype
    );
    port(
        dataa           : in     vl_logic_vector;
        clk             : in     vl_logic;
        aclr            : in     vl_logic;
        ena             : in     vl_logic;
        dataout         : out    vl_logic_vector;
        devclrn         : in     vl_logic;
        devpor          : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of dataa_width : constant is 1;
    attribute mti_svvh_generic_type of output_clock : constant is 1;
    attribute mti_svvh_generic_type of lpm_hint : constant is 1;
    attribute mti_svvh_generic_type of lpm_type : constant is 1;
    attribute mti_svvh_generic_type of dataout_width : constant is 3;
end cycloneive_mac_out;
