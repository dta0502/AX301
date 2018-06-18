library verilog;
use verilog.vl_types.all;
entity cycloneive_lcell_comb is
    generic(
        lut_mask        : vl_logic_vector(0 to 15) := (Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1);
        sum_lutc_input  : string  := "datac";
        dont_touch      : string  := "off";
        lpm_type        : string  := "cycloneive_lcell_comb"
    );
    port(
        dataa           : in     vl_logic;
        datab           : in     vl_logic;
        datac           : in     vl_logic;
        datad           : in     vl_logic;
        cin             : in     vl_logic;
        combout         : out    vl_logic;
        cout            : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of lut_mask : constant is 1;
    attribute mti_svvh_generic_type of sum_lutc_input : constant is 1;
    attribute mti_svvh_generic_type of dont_touch : constant is 1;
    attribute mti_svvh_generic_type of lpm_type : constant is 1;
end cycloneive_lcell_comb;
