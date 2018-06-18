library verilog;
use verilog.vl_types.all;
entity Game_ctrl_module is
    port(
        Clk_50mhz       : in     vl_logic;
        Rst_n           : in     vl_logic;
        Key_left        : in     vl_logic;
        Key_right       : in     vl_logic;
        Key_up          : in     vl_logic;
        Key_down        : in     vl_logic;
        Game_status     : out    vl_logic_vector(1 downto 0);
        Hit_wall_sig    : in     vl_logic;
        Hit_body_sig    : in     vl_logic;
        Flash_sig       : out    vl_logic;
        Restart_sig     : out    vl_logic
    );
end Game_ctrl_module;
