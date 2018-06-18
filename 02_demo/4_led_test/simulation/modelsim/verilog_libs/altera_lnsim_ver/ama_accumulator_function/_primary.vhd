library verilog;
use verilog.vl_types.all;
entity ama_accumulator_function is
    generic(
        width_result    : integer := 1;
        accumulator     : string  := "NO";
        accum_direction : string  := "ADD";
        loadconst_value : integer := 0;
        accum_sload_register: string  := "UNREGISTERED";
        accum_sload_aclr: string  := "NONE";
        double_accum    : string  := "NO";
        output_register : string  := "UNREGISTERED";
        output_aclr     : string  := "NONE";
        use_accum_sload_interchange: string  := "FALSE";
        width_result_msb: vl_notype
    );
    port(
        clock           : in     vl_logic_vector(3 downto 0);
        aclr            : in     vl_logic_vector(3 downto 0);
        ena             : in     vl_logic_vector(3 downto 0);
        accum_sload     : in     vl_logic;
        data_result     : in     vl_logic_vector;
        prev_result     : in     vl_logic_vector;
        result          : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of width_result : constant is 1;
    attribute mti_svvh_generic_type of accumulator : constant is 1;
    attribute mti_svvh_generic_type of accum_direction : constant is 1;
    attribute mti_svvh_generic_type of loadconst_value : constant is 1;
    attribute mti_svvh_generic_type of accum_sload_register : constant is 1;
    attribute mti_svvh_generic_type of accum_sload_aclr : constant is 1;
    attribute mti_svvh_generic_type of double_accum : constant is 1;
    attribute mti_svvh_generic_type of output_register : constant is 1;
    attribute mti_svvh_generic_type of output_aclr : constant is 1;
    attribute mti_svvh_generic_type of use_accum_sload_interchange : constant is 1;
    attribute mti_svvh_generic_type of width_result_msb : constant is 3;
end ama_accumulator_function;
