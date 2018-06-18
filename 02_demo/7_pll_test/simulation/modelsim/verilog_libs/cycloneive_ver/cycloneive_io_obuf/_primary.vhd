library verilog;
use verilog.vl_types.all;
entity cycloneive_io_obuf is
    generic(
        open_drain_output: string  := "false";
        bus_hold        : string  := "false";
        lpm_type        : string  := "cycloneive_io_obuf"
    );
    port(
        i               : in     vl_logic;
        oe              : in     vl_logic;
        seriesterminationcontrol: in     vl_logic_vector(15 downto 0);
        devoe           : in     vl_logic;
        o               : out    vl_logic;
        obar            : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of open_drain_output : constant is 1;
    attribute mti_svvh_generic_type of bus_hold : constant is 1;
    attribute mti_svvh_generic_type of lpm_type : constant is 1;
end cycloneive_io_obuf;
