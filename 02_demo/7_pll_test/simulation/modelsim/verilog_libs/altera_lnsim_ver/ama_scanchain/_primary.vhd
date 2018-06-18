library verilog;
use verilog.vl_types.all;
entity ama_scanchain is
    generic(
        width_scanin    : integer := 1;
        width_scanchain : integer := 1;
        input_register_clock_0: string  := "UNREGISTERED";
        input_register_aclr_0: string  := "UNUSED";
        input_register_clock_1: string  := "UNREGISTERED";
        input_register_aclr_1: string  := "UNUSED";
        input_register_clock_2: string  := "UNREGISTERED";
        input_register_aclr_2: string  := "UNUSED";
        input_register_clock_3: string  := "UNREGISTERED";
        input_register_aclr_3: string  := "UNUSED";
        scanchain_register_clock: string  := "UNREGISTERED";
        scanchain_register_aclr: string  := "UNUSED";
        port_sign       : string  := "PORT_CONNECTIVITY";
        number_of_multipliers: integer := 1;
        width_scanin_msb: vl_notype;
        width_scanchain_msb: vl_notype
    );
    port(
        clock           : in     vl_logic_vector(3 downto 0);
        aclr            : in     vl_logic_vector(3 downto 0);
        ena             : in     vl_logic_vector(3 downto 0);
        sign            : in     vl_logic;
        scanin          : in     vl_logic_vector;
        data_out_0      : out    vl_logic_vector;
        data_out_1      : out    vl_logic_vector;
        data_out_2      : out    vl_logic_vector;
        data_out_3      : out    vl_logic_vector;
        scanout         : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of width_scanin : constant is 1;
    attribute mti_svvh_generic_type of width_scanchain : constant is 1;
    attribute mti_svvh_generic_type of input_register_clock_0 : constant is 1;
    attribute mti_svvh_generic_type of input_register_aclr_0 : constant is 1;
    attribute mti_svvh_generic_type of input_register_clock_1 : constant is 1;
    attribute mti_svvh_generic_type of input_register_aclr_1 : constant is 1;
    attribute mti_svvh_generic_type of input_register_clock_2 : constant is 1;
    attribute mti_svvh_generic_type of input_register_aclr_2 : constant is 1;
    attribute mti_svvh_generic_type of input_register_clock_3 : constant is 1;
    attribute mti_svvh_generic_type of input_register_aclr_3 : constant is 1;
    attribute mti_svvh_generic_type of scanchain_register_clock : constant is 1;
    attribute mti_svvh_generic_type of scanchain_register_aclr : constant is 1;
    attribute mti_svvh_generic_type of port_sign : constant is 1;
    attribute mti_svvh_generic_type of number_of_multipliers : constant is 1;
    attribute mti_svvh_generic_type of width_scanin_msb : constant is 3;
    attribute mti_svvh_generic_type of width_scanchain_msb : constant is 3;
end ama_scanchain;
