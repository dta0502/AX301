library verilog;
use verilog.vl_types.all;
entity oper_rotate_right is
    generic(
        width_a         : integer := 6;
        width_amount    : integer := 6;
        width_o         : integer := 6;
        sgate_representation: integer := 0
    );
    port(
        amount          : in     vl_logic_vector;
        a               : in     vl_logic_vector;
        o               : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of width_a : constant is 1;
    attribute mti_svvh_generic_type of width_amount : constant is 1;
    attribute mti_svvh_generic_type of width_o : constant is 1;
    attribute mti_svvh_generic_type of sgate_representation : constant is 1;
end oper_rotate_right;
