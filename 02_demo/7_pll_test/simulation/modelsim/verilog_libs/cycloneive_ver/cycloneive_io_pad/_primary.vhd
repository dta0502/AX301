library verilog;
use verilog.vl_types.all;
entity cycloneive_io_pad is
    generic(
        lpm_type        : string  := "cycloneive_io_pad"
    );
    port(
        padin           : in     vl_logic;
        padout          : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of lpm_type : constant is 1;
end cycloneive_io_pad;
