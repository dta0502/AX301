library verilog;
use verilog.vl_types.all;
entity Snake_ctrl_module is
    port(
        Clk_50mhz       : in     vl_logic;
        Rst_n           : in     vl_logic;
        Key_left        : in     vl_logic;
        Key_right       : in     vl_logic;
        Key_up          : in     vl_logic;
        Key_down        : in     vl_logic;
        Object          : out    vl_logic_vector(1 downto 0);
        Pixel_x         : in     vl_logic_vector(9 downto 0);
        Pixel_y         : in     vl_logic_vector(9 downto 0);
        Head_x          : out    vl_logic_vector(5 downto 0);
        Head_y          : out    vl_logic_vector(5 downto 0);
        Body_add_sig    : in     vl_logic;
        Game_status     : in     vl_logic_vector(1 downto 0);
        Body_num        : out    vl_logic_vector(6 downto 0);
        Hit_body_sig    : out    vl_logic;
        Hit_wall_sig    : out    vl_logic;
        Flash_sig       : in     vl_logic
    );
end Snake_ctrl_module;
