library verilog;
use verilog.vl_types.all;
entity cycloneive_io_ibuf is
    generic(
        differential_mode: string  := "false";
        bus_hold        : string  := "false";
        simulate_z_as   : string  := "Z";
        lpm_type        : string  := "cycloneive_io_ibuf"
    );
    port(
        i               : in     vl_logic;
        ibar            : in     vl_logic;
        o               : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of differential_mode : constant is 1;
    attribute mti_svvh_generic_type of bus_hold : constant is 1;
    attribute mti_svvh_generic_type of simulate_z_as : constant is 1;
    attribute mti_svvh_generic_type of lpm_type : constant is 1;
end cycloneive_io_ibuf;
