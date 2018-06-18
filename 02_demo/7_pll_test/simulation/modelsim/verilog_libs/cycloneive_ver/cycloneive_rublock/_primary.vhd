library verilog;
use verilog.vl_types.all;
entity cycloneive_rublock is
    generic(
        sim_init_config : string  := "factory";
        sim_init_watchdog_value: integer := 0;
        sim_init_status : integer := 0;
        lpm_type        : string  := "cycloneive_rublock"
    );
    port(
        clk             : in     vl_logic;
        shiftnld        : in     vl_logic;
        captnupdt       : in     vl_logic;
        regin           : in     vl_logic;
        rsttimer        : in     vl_logic;
        rconfig         : in     vl_logic;
        regout          : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of sim_init_config : constant is 1;
    attribute mti_svvh_generic_type of sim_init_watchdog_value : constant is 1;
    attribute mti_svvh_generic_type of sim_init_status : constant is 1;
    attribute mti_svvh_generic_type of lpm_type : constant is 1;
end cycloneive_rublock;
