library verilog;
use verilog.vl_types.all;
entity cycloneive_clkctrl is
    generic(
        clock_type      : string  := "auto";
        ena_register_mode: string  := "falling edge";
        lpm_type        : string  := "cycloneive_clkctrl"
    );
    port(
        inclk           : in     vl_logic_vector(3 downto 0);
        clkselect       : in     vl_logic_vector(1 downto 0);
        ena             : in     vl_logic;
        devpor          : in     vl_logic;
        devclrn         : in     vl_logic;
        outclk          : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of clock_type : constant is 1;
    attribute mti_svvh_generic_type of ena_register_mode : constant is 1;
    attribute mti_svvh_generic_type of lpm_type : constant is 1;
end cycloneive_clkctrl;
