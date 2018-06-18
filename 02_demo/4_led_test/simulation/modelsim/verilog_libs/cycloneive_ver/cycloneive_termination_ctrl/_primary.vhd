library verilog;
use verilog.vl_types.all;
entity cycloneive_termination_ctrl is
    generic(
        REG_TCO_DLY     : integer := 0
    );
    port(
        clkusr          : in     vl_logic;
        intosc          : in     vl_logic;
        nclrusr         : in     vl_logic;
        nfrzdrv         : in     vl_logic;
        rclkdiv         : in     vl_logic;
        rclrusrinv      : in     vl_logic;
        rdivsel         : in     vl_logic;
        roctusr         : in     vl_logic;
        rsellvrefdn     : in     vl_logic;
        rsellvrefup     : in     vl_logic;
        rtest           : in     vl_logic;
        vccnx           : in     vl_logic;
        vssn            : in     vl_logic;
        clken           : out    vl_logic;
        clkin           : out    vl_logic;
        maskbit         : out    vl_logic_vector(8 downto 0);
        nclr            : out    vl_logic;
        noctdoneuser    : out    vl_logic;
        octdone         : out    vl_logic;
        oregclk         : out    vl_logic;
        oregnclr        : out    vl_logic;
        vref            : out    vl_logic;
        vrefh           : out    vl_logic;
        vrefl           : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of REG_TCO_DLY : constant is 1;
end cycloneive_termination_ctrl;
