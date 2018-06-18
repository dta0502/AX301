library verilog;
use verilog.vl_types.all;
entity cycloneive_crcblock is
    generic(
        oscillator_divider: integer := 1;
        lpm_type        : string  := "cycloneive_crcblock"
    );
    port(
        clk             : in     vl_logic;
        shiftnld        : in     vl_logic;
        ldsrc           : in     vl_logic;
        crcerror        : out    vl_logic;
        regout          : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of oscillator_divider : constant is 1;
    attribute mti_svvh_generic_type of lpm_type : constant is 1;
end cycloneive_crcblock;
