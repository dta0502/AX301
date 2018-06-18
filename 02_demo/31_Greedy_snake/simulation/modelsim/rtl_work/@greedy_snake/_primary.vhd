library verilog;
use verilog.vl_types.all;
entity Greedy_snake is
    port(
        Clk             : in     vl_logic;
        Rst_n           : in     vl_logic;
        Left            : in     vl_logic;
        Right           : in     vl_logic;
        Up              : in     vl_logic;
        Down            : in     vl_logic;
        Hsync_sig       : out    vl_logic;
        Vsync_sig       : out    vl_logic;
        Vga_rgb         : out    vl_logic_vector(2 downto 0);
        Smg_duan        : out    vl_logic_vector(7 downto 0);
        Smg_we          : out    vl_logic_vector(3 downto 0)
    );
end Greedy_snake;
