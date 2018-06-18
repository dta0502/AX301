library verilog;
use verilog.vl_types.all;
entity cycloneive_termination_rupdn is
    generic(
        is_rdn          : string  := "false";
        OCTCAL_DLY      : integer := 0;
        REG_TCO_DLY     : integer := 0
    );
    port(
        clken           : in     vl_logic;
        clkin           : in     vl_logic;
        compout         : out    vl_logic;
        maskbit         : in     vl_logic_vector(8 downto 0);
        nclr            : in     vl_logic;
        octcal          : out    vl_logic_vector(7 downto 0);
        octpin          : in     vl_logic;
        octrpcd         : out    vl_logic_vector(7 downto 0);
        oregclk         : in     vl_logic;
        oregnclr        : in     vl_logic;
        radd            : in     vl_logic_vector(7 downto 0);
        rcompoutinv     : in     vl_logic;
        roctdone        : in     vl_logic;
        rpwrdn          : in     vl_logic;
        rshift          : in     vl_logic;
        rshiftvref      : in     vl_logic;
        rtest           : in     vl_logic;
        shiftedvref     : in     vl_logic;
        vccnx           : in     vl_logic;
        vref            : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of is_rdn : constant is 1;
    attribute mti_svvh_generic_type of OCTCAL_DLY : constant is 1;
    attribute mti_svvh_generic_type of REG_TCO_DLY : constant is 1;
end cycloneive_termination_rupdn;
