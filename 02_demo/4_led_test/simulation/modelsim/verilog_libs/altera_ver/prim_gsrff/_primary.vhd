library verilog;
use verilog.vl_types.all;
entity prim_gsrff is
    port(
        q               : out    vl_logic;
        s               : in     vl_logic;
        r               : in     vl_logic;
        clk             : in     vl_logic;
        ena             : in     vl_logic;
        clr             : in     vl_logic;
        pre             : in     vl_logic
    );
end prim_gsrff;
