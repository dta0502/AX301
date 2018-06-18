library verilog;
use verilog.vl_types.all;
entity Apple_generate_module is
    port(
        Clk_50mhz       : in     vl_logic;
        Rst_n           : in     vl_logic;
        Head_x          : in     vl_logic_vector(5 downto 0);
        Head_y          : in     vl_logic_vector(5 downto 0);
        Apple_x         : out    vl_logic_vector(5 downto 0);
        Apple_y         : out    vl_logic_vector(4 downto 0);
        Body_add_sig    : out    vl_logic
    );
end Apple_generate_module;
