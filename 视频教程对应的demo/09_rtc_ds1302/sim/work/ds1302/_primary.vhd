library verilog;
use verilog.vl_types.all;
entity ds1302 is
    port(
        rst             : in     vl_logic;
        clk             : in     vl_logic;
        ds1302_ce       : out    vl_logic;
        ds1302_sclk     : out    vl_logic;
        ds1302_io       : inout  vl_logic;
        write_time_req  : in     vl_logic;
        write_time_ack  : out    vl_logic;
        write_second    : in     vl_logic_vector(7 downto 0);
        write_minute    : in     vl_logic_vector(7 downto 0);
        write_hour      : in     vl_logic_vector(7 downto 0);
        write_date      : in     vl_logic_vector(7 downto 0);
        write_month     : in     vl_logic_vector(7 downto 0);
        write_week      : in     vl_logic_vector(7 downto 0);
        write_year      : in     vl_logic_vector(7 downto 0);
        read_time_req   : in     vl_logic;
        read_time_ack   : out    vl_logic;
        read_second     : out    vl_logic_vector(7 downto 0);
        read_minute     : out    vl_logic_vector(7 downto 0);
        read_hour       : out    vl_logic_vector(7 downto 0);
        read_date       : out    vl_logic_vector(7 downto 0);
        read_month      : out    vl_logic_vector(7 downto 0);
        read_week       : out    vl_logic_vector(7 downto 0);
        read_year       : out    vl_logic_vector(7 downto 0)
    );
end ds1302;
