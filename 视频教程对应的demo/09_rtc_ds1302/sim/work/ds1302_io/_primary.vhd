library verilog;
use verilog.vl_types.all;
entity ds1302_io is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        ds1302_ce       : out    vl_logic;
        ds1302_sclk     : out    vl_logic;
        ds1302_io       : inout  vl_logic;
        cmd_read        : in     vl_logic;
        cmd_write       : in     vl_logic;
        cmd_read_ack    : out    vl_logic;
        cmd_write_ack   : out    vl_logic;
        read_addr       : in     vl_logic_vector(7 downto 0);
        write_addr      : in     vl_logic_vector(7 downto 0);
        read_data       : out    vl_logic_vector(7 downto 0);
        write_data      : in     vl_logic_vector(7 downto 0)
    );
end ds1302_io;
