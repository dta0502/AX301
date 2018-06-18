library verilog;
use verilog.vl_types.all;
entity spi_master is
    port(
        sys_clk         : in     vl_logic;
        rst             : in     vl_logic;
        nCS             : out    vl_logic;
        DCLK            : out    vl_logic;
        MOSI            : out    vl_logic;
        MISO            : in     vl_logic;
        CPOL            : in     vl_logic;
        CPHA            : in     vl_logic;
        nCS_ctrl        : in     vl_logic;
        wr_req          : in     vl_logic;
        wr_ack          : out    vl_logic;
        data_in         : in     vl_logic_vector(7 downto 0);
        data_out        : out    vl_logic_vector(7 downto 0)
    );
end spi_master;
