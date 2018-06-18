-- Copyright (C) 1991-2012 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 12.1 Build 177 11/07/2012 SJ Full Version"

-- DATE "11/24/2016 16:27:17"

-- 
-- Device: Altera EP4CE6F17C8 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	sd_audio IS
    PORT (
	clk_50m : IN std_logic;
	rst_n : IN std_logic;
	SD_clk : OUT std_logic;
	SD_cs : OUT std_logic;
	SD_datain : OUT std_logic;
	SD_dataout : IN std_logic;
	DACLRC : IN std_logic;
	BCLK : IN std_logic;
	DACDAT : OUT std_logic;
	ADCLRC : IN std_logic;
	ADCDAT : IN std_logic;
	I2C_SCLK : OUT std_logic;
	I2C_SDAT : INOUT std_logic
	);
END sd_audio;

-- Design Ports Information
-- SD_clk	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SD_cs	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SD_datain	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DACDAT	=>  Location: PIN_B3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- ADCLRC	=>  Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ADCDAT	=>  Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- I2C_SCLK	=>  Location: PIN_B1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- I2C_SDAT	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- rst_n	=>  Location: PIN_N13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk_50m	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DACLRC	=>  Location: PIN_A3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- BCLK	=>  Location: PIN_A2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SD_dataout	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF sd_audio IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk_50m : std_logic;
SIGNAL ww_rst_n : std_logic;
SIGNAL ww_SD_clk : std_logic;
SIGNAL ww_SD_cs : std_logic;
SIGNAL ww_SD_datain : std_logic;
SIGNAL ww_SD_dataout : std_logic;
SIGNAL ww_DACLRC : std_logic;
SIGNAL ww_BCLK : std_logic;
SIGNAL ww_DACDAT : std_logic;
SIGNAL ww_ADCLRC : std_logic;
SIGNAL ww_ADCDAT : std_logic;
SIGNAL ww_I2C_SCLK : std_logic;
SIGNAL \pll_inst|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \pll_inst|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a3_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a5_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a7_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rw_control_inst|myram_rtl_1|auto_generated|ram_block1a5_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rw_control_inst|myram_rtl_1|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rw_control_inst|myram_rtl_1|auto_generated|ram_block1a5_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rw_control_inst|myram_rtl_1|auto_generated|ram_block1a5_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rw_control_inst|myram_rtl_1|auto_generated|ram_block1a6_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rw_control_inst|myram_rtl_1|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rw_control_inst|myram_rtl_1|auto_generated|ram_block1a6_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rw_control_inst|myram_rtl_1|auto_generated|ram_block1a6_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rw_control_inst|myram_rtl_1|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rw_control_inst|myram_rtl_1|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rw_control_inst|myram_rtl_1|auto_generated|ram_block1a4_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rw_control_inst|myram_rtl_1|auto_generated|ram_block1a4_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rw_control_inst|myram_rtl_1|auto_generated|ram_block1a7_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rw_control_inst|myram_rtl_1|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rw_control_inst|myram_rtl_1|auto_generated|ram_block1a7_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rw_control_inst|myram_rtl_1|auto_generated|ram_block1a7_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rw_control_inst|myram_rtl_1|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rw_control_inst|myram_rtl_1|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rw_control_inst|myram_rtl_1|auto_generated|ram_block1a2_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rw_control_inst|myram_rtl_1|auto_generated|ram_block1a2_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rw_control_inst|myram_rtl_1|auto_generated|ram_block1a1_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rw_control_inst|myram_rtl_1|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rw_control_inst|myram_rtl_1|auto_generated|ram_block1a1_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rw_control_inst|myram_rtl_1|auto_generated|ram_block1a1_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rw_control_inst|myram_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rw_control_inst|myram_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rw_control_inst|myram_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rw_control_inst|myram_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rw_control_inst|myram_rtl_1|auto_generated|ram_block1a3_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ram_rw_control_inst|myram_rtl_1|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rw_control_inst|myram_rtl_1|auto_generated|ram_block1a3_PORTBADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rw_control_inst|myram_rtl_1|auto_generated|ram_block1a3_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mywav_inst|reg_config_inst|clock_20k~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_50m~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a6~portbdataout\ : std_logic;
SIGNAL \ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a7~portbdataout\ : std_logic;
SIGNAL \sd_read_inst|myvalid_o~q\ : std_logic;
SIGNAL \sd_read_inst|cnt[1]~27_combout\ : std_logic;
SIGNAL \sd_read_inst|cnt[6]~37_combout\ : std_logic;
SIGNAL \sd_read_inst|cnt[10]~45_combout\ : std_logic;
SIGNAL \sd_read_inst|cnt[14]~53_combout\ : std_logic;
SIGNAL \sd_read_inst|cnt[16]~57_combout\ : std_logic;
SIGNAL \sd_read_inst|cnt[17]~59_combout\ : std_logic;
SIGNAL \sd_initial_inst|counter[2]~11_combout\ : std_logic;
SIGNAL \sd_initial_inst|counter[7]~21_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|counter[1]~12_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|myen~q\ : std_logic;
SIGNAL \ram_rw_control_inst|Add3~0_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|Add3~9_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|Add3~12_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|Add3~15_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|Add3~18_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|Add3~21_combout\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|clock_20k_cnt[0]~17\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|clock_20k_cnt[0]~16_combout\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|clock_20k_cnt[1]~19\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|clock_20k_cnt[1]~18_combout\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|clock_20k_cnt[2]~21\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|clock_20k_cnt[2]~20_combout\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|clock_20k_cnt[3]~23\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|clock_20k_cnt[3]~22_combout\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|clock_20k_cnt[4]~25\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|clock_20k_cnt[4]~24_combout\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|clock_20k_cnt[5]~27\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|clock_20k_cnt[5]~26_combout\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|clock_20k_cnt[6]~29\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|clock_20k_cnt[6]~28_combout\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|clock_20k_cnt[7]~31\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|clock_20k_cnt[7]~30_combout\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|clock_20k_cnt[8]~33\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|clock_20k_cnt[8]~32_combout\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|clock_20k_cnt[9]~35\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|clock_20k_cnt[9]~34_combout\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|clock_20k_cnt[10]~37\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|clock_20k_cnt[10]~36_combout\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|clock_20k_cnt[11]~39\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|clock_20k_cnt[11]~38_combout\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|clock_20k_cnt[12]~41\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|clock_20k_cnt[12]~40_combout\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|clock_20k_cnt[13]~43\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|clock_20k_cnt[13]~42_combout\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|clock_20k_cnt[14]~45\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|clock_20k_cnt[14]~44_combout\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|clock_20k_cnt[15]~46_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|read_sec[6]~48_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|read_sec[11]~58_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|read_sec[22]~80_combout\ : std_logic;
SIGNAL \sd_initial_inst|cnt[3]~21_combout\ : std_logic;
SIGNAL \sd_initial_inst|cnt[5]~25_combout\ : std_logic;
SIGNAL \sd_initial_inst|cnt[6]~27_combout\ : std_logic;
SIGNAL \sd_initial_inst|Add0~2_combout\ : std_logic;
SIGNAL \sd_read_inst|Add3~1\ : std_logic;
SIGNAL \sd_read_inst|Add3~0_combout\ : std_logic;
SIGNAL \sd_read_inst|Add3~3\ : std_logic;
SIGNAL \sd_read_inst|Add3~2_combout\ : std_logic;
SIGNAL \sd_read_inst|Add3~5\ : std_logic;
SIGNAL \sd_read_inst|Add3~4_combout\ : std_logic;
SIGNAL \sd_read_inst|Add3~7\ : std_logic;
SIGNAL \sd_read_inst|Add3~6_combout\ : std_logic;
SIGNAL \sd_read_inst|Add3~9\ : std_logic;
SIGNAL \sd_read_inst|Add3~8_combout\ : std_logic;
SIGNAL \sd_read_inst|Add3~11\ : std_logic;
SIGNAL \sd_read_inst|Add3~10_combout\ : std_logic;
SIGNAL \sd_read_inst|Add3~13\ : std_logic;
SIGNAL \sd_read_inst|Add3~12_combout\ : std_logic;
SIGNAL \sd_read_inst|Add3~15\ : std_logic;
SIGNAL \sd_read_inst|Add3~14_combout\ : std_logic;
SIGNAL \sd_read_inst|Add3~17\ : std_logic;
SIGNAL \sd_read_inst|Add3~16_combout\ : std_logic;
SIGNAL \sd_read_inst|Add3~18_combout\ : std_logic;
SIGNAL \sd_read_inst|Add0~0_combout\ : std_logic;
SIGNAL \sd_read_inst|Add0~2_combout\ : std_logic;
SIGNAL \sd_read_inst|Add0~9\ : std_logic;
SIGNAL \sd_read_inst|Add0~10_combout\ : std_logic;
SIGNAL \mywav_inst|sinwave_gen_inst|Mux0~4_combout\ : std_logic;
SIGNAL \mywav_inst|sinwave_gen_inst|Mux0~5_combout\ : std_logic;
SIGNAL \sd_read_inst|LessThan1~1_combout\ : std_logic;
SIGNAL \sd_read_inst|LessThan1~5_combout\ : std_logic;
SIGNAL \sd_read_inst|Equal0~3_combout\ : std_logic;
SIGNAL \sd_read_inst|Equal0~5_combout\ : std_logic;
SIGNAL \sd_read_inst|Equal0~6_combout\ : std_logic;
SIGNAL \sd_read_inst|Equal0~7_combout\ : std_logic;
SIGNAL \sd_read_inst|Equal0~8_combout\ : std_logic;
SIGNAL \sd_read_inst|Equal0~9_combout\ : std_logic;
SIGNAL \sd_read_inst|Equal0~12_combout\ : std_logic;
SIGNAL \sd_read_inst|Equal0~15_combout\ : std_logic;
SIGNAL \sd_initial_inst|Equal0~2_combout\ : std_logic;
SIGNAL \sd_initial_inst|Equal0~7_combout\ : std_logic;
SIGNAL \sd_initial_inst|Equal0~12_combout\ : std_logic;
SIGNAL \sd_initial_inst|Equal5~2_combout\ : std_logic;
SIGNAL \sd_initial_inst|Equal5~5_combout\ : std_logic;
SIGNAL \sd_initial_inst|Equal5~6_combout\ : std_logic;
SIGNAL \sd_initial_inst|Equal5~7_combout\ : std_logic;
SIGNAL \sd_initial_inst|Equal5~8_combout\ : std_logic;
SIGNAL \sd_initial_inst|Equal5~9_combout\ : std_logic;
SIGNAL \sd_initial_inst|Equal5~11_combout\ : std_logic;
SIGNAL \sd_initial_inst|Equal4~2_combout\ : std_logic;
SIGNAL \sd_initial_inst|Equal4~5_combout\ : std_logic;
SIGNAL \sd_initial_inst|Equal4~10_combout\ : std_logic;
SIGNAL \sd_initial_inst|Equal2~2_combout\ : std_logic;
SIGNAL \sd_initial_inst|Equal2~6_combout\ : std_logic;
SIGNAL \sd_initial_inst|Equal2~10_combout\ : std_logic;
SIGNAL \sd_initial_inst|Equal2~11_combout\ : std_logic;
SIGNAL \sd_initial_inst|Equal2~12_combout\ : std_logic;
SIGNAL \sd_initial_inst|Equal2~13_combout\ : std_logic;
SIGNAL \sd_initial_inst|Equal2~14_combout\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|LessThan0~0_combout\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|LessThan0~1_combout\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|LessThan0~2_combout\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|LessThan0~3_combout\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|LessThan0~4_combout\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|clock_20k~0_combout\ : std_logic;
SIGNAL \sd_read_inst|CMD17~14_combout\ : std_logic;
SIGNAL \sd_read_inst|mystate[3]~5_combout\ : std_logic;
SIGNAL \sd_initial_inst|Equal1~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|LessThan3~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|LessThan3~1_combout\ : std_logic;
SIGNAL \sd_initial_inst|cnt[9]~10_combout\ : std_logic;
SIGNAL \sd_initial_inst|Mux0~3_combout\ : std_logic;
SIGNAL \sd_initial_inst|Mux0~4_combout\ : std_logic;
SIGNAL \sd_initial_inst|state~2_combout\ : std_logic;
SIGNAL \sd_initial_inst|state~3_combout\ : std_logic;
SIGNAL \sd_initial_inst|en~q\ : std_logic;
SIGNAL \sd_initial_inst|CMD55[32]~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Mux1~1_combout\ : std_logic;
SIGNAL \sd_initial_inst|Mux1~2_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector190~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector187~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector185~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector184~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector183~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector182~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector172~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector157~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector153~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector152~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector151~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector150~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector149~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector42~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector33~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector32~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector13~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector12~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector83~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector69~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector65~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector64~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector63~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector57~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector52~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|CMD8[47]~2_combout\ : std_logic;
SIGNAL \sd_initial_inst|CMD8[0]~5_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector143~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector125~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector124~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector123~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector122~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector121~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector113~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector112~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector111~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector110~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector109~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector108~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector107~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector106~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector102~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector105~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector104~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector103~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector99~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector101~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector100~0_combout\ : std_logic;
SIGNAL \sd_read_inst|myvalid_o~0_combout\ : std_logic;
SIGNAL \sd_read_inst|myvalid_o~1_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|always7~0_combout\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|LessThan0~5_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|always1~2_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|LessThan1~0_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|LessThan1~3_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|read_sec[15]~34_combout\ : std_logic;
SIGNAL \sd_initial_inst|en~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|aa~4_combout\ : std_logic;
SIGNAL \sd_read_inst|cntb~3_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|myen~0_combout\ : std_logic;
SIGNAL \sd_read_inst|aa~2_combout\ : std_logic;
SIGNAL \sd_read_inst|aa~4_combout\ : std_logic;
SIGNAL \sd_read_inst|read_cnt~1_combout\ : std_logic;
SIGNAL \sd_read_inst|read_cnt[8]~2_combout\ : std_logic;
SIGNAL \sd_read_inst|read_cnt~3_combout\ : std_logic;
SIGNAL \sd_read_inst|read_cnt~4_combout\ : std_logic;
SIGNAL \sd_read_inst|read_cnt~5_combout\ : std_logic;
SIGNAL \sd_read_inst|read_cnt~6_combout\ : std_logic;
SIGNAL \sd_read_inst|read_cnt~7_combout\ : std_logic;
SIGNAL \sd_read_inst|read_cnt~8_combout\ : std_logic;
SIGNAL \sd_read_inst|read_cnt~9_combout\ : std_logic;
SIGNAL \sd_read_inst|read_cnt~10_combout\ : std_logic;
SIGNAL \sd_read_inst|Selector0~0_combout\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|WideOr0~0_combout\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|Decoder3~0_combout\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|WideOr3~0_combout\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|Decoder2~0_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|next_read_reg~1_combout\ : std_logic;
SIGNAL \sd_initial_inst|Mux0~6_combout\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|u1|sclk~5_combout\ : std_logic;
SIGNAL \ADCLRC~input_o\ : std_logic;
SIGNAL \ADCDAT~input_o\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|clock_20k~feeder_combout\ : std_logic;
SIGNAL \rst_n~input_o\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|clock_20k~q\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|clock_20k~clkctrl_outclk\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|u1|cyc_count[0]~6_combout\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|u1|cyc_count[1]~10_combout\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|u1|cyc_count[3]~15\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|u1|cyc_count[4]~17\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|u1|cyc_count[5]~18_combout\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|u1|cyc_count[0]~8_combout\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|u1|cyc_count[0]~9_combout\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|u1|cyc_count[4]~16_combout\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|u1|sclk~2_combout\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|u1|tr_end~0_combout\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|u1|tr_end~1_combout\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|u1|tr_end~q\ : std_logic;
SIGNAL \I2C_SDAT~input_o\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|u1|Selector4~0_combout\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|u1|ack1~0_combout\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|u1|ack1~1_combout\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|u1|ack1~q\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|u1|ack2~0_combout\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|u1|ack2~1_combout\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|u1|ack2~2_combout\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|u1|ack2~q\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|u1|ack3~0_combout\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|u1|ack3~1_combout\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|u1|ack3~2_combout\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|u1|ack3~q\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|config_step~10_combout\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|config_step~11_combout\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|reg_index[0]~6_combout\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|reg_index[1]~4_combout\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|reg_index[3]~5_combout\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|reg_index[3]~7_combout\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|reg_index[2]~2_combout\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|reg_index[2]~3_combout\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|LessThan1~0_combout\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|config_step.10~q\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|Selector1~0_combout\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|config_step.00~q\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|Selector2~0_combout\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|config_step.01~q\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|Selector0~0_combout\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|start~q\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|u1|cyc_count[0]~7\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|u1|cyc_count[1]~11\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|u1|cyc_count[2]~12_combout\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|u1|cyc_count[2]~13\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|u1|cyc_count[3]~14_combout\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|u1|Mux0~0_combout\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|Decoder0~0_combout\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|i2c_data[12]~0_combout\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|u1|Mux0~11_combout\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|u1|Mux0~10_combout\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|u1|Mux0~12_combout\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|WideOr6~0_combout\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|WideOr5~0_combout\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|u1|Mux0~1_combout\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|u1|Mux0~2_combout\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|WideOr2~0_combout\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|WideOr1~0_combout\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|u1|Mux0~7_combout\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|u1|Mux0~8_combout\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|WideOr7~0_combout\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|u1|Mux0~3_combout\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|WideOr4~0_combout\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|Decoder1~0_combout\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|u1|Mux0~4_combout\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|u1|Mux0~5_combout\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|u1|Mux0~6_combout\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|u1|Mux0~9_combout\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|u1|Mux0~13_combout\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|u1|Mux0~14_combout\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|u1|reg_sdat~q\ : std_logic;
SIGNAL \clk_50m~input_o\ : std_logic;
SIGNAL \pll_inst|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \SD_dataout~input_o\ : std_logic;
SIGNAL \sd_initial_inst|Add0~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Add0~5\ : std_logic;
SIGNAL \sd_initial_inst|Add0~7\ : std_logic;
SIGNAL \sd_initial_inst|Add0~8_combout\ : std_logic;
SIGNAL \sd_initial_inst|aa~2_combout\ : std_logic;
SIGNAL \sd_initial_inst|Add0~9\ : std_logic;
SIGNAL \sd_initial_inst|Add0~10_combout\ : std_logic;
SIGNAL \sd_initial_inst|aa~1_combout\ : std_logic;
SIGNAL \sd_initial_inst|aa~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|aa~3_combout\ : std_logic;
SIGNAL \sd_initial_inst|Add0~1\ : std_logic;
SIGNAL \sd_initial_inst|Add0~3\ : std_logic;
SIGNAL \sd_initial_inst|Add0~4_combout\ : std_logic;
SIGNAL \sd_initial_inst|aa~5_combout\ : std_logic;
SIGNAL \sd_initial_inst|Add0~6_combout\ : std_logic;
SIGNAL \sd_initial_inst|aa~6_combout\ : std_logic;
SIGNAL \sd_initial_inst|LessThan0~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|rx_valid~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|rx_valid~q\ : std_logic;
SIGNAL \sd_initial_inst|counter[0]~27_combout\ : std_logic;
SIGNAL \sd_initial_inst|counter[1]~10\ : std_logic;
SIGNAL \sd_initial_inst|counter[2]~12\ : std_logic;
SIGNAL \sd_initial_inst|counter[3]~13_combout\ : std_logic;
SIGNAL \sd_initial_inst|counter[3]~14\ : std_logic;
SIGNAL \sd_initial_inst|counter[4]~15_combout\ : std_logic;
SIGNAL \sd_initial_inst|counter[4]~16\ : std_logic;
SIGNAL \sd_initial_inst|counter[5]~17_combout\ : std_logic;
SIGNAL \sd_initial_inst|counter[5]~18\ : std_logic;
SIGNAL \sd_initial_inst|counter[6]~19_combout\ : std_logic;
SIGNAL \sd_initial_inst|counter[6]~20\ : std_logic;
SIGNAL \sd_initial_inst|counter[7]~22\ : std_logic;
SIGNAL \sd_initial_inst|counter[8]~23_combout\ : std_logic;
SIGNAL \sd_initial_inst|counter[8]~24\ : std_logic;
SIGNAL \sd_initial_inst|counter[9]~25_combout\ : std_logic;
SIGNAL \sd_initial_inst|counter[1]~9_combout\ : std_logic;
SIGNAL \sd_initial_inst|LessThan1~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|LessThan1~1_combout\ : std_logic;
SIGNAL \sd_initial_inst|LessThan1~2_combout\ : std_logic;
SIGNAL \sd_initial_inst|reset~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|reset~q\ : std_logic;
SIGNAL \sd_initial_inst|CMD0[0]~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|state~4_combout\ : std_logic;
SIGNAL \sd_initial_inst|state~1_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector189~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|CMD0[47]~1_combout\ : std_logic;
SIGNAL \sd_initial_inst|CMD0[47]~2_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector188~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector186~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Equal0~1_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector181~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector180~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector179~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Equal0~3_combout\ : std_logic;
SIGNAL \sd_initial_inst|CMD0[0]~3_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector192~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector191~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Equal0~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Equal0~4_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector156~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector155~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector154~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Equal0~11_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector161~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector160~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector159~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector158~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Equal0~10_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector148~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector147~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector146~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Equal0~13_combout\ : std_logic;
SIGNAL \sd_initial_inst|Equal0~14_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector178~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector177~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector176~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector175~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector174~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector173~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector171~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector170~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Equal0~6_combout\ : std_logic;
SIGNAL \sd_initial_inst|Equal0~5_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector169~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector168~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector167~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector166~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector165~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector164~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector163~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector162~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Equal0~8_combout\ : std_logic;
SIGNAL \sd_initial_inst|Equal0~9_combout\ : std_logic;
SIGNAL \sd_initial_inst|Equal0~15_combout\ : std_logic;
SIGNAL \sd_initial_inst|Mux3~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|rx[1]~feeder_combout\ : std_logic;
SIGNAL \sd_initial_inst|rx[2]~feeder_combout\ : std_logic;
SIGNAL \sd_initial_inst|rx[3]~feeder_combout\ : std_logic;
SIGNAL \sd_initial_inst|rx[4]~feeder_combout\ : std_logic;
SIGNAL \sd_initial_inst|rx[5]~feeder_combout\ : std_logic;
SIGNAL \sd_initial_inst|rx[6]~feeder_combout\ : std_logic;
SIGNAL \sd_initial_inst|rx[7]~feeder_combout\ : std_logic;
SIGNAL \sd_initial_inst|rx[9]~feeder_combout\ : std_logic;
SIGNAL \sd_initial_inst|rx[11]~feeder_combout\ : std_logic;
SIGNAL \sd_initial_inst|rx[14]~feeder_combout\ : std_logic;
SIGNAL \sd_initial_inst|rx[15]~feeder_combout\ : std_logic;
SIGNAL \sd_initial_inst|rx[16]~feeder_combout\ : std_logic;
SIGNAL \sd_initial_inst|rx[17]~feeder_combout\ : std_logic;
SIGNAL \sd_initial_inst|rx[19]~feeder_combout\ : std_logic;
SIGNAL \sd_initial_inst|always3~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|always3~3_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector97~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|ACMD41[0]~3_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector48~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|ACMD41[47]~1_combout\ : std_logic;
SIGNAL \sd_initial_inst|ACMD41[47]~2_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector47~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector46~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Equal5~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector41~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector40~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector39~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector38~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector37~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector36~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector35~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector34~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Equal5~3_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector45~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector44~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector43~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Equal5~1_combout\ : std_logic;
SIGNAL \sd_initial_inst|Equal5~4_combout\ : std_logic;
SIGNAL \sd_initial_inst|ACMD41[42]~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector11~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector10~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector9~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector8~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector7~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector6~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector5~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector4~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector3~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector2~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Equal5~13_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector31~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector30~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector29~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector28~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector27~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector26~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector25~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector24~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector23~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector22~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector21~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector20~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector19~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector18~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector17~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector16~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector15~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector14~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Equal5~10_combout\ : std_logic;
SIGNAL \sd_initial_inst|Equal5~12_combout\ : std_logic;
SIGNAL \sd_initial_inst|Equal5~14_combout\ : std_logic;
SIGNAL \sd_initial_inst|Equal5~15_combout\ : std_logic;
SIGNAL \sd_initial_inst|rx[20]~feeder_combout\ : std_logic;
SIGNAL \sd_initial_inst|rx[22]~feeder_combout\ : std_logic;
SIGNAL \sd_initial_inst|rx[23]~feeder_combout\ : std_logic;
SIGNAL \sd_initial_inst|rx[25]~feeder_combout\ : std_logic;
SIGNAL \sd_initial_inst|rx[26]~feeder_combout\ : std_logic;
SIGNAL \sd_initial_inst|rx[27]~feeder_combout\ : std_logic;
SIGNAL \sd_initial_inst|rx[28]~feeder_combout\ : std_logic;
SIGNAL \sd_initial_inst|rx[29]~feeder_combout\ : std_logic;
SIGNAL \sd_initial_inst|rx[30]~feeder_combout\ : std_logic;
SIGNAL \sd_initial_inst|rx[33]~feeder_combout\ : std_logic;
SIGNAL \sd_initial_inst|rx[34]~feeder_combout\ : std_logic;
SIGNAL \sd_initial_inst|rx[35]~feeder_combout\ : std_logic;
SIGNAL \sd_initial_inst|rx[39]~feeder_combout\ : std_logic;
SIGNAL \sd_initial_inst|rx[40]~feeder_combout\ : std_logic;
SIGNAL \sd_initial_inst|rx[41]~feeder_combout\ : std_logic;
SIGNAL \sd_initial_inst|rx[43]~feeder_combout\ : std_logic;
SIGNAL \sd_initial_inst|rx[44]~feeder_combout\ : std_logic;
SIGNAL \sd_initial_inst|rx[45]~feeder_combout\ : std_logic;
SIGNAL \sd_initial_inst|rx[46]~feeder_combout\ : std_logic;
SIGNAL \sd_initial_inst|Equal1~1_combout\ : std_logic;
SIGNAL \sd_initial_inst|always3~1_combout\ : std_logic;
SIGNAL \sd_initial_inst|state~6_combout\ : std_logic;
SIGNAL \sd_initial_inst|Mux3~1_combout\ : std_logic;
SIGNAL \sd_initial_inst|state~7_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector1~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Mux0~5_combout\ : std_logic;
SIGNAL \sd_initial_inst|cnt[0]~11_combout\ : std_logic;
SIGNAL \sd_initial_inst|cnt[8]~32\ : std_logic;
SIGNAL \sd_initial_inst|cnt[9]~33_combout\ : std_logic;
SIGNAL \sd_initial_inst|cnt[9]~14_combout\ : std_logic;
SIGNAL \sd_initial_inst|cnt[9]~15_combout\ : std_logic;
SIGNAL \sd_initial_inst|cnt[9]~16_combout\ : std_logic;
SIGNAL \sd_initial_inst|LessThan4~1_combout\ : std_logic;
SIGNAL \sd_initial_inst|cnt[0]~13_combout\ : std_logic;
SIGNAL \sd_initial_inst|cnt[0]~12\ : std_logic;
SIGNAL \sd_initial_inst|cnt[1]~17_combout\ : std_logic;
SIGNAL \sd_initial_inst|cnt[1]~18\ : std_logic;
SIGNAL \sd_initial_inst|cnt[2]~19_combout\ : std_logic;
SIGNAL \sd_initial_inst|cnt[2]~20\ : std_logic;
SIGNAL \sd_initial_inst|cnt[3]~22\ : std_logic;
SIGNAL \sd_initial_inst|cnt[4]~23_combout\ : std_logic;
SIGNAL \sd_initial_inst|cnt[4]~24\ : std_logic;
SIGNAL \sd_initial_inst|cnt[5]~26\ : std_logic;
SIGNAL \sd_initial_inst|cnt[6]~28\ : std_logic;
SIGNAL \sd_initial_inst|cnt[7]~29_combout\ : std_logic;
SIGNAL \sd_initial_inst|cnt[7]~30\ : std_logic;
SIGNAL \sd_initial_inst|cnt[8]~31_combout\ : std_logic;
SIGNAL \sd_initial_inst|LessThan3~2_combout\ : std_logic;
SIGNAL \sd_initial_inst|LessThan4~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Mux0~2_combout\ : std_logic;
SIGNAL \sd_initial_inst|CMD8[0]~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Mux1~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Mux1~3_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector120~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|CMD8[47]~1_combout\ : std_logic;
SIGNAL \sd_initial_inst|CMD8[47]~3_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector119~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector118~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector117~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector116~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector115~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector114~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Equal2~8_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector131~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector130~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector129~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector128~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector127~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector126~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Equal2~5_combout\ : std_logic;
SIGNAL \sd_initial_inst|Equal2~7_combout\ : std_logic;
SIGNAL \sd_initial_inst|Equal2~9_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector142~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector141~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector140~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector139~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector138~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Equal2~1_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector137~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector136~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector135~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector134~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector133~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector132~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Equal2~3_combout\ : std_logic;
SIGNAL \sd_initial_inst|CMD8[0]~4_combout\ : std_logic;
SIGNAL \sd_initial_inst|CMD8[0]~6_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector144~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Equal2~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Equal2~4_combout\ : std_logic;
SIGNAL \sd_initial_inst|Equal2~15_combout\ : std_logic;
SIGNAL \sd_initial_inst|always3~2_combout\ : std_logic;
SIGNAL \sd_initial_inst|state~9_combout\ : std_logic;
SIGNAL \sd_initial_inst|state~8_combout\ : std_logic;
SIGNAL \sd_initial_inst|state~10_combout\ : std_logic;
SIGNAL \sd_initial_inst|state~5_combout\ : std_logic;
SIGNAL \sd_initial_inst|state~11_combout\ : std_logic;
SIGNAL \sd_initial_inst|Mux3~2_combout\ : std_logic;
SIGNAL \sd_initial_inst|Mux3~3_combout\ : std_logic;
SIGNAL \sd_initial_inst|state~12_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector0~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector0~1_combout\ : std_logic;
SIGNAL \sd_initial_inst|SD_cs~q\ : std_logic;
SIGNAL \sd_initial_inst|Selector1~1_combout\ : std_logic;
SIGNAL \sd_initial_inst|init_o~q\ : std_logic;
SIGNAL \sd_read_inst|cnt[0]~23\ : std_logic;
SIGNAL \sd_read_inst|cnt[1]~28\ : std_logic;
SIGNAL \sd_read_inst|cnt[2]~29_combout\ : std_logic;
SIGNAL \sd_read_inst|cnt[8]~24_combout\ : std_logic;
SIGNAL \sd_read_inst|Add0~1\ : std_logic;
SIGNAL \sd_read_inst|Add0~3\ : std_logic;
SIGNAL \sd_read_inst|Add0~4_combout\ : std_logic;
SIGNAL \sd_read_inst|en~0_combout\ : std_logic;
SIGNAL \sd_read_inst|en~q\ : std_logic;
SIGNAL \sd_read_inst|aa~3_combout\ : std_logic;
SIGNAL \sd_read_inst|LessThan0~0_combout\ : std_logic;
SIGNAL \sd_read_inst|aa~0_combout\ : std_logic;
SIGNAL \sd_read_inst|aa~5_combout\ : std_logic;
SIGNAL \sd_read_inst|Add0~5\ : std_logic;
SIGNAL \sd_read_inst|Add0~6_combout\ : std_logic;
SIGNAL \sd_read_inst|aa~6_combout\ : std_logic;
SIGNAL \sd_read_inst|Add0~7\ : std_logic;
SIGNAL \sd_read_inst|Add0~8_combout\ : std_logic;
SIGNAL \sd_read_inst|aa~1_combout\ : std_logic;
SIGNAL \sd_read_inst|rx_valid~0_combout\ : std_logic;
SIGNAL \sd_read_inst|rx_valid~q\ : std_logic;
SIGNAL \sd_read_inst|cnt[21]~25_combout\ : std_logic;
SIGNAL \sd_read_inst|cnt[21]~26_combout\ : std_logic;
SIGNAL \sd_read_inst|cnt[2]~30\ : std_logic;
SIGNAL \sd_read_inst|cnt[3]~31_combout\ : std_logic;
SIGNAL \sd_read_inst|cnt[3]~32\ : std_logic;
SIGNAL \sd_read_inst|cnt[4]~33_combout\ : std_logic;
SIGNAL \sd_read_inst|cnt[4]~34\ : std_logic;
SIGNAL \sd_read_inst|cnt[5]~35_combout\ : std_logic;
SIGNAL \sd_read_inst|cnt[5]~36\ : std_logic;
SIGNAL \sd_read_inst|cnt[6]~38\ : std_logic;
SIGNAL \sd_read_inst|cnt[7]~39_combout\ : std_logic;
SIGNAL \sd_read_inst|cnt[7]~40\ : std_logic;
SIGNAL \sd_read_inst|cnt[8]~42\ : std_logic;
SIGNAL \sd_read_inst|cnt[9]~43_combout\ : std_logic;
SIGNAL \sd_read_inst|cnt[9]~44\ : std_logic;
SIGNAL \sd_read_inst|cnt[10]~46\ : std_logic;
SIGNAL \sd_read_inst|cnt[11]~48\ : std_logic;
SIGNAL \sd_read_inst|cnt[12]~49_combout\ : std_logic;
SIGNAL \sd_read_inst|cnt[12]~50\ : std_logic;
SIGNAL \sd_read_inst|cnt[13]~51_combout\ : std_logic;
SIGNAL \sd_read_inst|cnt[13]~52\ : std_logic;
SIGNAL \sd_read_inst|cnt[14]~54\ : std_logic;
SIGNAL \sd_read_inst|cnt[15]~55_combout\ : std_logic;
SIGNAL \sd_read_inst|cnt[15]~56\ : std_logic;
SIGNAL \sd_read_inst|cnt[16]~58\ : std_logic;
SIGNAL \sd_read_inst|cnt[17]~60\ : std_logic;
SIGNAL \sd_read_inst|cnt[18]~61_combout\ : std_logic;
SIGNAL \sd_read_inst|cnt[18]~62\ : std_logic;
SIGNAL \sd_read_inst|cnt[19]~63_combout\ : std_logic;
SIGNAL \sd_read_inst|cnt[19]~64\ : std_logic;
SIGNAL \sd_read_inst|cnt[20]~65_combout\ : std_logic;
SIGNAL \sd_read_inst|cnt[11]~47_combout\ : std_logic;
SIGNAL \sd_read_inst|cnt[8]~41_combout\ : std_logic;
SIGNAL \sd_read_inst|LessThan1~2_combout\ : std_logic;
SIGNAL \sd_read_inst|LessThan1~3_combout\ : std_logic;
SIGNAL \sd_read_inst|cnt[0]~22_combout\ : std_logic;
SIGNAL \sd_read_inst|LessThan1~0_combout\ : std_logic;
SIGNAL \sd_read_inst|LessThan1~4_combout\ : std_logic;
SIGNAL \sd_read_inst|cnt[20]~66\ : std_logic;
SIGNAL \sd_read_inst|cnt[21]~67_combout\ : std_logic;
SIGNAL \sd_read_inst|LessThan1~6_combout\ : std_logic;
SIGNAL \sd_read_inst|Selector0~1_combout\ : std_logic;
SIGNAL \sd_read_inst|read_start~q\ : std_logic;
SIGNAL \sd_read_inst|read_step~6_combout\ : std_logic;
SIGNAL \sd_read_inst|read_step~7_combout\ : std_logic;
SIGNAL \sd_read_inst|read_step.01~q\ : std_logic;
SIGNAL \sd_read_inst|cntb~0_combout\ : std_logic;
SIGNAL \sd_read_inst|cntb[2]~1_combout\ : std_logic;
SIGNAL \sd_read_inst|cntb~2_combout\ : std_logic;
SIGNAL \sd_read_inst|LessThan3~0_combout\ : std_logic;
SIGNAL \sd_read_inst|read_cnt~0_combout\ : std_logic;
SIGNAL \sd_read_inst|read_finish~0_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \sd_read_inst|read_finish~q\ : std_logic;
SIGNAL \sd_read_inst|mystate[3]~6_combout\ : std_logic;
SIGNAL \sd_read_inst|mystate[3]~7_combout\ : std_logic;
SIGNAL \sd_read_inst|mystate[1]~9_combout\ : std_logic;
SIGNAL \sd_read_inst|mystate[2]~4_combout\ : std_logic;
SIGNAL \sd_read_inst|mystate[2]~8_combout\ : std_logic;
SIGNAL \sd_read_inst|mystate[1]~3_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|ram_addr[0]~13_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|counter[0]~10_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|counter[4]~21\ : std_logic;
SIGNAL \ram_rw_control_inst|counter[5]~22_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|counter[5]~23\ : std_logic;
SIGNAL \ram_rw_control_inst|counter[6]~24_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|counter[6]~25\ : std_logic;
SIGNAL \ram_rw_control_inst|counter[7]~26_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|counter[7]~27\ : std_logic;
SIGNAL \ram_rw_control_inst|counter[8]~28_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|Equal4~1_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|counter[8]~29\ : std_logic;
SIGNAL \ram_rw_control_inst|counter[9]~30_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|counter[9]~14_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|counter[9]~15_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|counter[0]~11\ : std_logic;
SIGNAL \ram_rw_control_inst|counter[1]~13\ : std_logic;
SIGNAL \ram_rw_control_inst|counter[2]~17\ : std_logic;
SIGNAL \ram_rw_control_inst|counter[3]~18_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|counter[3]~19\ : std_logic;
SIGNAL \ram_rw_control_inst|counter[4]~20_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|counter[2]~16_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|Equal4~0_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|Equal4~2_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|ram_addr[0]~14\ : std_logic;
SIGNAL \ram_rw_control_inst|ram_addr[1]~15_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|ram_addr[1]~16\ : std_logic;
SIGNAL \ram_rw_control_inst|ram_addr[2]~17_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|ram_addr[2]~18\ : std_logic;
SIGNAL \ram_rw_control_inst|ram_addr[3]~20\ : std_logic;
SIGNAL \ram_rw_control_inst|ram_addr[4]~21_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|ram_addr[4]~22\ : std_logic;
SIGNAL \ram_rw_control_inst|ram_addr[5]~24\ : std_logic;
SIGNAL \ram_rw_control_inst|ram_addr[6]~25_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|ram_addr[6]~26\ : std_logic;
SIGNAL \ram_rw_control_inst|ram_addr[7]~27_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|ram_addr[7]~28\ : std_logic;
SIGNAL \ram_rw_control_inst|ram_addr[8]~30\ : std_logic;
SIGNAL \ram_rw_control_inst|ram_addr[9]~31_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|ram_addr[9]~32\ : std_logic;
SIGNAL \ram_rw_control_inst|ram_addr[10]~33_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|ram_addr[10]~34\ : std_logic;
SIGNAL \ram_rw_control_inst|ram_addr[11]~35_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|ram_addr[3]~19_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|always1~1_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|always1~0_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|always1~3_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|read_req~0_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|read_req~q\ : std_logic;
SIGNAL \ram_rw_control_inst|read_req_a~feeder_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|read_req_a~q\ : std_logic;
SIGNAL \ram_rw_control_inst|read_req_b~feeder_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|read_req_b~q\ : std_logic;
SIGNAL \ram_rw_control_inst|Add3~2_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|Add3~1\ : std_logic;
SIGNAL \ram_rw_control_inst|Add3~3_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|Add3~5_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|Add3~23_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|Add3~20_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|Add3~11_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|Add3~4\ : std_logic;
SIGNAL \ram_rw_control_inst|Add3~7\ : std_logic;
SIGNAL \ram_rw_control_inst|Add3~10\ : std_logic;
SIGNAL \ram_rw_control_inst|Add3~13\ : std_logic;
SIGNAL \ram_rw_control_inst|Add3~16\ : std_logic;
SIGNAL \ram_rw_control_inst|Add3~19\ : std_logic;
SIGNAL \ram_rw_control_inst|Add3~22\ : std_logic;
SIGNAL \ram_rw_control_inst|Add3~24_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|Add3~26_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|Add3~25\ : std_logic;
SIGNAL \ram_rw_control_inst|Add3~27_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|Add3~29_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|Add3~28\ : std_logic;
SIGNAL \ram_rw_control_inst|Add3~31\ : std_logic;
SIGNAL \ram_rw_control_inst|Add3~33_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|Add3~35_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|next_read_reg~0_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|Add3~30_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|Add3~32_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|next_read_reg~2_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|next_read_reg~3_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|next_read_reg~4_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|next_read_reg~q\ : std_logic;
SIGNAL \ram_rw_control_inst|next_read_reg_r1~feeder_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|next_read_reg_r1~q\ : std_logic;
SIGNAL \ram_rw_control_inst|next_read_reg_r2~feeder_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|next_read_reg_r2~q\ : std_logic;
SIGNAL \ram_rw_control_inst|next_read~feeder_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|next_read~q\ : std_logic;
SIGNAL \sd_read_inst|Selector49~0_combout\ : std_logic;
SIGNAL \sd_read_inst|Selector49~1_combout\ : std_logic;
SIGNAL \sd_read_inst|CMD17~0_combout\ : std_logic;
SIGNAL \sd_read_inst|CMD17[7]~1_combout\ : std_logic;
SIGNAL \sd_read_inst|CMD17[7]~2_combout\ : std_logic;
SIGNAL \sd_read_inst|CMD17~3_combout\ : std_logic;
SIGNAL \sd_read_inst|CMD17~4_combout\ : std_logic;
SIGNAL \sd_read_inst|CMD17~5_combout\ : std_logic;
SIGNAL \sd_read_inst|Equal0~0_combout\ : std_logic;
SIGNAL \sd_read_inst|CMD17~6_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|read_sec[0]~32_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|read_sec[19]~74_combout\ : std_logic;
SIGNAL \sd_read_inst|data_come~0_combout\ : std_logic;
SIGNAL \sd_read_inst|data_come~q\ : std_logic;
SIGNAL \ram_rw_control_inst|read_sec[15]~37_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|read_sec[3]~42_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|LessThan1~1_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|read_sec[5]~46_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|LessThan1~2_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|read_sec[13]~62_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|read_sec[15]~66_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|LessThan1~4_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|LessThan1~5_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|LessThan1~6_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|LessThan1~7_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|read_sec[29]~94_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|read_sec[30]~97\ : std_logic;
SIGNAL \ram_rw_control_inst|read_sec[31]~98_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|read_sec[15]~35_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|read_sec[15]~36_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|read_sec[0]~33\ : std_logic;
SIGNAL \ram_rw_control_inst|read_sec[1]~38_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|read_sec[1]~39\ : std_logic;
SIGNAL \ram_rw_control_inst|read_sec[2]~40_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|read_sec[2]~41\ : std_logic;
SIGNAL \ram_rw_control_inst|read_sec[3]~43\ : std_logic;
SIGNAL \ram_rw_control_inst|read_sec[4]~44_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|read_sec[4]~45\ : std_logic;
SIGNAL \ram_rw_control_inst|read_sec[5]~47\ : std_logic;
SIGNAL \ram_rw_control_inst|read_sec[6]~49\ : std_logic;
SIGNAL \ram_rw_control_inst|read_sec[7]~50_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|read_sec[7]~51\ : std_logic;
SIGNAL \ram_rw_control_inst|read_sec[8]~52_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|read_sec[8]~53\ : std_logic;
SIGNAL \ram_rw_control_inst|read_sec[9]~54_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|read_sec[9]~55\ : std_logic;
SIGNAL \ram_rw_control_inst|read_sec[10]~56_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|read_sec[10]~57\ : std_logic;
SIGNAL \ram_rw_control_inst|read_sec[11]~59\ : std_logic;
SIGNAL \ram_rw_control_inst|read_sec[12]~60_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|read_sec[12]~61\ : std_logic;
SIGNAL \ram_rw_control_inst|read_sec[13]~63\ : std_logic;
SIGNAL \ram_rw_control_inst|read_sec[14]~64_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|read_sec[14]~65\ : std_logic;
SIGNAL \ram_rw_control_inst|read_sec[15]~67\ : std_logic;
SIGNAL \ram_rw_control_inst|read_sec[16]~68_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|read_sec[16]~69\ : std_logic;
SIGNAL \ram_rw_control_inst|read_sec[17]~70_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|read_sec[17]~71\ : std_logic;
SIGNAL \ram_rw_control_inst|read_sec[18]~72_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|read_sec[18]~73\ : std_logic;
SIGNAL \ram_rw_control_inst|read_sec[19]~75\ : std_logic;
SIGNAL \ram_rw_control_inst|read_sec[20]~76_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|read_sec[20]~77\ : std_logic;
SIGNAL \ram_rw_control_inst|read_sec[21]~79\ : std_logic;
SIGNAL \ram_rw_control_inst|read_sec[22]~81\ : std_logic;
SIGNAL \ram_rw_control_inst|read_sec[23]~82_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|read_sec[23]~83\ : std_logic;
SIGNAL \ram_rw_control_inst|read_sec[24]~84_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|read_sec[24]~85\ : std_logic;
SIGNAL \ram_rw_control_inst|read_sec[25]~86_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|read_sec[25]~87\ : std_logic;
SIGNAL \ram_rw_control_inst|read_sec[26]~88_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|read_sec[26]~89\ : std_logic;
SIGNAL \ram_rw_control_inst|read_sec[27]~91\ : std_logic;
SIGNAL \ram_rw_control_inst|read_sec[28]~92_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|read_sec[28]~93\ : std_logic;
SIGNAL \ram_rw_control_inst|read_sec[29]~95\ : std_logic;
SIGNAL \ram_rw_control_inst|read_sec[30]~96_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|read_sec[27]~90_combout\ : std_logic;
SIGNAL \sd_read_inst|CMD17~36_combout\ : std_logic;
SIGNAL \sd_read_inst|CMD17~37_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|read_sec[21]~78_combout\ : std_logic;
SIGNAL \sd_read_inst|CMD17~38_combout\ : std_logic;
SIGNAL \sd_read_inst|CMD17~39_combout\ : std_logic;
SIGNAL \sd_read_inst|CMD17~40_combout\ : std_logic;
SIGNAL \sd_read_inst|CMD17~41_combout\ : std_logic;
SIGNAL \sd_read_inst|CMD17~42_combout\ : std_logic;
SIGNAL \sd_read_inst|CMD17~43_combout\ : std_logic;
SIGNAL \sd_read_inst|CMD17~44_combout\ : std_logic;
SIGNAL \sd_read_inst|CMD17~45_combout\ : std_logic;
SIGNAL \sd_read_inst|CMD17~46_combout\ : std_logic;
SIGNAL \sd_read_inst|CMD17~47_combout\ : std_logic;
SIGNAL \sd_read_inst|CMD17~48_combout\ : std_logic;
SIGNAL \sd_read_inst|CMD17~9_combout\ : std_logic;
SIGNAL \sd_read_inst|CMD17~7_combout\ : std_logic;
SIGNAL \sd_read_inst|CMD17~8_combout\ : std_logic;
SIGNAL \sd_read_inst|Equal0~1_combout\ : std_logic;
SIGNAL \sd_read_inst|CMD17~10_combout\ : std_logic;
SIGNAL \sd_read_inst|CMD17~11_combout\ : std_logic;
SIGNAL \sd_read_inst|CMD17~12_combout\ : std_logic;
SIGNAL \sd_read_inst|CMD17~13_combout\ : std_logic;
SIGNAL \sd_read_inst|Equal0~2_combout\ : std_logic;
SIGNAL \sd_read_inst|Equal0~4_combout\ : std_logic;
SIGNAL \sd_read_inst|Equal0~11_combout\ : std_logic;
SIGNAL \sd_read_inst|CMD17~17_combout\ : std_logic;
SIGNAL \sd_read_inst|CMD17~18_combout\ : std_logic;
SIGNAL \sd_read_inst|CMD17~19_combout\ : std_logic;
SIGNAL \sd_read_inst|CMD17~20_combout\ : std_logic;
SIGNAL \sd_read_inst|CMD17~21_combout\ : std_logic;
SIGNAL \sd_read_inst|CMD17~22_combout\ : std_logic;
SIGNAL \sd_read_inst|CMD17~23_combout\ : std_logic;
SIGNAL \sd_read_inst|CMD17~24_combout\ : std_logic;
SIGNAL \sd_read_inst|CMD17~25_combout\ : std_logic;
SIGNAL \sd_read_inst|CMD17~26_combout\ : std_logic;
SIGNAL \sd_read_inst|CMD17~27_combout\ : std_logic;
SIGNAL \sd_read_inst|CMD17~28_combout\ : std_logic;
SIGNAL \sd_read_inst|CMD17~29_combout\ : std_logic;
SIGNAL \sd_read_inst|CMD17~30_combout\ : std_logic;
SIGNAL \sd_read_inst|CMD17~31_combout\ : std_logic;
SIGNAL \sd_read_inst|CMD17~32_combout\ : std_logic;
SIGNAL \sd_read_inst|CMD17~33_combout\ : std_logic;
SIGNAL \sd_read_inst|CMD17~34_combout\ : std_logic;
SIGNAL \sd_read_inst|CMD17~35_combout\ : std_logic;
SIGNAL \sd_read_inst|Equal0~10_combout\ : std_logic;
SIGNAL \sd_read_inst|Equal0~13_combout\ : std_logic;
SIGNAL \sd_read_inst|Equal0~14_combout\ : std_logic;
SIGNAL \sd_read_inst|Mux3~0_combout\ : std_logic;
SIGNAL \sd_read_inst|Mux3~1_combout\ : std_logic;
SIGNAL \sd_read_inst|mystate[1]~2_combout\ : std_logic;
SIGNAL \sd_read_inst|SD_cs~feeder_combout\ : std_logic;
SIGNAL \sd_read_inst|SD_datain~0_combout\ : std_logic;
SIGNAL \sd_read_inst|SD_datain~1_combout\ : std_logic;
SIGNAL \sd_read_inst|SD_cs~q\ : std_logic;
SIGNAL \SD_cs~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector51~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|CMD55[47]~1_combout\ : std_logic;
SIGNAL \sd_initial_inst|CMD55[47]~2_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector50~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector81~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector80~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector79~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector78~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector77~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector76~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector75~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Equal4~6_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector74~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector73~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector72~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector71~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector70~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Equal4~7_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector68~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector67~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector66~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Equal4~8_combout\ : std_logic;
SIGNAL \sd_initial_inst|Equal4~9_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector56~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector55~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector54~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Equal4~12_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector53~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Equal4~13_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector60~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector59~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector58~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector62~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector61~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Equal4~11_combout\ : std_logic;
SIGNAL \sd_initial_inst|Equal4~14_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector97~1_combout\ : std_logic;
SIGNAL \sd_initial_inst|CMD55[0]~3_combout\ : std_logic;
SIGNAL \sd_initial_inst|CMD55[0]~4_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector96~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector95~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector94~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector93~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector92~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector91~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector90~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Equal4~1_combout\ : std_logic;
SIGNAL \sd_initial_inst|Equal4~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector89~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector88~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector87~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector86~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector85~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector84~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector82~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Equal4~3_combout\ : std_logic;
SIGNAL \sd_initial_inst|Equal4~4_combout\ : std_logic;
SIGNAL \sd_initial_inst|Equal4~15_combout\ : std_logic;
SIGNAL \sd_initial_inst|Mux4~3_combout\ : std_logic;
SIGNAL \sd_initial_inst|Selector98~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Mux4~4_combout\ : std_logic;
SIGNAL \sd_initial_inst|Mux4~1_combout\ : std_logic;
SIGNAL \sd_initial_inst|state~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Mux4~0_combout\ : std_logic;
SIGNAL \sd_initial_inst|Mux4~2_combout\ : std_logic;
SIGNAL \sd_initial_inst|Mux4~5_combout\ : std_logic;
SIGNAL \sd_initial_inst|SD_datain~feeder_combout\ : std_logic;
SIGNAL \sd_initial_inst|SD_datain~q\ : std_logic;
SIGNAL \sd_read_inst|CMD17~15_combout\ : std_logic;
SIGNAL \sd_read_inst|CMD17~16_combout\ : std_logic;
SIGNAL \sd_read_inst|SD_datain~2_combout\ : std_logic;
SIGNAL \sd_read_inst|SD_datain~q\ : std_logic;
SIGNAL \SD_datain~0_combout\ : std_logic;
SIGNAL \mywav_inst|sinwave_gen_inst|data_num[0]~4_combout\ : std_logic;
SIGNAL \DACLRC~input_o\ : std_logic;
SIGNAL \mywav_inst|sinwave_gen_inst|dacclk_a~feeder_combout\ : std_logic;
SIGNAL \mywav_inst|sinwave_gen_inst|dacclk_a~q\ : std_logic;
SIGNAL \mywav_inst|sinwave_gen_inst|dacclk_b~feeder_combout\ : std_logic;
SIGNAL \mywav_inst|sinwave_gen_inst|dacclk_b~q\ : std_logic;
SIGNAL \mywav_inst|sinwave_gen_inst|always1~0_combout\ : std_logic;
SIGNAL \BCLK~input_o\ : std_logic;
SIGNAL \mywav_inst|sinwave_gen_inst|bclk_a~feeder_combout\ : std_logic;
SIGNAL \mywav_inst|sinwave_gen_inst|bclk_a~q\ : std_logic;
SIGNAL \mywav_inst|sinwave_gen_inst|bclk_b~q\ : std_logic;
SIGNAL \mywav_inst|sinwave_gen_inst|data_num[0]~8_combout\ : std_logic;
SIGNAL \mywav_inst|sinwave_gen_inst|data_num[0]~5\ : std_logic;
SIGNAL \mywav_inst|sinwave_gen_inst|data_num[1]~7\ : std_logic;
SIGNAL \mywav_inst|sinwave_gen_inst|data_num[2]~9_combout\ : std_logic;
SIGNAL \mywav_inst|sinwave_gen_inst|data_num[2]~10\ : std_logic;
SIGNAL \mywav_inst|sinwave_gen_inst|data_num[3]~11_combout\ : std_logic;
SIGNAL \clk_50m~inputclkctrl_outclk\ : std_logic;
SIGNAL \ram_rw_control_inst|myram~0_combout\ : std_logic;
SIGNAL \mywav_inst|sinwave_gen_inst|myvalid~feeder_combout\ : std_logic;
SIGNAL \mywav_inst|sinwave_gen_inst|myvalid~q\ : std_logic;
SIGNAL \sd_read_inst|mydata_o~3_combout\ : std_logic;
SIGNAL \sd_read_inst|mydata[0]~0_combout\ : std_logic;
SIGNAL \sd_read_inst|mydata_o~2_combout\ : std_logic;
SIGNAL \sd_read_inst|mydata_o~0_combout\ : std_logic;
SIGNAL \sd_read_inst|mydata_o~4_combout\ : std_logic;
SIGNAL \sd_read_inst|mydata_o~7_combout\ : std_logic;
SIGNAL \sd_read_inst|mydata_o~5_combout\ : std_logic;
SIGNAL \sd_read_inst|mydata_o[0]~1_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|ram_addr[5]~23_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|ram_addr[8]~29_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|ram_addr[11]~36\ : std_logic;
SIGNAL \ram_rw_control_inst|ram_addr[12]~37_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|Add3~6_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|Add3~8_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|Add3~14_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|Add3~17_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a5~portbdataout\ : std_logic;
SIGNAL \ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a4~portbdataout\ : std_logic;
SIGNAL \mywav_inst|sinwave_gen_inst|data_num[1]~6_combout\ : std_logic;
SIGNAL \mywav_inst|sinwave_gen_inst|Mux0~7_combout\ : std_logic;
SIGNAL \mywav_inst|sinwave_gen_inst|Mux0~8_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a1~portbdataout\ : std_logic;
SIGNAL \mywav_inst|sinwave_gen_inst|Mux0~0_combout\ : std_logic;
SIGNAL \ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a2~portbdataout\ : std_logic;
SIGNAL \ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a3~portbdataout\ : std_logic;
SIGNAL \mywav_inst|sinwave_gen_inst|Mux0~1_combout\ : std_logic;
SIGNAL \sd_read_inst|mydata_o~6_combout\ : std_logic;
SIGNAL \sd_read_inst|mydata[6]~feeder_combout\ : std_logic;
SIGNAL \sd_read_inst|mydata_o~8_combout\ : std_logic;
SIGNAL \sd_read_inst|mydata_o[6]~feeder_combout\ : std_logic;
SIGNAL \mywav_inst|sinwave_gen_inst|Mux0~2_combout\ : std_logic;
SIGNAL \mywav_inst|sinwave_gen_inst|Mux0~3_combout\ : std_logic;
SIGNAL \mywav_inst|sinwave_gen_inst|Mux0~6_combout\ : std_logic;
SIGNAL \mywav_inst|sinwave_gen_inst|Mux0~9_combout\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|u1|i2c_sclk~0_combout\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|u1|i2c_sclk~1_combout\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|u1|sclk~3_combout\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|u1|sclk~4_combout\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|u1|sclk~q\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|u1|i2c_sclk~2_combout\ : std_logic;
SIGNAL \pll_inst|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \sd_initial_inst|state\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sd_initial_inst|rx\ : std_logic_vector(47 DOWNTO 0);
SIGNAL \sd_initial_inst|counter\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \sd_initial_inst|cnt\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \sd_initial_inst|aa\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \sd_initial_inst|CMD8\ : std_logic_vector(47 DOWNTO 0);
SIGNAL \sd_initial_inst|CMD55\ : std_logic_vector(47 DOWNTO 0);
SIGNAL \sd_initial_inst|CMD0\ : std_logic_vector(47 DOWNTO 0);
SIGNAL \sd_initial_inst|ACMD41\ : std_logic_vector(47 DOWNTO 0);
SIGNAL \sd_read_inst|read_cnt\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \sd_read_inst|mystate\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sd_read_inst|mydata_o\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \sd_read_inst|mydata\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \sd_read_inst|cntb\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \sd_read_inst|cnt\ : std_logic_vector(21 DOWNTO 0);
SIGNAL \sd_read_inst|aa\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \sd_read_inst|CMD17\ : std_logic_vector(47 DOWNTO 0);
SIGNAL \mywav_inst|reg_config_inst|reg_index\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mywav_inst|reg_config_inst|i2c_data\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \mywav_inst|reg_config_inst|clock_20k_cnt\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \mywav_inst|reg_config_inst|u1|cyc_count\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \mywav_inst|sinwave_gen_inst|data_num\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ram_rw_control_inst|wav_data\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ram_rw_control_inst|read_sec\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ram_rw_control_inst|ram_raddr\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rw_control_inst|ram_addr\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ram_rw_control_inst|counter\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \mywav_inst|reg_config_inst|ALT_INV_start~q\ : std_logic;
SIGNAL \sd_initial_inst|ALT_INV_reset~q\ : std_logic;
SIGNAL \sd_initial_inst|ALT_INV_init_o~q\ : std_logic;
SIGNAL \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_rst_n~input_o\ : std_logic;
SIGNAL \mywav_inst|reg_config_inst|u1|ALT_INV_reg_sdat~q\ : std_logic;
SIGNAL \sd_read_inst|ALT_INV_read_step.01~q\ : std_logic;

BEGIN

ww_clk_50m <= clk_50m;
ww_rst_n <= rst_n;
SD_clk <= ww_SD_clk;
SD_cs <= ww_SD_cs;
SD_datain <= ww_SD_datain;
ww_SD_dataout <= SD_dataout;
ww_DACLRC <= DACLRC;
ww_BCLK <= BCLK;
DACDAT <= ww_DACDAT;
ww_ADCLRC <= ADCLRC;
ww_ADCDAT <= ADCDAT;
I2C_SCLK <= ww_I2C_SCLK;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\pll_inst|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \clk_50m~input_o\);

\pll_inst|altpll_component|auto_generated|wire_pll1_clk\(0) <= \pll_inst|altpll_component|auto_generated|pll1_CLK_bus\(0);
\pll_inst|altpll_component|auto_generated|wire_pll1_clk\(1) <= \pll_inst|altpll_component|auto_generated|pll1_CLK_bus\(1);
\pll_inst|altpll_component|auto_generated|wire_pll1_clk\(2) <= \pll_inst|altpll_component|auto_generated|pll1_CLK_bus\(2);
\pll_inst|altpll_component|auto_generated|wire_pll1_clk\(3) <= \pll_inst|altpll_component|auto_generated|pll1_CLK_bus\(3);
\pll_inst|altpll_component|auto_generated|wire_pll1_clk\(4) <= \pll_inst|altpll_component|auto_generated|pll1_CLK_bus\(4);

\ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\(0) <= \sd_read_inst|mydata_o\(2);

\ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\ram_rw_control_inst|ram_addr\(12) & \ram_rw_control_inst|ram_addr\(11) & \ram_rw_control_inst|ram_addr\(10) & \ram_rw_control_inst|ram_addr\(9) & 
\ram_rw_control_inst|ram_addr\(8) & \ram_rw_control_inst|ram_addr\(7) & \ram_rw_control_inst|ram_addr\(6) & \ram_rw_control_inst|ram_addr\(5) & \ram_rw_control_inst|ram_addr\(4) & \ram_rw_control_inst|ram_addr\(3) & 
\ram_rw_control_inst|ram_addr\(2) & \ram_rw_control_inst|ram_addr\(1) & \ram_rw_control_inst|ram_addr\(0));

\ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\ <= (\ram_rw_control_inst|ram_raddr\(12) & \ram_rw_control_inst|ram_raddr\(11) & \ram_rw_control_inst|ram_raddr\(10) & \ram_rw_control_inst|ram_raddr\(9) & 
\ram_rw_control_inst|ram_raddr\(8) & \ram_rw_control_inst|ram_raddr\(7) & \ram_rw_control_inst|ram_raddr\(6) & \ram_rw_control_inst|ram_raddr\(5) & \ram_rw_control_inst|ram_raddr\(4) & \ram_rw_control_inst|ram_raddr\(3) & 
\ram_rw_control_inst|ram_raddr\(2) & \ram_rw_control_inst|ram_raddr\(1) & vcc);

\ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a2~portbdataout\ <= \ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(0);

\ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\(0) <= \sd_read_inst|mydata_o\(1);

\ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\ram_rw_control_inst|ram_addr\(12) & \ram_rw_control_inst|ram_addr\(11) & \ram_rw_control_inst|ram_addr\(10) & \ram_rw_control_inst|ram_addr\(9) & 
\ram_rw_control_inst|ram_addr\(8) & \ram_rw_control_inst|ram_addr\(7) & \ram_rw_control_inst|ram_addr\(6) & \ram_rw_control_inst|ram_addr\(5) & \ram_rw_control_inst|ram_addr\(4) & \ram_rw_control_inst|ram_addr\(3) & 
\ram_rw_control_inst|ram_addr\(2) & \ram_rw_control_inst|ram_addr\(1) & \ram_rw_control_inst|ram_addr\(0));

\ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\ <= (\ram_rw_control_inst|ram_raddr\(12) & \ram_rw_control_inst|ram_raddr\(11) & \ram_rw_control_inst|ram_raddr\(10) & \ram_rw_control_inst|ram_raddr\(9) & 
\ram_rw_control_inst|ram_raddr\(8) & \ram_rw_control_inst|ram_raddr\(7) & \ram_rw_control_inst|ram_raddr\(6) & \ram_rw_control_inst|ram_raddr\(5) & \ram_rw_control_inst|ram_raddr\(4) & \ram_rw_control_inst|ram_raddr\(3) & 
\ram_rw_control_inst|ram_raddr\(2) & \ram_rw_control_inst|ram_raddr\(1) & vcc);

\ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a1~portbdataout\ <= \ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\(0);

\ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\(0) <= \sd_read_inst|mydata_o\(0);

\ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\ram_rw_control_inst|ram_addr\(12) & \ram_rw_control_inst|ram_addr\(11) & \ram_rw_control_inst|ram_addr\(10) & \ram_rw_control_inst|ram_addr\(9) & 
\ram_rw_control_inst|ram_addr\(8) & \ram_rw_control_inst|ram_addr\(7) & \ram_rw_control_inst|ram_addr\(6) & \ram_rw_control_inst|ram_addr\(5) & \ram_rw_control_inst|ram_addr\(4) & \ram_rw_control_inst|ram_addr\(3) & 
\ram_rw_control_inst|ram_addr\(2) & \ram_rw_control_inst|ram_addr\(1) & \ram_rw_control_inst|ram_addr\(0));

\ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\ram_rw_control_inst|ram_raddr\(12) & \ram_rw_control_inst|ram_raddr\(11) & \ram_rw_control_inst|ram_raddr\(10) & \ram_rw_control_inst|ram_raddr\(9) & 
\ram_rw_control_inst|ram_raddr\(8) & \ram_rw_control_inst|ram_raddr\(7) & \ram_rw_control_inst|ram_raddr\(6) & \ram_rw_control_inst|ram_raddr\(5) & \ram_rw_control_inst|ram_raddr\(4) & \ram_rw_control_inst|ram_raddr\(3) & 
\ram_rw_control_inst|ram_raddr\(2) & \ram_rw_control_inst|ram_raddr\(1) & vcc);

\ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);

\ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\(0) <= \sd_read_inst|mydata_o\(3);

\ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\ram_rw_control_inst|ram_addr\(12) & \ram_rw_control_inst|ram_addr\(11) & \ram_rw_control_inst|ram_addr\(10) & \ram_rw_control_inst|ram_addr\(9) & 
\ram_rw_control_inst|ram_addr\(8) & \ram_rw_control_inst|ram_addr\(7) & \ram_rw_control_inst|ram_addr\(6) & \ram_rw_control_inst|ram_addr\(5) & \ram_rw_control_inst|ram_addr\(4) & \ram_rw_control_inst|ram_addr\(3) & 
\ram_rw_control_inst|ram_addr\(2) & \ram_rw_control_inst|ram_addr\(1) & \ram_rw_control_inst|ram_addr\(0));

\ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a3_PORTBADDR_bus\ <= (\ram_rw_control_inst|ram_raddr\(12) & \ram_rw_control_inst|ram_raddr\(11) & \ram_rw_control_inst|ram_raddr\(10) & \ram_rw_control_inst|ram_raddr\(9) & 
\ram_rw_control_inst|ram_raddr\(8) & \ram_rw_control_inst|ram_raddr\(7) & \ram_rw_control_inst|ram_raddr\(6) & \ram_rw_control_inst|ram_raddr\(5) & \ram_rw_control_inst|ram_raddr\(4) & \ram_rw_control_inst|ram_raddr\(3) & 
\ram_rw_control_inst|ram_raddr\(2) & \ram_rw_control_inst|ram_raddr\(1) & vcc);

\ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a3~portbdataout\ <= \ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\(0);

\ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\(0) <= \sd_read_inst|mydata_o\(5);

\ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\ram_rw_control_inst|ram_addr\(12) & \ram_rw_control_inst|ram_addr\(11) & \ram_rw_control_inst|ram_addr\(10) & \ram_rw_control_inst|ram_addr\(9) & 
\ram_rw_control_inst|ram_addr\(8) & \ram_rw_control_inst|ram_addr\(7) & \ram_rw_control_inst|ram_addr\(6) & \ram_rw_control_inst|ram_addr\(5) & \ram_rw_control_inst|ram_addr\(4) & \ram_rw_control_inst|ram_addr\(3) & 
\ram_rw_control_inst|ram_addr\(2) & \ram_rw_control_inst|ram_addr\(1) & \ram_rw_control_inst|ram_addr\(0));

\ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a5_PORTBADDR_bus\ <= (\ram_rw_control_inst|ram_raddr\(12) & \ram_rw_control_inst|ram_raddr\(11) & \ram_rw_control_inst|ram_raddr\(10) & \ram_rw_control_inst|ram_raddr\(9) & 
\ram_rw_control_inst|ram_raddr\(8) & \ram_rw_control_inst|ram_raddr\(7) & \ram_rw_control_inst|ram_raddr\(6) & \ram_rw_control_inst|ram_raddr\(5) & \ram_rw_control_inst|ram_raddr\(4) & \ram_rw_control_inst|ram_raddr\(3) & 
\ram_rw_control_inst|ram_raddr\(2) & \ram_rw_control_inst|ram_raddr\(1) & vcc);

\ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a5~portbdataout\ <= \ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\(0);

\ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\(0) <= \sd_read_inst|mydata_o\(6);

\ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\ram_rw_control_inst|ram_addr\(12) & \ram_rw_control_inst|ram_addr\(11) & \ram_rw_control_inst|ram_addr\(10) & \ram_rw_control_inst|ram_addr\(9) & 
\ram_rw_control_inst|ram_addr\(8) & \ram_rw_control_inst|ram_addr\(7) & \ram_rw_control_inst|ram_addr\(6) & \ram_rw_control_inst|ram_addr\(5) & \ram_rw_control_inst|ram_addr\(4) & \ram_rw_control_inst|ram_addr\(3) & 
\ram_rw_control_inst|ram_addr\(2) & \ram_rw_control_inst|ram_addr\(1) & \ram_rw_control_inst|ram_addr\(0));

\ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\ <= (\ram_rw_control_inst|ram_raddr\(12) & \ram_rw_control_inst|ram_raddr\(11) & \ram_rw_control_inst|ram_raddr\(10) & \ram_rw_control_inst|ram_raddr\(9) & 
\ram_rw_control_inst|ram_raddr\(8) & \ram_rw_control_inst|ram_raddr\(7) & \ram_rw_control_inst|ram_raddr\(6) & \ram_rw_control_inst|ram_raddr\(5) & \ram_rw_control_inst|ram_raddr\(4) & \ram_rw_control_inst|ram_raddr\(3) & 
\ram_rw_control_inst|ram_raddr\(2) & \ram_rw_control_inst|ram_raddr\(1) & vcc);

\ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a6~portbdataout\ <= \ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\(0);

\ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\(0) <= \sd_read_inst|mydata_o\(4);

\ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\ram_rw_control_inst|ram_addr\(12) & \ram_rw_control_inst|ram_addr\(11) & \ram_rw_control_inst|ram_addr\(10) & \ram_rw_control_inst|ram_addr\(9) & 
\ram_rw_control_inst|ram_addr\(8) & \ram_rw_control_inst|ram_addr\(7) & \ram_rw_control_inst|ram_addr\(6) & \ram_rw_control_inst|ram_addr\(5) & \ram_rw_control_inst|ram_addr\(4) & \ram_rw_control_inst|ram_addr\(3) & 
\ram_rw_control_inst|ram_addr\(2) & \ram_rw_control_inst|ram_addr\(1) & \ram_rw_control_inst|ram_addr\(0));

\ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\ <= (\ram_rw_control_inst|ram_raddr\(12) & \ram_rw_control_inst|ram_raddr\(11) & \ram_rw_control_inst|ram_raddr\(10) & \ram_rw_control_inst|ram_raddr\(9) & 
\ram_rw_control_inst|ram_raddr\(8) & \ram_rw_control_inst|ram_raddr\(7) & \ram_rw_control_inst|ram_raddr\(6) & \ram_rw_control_inst|ram_raddr\(5) & \ram_rw_control_inst|ram_raddr\(4) & \ram_rw_control_inst|ram_raddr\(3) & 
\ram_rw_control_inst|ram_raddr\(2) & \ram_rw_control_inst|ram_raddr\(1) & vcc);

\ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a4~portbdataout\ <= \ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(0);

\ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\(0) <= \sd_read_inst|mydata_o\(7);

\ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\ram_rw_control_inst|ram_addr\(12) & \ram_rw_control_inst|ram_addr\(11) & \ram_rw_control_inst|ram_addr\(10) & \ram_rw_control_inst|ram_addr\(9) & 
\ram_rw_control_inst|ram_addr\(8) & \ram_rw_control_inst|ram_addr\(7) & \ram_rw_control_inst|ram_addr\(6) & \ram_rw_control_inst|ram_addr\(5) & \ram_rw_control_inst|ram_addr\(4) & \ram_rw_control_inst|ram_addr\(3) & 
\ram_rw_control_inst|ram_addr\(2) & \ram_rw_control_inst|ram_addr\(1) & \ram_rw_control_inst|ram_addr\(0));

\ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a7_PORTBADDR_bus\ <= (\ram_rw_control_inst|ram_raddr\(12) & \ram_rw_control_inst|ram_raddr\(11) & \ram_rw_control_inst|ram_raddr\(10) & \ram_rw_control_inst|ram_raddr\(9) & 
\ram_rw_control_inst|ram_raddr\(8) & \ram_rw_control_inst|ram_raddr\(7) & \ram_rw_control_inst|ram_raddr\(6) & \ram_rw_control_inst|ram_raddr\(5) & \ram_rw_control_inst|ram_raddr\(4) & \ram_rw_control_inst|ram_raddr\(3) & 
\ram_rw_control_inst|ram_raddr\(2) & \ram_rw_control_inst|ram_raddr\(1) & vcc);

\ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a7~portbdataout\ <= \ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\(0);

\ram_rw_control_inst|myram_rtl_1|auto_generated|ram_block1a5_PORTADATAIN_bus\(0) <= \sd_read_inst|mydata_o\(5);

\ram_rw_control_inst|myram_rtl_1|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\ram_rw_control_inst|ram_addr\(12) & \ram_rw_control_inst|ram_addr\(11) & \ram_rw_control_inst|ram_addr\(10) & \ram_rw_control_inst|ram_addr\(9) & 
\ram_rw_control_inst|ram_addr\(8) & \ram_rw_control_inst|ram_addr\(7) & \ram_rw_control_inst|ram_addr\(6) & \ram_rw_control_inst|ram_addr\(5) & \ram_rw_control_inst|ram_addr\(4) & \ram_rw_control_inst|ram_addr\(3) & 
\ram_rw_control_inst|ram_addr\(2) & \ram_rw_control_inst|ram_addr\(1) & \ram_rw_control_inst|ram_addr\(0));

\ram_rw_control_inst|myram_rtl_1|auto_generated|ram_block1a5_PORTBADDR_bus\ <= (\ram_rw_control_inst|Add3~35_combout\ & \ram_rw_control_inst|Add3~32_combout\ & \ram_rw_control_inst|Add3~29_combout\ & \ram_rw_control_inst|Add3~26_combout\ & 
\ram_rw_control_inst|Add3~23_combout\ & \ram_rw_control_inst|Add3~20_combout\ & \ram_rw_control_inst|Add3~17_combout\ & \ram_rw_control_inst|Add3~14_combout\ & \ram_rw_control_inst|Add3~11_combout\ & \ram_rw_control_inst|Add3~8_combout\ & 
\ram_rw_control_inst|Add3~5_combout\ & \ram_rw_control_inst|Add3~2_combout\ & \~GND~combout\);

\ram_rw_control_inst|wav_data\(5) <= \ram_rw_control_inst|myram_rtl_1|auto_generated|ram_block1a5_PORTBDATAOUT_bus\(0);

\ram_rw_control_inst|myram_rtl_1|auto_generated|ram_block1a6_PORTADATAIN_bus\(0) <= \sd_read_inst|mydata_o\(6);

\ram_rw_control_inst|myram_rtl_1|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\ram_rw_control_inst|ram_addr\(12) & \ram_rw_control_inst|ram_addr\(11) & \ram_rw_control_inst|ram_addr\(10) & \ram_rw_control_inst|ram_addr\(9) & 
\ram_rw_control_inst|ram_addr\(8) & \ram_rw_control_inst|ram_addr\(7) & \ram_rw_control_inst|ram_addr\(6) & \ram_rw_control_inst|ram_addr\(5) & \ram_rw_control_inst|ram_addr\(4) & \ram_rw_control_inst|ram_addr\(3) & 
\ram_rw_control_inst|ram_addr\(2) & \ram_rw_control_inst|ram_addr\(1) & \ram_rw_control_inst|ram_addr\(0));

\ram_rw_control_inst|myram_rtl_1|auto_generated|ram_block1a6_PORTBADDR_bus\ <= (\ram_rw_control_inst|Add3~35_combout\ & \ram_rw_control_inst|Add3~32_combout\ & \ram_rw_control_inst|Add3~29_combout\ & \ram_rw_control_inst|Add3~26_combout\ & 
\ram_rw_control_inst|Add3~23_combout\ & \ram_rw_control_inst|Add3~20_combout\ & \ram_rw_control_inst|Add3~17_combout\ & \ram_rw_control_inst|Add3~14_combout\ & \ram_rw_control_inst|Add3~11_combout\ & \ram_rw_control_inst|Add3~8_combout\ & 
\ram_rw_control_inst|Add3~5_combout\ & \ram_rw_control_inst|Add3~2_combout\ & \~GND~combout\);

\ram_rw_control_inst|wav_data\(6) <= \ram_rw_control_inst|myram_rtl_1|auto_generated|ram_block1a6_PORTBDATAOUT_bus\(0);

\ram_rw_control_inst|myram_rtl_1|auto_generated|ram_block1a4_PORTADATAIN_bus\(0) <= \sd_read_inst|mydata_o\(4);

\ram_rw_control_inst|myram_rtl_1|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\ram_rw_control_inst|ram_addr\(12) & \ram_rw_control_inst|ram_addr\(11) & \ram_rw_control_inst|ram_addr\(10) & \ram_rw_control_inst|ram_addr\(9) & 
\ram_rw_control_inst|ram_addr\(8) & \ram_rw_control_inst|ram_addr\(7) & \ram_rw_control_inst|ram_addr\(6) & \ram_rw_control_inst|ram_addr\(5) & \ram_rw_control_inst|ram_addr\(4) & \ram_rw_control_inst|ram_addr\(3) & 
\ram_rw_control_inst|ram_addr\(2) & \ram_rw_control_inst|ram_addr\(1) & \ram_rw_control_inst|ram_addr\(0));

\ram_rw_control_inst|myram_rtl_1|auto_generated|ram_block1a4_PORTBADDR_bus\ <= (\ram_rw_control_inst|Add3~35_combout\ & \ram_rw_control_inst|Add3~32_combout\ & \ram_rw_control_inst|Add3~29_combout\ & \ram_rw_control_inst|Add3~26_combout\ & 
\ram_rw_control_inst|Add3~23_combout\ & \ram_rw_control_inst|Add3~20_combout\ & \ram_rw_control_inst|Add3~17_combout\ & \ram_rw_control_inst|Add3~14_combout\ & \ram_rw_control_inst|Add3~11_combout\ & \ram_rw_control_inst|Add3~8_combout\ & 
\ram_rw_control_inst|Add3~5_combout\ & \ram_rw_control_inst|Add3~2_combout\ & \~GND~combout\);

\ram_rw_control_inst|wav_data\(4) <= \ram_rw_control_inst|myram_rtl_1|auto_generated|ram_block1a4_PORTBDATAOUT_bus\(0);

\ram_rw_control_inst|myram_rtl_1|auto_generated|ram_block1a7_PORTADATAIN_bus\(0) <= \sd_read_inst|mydata_o\(7);

\ram_rw_control_inst|myram_rtl_1|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\ram_rw_control_inst|ram_addr\(12) & \ram_rw_control_inst|ram_addr\(11) & \ram_rw_control_inst|ram_addr\(10) & \ram_rw_control_inst|ram_addr\(9) & 
\ram_rw_control_inst|ram_addr\(8) & \ram_rw_control_inst|ram_addr\(7) & \ram_rw_control_inst|ram_addr\(6) & \ram_rw_control_inst|ram_addr\(5) & \ram_rw_control_inst|ram_addr\(4) & \ram_rw_control_inst|ram_addr\(3) & 
\ram_rw_control_inst|ram_addr\(2) & \ram_rw_control_inst|ram_addr\(1) & \ram_rw_control_inst|ram_addr\(0));

\ram_rw_control_inst|myram_rtl_1|auto_generated|ram_block1a7_PORTBADDR_bus\ <= (\ram_rw_control_inst|Add3~35_combout\ & \ram_rw_control_inst|Add3~32_combout\ & \ram_rw_control_inst|Add3~29_combout\ & \ram_rw_control_inst|Add3~26_combout\ & 
\ram_rw_control_inst|Add3~23_combout\ & \ram_rw_control_inst|Add3~20_combout\ & \ram_rw_control_inst|Add3~17_combout\ & \ram_rw_control_inst|Add3~14_combout\ & \ram_rw_control_inst|Add3~11_combout\ & \ram_rw_control_inst|Add3~8_combout\ & 
\ram_rw_control_inst|Add3~5_combout\ & \ram_rw_control_inst|Add3~2_combout\ & \~GND~combout\);

\ram_rw_control_inst|wav_data\(7) <= \ram_rw_control_inst|myram_rtl_1|auto_generated|ram_block1a7_PORTBDATAOUT_bus\(0);

\ram_rw_control_inst|myram_rtl_1|auto_generated|ram_block1a2_PORTADATAIN_bus\(0) <= \sd_read_inst|mydata_o\(2);

\ram_rw_control_inst|myram_rtl_1|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\ram_rw_control_inst|ram_addr\(12) & \ram_rw_control_inst|ram_addr\(11) & \ram_rw_control_inst|ram_addr\(10) & \ram_rw_control_inst|ram_addr\(9) & 
\ram_rw_control_inst|ram_addr\(8) & \ram_rw_control_inst|ram_addr\(7) & \ram_rw_control_inst|ram_addr\(6) & \ram_rw_control_inst|ram_addr\(5) & \ram_rw_control_inst|ram_addr\(4) & \ram_rw_control_inst|ram_addr\(3) & 
\ram_rw_control_inst|ram_addr\(2) & \ram_rw_control_inst|ram_addr\(1) & \ram_rw_control_inst|ram_addr\(0));

\ram_rw_control_inst|myram_rtl_1|auto_generated|ram_block1a2_PORTBADDR_bus\ <= (\ram_rw_control_inst|Add3~35_combout\ & \ram_rw_control_inst|Add3~32_combout\ & \ram_rw_control_inst|Add3~29_combout\ & \ram_rw_control_inst|Add3~26_combout\ & 
\ram_rw_control_inst|Add3~23_combout\ & \ram_rw_control_inst|Add3~20_combout\ & \ram_rw_control_inst|Add3~17_combout\ & \ram_rw_control_inst|Add3~14_combout\ & \ram_rw_control_inst|Add3~11_combout\ & \ram_rw_control_inst|Add3~8_combout\ & 
\ram_rw_control_inst|Add3~5_combout\ & \ram_rw_control_inst|Add3~2_combout\ & \~GND~combout\);

\ram_rw_control_inst|wav_data\(2) <= \ram_rw_control_inst|myram_rtl_1|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(0);

\ram_rw_control_inst|myram_rtl_1|auto_generated|ram_block1a1_PORTADATAIN_bus\(0) <= \sd_read_inst|mydata_o\(1);

\ram_rw_control_inst|myram_rtl_1|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\ram_rw_control_inst|ram_addr\(12) & \ram_rw_control_inst|ram_addr\(11) & \ram_rw_control_inst|ram_addr\(10) & \ram_rw_control_inst|ram_addr\(9) & 
\ram_rw_control_inst|ram_addr\(8) & \ram_rw_control_inst|ram_addr\(7) & \ram_rw_control_inst|ram_addr\(6) & \ram_rw_control_inst|ram_addr\(5) & \ram_rw_control_inst|ram_addr\(4) & \ram_rw_control_inst|ram_addr\(3) & 
\ram_rw_control_inst|ram_addr\(2) & \ram_rw_control_inst|ram_addr\(1) & \ram_rw_control_inst|ram_addr\(0));

\ram_rw_control_inst|myram_rtl_1|auto_generated|ram_block1a1_PORTBADDR_bus\ <= (\ram_rw_control_inst|Add3~35_combout\ & \ram_rw_control_inst|Add3~32_combout\ & \ram_rw_control_inst|Add3~29_combout\ & \ram_rw_control_inst|Add3~26_combout\ & 
\ram_rw_control_inst|Add3~23_combout\ & \ram_rw_control_inst|Add3~20_combout\ & \ram_rw_control_inst|Add3~17_combout\ & \ram_rw_control_inst|Add3~14_combout\ & \ram_rw_control_inst|Add3~11_combout\ & \ram_rw_control_inst|Add3~8_combout\ & 
\ram_rw_control_inst|Add3~5_combout\ & \ram_rw_control_inst|Add3~2_combout\ & \~GND~combout\);

\ram_rw_control_inst|wav_data\(1) <= \ram_rw_control_inst|myram_rtl_1|auto_generated|ram_block1a1_PORTBDATAOUT_bus\(0);

\ram_rw_control_inst|myram_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\(0) <= \sd_read_inst|mydata_o\(0);

\ram_rw_control_inst|myram_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\ram_rw_control_inst|ram_addr\(12) & \ram_rw_control_inst|ram_addr\(11) & \ram_rw_control_inst|ram_addr\(10) & \ram_rw_control_inst|ram_addr\(9) & 
\ram_rw_control_inst|ram_addr\(8) & \ram_rw_control_inst|ram_addr\(7) & \ram_rw_control_inst|ram_addr\(6) & \ram_rw_control_inst|ram_addr\(5) & \ram_rw_control_inst|ram_addr\(4) & \ram_rw_control_inst|ram_addr\(3) & 
\ram_rw_control_inst|ram_addr\(2) & \ram_rw_control_inst|ram_addr\(1) & \ram_rw_control_inst|ram_addr\(0));

\ram_rw_control_inst|myram_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\ram_rw_control_inst|Add3~35_combout\ & \ram_rw_control_inst|Add3~32_combout\ & \ram_rw_control_inst|Add3~29_combout\ & \ram_rw_control_inst|Add3~26_combout\ & 
\ram_rw_control_inst|Add3~23_combout\ & \ram_rw_control_inst|Add3~20_combout\ & \ram_rw_control_inst|Add3~17_combout\ & \ram_rw_control_inst|Add3~14_combout\ & \ram_rw_control_inst|Add3~11_combout\ & \ram_rw_control_inst|Add3~8_combout\ & 
\ram_rw_control_inst|Add3~5_combout\ & \ram_rw_control_inst|Add3~2_combout\ & \~GND~combout\);

\ram_rw_control_inst|wav_data\(0) <= \ram_rw_control_inst|myram_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);

\ram_rw_control_inst|myram_rtl_1|auto_generated|ram_block1a3_PORTADATAIN_bus\(0) <= \sd_read_inst|mydata_o\(3);

\ram_rw_control_inst|myram_rtl_1|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\ram_rw_control_inst|ram_addr\(12) & \ram_rw_control_inst|ram_addr\(11) & \ram_rw_control_inst|ram_addr\(10) & \ram_rw_control_inst|ram_addr\(9) & 
\ram_rw_control_inst|ram_addr\(8) & \ram_rw_control_inst|ram_addr\(7) & \ram_rw_control_inst|ram_addr\(6) & \ram_rw_control_inst|ram_addr\(5) & \ram_rw_control_inst|ram_addr\(4) & \ram_rw_control_inst|ram_addr\(3) & 
\ram_rw_control_inst|ram_addr\(2) & \ram_rw_control_inst|ram_addr\(1) & \ram_rw_control_inst|ram_addr\(0));

\ram_rw_control_inst|myram_rtl_1|auto_generated|ram_block1a3_PORTBADDR_bus\ <= (\ram_rw_control_inst|Add3~35_combout\ & \ram_rw_control_inst|Add3~32_combout\ & \ram_rw_control_inst|Add3~29_combout\ & \ram_rw_control_inst|Add3~26_combout\ & 
\ram_rw_control_inst|Add3~23_combout\ & \ram_rw_control_inst|Add3~20_combout\ & \ram_rw_control_inst|Add3~17_combout\ & \ram_rw_control_inst|Add3~14_combout\ & \ram_rw_control_inst|Add3~11_combout\ & \ram_rw_control_inst|Add3~8_combout\ & 
\ram_rw_control_inst|Add3~5_combout\ & \ram_rw_control_inst|Add3~2_combout\ & \~GND~combout\);

\ram_rw_control_inst|wav_data\(3) <= \ram_rw_control_inst|myram_rtl_1|auto_generated|ram_block1a3_PORTBDATAOUT_bus\(0);

\pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \pll_inst|altpll_component|auto_generated|wire_pll1_clk\(0));

\mywav_inst|reg_config_inst|clock_20k~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \mywav_inst|reg_config_inst|clock_20k~q\);

\clk_50m~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_50m~input_o\);
\mywav_inst|reg_config_inst|ALT_INV_start~q\ <= NOT \mywav_inst|reg_config_inst|start~q\;
\sd_initial_inst|ALT_INV_reset~q\ <= NOT \sd_initial_inst|reset~q\;
\sd_initial_inst|ALT_INV_init_o~q\ <= NOT \sd_initial_inst|init_o~q\;
\pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\ <= NOT \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\;
\ALT_INV_rst_n~input_o\ <= NOT \rst_n~input_o\;
\mywav_inst|reg_config_inst|u1|ALT_INV_reg_sdat~q\ <= NOT \mywav_inst|reg_config_inst|u1|reg_sdat~q\;
\sd_read_inst|ALT_INV_read_step.01~q\ <= NOT \sd_read_inst|read_step.01~q\;

-- Location: M9K_X27_Y21_N0
\ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a6\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "ram_rw_control:ram_rw_control_inst|altsyncram:myram_rtl_0|altsyncram_60e1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 8192,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 6,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 8192,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \ram_rw_control_inst|myram~0_combout\,
	portbre => VCC,
	clk0 => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	clk1 => \clk_50m~inputclkctrl_outclk\,
	ena0 => \ram_rw_control_inst|myram~0_combout\,
	ena1 => \mywav_inst|sinwave_gen_inst|myvalid~q\,
	portadatain => \ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a6_PORTADATAIN_bus\,
	portaaddr => \ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a6_PORTAADDR_bus\,
	portbaddr => \ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a6_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a6_PORTBDATAOUT_bus\);

-- Location: M9K_X27_Y22_N0
\ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a7\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "ram_rw_control:ram_rw_control_inst|altsyncram:myram_rtl_0|altsyncram_60e1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 8192,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 7,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 8192,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \ram_rw_control_inst|myram~0_combout\,
	portbre => VCC,
	clk0 => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	clk1 => \clk_50m~inputclkctrl_outclk\,
	ena0 => \ram_rw_control_inst|myram~0_combout\,
	ena1 => \mywav_inst|sinwave_gen_inst|myvalid~q\,
	portadatain => \ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a7_PORTADATAIN_bus\,
	portaaddr => \ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a7_PORTAADDR_bus\,
	portbaddr => \ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a7_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a7_PORTBDATAOUT_bus\);

-- Location: FF_X23_Y22_N13
\sd_read_inst|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_read_inst|cnt[1]~27_combout\,
	sclr => \sd_read_inst|cnt[8]~24_combout\,
	ena => \sd_read_inst|cnt[21]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|cnt\(1));

-- Location: FF_X23_Y22_N23
\sd_read_inst|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_read_inst|cnt[6]~37_combout\,
	sclr => \sd_read_inst|cnt[8]~24_combout\,
	ena => \sd_read_inst|cnt[21]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|cnt\(6));

-- Location: FF_X23_Y22_N31
\sd_read_inst|cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_read_inst|cnt[10]~45_combout\,
	sclr => \sd_read_inst|cnt[8]~24_combout\,
	ena => \sd_read_inst|cnt[21]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|cnt\(10));

-- Location: FF_X23_Y21_N7
\sd_read_inst|cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_read_inst|cnt[14]~53_combout\,
	sclr => \sd_read_inst|cnt[8]~24_combout\,
	ena => \sd_read_inst|cnt[21]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|cnt\(14));

-- Location: FF_X23_Y21_N11
\sd_read_inst|cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_read_inst|cnt[16]~57_combout\,
	sclr => \sd_read_inst|cnt[8]~24_combout\,
	ena => \sd_read_inst|cnt[21]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|cnt\(16));

-- Location: FF_X23_Y21_N13
\sd_read_inst|cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_read_inst|cnt[17]~59_combout\,
	sclr => \sd_read_inst|cnt[8]~24_combout\,
	ena => \sd_read_inst|cnt[21]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|cnt\(17));

-- Location: FF_X24_Y20_N29
\sd_read_inst|myvalid_o\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_read_inst|myvalid_o~0_combout\,
	sclr => \sd_initial_inst|ALT_INV_init_o~q\,
	ena => \sd_read_inst|myvalid_o~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|myvalid_o~q\);

-- Location: FF_X23_Y19_N11
\ram_rw_control_inst|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ram_rw_control_inst|counter[1]~12_combout\,
	sclr => \sd_initial_inst|ALT_INV_init_o~q\,
	ena => \ram_rw_control_inst|counter[9]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_rw_control_inst|counter\(1));

-- Location: M9K_X27_Y16_N0
\ram_rw_control_inst|myram_rtl_1|auto_generated|ram_block1a5\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_output_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "ram_rw_control:ram_rw_control_inst|altsyncram:myram_rtl_1|altsyncram_m6d1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 8192,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 5,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 8192,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \ram_rw_control_inst|myram~0_combout\,
	portbre => VCC,
	clk0 => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	clk1 => \clk_50m~inputclkctrl_outclk\,
	ena0 => \ram_rw_control_inst|myram~0_combout\,
	ena1 => \mywav_inst|sinwave_gen_inst|myvalid~q\,
	portadatain => \ram_rw_control_inst|myram_rtl_1|auto_generated|ram_block1a5_PORTADATAIN_bus\,
	portaaddr => \ram_rw_control_inst|myram_rtl_1|auto_generated|ram_block1a5_PORTAADDR_bus\,
	portbaddr => \ram_rw_control_inst|myram_rtl_1|auto_generated|ram_block1a5_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \ram_rw_control_inst|myram_rtl_1|auto_generated|ram_block1a5_PORTBDATAOUT_bus\);

-- Location: M9K_X27_Y15_N0
\ram_rw_control_inst|myram_rtl_1|auto_generated|ram_block1a2\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_output_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "ram_rw_control:ram_rw_control_inst|altsyncram:myram_rtl_1|altsyncram_m6d1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 8192,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 8192,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \ram_rw_control_inst|myram~0_combout\,
	portbre => VCC,
	clk0 => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	clk1 => \clk_50m~inputclkctrl_outclk\,
	ena0 => \ram_rw_control_inst|myram~0_combout\,
	ena1 => \mywav_inst|sinwave_gen_inst|myvalid~q\,
	portadatain => \ram_rw_control_inst|myram_rtl_1|auto_generated|ram_block1a2_PORTADATAIN_bus\,
	portaaddr => \ram_rw_control_inst|myram_rtl_1|auto_generated|ram_block1a2_PORTAADDR_bus\,
	portbaddr => \ram_rw_control_inst|myram_rtl_1|auto_generated|ram_block1a2_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \ram_rw_control_inst|myram_rtl_1|auto_generated|ram_block1a2_PORTBDATAOUT_bus\);

-- Location: M9K_X15_Y16_N0
\ram_rw_control_inst|myram_rtl_1|auto_generated|ram_block1a1\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_output_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "ram_rw_control:ram_rw_control_inst|altsyncram:myram_rtl_1|altsyncram_m6d1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 8192,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 8192,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \ram_rw_control_inst|myram~0_combout\,
	portbre => VCC,
	clk0 => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	clk1 => \clk_50m~inputclkctrl_outclk\,
	ena0 => \ram_rw_control_inst|myram~0_combout\,
	ena1 => \mywav_inst|sinwave_gen_inst|myvalid~q\,
	portadatain => \ram_rw_control_inst|myram_rtl_1|auto_generated|ram_block1a1_PORTADATAIN_bus\,
	portaaddr => \ram_rw_control_inst|myram_rtl_1|auto_generated|ram_block1a1_PORTAADDR_bus\,
	portbaddr => \ram_rw_control_inst|myram_rtl_1|auto_generated|ram_block1a1_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \ram_rw_control_inst|myram_rtl_1|auto_generated|ram_block1a1_PORTBDATAOUT_bus\);

-- Location: M9K_X15_Y15_N0
\ram_rw_control_inst|myram_rtl_1|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_output_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "ram_rw_control:ram_rw_control_inst|altsyncram:myram_rtl_1|altsyncram_m6d1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 8192,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 8192,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \ram_rw_control_inst|myram~0_combout\,
	portbre => VCC,
	clk0 => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	clk1 => \clk_50m~inputclkctrl_outclk\,
	ena0 => \ram_rw_control_inst|myram~0_combout\,
	ena1 => \mywav_inst|sinwave_gen_inst|myvalid~q\,
	portadatain => \ram_rw_control_inst|myram_rtl_1|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \ram_rw_control_inst|myram_rtl_1|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \ram_rw_control_inst|myram_rtl_1|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \ram_rw_control_inst|myram_rtl_1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: M9K_X15_Y17_N0
\ram_rw_control_inst|myram_rtl_1|auto_generated|ram_block1a3\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_output_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "ram_rw_control:ram_rw_control_inst|altsyncram:myram_rtl_1|altsyncram_m6d1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 8192,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 3,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 8192,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \ram_rw_control_inst|myram~0_combout\,
	portbre => VCC,
	clk0 => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	clk1 => \clk_50m~inputclkctrl_outclk\,
	ena0 => \ram_rw_control_inst|myram~0_combout\,
	ena1 => \mywav_inst|sinwave_gen_inst|myvalid~q\,
	portadatain => \ram_rw_control_inst|myram_rtl_1|auto_generated|ram_block1a3_PORTADATAIN_bus\,
	portaaddr => \ram_rw_control_inst|myram_rtl_1|auto_generated|ram_block1a3_PORTAADDR_bus\,
	portbaddr => \ram_rw_control_inst|myram_rtl_1|auto_generated|ram_block1a3_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \ram_rw_control_inst|myram_rtl_1|auto_generated|ram_block1a3_PORTBDATAOUT_bus\);

-- Location: FF_X32_Y12_N31
\mywav_inst|reg_config_inst|clock_20k_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	d => \mywav_inst|reg_config_inst|clock_20k_cnt[15]~46_combout\,
	clrn => \rst_n~input_o\,
	sclr => \mywav_inst|reg_config_inst|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mywav_inst|reg_config_inst|clock_20k_cnt\(15));

-- Location: FF_X32_Y12_N11
\mywav_inst|reg_config_inst|clock_20k_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	d => \mywav_inst|reg_config_inst|clock_20k_cnt[5]~26_combout\,
	clrn => \rst_n~input_o\,
	sclr => \mywav_inst|reg_config_inst|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mywav_inst|reg_config_inst|clock_20k_cnt\(5));

-- Location: FF_X32_Y12_N13
\mywav_inst|reg_config_inst|clock_20k_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	d => \mywav_inst|reg_config_inst|clock_20k_cnt[6]~28_combout\,
	clrn => \rst_n~input_o\,
	sclr => \mywav_inst|reg_config_inst|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mywav_inst|reg_config_inst|clock_20k_cnt\(6));

-- Location: FF_X32_Y12_N15
\mywav_inst|reg_config_inst|clock_20k_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	d => \mywav_inst|reg_config_inst|clock_20k_cnt[7]~30_combout\,
	clrn => \rst_n~input_o\,
	sclr => \mywav_inst|reg_config_inst|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mywav_inst|reg_config_inst|clock_20k_cnt\(7));

-- Location: FF_X32_Y12_N1
\mywav_inst|reg_config_inst|clock_20k_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	d => \mywav_inst|reg_config_inst|clock_20k_cnt[0]~16_combout\,
	clrn => \rst_n~input_o\,
	sclr => \mywav_inst|reg_config_inst|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mywav_inst|reg_config_inst|clock_20k_cnt\(0));

-- Location: FF_X32_Y12_N3
\mywav_inst|reg_config_inst|clock_20k_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	d => \mywav_inst|reg_config_inst|clock_20k_cnt[1]~18_combout\,
	clrn => \rst_n~input_o\,
	sclr => \mywav_inst|reg_config_inst|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mywav_inst|reg_config_inst|clock_20k_cnt\(1));

-- Location: FF_X32_Y12_N5
\mywav_inst|reg_config_inst|clock_20k_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	d => \mywav_inst|reg_config_inst|clock_20k_cnt[2]~20_combout\,
	clrn => \rst_n~input_o\,
	sclr => \mywav_inst|reg_config_inst|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mywav_inst|reg_config_inst|clock_20k_cnt\(2));

-- Location: FF_X32_Y12_N7
\mywav_inst|reg_config_inst|clock_20k_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	d => \mywav_inst|reg_config_inst|clock_20k_cnt[3]~22_combout\,
	clrn => \rst_n~input_o\,
	sclr => \mywav_inst|reg_config_inst|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mywav_inst|reg_config_inst|clock_20k_cnt\(3));

-- Location: FF_X32_Y12_N9
\mywav_inst|reg_config_inst|clock_20k_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	d => \mywav_inst|reg_config_inst|clock_20k_cnt[4]~24_combout\,
	clrn => \rst_n~input_o\,
	sclr => \mywav_inst|reg_config_inst|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mywav_inst|reg_config_inst|clock_20k_cnt\(4));

-- Location: FF_X32_Y12_N17
\mywav_inst|reg_config_inst|clock_20k_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	d => \mywav_inst|reg_config_inst|clock_20k_cnt[8]~32_combout\,
	clrn => \rst_n~input_o\,
	sclr => \mywav_inst|reg_config_inst|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mywav_inst|reg_config_inst|clock_20k_cnt\(8));

-- Location: FF_X32_Y12_N19
\mywav_inst|reg_config_inst|clock_20k_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	d => \mywav_inst|reg_config_inst|clock_20k_cnt[9]~34_combout\,
	clrn => \rst_n~input_o\,
	sclr => \mywav_inst|reg_config_inst|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mywav_inst|reg_config_inst|clock_20k_cnt\(9));

-- Location: FF_X32_Y12_N21
\mywav_inst|reg_config_inst|clock_20k_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	d => \mywav_inst|reg_config_inst|clock_20k_cnt[10]~36_combout\,
	clrn => \rst_n~input_o\,
	sclr => \mywav_inst|reg_config_inst|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mywav_inst|reg_config_inst|clock_20k_cnt\(10));

-- Location: FF_X32_Y12_N23
\mywav_inst|reg_config_inst|clock_20k_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	d => \mywav_inst|reg_config_inst|clock_20k_cnt[11]~38_combout\,
	clrn => \rst_n~input_o\,
	sclr => \mywav_inst|reg_config_inst|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mywav_inst|reg_config_inst|clock_20k_cnt\(11));

-- Location: FF_X32_Y12_N25
\mywav_inst|reg_config_inst|clock_20k_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	d => \mywav_inst|reg_config_inst|clock_20k_cnt[12]~40_combout\,
	clrn => \rst_n~input_o\,
	sclr => \mywav_inst|reg_config_inst|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mywav_inst|reg_config_inst|clock_20k_cnt\(12));

-- Location: FF_X32_Y12_N27
\mywav_inst|reg_config_inst|clock_20k_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	d => \mywav_inst|reg_config_inst|clock_20k_cnt[13]~42_combout\,
	clrn => \rst_n~input_o\,
	sclr => \mywav_inst|reg_config_inst|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mywav_inst|reg_config_inst|clock_20k_cnt\(13));

-- Location: FF_X32_Y12_N29
\mywav_inst|reg_config_inst|clock_20k_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	d => \mywav_inst|reg_config_inst|clock_20k_cnt[14]~44_combout\,
	clrn => \rst_n~input_o\,
	sclr => \mywav_inst|reg_config_inst|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mywav_inst|reg_config_inst|clock_20k_cnt\(14));

-- Location: LCCOMB_X23_Y22_N12
\sd_read_inst|cnt[1]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|cnt[1]~27_combout\ = (\sd_read_inst|cnt\(1) & (!\sd_read_inst|cnt[0]~23\)) # (!\sd_read_inst|cnt\(1) & ((\sd_read_inst|cnt[0]~23\) # (GND)))
-- \sd_read_inst|cnt[1]~28\ = CARRY((!\sd_read_inst|cnt[0]~23\) # (!\sd_read_inst|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sd_read_inst|cnt\(1),
	datad => VCC,
	cin => \sd_read_inst|cnt[0]~23\,
	combout => \sd_read_inst|cnt[1]~27_combout\,
	cout => \sd_read_inst|cnt[1]~28\);

-- Location: LCCOMB_X23_Y22_N22
\sd_read_inst|cnt[6]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|cnt[6]~37_combout\ = (\sd_read_inst|cnt\(6) & (\sd_read_inst|cnt[5]~36\ $ (GND))) # (!\sd_read_inst|cnt\(6) & (!\sd_read_inst|cnt[5]~36\ & VCC))
-- \sd_read_inst|cnt[6]~38\ = CARRY((\sd_read_inst|cnt\(6) & !\sd_read_inst|cnt[5]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sd_read_inst|cnt\(6),
	datad => VCC,
	cin => \sd_read_inst|cnt[5]~36\,
	combout => \sd_read_inst|cnt[6]~37_combout\,
	cout => \sd_read_inst|cnt[6]~38\);

-- Location: LCCOMB_X23_Y22_N30
\sd_read_inst|cnt[10]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|cnt[10]~45_combout\ = (\sd_read_inst|cnt\(10) & (\sd_read_inst|cnt[9]~44\ $ (GND))) # (!\sd_read_inst|cnt\(10) & (!\sd_read_inst|cnt[9]~44\ & VCC))
-- \sd_read_inst|cnt[10]~46\ = CARRY((\sd_read_inst|cnt\(10) & !\sd_read_inst|cnt[9]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sd_read_inst|cnt\(10),
	datad => VCC,
	cin => \sd_read_inst|cnt[9]~44\,
	combout => \sd_read_inst|cnt[10]~45_combout\,
	cout => \sd_read_inst|cnt[10]~46\);

-- Location: LCCOMB_X23_Y21_N6
\sd_read_inst|cnt[14]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|cnt[14]~53_combout\ = (\sd_read_inst|cnt\(14) & (\sd_read_inst|cnt[13]~52\ $ (GND))) # (!\sd_read_inst|cnt\(14) & (!\sd_read_inst|cnt[13]~52\ & VCC))
-- \sd_read_inst|cnt[14]~54\ = CARRY((\sd_read_inst|cnt\(14) & !\sd_read_inst|cnt[13]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sd_read_inst|cnt\(14),
	datad => VCC,
	cin => \sd_read_inst|cnt[13]~52\,
	combout => \sd_read_inst|cnt[14]~53_combout\,
	cout => \sd_read_inst|cnt[14]~54\);

-- Location: LCCOMB_X23_Y21_N10
\sd_read_inst|cnt[16]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|cnt[16]~57_combout\ = (\sd_read_inst|cnt\(16) & (\sd_read_inst|cnt[15]~56\ $ (GND))) # (!\sd_read_inst|cnt\(16) & (!\sd_read_inst|cnt[15]~56\ & VCC))
-- \sd_read_inst|cnt[16]~58\ = CARRY((\sd_read_inst|cnt\(16) & !\sd_read_inst|cnt[15]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sd_read_inst|cnt\(16),
	datad => VCC,
	cin => \sd_read_inst|cnt[15]~56\,
	combout => \sd_read_inst|cnt[16]~57_combout\,
	cout => \sd_read_inst|cnt[16]~58\);

-- Location: LCCOMB_X23_Y21_N12
\sd_read_inst|cnt[17]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|cnt[17]~59_combout\ = (\sd_read_inst|cnt\(17) & (!\sd_read_inst|cnt[16]~58\)) # (!\sd_read_inst|cnt\(17) & ((\sd_read_inst|cnt[16]~58\) # (GND)))
-- \sd_read_inst|cnt[17]~60\ = CARRY((!\sd_read_inst|cnt[16]~58\) # (!\sd_read_inst|cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sd_read_inst|cnt\(17),
	datad => VCC,
	cin => \sd_read_inst|cnt[16]~58\,
	combout => \sd_read_inst|cnt[17]~59_combout\,
	cout => \sd_read_inst|cnt[17]~60\);

-- Location: FF_X19_Y20_N13
\ram_rw_control_inst|read_sec[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ram_rw_control_inst|read_sec[6]~48_combout\,
	asdata => VCC,
	sload => \ram_rw_control_inst|read_sec[15]~36_combout\,
	ena => \ram_rw_control_inst|read_sec[15]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_rw_control_inst|read_sec\(6));

-- Location: FF_X19_Y20_N23
\ram_rw_control_inst|read_sec[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ram_rw_control_inst|read_sec[11]~58_combout\,
	asdata => \~GND~combout\,
	sload => \ram_rw_control_inst|read_sec[15]~36_combout\,
	ena => \ram_rw_control_inst|read_sec[15]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_rw_control_inst|read_sec\(11));

-- Location: FF_X19_Y19_N13
\ram_rw_control_inst|read_sec[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ram_rw_control_inst|read_sec[22]~80_combout\,
	asdata => \~GND~combout\,
	sload => \ram_rw_control_inst|read_sec[15]~36_combout\,
	ena => \ram_rw_control_inst|read_sec[15]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_rw_control_inst|read_sec\(22));

-- Location: FF_X21_Y16_N7
\sd_initial_inst|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|cnt[3]~21_combout\,
	sclr => \sd_initial_inst|cnt[0]~13_combout\,
	ena => \sd_initial_inst|cnt[9]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|cnt\(3));

-- Location: FF_X21_Y16_N11
\sd_initial_inst|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|cnt[5]~25_combout\,
	sclr => \sd_initial_inst|cnt[0]~13_combout\,
	ena => \sd_initial_inst|cnt[9]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|cnt\(5));

-- Location: FF_X21_Y16_N13
\sd_initial_inst|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|cnt[6]~27_combout\,
	sclr => \sd_initial_inst|cnt[0]~13_combout\,
	ena => \sd_initial_inst|cnt[9]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|cnt\(6));

-- Location: FF_X18_Y15_N23
\sd_initial_inst|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|counter[7]~21_combout\,
	clrn => \rst_n~input_o\,
	ena => \sd_initial_inst|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|counter\(7));

-- Location: FF_X18_Y15_N13
\sd_initial_inst|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|counter[2]~11_combout\,
	clrn => \rst_n~input_o\,
	ena => \sd_initial_inst|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|counter\(2));

-- Location: LCCOMB_X18_Y15_N12
\sd_initial_inst|counter[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|counter[2]~11_combout\ = (\sd_initial_inst|counter\(2) & (!\sd_initial_inst|counter[1]~10\)) # (!\sd_initial_inst|counter\(2) & ((\sd_initial_inst|counter[1]~10\) # (GND)))
-- \sd_initial_inst|counter[2]~12\ = CARRY((!\sd_initial_inst|counter[1]~10\) # (!\sd_initial_inst|counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|counter\(2),
	datad => VCC,
	cin => \sd_initial_inst|counter[1]~10\,
	combout => \sd_initial_inst|counter[2]~11_combout\,
	cout => \sd_initial_inst|counter[2]~12\);

-- Location: LCCOMB_X18_Y15_N22
\sd_initial_inst|counter[7]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|counter[7]~21_combout\ = (\sd_initial_inst|counter\(7) & (\sd_initial_inst|counter[6]~20\ $ (GND))) # (!\sd_initial_inst|counter\(7) & (!\sd_initial_inst|counter[6]~20\ & VCC))
-- \sd_initial_inst|counter[7]~22\ = CARRY((\sd_initial_inst|counter\(7) & !\sd_initial_inst|counter[6]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|counter\(7),
	datad => VCC,
	cin => \sd_initial_inst|counter[6]~20\,
	combout => \sd_initial_inst|counter[7]~21_combout\,
	cout => \sd_initial_inst|counter[7]~22\);

-- Location: FF_X25_Y20_N11
\sd_read_inst|cntb[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_read_inst|cntb~3_combout\,
	sclr => \sd_read_inst|ALT_INV_read_step.01~q\,
	ena => \sd_read_inst|cntb[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|cntb\(2));

-- Location: LCCOMB_X23_Y19_N10
\ram_rw_control_inst|counter[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|counter[1]~12_combout\ = (\ram_rw_control_inst|counter\(1) & (!\ram_rw_control_inst|counter[0]~11\)) # (!\ram_rw_control_inst|counter\(1) & ((\ram_rw_control_inst|counter[0]~11\) # (GND)))
-- \ram_rw_control_inst|counter[1]~13\ = CARRY((!\ram_rw_control_inst|counter[0]~11\) # (!\ram_rw_control_inst|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ram_rw_control_inst|counter\(1),
	datad => VCC,
	cin => \ram_rw_control_inst|counter[0]~11\,
	combout => \ram_rw_control_inst|counter[1]~12_combout\,
	cout => \ram_rw_control_inst|counter[1]~13\);

-- Location: FF_X19_Y18_N1
\ram_rw_control_inst|myen\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	d => \ram_rw_control_inst|myen~0_combout\,
	sclr => \sd_initial_inst|ALT_INV_init_o~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_rw_control_inst|myen~q\);

-- Location: LCCOMB_X18_Y18_N2
\ram_rw_control_inst|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|Add3~0_combout\ = (\ram_rw_control_inst|always7~0_combout\ & (\ram_rw_control_inst|ram_raddr\(1) $ (VCC))) # (!\ram_rw_control_inst|always7~0_combout\ & (\ram_rw_control_inst|ram_raddr\(1) & VCC))
-- \ram_rw_control_inst|Add3~1\ = CARRY((\ram_rw_control_inst|always7~0_combout\ & \ram_rw_control_inst|ram_raddr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_rw_control_inst|always7~0_combout\,
	datab => \ram_rw_control_inst|ram_raddr\(1),
	datad => VCC,
	combout => \ram_rw_control_inst|Add3~0_combout\,
	cout => \ram_rw_control_inst|Add3~1\);

-- Location: LCCOMB_X18_Y18_N8
\ram_rw_control_inst|Add3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|Add3~9_combout\ = (\ram_rw_control_inst|ram_raddr\(4) & (!\ram_rw_control_inst|Add3~7\)) # (!\ram_rw_control_inst|ram_raddr\(4) & ((\ram_rw_control_inst|Add3~7\) # (GND)))
-- \ram_rw_control_inst|Add3~10\ = CARRY((!\ram_rw_control_inst|Add3~7\) # (!\ram_rw_control_inst|ram_raddr\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ram_rw_control_inst|ram_raddr\(4),
	datad => VCC,
	cin => \ram_rw_control_inst|Add3~7\,
	combout => \ram_rw_control_inst|Add3~9_combout\,
	cout => \ram_rw_control_inst|Add3~10\);

-- Location: LCCOMB_X18_Y18_N10
\ram_rw_control_inst|Add3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|Add3~12_combout\ = (\ram_rw_control_inst|ram_raddr\(5) & (\ram_rw_control_inst|Add3~10\ $ (GND))) # (!\ram_rw_control_inst|ram_raddr\(5) & (!\ram_rw_control_inst|Add3~10\ & VCC))
-- \ram_rw_control_inst|Add3~13\ = CARRY((\ram_rw_control_inst|ram_raddr\(5) & !\ram_rw_control_inst|Add3~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ram_rw_control_inst|ram_raddr\(5),
	datad => VCC,
	cin => \ram_rw_control_inst|Add3~10\,
	combout => \ram_rw_control_inst|Add3~12_combout\,
	cout => \ram_rw_control_inst|Add3~13\);

-- Location: LCCOMB_X18_Y18_N12
\ram_rw_control_inst|Add3~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|Add3~15_combout\ = (\ram_rw_control_inst|ram_raddr\(6) & (!\ram_rw_control_inst|Add3~13\)) # (!\ram_rw_control_inst|ram_raddr\(6) & ((\ram_rw_control_inst|Add3~13\) # (GND)))
-- \ram_rw_control_inst|Add3~16\ = CARRY((!\ram_rw_control_inst|Add3~13\) # (!\ram_rw_control_inst|ram_raddr\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ram_rw_control_inst|ram_raddr\(6),
	datad => VCC,
	cin => \ram_rw_control_inst|Add3~13\,
	combout => \ram_rw_control_inst|Add3~15_combout\,
	cout => \ram_rw_control_inst|Add3~16\);

-- Location: LCCOMB_X18_Y18_N14
\ram_rw_control_inst|Add3~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|Add3~18_combout\ = (\ram_rw_control_inst|ram_raddr\(7) & (\ram_rw_control_inst|Add3~16\ $ (GND))) # (!\ram_rw_control_inst|ram_raddr\(7) & (!\ram_rw_control_inst|Add3~16\ & VCC))
-- \ram_rw_control_inst|Add3~19\ = CARRY((\ram_rw_control_inst|ram_raddr\(7) & !\ram_rw_control_inst|Add3~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ram_rw_control_inst|ram_raddr\(7),
	datad => VCC,
	cin => \ram_rw_control_inst|Add3~16\,
	combout => \ram_rw_control_inst|Add3~18_combout\,
	cout => \ram_rw_control_inst|Add3~19\);

-- Location: LCCOMB_X18_Y18_N16
\ram_rw_control_inst|Add3~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|Add3~21_combout\ = (\ram_rw_control_inst|ram_raddr\(8) & (!\ram_rw_control_inst|Add3~19\)) # (!\ram_rw_control_inst|ram_raddr\(8) & ((\ram_rw_control_inst|Add3~19\) # (GND)))
-- \ram_rw_control_inst|Add3~22\ = CARRY((!\ram_rw_control_inst|Add3~19\) # (!\ram_rw_control_inst|ram_raddr\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ram_rw_control_inst|ram_raddr\(8),
	datad => VCC,
	cin => \ram_rw_control_inst|Add3~19\,
	combout => \ram_rw_control_inst|Add3~21_combout\,
	cout => \ram_rw_control_inst|Add3~22\);

-- Location: LCCOMB_X32_Y12_N0
\mywav_inst|reg_config_inst|clock_20k_cnt[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|reg_config_inst|clock_20k_cnt[0]~16_combout\ = \mywav_inst|reg_config_inst|clock_20k_cnt\(0) $ (VCC)
-- \mywav_inst|reg_config_inst|clock_20k_cnt[0]~17\ = CARRY(\mywav_inst|reg_config_inst|clock_20k_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mywav_inst|reg_config_inst|clock_20k_cnt\(0),
	datad => VCC,
	combout => \mywav_inst|reg_config_inst|clock_20k_cnt[0]~16_combout\,
	cout => \mywav_inst|reg_config_inst|clock_20k_cnt[0]~17\);

-- Location: LCCOMB_X32_Y12_N2
\mywav_inst|reg_config_inst|clock_20k_cnt[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|reg_config_inst|clock_20k_cnt[1]~18_combout\ = (\mywav_inst|reg_config_inst|clock_20k_cnt\(1) & (!\mywav_inst|reg_config_inst|clock_20k_cnt[0]~17\)) # (!\mywav_inst|reg_config_inst|clock_20k_cnt\(1) & 
-- ((\mywav_inst|reg_config_inst|clock_20k_cnt[0]~17\) # (GND)))
-- \mywav_inst|reg_config_inst|clock_20k_cnt[1]~19\ = CARRY((!\mywav_inst|reg_config_inst|clock_20k_cnt[0]~17\) # (!\mywav_inst|reg_config_inst|clock_20k_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mywav_inst|reg_config_inst|clock_20k_cnt\(1),
	datad => VCC,
	cin => \mywav_inst|reg_config_inst|clock_20k_cnt[0]~17\,
	combout => \mywav_inst|reg_config_inst|clock_20k_cnt[1]~18_combout\,
	cout => \mywav_inst|reg_config_inst|clock_20k_cnt[1]~19\);

-- Location: LCCOMB_X32_Y12_N4
\mywav_inst|reg_config_inst|clock_20k_cnt[2]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|reg_config_inst|clock_20k_cnt[2]~20_combout\ = (\mywav_inst|reg_config_inst|clock_20k_cnt\(2) & (\mywav_inst|reg_config_inst|clock_20k_cnt[1]~19\ $ (GND))) # (!\mywav_inst|reg_config_inst|clock_20k_cnt\(2) & 
-- (!\mywav_inst|reg_config_inst|clock_20k_cnt[1]~19\ & VCC))
-- \mywav_inst|reg_config_inst|clock_20k_cnt[2]~21\ = CARRY((\mywav_inst|reg_config_inst|clock_20k_cnt\(2) & !\mywav_inst|reg_config_inst|clock_20k_cnt[1]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mywav_inst|reg_config_inst|clock_20k_cnt\(2),
	datad => VCC,
	cin => \mywav_inst|reg_config_inst|clock_20k_cnt[1]~19\,
	combout => \mywav_inst|reg_config_inst|clock_20k_cnt[2]~20_combout\,
	cout => \mywav_inst|reg_config_inst|clock_20k_cnt[2]~21\);

-- Location: LCCOMB_X32_Y12_N6
\mywav_inst|reg_config_inst|clock_20k_cnt[3]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|reg_config_inst|clock_20k_cnt[3]~22_combout\ = (\mywav_inst|reg_config_inst|clock_20k_cnt\(3) & (!\mywav_inst|reg_config_inst|clock_20k_cnt[2]~21\)) # (!\mywav_inst|reg_config_inst|clock_20k_cnt\(3) & 
-- ((\mywav_inst|reg_config_inst|clock_20k_cnt[2]~21\) # (GND)))
-- \mywav_inst|reg_config_inst|clock_20k_cnt[3]~23\ = CARRY((!\mywav_inst|reg_config_inst|clock_20k_cnt[2]~21\) # (!\mywav_inst|reg_config_inst|clock_20k_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mywav_inst|reg_config_inst|clock_20k_cnt\(3),
	datad => VCC,
	cin => \mywav_inst|reg_config_inst|clock_20k_cnt[2]~21\,
	combout => \mywav_inst|reg_config_inst|clock_20k_cnt[3]~22_combout\,
	cout => \mywav_inst|reg_config_inst|clock_20k_cnt[3]~23\);

-- Location: LCCOMB_X32_Y12_N8
\mywav_inst|reg_config_inst|clock_20k_cnt[4]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|reg_config_inst|clock_20k_cnt[4]~24_combout\ = (\mywav_inst|reg_config_inst|clock_20k_cnt\(4) & (\mywav_inst|reg_config_inst|clock_20k_cnt[3]~23\ $ (GND))) # (!\mywav_inst|reg_config_inst|clock_20k_cnt\(4) & 
-- (!\mywav_inst|reg_config_inst|clock_20k_cnt[3]~23\ & VCC))
-- \mywav_inst|reg_config_inst|clock_20k_cnt[4]~25\ = CARRY((\mywav_inst|reg_config_inst|clock_20k_cnt\(4) & !\mywav_inst|reg_config_inst|clock_20k_cnt[3]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mywav_inst|reg_config_inst|clock_20k_cnt\(4),
	datad => VCC,
	cin => \mywav_inst|reg_config_inst|clock_20k_cnt[3]~23\,
	combout => \mywav_inst|reg_config_inst|clock_20k_cnt[4]~24_combout\,
	cout => \mywav_inst|reg_config_inst|clock_20k_cnt[4]~25\);

-- Location: LCCOMB_X32_Y12_N10
\mywav_inst|reg_config_inst|clock_20k_cnt[5]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|reg_config_inst|clock_20k_cnt[5]~26_combout\ = (\mywav_inst|reg_config_inst|clock_20k_cnt\(5) & (!\mywav_inst|reg_config_inst|clock_20k_cnt[4]~25\)) # (!\mywav_inst|reg_config_inst|clock_20k_cnt\(5) & 
-- ((\mywav_inst|reg_config_inst|clock_20k_cnt[4]~25\) # (GND)))
-- \mywav_inst|reg_config_inst|clock_20k_cnt[5]~27\ = CARRY((!\mywav_inst|reg_config_inst|clock_20k_cnt[4]~25\) # (!\mywav_inst|reg_config_inst|clock_20k_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mywav_inst|reg_config_inst|clock_20k_cnt\(5),
	datad => VCC,
	cin => \mywav_inst|reg_config_inst|clock_20k_cnt[4]~25\,
	combout => \mywav_inst|reg_config_inst|clock_20k_cnt[5]~26_combout\,
	cout => \mywav_inst|reg_config_inst|clock_20k_cnt[5]~27\);

-- Location: LCCOMB_X32_Y12_N12
\mywav_inst|reg_config_inst|clock_20k_cnt[6]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|reg_config_inst|clock_20k_cnt[6]~28_combout\ = (\mywav_inst|reg_config_inst|clock_20k_cnt\(6) & (\mywav_inst|reg_config_inst|clock_20k_cnt[5]~27\ $ (GND))) # (!\mywav_inst|reg_config_inst|clock_20k_cnt\(6) & 
-- (!\mywav_inst|reg_config_inst|clock_20k_cnt[5]~27\ & VCC))
-- \mywav_inst|reg_config_inst|clock_20k_cnt[6]~29\ = CARRY((\mywav_inst|reg_config_inst|clock_20k_cnt\(6) & !\mywav_inst|reg_config_inst|clock_20k_cnt[5]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mywav_inst|reg_config_inst|clock_20k_cnt\(6),
	datad => VCC,
	cin => \mywav_inst|reg_config_inst|clock_20k_cnt[5]~27\,
	combout => \mywav_inst|reg_config_inst|clock_20k_cnt[6]~28_combout\,
	cout => \mywav_inst|reg_config_inst|clock_20k_cnt[6]~29\);

-- Location: LCCOMB_X32_Y12_N14
\mywav_inst|reg_config_inst|clock_20k_cnt[7]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|reg_config_inst|clock_20k_cnt[7]~30_combout\ = (\mywav_inst|reg_config_inst|clock_20k_cnt\(7) & (!\mywav_inst|reg_config_inst|clock_20k_cnt[6]~29\)) # (!\mywav_inst|reg_config_inst|clock_20k_cnt\(7) & 
-- ((\mywav_inst|reg_config_inst|clock_20k_cnt[6]~29\) # (GND)))
-- \mywav_inst|reg_config_inst|clock_20k_cnt[7]~31\ = CARRY((!\mywav_inst|reg_config_inst|clock_20k_cnt[6]~29\) # (!\mywav_inst|reg_config_inst|clock_20k_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mywav_inst|reg_config_inst|clock_20k_cnt\(7),
	datad => VCC,
	cin => \mywav_inst|reg_config_inst|clock_20k_cnt[6]~29\,
	combout => \mywav_inst|reg_config_inst|clock_20k_cnt[7]~30_combout\,
	cout => \mywav_inst|reg_config_inst|clock_20k_cnt[7]~31\);

-- Location: LCCOMB_X32_Y12_N16
\mywav_inst|reg_config_inst|clock_20k_cnt[8]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|reg_config_inst|clock_20k_cnt[8]~32_combout\ = (\mywav_inst|reg_config_inst|clock_20k_cnt\(8) & (\mywav_inst|reg_config_inst|clock_20k_cnt[7]~31\ $ (GND))) # (!\mywav_inst|reg_config_inst|clock_20k_cnt\(8) & 
-- (!\mywav_inst|reg_config_inst|clock_20k_cnt[7]~31\ & VCC))
-- \mywav_inst|reg_config_inst|clock_20k_cnt[8]~33\ = CARRY((\mywav_inst|reg_config_inst|clock_20k_cnt\(8) & !\mywav_inst|reg_config_inst|clock_20k_cnt[7]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mywav_inst|reg_config_inst|clock_20k_cnt\(8),
	datad => VCC,
	cin => \mywav_inst|reg_config_inst|clock_20k_cnt[7]~31\,
	combout => \mywav_inst|reg_config_inst|clock_20k_cnt[8]~32_combout\,
	cout => \mywav_inst|reg_config_inst|clock_20k_cnt[8]~33\);

-- Location: LCCOMB_X32_Y12_N18
\mywav_inst|reg_config_inst|clock_20k_cnt[9]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|reg_config_inst|clock_20k_cnt[9]~34_combout\ = (\mywav_inst|reg_config_inst|clock_20k_cnt\(9) & (!\mywav_inst|reg_config_inst|clock_20k_cnt[8]~33\)) # (!\mywav_inst|reg_config_inst|clock_20k_cnt\(9) & 
-- ((\mywav_inst|reg_config_inst|clock_20k_cnt[8]~33\) # (GND)))
-- \mywav_inst|reg_config_inst|clock_20k_cnt[9]~35\ = CARRY((!\mywav_inst|reg_config_inst|clock_20k_cnt[8]~33\) # (!\mywav_inst|reg_config_inst|clock_20k_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mywav_inst|reg_config_inst|clock_20k_cnt\(9),
	datad => VCC,
	cin => \mywav_inst|reg_config_inst|clock_20k_cnt[8]~33\,
	combout => \mywav_inst|reg_config_inst|clock_20k_cnt[9]~34_combout\,
	cout => \mywav_inst|reg_config_inst|clock_20k_cnt[9]~35\);

-- Location: LCCOMB_X32_Y12_N20
\mywav_inst|reg_config_inst|clock_20k_cnt[10]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|reg_config_inst|clock_20k_cnt[10]~36_combout\ = (\mywav_inst|reg_config_inst|clock_20k_cnt\(10) & (\mywav_inst|reg_config_inst|clock_20k_cnt[9]~35\ $ (GND))) # (!\mywav_inst|reg_config_inst|clock_20k_cnt\(10) & 
-- (!\mywav_inst|reg_config_inst|clock_20k_cnt[9]~35\ & VCC))
-- \mywav_inst|reg_config_inst|clock_20k_cnt[10]~37\ = CARRY((\mywav_inst|reg_config_inst|clock_20k_cnt\(10) & !\mywav_inst|reg_config_inst|clock_20k_cnt[9]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mywav_inst|reg_config_inst|clock_20k_cnt\(10),
	datad => VCC,
	cin => \mywav_inst|reg_config_inst|clock_20k_cnt[9]~35\,
	combout => \mywav_inst|reg_config_inst|clock_20k_cnt[10]~36_combout\,
	cout => \mywav_inst|reg_config_inst|clock_20k_cnt[10]~37\);

-- Location: LCCOMB_X32_Y12_N22
\mywav_inst|reg_config_inst|clock_20k_cnt[11]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|reg_config_inst|clock_20k_cnt[11]~38_combout\ = (\mywav_inst|reg_config_inst|clock_20k_cnt\(11) & (!\mywav_inst|reg_config_inst|clock_20k_cnt[10]~37\)) # (!\mywav_inst|reg_config_inst|clock_20k_cnt\(11) & 
-- ((\mywav_inst|reg_config_inst|clock_20k_cnt[10]~37\) # (GND)))
-- \mywav_inst|reg_config_inst|clock_20k_cnt[11]~39\ = CARRY((!\mywav_inst|reg_config_inst|clock_20k_cnt[10]~37\) # (!\mywav_inst|reg_config_inst|clock_20k_cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mywav_inst|reg_config_inst|clock_20k_cnt\(11),
	datad => VCC,
	cin => \mywav_inst|reg_config_inst|clock_20k_cnt[10]~37\,
	combout => \mywav_inst|reg_config_inst|clock_20k_cnt[11]~38_combout\,
	cout => \mywav_inst|reg_config_inst|clock_20k_cnt[11]~39\);

-- Location: LCCOMB_X32_Y12_N24
\mywav_inst|reg_config_inst|clock_20k_cnt[12]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|reg_config_inst|clock_20k_cnt[12]~40_combout\ = (\mywav_inst|reg_config_inst|clock_20k_cnt\(12) & (\mywav_inst|reg_config_inst|clock_20k_cnt[11]~39\ $ (GND))) # (!\mywav_inst|reg_config_inst|clock_20k_cnt\(12) & 
-- (!\mywav_inst|reg_config_inst|clock_20k_cnt[11]~39\ & VCC))
-- \mywav_inst|reg_config_inst|clock_20k_cnt[12]~41\ = CARRY((\mywav_inst|reg_config_inst|clock_20k_cnt\(12) & !\mywav_inst|reg_config_inst|clock_20k_cnt[11]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mywav_inst|reg_config_inst|clock_20k_cnt\(12),
	datad => VCC,
	cin => \mywav_inst|reg_config_inst|clock_20k_cnt[11]~39\,
	combout => \mywav_inst|reg_config_inst|clock_20k_cnt[12]~40_combout\,
	cout => \mywav_inst|reg_config_inst|clock_20k_cnt[12]~41\);

-- Location: LCCOMB_X32_Y12_N26
\mywav_inst|reg_config_inst|clock_20k_cnt[13]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|reg_config_inst|clock_20k_cnt[13]~42_combout\ = (\mywav_inst|reg_config_inst|clock_20k_cnt\(13) & (!\mywav_inst|reg_config_inst|clock_20k_cnt[12]~41\)) # (!\mywav_inst|reg_config_inst|clock_20k_cnt\(13) & 
-- ((\mywav_inst|reg_config_inst|clock_20k_cnt[12]~41\) # (GND)))
-- \mywav_inst|reg_config_inst|clock_20k_cnt[13]~43\ = CARRY((!\mywav_inst|reg_config_inst|clock_20k_cnt[12]~41\) # (!\mywav_inst|reg_config_inst|clock_20k_cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mywav_inst|reg_config_inst|clock_20k_cnt\(13),
	datad => VCC,
	cin => \mywav_inst|reg_config_inst|clock_20k_cnt[12]~41\,
	combout => \mywav_inst|reg_config_inst|clock_20k_cnt[13]~42_combout\,
	cout => \mywav_inst|reg_config_inst|clock_20k_cnt[13]~43\);

-- Location: LCCOMB_X32_Y12_N28
\mywav_inst|reg_config_inst|clock_20k_cnt[14]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|reg_config_inst|clock_20k_cnt[14]~44_combout\ = (\mywav_inst|reg_config_inst|clock_20k_cnt\(14) & (\mywav_inst|reg_config_inst|clock_20k_cnt[13]~43\ $ (GND))) # (!\mywav_inst|reg_config_inst|clock_20k_cnt\(14) & 
-- (!\mywav_inst|reg_config_inst|clock_20k_cnt[13]~43\ & VCC))
-- \mywav_inst|reg_config_inst|clock_20k_cnt[14]~45\ = CARRY((\mywav_inst|reg_config_inst|clock_20k_cnt\(14) & !\mywav_inst|reg_config_inst|clock_20k_cnt[13]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mywav_inst|reg_config_inst|clock_20k_cnt\(14),
	datad => VCC,
	cin => \mywav_inst|reg_config_inst|clock_20k_cnt[13]~43\,
	combout => \mywav_inst|reg_config_inst|clock_20k_cnt[14]~44_combout\,
	cout => \mywav_inst|reg_config_inst|clock_20k_cnt[14]~45\);

-- Location: LCCOMB_X32_Y12_N30
\mywav_inst|reg_config_inst|clock_20k_cnt[15]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|reg_config_inst|clock_20k_cnt[15]~46_combout\ = \mywav_inst|reg_config_inst|clock_20k_cnt\(15) $ (\mywav_inst|reg_config_inst|clock_20k_cnt[14]~45\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mywav_inst|reg_config_inst|clock_20k_cnt\(15),
	cin => \mywav_inst|reg_config_inst|clock_20k_cnt[14]~45\,
	combout => \mywav_inst|reg_config_inst|clock_20k_cnt[15]~46_combout\);

-- Location: LCCOMB_X19_Y20_N12
\ram_rw_control_inst|read_sec[6]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|read_sec[6]~48_combout\ = (\ram_rw_control_inst|read_sec\(6) & (\ram_rw_control_inst|read_sec[5]~47\ $ (GND))) # (!\ram_rw_control_inst|read_sec\(6) & (!\ram_rw_control_inst|read_sec[5]~47\ & VCC))
-- \ram_rw_control_inst|read_sec[6]~49\ = CARRY((\ram_rw_control_inst|read_sec\(6) & !\ram_rw_control_inst|read_sec[5]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ram_rw_control_inst|read_sec\(6),
	datad => VCC,
	cin => \ram_rw_control_inst|read_sec[5]~47\,
	combout => \ram_rw_control_inst|read_sec[6]~48_combout\,
	cout => \ram_rw_control_inst|read_sec[6]~49\);

-- Location: LCCOMB_X19_Y20_N22
\ram_rw_control_inst|read_sec[11]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|read_sec[11]~58_combout\ = (\ram_rw_control_inst|read_sec\(11) & (!\ram_rw_control_inst|read_sec[10]~57\)) # (!\ram_rw_control_inst|read_sec\(11) & ((\ram_rw_control_inst|read_sec[10]~57\) # (GND)))
-- \ram_rw_control_inst|read_sec[11]~59\ = CARRY((!\ram_rw_control_inst|read_sec[10]~57\) # (!\ram_rw_control_inst|read_sec\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ram_rw_control_inst|read_sec\(11),
	datad => VCC,
	cin => \ram_rw_control_inst|read_sec[10]~57\,
	combout => \ram_rw_control_inst|read_sec[11]~58_combout\,
	cout => \ram_rw_control_inst|read_sec[11]~59\);

-- Location: LCCOMB_X19_Y19_N12
\ram_rw_control_inst|read_sec[22]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|read_sec[22]~80_combout\ = (\ram_rw_control_inst|read_sec\(22) & (\ram_rw_control_inst|read_sec[21]~79\ $ (GND))) # (!\ram_rw_control_inst|read_sec\(22) & (!\ram_rw_control_inst|read_sec[21]~79\ & VCC))
-- \ram_rw_control_inst|read_sec[22]~81\ = CARRY((\ram_rw_control_inst|read_sec\(22) & !\ram_rw_control_inst|read_sec[21]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ram_rw_control_inst|read_sec\(22),
	datad => VCC,
	cin => \ram_rw_control_inst|read_sec[21]~79\,
	combout => \ram_rw_control_inst|read_sec[22]~80_combout\,
	cout => \ram_rw_control_inst|read_sec[22]~81\);

-- Location: LCCOMB_X21_Y16_N6
\sd_initial_inst|cnt[3]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|cnt[3]~21_combout\ = (\sd_initial_inst|cnt\(3) & (!\sd_initial_inst|cnt[2]~20\)) # (!\sd_initial_inst|cnt\(3) & ((\sd_initial_inst|cnt[2]~20\) # (GND)))
-- \sd_initial_inst|cnt[3]~22\ = CARRY((!\sd_initial_inst|cnt[2]~20\) # (!\sd_initial_inst|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|cnt\(3),
	datad => VCC,
	cin => \sd_initial_inst|cnt[2]~20\,
	combout => \sd_initial_inst|cnt[3]~21_combout\,
	cout => \sd_initial_inst|cnt[3]~22\);

-- Location: LCCOMB_X21_Y16_N10
\sd_initial_inst|cnt[5]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|cnt[5]~25_combout\ = (\sd_initial_inst|cnt\(5) & (!\sd_initial_inst|cnt[4]~24\)) # (!\sd_initial_inst|cnt\(5) & ((\sd_initial_inst|cnt[4]~24\) # (GND)))
-- \sd_initial_inst|cnt[5]~26\ = CARRY((!\sd_initial_inst|cnt[4]~24\) # (!\sd_initial_inst|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|cnt\(5),
	datad => VCC,
	cin => \sd_initial_inst|cnt[4]~24\,
	combout => \sd_initial_inst|cnt[5]~25_combout\,
	cout => \sd_initial_inst|cnt[5]~26\);

-- Location: LCCOMB_X21_Y16_N12
\sd_initial_inst|cnt[6]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|cnt[6]~27_combout\ = (\sd_initial_inst|cnt\(6) & (\sd_initial_inst|cnt[5]~26\ $ (GND))) # (!\sd_initial_inst|cnt\(6) & (!\sd_initial_inst|cnt[5]~26\ & VCC))
-- \sd_initial_inst|cnt[6]~28\ = CARRY((\sd_initial_inst|cnt\(6) & !\sd_initial_inst|cnt[5]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|cnt\(6),
	datad => VCC,
	cin => \sd_initial_inst|cnt[5]~26\,
	combout => \sd_initial_inst|cnt[6]~27_combout\,
	cout => \sd_initial_inst|cnt[6]~28\);

-- Location: LCCOMB_X24_Y17_N14
\sd_initial_inst|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Add0~2_combout\ = (\sd_initial_inst|aa\(1) & (!\sd_initial_inst|Add0~1\)) # (!\sd_initial_inst|aa\(1) & ((\sd_initial_inst|Add0~1\) # (GND)))
-- \sd_initial_inst|Add0~3\ = CARRY((!\sd_initial_inst|Add0~1\) # (!\sd_initial_inst|aa\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|aa\(1),
	datad => VCC,
	cin => \sd_initial_inst|Add0~1\,
	combout => \sd_initial_inst|Add0~2_combout\,
	cout => \sd_initial_inst|Add0~3\);

-- Location: LCCOMB_X25_Y20_N12
\sd_read_inst|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|Add3~0_combout\ = \sd_read_inst|read_cnt\(0) $ (VCC)
-- \sd_read_inst|Add3~1\ = CARRY(\sd_read_inst|read_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_read_inst|read_cnt\(0),
	datad => VCC,
	combout => \sd_read_inst|Add3~0_combout\,
	cout => \sd_read_inst|Add3~1\);

-- Location: LCCOMB_X25_Y20_N14
\sd_read_inst|Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|Add3~2_combout\ = (\sd_read_inst|read_cnt\(1) & (!\sd_read_inst|Add3~1\)) # (!\sd_read_inst|read_cnt\(1) & ((\sd_read_inst|Add3~1\) # (GND)))
-- \sd_read_inst|Add3~3\ = CARRY((!\sd_read_inst|Add3~1\) # (!\sd_read_inst|read_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sd_read_inst|read_cnt\(1),
	datad => VCC,
	cin => \sd_read_inst|Add3~1\,
	combout => \sd_read_inst|Add3~2_combout\,
	cout => \sd_read_inst|Add3~3\);

-- Location: LCCOMB_X25_Y20_N16
\sd_read_inst|Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|Add3~4_combout\ = (\sd_read_inst|read_cnt\(2) & (\sd_read_inst|Add3~3\ $ (GND))) # (!\sd_read_inst|read_cnt\(2) & (!\sd_read_inst|Add3~3\ & VCC))
-- \sd_read_inst|Add3~5\ = CARRY((\sd_read_inst|read_cnt\(2) & !\sd_read_inst|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sd_read_inst|read_cnt\(2),
	datad => VCC,
	cin => \sd_read_inst|Add3~3\,
	combout => \sd_read_inst|Add3~4_combout\,
	cout => \sd_read_inst|Add3~5\);

-- Location: LCCOMB_X25_Y20_N18
\sd_read_inst|Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|Add3~6_combout\ = (\sd_read_inst|read_cnt\(3) & (!\sd_read_inst|Add3~5\)) # (!\sd_read_inst|read_cnt\(3) & ((\sd_read_inst|Add3~5\) # (GND)))
-- \sd_read_inst|Add3~7\ = CARRY((!\sd_read_inst|Add3~5\) # (!\sd_read_inst|read_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sd_read_inst|read_cnt\(3),
	datad => VCC,
	cin => \sd_read_inst|Add3~5\,
	combout => \sd_read_inst|Add3~6_combout\,
	cout => \sd_read_inst|Add3~7\);

-- Location: LCCOMB_X25_Y20_N20
\sd_read_inst|Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|Add3~8_combout\ = (\sd_read_inst|read_cnt\(4) & (\sd_read_inst|Add3~7\ $ (GND))) # (!\sd_read_inst|read_cnt\(4) & (!\sd_read_inst|Add3~7\ & VCC))
-- \sd_read_inst|Add3~9\ = CARRY((\sd_read_inst|read_cnt\(4) & !\sd_read_inst|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sd_read_inst|read_cnt\(4),
	datad => VCC,
	cin => \sd_read_inst|Add3~7\,
	combout => \sd_read_inst|Add3~8_combout\,
	cout => \sd_read_inst|Add3~9\);

-- Location: LCCOMB_X25_Y20_N22
\sd_read_inst|Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|Add3~10_combout\ = (\sd_read_inst|read_cnt\(5) & (!\sd_read_inst|Add3~9\)) # (!\sd_read_inst|read_cnt\(5) & ((\sd_read_inst|Add3~9\) # (GND)))
-- \sd_read_inst|Add3~11\ = CARRY((!\sd_read_inst|Add3~9\) # (!\sd_read_inst|read_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sd_read_inst|read_cnt\(5),
	datad => VCC,
	cin => \sd_read_inst|Add3~9\,
	combout => \sd_read_inst|Add3~10_combout\,
	cout => \sd_read_inst|Add3~11\);

-- Location: LCCOMB_X25_Y20_N24
\sd_read_inst|Add3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|Add3~12_combout\ = (\sd_read_inst|read_cnt\(6) & (\sd_read_inst|Add3~11\ $ (GND))) # (!\sd_read_inst|read_cnt\(6) & (!\sd_read_inst|Add3~11\ & VCC))
-- \sd_read_inst|Add3~13\ = CARRY((\sd_read_inst|read_cnt\(6) & !\sd_read_inst|Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sd_read_inst|read_cnt\(6),
	datad => VCC,
	cin => \sd_read_inst|Add3~11\,
	combout => \sd_read_inst|Add3~12_combout\,
	cout => \sd_read_inst|Add3~13\);

-- Location: LCCOMB_X25_Y20_N26
\sd_read_inst|Add3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|Add3~14_combout\ = (\sd_read_inst|read_cnt\(7) & (!\sd_read_inst|Add3~13\)) # (!\sd_read_inst|read_cnt\(7) & ((\sd_read_inst|Add3~13\) # (GND)))
-- \sd_read_inst|Add3~15\ = CARRY((!\sd_read_inst|Add3~13\) # (!\sd_read_inst|read_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sd_read_inst|read_cnt\(7),
	datad => VCC,
	cin => \sd_read_inst|Add3~13\,
	combout => \sd_read_inst|Add3~14_combout\,
	cout => \sd_read_inst|Add3~15\);

-- Location: LCCOMB_X25_Y20_N28
\sd_read_inst|Add3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|Add3~16_combout\ = (\sd_read_inst|read_cnt\(8) & (\sd_read_inst|Add3~15\ $ (GND))) # (!\sd_read_inst|read_cnt\(8) & (!\sd_read_inst|Add3~15\ & VCC))
-- \sd_read_inst|Add3~17\ = CARRY((\sd_read_inst|read_cnt\(8) & !\sd_read_inst|Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sd_read_inst|read_cnt\(8),
	datad => VCC,
	cin => \sd_read_inst|Add3~15\,
	combout => \sd_read_inst|Add3~16_combout\,
	cout => \sd_read_inst|Add3~17\);

-- Location: LCCOMB_X25_Y20_N30
\sd_read_inst|Add3~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|Add3~18_combout\ = \sd_read_inst|read_cnt\(9) $ (\sd_read_inst|Add3~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sd_read_inst|read_cnt\(9),
	cin => \sd_read_inst|Add3~17\,
	combout => \sd_read_inst|Add3~18_combout\);

-- Location: LCCOMB_X28_Y21_N18
\sd_read_inst|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|Add0~0_combout\ = \sd_read_inst|aa\(0) $ (VCC)
-- \sd_read_inst|Add0~1\ = CARRY(\sd_read_inst|aa\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_read_inst|aa\(0),
	datad => VCC,
	combout => \sd_read_inst|Add0~0_combout\,
	cout => \sd_read_inst|Add0~1\);

-- Location: LCCOMB_X28_Y21_N20
\sd_read_inst|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|Add0~2_combout\ = (\sd_read_inst|aa\(1) & (!\sd_read_inst|Add0~1\)) # (!\sd_read_inst|aa\(1) & ((\sd_read_inst|Add0~1\) # (GND)))
-- \sd_read_inst|Add0~3\ = CARRY((!\sd_read_inst|Add0~1\) # (!\sd_read_inst|aa\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sd_read_inst|aa\(1),
	datad => VCC,
	cin => \sd_read_inst|Add0~1\,
	combout => \sd_read_inst|Add0~2_combout\,
	cout => \sd_read_inst|Add0~3\);

-- Location: LCCOMB_X28_Y21_N26
\sd_read_inst|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|Add0~8_combout\ = (\sd_read_inst|aa\(4) & (\sd_read_inst|Add0~7\ $ (GND))) # (!\sd_read_inst|aa\(4) & (!\sd_read_inst|Add0~7\ & VCC))
-- \sd_read_inst|Add0~9\ = CARRY((\sd_read_inst|aa\(4) & !\sd_read_inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sd_read_inst|aa\(4),
	datad => VCC,
	cin => \sd_read_inst|Add0~7\,
	combout => \sd_read_inst|Add0~8_combout\,
	cout => \sd_read_inst|Add0~9\);

-- Location: LCCOMB_X28_Y21_N28
\sd_read_inst|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|Add0~10_combout\ = \sd_read_inst|Add0~9\ $ (\sd_read_inst|aa\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \sd_read_inst|aa\(5),
	cin => \sd_read_inst|Add0~9\,
	combout => \sd_read_inst|Add0~10_combout\);

-- Location: LCCOMB_X16_Y19_N28
\mywav_inst|sinwave_gen_inst|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|sinwave_gen_inst|Mux0~4_combout\ = (\mywav_inst|sinwave_gen_inst|data_num\(0) & ((\ram_rw_control_inst|wav_data\(1)) # ((\mywav_inst|sinwave_gen_inst|data_num\(1))))) # (!\mywav_inst|sinwave_gen_inst|data_num\(0) & 
-- (((\ram_rw_control_inst|wav_data\(0) & !\mywav_inst|sinwave_gen_inst|data_num\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_rw_control_inst|wav_data\(1),
	datab => \ram_rw_control_inst|wav_data\(0),
	datac => \mywav_inst|sinwave_gen_inst|data_num\(0),
	datad => \mywav_inst|sinwave_gen_inst|data_num\(1),
	combout => \mywav_inst|sinwave_gen_inst|Mux0~4_combout\);

-- Location: LCCOMB_X16_Y19_N26
\mywav_inst|sinwave_gen_inst|Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|sinwave_gen_inst|Mux0~5_combout\ = (\mywav_inst|sinwave_gen_inst|data_num\(1) & ((\mywav_inst|sinwave_gen_inst|Mux0~4_combout\ & ((\ram_rw_control_inst|wav_data\(3)))) # (!\mywav_inst|sinwave_gen_inst|Mux0~4_combout\ & 
-- (\ram_rw_control_inst|wav_data\(2))))) # (!\mywav_inst|sinwave_gen_inst|data_num\(1) & (\mywav_inst|sinwave_gen_inst|Mux0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mywav_inst|sinwave_gen_inst|data_num\(1),
	datab => \mywav_inst|sinwave_gen_inst|Mux0~4_combout\,
	datac => \ram_rw_control_inst|wav_data\(2),
	datad => \ram_rw_control_inst|wav_data\(3),
	combout => \mywav_inst|sinwave_gen_inst|Mux0~5_combout\);

-- Location: LCCOMB_X23_Y22_N6
\sd_read_inst|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|LessThan1~1_combout\ = (!\sd_read_inst|cnt\(7) & (!\sd_read_inst|cnt\(5) & (!\sd_read_inst|cnt\(6) & !\sd_read_inst|cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_read_inst|cnt\(7),
	datab => \sd_read_inst|cnt\(5),
	datac => \sd_read_inst|cnt\(6),
	datad => \sd_read_inst|cnt\(4),
	combout => \sd_read_inst|LessThan1~1_combout\);

-- Location: LCCOMB_X23_Y21_N24
\sd_read_inst|LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|LessThan1~5_combout\ = (!\sd_read_inst|cnt\(16) & (!\sd_read_inst|cnt\(19) & (!\sd_read_inst|cnt\(18) & !\sd_read_inst|cnt\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_read_inst|cnt\(16),
	datab => \sd_read_inst|cnt\(19),
	datac => \sd_read_inst|cnt\(18),
	datad => \sd_read_inst|cnt\(17),
	combout => \sd_read_inst|LessThan1~5_combout\);

-- Location: FF_X18_Y21_N15
\sd_read_inst|CMD17[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_read_inst|CMD17~14_combout\,
	ena => \sd_read_inst|CMD17[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|CMD17\(45));

-- Location: LCCOMB_X22_Y21_N12
\sd_read_inst|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|Equal0~3_combout\ = (!\sd_read_inst|CMD17\(45) & (!\sd_read_inst|CMD17\(47) & (!\sd_read_inst|CMD17\(0) & !\sd_read_inst|CMD17\(46))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_read_inst|CMD17\(45),
	datab => \sd_read_inst|CMD17\(47),
	datac => \sd_read_inst|CMD17\(0),
	datad => \sd_read_inst|CMD17\(46),
	combout => \sd_read_inst|Equal0~3_combout\);

-- Location: LCCOMB_X18_Y21_N24
\sd_read_inst|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|Equal0~5_combout\ = (!\sd_read_inst|CMD17\(11) & (!\sd_read_inst|CMD17\(8) & (!\sd_read_inst|CMD17\(10) & !\sd_read_inst|CMD17\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_read_inst|CMD17\(11),
	datab => \sd_read_inst|CMD17\(8),
	datac => \sd_read_inst|CMD17\(10),
	datad => \sd_read_inst|CMD17\(9),
	combout => \sd_read_inst|Equal0~5_combout\);

-- Location: LCCOMB_X19_Y21_N2
\sd_read_inst|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|Equal0~6_combout\ = (!\sd_read_inst|CMD17\(12) & (!\sd_read_inst|CMD17\(15) & (!\sd_read_inst|CMD17\(14) & !\sd_read_inst|CMD17\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_read_inst|CMD17\(12),
	datab => \sd_read_inst|CMD17\(15),
	datac => \sd_read_inst|CMD17\(14),
	datad => \sd_read_inst|CMD17\(13),
	combout => \sd_read_inst|Equal0~6_combout\);

-- Location: LCCOMB_X19_Y21_N12
\sd_read_inst|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|Equal0~7_combout\ = (!\sd_read_inst|CMD17\(18) & (!\sd_read_inst|CMD17\(17) & (!\sd_read_inst|CMD17\(16) & !\sd_read_inst|CMD17\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_read_inst|CMD17\(18),
	datab => \sd_read_inst|CMD17\(17),
	datac => \sd_read_inst|CMD17\(16),
	datad => \sd_read_inst|CMD17\(19),
	combout => \sd_read_inst|Equal0~7_combout\);

-- Location: LCCOMB_X18_Y21_N26
\sd_read_inst|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|Equal0~8_combout\ = (!\sd_read_inst|CMD17\(21) & (!\sd_read_inst|CMD17\(23) & (!\sd_read_inst|CMD17\(20) & !\sd_read_inst|CMD17\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_read_inst|CMD17\(21),
	datab => \sd_read_inst|CMD17\(23),
	datac => \sd_read_inst|CMD17\(20),
	datad => \sd_read_inst|CMD17\(22),
	combout => \sd_read_inst|Equal0~8_combout\);

-- Location: LCCOMB_X19_Y21_N10
\sd_read_inst|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|Equal0~9_combout\ = (\sd_read_inst|Equal0~7_combout\ & (\sd_read_inst|Equal0~6_combout\ & (\sd_read_inst|Equal0~8_combout\ & \sd_read_inst|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_read_inst|Equal0~7_combout\,
	datab => \sd_read_inst|Equal0~6_combout\,
	datac => \sd_read_inst|Equal0~8_combout\,
	datad => \sd_read_inst|Equal0~5_combout\,
	combout => \sd_read_inst|Equal0~9_combout\);

-- Location: LCCOMB_X18_Y19_N10
\sd_read_inst|Equal0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|Equal0~12_combout\ = (!\sd_read_inst|CMD17\(34) & (!\sd_read_inst|CMD17\(33) & (!\sd_read_inst|CMD17\(32) & !\sd_read_inst|CMD17\(35))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_read_inst|CMD17\(34),
	datab => \sd_read_inst|CMD17\(33),
	datac => \sd_read_inst|CMD17\(32),
	datad => \sd_read_inst|CMD17\(35),
	combout => \sd_read_inst|Equal0~12_combout\);

-- Location: LCCOMB_X19_Y21_N20
\sd_read_inst|Equal0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|Equal0~15_combout\ = (\sd_read_inst|Equal0~9_combout\ & (\sd_read_inst|Equal0~4_combout\ & \sd_read_inst|Equal0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_read_inst|Equal0~9_combout\,
	datab => \sd_read_inst|Equal0~4_combout\,
	datac => \sd_read_inst|Equal0~14_combout\,
	combout => \sd_read_inst|Equal0~15_combout\);

-- Location: FF_X12_Y15_N11
\sd_initial_inst|CMD0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector190~0_combout\,
	ena => \sd_initial_inst|CMD0[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD0\(3));

-- Location: FF_X12_Y15_N7
\sd_initial_inst|CMD0[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector187~0_combout\,
	ena => \sd_initial_inst|CMD0[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD0\(6));

-- Location: FF_X12_Y15_N23
\sd_initial_inst|CMD0[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector185~0_combout\,
	ena => \sd_initial_inst|CMD0[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD0\(8));

-- Location: FF_X12_Y15_N25
\sd_initial_inst|CMD0[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector184~0_combout\,
	ena => \sd_initial_inst|CMD0[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD0\(9));

-- Location: FF_X12_Y15_N15
\sd_initial_inst|CMD0[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector183~0_combout\,
	ena => \sd_initial_inst|CMD0[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD0\(10));

-- Location: FF_X12_Y15_N13
\sd_initial_inst|CMD0[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector182~0_combout\,
	ena => \sd_initial_inst|CMD0[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD0\(11));

-- Location: LCCOMB_X12_Y15_N2
\sd_initial_inst|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Equal0~2_combout\ = (!\sd_initial_inst|CMD0\(8) & (!\sd_initial_inst|CMD0\(9) & (!\sd_initial_inst|CMD0\(10) & !\sd_initial_inst|CMD0\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|CMD0\(8),
	datab => \sd_initial_inst|CMD0\(9),
	datac => \sd_initial_inst|CMD0\(10),
	datad => \sd_initial_inst|CMD0\(11),
	combout => \sd_initial_inst|Equal0~2_combout\);

-- Location: FF_X11_Y15_N7
\sd_initial_inst|CMD0[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector172~0_combout\,
	ena => \sd_initial_inst|CMD0[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD0\(21));

-- Location: LCCOMB_X11_Y15_N18
\sd_initial_inst|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Equal0~7_combout\ = (!\sd_initial_inst|CMD0\(24) & (!\sd_initial_inst|CMD0\(25) & (!\sd_initial_inst|CMD0\(27) & !\sd_initial_inst|CMD0\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|CMD0\(24),
	datab => \sd_initial_inst|CMD0\(25),
	datac => \sd_initial_inst|CMD0\(27),
	datad => \sd_initial_inst|CMD0\(26),
	combout => \sd_initial_inst|Equal0~7_combout\);

-- Location: FF_X13_Y15_N3
\sd_initial_inst|CMD0[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector157~0_combout\,
	ena => \sd_initial_inst|CMD0[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD0\(36));

-- Location: FF_X13_Y15_N29
\sd_initial_inst|CMD0[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector153~0_combout\,
	ena => \sd_initial_inst|CMD0[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD0\(40));

-- Location: FF_X13_Y15_N15
\sd_initial_inst|CMD0[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector152~0_combout\,
	ena => \sd_initial_inst|CMD0[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD0\(41));

-- Location: FF_X13_Y15_N21
\sd_initial_inst|CMD0[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector151~0_combout\,
	ena => \sd_initial_inst|CMD0[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD0\(42));

-- Location: FF_X13_Y15_N27
\sd_initial_inst|CMD0[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector150~0_combout\,
	ena => \sd_initial_inst|CMD0[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD0\(43));

-- Location: LCCOMB_X13_Y15_N12
\sd_initial_inst|Equal0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Equal0~12_combout\ = (!\sd_initial_inst|CMD0\(43) & (!\sd_initial_inst|CMD0\(42) & (!\sd_initial_inst|CMD0\(41) & !\sd_initial_inst|CMD0\(40))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|CMD0\(43),
	datab => \sd_initial_inst|CMD0\(42),
	datac => \sd_initial_inst|CMD0\(41),
	datad => \sd_initial_inst|CMD0\(40),
	combout => \sd_initial_inst|Equal0~12_combout\);

-- Location: FF_X13_Y15_N11
\sd_initial_inst|CMD0[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector149~0_combout\,
	ena => \sd_initial_inst|CMD0[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD0\(44));

-- Location: FF_X26_Y15_N11
\sd_initial_inst|ACMD41[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector42~0_combout\,
	ena => \sd_initial_inst|ACMD41[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|ACMD41\(7));

-- Location: LCCOMB_X25_Y14_N12
\sd_initial_inst|Equal5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Equal5~2_combout\ = (\sd_initial_inst|ACMD41\(11)) # ((\sd_initial_inst|ACMD41\(8)) # ((\sd_initial_inst|ACMD41\(9)) # (\sd_initial_inst|ACMD41\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|ACMD41\(11),
	datab => \sd_initial_inst|ACMD41\(8),
	datac => \sd_initial_inst|ACMD41\(9),
	datad => \sd_initial_inst|ACMD41\(10),
	combout => \sd_initial_inst|Equal5~2_combout\);

-- Location: FF_X25_Y14_N29
\sd_initial_inst|ACMD41[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector33~0_combout\,
	ena => \sd_initial_inst|ACMD41[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|ACMD41\(16));

-- Location: FF_X19_Y15_N13
\sd_initial_inst|ACMD41[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector32~0_combout\,
	ena => \sd_initial_inst|ACMD41[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|ACMD41\(17));

-- Location: LCCOMB_X19_Y15_N10
\sd_initial_inst|Equal5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Equal5~5_combout\ = (\sd_initial_inst|ACMD41\(17)) # ((\sd_initial_inst|ACMD41\(19)) # ((\sd_initial_inst|ACMD41\(18)) # (\sd_initial_inst|ACMD41\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|ACMD41\(17),
	datab => \sd_initial_inst|ACMD41\(19),
	datac => \sd_initial_inst|ACMD41\(18),
	datad => \sd_initial_inst|ACMD41\(16),
	combout => \sd_initial_inst|Equal5~5_combout\);

-- Location: LCCOMB_X19_Y15_N24
\sd_initial_inst|Equal5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Equal5~6_combout\ = (\sd_initial_inst|ACMD41\(21)) # ((\sd_initial_inst|ACMD41\(23)) # ((\sd_initial_inst|ACMD41\(20)) # (\sd_initial_inst|ACMD41\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|ACMD41\(21),
	datab => \sd_initial_inst|ACMD41\(23),
	datac => \sd_initial_inst|ACMD41\(20),
	datad => \sd_initial_inst|ACMD41\(22),
	combout => \sd_initial_inst|Equal5~6_combout\);

-- Location: LCCOMB_X19_Y15_N2
\sd_initial_inst|Equal5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Equal5~7_combout\ = (\sd_initial_inst|ACMD41\(26)) # ((\sd_initial_inst|ACMD41\(25)) # ((\sd_initial_inst|ACMD41\(24)) # (\sd_initial_inst|ACMD41\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|ACMD41\(26),
	datab => \sd_initial_inst|ACMD41\(25),
	datac => \sd_initial_inst|ACMD41\(24),
	datad => \sd_initial_inst|ACMD41\(27),
	combout => \sd_initial_inst|Equal5~7_combout\);

-- Location: LCCOMB_X25_Y15_N10
\sd_initial_inst|Equal5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Equal5~8_combout\ = (\sd_initial_inst|ACMD41\(30)) # ((\sd_initial_inst|ACMD41\(28)) # ((\sd_initial_inst|ACMD41\(29)) # (\sd_initial_inst|ACMD41\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|ACMD41\(30),
	datab => \sd_initial_inst|ACMD41\(28),
	datac => \sd_initial_inst|ACMD41\(29),
	datad => \sd_initial_inst|ACMD41\(31),
	combout => \sd_initial_inst|Equal5~8_combout\);

-- Location: LCCOMB_X19_Y15_N6
\sd_initial_inst|Equal5~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Equal5~9_combout\ = (\sd_initial_inst|Equal5~5_combout\) # ((\sd_initial_inst|Equal5~6_combout\) # ((\sd_initial_inst|Equal5~8_combout\) # (\sd_initial_inst|Equal5~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|Equal5~5_combout\,
	datab => \sd_initial_inst|Equal5~6_combout\,
	datac => \sd_initial_inst|Equal5~8_combout\,
	datad => \sd_initial_inst|Equal5~7_combout\,
	combout => \sd_initial_inst|Equal5~9_combout\);

-- Location: FF_X26_Y14_N27
\sd_initial_inst|ACMD41[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector13~0_combout\,
	ena => \sd_initial_inst|ACMD41[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|ACMD41\(36));

-- Location: FF_X26_Y14_N13
\sd_initial_inst|ACMD41[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector12~0_combout\,
	ena => \sd_initial_inst|ACMD41[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|ACMD41\(37));

-- Location: LCCOMB_X26_Y14_N10
\sd_initial_inst|Equal5~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Equal5~11_combout\ = (\sd_initial_inst|ACMD41\(37)) # ((\sd_initial_inst|ACMD41\(39)) # ((\sd_initial_inst|ACMD41\(36)) # (!\sd_initial_inst|ACMD41\(38))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|ACMD41\(37),
	datab => \sd_initial_inst|ACMD41\(39),
	datac => \sd_initial_inst|ACMD41\(36),
	datad => \sd_initial_inst|ACMD41\(38),
	combout => \sd_initial_inst|Equal5~11_combout\);

-- Location: LCCOMB_X22_Y14_N12
\sd_initial_inst|Equal4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Equal4~2_combout\ = (\sd_initial_inst|CMD55\(11)) # ((\sd_initial_inst|CMD55\(10)) # ((\sd_initial_inst|CMD55\(9)) # (\sd_initial_inst|CMD55\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|CMD55\(11),
	datab => \sd_initial_inst|CMD55\(10),
	datac => \sd_initial_inst|CMD55\(9),
	datad => \sd_initial_inst|CMD55\(8),
	combout => \sd_initial_inst|Equal4~2_combout\);

-- Location: FF_X22_Y14_N11
\sd_initial_inst|CMD55[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector83~0_combout\,
	ena => \sd_initial_inst|CMD55[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD55\(14));

-- Location: LCCOMB_X23_Y14_N6
\sd_initial_inst|Equal4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Equal4~5_combout\ = (\sd_initial_inst|CMD55\(18)) # ((\sd_initial_inst|CMD55\(17)) # ((\sd_initial_inst|CMD55\(16)) # (\sd_initial_inst|CMD55\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|CMD55\(18),
	datab => \sd_initial_inst|CMD55\(17),
	datac => \sd_initial_inst|CMD55\(16),
	datad => \sd_initial_inst|CMD55\(19),
	combout => \sd_initial_inst|Equal4~5_combout\);

-- Location: FF_X24_Y14_N11
\sd_initial_inst|CMD55[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector69~0_combout\,
	ena => \sd_initial_inst|CMD55[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD55\(28));

-- Location: FF_X24_Y14_N17
\sd_initial_inst|CMD55[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector65~0_combout\,
	ena => \sd_initial_inst|CMD55[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD55\(32));

-- Location: FF_X24_Y14_N31
\sd_initial_inst|CMD55[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector64~0_combout\,
	ena => \sd_initial_inst|CMD55[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD55\(33));

-- Location: FF_X24_Y14_N13
\sd_initial_inst|CMD55[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector63~0_combout\,
	ena => \sd_initial_inst|CMD55[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD55\(34));

-- Location: LCCOMB_X24_Y14_N20
\sd_initial_inst|Equal4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Equal4~10_combout\ = (\sd_initial_inst|CMD55\(33)) # ((\sd_initial_inst|CMD55\(32)) # ((\sd_initial_inst|CMD55\(35)) # (\sd_initial_inst|CMD55\(34))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|CMD55\(33),
	datab => \sd_initial_inst|CMD55\(32),
	datac => \sd_initial_inst|CMD55\(35),
	datad => \sd_initial_inst|CMD55\(34),
	combout => \sd_initial_inst|Equal4~10_combout\);

-- Location: FF_X21_Y14_N13
\sd_initial_inst|CMD55[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector57~0_combout\,
	ena => \sd_initial_inst|CMD55[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD55\(40));

-- Location: FF_X21_Y14_N11
\sd_initial_inst|CMD55[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector52~0_combout\,
	ena => \sd_initial_inst|CMD55[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD55\(45));

-- Location: FF_X23_Y16_N27
\sd_initial_inst|CMD8[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector143~0_combout\,
	ena => \sd_initial_inst|CMD8[47]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD8\(2));

-- Location: LCCOMB_X24_Y16_N6
\sd_initial_inst|Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Equal2~2_combout\ = (\sd_initial_inst|CMD8\(11) & (\sd_initial_inst|CMD8\(9) & (!\sd_initial_inst|CMD8\(8) & !\sd_initial_inst|CMD8\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|CMD8\(11),
	datab => \sd_initial_inst|CMD8\(9),
	datac => \sd_initial_inst|CMD8\(8),
	datad => \sd_initial_inst|CMD8\(10),
	combout => \sd_initial_inst|Equal2~2_combout\);

-- Location: FF_X26_Y16_N25
\sd_initial_inst|CMD8[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector125~0_combout\,
	ena => \sd_initial_inst|CMD8[47]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD8\(20));

-- Location: FF_X26_Y16_N31
\sd_initial_inst|CMD8[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector124~0_combout\,
	ena => \sd_initial_inst|CMD8[47]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD8\(21));

-- Location: FF_X26_Y16_N5
\sd_initial_inst|CMD8[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector123~0_combout\,
	ena => \sd_initial_inst|CMD8[47]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD8\(22));

-- Location: FF_X26_Y16_N27
\sd_initial_inst|CMD8[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector122~0_combout\,
	ena => \sd_initial_inst|CMD8[47]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD8\(23));

-- Location: LCCOMB_X26_Y16_N12
\sd_initial_inst|Equal2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Equal2~6_combout\ = (!\sd_initial_inst|CMD8\(23) & (!\sd_initial_inst|CMD8\(22) & (!\sd_initial_inst|CMD8\(21) & !\sd_initial_inst|CMD8\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|CMD8\(23),
	datab => \sd_initial_inst|CMD8\(22),
	datac => \sd_initial_inst|CMD8\(21),
	datad => \sd_initial_inst|CMD8\(20),
	combout => \sd_initial_inst|Equal2~6_combout\);

-- Location: FF_X26_Y16_N11
\sd_initial_inst|CMD8[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector121~0_combout\,
	ena => \sd_initial_inst|CMD8[47]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD8\(24));

-- Location: FF_X25_Y16_N5
\sd_initial_inst|CMD8[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector113~0_combout\,
	ena => \sd_initial_inst|CMD8[47]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD8\(32));

-- Location: FF_X24_Y16_N27
\sd_initial_inst|CMD8[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector112~0_combout\,
	ena => \sd_initial_inst|CMD8[47]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD8\(33));

-- Location: FF_X24_Y16_N9
\sd_initial_inst|CMD8[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector111~0_combout\,
	ena => \sd_initial_inst|CMD8[47]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD8\(34));

-- Location: FF_X24_Y16_N23
\sd_initial_inst|CMD8[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector110~0_combout\,
	ena => \sd_initial_inst|CMD8[47]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD8\(35));

-- Location: LCCOMB_X24_Y16_N28
\sd_initial_inst|Equal2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Equal2~10_combout\ = (!\sd_initial_inst|CMD8\(33) & (!\sd_initial_inst|CMD8\(34) & (!\sd_initial_inst|CMD8\(35) & !\sd_initial_inst|CMD8\(32))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|CMD8\(33),
	datab => \sd_initial_inst|CMD8\(34),
	datac => \sd_initial_inst|CMD8\(35),
	datad => \sd_initial_inst|CMD8\(32),
	combout => \sd_initial_inst|Equal2~10_combout\);

-- Location: FF_X24_Y16_N3
\sd_initial_inst|CMD8[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector109~0_combout\,
	ena => \sd_initial_inst|CMD8[47]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD8\(36));

-- Location: FF_X23_Y16_N15
\sd_initial_inst|CMD8[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector108~0_combout\,
	ena => \sd_initial_inst|CMD8[47]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD8\(37));

-- Location: FF_X23_Y16_N5
\sd_initial_inst|CMD8[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector107~0_combout\,
	ena => \sd_initial_inst|CMD8[47]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD8\(38));

-- Location: FF_X23_Y16_N19
\sd_initial_inst|CMD8[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector106~0_combout\,
	ena => \sd_initial_inst|CMD8[47]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD8\(39));

-- Location: LCCOMB_X23_Y16_N20
\sd_initial_inst|Equal2~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Equal2~11_combout\ = (!\sd_initial_inst|CMD8\(36) & (!\sd_initial_inst|CMD8\(38) & (!\sd_initial_inst|CMD8\(37) & !\sd_initial_inst|CMD8\(39))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|CMD8\(36),
	datab => \sd_initial_inst|CMD8\(38),
	datac => \sd_initial_inst|CMD8\(37),
	datad => \sd_initial_inst|CMD8\(39),
	combout => \sd_initial_inst|Equal2~11_combout\);

-- Location: FF_X22_Y16_N13
\sd_initial_inst|CMD8[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector102~0_combout\,
	ena => \sd_initial_inst|CMD8[47]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD8\(43));

-- Location: FF_X22_Y16_N23
\sd_initial_inst|CMD8[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector105~0_combout\,
	ena => \sd_initial_inst|CMD8[47]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD8\(40));

-- Location: FF_X22_Y16_N5
\sd_initial_inst|CMD8[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector104~0_combout\,
	ena => \sd_initial_inst|CMD8[47]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD8\(41));

-- Location: FF_X22_Y16_N7
\sd_initial_inst|CMD8[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector103~0_combout\,
	ena => \sd_initial_inst|CMD8[47]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD8\(42));

-- Location: LCCOMB_X22_Y16_N0
\sd_initial_inst|Equal2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Equal2~12_combout\ = (!\sd_initial_inst|CMD8\(42) & (!\sd_initial_inst|CMD8\(41) & (!\sd_initial_inst|CMD8\(40) & \sd_initial_inst|CMD8\(43))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|CMD8\(42),
	datab => \sd_initial_inst|CMD8\(41),
	datac => \sd_initial_inst|CMD8\(40),
	datad => \sd_initial_inst|CMD8\(43),
	combout => \sd_initial_inst|Equal2~12_combout\);

-- Location: FF_X22_Y16_N11
\sd_initial_inst|CMD8[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector99~0_combout\,
	ena => \sd_initial_inst|CMD8[47]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD8\(46));

-- Location: FF_X22_Y16_N9
\sd_initial_inst|CMD8[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector101~0_combout\,
	ena => \sd_initial_inst|CMD8[47]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD8\(44));

-- Location: FF_X22_Y16_N31
\sd_initial_inst|CMD8[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector100~0_combout\,
	ena => \sd_initial_inst|CMD8[47]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD8\(45));

-- Location: LCCOMB_X22_Y16_N16
\sd_initial_inst|Equal2~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Equal2~13_combout\ = (\sd_initial_inst|CMD8\(46) & (!\sd_initial_inst|CMD8\(44) & (!\sd_initial_inst|CMD8\(45) & !\sd_initial_inst|CMD8\(47))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|CMD8\(46),
	datab => \sd_initial_inst|CMD8\(44),
	datac => \sd_initial_inst|CMD8\(45),
	datad => \sd_initial_inst|CMD8\(47),
	combout => \sd_initial_inst|Equal2~13_combout\);

-- Location: LCCOMB_X23_Y16_N10
\sd_initial_inst|Equal2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Equal2~14_combout\ = (\sd_initial_inst|Equal2~12_combout\ & (\sd_initial_inst|Equal2~10_combout\ & (\sd_initial_inst|Equal2~13_combout\ & \sd_initial_inst|Equal2~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|Equal2~12_combout\,
	datab => \sd_initial_inst|Equal2~10_combout\,
	datac => \sd_initial_inst|Equal2~13_combout\,
	datad => \sd_initial_inst|Equal2~11_combout\,
	combout => \sd_initial_inst|Equal2~14_combout\);

-- Location: LCCOMB_X31_Y12_N28
\mywav_inst|reg_config_inst|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|reg_config_inst|LessThan0~0_combout\ = ((!\mywav_inst|reg_config_inst|clock_20k_cnt\(5)) # (!\mywav_inst|reg_config_inst|clock_20k_cnt\(6))) # (!\mywav_inst|reg_config_inst|clock_20k_cnt\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mywav_inst|reg_config_inst|clock_20k_cnt\(7),
	datac => \mywav_inst|reg_config_inst|clock_20k_cnt\(6),
	datad => \mywav_inst|reg_config_inst|clock_20k_cnt\(5),
	combout => \mywav_inst|reg_config_inst|LessThan0~0_combout\);

-- Location: LCCOMB_X33_Y12_N4
\mywav_inst|reg_config_inst|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|reg_config_inst|LessThan0~1_combout\ = (!\mywav_inst|reg_config_inst|clock_20k_cnt\(0) & (!\mywav_inst|reg_config_inst|clock_20k_cnt\(2) & (!\mywav_inst|reg_config_inst|clock_20k_cnt\(3) & !\mywav_inst|reg_config_inst|clock_20k_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mywav_inst|reg_config_inst|clock_20k_cnt\(0),
	datab => \mywav_inst|reg_config_inst|clock_20k_cnt\(2),
	datac => \mywav_inst|reg_config_inst|clock_20k_cnt\(3),
	datad => \mywav_inst|reg_config_inst|clock_20k_cnt\(1),
	combout => \mywav_inst|reg_config_inst|LessThan0~1_combout\);

-- Location: LCCOMB_X33_Y12_N2
\mywav_inst|reg_config_inst|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|reg_config_inst|LessThan0~2_combout\ = (\mywav_inst|reg_config_inst|LessThan0~0_combout\) # ((!\mywav_inst|reg_config_inst|clock_20k_cnt\(4) & \mywav_inst|reg_config_inst|LessThan0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mywav_inst|reg_config_inst|clock_20k_cnt\(4),
	datac => \mywav_inst|reg_config_inst|LessThan0~1_combout\,
	datad => \mywav_inst|reg_config_inst|LessThan0~0_combout\,
	combout => \mywav_inst|reg_config_inst|LessThan0~2_combout\);

-- Location: LCCOMB_X33_Y12_N30
\mywav_inst|reg_config_inst|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|reg_config_inst|LessThan0~3_combout\ = ((!\mywav_inst|reg_config_inst|clock_20k_cnt\(9) & (\mywav_inst|reg_config_inst|LessThan0~2_combout\ & !\mywav_inst|reg_config_inst|clock_20k_cnt\(8)))) # (!\mywav_inst|reg_config_inst|clock_20k_cnt\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mywav_inst|reg_config_inst|clock_20k_cnt\(9),
	datab => \mywav_inst|reg_config_inst|LessThan0~2_combout\,
	datac => \mywav_inst|reg_config_inst|clock_20k_cnt\(8),
	datad => \mywav_inst|reg_config_inst|clock_20k_cnt\(10),
	combout => \mywav_inst|reg_config_inst|LessThan0~3_combout\);

-- Location: LCCOMB_X33_Y12_N24
\mywav_inst|reg_config_inst|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|reg_config_inst|LessThan0~4_combout\ = (!\mywav_inst|reg_config_inst|clock_20k_cnt\(11) & (!\mywav_inst|reg_config_inst|clock_20k_cnt\(12) & (!\mywav_inst|reg_config_inst|clock_20k_cnt\(13) & !\mywav_inst|reg_config_inst|clock_20k_cnt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mywav_inst|reg_config_inst|clock_20k_cnt\(11),
	datab => \mywav_inst|reg_config_inst|clock_20k_cnt\(12),
	datac => \mywav_inst|reg_config_inst|clock_20k_cnt\(13),
	datad => \mywav_inst|reg_config_inst|clock_20k_cnt\(14),
	combout => \mywav_inst|reg_config_inst|LessThan0~4_combout\);

-- Location: LCCOMB_X33_Y12_N22
\mywav_inst|reg_config_inst|clock_20k~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|reg_config_inst|clock_20k~0_combout\ = \mywav_inst|reg_config_inst|clock_20k~q\ $ ((((\mywav_inst|reg_config_inst|clock_20k_cnt\(15)) # (!\mywav_inst|reg_config_inst|LessThan0~4_combout\)) # 
-- (!\mywav_inst|reg_config_inst|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mywav_inst|reg_config_inst|LessThan0~3_combout\,
	datab => \mywav_inst|reg_config_inst|LessThan0~4_combout\,
	datac => \mywav_inst|reg_config_inst|clock_20k~q\,
	datad => \mywav_inst|reg_config_inst|clock_20k_cnt\(15),
	combout => \mywav_inst|reg_config_inst|clock_20k~0_combout\);

-- Location: LCCOMB_X18_Y21_N14
\sd_read_inst|CMD17~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|CMD17~14_combout\ = (\sd_read_inst|mystate\(0) & (\sd_initial_inst|init_o~q\ & \sd_read_inst|CMD17\(44)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_read_inst|mystate\(0),
	datab => \sd_initial_inst|init_o~q\,
	datad => \sd_read_inst|CMD17\(44),
	combout => \sd_read_inst|CMD17~14_combout\);

-- Location: LCCOMB_X23_Y20_N6
\sd_read_inst|mystate[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|mystate[3]~5_combout\ = (!\sd_read_inst|mystate\(2) & (\sd_read_inst|mystate\(0) & (!\sd_read_inst|mystate\(1) & \sd_read_inst|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_read_inst|mystate\(2),
	datab => \sd_read_inst|mystate\(0),
	datac => \sd_read_inst|mystate\(1),
	datad => \sd_read_inst|Mux3~0_combout\,
	combout => \sd_read_inst|mystate[3]~5_combout\);

-- Location: LCCOMB_X24_Y15_N6
\sd_initial_inst|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Equal1~0_combout\ = (!\sd_initial_inst|rx\(42) & (!\sd_initial_inst|rx\(43) & (!\sd_initial_inst|rx\(41) & !\sd_initial_inst|rx\(44))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|rx\(42),
	datab => \sd_initial_inst|rx\(43),
	datac => \sd_initial_inst|rx\(41),
	datad => \sd_initial_inst|rx\(44),
	combout => \sd_initial_inst|Equal1~0_combout\);

-- Location: LCCOMB_X21_Y16_N24
\sd_initial_inst|LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|LessThan3~0_combout\ = (((!\sd_initial_inst|cnt\(1)) # (!\sd_initial_inst|cnt\(2))) # (!\sd_initial_inst|cnt\(0))) # (!\sd_initial_inst|cnt\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|cnt\(3),
	datab => \sd_initial_inst|cnt\(0),
	datac => \sd_initial_inst|cnt\(2),
	datad => \sd_initial_inst|cnt\(1),
	combout => \sd_initial_inst|LessThan3~0_combout\);

-- Location: LCCOMB_X21_Y16_N30
\sd_initial_inst|LessThan3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|LessThan3~1_combout\ = ((\sd_initial_inst|LessThan3~0_combout\) # ((!\sd_initial_inst|cnt\(5)) # (!\sd_initial_inst|cnt\(4)))) # (!\sd_initial_inst|cnt\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|cnt\(6),
	datab => \sd_initial_inst|LessThan3~0_combout\,
	datac => \sd_initial_inst|cnt\(4),
	datad => \sd_initial_inst|cnt\(5),
	combout => \sd_initial_inst|LessThan3~1_combout\);

-- Location: LCCOMB_X22_Y15_N18
\sd_initial_inst|cnt[9]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|cnt[9]~10_combout\ = (!\sd_initial_inst|Equal4~9_combout\ & (!\sd_initial_inst|Equal4~4_combout\ & (!\sd_initial_inst|Equal4~14_combout\ & !\sd_initial_inst|always3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|Equal4~9_combout\,
	datab => \sd_initial_inst|Equal4~4_combout\,
	datac => \sd_initial_inst|Equal4~14_combout\,
	datad => \sd_initial_inst|always3~2_combout\,
	combout => \sd_initial_inst|cnt[9]~10_combout\);

-- Location: LCCOMB_X23_Y15_N26
\sd_initial_inst|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Mux0~3_combout\ = (\sd_initial_inst|state\(0) & (((\sd_initial_inst|Mux0~2_combout\)))) # (!\sd_initial_inst|state\(0) & (\sd_initial_inst|cnt[9]~10_combout\ & (!\sd_initial_inst|LessThan4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|state\(0),
	datab => \sd_initial_inst|cnt[9]~10_combout\,
	datac => \sd_initial_inst|LessThan4~1_combout\,
	datad => \sd_initial_inst|Mux0~2_combout\,
	combout => \sd_initial_inst|Mux0~3_combout\);

-- Location: LCCOMB_X23_Y15_N0
\sd_initial_inst|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Mux0~4_combout\ = (\sd_initial_inst|Mux0~6_combout\) # ((\sd_initial_inst|state\(1) & \sd_initial_inst|Mux0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|state\(1),
	datac => \sd_initial_inst|Mux0~3_combout\,
	datad => \sd_initial_inst|Mux0~6_combout\,
	combout => \sd_initial_inst|Mux0~4_combout\);

-- Location: LCCOMB_X24_Y15_N22
\sd_initial_inst|state~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|state~2_combout\ = ((\sd_initial_inst|Equal1~0_combout\ & (\sd_initial_inst|rx\(40) & \sd_initial_inst|Equal1~1_combout\))) # (!\sd_initial_inst|rx_valid~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|Equal1~0_combout\,
	datab => \sd_initial_inst|rx\(40),
	datac => \sd_initial_inst|rx_valid~q\,
	datad => \sd_initial_inst|Equal1~1_combout\,
	combout => \sd_initial_inst|state~2_combout\);

-- Location: LCCOMB_X21_Y15_N22
\sd_initial_inst|state~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|state~3_combout\ = (\sd_initial_inst|state\(2) & (((\sd_initial_inst|LessThan4~1_combout\) # (!\sd_initial_inst|cnt[9]~10_combout\)))) # (!\sd_initial_inst|state\(2) & (\sd_initial_inst|state~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|state~2_combout\,
	datab => \sd_initial_inst|state\(2),
	datac => \sd_initial_inst|LessThan4~1_combout\,
	datad => \sd_initial_inst|cnt[9]~10_combout\,
	combout => \sd_initial_inst|state~3_combout\);

-- Location: FF_X24_Y17_N11
\sd_initial_inst|en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|en~q\);

-- Location: FF_X24_Y17_N7
\sd_initial_inst|aa[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|aa~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|aa\(1));

-- Location: LCCOMB_X22_Y15_N8
\sd_initial_inst|CMD55[32]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|CMD55[32]~0_combout\ = (!\sd_initial_inst|Equal4~9_combout\ & (!\sd_initial_inst|Equal4~4_combout\ & (!\sd_initial_inst|Equal4~14_combout\ & \sd_initial_inst|state\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|Equal4~9_combout\,
	datab => \sd_initial_inst|Equal4~4_combout\,
	datac => \sd_initial_inst|Equal4~14_combout\,
	datad => \sd_initial_inst|state\(1),
	combout => \sd_initial_inst|CMD55[32]~0_combout\);

-- Location: LCCOMB_X22_Y15_N24
\sd_initial_inst|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Mux1~1_combout\ = (!\sd_initial_inst|state\(1) & (((\sd_initial_inst|always3~0_combout\) # (!\sd_initial_inst|rx_valid~q\)) # (!\sd_initial_inst|state\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|state\(0),
	datab => \sd_initial_inst|always3~0_combout\,
	datac => \sd_initial_inst|rx_valid~q\,
	datad => \sd_initial_inst|state\(1),
	combout => \sd_initial_inst|Mux1~1_combout\);

-- Location: LCCOMB_X23_Y15_N12
\sd_initial_inst|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Mux1~2_combout\ = (\sd_initial_inst|Mux1~1_combout\) # ((!\sd_initial_inst|state\(0) & ((\sd_initial_inst|LessThan4~1_combout\) # (!\sd_initial_inst|cnt[9]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|state\(0),
	datab => \sd_initial_inst|Mux1~1_combout\,
	datac => \sd_initial_inst|LessThan4~1_combout\,
	datad => \sd_initial_inst|cnt[9]~10_combout\,
	combout => \sd_initial_inst|Mux1~2_combout\);

-- Location: LCCOMB_X12_Y15_N10
\sd_initial_inst|Selector190~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector190~0_combout\ = (!\sd_initial_inst|CMD0\(2) & \sd_initial_inst|state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_initial_inst|CMD0\(2),
	datad => \sd_initial_inst|state\(0),
	combout => \sd_initial_inst|Selector190~0_combout\);

-- Location: LCCOMB_X12_Y15_N6
\sd_initial_inst|Selector187~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector187~0_combout\ = (\sd_initial_inst|CMD0\(5) & \sd_initial_inst|state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sd_initial_inst|CMD0\(5),
	datad => \sd_initial_inst|state\(0),
	combout => \sd_initial_inst|Selector187~0_combout\);

-- Location: LCCOMB_X12_Y15_N22
\sd_initial_inst|Selector185~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector185~0_combout\ = (!\sd_initial_inst|CMD0\(7) & \sd_initial_inst|state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_initial_inst|CMD0\(7),
	datad => \sd_initial_inst|state\(0),
	combout => \sd_initial_inst|Selector185~0_combout\);

-- Location: LCCOMB_X12_Y15_N24
\sd_initial_inst|Selector184~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector184~0_combout\ = (\sd_initial_inst|CMD0\(8) & \sd_initial_inst|state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sd_initial_inst|CMD0\(8),
	datad => \sd_initial_inst|state\(0),
	combout => \sd_initial_inst|Selector184~0_combout\);

-- Location: LCCOMB_X12_Y15_N14
\sd_initial_inst|Selector183~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector183~0_combout\ = (\sd_initial_inst|CMD0\(9) & \sd_initial_inst|state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_initial_inst|CMD0\(9),
	datad => \sd_initial_inst|state\(0),
	combout => \sd_initial_inst|Selector183~0_combout\);

-- Location: LCCOMB_X12_Y15_N12
\sd_initial_inst|Selector182~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector182~0_combout\ = (\sd_initial_inst|CMD0\(10) & \sd_initial_inst|state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sd_initial_inst|CMD0\(10),
	datad => \sd_initial_inst|state\(0),
	combout => \sd_initial_inst|Selector182~0_combout\);

-- Location: LCCOMB_X11_Y15_N6
\sd_initial_inst|Selector172~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector172~0_combout\ = (\sd_initial_inst|CMD0\(20) & \sd_initial_inst|state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_initial_inst|CMD0\(20),
	datad => \sd_initial_inst|state\(0),
	combout => \sd_initial_inst|Selector172~0_combout\);

-- Location: LCCOMB_X13_Y15_N2
\sd_initial_inst|Selector157~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector157~0_combout\ = (\sd_initial_inst|CMD0\(35) & \sd_initial_inst|state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sd_initial_inst|CMD0\(35),
	datad => \sd_initial_inst|state\(0),
	combout => \sd_initial_inst|Selector157~0_combout\);

-- Location: LCCOMB_X13_Y15_N28
\sd_initial_inst|Selector153~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector153~0_combout\ = (\sd_initial_inst|CMD0\(39) & \sd_initial_inst|state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sd_initial_inst|CMD0\(39),
	datad => \sd_initial_inst|state\(0),
	combout => \sd_initial_inst|Selector153~0_combout\);

-- Location: LCCOMB_X13_Y15_N14
\sd_initial_inst|Selector152~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector152~0_combout\ = (\sd_initial_inst|CMD0\(40) & \sd_initial_inst|state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_initial_inst|CMD0\(40),
	datad => \sd_initial_inst|state\(0),
	combout => \sd_initial_inst|Selector152~0_combout\);

-- Location: LCCOMB_X13_Y15_N20
\sd_initial_inst|Selector151~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector151~0_combout\ = (\sd_initial_inst|CMD0\(41) & \sd_initial_inst|state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sd_initial_inst|CMD0\(41),
	datad => \sd_initial_inst|state\(0),
	combout => \sd_initial_inst|Selector151~0_combout\);

-- Location: LCCOMB_X13_Y15_N26
\sd_initial_inst|Selector150~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector150~0_combout\ = (\sd_initial_inst|CMD0\(42) & \sd_initial_inst|state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_initial_inst|CMD0\(42),
	datad => \sd_initial_inst|state\(0),
	combout => \sd_initial_inst|Selector150~0_combout\);

-- Location: LCCOMB_X13_Y15_N10
\sd_initial_inst|Selector149~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector149~0_combout\ = (\sd_initial_inst|CMD0\(43) & \sd_initial_inst|state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sd_initial_inst|CMD0\(43),
	datad => \sd_initial_inst|state\(0),
	combout => \sd_initial_inst|Selector149~0_combout\);

-- Location: LCCOMB_X26_Y15_N10
\sd_initial_inst|Selector42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector42~0_combout\ = (\sd_initial_inst|state\(1) & ((\sd_initial_inst|ACMD41\(6)) # (!\sd_initial_inst|ACMD41[42]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|ACMD41[42]~0_combout\,
	datab => \sd_initial_inst|ACMD41\(6),
	datad => \sd_initial_inst|state\(1),
	combout => \sd_initial_inst|Selector42~0_combout\);

-- Location: LCCOMB_X25_Y14_N28
\sd_initial_inst|Selector33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector33~0_combout\ = (\sd_initial_inst|ACMD41[42]~0_combout\ & \sd_initial_inst|ACMD41\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|ACMD41[42]~0_combout\,
	datac => \sd_initial_inst|ACMD41\(15),
	combout => \sd_initial_inst|Selector33~0_combout\);

-- Location: LCCOMB_X19_Y15_N12
\sd_initial_inst|Selector32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector32~0_combout\ = (\sd_initial_inst|ACMD41[42]~0_combout\ & \sd_initial_inst|ACMD41\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|ACMD41[42]~0_combout\,
	datad => \sd_initial_inst|ACMD41\(16),
	combout => \sd_initial_inst|Selector32~0_combout\);

-- Location: LCCOMB_X26_Y14_N26
\sd_initial_inst|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector13~0_combout\ = (\sd_initial_inst|ACMD41\(35) & \sd_initial_inst|ACMD41[42]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sd_initial_inst|ACMD41\(35),
	datad => \sd_initial_inst|ACMD41[42]~0_combout\,
	combout => \sd_initial_inst|Selector13~0_combout\);

-- Location: LCCOMB_X26_Y14_N12
\sd_initial_inst|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector12~0_combout\ = (\sd_initial_inst|ACMD41\(36) & \sd_initial_inst|ACMD41[42]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sd_initial_inst|ACMD41\(36),
	datad => \sd_initial_inst|ACMD41[42]~0_combout\,
	combout => \sd_initial_inst|Selector12~0_combout\);

-- Location: LCCOMB_X22_Y14_N10
\sd_initial_inst|Selector83~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector83~0_combout\ = (\sd_initial_inst|state\(1) & \sd_initial_inst|CMD55\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|state\(1),
	datac => \sd_initial_inst|CMD55\(13),
	combout => \sd_initial_inst|Selector83~0_combout\);

-- Location: LCCOMB_X24_Y14_N10
\sd_initial_inst|Selector69~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector69~0_combout\ = (\sd_initial_inst|state\(1) & \sd_initial_inst|CMD55\(27))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sd_initial_inst|state\(1),
	datad => \sd_initial_inst|CMD55\(27),
	combout => \sd_initial_inst|Selector69~0_combout\);

-- Location: LCCOMB_X24_Y14_N16
\sd_initial_inst|Selector65~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector65~0_combout\ = (\sd_initial_inst|CMD55\(31) & \sd_initial_inst|state\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_initial_inst|CMD55\(31),
	datac => \sd_initial_inst|state\(1),
	combout => \sd_initial_inst|Selector65~0_combout\);

-- Location: LCCOMB_X24_Y14_N30
\sd_initial_inst|Selector64~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector64~0_combout\ = (\sd_initial_inst|CMD55\(32) & \sd_initial_inst|state\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_initial_inst|CMD55\(32),
	datac => \sd_initial_inst|state\(1),
	combout => \sd_initial_inst|Selector64~0_combout\);

-- Location: LCCOMB_X24_Y14_N12
\sd_initial_inst|Selector63~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector63~0_combout\ = (\sd_initial_inst|state\(1) & \sd_initial_inst|CMD55\(33))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_initial_inst|state\(1),
	datac => \sd_initial_inst|CMD55\(33),
	combout => \sd_initial_inst|Selector63~0_combout\);

-- Location: LCCOMB_X21_Y14_N12
\sd_initial_inst|Selector57~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector57~0_combout\ = (\sd_initial_inst|state\(1) & !\sd_initial_inst|CMD55\(39))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_initial_inst|state\(1),
	datad => \sd_initial_inst|CMD55\(39),
	combout => \sd_initial_inst|Selector57~0_combout\);

-- Location: LCCOMB_X21_Y14_N10
\sd_initial_inst|Selector52~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector52~0_combout\ = (\sd_initial_inst|CMD55\(44) & \sd_initial_inst|state\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sd_initial_inst|CMD55\(44),
	datad => \sd_initial_inst|state\(1),
	combout => \sd_initial_inst|Selector52~0_combout\);

-- Location: LCCOMB_X21_Y15_N12
\sd_initial_inst|CMD8[47]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|CMD8[47]~2_combout\ = (!\sd_initial_inst|state\(1) & !\sd_initial_inst|state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_initial_inst|state\(1),
	datac => \sd_initial_inst|state\(0),
	combout => \sd_initial_inst|CMD8[47]~2_combout\);

-- Location: LCCOMB_X23_Y15_N6
\sd_initial_inst|CMD8[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|CMD8[0]~5_combout\ = (\sd_initial_inst|reset~q\ & ((\sd_initial_inst|state\(0) & (\sd_initial_inst|CMD8\(0) & \sd_initial_inst|state\(1))) # (!\sd_initial_inst|state\(0) & (!\sd_initial_inst|CMD8\(0) & !\sd_initial_inst|state\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|state\(0),
	datab => \sd_initial_inst|CMD8\(0),
	datac => \sd_initial_inst|reset~q\,
	datad => \sd_initial_inst|state\(1),
	combout => \sd_initial_inst|CMD8[0]~5_combout\);

-- Location: LCCOMB_X23_Y16_N26
\sd_initial_inst|Selector143~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector143~0_combout\ = (\sd_initial_inst|state\(2) & \sd_initial_inst|CMD8\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sd_initial_inst|state\(2),
	datad => \sd_initial_inst|CMD8\(1),
	combout => \sd_initial_inst|Selector143~0_combout\);

-- Location: LCCOMB_X26_Y16_N24
\sd_initial_inst|Selector125~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector125~0_combout\ = (\sd_initial_inst|CMD8\(19) & \sd_initial_inst|state\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_initial_inst|CMD8\(19),
	datad => \sd_initial_inst|state\(2),
	combout => \sd_initial_inst|Selector125~0_combout\);

-- Location: LCCOMB_X26_Y16_N30
\sd_initial_inst|Selector124~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector124~0_combout\ = (\sd_initial_inst|CMD8\(20) & \sd_initial_inst|state\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_initial_inst|CMD8\(20),
	datad => \sd_initial_inst|state\(2),
	combout => \sd_initial_inst|Selector124~0_combout\);

-- Location: LCCOMB_X26_Y16_N4
\sd_initial_inst|Selector123~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector123~0_combout\ = (\sd_initial_inst|CMD8\(21) & \sd_initial_inst|state\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sd_initial_inst|CMD8\(21),
	datad => \sd_initial_inst|state\(2),
	combout => \sd_initial_inst|Selector123~0_combout\);

-- Location: LCCOMB_X26_Y16_N26
\sd_initial_inst|Selector122~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector122~0_combout\ = (\sd_initial_inst|CMD8\(22) & \sd_initial_inst|state\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sd_initial_inst|CMD8\(22),
	datad => \sd_initial_inst|state\(2),
	combout => \sd_initial_inst|Selector122~0_combout\);

-- Location: LCCOMB_X26_Y16_N10
\sd_initial_inst|Selector121~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector121~0_combout\ = (\sd_initial_inst|CMD8\(23) & \sd_initial_inst|state\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sd_initial_inst|CMD8\(23),
	datad => \sd_initial_inst|state\(2),
	combout => \sd_initial_inst|Selector121~0_combout\);

-- Location: LCCOMB_X25_Y16_N4
\sd_initial_inst|Selector113~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector113~0_combout\ = (\sd_initial_inst|CMD8\(31) & \sd_initial_inst|state\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_initial_inst|CMD8\(31),
	datad => \sd_initial_inst|state\(2),
	combout => \sd_initial_inst|Selector113~0_combout\);

-- Location: LCCOMB_X24_Y16_N26
\sd_initial_inst|Selector112~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector112~0_combout\ = (\sd_initial_inst|CMD8\(32) & \sd_initial_inst|state\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|CMD8\(32),
	datac => \sd_initial_inst|state\(2),
	combout => \sd_initial_inst|Selector112~0_combout\);

-- Location: LCCOMB_X24_Y16_N8
\sd_initial_inst|Selector111~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector111~0_combout\ = (\sd_initial_inst|state\(2) & \sd_initial_inst|CMD8\(33))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_initial_inst|state\(2),
	datac => \sd_initial_inst|CMD8\(33),
	combout => \sd_initial_inst|Selector111~0_combout\);

-- Location: LCCOMB_X24_Y16_N22
\sd_initial_inst|Selector110~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector110~0_combout\ = (\sd_initial_inst|state\(2) & \sd_initial_inst|CMD8\(34))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_initial_inst|state\(2),
	datac => \sd_initial_inst|CMD8\(34),
	combout => \sd_initial_inst|Selector110~0_combout\);

-- Location: LCCOMB_X24_Y16_N2
\sd_initial_inst|Selector109~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector109~0_combout\ = (\sd_initial_inst|state\(2) & \sd_initial_inst|CMD8\(35))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_initial_inst|state\(2),
	datac => \sd_initial_inst|CMD8\(35),
	combout => \sd_initial_inst|Selector109~0_combout\);

-- Location: LCCOMB_X23_Y16_N14
\sd_initial_inst|Selector108~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector108~0_combout\ = (\sd_initial_inst|state\(2) & \sd_initial_inst|CMD8\(36))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sd_initial_inst|state\(2),
	datad => \sd_initial_inst|CMD8\(36),
	combout => \sd_initial_inst|Selector108~0_combout\);

-- Location: LCCOMB_X23_Y16_N4
\sd_initial_inst|Selector107~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector107~0_combout\ = (\sd_initial_inst|state\(2) & \sd_initial_inst|CMD8\(37))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|state\(2),
	datac => \sd_initial_inst|CMD8\(37),
	combout => \sd_initial_inst|Selector107~0_combout\);

-- Location: LCCOMB_X23_Y16_N18
\sd_initial_inst|Selector106~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector106~0_combout\ = (\sd_initial_inst|state\(2) & \sd_initial_inst|CMD8\(38))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|state\(2),
	datac => \sd_initial_inst|CMD8\(38),
	combout => \sd_initial_inst|Selector106~0_combout\);

-- Location: LCCOMB_X22_Y16_N12
\sd_initial_inst|Selector102~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector102~0_combout\ = (!\sd_initial_inst|CMD8\(42) & \sd_initial_inst|state\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|CMD8\(42),
	datad => \sd_initial_inst|state\(2),
	combout => \sd_initial_inst|Selector102~0_combout\);

-- Location: LCCOMB_X22_Y16_N22
\sd_initial_inst|Selector105~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector105~0_combout\ = (\sd_initial_inst|state\(2) & \sd_initial_inst|CMD8\(39))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_initial_inst|state\(2),
	datad => \sd_initial_inst|CMD8\(39),
	combout => \sd_initial_inst|Selector105~0_combout\);

-- Location: LCCOMB_X22_Y16_N4
\sd_initial_inst|Selector104~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector104~0_combout\ = (\sd_initial_inst|CMD8\(40) & \sd_initial_inst|state\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sd_initial_inst|CMD8\(40),
	datad => \sd_initial_inst|state\(2),
	combout => \sd_initial_inst|Selector104~0_combout\);

-- Location: LCCOMB_X22_Y16_N6
\sd_initial_inst|Selector103~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector103~0_combout\ = (\sd_initial_inst|CMD8\(41) & \sd_initial_inst|state\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sd_initial_inst|CMD8\(41),
	datad => \sd_initial_inst|state\(2),
	combout => \sd_initial_inst|Selector103~0_combout\);

-- Location: LCCOMB_X22_Y16_N10
\sd_initial_inst|Selector99~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector99~0_combout\ = (!\sd_initial_inst|CMD8\(45) & \sd_initial_inst|state\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sd_initial_inst|CMD8\(45),
	datad => \sd_initial_inst|state\(2),
	combout => \sd_initial_inst|Selector99~0_combout\);

-- Location: LCCOMB_X22_Y16_N8
\sd_initial_inst|Selector101~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector101~0_combout\ = (!\sd_initial_inst|CMD8\(43) & \sd_initial_inst|state\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|CMD8\(43),
	datad => \sd_initial_inst|state\(2),
	combout => \sd_initial_inst|Selector101~0_combout\);

-- Location: LCCOMB_X22_Y16_N30
\sd_initial_inst|Selector100~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector100~0_combout\ = (\sd_initial_inst|CMD8\(44) & \sd_initial_inst|state\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sd_initial_inst|CMD8\(44),
	datad => \sd_initial_inst|state\(2),
	combout => \sd_initial_inst|Selector100~0_combout\);

-- Location: LCCOMB_X24_Y20_N28
\sd_read_inst|myvalid_o~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|myvalid_o~0_combout\ = (!\sd_read_inst|read_cnt\(9) & (\sd_read_inst|cntb\(2) & (\sd_read_inst|cntb\(1) & \sd_read_inst|cntb\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_read_inst|read_cnt\(9),
	datab => \sd_read_inst|cntb\(2),
	datac => \sd_read_inst|cntb\(1),
	datad => \sd_read_inst|cntb\(0),
	combout => \sd_read_inst|myvalid_o~0_combout\);

-- Location: LCCOMB_X24_Y20_N2
\sd_read_inst|myvalid_o~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|myvalid_o~1_combout\ = (\sd_read_inst|read_step.01~q\) # (!\sd_initial_inst|init_o~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sd_initial_inst|init_o~q\,
	datad => \sd_read_inst|read_step.01~q\,
	combout => \sd_read_inst|myvalid_o~1_combout\);

-- Location: LCCOMB_X19_Y18_N6
\ram_rw_control_inst|always7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|always7~0_combout\ = (\mywav_inst|sinwave_gen_inst|myvalid~q\ & \ram_rw_control_inst|myen~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mywav_inst|sinwave_gen_inst|myvalid~q\,
	datad => \ram_rw_control_inst|myen~q\,
	combout => \ram_rw_control_inst|always7~0_combout\);

-- Location: LCCOMB_X33_Y12_N6
\mywav_inst|reg_config_inst|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|reg_config_inst|LessThan0~5_combout\ = ((\mywav_inst|reg_config_inst|clock_20k_cnt\(15)) # (!\mywav_inst|reg_config_inst|LessThan0~3_combout\)) # (!\mywav_inst|reg_config_inst|LessThan0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mywav_inst|reg_config_inst|LessThan0~4_combout\,
	datac => \mywav_inst|reg_config_inst|LessThan0~3_combout\,
	datad => \mywav_inst|reg_config_inst|clock_20k_cnt\(15),
	combout => \mywav_inst|reg_config_inst|LessThan0~5_combout\);

-- Location: LCCOMB_X23_Y18_N30
\ram_rw_control_inst|always1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|always1~2_combout\ = (\ram_rw_control_inst|ram_addr\(10) & (\ram_rw_control_inst|ram_addr\(9) & (\ram_rw_control_inst|ram_addr\(8) & \ram_rw_control_inst|ram_addr\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_rw_control_inst|ram_addr\(10),
	datab => \ram_rw_control_inst|ram_addr\(9),
	datac => \ram_rw_control_inst|ram_addr\(8),
	datad => \ram_rw_control_inst|ram_addr\(7),
	combout => \ram_rw_control_inst|always1~2_combout\);

-- Location: FF_X28_Y21_N7
\sd_read_inst|aa[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_read_inst|aa~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|aa\(5));

-- Location: FF_X28_Y21_N11
\sd_read_inst|aa[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_read_inst|aa~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|aa\(1));

-- Location: LCCOMB_X18_Y20_N10
\ram_rw_control_inst|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|LessThan1~0_combout\ = ((!\ram_rw_control_inst|read_sec\(22)) # (!\ram_rw_control_inst|read_sec\(21))) # (!\ram_rw_control_inst|read_sec\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_rw_control_inst|read_sec\(23),
	datab => \ram_rw_control_inst|read_sec\(21),
	datad => \ram_rw_control_inst|read_sec\(22),
	combout => \ram_rw_control_inst|LessThan1~0_combout\);

-- Location: LCCOMB_X19_Y21_N18
\ram_rw_control_inst|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|LessThan1~3_combout\ = (((!\ram_rw_control_inst|read_sec\(10)) # (!\ram_rw_control_inst|read_sec\(11))) # (!\ram_rw_control_inst|read_sec\(9))) # (!\ram_rw_control_inst|read_sec\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_rw_control_inst|read_sec\(8),
	datab => \ram_rw_control_inst|read_sec\(9),
	datac => \ram_rw_control_inst|read_sec\(11),
	datad => \ram_rw_control_inst|read_sec\(10),
	combout => \ram_rw_control_inst|LessThan1~3_combout\);

-- Location: LCCOMB_X18_Y19_N12
\ram_rw_control_inst|read_sec[15]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|read_sec[15]~34_combout\ = (!\ram_rw_control_inst|read_sec\(24) & (!\ram_rw_control_inst|read_sec\(25) & (!\ram_rw_control_inst|read_sec\(26) & !\ram_rw_control_inst|read_sec\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_rw_control_inst|read_sec\(24),
	datab => \ram_rw_control_inst|read_sec\(25),
	datac => \ram_rw_control_inst|read_sec\(26),
	datad => \ram_rw_control_inst|read_sec\(27),
	combout => \ram_rw_control_inst|read_sec[15]~34_combout\);

-- Location: LCCOMB_X24_Y17_N10
\sd_initial_inst|en~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|en~0_combout\ = (\sd_initial_inst|aa~0_combout\) # ((!\SD_dataout~input_o\ & !\sd_initial_inst|en~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SD_dataout~input_o\,
	datac => \sd_initial_inst|en~q\,
	datad => \sd_initial_inst|aa~0_combout\,
	combout => \sd_initial_inst|en~0_combout\);

-- Location: LCCOMB_X24_Y17_N6
\sd_initial_inst|aa~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|aa~4_combout\ = (\sd_initial_inst|Add0~2_combout\ & \sd_initial_inst|aa~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sd_initial_inst|Add0~2_combout\,
	datad => \sd_initial_inst|aa~0_combout\,
	combout => \sd_initial_inst|aa~4_combout\);

-- Location: LCCOMB_X25_Y20_N10
\sd_read_inst|cntb~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|cntb~3_combout\ = \sd_read_inst|cntb\(2) $ (((\sd_read_inst|cntb\(1) & \sd_read_inst|cntb\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_read_inst|cntb\(1),
	datac => \sd_read_inst|cntb\(2),
	datad => \sd_read_inst|cntb\(0),
	combout => \sd_read_inst|cntb~3_combout\);

-- Location: FF_X26_Y20_N29
\sd_read_inst|read_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_read_inst|read_cnt~1_combout\,
	ena => \sd_read_inst|read_cnt[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|read_cnt\(8));

-- Location: FF_X26_Y20_N19
\sd_read_inst|read_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_read_inst|read_cnt~3_combout\,
	ena => \sd_read_inst|read_cnt[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|read_cnt\(7));

-- Location: FF_X26_Y20_N13
\sd_read_inst|read_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_read_inst|read_cnt~4_combout\,
	ena => \sd_read_inst|read_cnt[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|read_cnt\(6));

-- Location: FF_X26_Y20_N11
\sd_read_inst|read_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_read_inst|read_cnt~5_combout\,
	ena => \sd_read_inst|read_cnt[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|read_cnt\(5));

-- Location: FF_X26_Y20_N5
\sd_read_inst|read_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_read_inst|read_cnt~6_combout\,
	ena => \sd_read_inst|read_cnt[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|read_cnt\(4));

-- Location: FF_X26_Y20_N7
\sd_read_inst|read_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_read_inst|read_cnt~7_combout\,
	ena => \sd_read_inst|read_cnt[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|read_cnt\(3));

-- Location: FF_X26_Y20_N21
\sd_read_inst|read_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_read_inst|read_cnt~8_combout\,
	ena => \sd_read_inst|read_cnt[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|read_cnt\(2));

-- Location: FF_X26_Y20_N27
\sd_read_inst|read_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_read_inst|read_cnt~9_combout\,
	ena => \sd_read_inst|read_cnt[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|read_cnt\(1));

-- Location: FF_X26_Y20_N9
\sd_read_inst|read_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_read_inst|read_cnt~10_combout\,
	ena => \sd_read_inst|read_cnt[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|read_cnt\(0));

-- Location: LCCOMB_X19_Y18_N0
\ram_rw_control_inst|myen~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|myen~0_combout\ = (\ram_rw_control_inst|myen~q\) # ((!\ram_rw_control_inst|read_req_a~q\ & \ram_rw_control_inst|read_req_b~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ram_rw_control_inst|read_req_a~q\,
	datac => \ram_rw_control_inst|myen~q\,
	datad => \ram_rw_control_inst|read_req_b~q\,
	combout => \ram_rw_control_inst|myen~0_combout\);

-- Location: FF_X30_Y12_N15
\mywav_inst|reg_config_inst|i2c_data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mywav_inst|reg_config_inst|clock_20k~clkctrl_outclk\,
	asdata => \mywav_inst|reg_config_inst|WideOr0~0_combout\,
	sload => VCC,
	ena => \mywav_inst|reg_config_inst|i2c_data[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mywav_inst|reg_config_inst|i2c_data\(9));

-- Location: FF_X29_Y12_N13
\mywav_inst|reg_config_inst|i2c_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mywav_inst|reg_config_inst|clock_20k~clkctrl_outclk\,
	d => \mywav_inst|reg_config_inst|Decoder3~0_combout\,
	ena => \mywav_inst|reg_config_inst|i2c_data[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mywav_inst|reg_config_inst|i2c_data\(7));

-- Location: FF_X29_Y12_N11
\mywav_inst|reg_config_inst|i2c_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mywav_inst|reg_config_inst|clock_20k~clkctrl_outclk\,
	d => \mywav_inst|reg_config_inst|WideOr3~0_combout\,
	ena => \mywav_inst|reg_config_inst|i2c_data[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mywav_inst|reg_config_inst|i2c_data\(4));

-- Location: FF_X30_Y12_N27
\mywav_inst|reg_config_inst|i2c_data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mywav_inst|reg_config_inst|clock_20k~clkctrl_outclk\,
	d => \mywav_inst|reg_config_inst|Decoder2~0_combout\,
	ena => \mywav_inst|reg_config_inst|i2c_data[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mywav_inst|reg_config_inst|i2c_data\(10));

-- Location: LCCOMB_X28_Y21_N6
\sd_read_inst|aa~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|aa~2_combout\ = (\sd_read_inst|Add0~10_combout\ & \sd_read_inst|aa~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_read_inst|Add0~10_combout\,
	datad => \sd_read_inst|aa~0_combout\,
	combout => \sd_read_inst|aa~2_combout\);

-- Location: LCCOMB_X28_Y21_N10
\sd_read_inst|aa~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|aa~4_combout\ = (\sd_read_inst|Add0~2_combout\ & \sd_read_inst|aa~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_read_inst|Add0~2_combout\,
	datad => \sd_read_inst|aa~0_combout\,
	combout => \sd_read_inst|aa~4_combout\);

-- Location: LCCOMB_X26_Y20_N28
\sd_read_inst|read_cnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|read_cnt~1_combout\ = (\sd_read_inst|read_step.01~q\ & \sd_read_inst|Add3~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sd_read_inst|read_step.01~q\,
	datad => \sd_read_inst|Add3~16_combout\,
	combout => \sd_read_inst|read_cnt~1_combout\);

-- Location: LCCOMB_X26_Y20_N0
\sd_read_inst|read_cnt[8]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|read_cnt[8]~2_combout\ = (\sd_initial_inst|init_o~q\ & (((\sd_read_inst|LessThan3~0_combout\ & !\sd_read_inst|read_cnt\(9))) # (!\sd_read_inst|read_step.01~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|init_o~q\,
	datab => \sd_read_inst|LessThan3~0_combout\,
	datac => \sd_read_inst|read_step.01~q\,
	datad => \sd_read_inst|read_cnt\(9),
	combout => \sd_read_inst|read_cnt[8]~2_combout\);

-- Location: LCCOMB_X26_Y20_N18
\sd_read_inst|read_cnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|read_cnt~3_combout\ = (\sd_read_inst|read_step.01~q\ & \sd_read_inst|Add3~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_read_inst|read_step.01~q\,
	datac => \sd_read_inst|Add3~14_combout\,
	combout => \sd_read_inst|read_cnt~3_combout\);

-- Location: LCCOMB_X26_Y20_N12
\sd_read_inst|read_cnt~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|read_cnt~4_combout\ = (\sd_read_inst|read_step.01~q\ & \sd_read_inst|Add3~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sd_read_inst|read_step.01~q\,
	datad => \sd_read_inst|Add3~12_combout\,
	combout => \sd_read_inst|read_cnt~4_combout\);

-- Location: LCCOMB_X26_Y20_N10
\sd_read_inst|read_cnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|read_cnt~5_combout\ = (\sd_read_inst|read_step.01~q\ & \sd_read_inst|Add3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sd_read_inst|read_step.01~q\,
	datad => \sd_read_inst|Add3~10_combout\,
	combout => \sd_read_inst|read_cnt~5_combout\);

-- Location: LCCOMB_X26_Y20_N4
\sd_read_inst|read_cnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|read_cnt~6_combout\ = (\sd_read_inst|read_step.01~q\ & \sd_read_inst|Add3~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sd_read_inst|read_step.01~q\,
	datad => \sd_read_inst|Add3~8_combout\,
	combout => \sd_read_inst|read_cnt~6_combout\);

-- Location: LCCOMB_X26_Y20_N6
\sd_read_inst|read_cnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|read_cnt~7_combout\ = (\sd_read_inst|read_step.01~q\ & \sd_read_inst|Add3~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sd_read_inst|read_step.01~q\,
	datad => \sd_read_inst|Add3~6_combout\,
	combout => \sd_read_inst|read_cnt~7_combout\);

-- Location: LCCOMB_X26_Y20_N20
\sd_read_inst|read_cnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|read_cnt~8_combout\ = (\sd_read_inst|read_step.01~q\ & \sd_read_inst|Add3~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_read_inst|read_step.01~q\,
	datac => \sd_read_inst|Add3~4_combout\,
	combout => \sd_read_inst|read_cnt~8_combout\);

-- Location: LCCOMB_X26_Y20_N26
\sd_read_inst|read_cnt~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|read_cnt~9_combout\ = (\sd_read_inst|read_step.01~q\ & \sd_read_inst|Add3~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sd_read_inst|read_step.01~q\,
	datad => \sd_read_inst|Add3~2_combout\,
	combout => \sd_read_inst|read_cnt~9_combout\);

-- Location: LCCOMB_X26_Y20_N8
\sd_read_inst|read_cnt~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|read_cnt~10_combout\ = (\sd_read_inst|read_step.01~q\ & \sd_read_inst|Add3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sd_read_inst|read_step.01~q\,
	datad => \sd_read_inst|Add3~0_combout\,
	combout => \sd_read_inst|read_cnt~10_combout\);

-- Location: LCCOMB_X23_Y20_N12
\sd_read_inst|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|Selector0~0_combout\ = (\sd_read_inst|mystate\(2) & ((\sd_read_inst|mystate\(0)) # (\sd_read_inst|mystate\(1)))) # (!\sd_read_inst|mystate\(2) & (\sd_read_inst|mystate\(0) & \sd_read_inst|mystate\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_read_inst|mystate\(2),
	datab => \sd_read_inst|mystate\(0),
	datac => \sd_read_inst|mystate\(1),
	combout => \sd_read_inst|Selector0~0_combout\);

-- Location: LCCOMB_X29_Y12_N0
\mywav_inst|reg_config_inst|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|reg_config_inst|WideOr0~0_combout\ = (\mywav_inst|reg_config_inst|reg_index\(0) & (((!\mywav_inst|reg_config_inst|reg_index\(2) & !\mywav_inst|reg_config_inst|reg_index\(1))) # (!\mywav_inst|reg_config_inst|reg_index\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mywav_inst|reg_config_inst|reg_index\(2),
	datab => \mywav_inst|reg_config_inst|reg_index\(1),
	datac => \mywav_inst|reg_config_inst|reg_index\(0),
	datad => \mywav_inst|reg_config_inst|reg_index\(3),
	combout => \mywav_inst|reg_config_inst|WideOr0~0_combout\);

-- Location: LCCOMB_X29_Y12_N12
\mywav_inst|reg_config_inst|Decoder3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|reg_config_inst|Decoder3~0_combout\ = (\mywav_inst|reg_config_inst|reg_index\(2) & (!\mywav_inst|reg_config_inst|reg_index\(1) & (!\mywav_inst|reg_config_inst|reg_index\(0) & !\mywav_inst|reg_config_inst|reg_index\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mywav_inst|reg_config_inst|reg_index\(2),
	datab => \mywav_inst|reg_config_inst|reg_index\(1),
	datac => \mywav_inst|reg_config_inst|reg_index\(0),
	datad => \mywav_inst|reg_config_inst|reg_index\(3),
	combout => \mywav_inst|reg_config_inst|Decoder3~0_combout\);

-- Location: LCCOMB_X29_Y12_N10
\mywav_inst|reg_config_inst|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|reg_config_inst|WideOr3~0_combout\ = (\mywav_inst|reg_config_inst|reg_index\(2) & ((\mywav_inst|reg_config_inst|reg_index\(3)) # ((!\mywav_inst|reg_config_inst|reg_index\(1) & !\mywav_inst|reg_config_inst|reg_index\(0))))) # 
-- (!\mywav_inst|reg_config_inst|reg_index\(2) & ((\mywav_inst|reg_config_inst|reg_index\(1)) # ((!\mywav_inst|reg_config_inst|reg_index\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mywav_inst|reg_config_inst|reg_index\(2),
	datab => \mywav_inst|reg_config_inst|reg_index\(1),
	datac => \mywav_inst|reg_config_inst|reg_index\(0),
	datad => \mywav_inst|reg_config_inst|reg_index\(3),
	combout => \mywav_inst|reg_config_inst|WideOr3~0_combout\);

-- Location: LCCOMB_X30_Y12_N26
\mywav_inst|reg_config_inst|Decoder2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|reg_config_inst|Decoder2~0_combout\ = (\mywav_inst|reg_config_inst|reg_index\(1) & !\mywav_inst|reg_config_inst|reg_index\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mywav_inst|reg_config_inst|reg_index\(1),
	datad => \mywav_inst|reg_config_inst|reg_index\(3),
	combout => \mywav_inst|reg_config_inst|Decoder2~0_combout\);

-- Location: LCCOMB_X18_Y18_N30
\ram_rw_control_inst|next_read_reg~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|next_read_reg~1_combout\ = (!\ram_rw_control_inst|ram_raddr\(5) & (!\ram_rw_control_inst|ram_raddr\(3) & (!\ram_rw_control_inst|ram_raddr\(4) & !\ram_rw_control_inst|ram_raddr\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_rw_control_inst|ram_raddr\(5),
	datab => \ram_rw_control_inst|ram_raddr\(3),
	datac => \ram_rw_control_inst|ram_raddr\(4),
	datad => \ram_rw_control_inst|ram_raddr\(6),
	combout => \ram_rw_control_inst|next_read_reg~1_combout\);

-- Location: LCCOMB_X23_Y15_N10
\sd_initial_inst|Mux0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Mux0~6_combout\ = (\sd_initial_inst|state\(0) & (!\sd_initial_inst|always3~0_combout\ & (\sd_initial_inst|rx_valid~q\ & !\sd_initial_inst|state\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|state\(0),
	datab => \sd_initial_inst|always3~0_combout\,
	datac => \sd_initial_inst|rx_valid~q\,
	datad => \sd_initial_inst|state\(1),
	combout => \sd_initial_inst|Mux0~6_combout\);

-- Location: LCCOMB_X33_Y12_N12
\mywav_inst|reg_config_inst|u1|sclk~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|reg_config_inst|u1|sclk~5_combout\ = (\mywav_inst|reg_config_inst|u1|cyc_count\(2) & (((!\mywav_inst|reg_config_inst|u1|cyc_count\(4)) # (!\mywav_inst|reg_config_inst|u1|cyc_count\(0))) # (!\mywav_inst|reg_config_inst|u1|cyc_count\(3)))) # 
-- (!\mywav_inst|reg_config_inst|u1|cyc_count\(2) & ((\mywav_inst|reg_config_inst|u1|cyc_count\(3)) # ((\mywav_inst|reg_config_inst|u1|cyc_count\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mywav_inst|reg_config_inst|u1|cyc_count\(2),
	datab => \mywav_inst|reg_config_inst|u1|cyc_count\(3),
	datac => \mywav_inst|reg_config_inst|u1|cyc_count\(0),
	datad => \mywav_inst|reg_config_inst|u1|cyc_count\(4),
	combout => \mywav_inst|reg_config_inst|u1|sclk~5_combout\);

-- Location: IOOBUF_X30_Y24_N2
\SD_clk~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	devoe => ww_devoe,
	o => ww_SD_clk);

-- Location: IOOBUF_X32_Y24_N23
\SD_cs~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SD_cs~0_combout\,
	devoe => ww_devoe,
	o => ww_SD_cs);

-- Location: IOOBUF_X23_Y24_N9
\SD_datain~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SD_datain~0_combout\,
	devoe => ww_devoe,
	o => ww_SD_datain);

-- Location: IOOBUF_X3_Y24_N23
\DACDAT~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mywav_inst|sinwave_gen_inst|Mux0~9_combout\,
	devoe => ww_devoe,
	o => ww_DACDAT);

-- Location: IOOBUF_X0_Y22_N2
\I2C_SCLK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mywav_inst|reg_config_inst|u1|i2c_sclk~2_combout\,
	devoe => ww_devoe,
	o => ww_I2C_SCLK);

-- Location: IOOBUF_X0_Y22_N16
\I2C_SDAT~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \mywav_inst|reg_config_inst|u1|ALT_INV_reg_sdat~q\,
	oe => VCC,
	devoe => ww_devoe,
	o => I2C_SDAT);

-- Location: LCCOMB_X33_Y12_N0
\mywav_inst|reg_config_inst|clock_20k~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|reg_config_inst|clock_20k~feeder_combout\ = \mywav_inst|reg_config_inst|clock_20k~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mywav_inst|reg_config_inst|clock_20k~0_combout\,
	combout => \mywav_inst|reg_config_inst|clock_20k~feeder_combout\);

-- Location: IOIBUF_X34_Y2_N22
\rst_n~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst_n,
	o => \rst_n~input_o\);

-- Location: FF_X33_Y12_N1
\mywav_inst|reg_config_inst|clock_20k\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	d => \mywav_inst|reg_config_inst|clock_20k~feeder_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mywav_inst|reg_config_inst|clock_20k~q\);

-- Location: CLKCTRL_G5
\mywav_inst|reg_config_inst|clock_20k~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \mywav_inst|reg_config_inst|clock_20k~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \mywav_inst|reg_config_inst|clock_20k~clkctrl_outclk\);

-- Location: LCCOMB_X31_Y12_N4
\mywav_inst|reg_config_inst|u1|cyc_count[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|reg_config_inst|u1|cyc_count[0]~6_combout\ = !\mywav_inst|reg_config_inst|u1|cyc_count\(0)
-- \mywav_inst|reg_config_inst|u1|cyc_count[0]~7\ = CARRY(!\mywav_inst|reg_config_inst|u1|cyc_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mywav_inst|reg_config_inst|u1|cyc_count\(0),
	combout => \mywav_inst|reg_config_inst|u1|cyc_count[0]~6_combout\,
	cout => \mywav_inst|reg_config_inst|u1|cyc_count[0]~7\);

-- Location: LCCOMB_X31_Y12_N6
\mywav_inst|reg_config_inst|u1|cyc_count[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|reg_config_inst|u1|cyc_count[1]~10_combout\ = (\mywav_inst|reg_config_inst|u1|cyc_count\(1) & ((GND) # (!\mywav_inst|reg_config_inst|u1|cyc_count[0]~7\))) # (!\mywav_inst|reg_config_inst|u1|cyc_count\(1) & 
-- (\mywav_inst|reg_config_inst|u1|cyc_count[0]~7\ $ (GND)))
-- \mywav_inst|reg_config_inst|u1|cyc_count[1]~11\ = CARRY((\mywav_inst|reg_config_inst|u1|cyc_count\(1)) # (!\mywav_inst|reg_config_inst|u1|cyc_count[0]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mywav_inst|reg_config_inst|u1|cyc_count\(1),
	datad => VCC,
	cin => \mywav_inst|reg_config_inst|u1|cyc_count[0]~7\,
	combout => \mywav_inst|reg_config_inst|u1|cyc_count[1]~10_combout\,
	cout => \mywav_inst|reg_config_inst|u1|cyc_count[1]~11\);

-- Location: LCCOMB_X31_Y12_N10
\mywav_inst|reg_config_inst|u1|cyc_count[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|reg_config_inst|u1|cyc_count[3]~14_combout\ = (\mywav_inst|reg_config_inst|u1|cyc_count\(3) & ((GND) # (!\mywav_inst|reg_config_inst|u1|cyc_count[2]~13\))) # (!\mywav_inst|reg_config_inst|u1|cyc_count\(3) & 
-- (\mywav_inst|reg_config_inst|u1|cyc_count[2]~13\ $ (GND)))
-- \mywav_inst|reg_config_inst|u1|cyc_count[3]~15\ = CARRY((\mywav_inst|reg_config_inst|u1|cyc_count\(3)) # (!\mywav_inst|reg_config_inst|u1|cyc_count[2]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mywav_inst|reg_config_inst|u1|cyc_count\(3),
	datad => VCC,
	cin => \mywav_inst|reg_config_inst|u1|cyc_count[2]~13\,
	combout => \mywav_inst|reg_config_inst|u1|cyc_count[3]~14_combout\,
	cout => \mywav_inst|reg_config_inst|u1|cyc_count[3]~15\);

-- Location: LCCOMB_X31_Y12_N12
\mywav_inst|reg_config_inst|u1|cyc_count[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|reg_config_inst|u1|cyc_count[4]~16_combout\ = (\mywav_inst|reg_config_inst|u1|cyc_count\(4) & (\mywav_inst|reg_config_inst|u1|cyc_count[3]~15\ & VCC)) # (!\mywav_inst|reg_config_inst|u1|cyc_count\(4) & 
-- (!\mywav_inst|reg_config_inst|u1|cyc_count[3]~15\))
-- \mywav_inst|reg_config_inst|u1|cyc_count[4]~17\ = CARRY((!\mywav_inst|reg_config_inst|u1|cyc_count\(4) & !\mywav_inst|reg_config_inst|u1|cyc_count[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mywav_inst|reg_config_inst|u1|cyc_count\(4),
	datad => VCC,
	cin => \mywav_inst|reg_config_inst|u1|cyc_count[3]~15\,
	combout => \mywav_inst|reg_config_inst|u1|cyc_count[4]~16_combout\,
	cout => \mywav_inst|reg_config_inst|u1|cyc_count[4]~17\);

-- Location: LCCOMB_X31_Y12_N14
\mywav_inst|reg_config_inst|u1|cyc_count[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|reg_config_inst|u1|cyc_count[5]~18_combout\ = \mywav_inst|reg_config_inst|u1|cyc_count\(5) $ (\mywav_inst|reg_config_inst|u1|cyc_count[4]~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mywav_inst|reg_config_inst|u1|cyc_count\(5),
	cin => \mywav_inst|reg_config_inst|u1|cyc_count[4]~17\,
	combout => \mywav_inst|reg_config_inst|u1|cyc_count[5]~18_combout\);

-- Location: FF_X31_Y12_N15
\mywav_inst|reg_config_inst|u1|cyc_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mywav_inst|reg_config_inst|clock_20k~clkctrl_outclk\,
	d => \mywav_inst|reg_config_inst|u1|cyc_count[5]~18_combout\,
	asdata => VCC,
	clrn => \rst_n~input_o\,
	sload => \mywav_inst|reg_config_inst|ALT_INV_start~q\,
	ena => \mywav_inst|reg_config_inst|u1|cyc_count[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mywav_inst|reg_config_inst|u1|cyc_count\(5));

-- Location: LCCOMB_X31_Y12_N20
\mywav_inst|reg_config_inst|u1|cyc_count[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|reg_config_inst|u1|cyc_count[0]~8_combout\ = (!\mywav_inst|reg_config_inst|u1|cyc_count\(3) & (!\mywav_inst|reg_config_inst|u1|cyc_count\(1) & (!\mywav_inst|reg_config_inst|u1|cyc_count\(2) & \mywav_inst|reg_config_inst|start~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mywav_inst|reg_config_inst|u1|cyc_count\(3),
	datab => \mywav_inst|reg_config_inst|u1|cyc_count\(1),
	datac => \mywav_inst|reg_config_inst|u1|cyc_count\(2),
	datad => \mywav_inst|reg_config_inst|start~q\,
	combout => \mywav_inst|reg_config_inst|u1|cyc_count[0]~8_combout\);

-- Location: LCCOMB_X31_Y12_N30
\mywav_inst|reg_config_inst|u1|cyc_count[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|reg_config_inst|u1|cyc_count[0]~9_combout\ = (\mywav_inst|reg_config_inst|u1|cyc_count\(4)) # ((\mywav_inst|reg_config_inst|u1|cyc_count\(0)) # ((\mywav_inst|reg_config_inst|u1|cyc_count\(5)) # 
-- (!\mywav_inst|reg_config_inst|u1|cyc_count[0]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mywav_inst|reg_config_inst|u1|cyc_count\(4),
	datab => \mywav_inst|reg_config_inst|u1|cyc_count\(0),
	datac => \mywav_inst|reg_config_inst|u1|cyc_count\(5),
	datad => \mywav_inst|reg_config_inst|u1|cyc_count[0]~8_combout\,
	combout => \mywav_inst|reg_config_inst|u1|cyc_count[0]~9_combout\);

-- Location: FF_X31_Y12_N7
\mywav_inst|reg_config_inst|u1|cyc_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mywav_inst|reg_config_inst|clock_20k~clkctrl_outclk\,
	d => \mywav_inst|reg_config_inst|u1|cyc_count[1]~10_combout\,
	asdata => VCC,
	clrn => \rst_n~input_o\,
	sload => \mywav_inst|reg_config_inst|ALT_INV_start~q\,
	ena => \mywav_inst|reg_config_inst|u1|cyc_count[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mywav_inst|reg_config_inst|u1|cyc_count\(1));

-- Location: FF_X31_Y12_N13
\mywav_inst|reg_config_inst|u1|cyc_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mywav_inst|reg_config_inst|clock_20k~clkctrl_outclk\,
	d => \mywav_inst|reg_config_inst|u1|cyc_count[4]~16_combout\,
	asdata => VCC,
	clrn => \rst_n~input_o\,
	sload => \mywav_inst|reg_config_inst|ALT_INV_start~q\,
	ena => \mywav_inst|reg_config_inst|u1|cyc_count[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mywav_inst|reg_config_inst|u1|cyc_count\(4));

-- Location: LCCOMB_X33_Y12_N28
\mywav_inst|reg_config_inst|u1|sclk~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|reg_config_inst|u1|sclk~2_combout\ = (\mywav_inst|reg_config_inst|u1|cyc_count\(4) & \mywav_inst|reg_config_inst|u1|cyc_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mywav_inst|reg_config_inst|u1|cyc_count\(4),
	datad => \mywav_inst|reg_config_inst|u1|cyc_count\(3),
	combout => \mywav_inst|reg_config_inst|u1|sclk~2_combout\);

-- Location: LCCOMB_X33_Y12_N18
\mywav_inst|reg_config_inst|u1|tr_end~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|reg_config_inst|u1|tr_end~0_combout\ = (\mywav_inst|reg_config_inst|u1|cyc_count\(2) & (\mywav_inst|reg_config_inst|u1|cyc_count\(0) & (\mywav_inst|reg_config_inst|u1|cyc_count\(1) & \mywav_inst|reg_config_inst|u1|sclk~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mywav_inst|reg_config_inst|u1|cyc_count\(2),
	datab => \mywav_inst|reg_config_inst|u1|cyc_count\(0),
	datac => \mywav_inst|reg_config_inst|u1|cyc_count\(1),
	datad => \mywav_inst|reg_config_inst|u1|sclk~2_combout\,
	combout => \mywav_inst|reg_config_inst|u1|tr_end~0_combout\);

-- Location: LCCOMB_X33_Y12_N10
\mywav_inst|reg_config_inst|u1|tr_end~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|reg_config_inst|u1|tr_end~1_combout\ = (\mywav_inst|reg_config_inst|u1|tr_end~0_combout\ & (!\mywav_inst|reg_config_inst|u1|cyc_count\(5))) # (!\mywav_inst|reg_config_inst|u1|tr_end~0_combout\ & ((\mywav_inst|reg_config_inst|u1|tr_end~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mywav_inst|reg_config_inst|u1|cyc_count\(5),
	datac => \mywav_inst|reg_config_inst|u1|tr_end~q\,
	datad => \mywav_inst|reg_config_inst|u1|tr_end~0_combout\,
	combout => \mywav_inst|reg_config_inst|u1|tr_end~1_combout\);

-- Location: FF_X33_Y12_N11
\mywav_inst|reg_config_inst|u1|tr_end\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mywav_inst|reg_config_inst|clock_20k~clkctrl_outclk\,
	d => \mywav_inst|reg_config_inst|u1|tr_end~1_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mywav_inst|reg_config_inst|u1|tr_end~q\);

-- Location: IOIBUF_X0_Y22_N15
\I2C_SDAT~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => I2C_SDAT,
	o => \I2C_SDAT~input_o\);

-- Location: LCCOMB_X29_Y12_N24
\mywav_inst|reg_config_inst|u1|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|reg_config_inst|u1|Selector4~0_combout\ = (\mywav_inst|reg_config_inst|u1|cyc_count\(0) & ((\mywav_inst|reg_config_inst|u1|cyc_count\(2)) # ((\I2C_SDAT~input_o\)))) # (!\mywav_inst|reg_config_inst|u1|cyc_count\(0) & 
-- (((!\mywav_inst|reg_config_inst|u1|ack1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mywav_inst|reg_config_inst|u1|cyc_count\(2),
	datab => \mywav_inst|reg_config_inst|u1|cyc_count\(0),
	datac => \I2C_SDAT~input_o\,
	datad => \mywav_inst|reg_config_inst|u1|ack1~q\,
	combout => \mywav_inst|reg_config_inst|u1|Selector4~0_combout\);

-- Location: LCCOMB_X29_Y12_N22
\mywav_inst|reg_config_inst|u1|ack1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|reg_config_inst|u1|ack1~0_combout\ = (\mywav_inst|reg_config_inst|u1|cyc_count\(5) & (\mywav_inst|reg_config_inst|u1|cyc_count\(1) & (\mywav_inst|reg_config_inst|u1|cyc_count\(2) $ (!\mywav_inst|reg_config_inst|u1|cyc_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mywav_inst|reg_config_inst|u1|cyc_count\(2),
	datab => \mywav_inst|reg_config_inst|u1|cyc_count\(3),
	datac => \mywav_inst|reg_config_inst|u1|cyc_count\(5),
	datad => \mywav_inst|reg_config_inst|u1|cyc_count\(1),
	combout => \mywav_inst|reg_config_inst|u1|ack1~0_combout\);

-- Location: LCCOMB_X28_Y12_N18
\mywav_inst|reg_config_inst|u1|ack1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|reg_config_inst|u1|ack1~1_combout\ = (\mywav_inst|reg_config_inst|u1|cyc_count\(4) & ((\mywav_inst|reg_config_inst|u1|ack1~0_combout\ & (!\mywav_inst|reg_config_inst|u1|Selector4~0_combout\)) # (!\mywav_inst|reg_config_inst|u1|ack1~0_combout\ 
-- & ((\mywav_inst|reg_config_inst|u1|ack1~q\))))) # (!\mywav_inst|reg_config_inst|u1|cyc_count\(4) & (((\mywav_inst|reg_config_inst|u1|ack1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mywav_inst|reg_config_inst|u1|cyc_count\(4),
	datab => \mywav_inst|reg_config_inst|u1|Selector4~0_combout\,
	datac => \mywav_inst|reg_config_inst|u1|ack1~q\,
	datad => \mywav_inst|reg_config_inst|u1|ack1~0_combout\,
	combout => \mywav_inst|reg_config_inst|u1|ack1~1_combout\);

-- Location: FF_X28_Y12_N19
\mywav_inst|reg_config_inst|u1|ack1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mywav_inst|reg_config_inst|clock_20k~clkctrl_outclk\,
	d => \mywav_inst|reg_config_inst|u1|ack1~1_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mywav_inst|reg_config_inst|u1|ack1~q\);

-- Location: LCCOMB_X31_Y12_N24
\mywav_inst|reg_config_inst|u1|ack2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|reg_config_inst|u1|ack2~0_combout\ = (\mywav_inst|reg_config_inst|u1|cyc_count\(3) & (\mywav_inst|reg_config_inst|u1|cyc_count\(5) & \mywav_inst|reg_config_inst|u1|cyc_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mywav_inst|reg_config_inst|u1|cyc_count\(3),
	datac => \mywav_inst|reg_config_inst|u1|cyc_count\(5),
	datad => \mywav_inst|reg_config_inst|u1|cyc_count\(1),
	combout => \mywav_inst|reg_config_inst|u1|ack2~0_combout\);

-- Location: LCCOMB_X31_Y12_N2
\mywav_inst|reg_config_inst|u1|ack2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|reg_config_inst|u1|ack2~1_combout\ = (\mywav_inst|reg_config_inst|u1|ack2~0_combout\ & ((\mywav_inst|reg_config_inst|u1|cyc_count\(4) & (\mywav_inst|reg_config_inst|u1|cyc_count\(0) & \mywav_inst|reg_config_inst|u1|cyc_count\(2))) # 
-- (!\mywav_inst|reg_config_inst|u1|cyc_count\(4) & (!\mywav_inst|reg_config_inst|u1|cyc_count\(0) & !\mywav_inst|reg_config_inst|u1|cyc_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mywav_inst|reg_config_inst|u1|cyc_count\(4),
	datab => \mywav_inst|reg_config_inst|u1|cyc_count\(0),
	datac => \mywav_inst|reg_config_inst|u1|cyc_count\(2),
	datad => \mywav_inst|reg_config_inst|u1|ack2~0_combout\,
	combout => \mywav_inst|reg_config_inst|u1|ack2~1_combout\);

-- Location: LCCOMB_X31_Y12_N26
\mywav_inst|reg_config_inst|u1|ack2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|reg_config_inst|u1|ack2~2_combout\ = (\mywav_inst|reg_config_inst|u1|ack2~1_combout\ & (!\mywav_inst|reg_config_inst|u1|cyc_count\(4) & (!\I2C_SDAT~input_o\))) # (!\mywav_inst|reg_config_inst|u1|ack2~1_combout\ & 
-- (((\mywav_inst|reg_config_inst|u1|ack2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mywav_inst|reg_config_inst|u1|cyc_count\(4),
	datab => \I2C_SDAT~input_o\,
	datac => \mywav_inst|reg_config_inst|u1|ack2~q\,
	datad => \mywav_inst|reg_config_inst|u1|ack2~1_combout\,
	combout => \mywav_inst|reg_config_inst|u1|ack2~2_combout\);

-- Location: FF_X31_Y12_N27
\mywav_inst|reg_config_inst|u1|ack2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mywav_inst|reg_config_inst|clock_20k~clkctrl_outclk\,
	d => \mywav_inst|reg_config_inst|u1|ack2~2_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mywav_inst|reg_config_inst|u1|ack2~q\);

-- Location: LCCOMB_X31_Y12_N0
\mywav_inst|reg_config_inst|u1|ack3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|reg_config_inst|u1|ack3~0_combout\ = (\mywav_inst|reg_config_inst|u1|cyc_count\(5) & (\mywav_inst|reg_config_inst|u1|cyc_count\(0) & (\mywav_inst|reg_config_inst|u1|cyc_count\(1) $ (!\mywav_inst|reg_config_inst|u1|cyc_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mywav_inst|reg_config_inst|u1|cyc_count\(1),
	datab => \mywav_inst|reg_config_inst|u1|cyc_count\(5),
	datac => \mywav_inst|reg_config_inst|u1|cyc_count\(0),
	datad => \mywav_inst|reg_config_inst|u1|cyc_count\(2),
	combout => \mywav_inst|reg_config_inst|u1|ack3~0_combout\);

-- Location: LCCOMB_X31_Y12_N18
\mywav_inst|reg_config_inst|u1|ack3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|reg_config_inst|u1|ack3~1_combout\ = (\mywav_inst|reg_config_inst|u1|ack3~0_combout\ & ((\mywav_inst|reg_config_inst|u1|cyc_count\(3) & (\mywav_inst|reg_config_inst|u1|cyc_count\(4) & \mywav_inst|reg_config_inst|u1|cyc_count\(2))) # 
-- (!\mywav_inst|reg_config_inst|u1|cyc_count\(3) & (!\mywav_inst|reg_config_inst|u1|cyc_count\(4) & !\mywav_inst|reg_config_inst|u1|cyc_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mywav_inst|reg_config_inst|u1|cyc_count\(3),
	datab => \mywav_inst|reg_config_inst|u1|cyc_count\(4),
	datac => \mywav_inst|reg_config_inst|u1|cyc_count\(2),
	datad => \mywav_inst|reg_config_inst|u1|ack3~0_combout\,
	combout => \mywav_inst|reg_config_inst|u1|ack3~1_combout\);

-- Location: LCCOMB_X31_Y12_N16
\mywav_inst|reg_config_inst|u1|ack3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|reg_config_inst|u1|ack3~2_combout\ = (\mywav_inst|reg_config_inst|u1|ack3~1_combout\ & (!\mywav_inst|reg_config_inst|u1|cyc_count\(4) & (!\I2C_SDAT~input_o\))) # (!\mywav_inst|reg_config_inst|u1|ack3~1_combout\ & 
-- (((\mywav_inst|reg_config_inst|u1|ack3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mywav_inst|reg_config_inst|u1|cyc_count\(4),
	datab => \I2C_SDAT~input_o\,
	datac => \mywav_inst|reg_config_inst|u1|ack3~q\,
	datad => \mywav_inst|reg_config_inst|u1|ack3~1_combout\,
	combout => \mywav_inst|reg_config_inst|u1|ack3~2_combout\);

-- Location: FF_X31_Y12_N17
\mywav_inst|reg_config_inst|u1|ack3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mywav_inst|reg_config_inst|clock_20k~clkctrl_outclk\,
	d => \mywav_inst|reg_config_inst|u1|ack3~2_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mywav_inst|reg_config_inst|u1|ack3~q\);

-- Location: LCCOMB_X28_Y12_N24
\mywav_inst|reg_config_inst|config_step~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|reg_config_inst|config_step~10_combout\ = (\mywav_inst|reg_config_inst|u1|ack1~q\ & (\mywav_inst|reg_config_inst|u1|ack2~q\ & \mywav_inst|reg_config_inst|u1|ack3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mywav_inst|reg_config_inst|u1|ack1~q\,
	datac => \mywav_inst|reg_config_inst|u1|ack2~q\,
	datad => \mywav_inst|reg_config_inst|u1|ack3~q\,
	combout => \mywav_inst|reg_config_inst|config_step~10_combout\);

-- Location: LCCOMB_X28_Y12_N26
\mywav_inst|reg_config_inst|config_step~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|reg_config_inst|config_step~11_combout\ = (\mywav_inst|reg_config_inst|config_step.01~q\ & (\mywav_inst|reg_config_inst|u1|tr_end~q\ & \mywav_inst|reg_config_inst|config_step~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mywav_inst|reg_config_inst|config_step.01~q\,
	datab => \mywav_inst|reg_config_inst|u1|tr_end~q\,
	datad => \mywav_inst|reg_config_inst|config_step~10_combout\,
	combout => \mywav_inst|reg_config_inst|config_step~11_combout\);

-- Location: LCCOMB_X28_Y12_N16
\mywav_inst|reg_config_inst|reg_index[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|reg_config_inst|reg_index[0]~6_combout\ = \mywav_inst|reg_config_inst|reg_index\(0) $ (((\mywav_inst|reg_config_inst|config_step.10~q\ & \mywav_inst|reg_config_inst|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mywav_inst|reg_config_inst|config_step.10~q\,
	datac => \mywav_inst|reg_config_inst|reg_index\(0),
	datad => \mywav_inst|reg_config_inst|LessThan1~0_combout\,
	combout => \mywav_inst|reg_config_inst|reg_index[0]~6_combout\);

-- Location: FF_X28_Y12_N17
\mywav_inst|reg_config_inst|reg_index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mywav_inst|reg_config_inst|clock_20k~clkctrl_outclk\,
	d => \mywav_inst|reg_config_inst|reg_index[0]~6_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mywav_inst|reg_config_inst|reg_index\(0));

-- Location: LCCOMB_X28_Y12_N20
\mywav_inst|reg_config_inst|reg_index[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|reg_config_inst|reg_index[1]~4_combout\ = \mywav_inst|reg_config_inst|reg_index\(1) $ (((\mywav_inst|reg_config_inst|config_step.10~q\ & (\mywav_inst|reg_config_inst|reg_index\(0) & \mywav_inst|reg_config_inst|LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mywav_inst|reg_config_inst|config_step.10~q\,
	datab => \mywav_inst|reg_config_inst|reg_index\(0),
	datac => \mywav_inst|reg_config_inst|reg_index\(1),
	datad => \mywav_inst|reg_config_inst|LessThan1~0_combout\,
	combout => \mywav_inst|reg_config_inst|reg_index[1]~4_combout\);

-- Location: FF_X28_Y12_N21
\mywav_inst|reg_config_inst|reg_index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mywav_inst|reg_config_inst|clock_20k~clkctrl_outclk\,
	d => \mywav_inst|reg_config_inst|reg_index[1]~4_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mywav_inst|reg_config_inst|reg_index\(1));

-- Location: LCCOMB_X28_Y12_N0
\mywav_inst|reg_config_inst|reg_index[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|reg_config_inst|reg_index[3]~5_combout\ = ((!\mywav_inst|reg_config_inst|reg_index\(1)) # (!\mywav_inst|reg_config_inst|config_step.10~q\)) # (!\mywav_inst|reg_config_inst|reg_index\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mywav_inst|reg_config_inst|reg_index\(0),
	datac => \mywav_inst|reg_config_inst|config_step.10~q\,
	datad => \mywav_inst|reg_config_inst|reg_index\(1),
	combout => \mywav_inst|reg_config_inst|reg_index[3]~5_combout\);

-- Location: LCCOMB_X28_Y12_N30
\mywav_inst|reg_config_inst|reg_index[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|reg_config_inst|reg_index[3]~7_combout\ = (\mywav_inst|reg_config_inst|reg_index\(3)) # ((\mywav_inst|reg_config_inst|reg_index\(2) & !\mywav_inst|reg_config_inst|reg_index[3]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mywav_inst|reg_config_inst|reg_index\(2),
	datac => \mywav_inst|reg_config_inst|reg_index\(3),
	datad => \mywav_inst|reg_config_inst|reg_index[3]~5_combout\,
	combout => \mywav_inst|reg_config_inst|reg_index[3]~7_combout\);

-- Location: FF_X28_Y12_N31
\mywav_inst|reg_config_inst|reg_index[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mywav_inst|reg_config_inst|clock_20k~clkctrl_outclk\,
	d => \mywav_inst|reg_config_inst|reg_index[3]~7_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mywav_inst|reg_config_inst|reg_index\(3));

-- Location: LCCOMB_X28_Y12_N6
\mywav_inst|reg_config_inst|reg_index[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|reg_config_inst|reg_index[2]~2_combout\ = (!\mywav_inst|reg_config_inst|reg_index\(1)) # (!\mywav_inst|reg_config_inst|reg_index\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mywav_inst|reg_config_inst|reg_index\(0),
	datad => \mywav_inst|reg_config_inst|reg_index\(1),
	combout => \mywav_inst|reg_config_inst|reg_index[2]~2_combout\);

-- Location: LCCOMB_X28_Y12_N10
\mywav_inst|reg_config_inst|reg_index[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|reg_config_inst|reg_index[2]~3_combout\ = \mywav_inst|reg_config_inst|reg_index\(2) $ (((\mywav_inst|reg_config_inst|config_step.10~q\ & (\mywav_inst|reg_config_inst|LessThan1~0_combout\ & 
-- !\mywav_inst|reg_config_inst|reg_index[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mywav_inst|reg_config_inst|config_step.10~q\,
	datab => \mywav_inst|reg_config_inst|LessThan1~0_combout\,
	datac => \mywav_inst|reg_config_inst|reg_index\(2),
	datad => \mywav_inst|reg_config_inst|reg_index[2]~2_combout\,
	combout => \mywav_inst|reg_config_inst|reg_index[2]~3_combout\);

-- Location: FF_X28_Y12_N11
\mywav_inst|reg_config_inst|reg_index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mywav_inst|reg_config_inst|clock_20k~clkctrl_outclk\,
	d => \mywav_inst|reg_config_inst|reg_index[2]~3_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mywav_inst|reg_config_inst|reg_index\(2));

-- Location: LCCOMB_X28_Y12_N28
\mywav_inst|reg_config_inst|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|reg_config_inst|LessThan1~0_combout\ = ((!\mywav_inst|reg_config_inst|reg_index\(1) & !\mywav_inst|reg_config_inst|reg_index\(2))) # (!\mywav_inst|reg_config_inst|reg_index\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mywav_inst|reg_config_inst|reg_index\(1),
	datac => \mywav_inst|reg_config_inst|reg_index\(3),
	datad => \mywav_inst|reg_config_inst|reg_index\(2),
	combout => \mywav_inst|reg_config_inst|LessThan1~0_combout\);

-- Location: FF_X28_Y12_N27
\mywav_inst|reg_config_inst|config_step.10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mywav_inst|reg_config_inst|clock_20k~clkctrl_outclk\,
	d => \mywav_inst|reg_config_inst|config_step~11_combout\,
	clrn => \rst_n~input_o\,
	ena => \mywav_inst|reg_config_inst|LessThan1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mywav_inst|reg_config_inst|config_step.10~q\);

-- Location: LCCOMB_X28_Y12_N2
\mywav_inst|reg_config_inst|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|reg_config_inst|Selector1~0_combout\ = (!\mywav_inst|reg_config_inst|config_step.10~q\ & (((\mywav_inst|reg_config_inst|config_step~10_combout\) # (!\mywav_inst|reg_config_inst|u1|tr_end~q\)) # 
-- (!\mywav_inst|reg_config_inst|config_step.01~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mywav_inst|reg_config_inst|config_step.01~q\,
	datab => \mywav_inst|reg_config_inst|u1|tr_end~q\,
	datac => \mywav_inst|reg_config_inst|config_step.10~q\,
	datad => \mywav_inst|reg_config_inst|config_step~10_combout\,
	combout => \mywav_inst|reg_config_inst|Selector1~0_combout\);

-- Location: FF_X28_Y12_N3
\mywav_inst|reg_config_inst|config_step.00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mywav_inst|reg_config_inst|clock_20k~clkctrl_outclk\,
	d => \mywav_inst|reg_config_inst|Selector1~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \mywav_inst|reg_config_inst|LessThan1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mywav_inst|reg_config_inst|config_step.00~q\);

-- Location: LCCOMB_X28_Y12_N12
\mywav_inst|reg_config_inst|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|reg_config_inst|Selector2~0_combout\ = ((\mywav_inst|reg_config_inst|config_step.01~q\ & !\mywav_inst|reg_config_inst|u1|tr_end~q\)) # (!\mywav_inst|reg_config_inst|config_step.00~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mywav_inst|reg_config_inst|config_step.00~q\,
	datac => \mywav_inst|reg_config_inst|config_step.01~q\,
	datad => \mywav_inst|reg_config_inst|u1|tr_end~q\,
	combout => \mywav_inst|reg_config_inst|Selector2~0_combout\);

-- Location: FF_X28_Y12_N13
\mywav_inst|reg_config_inst|config_step.01\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mywav_inst|reg_config_inst|clock_20k~clkctrl_outclk\,
	d => \mywav_inst|reg_config_inst|Selector2~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \mywav_inst|reg_config_inst|LessThan1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mywav_inst|reg_config_inst|config_step.01~q\);

-- Location: LCCOMB_X28_Y12_N8
\mywav_inst|reg_config_inst|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|reg_config_inst|Selector0~0_combout\ = (\mywav_inst|reg_config_inst|start~q\ & (((!\mywav_inst|reg_config_inst|config_step.01~q\) # (!\mywav_inst|reg_config_inst|u1|tr_end~q\)))) # (!\mywav_inst|reg_config_inst|start~q\ & 
-- (!\mywav_inst|reg_config_inst|config_step.10~q\ & ((!\mywav_inst|reg_config_inst|config_step.01~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mywav_inst|reg_config_inst|config_step.10~q\,
	datab => \mywav_inst|reg_config_inst|u1|tr_end~q\,
	datac => \mywav_inst|reg_config_inst|start~q\,
	datad => \mywav_inst|reg_config_inst|config_step.01~q\,
	combout => \mywav_inst|reg_config_inst|Selector0~0_combout\);

-- Location: FF_X28_Y12_N9
\mywav_inst|reg_config_inst|start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mywav_inst|reg_config_inst|clock_20k~clkctrl_outclk\,
	d => \mywav_inst|reg_config_inst|Selector0~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \mywav_inst|reg_config_inst|LessThan1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mywav_inst|reg_config_inst|start~q\);

-- Location: FF_X31_Y12_N5
\mywav_inst|reg_config_inst|u1|cyc_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mywav_inst|reg_config_inst|clock_20k~clkctrl_outclk\,
	d => \mywav_inst|reg_config_inst|u1|cyc_count[0]~6_combout\,
	asdata => VCC,
	clrn => \rst_n~input_o\,
	sload => \mywav_inst|reg_config_inst|ALT_INV_start~q\,
	ena => \mywav_inst|reg_config_inst|u1|cyc_count[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mywav_inst|reg_config_inst|u1|cyc_count\(0));

-- Location: LCCOMB_X31_Y12_N8
\mywav_inst|reg_config_inst|u1|cyc_count[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|reg_config_inst|u1|cyc_count[2]~12_combout\ = (\mywav_inst|reg_config_inst|u1|cyc_count\(2) & (\mywav_inst|reg_config_inst|u1|cyc_count[1]~11\ & VCC)) # (!\mywav_inst|reg_config_inst|u1|cyc_count\(2) & 
-- (!\mywav_inst|reg_config_inst|u1|cyc_count[1]~11\))
-- \mywav_inst|reg_config_inst|u1|cyc_count[2]~13\ = CARRY((!\mywav_inst|reg_config_inst|u1|cyc_count\(2) & !\mywav_inst|reg_config_inst|u1|cyc_count[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mywav_inst|reg_config_inst|u1|cyc_count\(2),
	datad => VCC,
	cin => \mywav_inst|reg_config_inst|u1|cyc_count[1]~11\,
	combout => \mywav_inst|reg_config_inst|u1|cyc_count[2]~12_combout\,
	cout => \mywav_inst|reg_config_inst|u1|cyc_count[2]~13\);

-- Location: FF_X31_Y12_N9
\mywav_inst|reg_config_inst|u1|cyc_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mywav_inst|reg_config_inst|clock_20k~clkctrl_outclk\,
	d => \mywav_inst|reg_config_inst|u1|cyc_count[2]~12_combout\,
	asdata => VCC,
	clrn => \rst_n~input_o\,
	sload => \mywav_inst|reg_config_inst|ALT_INV_start~q\,
	ena => \mywav_inst|reg_config_inst|u1|cyc_count[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mywav_inst|reg_config_inst|u1|cyc_count\(2));

-- Location: FF_X31_Y12_N11
\mywav_inst|reg_config_inst|u1|cyc_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mywav_inst|reg_config_inst|clock_20k~clkctrl_outclk\,
	d => \mywav_inst|reg_config_inst|u1|cyc_count[3]~14_combout\,
	asdata => VCC,
	clrn => \rst_n~input_o\,
	sload => \mywav_inst|reg_config_inst|ALT_INV_start~q\,
	ena => \mywav_inst|reg_config_inst|u1|cyc_count[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mywav_inst|reg_config_inst|u1|cyc_count\(3));

-- Location: LCCOMB_X29_Y12_N20
\mywav_inst|reg_config_inst|u1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|reg_config_inst|u1|Mux0~0_combout\ = (\mywav_inst|reg_config_inst|u1|cyc_count\(2) & (\mywav_inst|reg_config_inst|u1|cyc_count\(3) & (\mywav_inst|reg_config_inst|u1|cyc_count\(0) & \mywav_inst|reg_config_inst|u1|cyc_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mywav_inst|reg_config_inst|u1|cyc_count\(2),
	datab => \mywav_inst|reg_config_inst|u1|cyc_count\(3),
	datac => \mywav_inst|reg_config_inst|u1|cyc_count\(0),
	datad => \mywav_inst|reg_config_inst|u1|cyc_count\(1),
	combout => \mywav_inst|reg_config_inst|u1|Mux0~0_combout\);

-- Location: LCCOMB_X29_Y12_N30
\mywav_inst|reg_config_inst|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|reg_config_inst|Decoder0~0_combout\ = (!\mywav_inst|reg_config_inst|reg_index\(2) & (!\mywav_inst|reg_config_inst|reg_index\(1) & \mywav_inst|reg_config_inst|reg_index\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mywav_inst|reg_config_inst|reg_index\(2),
	datab => \mywav_inst|reg_config_inst|reg_index\(1),
	datad => \mywav_inst|reg_config_inst|reg_index\(3),
	combout => \mywav_inst|reg_config_inst|Decoder0~0_combout\);

-- Location: LCCOMB_X28_Y12_N22
\mywav_inst|reg_config_inst|i2c_data[12]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|reg_config_inst|i2c_data[12]~0_combout\ = (\rst_n~input_o\ & (!\mywav_inst|reg_config_inst|config_step.00~q\ & \mywav_inst|reg_config_inst|LessThan1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst_n~input_o\,
	datab => \mywav_inst|reg_config_inst|config_step.00~q\,
	datad => \mywav_inst|reg_config_inst|LessThan1~0_combout\,
	combout => \mywav_inst|reg_config_inst|i2c_data[12]~0_combout\);

-- Location: FF_X29_Y12_N31
\mywav_inst|reg_config_inst|i2c_data[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mywav_inst|reg_config_inst|clock_20k~clkctrl_outclk\,
	d => \mywav_inst|reg_config_inst|Decoder0~0_combout\,
	ena => \mywav_inst|reg_config_inst|i2c_data[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mywav_inst|reg_config_inst|i2c_data\(12));

-- Location: LCCOMB_X30_Y12_N20
\mywav_inst|reg_config_inst|u1|Mux0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|reg_config_inst|u1|Mux0~11_combout\ = (\mywav_inst|reg_config_inst|u1|cyc_count\(0) & (((!\mywav_inst|reg_config_inst|u1|reg_sdat~q\) # (!\mywav_inst|reg_config_inst|u1|cyc_count\(2))))) # (!\mywav_inst|reg_config_inst|u1|cyc_count\(0) & 
-- ((\mywav_inst|reg_config_inst|i2c_data\(12)) # ((\mywav_inst|reg_config_inst|u1|cyc_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mywav_inst|reg_config_inst|u1|cyc_count\(0),
	datab => \mywav_inst|reg_config_inst|i2c_data\(12),
	datac => \mywav_inst|reg_config_inst|u1|cyc_count\(2),
	datad => \mywav_inst|reg_config_inst|u1|reg_sdat~q\,
	combout => \mywav_inst|reg_config_inst|u1|Mux0~11_combout\);

-- Location: LCCOMB_X31_Y12_N22
\mywav_inst|reg_config_inst|u1|Mux0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|reg_config_inst|u1|Mux0~10_combout\ = (\mywav_inst|reg_config_inst|u1|cyc_count\(1) & ((\mywav_inst|reg_config_inst|u1|cyc_count\(2) & (\mywav_inst|reg_config_inst|u1|cyc_count\(0))) # (!\mywav_inst|reg_config_inst|u1|cyc_count\(2) & 
-- (!\mywav_inst|reg_config_inst|u1|cyc_count\(0) & \mywav_inst|reg_config_inst|u1|cyc_count\(3))))) # (!\mywav_inst|reg_config_inst|u1|cyc_count\(1) & ((\mywav_inst|reg_config_inst|u1|cyc_count\(0) $ (!\mywav_inst|reg_config_inst|u1|cyc_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mywav_inst|reg_config_inst|u1|cyc_count\(1),
	datab => \mywav_inst|reg_config_inst|u1|cyc_count\(2),
	datac => \mywav_inst|reg_config_inst|u1|cyc_count\(0),
	datad => \mywav_inst|reg_config_inst|u1|cyc_count\(3),
	combout => \mywav_inst|reg_config_inst|u1|Mux0~10_combout\);

-- Location: LCCOMB_X30_Y12_N14
\mywav_inst|reg_config_inst|u1|Mux0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|reg_config_inst|u1|Mux0~12_combout\ = (\mywav_inst|reg_config_inst|u1|Mux0~10_combout\ & ((\mywav_inst|reg_config_inst|u1|cyc_count\(1)) # (\mywav_inst|reg_config_inst|u1|Mux0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mywav_inst|reg_config_inst|u1|cyc_count\(1),
	datab => \mywav_inst|reg_config_inst|u1|Mux0~11_combout\,
	datad => \mywav_inst|reg_config_inst|u1|Mux0~10_combout\,
	combout => \mywav_inst|reg_config_inst|u1|Mux0~12_combout\);

-- Location: LCCOMB_X29_Y12_N18
\mywav_inst|reg_config_inst|WideOr6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|reg_config_inst|WideOr6~0_combout\ = (\mywav_inst|reg_config_inst|reg_index\(2) & ((\mywav_inst|reg_config_inst|reg_index\(3)) # ((!\mywav_inst|reg_config_inst|reg_index\(1) & \mywav_inst|reg_config_inst|reg_index\(0))))) # 
-- (!\mywav_inst|reg_config_inst|reg_index\(2) & (\mywav_inst|reg_config_inst|reg_index\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mywav_inst|reg_config_inst|reg_index\(2),
	datab => \mywav_inst|reg_config_inst|reg_index\(1),
	datac => \mywav_inst|reg_config_inst|reg_index\(0),
	datad => \mywav_inst|reg_config_inst|reg_index\(3),
	combout => \mywav_inst|reg_config_inst|WideOr6~0_combout\);

-- Location: FF_X29_Y12_N19
\mywav_inst|reg_config_inst|i2c_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mywav_inst|reg_config_inst|clock_20k~clkctrl_outclk\,
	d => \mywav_inst|reg_config_inst|WideOr6~0_combout\,
	ena => \mywav_inst|reg_config_inst|i2c_data[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mywav_inst|reg_config_inst|i2c_data\(1));

-- Location: LCCOMB_X29_Y12_N26
\mywav_inst|reg_config_inst|WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|reg_config_inst|WideOr5~0_combout\ = (!\mywav_inst|reg_config_inst|reg_index\(3) & ((\mywav_inst|reg_config_inst|reg_index\(2) & (!\mywav_inst|reg_config_inst|reg_index\(1) & \mywav_inst|reg_config_inst|reg_index\(0))) # 
-- (!\mywav_inst|reg_config_inst|reg_index\(2) & (\mywav_inst|reg_config_inst|reg_index\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mywav_inst|reg_config_inst|reg_index\(2),
	datab => \mywav_inst|reg_config_inst|reg_index\(1),
	datac => \mywav_inst|reg_config_inst|reg_index\(0),
	datad => \mywav_inst|reg_config_inst|reg_index\(3),
	combout => \mywav_inst|reg_config_inst|WideOr5~0_combout\);

-- Location: FF_X30_Y12_N1
\mywav_inst|reg_config_inst|i2c_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mywav_inst|reg_config_inst|clock_20k~clkctrl_outclk\,
	asdata => \mywav_inst|reg_config_inst|WideOr5~0_combout\,
	sload => VCC,
	ena => \mywav_inst|reg_config_inst|i2c_data[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mywav_inst|reg_config_inst|i2c_data\(2));

-- Location: LCCOMB_X30_Y12_N0
\mywav_inst|reg_config_inst|u1|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|reg_config_inst|u1|Mux0~1_combout\ = (\mywav_inst|reg_config_inst|u1|cyc_count\(0) & ((\mywav_inst|reg_config_inst|u1|cyc_count\(3) & (\mywav_inst|reg_config_inst|i2c_data\(9))) # (!\mywav_inst|reg_config_inst|u1|cyc_count\(3) & 
-- ((\mywav_inst|reg_config_inst|i2c_data\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mywav_inst|reg_config_inst|i2c_data\(9),
	datab => \mywav_inst|reg_config_inst|u1|cyc_count\(3),
	datac => \mywav_inst|reg_config_inst|i2c_data\(2),
	datad => \mywav_inst|reg_config_inst|u1|cyc_count\(0),
	combout => \mywav_inst|reg_config_inst|u1|Mux0~1_combout\);

-- Location: LCCOMB_X30_Y12_N2
\mywav_inst|reg_config_inst|u1|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|reg_config_inst|u1|Mux0~2_combout\ = (\mywav_inst|reg_config_inst|u1|Mux0~1_combout\) # ((!\mywav_inst|reg_config_inst|u1|cyc_count\(0) & (\mywav_inst|reg_config_inst|i2c_data\(1) & !\mywav_inst|reg_config_inst|u1|cyc_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mywav_inst|reg_config_inst|u1|cyc_count\(0),
	datab => \mywav_inst|reg_config_inst|i2c_data\(1),
	datac => \mywav_inst|reg_config_inst|u1|cyc_count\(3),
	datad => \mywav_inst|reg_config_inst|u1|Mux0~1_combout\,
	combout => \mywav_inst|reg_config_inst|u1|Mux0~2_combout\);

-- Location: LCCOMB_X30_Y12_N16
\mywav_inst|reg_config_inst|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|reg_config_inst|WideOr2~0_combout\ = (!\mywav_inst|reg_config_inst|reg_index\(3) & ((\mywav_inst|reg_config_inst|reg_index\(1) & ((!\mywav_inst|reg_config_inst|reg_index\(2)))) # (!\mywav_inst|reg_config_inst|reg_index\(1) & 
-- (!\mywav_inst|reg_config_inst|reg_index\(0) & \mywav_inst|reg_config_inst|reg_index\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mywav_inst|reg_config_inst|reg_index\(1),
	datab => \mywav_inst|reg_config_inst|reg_index\(0),
	datac => \mywav_inst|reg_config_inst|reg_index\(2),
	datad => \mywav_inst|reg_config_inst|reg_index\(3),
	combout => \mywav_inst|reg_config_inst|WideOr2~0_combout\);

-- Location: FF_X30_Y12_N17
\mywav_inst|reg_config_inst|i2c_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mywav_inst|reg_config_inst|clock_20k~clkctrl_outclk\,
	d => \mywav_inst|reg_config_inst|WideOr2~0_combout\,
	ena => \mywav_inst|reg_config_inst|i2c_data[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mywav_inst|reg_config_inst|i2c_data\(5));

-- Location: LCCOMB_X29_Y12_N8
\mywav_inst|reg_config_inst|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|reg_config_inst|WideOr1~0_combout\ = (!\mywav_inst|reg_config_inst|reg_index\(3) & (\mywav_inst|reg_config_inst|reg_index\(1) $ (((\mywav_inst|reg_config_inst|reg_index\(2) & !\mywav_inst|reg_config_inst|reg_index\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mywav_inst|reg_config_inst|reg_index\(2),
	datab => \mywav_inst|reg_config_inst|reg_index\(1),
	datac => \mywav_inst|reg_config_inst|reg_index\(0),
	datad => \mywav_inst|reg_config_inst|reg_index\(3),
	combout => \mywav_inst|reg_config_inst|WideOr1~0_combout\);

-- Location: FF_X29_Y12_N9
\mywav_inst|reg_config_inst|i2c_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mywav_inst|reg_config_inst|clock_20k~clkctrl_outclk\,
	d => \mywav_inst|reg_config_inst|WideOr1~0_combout\,
	ena => \mywav_inst|reg_config_inst|i2c_data[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mywav_inst|reg_config_inst|i2c_data\(6));

-- Location: LCCOMB_X30_Y12_N22
\mywav_inst|reg_config_inst|u1|Mux0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|reg_config_inst|u1|Mux0~7_combout\ = (\mywav_inst|reg_config_inst|u1|cyc_count\(3) & ((\mywav_inst|reg_config_inst|u1|cyc_count\(0) & ((\mywav_inst|reg_config_inst|i2c_data\(6)))) # (!\mywav_inst|reg_config_inst|u1|cyc_count\(0) & 
-- (\mywav_inst|reg_config_inst|i2c_data\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mywav_inst|reg_config_inst|u1|cyc_count\(0),
	datab => \mywav_inst|reg_config_inst|i2c_data\(5),
	datac => \mywav_inst|reg_config_inst|u1|cyc_count\(3),
	datad => \mywav_inst|reg_config_inst|i2c_data\(6),
	combout => \mywav_inst|reg_config_inst|u1|Mux0~7_combout\);

-- Location: LCCOMB_X30_Y12_N4
\mywav_inst|reg_config_inst|u1|Mux0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|reg_config_inst|u1|Mux0~8_combout\ = (\mywav_inst|reg_config_inst|u1|Mux0~7_combout\) # ((!\mywav_inst|reg_config_inst|u1|reg_sdat~q\ & (!\mywav_inst|reg_config_inst|u1|cyc_count\(3) & !\mywav_inst|reg_config_inst|u1|cyc_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mywav_inst|reg_config_inst|u1|reg_sdat~q\,
	datab => \mywav_inst|reg_config_inst|u1|cyc_count\(3),
	datac => \mywav_inst|reg_config_inst|u1|cyc_count\(0),
	datad => \mywav_inst|reg_config_inst|u1|Mux0~7_combout\,
	combout => \mywav_inst|reg_config_inst|u1|Mux0~8_combout\);

-- Location: LCCOMB_X29_Y12_N16
\mywav_inst|reg_config_inst|WideOr7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|reg_config_inst|WideOr7~0_combout\ = (!\mywav_inst|reg_config_inst|reg_index\(2) & ((\mywav_inst|reg_config_inst|reg_index\(1) & ((!\mywav_inst|reg_config_inst|reg_index\(3)))) # (!\mywav_inst|reg_config_inst|reg_index\(1) & 
-- (\mywav_inst|reg_config_inst|reg_index\(0) & \mywav_inst|reg_config_inst|reg_index\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mywav_inst|reg_config_inst|reg_index\(2),
	datab => \mywav_inst|reg_config_inst|reg_index\(1),
	datac => \mywav_inst|reg_config_inst|reg_index\(0),
	datad => \mywav_inst|reg_config_inst|reg_index\(3),
	combout => \mywav_inst|reg_config_inst|WideOr7~0_combout\);

-- Location: FF_X30_Y12_N9
\mywav_inst|reg_config_inst|i2c_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mywav_inst|reg_config_inst|clock_20k~clkctrl_outclk\,
	asdata => \mywav_inst|reg_config_inst|WideOr7~0_combout\,
	sload => VCC,
	ena => \mywav_inst|reg_config_inst|i2c_data[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mywav_inst|reg_config_inst|i2c_data\(0));

-- Location: LCCOMB_X30_Y12_N8
\mywav_inst|reg_config_inst|u1|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|reg_config_inst|u1|Mux0~3_combout\ = (\mywav_inst|reg_config_inst|u1|cyc_count\(3) & ((\mywav_inst|reg_config_inst|i2c_data\(7)) # ((\mywav_inst|reg_config_inst|u1|cyc_count\(0))))) # (!\mywav_inst|reg_config_inst|u1|cyc_count\(3) & 
-- (((\mywav_inst|reg_config_inst|i2c_data\(0)) # (!\mywav_inst|reg_config_inst|u1|cyc_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mywav_inst|reg_config_inst|i2c_data\(7),
	datab => \mywav_inst|reg_config_inst|u1|cyc_count\(3),
	datac => \mywav_inst|reg_config_inst|i2c_data\(0),
	datad => \mywav_inst|reg_config_inst|u1|cyc_count\(0),
	combout => \mywav_inst|reg_config_inst|u1|Mux0~3_combout\);

-- Location: LCCOMB_X30_Y12_N30
\mywav_inst|reg_config_inst|WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|reg_config_inst|WideOr4~0_combout\ = (\mywav_inst|reg_config_inst|reg_index\(2) & ((\mywav_inst|reg_config_inst|reg_index\(3)) # ((!\mywav_inst|reg_config_inst|reg_index\(1) & !\mywav_inst|reg_config_inst|reg_index\(0))))) # 
-- (!\mywav_inst|reg_config_inst|reg_index\(2) & (\mywav_inst|reg_config_inst|reg_index\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mywav_inst|reg_config_inst|reg_index\(1),
	datab => \mywav_inst|reg_config_inst|reg_index\(0),
	datac => \mywav_inst|reg_config_inst|reg_index\(2),
	datad => \mywav_inst|reg_config_inst|reg_index\(3),
	combout => \mywav_inst|reg_config_inst|WideOr4~0_combout\);

-- Location: FF_X30_Y12_N31
\mywav_inst|reg_config_inst|i2c_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mywav_inst|reg_config_inst|clock_20k~clkctrl_outclk\,
	d => \mywav_inst|reg_config_inst|WideOr4~0_combout\,
	ena => \mywav_inst|reg_config_inst|i2c_data[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mywav_inst|reg_config_inst|i2c_data\(3));

-- Location: LCCOMB_X29_Y12_N6
\mywav_inst|reg_config_inst|Decoder1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|reg_config_inst|Decoder1~0_combout\ = (\mywav_inst|reg_config_inst|reg_index\(2) & !\mywav_inst|reg_config_inst|reg_index\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mywav_inst|reg_config_inst|reg_index\(2),
	datad => \mywav_inst|reg_config_inst|reg_index\(3),
	combout => \mywav_inst|reg_config_inst|Decoder1~0_combout\);

-- Location: FF_X30_Y12_N25
\mywav_inst|reg_config_inst|i2c_data[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mywav_inst|reg_config_inst|clock_20k~clkctrl_outclk\,
	asdata => \mywav_inst|reg_config_inst|Decoder1~0_combout\,
	sload => VCC,
	ena => \mywav_inst|reg_config_inst|i2c_data[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mywav_inst|reg_config_inst|i2c_data\(11));

-- Location: LCCOMB_X30_Y12_N24
\mywav_inst|reg_config_inst|u1|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|reg_config_inst|u1|Mux0~4_combout\ = (\mywav_inst|reg_config_inst|u1|cyc_count\(3) & ((\mywav_inst|reg_config_inst|u1|cyc_count\(0) & ((\mywav_inst|reg_config_inst|i2c_data\(11)))) # (!\mywav_inst|reg_config_inst|u1|cyc_count\(0) & 
-- (\mywav_inst|reg_config_inst|i2c_data\(10))))) # (!\mywav_inst|reg_config_inst|u1|cyc_count\(3) & (((!\mywav_inst|reg_config_inst|u1|cyc_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mywav_inst|reg_config_inst|i2c_data\(10),
	datab => \mywav_inst|reg_config_inst|u1|cyc_count\(3),
	datac => \mywav_inst|reg_config_inst|i2c_data\(11),
	datad => \mywav_inst|reg_config_inst|u1|cyc_count\(0),
	combout => \mywav_inst|reg_config_inst|u1|Mux0~4_combout\);

-- Location: LCCOMB_X30_Y12_N28
\mywav_inst|reg_config_inst|u1|Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|reg_config_inst|u1|Mux0~5_combout\ = (\mywav_inst|reg_config_inst|u1|cyc_count\(3) & (((\mywav_inst|reg_config_inst|u1|Mux0~4_combout\)))) # (!\mywav_inst|reg_config_inst|u1|cyc_count\(3) & ((\mywav_inst|reg_config_inst|u1|Mux0~4_combout\ & 
-- ((\mywav_inst|reg_config_inst|i2c_data\(3)))) # (!\mywav_inst|reg_config_inst|u1|Mux0~4_combout\ & (\mywav_inst|reg_config_inst|i2c_data\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mywav_inst|reg_config_inst|i2c_data\(4),
	datab => \mywav_inst|reg_config_inst|u1|cyc_count\(3),
	datac => \mywav_inst|reg_config_inst|i2c_data\(3),
	datad => \mywav_inst|reg_config_inst|u1|Mux0~4_combout\,
	combout => \mywav_inst|reg_config_inst|u1|Mux0~5_combout\);

-- Location: LCCOMB_X30_Y12_N10
\mywav_inst|reg_config_inst|u1|Mux0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|reg_config_inst|u1|Mux0~6_combout\ = (\mywav_inst|reg_config_inst|u1|cyc_count\(1) & ((\mywav_inst|reg_config_inst|u1|cyc_count\(2) & ((\mywav_inst|reg_config_inst|u1|Mux0~5_combout\))) # (!\mywav_inst|reg_config_inst|u1|cyc_count\(2) & 
-- (\mywav_inst|reg_config_inst|u1|Mux0~3_combout\)))) # (!\mywav_inst|reg_config_inst|u1|cyc_count\(1) & (!\mywav_inst|reg_config_inst|u1|cyc_count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mywav_inst|reg_config_inst|u1|cyc_count\(1),
	datab => \mywav_inst|reg_config_inst|u1|cyc_count\(2),
	datac => \mywav_inst|reg_config_inst|u1|Mux0~3_combout\,
	datad => \mywav_inst|reg_config_inst|u1|Mux0~5_combout\,
	combout => \mywav_inst|reg_config_inst|u1|Mux0~6_combout\);

-- Location: LCCOMB_X30_Y12_N6
\mywav_inst|reg_config_inst|u1|Mux0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|reg_config_inst|u1|Mux0~9_combout\ = (\mywav_inst|reg_config_inst|u1|cyc_count\(1) & (((\mywav_inst|reg_config_inst|u1|Mux0~6_combout\)))) # (!\mywav_inst|reg_config_inst|u1|cyc_count\(1) & ((\mywav_inst|reg_config_inst|u1|Mux0~6_combout\ & 
-- ((\mywav_inst|reg_config_inst|u1|Mux0~8_combout\))) # (!\mywav_inst|reg_config_inst|u1|Mux0~6_combout\ & (\mywav_inst|reg_config_inst|u1|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mywav_inst|reg_config_inst|u1|cyc_count\(1),
	datab => \mywav_inst|reg_config_inst|u1|Mux0~2_combout\,
	datac => \mywav_inst|reg_config_inst|u1|Mux0~8_combout\,
	datad => \mywav_inst|reg_config_inst|u1|Mux0~6_combout\,
	combout => \mywav_inst|reg_config_inst|u1|Mux0~9_combout\);

-- Location: LCCOMB_X30_Y12_N18
\mywav_inst|reg_config_inst|u1|Mux0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|reg_config_inst|u1|Mux0~13_combout\ = (\mywav_inst|reg_config_inst|u1|cyc_count\(5) & ((\mywav_inst|reg_config_inst|u1|cyc_count\(4) & (\mywav_inst|reg_config_inst|u1|Mux0~12_combout\)) # (!\mywav_inst|reg_config_inst|u1|cyc_count\(4) & 
-- ((\mywav_inst|reg_config_inst|u1|Mux0~9_combout\))))) # (!\mywav_inst|reg_config_inst|u1|cyc_count\(5) & (!\mywav_inst|reg_config_inst|u1|cyc_count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mywav_inst|reg_config_inst|u1|cyc_count\(5),
	datab => \mywav_inst|reg_config_inst|u1|cyc_count\(4),
	datac => \mywav_inst|reg_config_inst|u1|Mux0~12_combout\,
	datad => \mywav_inst|reg_config_inst|u1|Mux0~9_combout\,
	combout => \mywav_inst|reg_config_inst|u1|Mux0~13_combout\);

-- Location: LCCOMB_X30_Y12_N12
\mywav_inst|reg_config_inst|u1|Mux0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|reg_config_inst|u1|Mux0~14_combout\ = (\mywav_inst|reg_config_inst|u1|cyc_count\(5) & (((!\mywav_inst|reg_config_inst|u1|Mux0~13_combout\)))) # (!\mywav_inst|reg_config_inst|u1|cyc_count\(5) & (\mywav_inst|reg_config_inst|u1|reg_sdat~q\ & 
-- ((\mywav_inst|reg_config_inst|u1|Mux0~13_combout\) # (!\mywav_inst|reg_config_inst|u1|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mywav_inst|reg_config_inst|u1|cyc_count\(5),
	datab => \mywav_inst|reg_config_inst|u1|Mux0~0_combout\,
	datac => \mywav_inst|reg_config_inst|u1|reg_sdat~q\,
	datad => \mywav_inst|reg_config_inst|u1|Mux0~13_combout\,
	combout => \mywav_inst|reg_config_inst|u1|Mux0~14_combout\);

-- Location: FF_X30_Y12_N13
\mywav_inst|reg_config_inst|u1|reg_sdat\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mywav_inst|reg_config_inst|clock_20k~clkctrl_outclk\,
	d => \mywav_inst|reg_config_inst|u1|Mux0~14_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mywav_inst|reg_config_inst|u1|reg_sdat~q\);

-- Location: IOIBUF_X0_Y11_N8
\clk_50m~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_50m,
	o => \clk_50m~input_o\);

-- Location: PLL_1
\pll_inst|altpll_component|auto_generated|pll1\ : cycloneive_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 12,
	c0_initial => 1,
	c0_low => 12,
	c0_mode => "even",
	c0_ph => 0,
	c1_high => 0,
	c1_initial => 0,
	c1_low => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c0",
	clk0_divide_by => 2,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 1,
	clk0_phase_shift => "0",
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 27,
	m => 12,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	pll_compensation_delay => 5914,
	self_reset_on_loss_lock => "off",
	simulation_type => "timing",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 208,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	areset => \ALT_INV_rst_n~input_o\,
	fbin => \pll_inst|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \pll_inst|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \pll_inst|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \pll_inst|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G3
\pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: IOIBUF_X34_Y12_N1
\SD_dataout~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SD_dataout,
	o => \SD_dataout~input_o\);

-- Location: LCCOMB_X24_Y17_N12
\sd_initial_inst|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Add0~0_combout\ = \sd_initial_inst|aa\(0) $ (VCC)
-- \sd_initial_inst|Add0~1\ = CARRY(\sd_initial_inst|aa\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_initial_inst|aa\(0),
	datad => VCC,
	combout => \sd_initial_inst|Add0~0_combout\,
	cout => \sd_initial_inst|Add0~1\);

-- Location: LCCOMB_X24_Y17_N16
\sd_initial_inst|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Add0~4_combout\ = (\sd_initial_inst|aa\(2) & (\sd_initial_inst|Add0~3\ $ (GND))) # (!\sd_initial_inst|aa\(2) & (!\sd_initial_inst|Add0~3\ & VCC))
-- \sd_initial_inst|Add0~5\ = CARRY((\sd_initial_inst|aa\(2) & !\sd_initial_inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sd_initial_inst|aa\(2),
	datad => VCC,
	cin => \sd_initial_inst|Add0~3\,
	combout => \sd_initial_inst|Add0~4_combout\,
	cout => \sd_initial_inst|Add0~5\);

-- Location: LCCOMB_X24_Y17_N18
\sd_initial_inst|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Add0~6_combout\ = (\sd_initial_inst|aa\(3) & (!\sd_initial_inst|Add0~5\)) # (!\sd_initial_inst|aa\(3) & ((\sd_initial_inst|Add0~5\) # (GND)))
-- \sd_initial_inst|Add0~7\ = CARRY((!\sd_initial_inst|Add0~5\) # (!\sd_initial_inst|aa\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|aa\(3),
	datad => VCC,
	cin => \sd_initial_inst|Add0~5\,
	combout => \sd_initial_inst|Add0~6_combout\,
	cout => \sd_initial_inst|Add0~7\);

-- Location: LCCOMB_X24_Y17_N20
\sd_initial_inst|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Add0~8_combout\ = (\sd_initial_inst|aa\(4) & (\sd_initial_inst|Add0~7\ $ (GND))) # (!\sd_initial_inst|aa\(4) & (!\sd_initial_inst|Add0~7\ & VCC))
-- \sd_initial_inst|Add0~9\ = CARRY((\sd_initial_inst|aa\(4) & !\sd_initial_inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|aa\(4),
	datad => VCC,
	cin => \sd_initial_inst|Add0~7\,
	combout => \sd_initial_inst|Add0~8_combout\,
	cout => \sd_initial_inst|Add0~9\);

-- Location: LCCOMB_X24_Y17_N26
\sd_initial_inst|aa~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|aa~2_combout\ = (\sd_initial_inst|Add0~8_combout\ & \sd_initial_inst|aa~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_initial_inst|Add0~8_combout\,
	datad => \sd_initial_inst|aa~0_combout\,
	combout => \sd_initial_inst|aa~2_combout\);

-- Location: FF_X24_Y17_N27
\sd_initial_inst|aa[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|aa~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|aa\(4));

-- Location: LCCOMB_X24_Y17_N22
\sd_initial_inst|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Add0~10_combout\ = \sd_initial_inst|Add0~9\ $ (\sd_initial_inst|aa\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \sd_initial_inst|aa\(5),
	cin => \sd_initial_inst|Add0~9\,
	combout => \sd_initial_inst|Add0~10_combout\);

-- Location: LCCOMB_X24_Y17_N8
\sd_initial_inst|aa~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|aa~1_combout\ = (\sd_initial_inst|Add0~10_combout\ & \sd_initial_inst|aa~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sd_initial_inst|Add0~10_combout\,
	datad => \sd_initial_inst|aa~0_combout\,
	combout => \sd_initial_inst|aa~1_combout\);

-- Location: FF_X24_Y17_N9
\sd_initial_inst|aa[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|aa~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|aa\(5));

-- Location: LCCOMB_X24_Y17_N2
\sd_initial_inst|aa~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|aa~0_combout\ = (\sd_initial_inst|en~q\ & (((\sd_initial_inst|LessThan0~0_combout\ & !\sd_initial_inst|aa\(4))) # (!\sd_initial_inst|aa\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|en~q\,
	datab => \sd_initial_inst|LessThan0~0_combout\,
	datac => \sd_initial_inst|aa\(4),
	datad => \sd_initial_inst|aa\(5),
	combout => \sd_initial_inst|aa~0_combout\);

-- Location: LCCOMB_X24_Y17_N0
\sd_initial_inst|aa~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|aa~3_combout\ = (\sd_initial_inst|en~q\ & (((\sd_initial_inst|Add0~0_combout\ & \sd_initial_inst|aa~0_combout\)))) # (!\sd_initial_inst|en~q\ & (((\sd_initial_inst|Add0~0_combout\ & \sd_initial_inst|aa~0_combout\)) # 
-- (!\SD_dataout~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|en~q\,
	datab => \SD_dataout~input_o\,
	datac => \sd_initial_inst|Add0~0_combout\,
	datad => \sd_initial_inst|aa~0_combout\,
	combout => \sd_initial_inst|aa~3_combout\);

-- Location: FF_X24_Y17_N1
\sd_initial_inst|aa[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|aa~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|aa\(0));

-- Location: LCCOMB_X24_Y17_N28
\sd_initial_inst|aa~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|aa~5_combout\ = (\sd_initial_inst|Add0~4_combout\ & \sd_initial_inst|aa~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_initial_inst|Add0~4_combout\,
	datad => \sd_initial_inst|aa~0_combout\,
	combout => \sd_initial_inst|aa~5_combout\);

-- Location: FF_X24_Y17_N29
\sd_initial_inst|aa[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|aa~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|aa\(2));

-- Location: LCCOMB_X24_Y17_N30
\sd_initial_inst|aa~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|aa~6_combout\ = (\sd_initial_inst|Add0~6_combout\ & \sd_initial_inst|aa~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_initial_inst|Add0~6_combout\,
	datad => \sd_initial_inst|aa~0_combout\,
	combout => \sd_initial_inst|aa~6_combout\);

-- Location: FF_X24_Y17_N31
\sd_initial_inst|aa[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|aa~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|aa\(3));

-- Location: LCCOMB_X24_Y17_N24
\sd_initial_inst|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|LessThan0~0_combout\ = (((!\sd_initial_inst|aa\(0)) # (!\sd_initial_inst|aa\(3))) # (!\sd_initial_inst|aa\(2))) # (!\sd_initial_inst|aa\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|aa\(1),
	datab => \sd_initial_inst|aa\(2),
	datac => \sd_initial_inst|aa\(3),
	datad => \sd_initial_inst|aa\(0),
	combout => \sd_initial_inst|LessThan0~0_combout\);

-- Location: LCCOMB_X24_Y17_N4
\sd_initial_inst|rx_valid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|rx_valid~0_combout\ = (\sd_initial_inst|en~q\ & (\sd_initial_inst|aa\(5) & ((\sd_initial_inst|aa\(4)) # (!\sd_initial_inst|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|en~q\,
	datab => \sd_initial_inst|LessThan0~0_combout\,
	datac => \sd_initial_inst|aa\(4),
	datad => \sd_initial_inst|aa\(5),
	combout => \sd_initial_inst|rx_valid~0_combout\);

-- Location: FF_X24_Y17_N5
\sd_initial_inst|rx_valid\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|rx_valid~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|rx_valid~q\);

-- Location: LCCOMB_X18_Y15_N30
\sd_initial_inst|counter[0]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|counter[0]~27_combout\ = \sd_initial_inst|counter\(0) $ (\sd_initial_inst|LessThan1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sd_initial_inst|counter\(0),
	datad => \sd_initial_inst|LessThan1~2_combout\,
	combout => \sd_initial_inst|counter[0]~27_combout\);

-- Location: FF_X18_Y15_N31
\sd_initial_inst|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|counter[0]~27_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|counter\(0));

-- Location: LCCOMB_X18_Y15_N10
\sd_initial_inst|counter[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|counter[1]~9_combout\ = (\sd_initial_inst|counter\(1) & (\sd_initial_inst|counter\(0) $ (VCC))) # (!\sd_initial_inst|counter\(1) & (\sd_initial_inst|counter\(0) & VCC))
-- \sd_initial_inst|counter[1]~10\ = CARRY((\sd_initial_inst|counter\(1) & \sd_initial_inst|counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|counter\(1),
	datab => \sd_initial_inst|counter\(0),
	datad => VCC,
	combout => \sd_initial_inst|counter[1]~9_combout\,
	cout => \sd_initial_inst|counter[1]~10\);

-- Location: LCCOMB_X18_Y15_N14
\sd_initial_inst|counter[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|counter[3]~13_combout\ = (\sd_initial_inst|counter\(3) & (\sd_initial_inst|counter[2]~12\ $ (GND))) # (!\sd_initial_inst|counter\(3) & (!\sd_initial_inst|counter[2]~12\ & VCC))
-- \sd_initial_inst|counter[3]~14\ = CARRY((\sd_initial_inst|counter\(3) & !\sd_initial_inst|counter[2]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sd_initial_inst|counter\(3),
	datad => VCC,
	cin => \sd_initial_inst|counter[2]~12\,
	combout => \sd_initial_inst|counter[3]~13_combout\,
	cout => \sd_initial_inst|counter[3]~14\);

-- Location: FF_X18_Y15_N15
\sd_initial_inst|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|counter[3]~13_combout\,
	clrn => \rst_n~input_o\,
	ena => \sd_initial_inst|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|counter\(3));

-- Location: LCCOMB_X18_Y15_N16
\sd_initial_inst|counter[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|counter[4]~15_combout\ = (\sd_initial_inst|counter\(4) & (!\sd_initial_inst|counter[3]~14\)) # (!\sd_initial_inst|counter\(4) & ((\sd_initial_inst|counter[3]~14\) # (GND)))
-- \sd_initial_inst|counter[4]~16\ = CARRY((!\sd_initial_inst|counter[3]~14\) # (!\sd_initial_inst|counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sd_initial_inst|counter\(4),
	datad => VCC,
	cin => \sd_initial_inst|counter[3]~14\,
	combout => \sd_initial_inst|counter[4]~15_combout\,
	cout => \sd_initial_inst|counter[4]~16\);

-- Location: FF_X18_Y15_N17
\sd_initial_inst|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|counter[4]~15_combout\,
	clrn => \rst_n~input_o\,
	ena => \sd_initial_inst|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|counter\(4));

-- Location: LCCOMB_X18_Y15_N18
\sd_initial_inst|counter[5]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|counter[5]~17_combout\ = (\sd_initial_inst|counter\(5) & (\sd_initial_inst|counter[4]~16\ $ (GND))) # (!\sd_initial_inst|counter\(5) & (!\sd_initial_inst|counter[4]~16\ & VCC))
-- \sd_initial_inst|counter[5]~18\ = CARRY((\sd_initial_inst|counter\(5) & !\sd_initial_inst|counter[4]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sd_initial_inst|counter\(5),
	datad => VCC,
	cin => \sd_initial_inst|counter[4]~16\,
	combout => \sd_initial_inst|counter[5]~17_combout\,
	cout => \sd_initial_inst|counter[5]~18\);

-- Location: FF_X18_Y15_N19
\sd_initial_inst|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|counter[5]~17_combout\,
	clrn => \rst_n~input_o\,
	ena => \sd_initial_inst|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|counter\(5));

-- Location: LCCOMB_X18_Y15_N20
\sd_initial_inst|counter[6]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|counter[6]~19_combout\ = (\sd_initial_inst|counter\(6) & (!\sd_initial_inst|counter[5]~18\)) # (!\sd_initial_inst|counter\(6) & ((\sd_initial_inst|counter[5]~18\) # (GND)))
-- \sd_initial_inst|counter[6]~20\ = CARRY((!\sd_initial_inst|counter[5]~18\) # (!\sd_initial_inst|counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sd_initial_inst|counter\(6),
	datad => VCC,
	cin => \sd_initial_inst|counter[5]~18\,
	combout => \sd_initial_inst|counter[6]~19_combout\,
	cout => \sd_initial_inst|counter[6]~20\);

-- Location: FF_X18_Y15_N21
\sd_initial_inst|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|counter[6]~19_combout\,
	clrn => \rst_n~input_o\,
	ena => \sd_initial_inst|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|counter\(6));

-- Location: LCCOMB_X18_Y15_N24
\sd_initial_inst|counter[8]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|counter[8]~23_combout\ = (\sd_initial_inst|counter\(8) & (!\sd_initial_inst|counter[7]~22\)) # (!\sd_initial_inst|counter\(8) & ((\sd_initial_inst|counter[7]~22\) # (GND)))
-- \sd_initial_inst|counter[8]~24\ = CARRY((!\sd_initial_inst|counter[7]~22\) # (!\sd_initial_inst|counter\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sd_initial_inst|counter\(8),
	datad => VCC,
	cin => \sd_initial_inst|counter[7]~22\,
	combout => \sd_initial_inst|counter[8]~23_combout\,
	cout => \sd_initial_inst|counter[8]~24\);

-- Location: FF_X18_Y15_N25
\sd_initial_inst|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|counter[8]~23_combout\,
	clrn => \rst_n~input_o\,
	ena => \sd_initial_inst|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|counter\(8));

-- Location: LCCOMB_X18_Y15_N26
\sd_initial_inst|counter[9]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|counter[9]~25_combout\ = \sd_initial_inst|counter\(9) $ (!\sd_initial_inst|counter[8]~24\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|counter\(9),
	cin => \sd_initial_inst|counter[8]~24\,
	combout => \sd_initial_inst|counter[9]~25_combout\);

-- Location: FF_X18_Y15_N27
\sd_initial_inst|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|counter[9]~25_combout\,
	clrn => \rst_n~input_o\,
	ena => \sd_initial_inst|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|counter\(9));

-- Location: FF_X18_Y15_N11
\sd_initial_inst|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|counter[1]~9_combout\,
	clrn => \rst_n~input_o\,
	ena => \sd_initial_inst|LessThan1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|counter\(1));

-- Location: LCCOMB_X18_Y15_N4
\sd_initial_inst|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|LessThan1~0_combout\ = (((!\sd_initial_inst|counter\(1)) # (!\sd_initial_inst|counter\(9))) # (!\sd_initial_inst|counter\(0))) # (!\sd_initial_inst|counter\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|counter\(2),
	datab => \sd_initial_inst|counter\(0),
	datac => \sd_initial_inst|counter\(9),
	datad => \sd_initial_inst|counter\(1),
	combout => \sd_initial_inst|LessThan1~0_combout\);

-- Location: LCCOMB_X18_Y15_N2
\sd_initial_inst|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|LessThan1~1_combout\ = (((!\sd_initial_inst|counter\(5)) # (!\sd_initial_inst|counter\(3))) # (!\sd_initial_inst|counter\(6))) # (!\sd_initial_inst|counter\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|counter\(4),
	datab => \sd_initial_inst|counter\(6),
	datac => \sd_initial_inst|counter\(3),
	datad => \sd_initial_inst|counter\(5),
	combout => \sd_initial_inst|LessThan1~1_combout\);

-- Location: LCCOMB_X18_Y15_N0
\sd_initial_inst|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|LessThan1~2_combout\ = (((\sd_initial_inst|LessThan1~0_combout\) # (\sd_initial_inst|LessThan1~1_combout\)) # (!\sd_initial_inst|counter\(8))) # (!\sd_initial_inst|counter\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|counter\(7),
	datab => \sd_initial_inst|counter\(8),
	datac => \sd_initial_inst|LessThan1~0_combout\,
	datad => \sd_initial_inst|LessThan1~1_combout\,
	combout => \sd_initial_inst|LessThan1~2_combout\);

-- Location: LCCOMB_X18_Y15_N8
\sd_initial_inst|reset~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|reset~0_combout\ = !\sd_initial_inst|LessThan1~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sd_initial_inst|LessThan1~2_combout\,
	combout => \sd_initial_inst|reset~0_combout\);

-- Location: FF_X18_Y15_N9
\sd_initial_inst|reset\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|reset~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|reset~q\);

-- Location: LCCOMB_X21_Y15_N20
\sd_initial_inst|CMD0[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|CMD0[0]~0_combout\ = (\sd_initial_inst|reset~q\ & !\sd_initial_inst|state\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sd_initial_inst|reset~q\,
	datad => \sd_initial_inst|state\(3),
	combout => \sd_initial_inst|CMD0[0]~0_combout\);

-- Location: LCCOMB_X21_Y15_N16
\sd_initial_inst|state~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|state~4_combout\ = (\sd_initial_inst|state~3_combout\ & (\sd_initial_inst|state\(1) & (!\sd_initial_inst|state\(0) & \sd_initial_inst|CMD0[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|state~3_combout\,
	datab => \sd_initial_inst|state\(1),
	datac => \sd_initial_inst|state\(0),
	datad => \sd_initial_inst|CMD0[0]~0_combout\,
	combout => \sd_initial_inst|state~4_combout\);

-- Location: LCCOMB_X22_Y15_N4
\sd_initial_inst|state~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|state~1_combout\ = (\sd_initial_inst|state~0_combout\ & (\sd_initial_inst|reset~q\ & (!\sd_initial_inst|state\(2) & \sd_initial_inst|state\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|state~0_combout\,
	datab => \sd_initial_inst|reset~q\,
	datac => \sd_initial_inst|state\(2),
	datad => \sd_initial_inst|state\(3),
	combout => \sd_initial_inst|state~1_combout\);

-- Location: LCCOMB_X12_Y15_N20
\sd_initial_inst|Selector189~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector189~0_combout\ = (!\sd_initial_inst|CMD0\(3) & \sd_initial_inst|state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|CMD0\(3),
	datad => \sd_initial_inst|state\(0),
	combout => \sd_initial_inst|Selector189~0_combout\);

-- Location: LCCOMB_X21_Y15_N30
\sd_initial_inst|CMD0[47]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|CMD0[47]~1_combout\ = (\sd_initial_inst|reset~q\ & (!\sd_initial_inst|state\(2) & (!\sd_initial_inst|state\(1) & !\sd_initial_inst|state\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|reset~q\,
	datab => \sd_initial_inst|state\(2),
	datac => \sd_initial_inst|state\(1),
	datad => \sd_initial_inst|state\(3),
	combout => \sd_initial_inst|CMD0[47]~1_combout\);

-- Location: LCCOMB_X14_Y15_N10
\sd_initial_inst|CMD0[47]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|CMD0[47]~2_combout\ = (\sd_initial_inst|CMD0[47]~1_combout\ & ((!\sd_initial_inst|state\(0)) # (!\sd_initial_inst|Equal0~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|Equal0~15_combout\,
	datab => \sd_initial_inst|state\(0),
	datac => \sd_initial_inst|CMD0[47]~1_combout\,
	combout => \sd_initial_inst|CMD0[47]~2_combout\);

-- Location: FF_X12_Y15_N21
\sd_initial_inst|CMD0[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector189~0_combout\,
	ena => \sd_initial_inst|CMD0[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD0\(4));

-- Location: LCCOMB_X12_Y15_N4
\sd_initial_inst|Selector188~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector188~0_combout\ = (!\sd_initial_inst|CMD0\(4) & \sd_initial_inst|state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_initial_inst|CMD0\(4),
	datad => \sd_initial_inst|state\(0),
	combout => \sd_initial_inst|Selector188~0_combout\);

-- Location: FF_X12_Y15_N5
\sd_initial_inst|CMD0[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector188~0_combout\,
	ena => \sd_initial_inst|CMD0[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD0\(5));

-- Location: LCCOMB_X12_Y15_N18
\sd_initial_inst|Selector186~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector186~0_combout\ = (!\sd_initial_inst|CMD0\(6) & \sd_initial_inst|state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|CMD0\(6),
	datad => \sd_initial_inst|state\(0),
	combout => \sd_initial_inst|Selector186~0_combout\);

-- Location: FF_X12_Y15_N19
\sd_initial_inst|CMD0[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector186~0_combout\,
	ena => \sd_initial_inst|CMD0[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD0\(7));

-- Location: LCCOMB_X12_Y15_N28
\sd_initial_inst|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Equal0~1_combout\ = (!\sd_initial_inst|CMD0\(6) & (\sd_initial_inst|CMD0\(4) & (!\sd_initial_inst|CMD0\(5) & \sd_initial_inst|CMD0\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|CMD0\(6),
	datab => \sd_initial_inst|CMD0\(4),
	datac => \sd_initial_inst|CMD0\(5),
	datad => \sd_initial_inst|CMD0\(7),
	combout => \sd_initial_inst|Equal0~1_combout\);

-- Location: LCCOMB_X12_Y15_N8
\sd_initial_inst|Selector181~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector181~0_combout\ = (\sd_initial_inst|CMD0\(11) & \sd_initial_inst|state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|CMD0\(11),
	datad => \sd_initial_inst|state\(0),
	combout => \sd_initial_inst|Selector181~0_combout\);

-- Location: FF_X12_Y15_N9
\sd_initial_inst|CMD0[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector181~0_combout\,
	ena => \sd_initial_inst|CMD0[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD0\(12));

-- Location: LCCOMB_X12_Y15_N30
\sd_initial_inst|Selector180~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector180~0_combout\ = (\sd_initial_inst|CMD0\(12) & \sd_initial_inst|state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sd_initial_inst|CMD0\(12),
	datad => \sd_initial_inst|state\(0),
	combout => \sd_initial_inst|Selector180~0_combout\);

-- Location: FF_X12_Y15_N31
\sd_initial_inst|CMD0[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector180~0_combout\,
	ena => \sd_initial_inst|CMD0[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD0\(13));

-- Location: LCCOMB_X12_Y15_N16
\sd_initial_inst|Selector179~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector179~0_combout\ = (\sd_initial_inst|CMD0\(13) & \sd_initial_inst|state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sd_initial_inst|CMD0\(13),
	datad => \sd_initial_inst|state\(0),
	combout => \sd_initial_inst|Selector179~0_combout\);

-- Location: FF_X12_Y15_N17
\sd_initial_inst|CMD0[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector179~0_combout\,
	ena => \sd_initial_inst|CMD0[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD0\(14));

-- Location: LCCOMB_X12_Y15_N26
\sd_initial_inst|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Equal0~3_combout\ = (!\sd_initial_inst|CMD0\(15) & (!\sd_initial_inst|CMD0\(12) & (!\sd_initial_inst|CMD0\(13) & !\sd_initial_inst|CMD0\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|CMD0\(15),
	datab => \sd_initial_inst|CMD0\(12),
	datac => \sd_initial_inst|CMD0\(13),
	datad => \sd_initial_inst|CMD0\(14),
	combout => \sd_initial_inst|Equal0~3_combout\);

-- Location: LCCOMB_X21_Y15_N28
\sd_initial_inst|CMD0[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|CMD0[0]~3_combout\ = (\sd_initial_inst|CMD0[47]~1_combout\ & (((!\sd_initial_inst|CMD0[0]~0_combout\)) # (!\sd_initial_inst|Selector1~0_combout\))) # (!\sd_initial_inst|CMD0[47]~1_combout\ & (\sd_initial_inst|CMD0\(0) & 
-- ((!\sd_initial_inst|CMD0[0]~0_combout\) # (!\sd_initial_inst|Selector1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|CMD0[47]~1_combout\,
	datab => \sd_initial_inst|Selector1~0_combout\,
	datac => \sd_initial_inst|CMD0\(0),
	datad => \sd_initial_inst|CMD0[0]~0_combout\,
	combout => \sd_initial_inst|CMD0[0]~3_combout\);

-- Location: FF_X21_Y15_N29
\sd_initial_inst|CMD0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|CMD0[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD0\(0));

-- Location: LCCOMB_X13_Y15_N16
\sd_initial_inst|Selector192~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector192~0_combout\ = (\sd_initial_inst|state\(0) & !\sd_initial_inst|CMD0\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_initial_inst|state\(0),
	datad => \sd_initial_inst|CMD0\(0),
	combout => \sd_initial_inst|Selector192~0_combout\);

-- Location: FF_X13_Y15_N17
\sd_initial_inst|CMD0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector192~0_combout\,
	ena => \sd_initial_inst|CMD0[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD0\(1));

-- Location: LCCOMB_X12_Y15_N0
\sd_initial_inst|Selector191~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector191~0_combout\ = (!\sd_initial_inst|CMD0\(1) & \sd_initial_inst|state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_initial_inst|CMD0\(1),
	datad => \sd_initial_inst|state\(0),
	combout => \sd_initial_inst|Selector191~0_combout\);

-- Location: FF_X12_Y15_N1
\sd_initial_inst|CMD0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector191~0_combout\,
	ena => \sd_initial_inst|CMD0[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD0\(2));

-- Location: LCCOMB_X13_Y15_N6
\sd_initial_inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Equal0~0_combout\ = (!\sd_initial_inst|CMD0\(3) & (!\sd_initial_inst|CMD0\(1) & (\sd_initial_inst|CMD0\(2) & \sd_initial_inst|CMD0\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|CMD0\(3),
	datab => \sd_initial_inst|CMD0\(1),
	datac => \sd_initial_inst|CMD0\(2),
	datad => \sd_initial_inst|CMD0\(0),
	combout => \sd_initial_inst|Equal0~0_combout\);

-- Location: LCCOMB_X13_Y15_N24
\sd_initial_inst|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Equal0~4_combout\ = (\sd_initial_inst|Equal0~2_combout\ & (\sd_initial_inst|Equal0~1_combout\ & (\sd_initial_inst|Equal0~3_combout\ & \sd_initial_inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|Equal0~2_combout\,
	datab => \sd_initial_inst|Equal0~1_combout\,
	datac => \sd_initial_inst|Equal0~3_combout\,
	datad => \sd_initial_inst|Equal0~0_combout\,
	combout => \sd_initial_inst|Equal0~4_combout\);

-- Location: LCCOMB_X14_Y15_N4
\sd_initial_inst|Selector156~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector156~0_combout\ = (\sd_initial_inst|CMD0\(36) & \sd_initial_inst|state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|CMD0\(36),
	datad => \sd_initial_inst|state\(0),
	combout => \sd_initial_inst|Selector156~0_combout\);

-- Location: FF_X14_Y15_N5
\sd_initial_inst|CMD0[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector156~0_combout\,
	ena => \sd_initial_inst|CMD0[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD0\(37));

-- Location: LCCOMB_X14_Y15_N14
\sd_initial_inst|Selector155~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector155~0_combout\ = (\sd_initial_inst|CMD0\(37) & \sd_initial_inst|state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sd_initial_inst|CMD0\(37),
	datad => \sd_initial_inst|state\(0),
	combout => \sd_initial_inst|Selector155~0_combout\);

-- Location: FF_X14_Y15_N15
\sd_initial_inst|CMD0[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector155~0_combout\,
	ena => \sd_initial_inst|CMD0[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD0\(38));

-- Location: LCCOMB_X14_Y15_N0
\sd_initial_inst|Selector154~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector154~0_combout\ = (\sd_initial_inst|CMD0\(38) & \sd_initial_inst|state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sd_initial_inst|CMD0\(38),
	datad => \sd_initial_inst|state\(0),
	combout => \sd_initial_inst|Selector154~0_combout\);

-- Location: FF_X14_Y15_N1
\sd_initial_inst|CMD0[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector154~0_combout\,
	ena => \sd_initial_inst|CMD0[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD0\(39));

-- Location: LCCOMB_X14_Y15_N18
\sd_initial_inst|Equal0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Equal0~11_combout\ = (!\sd_initial_inst|CMD0\(36) & (!\sd_initial_inst|CMD0\(37) & (!\sd_initial_inst|CMD0\(38) & !\sd_initial_inst|CMD0\(39))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|CMD0\(36),
	datab => \sd_initial_inst|CMD0\(37),
	datac => \sd_initial_inst|CMD0\(38),
	datad => \sd_initial_inst|CMD0\(39),
	combout => \sd_initial_inst|Equal0~11_combout\);

-- Location: LCCOMB_X13_Y15_N8
\sd_initial_inst|Selector161~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector161~0_combout\ = (\sd_initial_inst|CMD0\(31) & \sd_initial_inst|state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|CMD0\(31),
	datad => \sd_initial_inst|state\(0),
	combout => \sd_initial_inst|Selector161~0_combout\);

-- Location: FF_X13_Y15_N9
\sd_initial_inst|CMD0[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector161~0_combout\,
	ena => \sd_initial_inst|CMD0[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD0\(32));

-- Location: LCCOMB_X13_Y15_N22
\sd_initial_inst|Selector160~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector160~0_combout\ = (\sd_initial_inst|CMD0\(32) & \sd_initial_inst|state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sd_initial_inst|CMD0\(32),
	datad => \sd_initial_inst|state\(0),
	combout => \sd_initial_inst|Selector160~0_combout\);

-- Location: FF_X13_Y15_N23
\sd_initial_inst|CMD0[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector160~0_combout\,
	ena => \sd_initial_inst|CMD0[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD0\(33));

-- Location: LCCOMB_X13_Y15_N4
\sd_initial_inst|Selector159~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector159~0_combout\ = (\sd_initial_inst|CMD0\(33) & \sd_initial_inst|state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sd_initial_inst|CMD0\(33),
	datad => \sd_initial_inst|state\(0),
	combout => \sd_initial_inst|Selector159~0_combout\);

-- Location: FF_X13_Y15_N5
\sd_initial_inst|CMD0[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector159~0_combout\,
	ena => \sd_initial_inst|CMD0[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD0\(34));

-- Location: LCCOMB_X13_Y15_N30
\sd_initial_inst|Selector158~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector158~0_combout\ = (\sd_initial_inst|CMD0\(34) & \sd_initial_inst|state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sd_initial_inst|CMD0\(34),
	datad => \sd_initial_inst|state\(0),
	combout => \sd_initial_inst|Selector158~0_combout\);

-- Location: FF_X13_Y15_N31
\sd_initial_inst|CMD0[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector158~0_combout\,
	ena => \sd_initial_inst|CMD0[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD0\(35));

-- Location: LCCOMB_X13_Y15_N0
\sd_initial_inst|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Equal0~10_combout\ = (!\sd_initial_inst|CMD0\(33) & (!\sd_initial_inst|CMD0\(32) & (!\sd_initial_inst|CMD0\(34) & !\sd_initial_inst|CMD0\(35))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|CMD0\(33),
	datab => \sd_initial_inst|CMD0\(32),
	datac => \sd_initial_inst|CMD0\(34),
	datad => \sd_initial_inst|CMD0\(35),
	combout => \sd_initial_inst|Equal0~10_combout\);

-- Location: LCCOMB_X14_Y15_N22
\sd_initial_inst|Selector148~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector148~0_combout\ = (\sd_initial_inst|CMD0\(44) & \sd_initial_inst|state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|CMD0\(44),
	datad => \sd_initial_inst|state\(0),
	combout => \sd_initial_inst|Selector148~0_combout\);

-- Location: FF_X14_Y15_N23
\sd_initial_inst|CMD0[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector148~0_combout\,
	ena => \sd_initial_inst|CMD0[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD0\(45));

-- Location: LCCOMB_X14_Y15_N24
\sd_initial_inst|Selector147~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector147~0_combout\ = (!\sd_initial_inst|CMD0\(45) & \sd_initial_inst|state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sd_initial_inst|CMD0\(45),
	datad => \sd_initial_inst|state\(0),
	combout => \sd_initial_inst|Selector147~0_combout\);

-- Location: FF_X14_Y15_N25
\sd_initial_inst|CMD0[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector147~0_combout\,
	ena => \sd_initial_inst|CMD0[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD0\(46));

-- Location: LCCOMB_X14_Y15_N20
\sd_initial_inst|Selector146~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector146~0_combout\ = (!\sd_initial_inst|CMD0\(46) & \sd_initial_inst|state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_initial_inst|CMD0\(46),
	datad => \sd_initial_inst|state\(0),
	combout => \sd_initial_inst|Selector146~0_combout\);

-- Location: FF_X14_Y15_N21
\sd_initial_inst|CMD0[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector146~0_combout\,
	ena => \sd_initial_inst|CMD0[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD0\(47));

-- Location: LCCOMB_X14_Y15_N16
\sd_initial_inst|Equal0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Equal0~13_combout\ = (!\sd_initial_inst|CMD0\(44) & (\sd_initial_inst|CMD0\(46) & (!\sd_initial_inst|CMD0\(45) & !\sd_initial_inst|CMD0\(47))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|CMD0\(44),
	datab => \sd_initial_inst|CMD0\(46),
	datac => \sd_initial_inst|CMD0\(45),
	datad => \sd_initial_inst|CMD0\(47),
	combout => \sd_initial_inst|Equal0~13_combout\);

-- Location: LCCOMB_X14_Y15_N26
\sd_initial_inst|Equal0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Equal0~14_combout\ = (\sd_initial_inst|Equal0~12_combout\ & (\sd_initial_inst|Equal0~11_combout\ & (\sd_initial_inst|Equal0~10_combout\ & \sd_initial_inst|Equal0~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|Equal0~12_combout\,
	datab => \sd_initial_inst|Equal0~11_combout\,
	datac => \sd_initial_inst|Equal0~10_combout\,
	datad => \sd_initial_inst|Equal0~13_combout\,
	combout => \sd_initial_inst|Equal0~14_combout\);

-- Location: LCCOMB_X11_Y15_N16
\sd_initial_inst|Selector178~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector178~0_combout\ = (\sd_initial_inst|CMD0\(14) & \sd_initial_inst|state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_initial_inst|CMD0\(14),
	datad => \sd_initial_inst|state\(0),
	combout => \sd_initial_inst|Selector178~0_combout\);

-- Location: FF_X11_Y15_N17
\sd_initial_inst|CMD0[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector178~0_combout\,
	ena => \sd_initial_inst|CMD0[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD0\(15));

-- Location: LCCOMB_X11_Y15_N30
\sd_initial_inst|Selector177~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector177~0_combout\ = (\sd_initial_inst|CMD0\(15) & \sd_initial_inst|state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_initial_inst|CMD0\(15),
	datad => \sd_initial_inst|state\(0),
	combout => \sd_initial_inst|Selector177~0_combout\);

-- Location: FF_X11_Y15_N31
\sd_initial_inst|CMD0[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector177~0_combout\,
	ena => \sd_initial_inst|CMD0[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD0\(16));

-- Location: LCCOMB_X11_Y15_N4
\sd_initial_inst|Selector176~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector176~0_combout\ = (\sd_initial_inst|CMD0\(16) & \sd_initial_inst|state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sd_initial_inst|CMD0\(16),
	datad => \sd_initial_inst|state\(0),
	combout => \sd_initial_inst|Selector176~0_combout\);

-- Location: FF_X11_Y15_N5
\sd_initial_inst|CMD0[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector176~0_combout\,
	ena => \sd_initial_inst|CMD0[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD0\(17));

-- Location: LCCOMB_X11_Y15_N22
\sd_initial_inst|Selector175~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector175~0_combout\ = (\sd_initial_inst|CMD0\(17) & \sd_initial_inst|state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sd_initial_inst|CMD0\(17),
	datad => \sd_initial_inst|state\(0),
	combout => \sd_initial_inst|Selector175~0_combout\);

-- Location: FF_X11_Y15_N23
\sd_initial_inst|CMD0[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector175~0_combout\,
	ena => \sd_initial_inst|CMD0[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD0\(18));

-- Location: LCCOMB_X11_Y15_N8
\sd_initial_inst|Selector174~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector174~0_combout\ = (\sd_initial_inst|CMD0\(18) & \sd_initial_inst|state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sd_initial_inst|CMD0\(18),
	datad => \sd_initial_inst|state\(0),
	combout => \sd_initial_inst|Selector174~0_combout\);

-- Location: FF_X11_Y15_N9
\sd_initial_inst|CMD0[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector174~0_combout\,
	ena => \sd_initial_inst|CMD0[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD0\(19));

-- Location: LCCOMB_X11_Y15_N0
\sd_initial_inst|Selector173~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector173~0_combout\ = (\sd_initial_inst|CMD0\(19) & \sd_initial_inst|state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sd_initial_inst|CMD0\(19),
	datad => \sd_initial_inst|state\(0),
	combout => \sd_initial_inst|Selector173~0_combout\);

-- Location: FF_X11_Y15_N1
\sd_initial_inst|CMD0[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector173~0_combout\,
	ena => \sd_initial_inst|CMD0[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD0\(20));

-- Location: LCCOMB_X11_Y15_N20
\sd_initial_inst|Selector171~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector171~0_combout\ = (\sd_initial_inst|CMD0\(21) & \sd_initial_inst|state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|CMD0\(21),
	datad => \sd_initial_inst|state\(0),
	combout => \sd_initial_inst|Selector171~0_combout\);

-- Location: FF_X11_Y15_N21
\sd_initial_inst|CMD0[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector171~0_combout\,
	ena => \sd_initial_inst|CMD0[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD0\(22));

-- Location: LCCOMB_X11_Y15_N14
\sd_initial_inst|Selector170~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector170~0_combout\ = (\sd_initial_inst|CMD0\(22) & \sd_initial_inst|state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_initial_inst|CMD0\(22),
	datad => \sd_initial_inst|state\(0),
	combout => \sd_initial_inst|Selector170~0_combout\);

-- Location: FF_X11_Y15_N15
\sd_initial_inst|CMD0[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector170~0_combout\,
	ena => \sd_initial_inst|CMD0[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD0\(23));

-- Location: LCCOMB_X11_Y15_N12
\sd_initial_inst|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Equal0~6_combout\ = (!\sd_initial_inst|CMD0\(21) & (!\sd_initial_inst|CMD0\(20) & (!\sd_initial_inst|CMD0\(23) & !\sd_initial_inst|CMD0\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|CMD0\(21),
	datab => \sd_initial_inst|CMD0\(20),
	datac => \sd_initial_inst|CMD0\(23),
	datad => \sd_initial_inst|CMD0\(22),
	combout => \sd_initial_inst|Equal0~6_combout\);

-- Location: LCCOMB_X11_Y15_N10
\sd_initial_inst|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Equal0~5_combout\ = (!\sd_initial_inst|CMD0\(18) & (!\sd_initial_inst|CMD0\(17) & (!\sd_initial_inst|CMD0\(19) & !\sd_initial_inst|CMD0\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|CMD0\(18),
	datab => \sd_initial_inst|CMD0\(17),
	datac => \sd_initial_inst|CMD0\(19),
	datad => \sd_initial_inst|CMD0\(16),
	combout => \sd_initial_inst|Equal0~5_combout\);

-- Location: LCCOMB_X11_Y15_N26
\sd_initial_inst|Selector169~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector169~0_combout\ = (\sd_initial_inst|CMD0\(23) & \sd_initial_inst|state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sd_initial_inst|CMD0\(23),
	datad => \sd_initial_inst|state\(0),
	combout => \sd_initial_inst|Selector169~0_combout\);

-- Location: FF_X11_Y15_N27
\sd_initial_inst|CMD0[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector169~0_combout\,
	ena => \sd_initial_inst|CMD0[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD0\(24));

-- Location: LCCOMB_X11_Y15_N28
\sd_initial_inst|Selector168~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector168~0_combout\ = (\sd_initial_inst|CMD0\(24) & \sd_initial_inst|state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sd_initial_inst|CMD0\(24),
	datad => \sd_initial_inst|state\(0),
	combout => \sd_initial_inst|Selector168~0_combout\);

-- Location: FF_X11_Y15_N29
\sd_initial_inst|CMD0[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector168~0_combout\,
	ena => \sd_initial_inst|CMD0[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD0\(25));

-- Location: LCCOMB_X11_Y15_N2
\sd_initial_inst|Selector167~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector167~0_combout\ = (\sd_initial_inst|CMD0\(25) & \sd_initial_inst|state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_initial_inst|CMD0\(25),
	datad => \sd_initial_inst|state\(0),
	combout => \sd_initial_inst|Selector167~0_combout\);

-- Location: FF_X11_Y15_N3
\sd_initial_inst|CMD0[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector167~0_combout\,
	ena => \sd_initial_inst|CMD0[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD0\(26));

-- Location: LCCOMB_X11_Y15_N24
\sd_initial_inst|Selector166~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector166~0_combout\ = (\sd_initial_inst|CMD0\(26) & \sd_initial_inst|state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_initial_inst|CMD0\(26),
	datad => \sd_initial_inst|state\(0),
	combout => \sd_initial_inst|Selector166~0_combout\);

-- Location: FF_X11_Y15_N25
\sd_initial_inst|CMD0[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector166~0_combout\,
	ena => \sd_initial_inst|CMD0[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD0\(27));

-- Location: LCCOMB_X13_Y15_N18
\sd_initial_inst|Selector165~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector165~0_combout\ = (\sd_initial_inst|CMD0\(27) & \sd_initial_inst|state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sd_initial_inst|CMD0\(27),
	datad => \sd_initial_inst|state\(0),
	combout => \sd_initial_inst|Selector165~0_combout\);

-- Location: FF_X13_Y15_N19
\sd_initial_inst|CMD0[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector165~0_combout\,
	ena => \sd_initial_inst|CMD0[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD0\(28));

-- Location: LCCOMB_X14_Y15_N30
\sd_initial_inst|Selector164~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector164~0_combout\ = (\sd_initial_inst|CMD0\(28) & \sd_initial_inst|state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_initial_inst|CMD0\(28),
	datad => \sd_initial_inst|state\(0),
	combout => \sd_initial_inst|Selector164~0_combout\);

-- Location: FF_X14_Y15_N31
\sd_initial_inst|CMD0[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector164~0_combout\,
	ena => \sd_initial_inst|CMD0[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD0\(29));

-- Location: LCCOMB_X14_Y15_N8
\sd_initial_inst|Selector163~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector163~0_combout\ = (\sd_initial_inst|CMD0\(29) & \sd_initial_inst|state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sd_initial_inst|CMD0\(29),
	datad => \sd_initial_inst|state\(0),
	combout => \sd_initial_inst|Selector163~0_combout\);

-- Location: FF_X14_Y15_N9
\sd_initial_inst|CMD0[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector163~0_combout\,
	ena => \sd_initial_inst|CMD0[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD0\(30));

-- Location: LCCOMB_X14_Y15_N2
\sd_initial_inst|Selector162~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector162~0_combout\ = (\sd_initial_inst|CMD0\(30) & \sd_initial_inst|state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sd_initial_inst|CMD0\(30),
	datad => \sd_initial_inst|state\(0),
	combout => \sd_initial_inst|Selector162~0_combout\);

-- Location: FF_X14_Y15_N3
\sd_initial_inst|CMD0[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector162~0_combout\,
	ena => \sd_initial_inst|CMD0[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD0\(31));

-- Location: LCCOMB_X14_Y15_N28
\sd_initial_inst|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Equal0~8_combout\ = (!\sd_initial_inst|CMD0\(29) & (!\sd_initial_inst|CMD0\(28) & (!\sd_initial_inst|CMD0\(30) & !\sd_initial_inst|CMD0\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|CMD0\(29),
	datab => \sd_initial_inst|CMD0\(28),
	datac => \sd_initial_inst|CMD0\(30),
	datad => \sd_initial_inst|CMD0\(31),
	combout => \sd_initial_inst|Equal0~8_combout\);

-- Location: LCCOMB_X14_Y15_N6
\sd_initial_inst|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Equal0~9_combout\ = (\sd_initial_inst|Equal0~7_combout\ & (\sd_initial_inst|Equal0~6_combout\ & (\sd_initial_inst|Equal0~5_combout\ & \sd_initial_inst|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|Equal0~7_combout\,
	datab => \sd_initial_inst|Equal0~6_combout\,
	datac => \sd_initial_inst|Equal0~5_combout\,
	datad => \sd_initial_inst|Equal0~8_combout\,
	combout => \sd_initial_inst|Equal0~9_combout\);

-- Location: LCCOMB_X14_Y15_N12
\sd_initial_inst|Equal0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Equal0~15_combout\ = (\sd_initial_inst|Equal0~4_combout\ & (\sd_initial_inst|Equal0~14_combout\ & \sd_initial_inst|Equal0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_initial_inst|Equal0~4_combout\,
	datac => \sd_initial_inst|Equal0~14_combout\,
	datad => \sd_initial_inst|Equal0~9_combout\,
	combout => \sd_initial_inst|Equal0~15_combout\);

-- Location: LCCOMB_X21_Y15_N24
\sd_initial_inst|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Mux3~0_combout\ = (\sd_initial_inst|state\(1) & ((\sd_initial_inst|LessThan3~2_combout\) # ((\sd_initial_inst|state\(2))))) # (!\sd_initial_inst|state\(1) & (((\sd_initial_inst|Equal0~15_combout\ & !\sd_initial_inst|state\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|LessThan3~2_combout\,
	datab => \sd_initial_inst|Equal0~15_combout\,
	datac => \sd_initial_inst|state\(1),
	datad => \sd_initial_inst|state\(2),
	combout => \sd_initial_inst|Mux3~0_combout\);

-- Location: FF_X24_Y18_N25
\sd_initial_inst|rx[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \SD_dataout~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|rx\(0));

-- Location: LCCOMB_X24_Y18_N18
\sd_initial_inst|rx[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|rx[1]~feeder_combout\ = \sd_initial_inst|rx\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sd_initial_inst|rx\(0),
	combout => \sd_initial_inst|rx[1]~feeder_combout\);

-- Location: FF_X24_Y18_N19
\sd_initial_inst|rx[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|rx[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|rx\(1));

-- Location: LCCOMB_X24_Y18_N16
\sd_initial_inst|rx[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|rx[2]~feeder_combout\ = \sd_initial_inst|rx\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sd_initial_inst|rx\(1),
	combout => \sd_initial_inst|rx[2]~feeder_combout\);

-- Location: FF_X24_Y18_N17
\sd_initial_inst|rx[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|rx[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|rx\(2));

-- Location: LCCOMB_X24_Y18_N10
\sd_initial_inst|rx[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|rx[3]~feeder_combout\ = \sd_initial_inst|rx\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sd_initial_inst|rx\(2),
	combout => \sd_initial_inst|rx[3]~feeder_combout\);

-- Location: FF_X24_Y18_N11
\sd_initial_inst|rx[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|rx[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|rx\(3));

-- Location: LCCOMB_X24_Y18_N12
\sd_initial_inst|rx[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|rx[4]~feeder_combout\ = \sd_initial_inst|rx\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sd_initial_inst|rx\(3),
	combout => \sd_initial_inst|rx[4]~feeder_combout\);

-- Location: FF_X24_Y18_N13
\sd_initial_inst|rx[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|rx[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|rx\(4));

-- Location: LCCOMB_X24_Y18_N6
\sd_initial_inst|rx[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|rx[5]~feeder_combout\ = \sd_initial_inst|rx\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sd_initial_inst|rx\(4),
	combout => \sd_initial_inst|rx[5]~feeder_combout\);

-- Location: FF_X24_Y18_N7
\sd_initial_inst|rx[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|rx[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|rx\(5));

-- Location: LCCOMB_X24_Y18_N0
\sd_initial_inst|rx[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|rx[6]~feeder_combout\ = \sd_initial_inst|rx\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sd_initial_inst|rx\(5),
	combout => \sd_initial_inst|rx[6]~feeder_combout\);

-- Location: FF_X24_Y18_N1
\sd_initial_inst|rx[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|rx[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|rx\(6));

-- Location: LCCOMB_X24_Y18_N26
\sd_initial_inst|rx[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|rx[7]~feeder_combout\ = \sd_initial_inst|rx\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sd_initial_inst|rx\(6),
	combout => \sd_initial_inst|rx[7]~feeder_combout\);

-- Location: FF_X24_Y18_N27
\sd_initial_inst|rx[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|rx[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|rx\(7));

-- Location: FF_X24_Y18_N29
\sd_initial_inst|rx[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sd_initial_inst|rx\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|rx\(8));

-- Location: LCCOMB_X24_Y18_N22
\sd_initial_inst|rx[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|rx[9]~feeder_combout\ = \sd_initial_inst|rx\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sd_initial_inst|rx\(8),
	combout => \sd_initial_inst|rx[9]~feeder_combout\);

-- Location: FF_X24_Y18_N23
\sd_initial_inst|rx[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|rx[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|rx\(9));

-- Location: FF_X24_Y18_N21
\sd_initial_inst|rx[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sd_initial_inst|rx\(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|rx\(10));

-- Location: LCCOMB_X24_Y18_N14
\sd_initial_inst|rx[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|rx[11]~feeder_combout\ = \sd_initial_inst|rx\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sd_initial_inst|rx\(10),
	combout => \sd_initial_inst|rx[11]~feeder_combout\);

-- Location: FF_X24_Y18_N15
\sd_initial_inst|rx[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|rx[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|rx\(11));

-- Location: FF_X24_Y18_N5
\sd_initial_inst|rx[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sd_initial_inst|rx\(11),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|rx\(12));

-- Location: FF_X24_Y18_N3
\sd_initial_inst|rx[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sd_initial_inst|rx\(12),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|rx\(13));

-- Location: LCCOMB_X24_Y18_N8
\sd_initial_inst|rx[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|rx[14]~feeder_combout\ = \sd_initial_inst|rx\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sd_initial_inst|rx\(13),
	combout => \sd_initial_inst|rx[14]~feeder_combout\);

-- Location: FF_X24_Y18_N9
\sd_initial_inst|rx[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|rx[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|rx\(14));

-- Location: LCCOMB_X17_Y15_N18
\sd_initial_inst|rx[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|rx[15]~feeder_combout\ = \sd_initial_inst|rx\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sd_initial_inst|rx\(14),
	combout => \sd_initial_inst|rx[15]~feeder_combout\);

-- Location: FF_X17_Y15_N19
\sd_initial_inst|rx[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|rx[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|rx\(15));

-- Location: LCCOMB_X17_Y15_N12
\sd_initial_inst|rx[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|rx[16]~feeder_combout\ = \sd_initial_inst|rx\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sd_initial_inst|rx\(15),
	combout => \sd_initial_inst|rx[16]~feeder_combout\);

-- Location: FF_X17_Y15_N13
\sd_initial_inst|rx[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|rx[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|rx\(16));

-- Location: LCCOMB_X17_Y15_N22
\sd_initial_inst|rx[17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|rx[17]~feeder_combout\ = \sd_initial_inst|rx\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sd_initial_inst|rx\(16),
	combout => \sd_initial_inst|rx[17]~feeder_combout\);

-- Location: FF_X17_Y15_N23
\sd_initial_inst|rx[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|rx[17]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|rx\(17));

-- Location: FF_X17_Y15_N29
\sd_initial_inst|rx[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sd_initial_inst|rx\(17),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|rx\(18));

-- Location: LCCOMB_X17_Y15_N2
\sd_initial_inst|rx[19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|rx[19]~feeder_combout\ = \sd_initial_inst|rx\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sd_initial_inst|rx\(18),
	combout => \sd_initial_inst|rx[19]~feeder_combout\);

-- Location: FF_X17_Y15_N3
\sd_initial_inst|rx[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|rx[19]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|rx\(19));

-- Location: LCCOMB_X17_Y15_N20
\sd_initial_inst|always3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|always3~0_combout\ = (\sd_initial_inst|rx\(16) & (!\sd_initial_inst|rx\(19) & (!\sd_initial_inst|rx\(17) & !\sd_initial_inst|rx\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|rx\(16),
	datab => \sd_initial_inst|rx\(19),
	datac => \sd_initial_inst|rx\(17),
	datad => \sd_initial_inst|rx\(18),
	combout => \sd_initial_inst|always3~0_combout\);

-- Location: LCCOMB_X25_Y15_N26
\sd_initial_inst|always3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|always3~3_combout\ = (!\sd_initial_inst|always3~0_combout\) # (!\sd_initial_inst|rx_valid~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_initial_inst|rx_valid~q\,
	datad => \sd_initial_inst|always3~0_combout\,
	combout => \sd_initial_inst|always3~3_combout\);

-- Location: LCCOMB_X22_Y15_N2
\sd_initial_inst|Selector97~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector97~0_combout\ = (\sd_initial_inst|state\(0) & (!\sd_initial_inst|state\(3) & (\sd_initial_inst|state\(2) & !\sd_initial_inst|state\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|state\(0),
	datab => \sd_initial_inst|state\(3),
	datac => \sd_initial_inst|state\(2),
	datad => \sd_initial_inst|state\(1),
	combout => \sd_initial_inst|Selector97~0_combout\);

-- Location: LCCOMB_X23_Y15_N30
\sd_initial_inst|ACMD41[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|ACMD41[0]~3_combout\ = (\sd_initial_inst|ACMD41[47]~1_combout\ & (((\sd_initial_inst|always3~3_combout\ & \sd_initial_inst|ACMD41\(0))) # (!\sd_initial_inst|Selector97~0_combout\))) # (!\sd_initial_inst|ACMD41[47]~1_combout\ & 
-- (((\sd_initial_inst|ACMD41\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|ACMD41[47]~1_combout\,
	datab => \sd_initial_inst|always3~3_combout\,
	datac => \sd_initial_inst|ACMD41\(0),
	datad => \sd_initial_inst|Selector97~0_combout\,
	combout => \sd_initial_inst|ACMD41[0]~3_combout\);

-- Location: FF_X23_Y15_N31
\sd_initial_inst|ACMD41[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|ACMD41[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|ACMD41\(0));

-- Location: LCCOMB_X26_Y15_N12
\sd_initial_inst|Selector48~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector48~0_combout\ = (\sd_initial_inst|state\(1) & ((\sd_initial_inst|ACMD41\(0)) # (!\sd_initial_inst|ACMD41[42]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|ACMD41[42]~0_combout\,
	datac => \sd_initial_inst|ACMD41\(0),
	datad => \sd_initial_inst|state\(1),
	combout => \sd_initial_inst|Selector48~0_combout\);

-- Location: LCCOMB_X23_Y15_N22
\sd_initial_inst|ACMD41[47]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|ACMD41[47]~1_combout\ = (\sd_initial_inst|state\(0) & (\sd_initial_inst|reset~q\ & (!\sd_initial_inst|state\(3) & \sd_initial_inst|state\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|state\(0),
	datab => \sd_initial_inst|reset~q\,
	datac => \sd_initial_inst|state\(3),
	datad => \sd_initial_inst|state\(2),
	combout => \sd_initial_inst|ACMD41[47]~1_combout\);

-- Location: LCCOMB_X23_Y15_N28
\sd_initial_inst|ACMD41[47]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|ACMD41[47]~2_combout\ = (\sd_initial_inst|ACMD41[47]~1_combout\ & ((\sd_initial_inst|state\(1)) # ((\sd_initial_inst|rx_valid~q\ & \sd_initial_inst|always3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|rx_valid~q\,
	datab => \sd_initial_inst|always3~0_combout\,
	datac => \sd_initial_inst|ACMD41[47]~1_combout\,
	datad => \sd_initial_inst|state\(1),
	combout => \sd_initial_inst|ACMD41[47]~2_combout\);

-- Location: FF_X26_Y15_N13
\sd_initial_inst|ACMD41[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector48~0_combout\,
	ena => \sd_initial_inst|ACMD41[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|ACMD41\(1));

-- Location: LCCOMB_X26_Y15_N2
\sd_initial_inst|Selector47~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector47~0_combout\ = (\sd_initial_inst|state\(1) & ((\sd_initial_inst|ACMD41\(1)) # (!\sd_initial_inst|ACMD41[42]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|state\(1),
	datac => \sd_initial_inst|ACMD41\(1),
	datad => \sd_initial_inst|ACMD41[42]~0_combout\,
	combout => \sd_initial_inst|Selector47~0_combout\);

-- Location: FF_X26_Y15_N3
\sd_initial_inst|ACMD41[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector47~0_combout\,
	ena => \sd_initial_inst|ACMD41[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|ACMD41\(2));

-- Location: LCCOMB_X26_Y15_N16
\sd_initial_inst|Selector46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector46~0_combout\ = (\sd_initial_inst|state\(1) & ((\sd_initial_inst|ACMD41\(2)) # (!\sd_initial_inst|ACMD41[42]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|ACMD41[42]~0_combout\,
	datab => \sd_initial_inst|ACMD41\(2),
	datad => \sd_initial_inst|state\(1),
	combout => \sd_initial_inst|Selector46~0_combout\);

-- Location: FF_X26_Y15_N17
\sd_initial_inst|ACMD41[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector46~0_combout\,
	ena => \sd_initial_inst|ACMD41[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|ACMD41\(3));

-- Location: LCCOMB_X26_Y15_N18
\sd_initial_inst|Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Equal5~0_combout\ = (((!\sd_initial_inst|ACMD41\(2)) # (!\sd_initial_inst|ACMD41\(0))) # (!\sd_initial_inst|ACMD41\(3))) # (!\sd_initial_inst|ACMD41\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|ACMD41\(1),
	datab => \sd_initial_inst|ACMD41\(3),
	datac => \sd_initial_inst|ACMD41\(0),
	datad => \sd_initial_inst|ACMD41\(2),
	combout => \sd_initial_inst|Equal5~0_combout\);

-- Location: LCCOMB_X25_Y14_N8
\sd_initial_inst|Selector41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector41~0_combout\ = (!\sd_initial_inst|ACMD41\(7) & \sd_initial_inst|ACMD41[42]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|ACMD41\(7),
	datac => \sd_initial_inst|ACMD41[42]~0_combout\,
	combout => \sd_initial_inst|Selector41~0_combout\);

-- Location: FF_X25_Y14_N9
\sd_initial_inst|ACMD41[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector41~0_combout\,
	ena => \sd_initial_inst|ACMD41[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|ACMD41\(8));

-- Location: LCCOMB_X25_Y14_N22
\sd_initial_inst|Selector40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector40~0_combout\ = (\sd_initial_inst|ACMD41\(8) & \sd_initial_inst|ACMD41[42]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_initial_inst|ACMD41\(8),
	datac => \sd_initial_inst|ACMD41[42]~0_combout\,
	combout => \sd_initial_inst|Selector40~0_combout\);

-- Location: FF_X25_Y14_N23
\sd_initial_inst|ACMD41[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector40~0_combout\,
	ena => \sd_initial_inst|ACMD41[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|ACMD41\(9));

-- Location: LCCOMB_X25_Y14_N20
\sd_initial_inst|Selector39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector39~0_combout\ = (\sd_initial_inst|ACMD41[42]~0_combout\ & \sd_initial_inst|ACMD41\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|ACMD41[42]~0_combout\,
	datac => \sd_initial_inst|ACMD41\(9),
	combout => \sd_initial_inst|Selector39~0_combout\);

-- Location: FF_X25_Y14_N21
\sd_initial_inst|ACMD41[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector39~0_combout\,
	ena => \sd_initial_inst|ACMD41[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|ACMD41\(10));

-- Location: LCCOMB_X25_Y14_N26
\sd_initial_inst|Selector38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector38~0_combout\ = (\sd_initial_inst|ACMD41\(10) & \sd_initial_inst|ACMD41[42]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_initial_inst|ACMD41\(10),
	datac => \sd_initial_inst|ACMD41[42]~0_combout\,
	combout => \sd_initial_inst|Selector38~0_combout\);

-- Location: FF_X25_Y14_N27
\sd_initial_inst|ACMD41[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector38~0_combout\,
	ena => \sd_initial_inst|ACMD41[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|ACMD41\(11));

-- Location: LCCOMB_X25_Y14_N14
\sd_initial_inst|Selector37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector37~0_combout\ = (\sd_initial_inst|ACMD41[42]~0_combout\ & \sd_initial_inst|ACMD41\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|ACMD41[42]~0_combout\,
	datac => \sd_initial_inst|ACMD41\(11),
	combout => \sd_initial_inst|Selector37~0_combout\);

-- Location: FF_X25_Y14_N15
\sd_initial_inst|ACMD41[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector37~0_combout\,
	ena => \sd_initial_inst|ACMD41[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|ACMD41\(12));

-- Location: LCCOMB_X25_Y14_N24
\sd_initial_inst|Selector36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector36~0_combout\ = (\sd_initial_inst|ACMD41[42]~0_combout\ & \sd_initial_inst|ACMD41\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|ACMD41[42]~0_combout\,
	datac => \sd_initial_inst|ACMD41\(12),
	combout => \sd_initial_inst|Selector36~0_combout\);

-- Location: FF_X25_Y14_N25
\sd_initial_inst|ACMD41[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector36~0_combout\,
	ena => \sd_initial_inst|ACMD41[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|ACMD41\(13));

-- Location: LCCOMB_X25_Y14_N30
\sd_initial_inst|Selector35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector35~0_combout\ = (\sd_initial_inst|ACMD41\(13) & \sd_initial_inst|ACMD41[42]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_initial_inst|ACMD41\(13),
	datac => \sd_initial_inst|ACMD41[42]~0_combout\,
	combout => \sd_initial_inst|Selector35~0_combout\);

-- Location: FF_X25_Y14_N31
\sd_initial_inst|ACMD41[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector35~0_combout\,
	ena => \sd_initial_inst|ACMD41[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|ACMD41\(14));

-- Location: LCCOMB_X25_Y14_N4
\sd_initial_inst|Selector34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector34~0_combout\ = (\sd_initial_inst|ACMD41[42]~0_combout\ & \sd_initial_inst|ACMD41\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|ACMD41[42]~0_combout\,
	datac => \sd_initial_inst|ACMD41\(14),
	combout => \sd_initial_inst|Selector34~0_combout\);

-- Location: FF_X25_Y14_N5
\sd_initial_inst|ACMD41[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector34~0_combout\,
	ena => \sd_initial_inst|ACMD41[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|ACMD41\(15));

-- Location: LCCOMB_X25_Y14_N10
\sd_initial_inst|Equal5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Equal5~3_combout\ = (\sd_initial_inst|ACMD41\(14)) # ((\sd_initial_inst|ACMD41\(12)) # ((\sd_initial_inst|ACMD41\(15)) # (\sd_initial_inst|ACMD41\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|ACMD41\(14),
	datab => \sd_initial_inst|ACMD41\(12),
	datac => \sd_initial_inst|ACMD41\(15),
	datad => \sd_initial_inst|ACMD41\(13),
	combout => \sd_initial_inst|Equal5~3_combout\);

-- Location: LCCOMB_X26_Y15_N4
\sd_initial_inst|Selector45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector45~0_combout\ = (\sd_initial_inst|state\(1) & ((\sd_initial_inst|ACMD41\(3)) # (!\sd_initial_inst|ACMD41[42]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|ACMD41[42]~0_combout\,
	datab => \sd_initial_inst|ACMD41\(3),
	datad => \sd_initial_inst|state\(1),
	combout => \sd_initial_inst|Selector45~0_combout\);

-- Location: FF_X26_Y15_N5
\sd_initial_inst|ACMD41[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector45~0_combout\,
	ena => \sd_initial_inst|ACMD41[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|ACMD41\(4));

-- Location: LCCOMB_X26_Y15_N6
\sd_initial_inst|Selector44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector44~0_combout\ = (\sd_initial_inst|state\(1) & ((\sd_initial_inst|ACMD41\(4)) # (!\sd_initial_inst|ACMD41[42]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|ACMD41[42]~0_combout\,
	datac => \sd_initial_inst|ACMD41\(4),
	datad => \sd_initial_inst|state\(1),
	combout => \sd_initial_inst|Selector44~0_combout\);

-- Location: FF_X26_Y15_N7
\sd_initial_inst|ACMD41[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector44~0_combout\,
	ena => \sd_initial_inst|ACMD41[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|ACMD41\(5));

-- Location: LCCOMB_X26_Y15_N0
\sd_initial_inst|Selector43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector43~0_combout\ = (\sd_initial_inst|state\(1) & ((\sd_initial_inst|ACMD41\(5)) # (!\sd_initial_inst|ACMD41[42]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|state\(1),
	datac => \sd_initial_inst|ACMD41\(5),
	datad => \sd_initial_inst|ACMD41[42]~0_combout\,
	combout => \sd_initial_inst|Selector43~0_combout\);

-- Location: FF_X26_Y15_N1
\sd_initial_inst|ACMD41[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector43~0_combout\,
	ena => \sd_initial_inst|ACMD41[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|ACMD41\(6));

-- Location: LCCOMB_X26_Y15_N28
\sd_initial_inst|Equal5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Equal5~1_combout\ = (((!\sd_initial_inst|ACMD41\(5)) # (!\sd_initial_inst|ACMD41\(4))) # (!\sd_initial_inst|ACMD41\(6))) # (!\sd_initial_inst|ACMD41\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|ACMD41\(7),
	datab => \sd_initial_inst|ACMD41\(6),
	datac => \sd_initial_inst|ACMD41\(4),
	datad => \sd_initial_inst|ACMD41\(5),
	combout => \sd_initial_inst|Equal5~1_combout\);

-- Location: LCCOMB_X25_Y15_N2
\sd_initial_inst|Equal5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Equal5~4_combout\ = (\sd_initial_inst|Equal5~2_combout\) # ((\sd_initial_inst|Equal5~0_combout\) # ((\sd_initial_inst|Equal5~3_combout\) # (\sd_initial_inst|Equal5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|Equal5~2_combout\,
	datab => \sd_initial_inst|Equal5~0_combout\,
	datac => \sd_initial_inst|Equal5~3_combout\,
	datad => \sd_initial_inst|Equal5~1_combout\,
	combout => \sd_initial_inst|Equal5~4_combout\);

-- Location: LCCOMB_X25_Y15_N14
\sd_initial_inst|ACMD41[42]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|ACMD41[42]~0_combout\ = (\sd_initial_inst|state\(1) & ((\sd_initial_inst|Equal5~9_combout\) # ((\sd_initial_inst|Equal5~4_combout\) # (\sd_initial_inst|Equal5~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|Equal5~9_combout\,
	datab => \sd_initial_inst|Equal5~4_combout\,
	datac => \sd_initial_inst|Equal5~14_combout\,
	datad => \sd_initial_inst|state\(1),
	combout => \sd_initial_inst|ACMD41[42]~0_combout\);

-- Location: LCCOMB_X26_Y14_N20
\sd_initial_inst|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector11~0_combout\ = (\sd_initial_inst|state\(1) & ((!\sd_initial_inst|ACMD41[42]~0_combout\) # (!\sd_initial_inst|ACMD41\(37))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|ACMD41\(37),
	datab => \sd_initial_inst|ACMD41[42]~0_combout\,
	datad => \sd_initial_inst|state\(1),
	combout => \sd_initial_inst|Selector11~0_combout\);

-- Location: FF_X26_Y14_N21
\sd_initial_inst|ACMD41[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector11~0_combout\,
	ena => \sd_initial_inst|ACMD41[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|ACMD41\(38));

-- Location: LCCOMB_X26_Y14_N14
\sd_initial_inst|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector10~0_combout\ = (!\sd_initial_inst|ACMD41\(38) & \sd_initial_inst|ACMD41[42]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_initial_inst|ACMD41\(38),
	datad => \sd_initial_inst|ACMD41[42]~0_combout\,
	combout => \sd_initial_inst|Selector10~0_combout\);

-- Location: FF_X26_Y14_N15
\sd_initial_inst|ACMD41[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector10~0_combout\,
	ena => \sd_initial_inst|ACMD41[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|ACMD41\(39));

-- Location: LCCOMB_X26_Y14_N24
\sd_initial_inst|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector9~0_combout\ = (\sd_initial_inst|state\(1) & ((!\sd_initial_inst|ACMD41\(39)) # (!\sd_initial_inst|ACMD41[42]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_initial_inst|ACMD41[42]~0_combout\,
	datac => \sd_initial_inst|ACMD41\(39),
	datad => \sd_initial_inst|state\(1),
	combout => \sd_initial_inst|Selector9~0_combout\);

-- Location: FF_X26_Y14_N25
\sd_initial_inst|ACMD41[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector9~0_combout\,
	ena => \sd_initial_inst|ACMD41[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|ACMD41\(40));

-- Location: LCCOMB_X26_Y14_N8
\sd_initial_inst|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector8~0_combout\ = (!\sd_initial_inst|ACMD41\(40) & \sd_initial_inst|ACMD41[42]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_initial_inst|ACMD41\(40),
	datad => \sd_initial_inst|ACMD41[42]~0_combout\,
	combout => \sd_initial_inst|Selector8~0_combout\);

-- Location: FF_X26_Y14_N9
\sd_initial_inst|ACMD41[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector8~0_combout\,
	ena => \sd_initial_inst|ACMD41[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|ACMD41\(41));

-- Location: LCCOMB_X26_Y14_N30
\sd_initial_inst|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector7~0_combout\ = (\sd_initial_inst|ACMD41\(41) & \sd_initial_inst|ACMD41[42]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sd_initial_inst|ACMD41\(41),
	datad => \sd_initial_inst|ACMD41[42]~0_combout\,
	combout => \sd_initial_inst|Selector7~0_combout\);

-- Location: FF_X26_Y14_N31
\sd_initial_inst|ACMD41[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector7~0_combout\,
	ena => \sd_initial_inst|ACMD41[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|ACMD41\(42));

-- Location: LCCOMB_X26_Y14_N2
\sd_initial_inst|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector6~0_combout\ = (\sd_initial_inst|state\(1) & ((!\sd_initial_inst|ACMD41\(42)) # (!\sd_initial_inst|ACMD41[42]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_initial_inst|ACMD41[42]~0_combout\,
	datac => \sd_initial_inst|ACMD41\(42),
	datad => \sd_initial_inst|state\(1),
	combout => \sd_initial_inst|Selector6~0_combout\);

-- Location: FF_X26_Y14_N3
\sd_initial_inst|ACMD41[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector6~0_combout\,
	ena => \sd_initial_inst|ACMD41[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|ACMD41\(43));

-- Location: LCCOMB_X26_Y14_N22
\sd_initial_inst|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector5~0_combout\ = (!\sd_initial_inst|ACMD41\(43) & \sd_initial_inst|ACMD41[42]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_initial_inst|ACMD41\(43),
	datad => \sd_initial_inst|ACMD41[42]~0_combout\,
	combout => \sd_initial_inst|Selector5~0_combout\);

-- Location: FF_X26_Y14_N23
\sd_initial_inst|ACMD41[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector5~0_combout\,
	ena => \sd_initial_inst|ACMD41[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|ACMD41\(44));

-- Location: LCCOMB_X26_Y14_N28
\sd_initial_inst|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector4~0_combout\ = (\sd_initial_inst|state\(1) & ((!\sd_initial_inst|ACMD41\(44)) # (!\sd_initial_inst|ACMD41[42]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_initial_inst|ACMD41[42]~0_combout\,
	datac => \sd_initial_inst|ACMD41\(44),
	datad => \sd_initial_inst|state\(1),
	combout => \sd_initial_inst|Selector4~0_combout\);

-- Location: FF_X26_Y14_N29
\sd_initial_inst|ACMD41[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector4~0_combout\,
	ena => \sd_initial_inst|ACMD41[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|ACMD41\(45));

-- Location: LCCOMB_X26_Y14_N18
\sd_initial_inst|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector3~0_combout\ = (\sd_initial_inst|state\(1) & ((\sd_initial_inst|ACMD41\(45)) # (!\sd_initial_inst|ACMD41[42]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|state\(1),
	datab => \sd_initial_inst|ACMD41\(45),
	datad => \sd_initial_inst|ACMD41[42]~0_combout\,
	combout => \sd_initial_inst|Selector3~0_combout\);

-- Location: FF_X26_Y14_N19
\sd_initial_inst|ACMD41[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector3~0_combout\,
	ena => \sd_initial_inst|ACMD41[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|ACMD41\(46));

-- Location: LCCOMB_X26_Y14_N4
\sd_initial_inst|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector2~0_combout\ = (!\sd_initial_inst|ACMD41\(46) & \sd_initial_inst|ACMD41[42]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_initial_inst|ACMD41\(46),
	datad => \sd_initial_inst|ACMD41[42]~0_combout\,
	combout => \sd_initial_inst|Selector2~0_combout\);

-- Location: FF_X26_Y14_N5
\sd_initial_inst|ACMD41[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector2~0_combout\,
	ena => \sd_initial_inst|ACMD41[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|ACMD41\(47));

-- Location: LCCOMB_X26_Y14_N16
\sd_initial_inst|Equal5~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Equal5~13_combout\ = (\sd_initial_inst|ACMD41\(44)) # (((\sd_initial_inst|ACMD41\(47)) # (!\sd_initial_inst|ACMD41\(45))) # (!\sd_initial_inst|ACMD41\(46)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|ACMD41\(44),
	datab => \sd_initial_inst|ACMD41\(46),
	datac => \sd_initial_inst|ACMD41\(47),
	datad => \sd_initial_inst|ACMD41\(45),
	combout => \sd_initial_inst|Equal5~13_combout\);

-- Location: LCCOMB_X19_Y15_N14
\sd_initial_inst|Selector31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector31~0_combout\ = (\sd_initial_inst|ACMD41\(17) & \sd_initial_inst|ACMD41[42]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|ACMD41\(17),
	datad => \sd_initial_inst|ACMD41[42]~0_combout\,
	combout => \sd_initial_inst|Selector31~0_combout\);

-- Location: FF_X19_Y15_N15
\sd_initial_inst|ACMD41[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector31~0_combout\,
	ena => \sd_initial_inst|ACMD41[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|ACMD41\(18));

-- Location: LCCOMB_X19_Y15_N20
\sd_initial_inst|Selector30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector30~0_combout\ = (\sd_initial_inst|ACMD41\(18) & \sd_initial_inst|ACMD41[42]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sd_initial_inst|ACMD41\(18),
	datad => \sd_initial_inst|ACMD41[42]~0_combout\,
	combout => \sd_initial_inst|Selector30~0_combout\);

-- Location: FF_X19_Y15_N21
\sd_initial_inst|ACMD41[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector30~0_combout\,
	ena => \sd_initial_inst|ACMD41[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|ACMD41\(19));

-- Location: LCCOMB_X19_Y15_N8
\sd_initial_inst|Selector29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector29~0_combout\ = (\sd_initial_inst|ACMD41\(19) & \sd_initial_inst|ACMD41[42]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_initial_inst|ACMD41\(19),
	datad => \sd_initial_inst|ACMD41[42]~0_combout\,
	combout => \sd_initial_inst|Selector29~0_combout\);

-- Location: FF_X19_Y15_N9
\sd_initial_inst|ACMD41[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector29~0_combout\,
	ena => \sd_initial_inst|ACMD41[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|ACMD41\(20));

-- Location: LCCOMB_X19_Y15_N22
\sd_initial_inst|Selector28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector28~0_combout\ = (\sd_initial_inst|ACMD41\(20) & \sd_initial_inst|ACMD41[42]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sd_initial_inst|ACMD41\(20),
	datad => \sd_initial_inst|ACMD41[42]~0_combout\,
	combout => \sd_initial_inst|Selector28~0_combout\);

-- Location: FF_X19_Y15_N23
\sd_initial_inst|ACMD41[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector28~0_combout\,
	ena => \sd_initial_inst|ACMD41[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|ACMD41\(21));

-- Location: LCCOMB_X19_Y15_N16
\sd_initial_inst|Selector27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector27~0_combout\ = (\sd_initial_inst|ACMD41\(21) & \sd_initial_inst|ACMD41[42]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sd_initial_inst|ACMD41\(21),
	datad => \sd_initial_inst|ACMD41[42]~0_combout\,
	combout => \sd_initial_inst|Selector27~0_combout\);

-- Location: FF_X19_Y15_N17
\sd_initial_inst|ACMD41[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector27~0_combout\,
	ena => \sd_initial_inst|ACMD41[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|ACMD41\(22));

-- Location: LCCOMB_X19_Y15_N18
\sd_initial_inst|Selector26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector26~0_combout\ = (\sd_initial_inst|ACMD41\(22) & \sd_initial_inst|ACMD41[42]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_initial_inst|ACMD41\(22),
	datad => \sd_initial_inst|ACMD41[42]~0_combout\,
	combout => \sd_initial_inst|Selector26~0_combout\);

-- Location: FF_X19_Y15_N19
\sd_initial_inst|ACMD41[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector26~0_combout\,
	ena => \sd_initial_inst|ACMD41[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|ACMD41\(23));

-- Location: LCCOMB_X19_Y15_N30
\sd_initial_inst|Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector25~0_combout\ = (\sd_initial_inst|ACMD41\(23) & \sd_initial_inst|ACMD41[42]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_initial_inst|ACMD41\(23),
	datad => \sd_initial_inst|ACMD41[42]~0_combout\,
	combout => \sd_initial_inst|Selector25~0_combout\);

-- Location: FF_X19_Y15_N31
\sd_initial_inst|ACMD41[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector25~0_combout\,
	ena => \sd_initial_inst|ACMD41[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|ACMD41\(24));

-- Location: LCCOMB_X19_Y15_N4
\sd_initial_inst|Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector24~0_combout\ = (\sd_initial_inst|ACMD41\(24) & \sd_initial_inst|ACMD41[42]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sd_initial_inst|ACMD41\(24),
	datad => \sd_initial_inst|ACMD41[42]~0_combout\,
	combout => \sd_initial_inst|Selector24~0_combout\);

-- Location: FF_X19_Y15_N5
\sd_initial_inst|ACMD41[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector24~0_combout\,
	ena => \sd_initial_inst|ACMD41[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|ACMD41\(25));

-- Location: LCCOMB_X19_Y15_N26
\sd_initial_inst|Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector23~0_combout\ = (\sd_initial_inst|ACMD41\(25) & \sd_initial_inst|ACMD41[42]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sd_initial_inst|ACMD41\(25),
	datad => \sd_initial_inst|ACMD41[42]~0_combout\,
	combout => \sd_initial_inst|Selector23~0_combout\);

-- Location: FF_X19_Y15_N27
\sd_initial_inst|ACMD41[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector23~0_combout\,
	ena => \sd_initial_inst|ACMD41[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|ACMD41\(26));

-- Location: LCCOMB_X19_Y15_N28
\sd_initial_inst|Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector22~0_combout\ = (\sd_initial_inst|ACMD41\(26) & \sd_initial_inst|ACMD41[42]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sd_initial_inst|ACMD41\(26),
	datad => \sd_initial_inst|ACMD41[42]~0_combout\,
	combout => \sd_initial_inst|Selector22~0_combout\);

-- Location: FF_X19_Y15_N29
\sd_initial_inst|ACMD41[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector22~0_combout\,
	ena => \sd_initial_inst|ACMD41[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|ACMD41\(27));

-- Location: LCCOMB_X19_Y15_N0
\sd_initial_inst|Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector21~0_combout\ = (\sd_initial_inst|ACMD41\(27) & \sd_initial_inst|ACMD41[42]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_initial_inst|ACMD41\(27),
	datad => \sd_initial_inst|ACMD41[42]~0_combout\,
	combout => \sd_initial_inst|Selector21~0_combout\);

-- Location: FF_X19_Y15_N1
\sd_initial_inst|ACMD41[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector21~0_combout\,
	ena => \sd_initial_inst|ACMD41[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|ACMD41\(28));

-- Location: LCCOMB_X25_Y15_N8
\sd_initial_inst|Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector20~0_combout\ = (\sd_initial_inst|ACMD41[42]~0_combout\ & \sd_initial_inst|ACMD41\(28))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_initial_inst|ACMD41[42]~0_combout\,
	datac => \sd_initial_inst|ACMD41\(28),
	combout => \sd_initial_inst|Selector20~0_combout\);

-- Location: FF_X25_Y15_N9
\sd_initial_inst|ACMD41[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector20~0_combout\,
	ena => \sd_initial_inst|ACMD41[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|ACMD41\(29));

-- Location: LCCOMB_X25_Y15_N22
\sd_initial_inst|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector19~0_combout\ = (\sd_initial_inst|ACMD41[42]~0_combout\ & \sd_initial_inst|ACMD41\(29))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_initial_inst|ACMD41[42]~0_combout\,
	datac => \sd_initial_inst|ACMD41\(29),
	combout => \sd_initial_inst|Selector19~0_combout\);

-- Location: FF_X25_Y15_N23
\sd_initial_inst|ACMD41[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector19~0_combout\,
	ena => \sd_initial_inst|ACMD41[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|ACMD41\(30));

-- Location: LCCOMB_X25_Y15_N20
\sd_initial_inst|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector18~0_combout\ = (\sd_initial_inst|ACMD41[42]~0_combout\ & \sd_initial_inst|ACMD41\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_initial_inst|ACMD41[42]~0_combout\,
	datac => \sd_initial_inst|ACMD41\(30),
	combout => \sd_initial_inst|Selector18~0_combout\);

-- Location: FF_X25_Y15_N21
\sd_initial_inst|ACMD41[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector18~0_combout\,
	ena => \sd_initial_inst|ACMD41[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|ACMD41\(31));

-- Location: LCCOMB_X26_Y15_N22
\sd_initial_inst|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector17~0_combout\ = (\sd_initial_inst|ACMD41\(31) & \sd_initial_inst|ACMD41[42]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_initial_inst|ACMD41\(31),
	datad => \sd_initial_inst|ACMD41[42]~0_combout\,
	combout => \sd_initial_inst|Selector17~0_combout\);

-- Location: FF_X26_Y15_N23
\sd_initial_inst|ACMD41[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector17~0_combout\,
	ena => \sd_initial_inst|ACMD41[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|ACMD41\(32));

-- Location: LCCOMB_X26_Y15_N8
\sd_initial_inst|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector16~0_combout\ = (\sd_initial_inst|ACMD41\(32) & \sd_initial_inst|ACMD41[42]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sd_initial_inst|ACMD41\(32),
	datad => \sd_initial_inst|ACMD41[42]~0_combout\,
	combout => \sd_initial_inst|Selector16~0_combout\);

-- Location: FF_X26_Y15_N9
\sd_initial_inst|ACMD41[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector16~0_combout\,
	ena => \sd_initial_inst|ACMD41[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|ACMD41\(33));

-- Location: LCCOMB_X26_Y15_N26
\sd_initial_inst|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector15~0_combout\ = (\sd_initial_inst|ACMD41\(33) & \sd_initial_inst|ACMD41[42]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sd_initial_inst|ACMD41\(33),
	datad => \sd_initial_inst|ACMD41[42]~0_combout\,
	combout => \sd_initial_inst|Selector15~0_combout\);

-- Location: FF_X26_Y15_N27
\sd_initial_inst|ACMD41[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector15~0_combout\,
	ena => \sd_initial_inst|ACMD41[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|ACMD41\(34));

-- Location: LCCOMB_X26_Y15_N20
\sd_initial_inst|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector14~0_combout\ = (\sd_initial_inst|ACMD41\(34) & \sd_initial_inst|ACMD41[42]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sd_initial_inst|ACMD41\(34),
	datad => \sd_initial_inst|ACMD41[42]~0_combout\,
	combout => \sd_initial_inst|Selector14~0_combout\);

-- Location: FF_X26_Y15_N21
\sd_initial_inst|ACMD41[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector14~0_combout\,
	ena => \sd_initial_inst|ACMD41[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|ACMD41\(35));

-- Location: LCCOMB_X26_Y15_N30
\sd_initial_inst|Equal5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Equal5~10_combout\ = (\sd_initial_inst|ACMD41\(34)) # ((\sd_initial_inst|ACMD41\(33)) # ((\sd_initial_inst|ACMD41\(32)) # (\sd_initial_inst|ACMD41\(35))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|ACMD41\(34),
	datab => \sd_initial_inst|ACMD41\(33),
	datac => \sd_initial_inst|ACMD41\(32),
	datad => \sd_initial_inst|ACMD41\(35),
	combout => \sd_initial_inst|Equal5~10_combout\);

-- Location: LCCOMB_X26_Y14_N0
\sd_initial_inst|Equal5~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Equal5~12_combout\ = (\sd_initial_inst|ACMD41\(42)) # (((\sd_initial_inst|ACMD41\(41)) # (!\sd_initial_inst|ACMD41\(43))) # (!\sd_initial_inst|ACMD41\(40)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|ACMD41\(42),
	datab => \sd_initial_inst|ACMD41\(40),
	datac => \sd_initial_inst|ACMD41\(41),
	datad => \sd_initial_inst|ACMD41\(43),
	combout => \sd_initial_inst|Equal5~12_combout\);

-- Location: LCCOMB_X26_Y14_N6
\sd_initial_inst|Equal5~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Equal5~14_combout\ = (\sd_initial_inst|Equal5~11_combout\) # ((\sd_initial_inst|Equal5~13_combout\) # ((\sd_initial_inst|Equal5~10_combout\) # (\sd_initial_inst|Equal5~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|Equal5~11_combout\,
	datab => \sd_initial_inst|Equal5~13_combout\,
	datac => \sd_initial_inst|Equal5~10_combout\,
	datad => \sd_initial_inst|Equal5~12_combout\,
	combout => \sd_initial_inst|Equal5~14_combout\);

-- Location: LCCOMB_X25_Y15_N12
\sd_initial_inst|Equal5~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Equal5~15_combout\ = (\sd_initial_inst|Equal5~9_combout\) # ((\sd_initial_inst|Equal5~14_combout\) # (\sd_initial_inst|Equal5~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|Equal5~9_combout\,
	datac => \sd_initial_inst|Equal5~14_combout\,
	datad => \sd_initial_inst|Equal5~4_combout\,
	combout => \sd_initial_inst|Equal5~15_combout\);

-- Location: LCCOMB_X17_Y15_N4
\sd_initial_inst|rx[20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|rx[20]~feeder_combout\ = \sd_initial_inst|rx\(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sd_initial_inst|rx\(19),
	combout => \sd_initial_inst|rx[20]~feeder_combout\);

-- Location: FF_X17_Y15_N5
\sd_initial_inst|rx[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|rx[20]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|rx\(20));

-- Location: FF_X17_Y15_N11
\sd_initial_inst|rx[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sd_initial_inst|rx\(20),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|rx\(21));

-- Location: LCCOMB_X17_Y15_N8
\sd_initial_inst|rx[22]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|rx[22]~feeder_combout\ = \sd_initial_inst|rx\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sd_initial_inst|rx\(21),
	combout => \sd_initial_inst|rx[22]~feeder_combout\);

-- Location: FF_X17_Y15_N9
\sd_initial_inst|rx[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|rx[22]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|rx\(22));

-- Location: LCCOMB_X18_Y14_N22
\sd_initial_inst|rx[23]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|rx[23]~feeder_combout\ = \sd_initial_inst|rx\(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sd_initial_inst|rx\(22),
	combout => \sd_initial_inst|rx[23]~feeder_combout\);

-- Location: FF_X18_Y14_N23
\sd_initial_inst|rx[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|rx[23]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|rx\(23));

-- Location: FF_X18_Y14_N29
\sd_initial_inst|rx[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sd_initial_inst|rx\(23),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|rx\(24));

-- Location: LCCOMB_X18_Y14_N2
\sd_initial_inst|rx[25]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|rx[25]~feeder_combout\ = \sd_initial_inst|rx\(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sd_initial_inst|rx\(24),
	combout => \sd_initial_inst|rx[25]~feeder_combout\);

-- Location: FF_X18_Y14_N3
\sd_initial_inst|rx[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|rx[25]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|rx\(25));

-- Location: LCCOMB_X18_Y14_N20
\sd_initial_inst|rx[26]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|rx[26]~feeder_combout\ = \sd_initial_inst|rx\(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sd_initial_inst|rx\(25),
	combout => \sd_initial_inst|rx[26]~feeder_combout\);

-- Location: FF_X18_Y14_N21
\sd_initial_inst|rx[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|rx[26]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|rx\(26));

-- Location: LCCOMB_X18_Y14_N18
\sd_initial_inst|rx[27]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|rx[27]~feeder_combout\ = \sd_initial_inst|rx\(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sd_initial_inst|rx\(26),
	combout => \sd_initial_inst|rx[27]~feeder_combout\);

-- Location: FF_X18_Y14_N19
\sd_initial_inst|rx[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|rx[27]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|rx\(27));

-- Location: LCCOMB_X18_Y14_N24
\sd_initial_inst|rx[28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|rx[28]~feeder_combout\ = \sd_initial_inst|rx\(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sd_initial_inst|rx\(27),
	combout => \sd_initial_inst|rx[28]~feeder_combout\);

-- Location: FF_X18_Y14_N25
\sd_initial_inst|rx[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|rx[28]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|rx\(28));

-- Location: LCCOMB_X18_Y14_N10
\sd_initial_inst|rx[29]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|rx[29]~feeder_combout\ = \sd_initial_inst|rx\(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sd_initial_inst|rx\(28),
	combout => \sd_initial_inst|rx[29]~feeder_combout\);

-- Location: FF_X18_Y14_N11
\sd_initial_inst|rx[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|rx[29]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|rx\(29));

-- Location: LCCOMB_X18_Y14_N8
\sd_initial_inst|rx[30]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|rx[30]~feeder_combout\ = \sd_initial_inst|rx\(29)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sd_initial_inst|rx\(29),
	combout => \sd_initial_inst|rx[30]~feeder_combout\);

-- Location: FF_X18_Y14_N9
\sd_initial_inst|rx[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|rx[30]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|rx\(30));

-- Location: FF_X18_Y14_N27
\sd_initial_inst|rx[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sd_initial_inst|rx\(30),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|rx\(31));

-- Location: FF_X18_Y14_N17
\sd_initial_inst|rx[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sd_initial_inst|rx\(31),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|rx\(32));

-- Location: LCCOMB_X18_Y14_N6
\sd_initial_inst|rx[33]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|rx[33]~feeder_combout\ = \sd_initial_inst|rx\(32)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sd_initial_inst|rx\(32),
	combout => \sd_initial_inst|rx[33]~feeder_combout\);

-- Location: FF_X18_Y14_N7
\sd_initial_inst|rx[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|rx[33]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|rx\(33));

-- Location: LCCOMB_X18_Y14_N12
\sd_initial_inst|rx[34]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|rx[34]~feeder_combout\ = \sd_initial_inst|rx\(33)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sd_initial_inst|rx\(33),
	combout => \sd_initial_inst|rx[34]~feeder_combout\);

-- Location: FF_X18_Y14_N13
\sd_initial_inst|rx[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|rx[34]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|rx\(34));

-- Location: LCCOMB_X18_Y14_N30
\sd_initial_inst|rx[35]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|rx[35]~feeder_combout\ = \sd_initial_inst|rx\(34)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sd_initial_inst|rx\(34),
	combout => \sd_initial_inst|rx[35]~feeder_combout\);

-- Location: FF_X18_Y14_N31
\sd_initial_inst|rx[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|rx[35]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|rx\(35));

-- Location: FF_X18_Y14_N5
\sd_initial_inst|rx[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sd_initial_inst|rx\(35),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|rx\(36));

-- Location: FF_X18_Y14_N15
\sd_initial_inst|rx[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sd_initial_inst|rx\(36),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|rx\(37));

-- Location: FF_X18_Y14_N1
\sd_initial_inst|rx[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sd_initial_inst|rx\(37),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|rx\(38));

-- Location: LCCOMB_X21_Y15_N26
\sd_initial_inst|rx[39]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|rx[39]~feeder_combout\ = \sd_initial_inst|rx\(38)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sd_initial_inst|rx\(38),
	combout => \sd_initial_inst|rx[39]~feeder_combout\);

-- Location: FF_X21_Y15_N27
\sd_initial_inst|rx[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|rx[39]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|rx\(39));

-- Location: LCCOMB_X24_Y15_N0
\sd_initial_inst|rx[40]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|rx[40]~feeder_combout\ = \sd_initial_inst|rx\(39)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sd_initial_inst|rx\(39),
	combout => \sd_initial_inst|rx[40]~feeder_combout\);

-- Location: FF_X24_Y15_N1
\sd_initial_inst|rx[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|rx[40]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|rx\(40));

-- Location: LCCOMB_X24_Y15_N30
\sd_initial_inst|rx[41]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|rx[41]~feeder_combout\ = \sd_initial_inst|rx\(40)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sd_initial_inst|rx\(40),
	combout => \sd_initial_inst|rx[41]~feeder_combout\);

-- Location: FF_X24_Y15_N31
\sd_initial_inst|rx[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|rx[41]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|rx\(41));

-- Location: FF_X24_Y15_N11
\sd_initial_inst|rx[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sd_initial_inst|rx\(41),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|rx\(42));

-- Location: LCCOMB_X24_Y15_N2
\sd_initial_inst|rx[43]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|rx[43]~feeder_combout\ = \sd_initial_inst|rx\(42)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sd_initial_inst|rx\(42),
	combout => \sd_initial_inst|rx[43]~feeder_combout\);

-- Location: FF_X24_Y15_N3
\sd_initial_inst|rx[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|rx[43]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|rx\(43));

-- Location: LCCOMB_X24_Y15_N20
\sd_initial_inst|rx[44]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|rx[44]~feeder_combout\ = \sd_initial_inst|rx\(43)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sd_initial_inst|rx\(43),
	combout => \sd_initial_inst|rx[44]~feeder_combout\);

-- Location: FF_X24_Y15_N21
\sd_initial_inst|rx[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|rx[44]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|rx\(44));

-- Location: LCCOMB_X24_Y15_N12
\sd_initial_inst|rx[45]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|rx[45]~feeder_combout\ = \sd_initial_inst|rx\(44)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sd_initial_inst|rx\(44),
	combout => \sd_initial_inst|rx[45]~feeder_combout\);

-- Location: FF_X24_Y15_N13
\sd_initial_inst|rx[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|rx[45]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|rx\(45));

-- Location: LCCOMB_X24_Y15_N8
\sd_initial_inst|rx[46]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|rx[46]~feeder_combout\ = \sd_initial_inst|rx\(45)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sd_initial_inst|rx\(45),
	combout => \sd_initial_inst|rx[46]~feeder_combout\);

-- Location: FF_X24_Y15_N9
\sd_initial_inst|rx[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|rx[46]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|rx\(46));

-- Location: FF_X24_Y15_N17
\sd_initial_inst|rx[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sd_initial_inst|rx\(46),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|rx\(47));

-- Location: LCCOMB_X24_Y15_N16
\sd_initial_inst|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Equal1~1_combout\ = (!\sd_initial_inst|rx\(46) & (!\sd_initial_inst|rx\(47) & !\sd_initial_inst|rx\(45)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_initial_inst|rx\(46),
	datac => \sd_initial_inst|rx\(47),
	datad => \sd_initial_inst|rx\(45),
	combout => \sd_initial_inst|Equal1~1_combout\);

-- Location: LCCOMB_X24_Y15_N28
\sd_initial_inst|always3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|always3~1_combout\ = (\sd_initial_inst|Equal1~0_combout\ & (!\sd_initial_inst|rx\(40) & (\sd_initial_inst|rx_valid~q\ & \sd_initial_inst|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|Equal1~0_combout\,
	datab => \sd_initial_inst|rx\(40),
	datac => \sd_initial_inst|rx_valid~q\,
	datad => \sd_initial_inst|Equal1~1_combout\,
	combout => \sd_initial_inst|always3~1_combout\);

-- Location: LCCOMB_X24_Y15_N24
\sd_initial_inst|state~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|state~6_combout\ = (\sd_initial_inst|Equal5~15_combout\) # ((\sd_initial_inst|LessThan4~1_combout\ & (\sd_initial_inst|state\(1) & !\sd_initial_inst|always3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|LessThan4~1_combout\,
	datab => \sd_initial_inst|Equal5~15_combout\,
	datac => \sd_initial_inst|state\(1),
	datad => \sd_initial_inst|always3~1_combout\,
	combout => \sd_initial_inst|state~6_combout\);

-- Location: LCCOMB_X22_Y15_N6
\sd_initial_inst|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Mux3~1_combout\ = (\sd_initial_inst|Mux3~0_combout\ & (((\sd_initial_inst|state~6_combout\) # (!\sd_initial_inst|state\(2))))) # (!\sd_initial_inst|Mux3~0_combout\ & (!\sd_initial_inst|always3~3_combout\ & (\sd_initial_inst|state\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|always3~3_combout\,
	datab => \sd_initial_inst|Mux3~0_combout\,
	datac => \sd_initial_inst|state\(2),
	datad => \sd_initial_inst|state~6_combout\,
	combout => \sd_initial_inst|Mux3~1_combout\);

-- Location: LCCOMB_X21_Y15_N8
\sd_initial_inst|state~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|state~7_combout\ = (\sd_initial_inst|state~4_combout\) # ((\sd_initial_inst|state~1_combout\) # ((\sd_initial_inst|state~5_combout\ & \sd_initial_inst|Mux3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|state~5_combout\,
	datab => \sd_initial_inst|state~4_combout\,
	datac => \sd_initial_inst|state~1_combout\,
	datad => \sd_initial_inst|Mux3~1_combout\,
	combout => \sd_initial_inst|state~7_combout\);

-- Location: FF_X21_Y15_N9
\sd_initial_inst|state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|state~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|state\(1));

-- Location: LCCOMB_X21_Y15_N18
\sd_initial_inst|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector1~0_combout\ = (!\sd_initial_inst|state\(1) & (!\sd_initial_inst|state\(0) & !\sd_initial_inst|state\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_initial_inst|state\(1),
	datac => \sd_initial_inst|state\(0),
	datad => \sd_initial_inst|state\(2),
	combout => \sd_initial_inst|Selector1~0_combout\);

-- Location: LCCOMB_X21_Y15_N6
\sd_initial_inst|Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Mux0~5_combout\ = (\sd_initial_inst|state\(3) & (((\sd_initial_inst|Selector1~0_combout\)))) # (!\sd_initial_inst|state\(3) & (\sd_initial_inst|Mux0~4_combout\ & (\sd_initial_inst|state\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|Mux0~4_combout\,
	datab => \sd_initial_inst|state\(2),
	datac => \sd_initial_inst|state\(3),
	datad => \sd_initial_inst|Selector1~0_combout\,
	combout => \sd_initial_inst|Mux0~5_combout\);

-- Location: FF_X21_Y15_N7
\sd_initial_inst|state[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Mux0~5_combout\,
	sclr => \sd_initial_inst|ALT_INV_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|state\(3));

-- Location: LCCOMB_X21_Y16_N0
\sd_initial_inst|cnt[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|cnt[0]~11_combout\ = \sd_initial_inst|cnt\(0) $ (VCC)
-- \sd_initial_inst|cnt[0]~12\ = CARRY(\sd_initial_inst|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_initial_inst|cnt\(0),
	datad => VCC,
	combout => \sd_initial_inst|cnt[0]~11_combout\,
	cout => \sd_initial_inst|cnt[0]~12\);

-- Location: LCCOMB_X21_Y16_N16
\sd_initial_inst|cnt[8]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|cnt[8]~31_combout\ = (\sd_initial_inst|cnt\(8) & (\sd_initial_inst|cnt[7]~30\ $ (GND))) # (!\sd_initial_inst|cnt\(8) & (!\sd_initial_inst|cnt[7]~30\ & VCC))
-- \sd_initial_inst|cnt[8]~32\ = CARRY((\sd_initial_inst|cnt\(8) & !\sd_initial_inst|cnt[7]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sd_initial_inst|cnt\(8),
	datad => VCC,
	cin => \sd_initial_inst|cnt[7]~30\,
	combout => \sd_initial_inst|cnt[8]~31_combout\,
	cout => \sd_initial_inst|cnt[8]~32\);

-- Location: LCCOMB_X21_Y16_N18
\sd_initial_inst|cnt[9]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|cnt[9]~33_combout\ = \sd_initial_inst|cnt\(9) $ (\sd_initial_inst|cnt[8]~32\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sd_initial_inst|cnt\(9),
	cin => \sd_initial_inst|cnt[8]~32\,
	combout => \sd_initial_inst|cnt[9]~33_combout\);

-- Location: LCCOMB_X24_Y15_N4
\sd_initial_inst|cnt[9]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|cnt[9]~14_combout\ = (\sd_initial_inst|state\(0) & (((\sd_initial_inst|Equal5~15_combout\) # (\sd_initial_inst|always3~1_combout\)))) # (!\sd_initial_inst|state\(0) & (\sd_initial_inst|cnt[9]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|cnt[9]~10_combout\,
	datab => \sd_initial_inst|state\(0),
	datac => \sd_initial_inst|Equal5~15_combout\,
	datad => \sd_initial_inst|always3~1_combout\,
	combout => \sd_initial_inst|cnt[9]~14_combout\);

-- Location: LCCOMB_X23_Y15_N8
\sd_initial_inst|cnt[9]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|cnt[9]~15_combout\ = (!\sd_initial_inst|state\(3) & (\sd_initial_inst|state\(0) $ (((\sd_initial_inst|state\(2) & \sd_initial_inst|cnt[9]~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|state\(2),
	datab => \sd_initial_inst|state\(3),
	datac => \sd_initial_inst|state\(0),
	datad => \sd_initial_inst|cnt[9]~14_combout\,
	combout => \sd_initial_inst|cnt[9]~15_combout\);

-- Location: LCCOMB_X21_Y15_N2
\sd_initial_inst|cnt[9]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|cnt[9]~16_combout\ = (\sd_initial_inst|reset~q\ & ((\sd_initial_inst|state\(1) & ((\sd_initial_inst|cnt[9]~15_combout\))) # (!\sd_initial_inst|state\(1) & (!\sd_initial_inst|state\(2) & !\sd_initial_inst|cnt[9]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|reset~q\,
	datab => \sd_initial_inst|state\(2),
	datac => \sd_initial_inst|state\(1),
	datad => \sd_initial_inst|cnt[9]~15_combout\,
	combout => \sd_initial_inst|cnt[9]~16_combout\);

-- Location: FF_X21_Y16_N19
\sd_initial_inst|cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|cnt[9]~33_combout\,
	sclr => \sd_initial_inst|cnt[0]~13_combout\,
	ena => \sd_initial_inst|cnt[9]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|cnt\(9));

-- Location: LCCOMB_X21_Y16_N26
\sd_initial_inst|LessThan4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|LessThan4~1_combout\ = (\sd_initial_inst|LessThan3~1_combout\ & (!\sd_initial_inst|cnt\(8) & (!\sd_initial_inst|cnt\(7) & !\sd_initial_inst|cnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|LessThan3~1_combout\,
	datab => \sd_initial_inst|cnt\(8),
	datac => \sd_initial_inst|cnt\(7),
	datad => \sd_initial_inst|cnt\(9),
	combout => \sd_initial_inst|LessThan4~1_combout\);

-- Location: LCCOMB_X21_Y15_N4
\sd_initial_inst|cnt[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|cnt[0]~13_combout\ = (\sd_initial_inst|state\(2) & (((!\sd_initial_inst|LessThan4~1_combout\)))) # (!\sd_initial_inst|state\(2) & (((!\sd_initial_inst|state\(1))) # (!\sd_initial_inst|LessThan3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|LessThan3~2_combout\,
	datab => \sd_initial_inst|LessThan4~1_combout\,
	datac => \sd_initial_inst|state\(1),
	datad => \sd_initial_inst|state\(2),
	combout => \sd_initial_inst|cnt[0]~13_combout\);

-- Location: FF_X21_Y16_N1
\sd_initial_inst|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|cnt[0]~11_combout\,
	sclr => \sd_initial_inst|cnt[0]~13_combout\,
	ena => \sd_initial_inst|cnt[9]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|cnt\(0));

-- Location: LCCOMB_X21_Y16_N2
\sd_initial_inst|cnt[1]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|cnt[1]~17_combout\ = (\sd_initial_inst|cnt\(1) & (!\sd_initial_inst|cnt[0]~12\)) # (!\sd_initial_inst|cnt\(1) & ((\sd_initial_inst|cnt[0]~12\) # (GND)))
-- \sd_initial_inst|cnt[1]~18\ = CARRY((!\sd_initial_inst|cnt[0]~12\) # (!\sd_initial_inst|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sd_initial_inst|cnt\(1),
	datad => VCC,
	cin => \sd_initial_inst|cnt[0]~12\,
	combout => \sd_initial_inst|cnt[1]~17_combout\,
	cout => \sd_initial_inst|cnt[1]~18\);

-- Location: FF_X21_Y16_N3
\sd_initial_inst|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|cnt[1]~17_combout\,
	sclr => \sd_initial_inst|cnt[0]~13_combout\,
	ena => \sd_initial_inst|cnt[9]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|cnt\(1));

-- Location: LCCOMB_X21_Y16_N4
\sd_initial_inst|cnt[2]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|cnt[2]~19_combout\ = (\sd_initial_inst|cnt\(2) & (\sd_initial_inst|cnt[1]~18\ $ (GND))) # (!\sd_initial_inst|cnt\(2) & (!\sd_initial_inst|cnt[1]~18\ & VCC))
-- \sd_initial_inst|cnt[2]~20\ = CARRY((\sd_initial_inst|cnt\(2) & !\sd_initial_inst|cnt[1]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sd_initial_inst|cnt\(2),
	datad => VCC,
	cin => \sd_initial_inst|cnt[1]~18\,
	combout => \sd_initial_inst|cnt[2]~19_combout\,
	cout => \sd_initial_inst|cnt[2]~20\);

-- Location: FF_X21_Y16_N5
\sd_initial_inst|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|cnt[2]~19_combout\,
	sclr => \sd_initial_inst|cnt[0]~13_combout\,
	ena => \sd_initial_inst|cnt[9]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|cnt\(2));

-- Location: LCCOMB_X21_Y16_N8
\sd_initial_inst|cnt[4]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|cnt[4]~23_combout\ = (\sd_initial_inst|cnt\(4) & (\sd_initial_inst|cnt[3]~22\ $ (GND))) # (!\sd_initial_inst|cnt\(4) & (!\sd_initial_inst|cnt[3]~22\ & VCC))
-- \sd_initial_inst|cnt[4]~24\ = CARRY((\sd_initial_inst|cnt\(4) & !\sd_initial_inst|cnt[3]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sd_initial_inst|cnt\(4),
	datad => VCC,
	cin => \sd_initial_inst|cnt[3]~22\,
	combout => \sd_initial_inst|cnt[4]~23_combout\,
	cout => \sd_initial_inst|cnt[4]~24\);

-- Location: FF_X21_Y16_N9
\sd_initial_inst|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|cnt[4]~23_combout\,
	sclr => \sd_initial_inst|cnt[0]~13_combout\,
	ena => \sd_initial_inst|cnt[9]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|cnt\(4));

-- Location: LCCOMB_X21_Y16_N14
\sd_initial_inst|cnt[7]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|cnt[7]~29_combout\ = (\sd_initial_inst|cnt\(7) & (!\sd_initial_inst|cnt[6]~28\)) # (!\sd_initial_inst|cnt\(7) & ((\sd_initial_inst|cnt[6]~28\) # (GND)))
-- \sd_initial_inst|cnt[7]~30\ = CARRY((!\sd_initial_inst|cnt[6]~28\) # (!\sd_initial_inst|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sd_initial_inst|cnt\(7),
	datad => VCC,
	cin => \sd_initial_inst|cnt[6]~28\,
	combout => \sd_initial_inst|cnt[7]~29_combout\,
	cout => \sd_initial_inst|cnt[7]~30\);

-- Location: FF_X21_Y16_N15
\sd_initial_inst|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|cnt[7]~29_combout\,
	sclr => \sd_initial_inst|cnt[0]~13_combout\,
	ena => \sd_initial_inst|cnt[9]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|cnt\(7));

-- Location: FF_X21_Y16_N17
\sd_initial_inst|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|cnt[8]~31_combout\,
	sclr => \sd_initial_inst|cnt[0]~13_combout\,
	ena => \sd_initial_inst|cnt[9]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|cnt\(8));

-- Location: LCCOMB_X21_Y16_N28
\sd_initial_inst|LessThan3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|LessThan3~2_combout\ = (\sd_initial_inst|LessThan3~1_combout\) # (((!\sd_initial_inst|cnt\(9)) # (!\sd_initial_inst|cnt\(7))) # (!\sd_initial_inst|cnt\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|LessThan3~1_combout\,
	datab => \sd_initial_inst|cnt\(8),
	datac => \sd_initial_inst|cnt\(7),
	datad => \sd_initial_inst|cnt\(9),
	combout => \sd_initial_inst|LessThan3~2_combout\);

-- Location: LCCOMB_X21_Y16_N20
\sd_initial_inst|LessThan4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|LessThan4~0_combout\ = (!\sd_initial_inst|cnt\(8) & (!\sd_initial_inst|cnt\(7) & !\sd_initial_inst|cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_initial_inst|cnt\(8),
	datac => \sd_initial_inst|cnt\(7),
	datad => \sd_initial_inst|cnt\(9),
	combout => \sd_initial_inst|LessThan4~0_combout\);

-- Location: LCCOMB_X24_Y15_N26
\sd_initial_inst|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Mux0~2_combout\ = (!\sd_initial_inst|Equal5~15_combout\ & (((\sd_initial_inst|always3~1_combout\) # (!\sd_initial_inst|LessThan4~0_combout\)) # (!\sd_initial_inst|LessThan3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|LessThan3~1_combout\,
	datab => \sd_initial_inst|Equal5~15_combout\,
	datac => \sd_initial_inst|LessThan4~0_combout\,
	datad => \sd_initial_inst|always3~1_combout\,
	combout => \sd_initial_inst|Mux0~2_combout\);

-- Location: LCCOMB_X23_Y15_N14
\sd_initial_inst|CMD8[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|CMD8[0]~0_combout\ = (\sd_initial_inst|state\(0) & \sd_initial_inst|state\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sd_initial_inst|state\(0),
	datad => \sd_initial_inst|state\(1),
	combout => \sd_initial_inst|CMD8[0]~0_combout\);

-- Location: LCCOMB_X24_Y15_N18
\sd_initial_inst|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Mux1~0_combout\ = (\sd_initial_inst|CMD8[0]~0_combout\ & ((\sd_initial_inst|state\(2) & ((!\sd_initial_inst|Mux0~2_combout\))) # (!\sd_initial_inst|state\(2) & (!\sd_initial_inst|LessThan3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|state\(2),
	datab => \sd_initial_inst|LessThan3~2_combout\,
	datac => \sd_initial_inst|Mux0~2_combout\,
	datad => \sd_initial_inst|CMD8[0]~0_combout\,
	combout => \sd_initial_inst|Mux1~0_combout\);

-- Location: LCCOMB_X23_Y15_N20
\sd_initial_inst|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Mux1~3_combout\ = (!\sd_initial_inst|state\(3) & ((\sd_initial_inst|Mux1~0_combout\) # ((\sd_initial_inst|Mux1~2_combout\ & \sd_initial_inst|state\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|Mux1~2_combout\,
	datab => \sd_initial_inst|state\(3),
	datac => \sd_initial_inst|state\(2),
	datad => \sd_initial_inst|Mux1~0_combout\,
	combout => \sd_initial_inst|Mux1~3_combout\);

-- Location: FF_X23_Y15_N21
\sd_initial_inst|state[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Mux1~3_combout\,
	sclr => \sd_initial_inst|ALT_INV_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|state\(2));

-- Location: LCCOMB_X26_Y16_N28
\sd_initial_inst|Selector120~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector120~0_combout\ = (\sd_initial_inst|CMD8\(24) & \sd_initial_inst|state\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|CMD8\(24),
	datad => \sd_initial_inst|state\(2),
	combout => \sd_initial_inst|Selector120~0_combout\);

-- Location: LCCOMB_X23_Y15_N2
\sd_initial_inst|CMD8[47]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|CMD8[47]~1_combout\ = ((!\sd_initial_inst|state\(2) & ((\sd_initial_inst|LessThan3~2_combout\) # (!\sd_initial_inst|CMD8[0]~0_combout\)))) # (!\sd_initial_inst|CMD0[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|state\(2),
	datab => \sd_initial_inst|LessThan3~2_combout\,
	datac => \sd_initial_inst|CMD8[0]~0_combout\,
	datad => \sd_initial_inst|CMD0[0]~0_combout\,
	combout => \sd_initial_inst|CMD8[47]~1_combout\);

-- Location: LCCOMB_X23_Y16_N2
\sd_initial_inst|CMD8[47]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|CMD8[47]~3_combout\ = (!\sd_initial_inst|CMD8[47]~1_combout\ & (((\sd_initial_inst|CMD8[47]~2_combout\ & !\sd_initial_inst|Equal2~15_combout\)) # (!\sd_initial_inst|state\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|CMD8[47]~2_combout\,
	datab => \sd_initial_inst|CMD8[47]~1_combout\,
	datac => \sd_initial_inst|state\(2),
	datad => \sd_initial_inst|Equal2~15_combout\,
	combout => \sd_initial_inst|CMD8[47]~3_combout\);

-- Location: FF_X26_Y16_N29
\sd_initial_inst|CMD8[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector120~0_combout\,
	ena => \sd_initial_inst|CMD8[47]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD8\(25));

-- Location: LCCOMB_X26_Y16_N14
\sd_initial_inst|Selector119~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector119~0_combout\ = (\sd_initial_inst|CMD8\(25) & \sd_initial_inst|state\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_initial_inst|CMD8\(25),
	datad => \sd_initial_inst|state\(2),
	combout => \sd_initial_inst|Selector119~0_combout\);

-- Location: FF_X26_Y16_N15
\sd_initial_inst|CMD8[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector119~0_combout\,
	ena => \sd_initial_inst|CMD8[47]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD8\(26));

-- Location: LCCOMB_X26_Y16_N8
\sd_initial_inst|Selector118~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector118~0_combout\ = (\sd_initial_inst|CMD8\(26) & \sd_initial_inst|state\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sd_initial_inst|CMD8\(26),
	datad => \sd_initial_inst|state\(2),
	combout => \sd_initial_inst|Selector118~0_combout\);

-- Location: FF_X26_Y16_N9
\sd_initial_inst|CMD8[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector118~0_combout\,
	ena => \sd_initial_inst|CMD8[47]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD8\(27));

-- Location: LCCOMB_X26_Y16_N16
\sd_initial_inst|Selector117~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector117~0_combout\ = (\sd_initial_inst|CMD8\(27) & \sd_initial_inst|state\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sd_initial_inst|CMD8\(27),
	datad => \sd_initial_inst|state\(2),
	combout => \sd_initial_inst|Selector117~0_combout\);

-- Location: FF_X26_Y16_N17
\sd_initial_inst|CMD8[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector117~0_combout\,
	ena => \sd_initial_inst|CMD8[47]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD8\(28));

-- Location: LCCOMB_X26_Y16_N22
\sd_initial_inst|Selector116~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector116~0_combout\ = (\sd_initial_inst|CMD8\(28) & \sd_initial_inst|state\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_initial_inst|CMD8\(28),
	datad => \sd_initial_inst|state\(2),
	combout => \sd_initial_inst|Selector116~0_combout\);

-- Location: FF_X26_Y16_N23
\sd_initial_inst|CMD8[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector116~0_combout\,
	ena => \sd_initial_inst|CMD8[47]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD8\(29));

-- Location: LCCOMB_X26_Y16_N0
\sd_initial_inst|Selector115~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector115~0_combout\ = (\sd_initial_inst|CMD8\(29) & \sd_initial_inst|state\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sd_initial_inst|CMD8\(29),
	datad => \sd_initial_inst|state\(2),
	combout => \sd_initial_inst|Selector115~0_combout\);

-- Location: FF_X26_Y16_N1
\sd_initial_inst|CMD8[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector115~0_combout\,
	ena => \sd_initial_inst|CMD8[47]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD8\(30));

-- Location: LCCOMB_X26_Y16_N18
\sd_initial_inst|Selector114~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector114~0_combout\ = (\sd_initial_inst|CMD8\(30) & \sd_initial_inst|state\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_initial_inst|CMD8\(30),
	datad => \sd_initial_inst|state\(2),
	combout => \sd_initial_inst|Selector114~0_combout\);

-- Location: FF_X26_Y16_N19
\sd_initial_inst|CMD8[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector114~0_combout\,
	ena => \sd_initial_inst|CMD8[47]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD8\(31));

-- Location: LCCOMB_X26_Y16_N20
\sd_initial_inst|Equal2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Equal2~8_combout\ = (!\sd_initial_inst|CMD8\(29) & (!\sd_initial_inst|CMD8\(28) & (!\sd_initial_inst|CMD8\(31) & !\sd_initial_inst|CMD8\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|CMD8\(29),
	datab => \sd_initial_inst|CMD8\(28),
	datac => \sd_initial_inst|CMD8\(31),
	datad => \sd_initial_inst|CMD8\(30),
	combout => \sd_initial_inst|Equal2~8_combout\);

-- Location: LCCOMB_X23_Y16_N28
\sd_initial_inst|Selector131~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector131~0_combout\ = (!\sd_initial_inst|CMD8\(13) & \sd_initial_inst|state\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|CMD8\(13),
	datac => \sd_initial_inst|state\(2),
	combout => \sd_initial_inst|Selector131~0_combout\);

-- Location: FF_X23_Y16_N29
\sd_initial_inst|CMD8[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector131~0_combout\,
	ena => \sd_initial_inst|CMD8[47]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD8\(14));

-- Location: LCCOMB_X24_Y16_N4
\sd_initial_inst|Selector130~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector130~0_combout\ = (\sd_initial_inst|state\(2) & !\sd_initial_inst|CMD8\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sd_initial_inst|state\(2),
	datad => \sd_initial_inst|CMD8\(14),
	combout => \sd_initial_inst|Selector130~0_combout\);

-- Location: FF_X24_Y16_N5
\sd_initial_inst|CMD8[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector130~0_combout\,
	ena => \sd_initial_inst|CMD8[47]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD8\(15));

-- Location: LCCOMB_X24_Y16_N12
\sd_initial_inst|Selector129~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector129~0_combout\ = (\sd_initial_inst|state\(2) & \sd_initial_inst|CMD8\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_initial_inst|state\(2),
	datac => \sd_initial_inst|CMD8\(15),
	combout => \sd_initial_inst|Selector129~0_combout\);

-- Location: FF_X24_Y16_N13
\sd_initial_inst|CMD8[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector129~0_combout\,
	ena => \sd_initial_inst|CMD8[47]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD8\(16));

-- Location: LCCOMB_X25_Y16_N0
\sd_initial_inst|Selector128~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector128~0_combout\ = (\sd_initial_inst|state\(2) & !\sd_initial_inst|CMD8\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|state\(2),
	datad => \sd_initial_inst|CMD8\(16),
	combout => \sd_initial_inst|Selector128~0_combout\);

-- Location: FF_X25_Y16_N1
\sd_initial_inst|CMD8[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector128~0_combout\,
	ena => \sd_initial_inst|CMD8[47]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD8\(17));

-- Location: LCCOMB_X25_Y16_N22
\sd_initial_inst|Selector127~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector127~0_combout\ = (\sd_initial_inst|state\(2) & \sd_initial_inst|CMD8\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|state\(2),
	datad => \sd_initial_inst|CMD8\(17),
	combout => \sd_initial_inst|Selector127~0_combout\);

-- Location: FF_X25_Y16_N23
\sd_initial_inst|CMD8[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector127~0_combout\,
	ena => \sd_initial_inst|CMD8[47]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD8\(18));

-- Location: LCCOMB_X25_Y16_N24
\sd_initial_inst|Selector126~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector126~0_combout\ = (\sd_initial_inst|state\(2) & \sd_initial_inst|CMD8\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|state\(2),
	datac => \sd_initial_inst|CMD8\(18),
	combout => \sd_initial_inst|Selector126~0_combout\);

-- Location: FF_X25_Y16_N25
\sd_initial_inst|CMD8[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector126~0_combout\,
	ena => \sd_initial_inst|CMD8[47]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD8\(19));

-- Location: LCCOMB_X25_Y16_N6
\sd_initial_inst|Equal2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Equal2~5_combout\ = (\sd_initial_inst|CMD8\(16) & (!\sd_initial_inst|CMD8\(19) & (!\sd_initial_inst|CMD8\(18) & !\sd_initial_inst|CMD8\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|CMD8\(16),
	datab => \sd_initial_inst|CMD8\(19),
	datac => \sd_initial_inst|CMD8\(18),
	datad => \sd_initial_inst|CMD8\(17),
	combout => \sd_initial_inst|Equal2~5_combout\);

-- Location: LCCOMB_X26_Y16_N2
\sd_initial_inst|Equal2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Equal2~7_combout\ = (!\sd_initial_inst|CMD8\(24) & (!\sd_initial_inst|CMD8\(27) & (!\sd_initial_inst|CMD8\(26) & !\sd_initial_inst|CMD8\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|CMD8\(24),
	datab => \sd_initial_inst|CMD8\(27),
	datac => \sd_initial_inst|CMD8\(26),
	datad => \sd_initial_inst|CMD8\(25),
	combout => \sd_initial_inst|Equal2~7_combout\);

-- Location: LCCOMB_X26_Y16_N6
\sd_initial_inst|Equal2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Equal2~9_combout\ = (\sd_initial_inst|Equal2~6_combout\ & (\sd_initial_inst|Equal2~8_combout\ & (\sd_initial_inst|Equal2~5_combout\ & \sd_initial_inst|Equal2~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|Equal2~6_combout\,
	datab => \sd_initial_inst|Equal2~8_combout\,
	datac => \sd_initial_inst|Equal2~5_combout\,
	datad => \sd_initial_inst|Equal2~7_combout\,
	combout => \sd_initial_inst|Equal2~9_combout\);

-- Location: LCCOMB_X23_Y16_N24
\sd_initial_inst|Selector142~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector142~0_combout\ = (!\sd_initial_inst|CMD8\(2) & \sd_initial_inst|state\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|CMD8\(2),
	datac => \sd_initial_inst|state\(2),
	combout => \sd_initial_inst|Selector142~0_combout\);

-- Location: FF_X23_Y16_N25
\sd_initial_inst|CMD8[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector142~0_combout\,
	ena => \sd_initial_inst|CMD8[47]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD8\(3));

-- Location: LCCOMB_X22_Y16_N24
\sd_initial_inst|Selector141~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector141~0_combout\ = (\sd_initial_inst|state\(2) & \sd_initial_inst|CMD8\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_initial_inst|state\(2),
	datad => \sd_initial_inst|CMD8\(3),
	combout => \sd_initial_inst|Selector141~0_combout\);

-- Location: FF_X22_Y16_N25
\sd_initial_inst|CMD8[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector141~0_combout\,
	ena => \sd_initial_inst|CMD8[47]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD8\(4));

-- Location: LCCOMB_X22_Y16_N26
\sd_initial_inst|Selector140~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector140~0_combout\ = (\sd_initial_inst|CMD8\(4) & \sd_initial_inst|state\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_initial_inst|CMD8\(4),
	datad => \sd_initial_inst|state\(2),
	combout => \sd_initial_inst|Selector140~0_combout\);

-- Location: FF_X22_Y16_N27
\sd_initial_inst|CMD8[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector140~0_combout\,
	ena => \sd_initial_inst|CMD8[47]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD8\(5));

-- Location: LCCOMB_X22_Y16_N20
\sd_initial_inst|Selector139~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector139~0_combout\ = (\sd_initial_inst|CMD8\(5) & \sd_initial_inst|state\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sd_initial_inst|CMD8\(5),
	datad => \sd_initial_inst|state\(2),
	combout => \sd_initial_inst|Selector139~0_combout\);

-- Location: FF_X22_Y16_N21
\sd_initial_inst|CMD8[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector139~0_combout\,
	ena => \sd_initial_inst|CMD8[47]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD8\(6));

-- Location: LCCOMB_X22_Y16_N14
\sd_initial_inst|Selector138~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector138~0_combout\ = (!\sd_initial_inst|CMD8\(6) & \sd_initial_inst|state\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_initial_inst|CMD8\(6),
	datad => \sd_initial_inst|state\(2),
	combout => \sd_initial_inst|Selector138~0_combout\);

-- Location: FF_X22_Y16_N15
\sd_initial_inst|CMD8[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector138~0_combout\,
	ena => \sd_initial_inst|CMD8[47]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD8\(7));

-- Location: LCCOMB_X22_Y16_N18
\sd_initial_inst|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Equal2~1_combout\ = (!\sd_initial_inst|CMD8\(5) & (!\sd_initial_inst|CMD8\(6) & (\sd_initial_inst|CMD8\(7) & !\sd_initial_inst|CMD8\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|CMD8\(5),
	datab => \sd_initial_inst|CMD8\(6),
	datac => \sd_initial_inst|CMD8\(7),
	datad => \sd_initial_inst|CMD8\(4),
	combout => \sd_initial_inst|Equal2~1_combout\);

-- Location: LCCOMB_X23_Y16_N8
\sd_initial_inst|Selector137~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector137~0_combout\ = (!\sd_initial_inst|CMD8\(7) & \sd_initial_inst|state\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|CMD8\(7),
	datac => \sd_initial_inst|state\(2),
	combout => \sd_initial_inst|Selector137~0_combout\);

-- Location: FF_X23_Y16_N9
\sd_initial_inst|CMD8[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector137~0_combout\,
	ena => \sd_initial_inst|CMD8[47]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD8\(8));

-- Location: LCCOMB_X24_Y16_N24
\sd_initial_inst|Selector136~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector136~0_combout\ = (\sd_initial_inst|state\(2) & !\sd_initial_inst|CMD8\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sd_initial_inst|state\(2),
	datad => \sd_initial_inst|CMD8\(8),
	combout => \sd_initial_inst|Selector136~0_combout\);

-- Location: FF_X24_Y16_N25
\sd_initial_inst|CMD8[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector136~0_combout\,
	ena => \sd_initial_inst|CMD8[47]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD8\(9));

-- Location: LCCOMB_X24_Y16_N20
\sd_initial_inst|Selector135~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector135~0_combout\ = (\sd_initial_inst|state\(2) & !\sd_initial_inst|CMD8\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sd_initial_inst|state\(2),
	datad => \sd_initial_inst|CMD8\(9),
	combout => \sd_initial_inst|Selector135~0_combout\);

-- Location: FF_X24_Y16_N21
\sd_initial_inst|CMD8[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector135~0_combout\,
	ena => \sd_initial_inst|CMD8[47]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD8\(10));

-- Location: LCCOMB_X24_Y16_N10
\sd_initial_inst|Selector134~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector134~0_combout\ = (!\sd_initial_inst|CMD8\(10) & \sd_initial_inst|state\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_initial_inst|CMD8\(10),
	datac => \sd_initial_inst|state\(2),
	combout => \sd_initial_inst|Selector134~0_combout\);

-- Location: FF_X24_Y16_N11
\sd_initial_inst|CMD8[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector134~0_combout\,
	ena => \sd_initial_inst|CMD8[47]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD8\(11));

-- Location: LCCOMB_X24_Y16_N18
\sd_initial_inst|Selector133~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector133~0_combout\ = (\sd_initial_inst|state\(2) & !\sd_initial_inst|CMD8\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sd_initial_inst|state\(2),
	datad => \sd_initial_inst|CMD8\(11),
	combout => \sd_initial_inst|Selector133~0_combout\);

-- Location: FF_X24_Y16_N19
\sd_initial_inst|CMD8[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector133~0_combout\,
	ena => \sd_initial_inst|CMD8[47]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD8\(12));

-- Location: LCCOMB_X23_Y16_N30
\sd_initial_inst|Selector132~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector132~0_combout\ = (!\sd_initial_inst|CMD8\(12) & \sd_initial_inst|state\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_initial_inst|CMD8\(12),
	datac => \sd_initial_inst|state\(2),
	combout => \sd_initial_inst|Selector132~0_combout\);

-- Location: FF_X23_Y16_N31
\sd_initial_inst|CMD8[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector132~0_combout\,
	ena => \sd_initial_inst|CMD8[47]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD8\(13));

-- Location: LCCOMB_X23_Y16_N22
\sd_initial_inst|Equal2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Equal2~3_combout\ = (\sd_initial_inst|CMD8\(15) & (!\sd_initial_inst|CMD8\(12) & (\sd_initial_inst|CMD8\(13) & !\sd_initial_inst|CMD8\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|CMD8\(15),
	datab => \sd_initial_inst|CMD8\(12),
	datac => \sd_initial_inst|CMD8\(13),
	datad => \sd_initial_inst|CMD8\(14),
	combout => \sd_initial_inst|Equal2~3_combout\);

-- Location: LCCOMB_X23_Y15_N24
\sd_initial_inst|CMD8[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|CMD8[0]~4_combout\ = (\sd_initial_inst|state\(3) & (\sd_initial_inst|CMD8\(0))) # (!\sd_initial_inst|state\(3) & ((\sd_initial_inst|state\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_initial_inst|CMD8\(0),
	datac => \sd_initial_inst|state\(3),
	datad => \sd_initial_inst|state\(2),
	combout => \sd_initial_inst|CMD8[0]~4_combout\);

-- Location: LCCOMB_X23_Y15_N16
\sd_initial_inst|CMD8[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|CMD8[0]~6_combout\ = (\sd_initial_inst|CMD8[0]~5_combout\ & ((\sd_initial_inst|CMD8[0]~4_combout\) # ((\sd_initial_inst|LessThan3~2_combout\ & \sd_initial_inst|CMD8\(0))))) # (!\sd_initial_inst|CMD8[0]~5_combout\ & 
-- (((\sd_initial_inst|CMD8\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|CMD8[0]~5_combout\,
	datab => \sd_initial_inst|LessThan3~2_combout\,
	datac => \sd_initial_inst|CMD8\(0),
	datad => \sd_initial_inst|CMD8[0]~4_combout\,
	combout => \sd_initial_inst|CMD8[0]~6_combout\);

-- Location: FF_X23_Y15_N17
\sd_initial_inst|CMD8[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|CMD8[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD8\(0));

-- Location: LCCOMB_X23_Y16_N12
\sd_initial_inst|Selector144~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector144~0_combout\ = (\sd_initial_inst|state\(2) & \sd_initial_inst|CMD8\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|state\(2),
	datac => \sd_initial_inst|CMD8\(0),
	combout => \sd_initial_inst|Selector144~0_combout\);

-- Location: FF_X23_Y16_N13
\sd_initial_inst|CMD8[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector144~0_combout\,
	ena => \sd_initial_inst|CMD8[47]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD8\(1));

-- Location: LCCOMB_X23_Y16_N6
\sd_initial_inst|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Equal2~0_combout\ = (\sd_initial_inst|CMD8\(2) & (!\sd_initial_inst|CMD8\(3) & (\sd_initial_inst|CMD8\(0) & \sd_initial_inst|CMD8\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|CMD8\(2),
	datab => \sd_initial_inst|CMD8\(3),
	datac => \sd_initial_inst|CMD8\(0),
	datad => \sd_initial_inst|CMD8\(1),
	combout => \sd_initial_inst|Equal2~0_combout\);

-- Location: LCCOMB_X23_Y16_N16
\sd_initial_inst|Equal2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Equal2~4_combout\ = (\sd_initial_inst|Equal2~2_combout\ & (\sd_initial_inst|Equal2~1_combout\ & (\sd_initial_inst|Equal2~3_combout\ & \sd_initial_inst|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|Equal2~2_combout\,
	datab => \sd_initial_inst|Equal2~1_combout\,
	datac => \sd_initial_inst|Equal2~3_combout\,
	datad => \sd_initial_inst|Equal2~0_combout\,
	combout => \sd_initial_inst|Equal2~4_combout\);

-- Location: LCCOMB_X23_Y16_N0
\sd_initial_inst|Equal2~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Equal2~15_combout\ = (\sd_initial_inst|Equal2~14_combout\ & (\sd_initial_inst|Equal2~9_combout\ & \sd_initial_inst|Equal2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|Equal2~14_combout\,
	datac => \sd_initial_inst|Equal2~9_combout\,
	datad => \sd_initial_inst|Equal2~4_combout\,
	combout => \sd_initial_inst|Equal2~15_combout\);

-- Location: LCCOMB_X24_Y15_N14
\sd_initial_inst|always3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|always3~2_combout\ = (\sd_initial_inst|Equal1~0_combout\ & (\sd_initial_inst|rx\(40) & (\sd_initial_inst|rx_valid~q\ & \sd_initial_inst|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|Equal1~0_combout\,
	datab => \sd_initial_inst|rx\(40),
	datac => \sd_initial_inst|rx_valid~q\,
	datad => \sd_initial_inst|Equal1~1_combout\,
	combout => \sd_initial_inst|always3~2_combout\);

-- Location: LCCOMB_X25_Y15_N30
\sd_initial_inst|state~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|state~9_combout\ = (\sd_initial_inst|state\(1) & (((!\sd_initial_inst|state\(2) & \sd_initial_inst|always3~2_combout\)))) # (!\sd_initial_inst|state\(1) & ((\sd_initial_inst|Equal2~15_combout\) # ((!\sd_initial_inst|state\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|state\(1),
	datab => \sd_initial_inst|Equal2~15_combout\,
	datac => \sd_initial_inst|state\(2),
	datad => \sd_initial_inst|always3~2_combout\,
	combout => \sd_initial_inst|state~9_combout\);

-- Location: LCCOMB_X25_Y15_N16
\sd_initial_inst|state~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|state~8_combout\ = (\sd_initial_inst|CMD55[32]~0_combout\ & ((\sd_initial_inst|always3~2_combout\) # ((!\sd_initial_inst|LessThan4~1_combout\ & \sd_initial_inst|state\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|CMD55[32]~0_combout\,
	datab => \sd_initial_inst|LessThan4~1_combout\,
	datac => \sd_initial_inst|state\(2),
	datad => \sd_initial_inst|always3~2_combout\,
	combout => \sd_initial_inst|state~8_combout\);

-- Location: LCCOMB_X25_Y15_N24
\sd_initial_inst|state~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|state~10_combout\ = (\sd_initial_inst|CMD0[0]~0_combout\ & (!\sd_initial_inst|state\(0) & ((\sd_initial_inst|state~9_combout\) # (\sd_initial_inst|state~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|CMD0[0]~0_combout\,
	datab => \sd_initial_inst|state\(0),
	datac => \sd_initial_inst|state~9_combout\,
	datad => \sd_initial_inst|state~8_combout\,
	combout => \sd_initial_inst|state~10_combout\);

-- Location: LCCOMB_X21_Y15_N10
\sd_initial_inst|state~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|state~5_combout\ = (\sd_initial_inst|reset~q\ & (\sd_initial_inst|state\(0) & !\sd_initial_inst|state\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|reset~q\,
	datac => \sd_initial_inst|state\(0),
	datad => \sd_initial_inst|state\(3),
	combout => \sd_initial_inst|state~5_combout\);

-- Location: LCCOMB_X25_Y15_N18
\sd_initial_inst|state~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|state~11_combout\ = (\sd_initial_inst|Equal5~9_combout\) # ((\sd_initial_inst|Equal5~4_combout\) # ((\sd_initial_inst|Equal5~14_combout\) # (!\sd_initial_inst|always3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|Equal5~9_combout\,
	datab => \sd_initial_inst|Equal5~4_combout\,
	datac => \sd_initial_inst|Equal5~14_combout\,
	datad => \sd_initial_inst|always3~1_combout\,
	combout => \sd_initial_inst|state~11_combout\);

-- Location: LCCOMB_X22_Y15_N22
\sd_initial_inst|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Mux3~2_combout\ = (\sd_initial_inst|state\(2) & (((\sd_initial_inst|state\(1))))) # (!\sd_initial_inst|state\(2) & ((\sd_initial_inst|state\(1) & ((\sd_initial_inst|LessThan3~2_combout\))) # (!\sd_initial_inst|state\(1) & 
-- (!\sd_initial_inst|Equal0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|state\(2),
	datab => \sd_initial_inst|Equal0~15_combout\,
	datac => \sd_initial_inst|LessThan3~2_combout\,
	datad => \sd_initial_inst|state\(1),
	combout => \sd_initial_inst|Mux3~2_combout\);

-- Location: LCCOMB_X25_Y15_N0
\sd_initial_inst|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Mux3~3_combout\ = (\sd_initial_inst|state\(2) & ((\sd_initial_inst|Mux3~2_combout\ & ((\sd_initial_inst|state~11_combout\))) # (!\sd_initial_inst|Mux3~2_combout\ & (\sd_initial_inst|always3~3_combout\)))) # (!\sd_initial_inst|state\(2) & 
-- (((\sd_initial_inst|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|always3~3_combout\,
	datab => \sd_initial_inst|state~11_combout\,
	datac => \sd_initial_inst|state\(2),
	datad => \sd_initial_inst|Mux3~2_combout\,
	combout => \sd_initial_inst|Mux3~3_combout\);

-- Location: LCCOMB_X25_Y15_N28
\sd_initial_inst|state~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|state~12_combout\ = (\sd_initial_inst|state~1_combout\) # ((\sd_initial_inst|state~10_combout\) # ((\sd_initial_inst|state~5_combout\ & \sd_initial_inst|Mux3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|state~1_combout\,
	datab => \sd_initial_inst|state~10_combout\,
	datac => \sd_initial_inst|state~5_combout\,
	datad => \sd_initial_inst|Mux3~3_combout\,
	combout => \sd_initial_inst|state~12_combout\);

-- Location: FF_X25_Y15_N29
\sd_initial_inst|state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|state~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|state\(0));

-- Location: LCCOMB_X22_Y15_N12
\sd_initial_inst|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector0~0_combout\ = (!\sd_initial_inst|state\(2) & ((\sd_initial_inst|state\(0) & ((\sd_initial_inst|state\(1)))) # (!\sd_initial_inst|state\(0) & ((\sd_initial_inst|rx_valid~q\) # (!\sd_initial_inst|state\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|state\(2),
	datab => \sd_initial_inst|rx_valid~q\,
	datac => \sd_initial_inst|state\(0),
	datad => \sd_initial_inst|state\(1),
	combout => \sd_initial_inst|Selector0~0_combout\);

-- Location: LCCOMB_X22_Y15_N28
\sd_initial_inst|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector0~1_combout\ = (\sd_initial_inst|state\(3)) # (\sd_initial_inst|Selector0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|state\(3),
	datad => \sd_initial_inst|Selector0~0_combout\,
	combout => \sd_initial_inst|Selector0~1_combout\);

-- Location: FF_X22_Y15_N29
\sd_initial_inst|SD_cs\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector0~1_combout\,
	asdata => \sd_initial_inst|counter\(9),
	sload => \sd_initial_inst|ALT_INV_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|SD_cs~q\);

-- Location: LCCOMB_X21_Y15_N0
\sd_initial_inst|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector1~1_combout\ = (\sd_initial_inst|state\(3) & ((\sd_initial_inst|Selector1~0_combout\))) # (!\sd_initial_inst|state\(3) & (\sd_initial_inst|init_o~q\ & !\sd_initial_inst|Selector1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|state\(3),
	datac => \sd_initial_inst|init_o~q\,
	datad => \sd_initial_inst|Selector1~0_combout\,
	combout => \sd_initial_inst|Selector1~1_combout\);

-- Location: FF_X21_Y15_N1
\sd_initial_inst|init_o\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector1~1_combout\,
	sclr => \sd_initial_inst|ALT_INV_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|init_o~q\);

-- Location: LCCOMB_X23_Y22_N10
\sd_read_inst|cnt[0]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|cnt[0]~22_combout\ = \sd_read_inst|cnt\(0) $ (VCC)
-- \sd_read_inst|cnt[0]~23\ = CARRY(\sd_read_inst|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_read_inst|cnt\(0),
	datad => VCC,
	combout => \sd_read_inst|cnt[0]~22_combout\,
	cout => \sd_read_inst|cnt[0]~23\);

-- Location: LCCOMB_X23_Y22_N14
\sd_read_inst|cnt[2]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|cnt[2]~29_combout\ = (\sd_read_inst|cnt\(2) & (\sd_read_inst|cnt[1]~28\ $ (GND))) # (!\sd_read_inst|cnt\(2) & (!\sd_read_inst|cnt[1]~28\ & VCC))
-- \sd_read_inst|cnt[2]~30\ = CARRY((\sd_read_inst|cnt\(2) & !\sd_read_inst|cnt[1]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sd_read_inst|cnt\(2),
	datad => VCC,
	cin => \sd_read_inst|cnt[1]~28\,
	combout => \sd_read_inst|cnt[2]~29_combout\,
	cout => \sd_read_inst|cnt[2]~30\);

-- Location: LCCOMB_X23_Y21_N28
\sd_read_inst|cnt[8]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|cnt[8]~24_combout\ = (!\sd_read_inst|mystate\(2)) # (!\sd_read_inst|LessThan1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sd_read_inst|LessThan1~6_combout\,
	datad => \sd_read_inst|mystate\(2),
	combout => \sd_read_inst|cnt[8]~24_combout\);

-- Location: LCCOMB_X28_Y21_N22
\sd_read_inst|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|Add0~4_combout\ = (\sd_read_inst|aa\(2) & (\sd_read_inst|Add0~3\ $ (GND))) # (!\sd_read_inst|aa\(2) & (!\sd_read_inst|Add0~3\ & VCC))
-- \sd_read_inst|Add0~5\ = CARRY((\sd_read_inst|aa\(2) & !\sd_read_inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sd_read_inst|aa\(2),
	datad => VCC,
	cin => \sd_read_inst|Add0~3\,
	combout => \sd_read_inst|Add0~4_combout\,
	cout => \sd_read_inst|Add0~5\);

-- Location: LCCOMB_X28_Y21_N30
\sd_read_inst|en~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|en~0_combout\ = (\sd_read_inst|aa~0_combout\) # ((!\sd_read_inst|en~q\ & !\SD_dataout~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_read_inst|aa~0_combout\,
	datac => \sd_read_inst|en~q\,
	datad => \SD_dataout~input_o\,
	combout => \sd_read_inst|en~0_combout\);

-- Location: FF_X28_Y21_N31
\sd_read_inst|en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_read_inst|en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|en~q\);

-- Location: LCCOMB_X28_Y21_N12
\sd_read_inst|aa~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|aa~3_combout\ = (\sd_read_inst|Add0~0_combout\ & ((\sd_read_inst|aa~0_combout\) # ((!\sd_read_inst|en~q\ & !\SD_dataout~input_o\)))) # (!\sd_read_inst|Add0~0_combout\ & (((!\sd_read_inst|en~q\ & !\SD_dataout~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_read_inst|Add0~0_combout\,
	datab => \sd_read_inst|aa~0_combout\,
	datac => \sd_read_inst|en~q\,
	datad => \SD_dataout~input_o\,
	combout => \sd_read_inst|aa~3_combout\);

-- Location: FF_X28_Y21_N13
\sd_read_inst|aa[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_read_inst|aa~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|aa\(0));

-- Location: LCCOMB_X28_Y21_N4
\sd_read_inst|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|LessThan0~0_combout\ = (!\sd_read_inst|aa\(3) & (((!\sd_read_inst|aa\(0)) # (!\sd_read_inst|aa\(2))) # (!\sd_read_inst|aa\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_read_inst|aa\(1),
	datab => \sd_read_inst|aa\(2),
	datac => \sd_read_inst|aa\(3),
	datad => \sd_read_inst|aa\(0),
	combout => \sd_read_inst|LessThan0~0_combout\);

-- Location: LCCOMB_X28_Y21_N2
\sd_read_inst|aa~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|aa~0_combout\ = (!\sd_read_inst|aa\(5) & (!\sd_read_inst|aa\(4) & (\sd_read_inst|LessThan0~0_combout\ & \sd_read_inst|en~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_read_inst|aa\(5),
	datab => \sd_read_inst|aa\(4),
	datac => \sd_read_inst|LessThan0~0_combout\,
	datad => \sd_read_inst|en~q\,
	combout => \sd_read_inst|aa~0_combout\);

-- Location: LCCOMB_X28_Y21_N0
\sd_read_inst|aa~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|aa~5_combout\ = (\sd_read_inst|Add0~4_combout\ & \sd_read_inst|aa~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sd_read_inst|Add0~4_combout\,
	datad => \sd_read_inst|aa~0_combout\,
	combout => \sd_read_inst|aa~5_combout\);

-- Location: FF_X28_Y21_N1
\sd_read_inst|aa[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_read_inst|aa~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|aa\(2));

-- Location: LCCOMB_X28_Y21_N24
\sd_read_inst|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|Add0~6_combout\ = (\sd_read_inst|aa\(3) & (!\sd_read_inst|Add0~5\)) # (!\sd_read_inst|aa\(3) & ((\sd_read_inst|Add0~5\) # (GND)))
-- \sd_read_inst|Add0~7\ = CARRY((!\sd_read_inst|Add0~5\) # (!\sd_read_inst|aa\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sd_read_inst|aa\(3),
	datad => VCC,
	cin => \sd_read_inst|Add0~5\,
	combout => \sd_read_inst|Add0~6_combout\,
	cout => \sd_read_inst|Add0~7\);

-- Location: LCCOMB_X28_Y21_N14
\sd_read_inst|aa~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|aa~6_combout\ = (\sd_read_inst|Add0~6_combout\ & \sd_read_inst|aa~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_read_inst|Add0~6_combout\,
	datad => \sd_read_inst|aa~0_combout\,
	combout => \sd_read_inst|aa~6_combout\);

-- Location: FF_X28_Y21_N15
\sd_read_inst|aa[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_read_inst|aa~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|aa\(3));

-- Location: LCCOMB_X28_Y21_N16
\sd_read_inst|aa~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|aa~1_combout\ = (\sd_read_inst|Add0~8_combout\ & \sd_read_inst|aa~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sd_read_inst|Add0~8_combout\,
	datad => \sd_read_inst|aa~0_combout\,
	combout => \sd_read_inst|aa~1_combout\);

-- Location: FF_X28_Y21_N17
\sd_read_inst|aa[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_read_inst|aa~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|aa\(4));

-- Location: LCCOMB_X28_Y21_N8
\sd_read_inst|rx_valid~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|rx_valid~0_combout\ = (\sd_read_inst|en~q\ & ((\sd_read_inst|aa\(5)) # ((\sd_read_inst|aa\(4)) # (!\sd_read_inst|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_read_inst|aa\(5),
	datab => \sd_read_inst|aa\(4),
	datac => \sd_read_inst|LessThan0~0_combout\,
	datad => \sd_read_inst|en~q\,
	combout => \sd_read_inst|rx_valid~0_combout\);

-- Location: FF_X28_Y21_N9
\sd_read_inst|rx_valid\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_read_inst|rx_valid~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|rx_valid~q\);

-- Location: LCCOMB_X21_Y21_N24
\sd_read_inst|cnt[21]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|cnt[21]~25_combout\ = ((!\sd_read_inst|mystate\(2) & ((\sd_read_inst|rx_valid~q\) # (!\sd_read_inst|Equal0~15_combout\)))) # (!\sd_read_inst|mystate\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_read_inst|Equal0~15_combout\,
	datab => \sd_read_inst|mystate\(0),
	datac => \sd_read_inst|mystate\(2),
	datad => \sd_read_inst|rx_valid~q\,
	combout => \sd_read_inst|cnt[21]~25_combout\);

-- Location: LCCOMB_X22_Y21_N6
\sd_read_inst|cnt[21]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|cnt[21]~26_combout\ = (!\sd_read_inst|mystate\(1) & (\sd_initial_inst|init_o~q\ & \sd_read_inst|cnt[21]~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_read_inst|mystate\(1),
	datac => \sd_initial_inst|init_o~q\,
	datad => \sd_read_inst|cnt[21]~25_combout\,
	combout => \sd_read_inst|cnt[21]~26_combout\);

-- Location: FF_X23_Y22_N15
\sd_read_inst|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_read_inst|cnt[2]~29_combout\,
	sclr => \sd_read_inst|cnt[8]~24_combout\,
	ena => \sd_read_inst|cnt[21]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|cnt\(2));

-- Location: LCCOMB_X23_Y22_N16
\sd_read_inst|cnt[3]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|cnt[3]~31_combout\ = (\sd_read_inst|cnt\(3) & (!\sd_read_inst|cnt[2]~30\)) # (!\sd_read_inst|cnt\(3) & ((\sd_read_inst|cnt[2]~30\) # (GND)))
-- \sd_read_inst|cnt[3]~32\ = CARRY((!\sd_read_inst|cnt[2]~30\) # (!\sd_read_inst|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sd_read_inst|cnt\(3),
	datad => VCC,
	cin => \sd_read_inst|cnt[2]~30\,
	combout => \sd_read_inst|cnt[3]~31_combout\,
	cout => \sd_read_inst|cnt[3]~32\);

-- Location: FF_X23_Y22_N17
\sd_read_inst|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_read_inst|cnt[3]~31_combout\,
	sclr => \sd_read_inst|cnt[8]~24_combout\,
	ena => \sd_read_inst|cnt[21]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|cnt\(3));

-- Location: LCCOMB_X23_Y22_N18
\sd_read_inst|cnt[4]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|cnt[4]~33_combout\ = (\sd_read_inst|cnt\(4) & (\sd_read_inst|cnt[3]~32\ $ (GND))) # (!\sd_read_inst|cnt\(4) & (!\sd_read_inst|cnt[3]~32\ & VCC))
-- \sd_read_inst|cnt[4]~34\ = CARRY((\sd_read_inst|cnt\(4) & !\sd_read_inst|cnt[3]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sd_read_inst|cnt\(4),
	datad => VCC,
	cin => \sd_read_inst|cnt[3]~32\,
	combout => \sd_read_inst|cnt[4]~33_combout\,
	cout => \sd_read_inst|cnt[4]~34\);

-- Location: FF_X23_Y22_N19
\sd_read_inst|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_read_inst|cnt[4]~33_combout\,
	sclr => \sd_read_inst|cnt[8]~24_combout\,
	ena => \sd_read_inst|cnt[21]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|cnt\(4));

-- Location: LCCOMB_X23_Y22_N20
\sd_read_inst|cnt[5]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|cnt[5]~35_combout\ = (\sd_read_inst|cnt\(5) & (!\sd_read_inst|cnt[4]~34\)) # (!\sd_read_inst|cnt\(5) & ((\sd_read_inst|cnt[4]~34\) # (GND)))
-- \sd_read_inst|cnt[5]~36\ = CARRY((!\sd_read_inst|cnt[4]~34\) # (!\sd_read_inst|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sd_read_inst|cnt\(5),
	datad => VCC,
	cin => \sd_read_inst|cnt[4]~34\,
	combout => \sd_read_inst|cnt[5]~35_combout\,
	cout => \sd_read_inst|cnt[5]~36\);

-- Location: FF_X23_Y22_N21
\sd_read_inst|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_read_inst|cnt[5]~35_combout\,
	sclr => \sd_read_inst|cnt[8]~24_combout\,
	ena => \sd_read_inst|cnt[21]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|cnt\(5));

-- Location: LCCOMB_X23_Y22_N24
\sd_read_inst|cnt[7]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|cnt[7]~39_combout\ = (\sd_read_inst|cnt\(7) & (!\sd_read_inst|cnt[6]~38\)) # (!\sd_read_inst|cnt\(7) & ((\sd_read_inst|cnt[6]~38\) # (GND)))
-- \sd_read_inst|cnt[7]~40\ = CARRY((!\sd_read_inst|cnt[6]~38\) # (!\sd_read_inst|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sd_read_inst|cnt\(7),
	datad => VCC,
	cin => \sd_read_inst|cnt[6]~38\,
	combout => \sd_read_inst|cnt[7]~39_combout\,
	cout => \sd_read_inst|cnt[7]~40\);

-- Location: FF_X23_Y22_N25
\sd_read_inst|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_read_inst|cnt[7]~39_combout\,
	sclr => \sd_read_inst|cnt[8]~24_combout\,
	ena => \sd_read_inst|cnt[21]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|cnt\(7));

-- Location: LCCOMB_X23_Y22_N26
\sd_read_inst|cnt[8]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|cnt[8]~41_combout\ = (\sd_read_inst|cnt\(8) & (\sd_read_inst|cnt[7]~40\ $ (GND))) # (!\sd_read_inst|cnt\(8) & (!\sd_read_inst|cnt[7]~40\ & VCC))
-- \sd_read_inst|cnt[8]~42\ = CARRY((\sd_read_inst|cnt\(8) & !\sd_read_inst|cnt[7]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sd_read_inst|cnt\(8),
	datad => VCC,
	cin => \sd_read_inst|cnt[7]~40\,
	combout => \sd_read_inst|cnt[8]~41_combout\,
	cout => \sd_read_inst|cnt[8]~42\);

-- Location: LCCOMB_X23_Y22_N28
\sd_read_inst|cnt[9]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|cnt[9]~43_combout\ = (\sd_read_inst|cnt\(9) & (!\sd_read_inst|cnt[8]~42\)) # (!\sd_read_inst|cnt\(9) & ((\sd_read_inst|cnt[8]~42\) # (GND)))
-- \sd_read_inst|cnt[9]~44\ = CARRY((!\sd_read_inst|cnt[8]~42\) # (!\sd_read_inst|cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sd_read_inst|cnt\(9),
	datad => VCC,
	cin => \sd_read_inst|cnt[8]~42\,
	combout => \sd_read_inst|cnt[9]~43_combout\,
	cout => \sd_read_inst|cnt[9]~44\);

-- Location: FF_X23_Y22_N29
\sd_read_inst|cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_read_inst|cnt[9]~43_combout\,
	sclr => \sd_read_inst|cnt[8]~24_combout\,
	ena => \sd_read_inst|cnt[21]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|cnt\(9));

-- Location: LCCOMB_X23_Y21_N0
\sd_read_inst|cnt[11]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|cnt[11]~47_combout\ = (\sd_read_inst|cnt\(11) & (!\sd_read_inst|cnt[10]~46\)) # (!\sd_read_inst|cnt\(11) & ((\sd_read_inst|cnt[10]~46\) # (GND)))
-- \sd_read_inst|cnt[11]~48\ = CARRY((!\sd_read_inst|cnt[10]~46\) # (!\sd_read_inst|cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sd_read_inst|cnt\(11),
	datad => VCC,
	cin => \sd_read_inst|cnt[10]~46\,
	combout => \sd_read_inst|cnt[11]~47_combout\,
	cout => \sd_read_inst|cnt[11]~48\);

-- Location: LCCOMB_X23_Y21_N2
\sd_read_inst|cnt[12]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|cnt[12]~49_combout\ = (\sd_read_inst|cnt\(12) & (\sd_read_inst|cnt[11]~48\ $ (GND))) # (!\sd_read_inst|cnt\(12) & (!\sd_read_inst|cnt[11]~48\ & VCC))
-- \sd_read_inst|cnt[12]~50\ = CARRY((\sd_read_inst|cnt\(12) & !\sd_read_inst|cnt[11]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sd_read_inst|cnt\(12),
	datad => VCC,
	cin => \sd_read_inst|cnt[11]~48\,
	combout => \sd_read_inst|cnt[12]~49_combout\,
	cout => \sd_read_inst|cnt[12]~50\);

-- Location: FF_X23_Y21_N3
\sd_read_inst|cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_read_inst|cnt[12]~49_combout\,
	sclr => \sd_read_inst|cnt[8]~24_combout\,
	ena => \sd_read_inst|cnt[21]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|cnt\(12));

-- Location: LCCOMB_X23_Y21_N4
\sd_read_inst|cnt[13]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|cnt[13]~51_combout\ = (\sd_read_inst|cnt\(13) & (!\sd_read_inst|cnt[12]~50\)) # (!\sd_read_inst|cnt\(13) & ((\sd_read_inst|cnt[12]~50\) # (GND)))
-- \sd_read_inst|cnt[13]~52\ = CARRY((!\sd_read_inst|cnt[12]~50\) # (!\sd_read_inst|cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sd_read_inst|cnt\(13),
	datad => VCC,
	cin => \sd_read_inst|cnt[12]~50\,
	combout => \sd_read_inst|cnt[13]~51_combout\,
	cout => \sd_read_inst|cnt[13]~52\);

-- Location: FF_X23_Y21_N5
\sd_read_inst|cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_read_inst|cnt[13]~51_combout\,
	sclr => \sd_read_inst|cnt[8]~24_combout\,
	ena => \sd_read_inst|cnt[21]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|cnt\(13));

-- Location: LCCOMB_X23_Y21_N8
\sd_read_inst|cnt[15]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|cnt[15]~55_combout\ = (\sd_read_inst|cnt\(15) & (!\sd_read_inst|cnt[14]~54\)) # (!\sd_read_inst|cnt\(15) & ((\sd_read_inst|cnt[14]~54\) # (GND)))
-- \sd_read_inst|cnt[15]~56\ = CARRY((!\sd_read_inst|cnt[14]~54\) # (!\sd_read_inst|cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sd_read_inst|cnt\(15),
	datad => VCC,
	cin => \sd_read_inst|cnt[14]~54\,
	combout => \sd_read_inst|cnt[15]~55_combout\,
	cout => \sd_read_inst|cnt[15]~56\);

-- Location: FF_X23_Y21_N9
\sd_read_inst|cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_read_inst|cnt[15]~55_combout\,
	sclr => \sd_read_inst|cnt[8]~24_combout\,
	ena => \sd_read_inst|cnt[21]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|cnt\(15));

-- Location: LCCOMB_X23_Y21_N14
\sd_read_inst|cnt[18]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|cnt[18]~61_combout\ = (\sd_read_inst|cnt\(18) & (\sd_read_inst|cnt[17]~60\ $ (GND))) # (!\sd_read_inst|cnt\(18) & (!\sd_read_inst|cnt[17]~60\ & VCC))
-- \sd_read_inst|cnt[18]~62\ = CARRY((\sd_read_inst|cnt\(18) & !\sd_read_inst|cnt[17]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sd_read_inst|cnt\(18),
	datad => VCC,
	cin => \sd_read_inst|cnt[17]~60\,
	combout => \sd_read_inst|cnt[18]~61_combout\,
	cout => \sd_read_inst|cnt[18]~62\);

-- Location: FF_X23_Y21_N15
\sd_read_inst|cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_read_inst|cnt[18]~61_combout\,
	sclr => \sd_read_inst|cnt[8]~24_combout\,
	ena => \sd_read_inst|cnt[21]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|cnt\(18));

-- Location: LCCOMB_X23_Y21_N16
\sd_read_inst|cnt[19]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|cnt[19]~63_combout\ = (\sd_read_inst|cnt\(19) & (!\sd_read_inst|cnt[18]~62\)) # (!\sd_read_inst|cnt\(19) & ((\sd_read_inst|cnt[18]~62\) # (GND)))
-- \sd_read_inst|cnt[19]~64\ = CARRY((!\sd_read_inst|cnt[18]~62\) # (!\sd_read_inst|cnt\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sd_read_inst|cnt\(19),
	datad => VCC,
	cin => \sd_read_inst|cnt[18]~62\,
	combout => \sd_read_inst|cnt[19]~63_combout\,
	cout => \sd_read_inst|cnt[19]~64\);

-- Location: FF_X23_Y21_N17
\sd_read_inst|cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_read_inst|cnt[19]~63_combout\,
	sclr => \sd_read_inst|cnt[8]~24_combout\,
	ena => \sd_read_inst|cnt[21]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|cnt\(19));

-- Location: LCCOMB_X23_Y21_N18
\sd_read_inst|cnt[20]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|cnt[20]~65_combout\ = (\sd_read_inst|cnt\(20) & (\sd_read_inst|cnt[19]~64\ $ (GND))) # (!\sd_read_inst|cnt\(20) & (!\sd_read_inst|cnt[19]~64\ & VCC))
-- \sd_read_inst|cnt[20]~66\ = CARRY((\sd_read_inst|cnt\(20) & !\sd_read_inst|cnt[19]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sd_read_inst|cnt\(20),
	datad => VCC,
	cin => \sd_read_inst|cnt[19]~64\,
	combout => \sd_read_inst|cnt[20]~65_combout\,
	cout => \sd_read_inst|cnt[20]~66\);

-- Location: FF_X23_Y21_N19
\sd_read_inst|cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_read_inst|cnt[20]~65_combout\,
	sclr => \sd_read_inst|cnt[8]~24_combout\,
	ena => \sd_read_inst|cnt[21]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|cnt\(20));

-- Location: FF_X23_Y21_N1
\sd_read_inst|cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_read_inst|cnt[11]~47_combout\,
	sclr => \sd_read_inst|cnt[8]~24_combout\,
	ena => \sd_read_inst|cnt[21]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|cnt\(11));

-- Location: FF_X23_Y22_N27
\sd_read_inst|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_read_inst|cnt[8]~41_combout\,
	sclr => \sd_read_inst|cnt[8]~24_combout\,
	ena => \sd_read_inst|cnt[21]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|cnt\(8));

-- Location: LCCOMB_X23_Y22_N8
\sd_read_inst|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|LessThan1~2_combout\ = (!\sd_read_inst|cnt\(10) & (!\sd_read_inst|cnt\(11) & (!\sd_read_inst|cnt\(8) & !\sd_read_inst|cnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_read_inst|cnt\(10),
	datab => \sd_read_inst|cnt\(11),
	datac => \sd_read_inst|cnt\(8),
	datad => \sd_read_inst|cnt\(9),
	combout => \sd_read_inst|LessThan1~2_combout\);

-- Location: LCCOMB_X23_Y21_N26
\sd_read_inst|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|LessThan1~3_combout\ = (!\sd_read_inst|cnt\(14) & (!\sd_read_inst|cnt\(13) & (!\sd_read_inst|cnt\(15) & !\sd_read_inst|cnt\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_read_inst|cnt\(14),
	datab => \sd_read_inst|cnt\(13),
	datac => \sd_read_inst|cnt\(15),
	datad => \sd_read_inst|cnt\(12),
	combout => \sd_read_inst|LessThan1~3_combout\);

-- Location: FF_X23_Y22_N11
\sd_read_inst|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_read_inst|cnt[0]~22_combout\,
	sclr => \sd_read_inst|cnt[8]~24_combout\,
	ena => \sd_read_inst|cnt[21]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|cnt\(0));

-- Location: LCCOMB_X23_Y22_N0
\sd_read_inst|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|LessThan1~0_combout\ = (((!\sd_read_inst|cnt\(0)) # (!\sd_read_inst|cnt\(2))) # (!\sd_read_inst|cnt\(3))) # (!\sd_read_inst|cnt\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_read_inst|cnt\(1),
	datab => \sd_read_inst|cnt\(3),
	datac => \sd_read_inst|cnt\(2),
	datad => \sd_read_inst|cnt\(0),
	combout => \sd_read_inst|LessThan1~0_combout\);

-- Location: LCCOMB_X23_Y22_N2
\sd_read_inst|LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|LessThan1~4_combout\ = (\sd_read_inst|LessThan1~1_combout\ & (\sd_read_inst|LessThan1~2_combout\ & (\sd_read_inst|LessThan1~3_combout\ & \sd_read_inst|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_read_inst|LessThan1~1_combout\,
	datab => \sd_read_inst|LessThan1~2_combout\,
	datac => \sd_read_inst|LessThan1~3_combout\,
	datad => \sd_read_inst|LessThan1~0_combout\,
	combout => \sd_read_inst|LessThan1~4_combout\);

-- Location: LCCOMB_X23_Y21_N20
\sd_read_inst|cnt[21]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|cnt[21]~67_combout\ = \sd_read_inst|cnt\(21) $ (\sd_read_inst|cnt[20]~66\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sd_read_inst|cnt\(21),
	cin => \sd_read_inst|cnt[20]~66\,
	combout => \sd_read_inst|cnt[21]~67_combout\);

-- Location: FF_X23_Y21_N21
\sd_read_inst|cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_read_inst|cnt[21]~67_combout\,
	sclr => \sd_read_inst|cnt[8]~24_combout\,
	ena => \sd_read_inst|cnt[21]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|cnt\(21));

-- Location: LCCOMB_X23_Y21_N30
\sd_read_inst|LessThan1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|LessThan1~6_combout\ = (\sd_read_inst|LessThan1~5_combout\ & (!\sd_read_inst|cnt\(20) & (\sd_read_inst|LessThan1~4_combout\ & !\sd_read_inst|cnt\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_read_inst|LessThan1~5_combout\,
	datab => \sd_read_inst|cnt\(20),
	datac => \sd_read_inst|LessThan1~4_combout\,
	datad => \sd_read_inst|cnt\(21),
	combout => \sd_read_inst|LessThan1~6_combout\);

-- Location: LCCOMB_X23_Y20_N22
\sd_read_inst|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|Selector0~1_combout\ = (\sd_read_inst|Selector0~0_combout\ & (((\sd_read_inst|read_start~q\)))) # (!\sd_read_inst|Selector0~0_combout\ & (\sd_read_inst|mystate\(1) & ((!\sd_read_inst|read_finish~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_read_inst|Selector0~0_combout\,
	datab => \sd_read_inst|mystate\(1),
	datac => \sd_read_inst|read_start~q\,
	datad => \sd_read_inst|read_finish~q\,
	combout => \sd_read_inst|Selector0~1_combout\);

-- Location: FF_X23_Y20_N23
\sd_read_inst|read_start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_read_inst|Selector0~1_combout\,
	sclr => \sd_initial_inst|ALT_INV_init_o~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|read_start~q\);

-- Location: LCCOMB_X22_Y20_N10
\sd_read_inst|read_step~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|read_step~6_combout\ = (\sd_read_inst|read_step.01~q\ & (!\sd_read_inst|read_cnt\(9))) # (!\sd_read_inst|read_step.01~q\ & (((\sd_read_inst|read_start~q\ & !\SD_dataout~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_read_inst|read_cnt\(9),
	datab => \sd_read_inst|read_start~q\,
	datac => \sd_read_inst|read_step.01~q\,
	datad => \SD_dataout~input_o\,
	combout => \sd_read_inst|read_step~6_combout\);

-- Location: LCCOMB_X22_Y20_N8
\sd_read_inst|read_step~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|read_step~7_combout\ = (\sd_initial_inst|init_o~q\ & \sd_read_inst|read_step~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sd_initial_inst|init_o~q\,
	datad => \sd_read_inst|read_step~6_combout\,
	combout => \sd_read_inst|read_step~7_combout\);

-- Location: FF_X22_Y20_N9
\sd_read_inst|read_step.01\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_read_inst|read_step~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|read_step.01~q\);

-- Location: LCCOMB_X25_Y20_N2
\sd_read_inst|cntb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|cntb~0_combout\ = (\sd_read_inst|read_step.01~q\ & !\sd_read_inst|cntb\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_read_inst|read_step.01~q\,
	datac => \sd_read_inst|cntb\(0),
	combout => \sd_read_inst|cntb~0_combout\);

-- Location: LCCOMB_X25_Y20_N6
\sd_read_inst|cntb[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|cntb[2]~1_combout\ = (\sd_initial_inst|init_o~q\ & ((!\sd_read_inst|read_cnt\(9)) # (!\sd_read_inst|read_step.01~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_read_inst|read_step.01~q\,
	datac => \sd_read_inst|read_cnt\(9),
	datad => \sd_initial_inst|init_o~q\,
	combout => \sd_read_inst|cntb[2]~1_combout\);

-- Location: FF_X25_Y20_N3
\sd_read_inst|cntb[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_read_inst|cntb~0_combout\,
	ena => \sd_read_inst|cntb[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|cntb\(0));

-- Location: LCCOMB_X25_Y20_N0
\sd_read_inst|cntb~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|cntb~2_combout\ = \sd_read_inst|cntb\(1) $ (\sd_read_inst|cntb\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sd_read_inst|cntb\(1),
	datad => \sd_read_inst|cntb\(0),
	combout => \sd_read_inst|cntb~2_combout\);

-- Location: FF_X25_Y20_N1
\sd_read_inst|cntb[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_read_inst|cntb~2_combout\,
	sclr => \sd_read_inst|ALT_INV_read_step.01~q\,
	ena => \sd_read_inst|cntb[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|cntb\(1));

-- Location: LCCOMB_X25_Y20_N4
\sd_read_inst|LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|LessThan3~0_combout\ = (\sd_read_inst|cntb\(2) & (\sd_read_inst|cntb\(1) & \sd_read_inst|cntb\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_read_inst|cntb\(2),
	datab => \sd_read_inst|cntb\(1),
	datad => \sd_read_inst|cntb\(0),
	combout => \sd_read_inst|LessThan3~0_combout\);

-- Location: LCCOMB_X25_Y20_N8
\sd_read_inst|read_cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|read_cnt~0_combout\ = (\sd_read_inst|read_cnt\(9)) # ((\sd_read_inst|Add3~18_combout\ & \sd_read_inst|LessThan3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_read_inst|Add3~18_combout\,
	datab => \sd_read_inst|LessThan3~0_combout\,
	datac => \sd_read_inst|read_cnt\(9),
	combout => \sd_read_inst|read_cnt~0_combout\);

-- Location: FF_X25_Y20_N9
\sd_read_inst|read_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_read_inst|read_cnt~0_combout\,
	sclr => \sd_read_inst|ALT_INV_read_step.01~q\,
	ena => \sd_initial_inst|init_o~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|read_cnt\(9));

-- Location: LCCOMB_X26_Y20_N24
\sd_read_inst|read_finish~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|read_finish~0_combout\ = (\sd_read_inst|read_finish~q\) # (\sd_read_inst|read_cnt\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sd_read_inst|read_finish~q\,
	datad => \sd_read_inst|read_cnt\(9),
	combout => \sd_read_inst|read_finish~0_combout\);

-- Location: LCCOMB_X22_Y20_N24
\~GND\ : cycloneive_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: FF_X26_Y20_N25
\sd_read_inst|read_finish\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_read_inst|read_finish~0_combout\,
	asdata => \~GND~combout\,
	sclr => \sd_initial_inst|ALT_INV_init_o~q\,
	sload => \sd_read_inst|ALT_INV_read_step.01~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|read_finish~q\);

-- Location: LCCOMB_X23_Y20_N20
\sd_read_inst|mystate[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|mystate[3]~6_combout\ = (\sd_read_inst|mystate\(2) & (!\sd_read_inst|mystate\(1) & (\sd_read_inst|LessThan1~6_combout\))) # (!\sd_read_inst|mystate\(2) & (\sd_read_inst|mystate\(1) & ((!\sd_read_inst|read_finish~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_read_inst|mystate\(2),
	datab => \sd_read_inst|mystate\(1),
	datac => \sd_read_inst|LessThan1~6_combout\,
	datad => \sd_read_inst|read_finish~q\,
	combout => \sd_read_inst|mystate[3]~6_combout\);

-- Location: LCCOMB_X23_Y20_N18
\sd_read_inst|mystate[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|mystate[3]~7_combout\ = (\sd_initial_inst|init_o~q\ & ((\sd_read_inst|mystate[3]~5_combout\) # ((!\sd_read_inst|mystate\(0) & \sd_read_inst|mystate[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_read_inst|mystate[3]~5_combout\,
	datab => \sd_read_inst|mystate\(0),
	datac => \sd_initial_inst|init_o~q\,
	datad => \sd_read_inst|mystate[3]~6_combout\,
	combout => \sd_read_inst|mystate[3]~7_combout\);

-- Location: LCCOMB_X23_Y20_N8
\sd_read_inst|mystate[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|mystate[1]~9_combout\ = (\sd_read_inst|mystate\(1) & (((\sd_read_inst|mystate[3]~7_combout\)))) # (!\sd_read_inst|mystate\(1) & (!\sd_read_inst|mystate\(2) & (!\sd_read_inst|mystate[1]~2_combout\ & !\sd_read_inst|mystate[3]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_read_inst|mystate\(2),
	datab => \sd_read_inst|mystate[1]~2_combout\,
	datac => \sd_read_inst|mystate\(1),
	datad => \sd_read_inst|mystate[3]~7_combout\,
	combout => \sd_read_inst|mystate[1]~9_combout\);

-- Location: FF_X23_Y20_N9
\sd_read_inst|mystate[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_read_inst|mystate[1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|mystate\(1));

-- Location: LCCOMB_X23_Y20_N24
\sd_read_inst|mystate[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|mystate[2]~4_combout\ = (!\sd_read_inst|mystate\(0) & (\sd_read_inst|mystate\(1) & (!\sd_read_inst|mystate\(2) & \sd_initial_inst|init_o~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_read_inst|mystate\(0),
	datab => \sd_read_inst|mystate\(1),
	datac => \sd_read_inst|mystate\(2),
	datad => \sd_initial_inst|init_o~q\,
	combout => \sd_read_inst|mystate[2]~4_combout\);

-- Location: LCCOMB_X23_Y20_N26
\sd_read_inst|mystate[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|mystate[2]~8_combout\ = (\sd_read_inst|mystate[3]~7_combout\ & ((\sd_read_inst|mystate\(2)))) # (!\sd_read_inst|mystate[3]~7_combout\ & (\sd_read_inst|mystate[2]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_read_inst|mystate[2]~4_combout\,
	datac => \sd_read_inst|mystate\(2),
	datad => \sd_read_inst|mystate[3]~7_combout\,
	combout => \sd_read_inst|mystate[2]~8_combout\);

-- Location: FF_X23_Y20_N27
\sd_read_inst|mystate[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_read_inst|mystate[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|mystate\(2));

-- Location: LCCOMB_X22_Y21_N28
\sd_read_inst|mystate[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|mystate[1]~3_combout\ = (!\sd_read_inst|mystate\(2) & !\sd_read_inst|mystate\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sd_read_inst|mystate\(2),
	datad => \sd_read_inst|mystate\(1),
	combout => \sd_read_inst|mystate[1]~3_combout\);

-- Location: LCCOMB_X23_Y18_N0
\ram_rw_control_inst|ram_addr[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|ram_addr[0]~13_combout\ = (\sd_read_inst|myvalid_o~q\ & (\ram_rw_control_inst|ram_addr\(0) $ (VCC))) # (!\sd_read_inst|myvalid_o~q\ & (\ram_rw_control_inst|ram_addr\(0) & VCC))
-- \ram_rw_control_inst|ram_addr[0]~14\ = CARRY((\sd_read_inst|myvalid_o~q\ & \ram_rw_control_inst|ram_addr\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_read_inst|myvalid_o~q\,
	datab => \ram_rw_control_inst|ram_addr\(0),
	datad => VCC,
	combout => \ram_rw_control_inst|ram_addr[0]~13_combout\,
	cout => \ram_rw_control_inst|ram_addr[0]~14\);

-- Location: LCCOMB_X23_Y19_N8
\ram_rw_control_inst|counter[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|counter[0]~10_combout\ = \ram_rw_control_inst|counter\(0) $ (VCC)
-- \ram_rw_control_inst|counter[0]~11\ = CARRY(\ram_rw_control_inst|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ram_rw_control_inst|counter\(0),
	datad => VCC,
	combout => \ram_rw_control_inst|counter[0]~10_combout\,
	cout => \ram_rw_control_inst|counter[0]~11\);

-- Location: LCCOMB_X23_Y19_N16
\ram_rw_control_inst|counter[4]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|counter[4]~20_combout\ = (\ram_rw_control_inst|counter\(4) & (\ram_rw_control_inst|counter[3]~19\ $ (GND))) # (!\ram_rw_control_inst|counter\(4) & (!\ram_rw_control_inst|counter[3]~19\ & VCC))
-- \ram_rw_control_inst|counter[4]~21\ = CARRY((\ram_rw_control_inst|counter\(4) & !\ram_rw_control_inst|counter[3]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ram_rw_control_inst|counter\(4),
	datad => VCC,
	cin => \ram_rw_control_inst|counter[3]~19\,
	combout => \ram_rw_control_inst|counter[4]~20_combout\,
	cout => \ram_rw_control_inst|counter[4]~21\);

-- Location: LCCOMB_X23_Y19_N18
\ram_rw_control_inst|counter[5]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|counter[5]~22_combout\ = (\ram_rw_control_inst|counter\(5) & (!\ram_rw_control_inst|counter[4]~21\)) # (!\ram_rw_control_inst|counter\(5) & ((\ram_rw_control_inst|counter[4]~21\) # (GND)))
-- \ram_rw_control_inst|counter[5]~23\ = CARRY((!\ram_rw_control_inst|counter[4]~21\) # (!\ram_rw_control_inst|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ram_rw_control_inst|counter\(5),
	datad => VCC,
	cin => \ram_rw_control_inst|counter[4]~21\,
	combout => \ram_rw_control_inst|counter[5]~22_combout\,
	cout => \ram_rw_control_inst|counter[5]~23\);

-- Location: FF_X23_Y19_N19
\ram_rw_control_inst|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ram_rw_control_inst|counter[5]~22_combout\,
	sclr => \sd_initial_inst|ALT_INV_init_o~q\,
	ena => \ram_rw_control_inst|counter[9]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_rw_control_inst|counter\(5));

-- Location: LCCOMB_X23_Y19_N20
\ram_rw_control_inst|counter[6]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|counter[6]~24_combout\ = (\ram_rw_control_inst|counter\(6) & (\ram_rw_control_inst|counter[5]~23\ $ (GND))) # (!\ram_rw_control_inst|counter\(6) & (!\ram_rw_control_inst|counter[5]~23\ & VCC))
-- \ram_rw_control_inst|counter[6]~25\ = CARRY((\ram_rw_control_inst|counter\(6) & !\ram_rw_control_inst|counter[5]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ram_rw_control_inst|counter\(6),
	datad => VCC,
	cin => \ram_rw_control_inst|counter[5]~23\,
	combout => \ram_rw_control_inst|counter[6]~24_combout\,
	cout => \ram_rw_control_inst|counter[6]~25\);

-- Location: FF_X23_Y19_N21
\ram_rw_control_inst|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ram_rw_control_inst|counter[6]~24_combout\,
	sclr => \sd_initial_inst|ALT_INV_init_o~q\,
	ena => \ram_rw_control_inst|counter[9]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_rw_control_inst|counter\(6));

-- Location: LCCOMB_X23_Y19_N22
\ram_rw_control_inst|counter[7]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|counter[7]~26_combout\ = (\ram_rw_control_inst|counter\(7) & (!\ram_rw_control_inst|counter[6]~25\)) # (!\ram_rw_control_inst|counter\(7) & ((\ram_rw_control_inst|counter[6]~25\) # (GND)))
-- \ram_rw_control_inst|counter[7]~27\ = CARRY((!\ram_rw_control_inst|counter[6]~25\) # (!\ram_rw_control_inst|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ram_rw_control_inst|counter\(7),
	datad => VCC,
	cin => \ram_rw_control_inst|counter[6]~25\,
	combout => \ram_rw_control_inst|counter[7]~26_combout\,
	cout => \ram_rw_control_inst|counter[7]~27\);

-- Location: FF_X23_Y19_N23
\ram_rw_control_inst|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ram_rw_control_inst|counter[7]~26_combout\,
	sclr => \sd_initial_inst|ALT_INV_init_o~q\,
	ena => \ram_rw_control_inst|counter[9]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_rw_control_inst|counter\(7));

-- Location: LCCOMB_X23_Y19_N24
\ram_rw_control_inst|counter[8]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|counter[8]~28_combout\ = (\ram_rw_control_inst|counter\(8) & (\ram_rw_control_inst|counter[7]~27\ $ (GND))) # (!\ram_rw_control_inst|counter\(8) & (!\ram_rw_control_inst|counter[7]~27\ & VCC))
-- \ram_rw_control_inst|counter[8]~29\ = CARRY((\ram_rw_control_inst|counter\(8) & !\ram_rw_control_inst|counter[7]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ram_rw_control_inst|counter\(8),
	datad => VCC,
	cin => \ram_rw_control_inst|counter[7]~27\,
	combout => \ram_rw_control_inst|counter[8]~28_combout\,
	cout => \ram_rw_control_inst|counter[8]~29\);

-- Location: FF_X23_Y19_N25
\ram_rw_control_inst|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ram_rw_control_inst|counter[8]~28_combout\,
	sclr => \sd_initial_inst|ALT_INV_init_o~q\,
	ena => \ram_rw_control_inst|counter[9]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_rw_control_inst|counter\(8));

-- Location: LCCOMB_X23_Y19_N2
\ram_rw_control_inst|Equal4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|Equal4~1_combout\ = (\ram_rw_control_inst|counter\(5) & (\ram_rw_control_inst|counter\(6) & (\ram_rw_control_inst|counter\(7) & \ram_rw_control_inst|counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_rw_control_inst|counter\(5),
	datab => \ram_rw_control_inst|counter\(6),
	datac => \ram_rw_control_inst|counter\(7),
	datad => \ram_rw_control_inst|counter\(8),
	combout => \ram_rw_control_inst|Equal4~1_combout\);

-- Location: LCCOMB_X23_Y19_N26
\ram_rw_control_inst|counter[9]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|counter[9]~30_combout\ = \ram_rw_control_inst|counter\(9) $ (\ram_rw_control_inst|counter[8]~29\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ram_rw_control_inst|counter\(9),
	cin => \ram_rw_control_inst|counter[8]~29\,
	combout => \ram_rw_control_inst|counter[9]~30_combout\);

-- Location: FF_X23_Y19_N27
\ram_rw_control_inst|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ram_rw_control_inst|counter[9]~30_combout\,
	sclr => \sd_initial_inst|ALT_INV_init_o~q\,
	ena => \ram_rw_control_inst|counter[9]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_rw_control_inst|counter\(9));

-- Location: LCCOMB_X23_Y19_N0
\ram_rw_control_inst|counter[9]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|counter[9]~14_combout\ = (\ram_rw_control_inst|counter\(0) & \sd_initial_inst|init_o~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ram_rw_control_inst|counter\(0),
	datad => \sd_initial_inst|init_o~q\,
	combout => \ram_rw_control_inst|counter[9]~14_combout\);

-- Location: LCCOMB_X23_Y19_N30
\ram_rw_control_inst|counter[9]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|counter[9]~15_combout\ = (((!\ram_rw_control_inst|counter[9]~14_combout\) # (!\ram_rw_control_inst|counter\(9))) # (!\ram_rw_control_inst|Equal4~1_combout\)) # (!\ram_rw_control_inst|Equal4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_rw_control_inst|Equal4~0_combout\,
	datab => \ram_rw_control_inst|Equal4~1_combout\,
	datac => \ram_rw_control_inst|counter\(9),
	datad => \ram_rw_control_inst|counter[9]~14_combout\,
	combout => \ram_rw_control_inst|counter[9]~15_combout\);

-- Location: FF_X23_Y19_N9
\ram_rw_control_inst|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ram_rw_control_inst|counter[0]~10_combout\,
	sclr => \sd_initial_inst|ALT_INV_init_o~q\,
	ena => \ram_rw_control_inst|counter[9]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_rw_control_inst|counter\(0));

-- Location: LCCOMB_X23_Y19_N12
\ram_rw_control_inst|counter[2]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|counter[2]~16_combout\ = (\ram_rw_control_inst|counter\(2) & (\ram_rw_control_inst|counter[1]~13\ $ (GND))) # (!\ram_rw_control_inst|counter\(2) & (!\ram_rw_control_inst|counter[1]~13\ & VCC))
-- \ram_rw_control_inst|counter[2]~17\ = CARRY((\ram_rw_control_inst|counter\(2) & !\ram_rw_control_inst|counter[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ram_rw_control_inst|counter\(2),
	datad => VCC,
	cin => \ram_rw_control_inst|counter[1]~13\,
	combout => \ram_rw_control_inst|counter[2]~16_combout\,
	cout => \ram_rw_control_inst|counter[2]~17\);

-- Location: LCCOMB_X23_Y19_N14
\ram_rw_control_inst|counter[3]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|counter[3]~18_combout\ = (\ram_rw_control_inst|counter\(3) & (!\ram_rw_control_inst|counter[2]~17\)) # (!\ram_rw_control_inst|counter\(3) & ((\ram_rw_control_inst|counter[2]~17\) # (GND)))
-- \ram_rw_control_inst|counter[3]~19\ = CARRY((!\ram_rw_control_inst|counter[2]~17\) # (!\ram_rw_control_inst|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ram_rw_control_inst|counter\(3),
	datad => VCC,
	cin => \ram_rw_control_inst|counter[2]~17\,
	combout => \ram_rw_control_inst|counter[3]~18_combout\,
	cout => \ram_rw_control_inst|counter[3]~19\);

-- Location: FF_X23_Y19_N15
\ram_rw_control_inst|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ram_rw_control_inst|counter[3]~18_combout\,
	sclr => \sd_initial_inst|ALT_INV_init_o~q\,
	ena => \ram_rw_control_inst|counter[9]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_rw_control_inst|counter\(3));

-- Location: FF_X23_Y19_N17
\ram_rw_control_inst|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ram_rw_control_inst|counter[4]~20_combout\,
	sclr => \sd_initial_inst|ALT_INV_init_o~q\,
	ena => \ram_rw_control_inst|counter[9]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_rw_control_inst|counter\(4));

-- Location: FF_X23_Y19_N13
\ram_rw_control_inst|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ram_rw_control_inst|counter[2]~16_combout\,
	sclr => \sd_initial_inst|ALT_INV_init_o~q\,
	ena => \ram_rw_control_inst|counter[9]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_rw_control_inst|counter\(2));

-- Location: LCCOMB_X23_Y19_N28
\ram_rw_control_inst|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|Equal4~0_combout\ = (\ram_rw_control_inst|counter\(1) & (\ram_rw_control_inst|counter\(4) & (\ram_rw_control_inst|counter\(3) & \ram_rw_control_inst|counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_rw_control_inst|counter\(1),
	datab => \ram_rw_control_inst|counter\(4),
	datac => \ram_rw_control_inst|counter\(3),
	datad => \ram_rw_control_inst|counter\(2),
	combout => \ram_rw_control_inst|Equal4~0_combout\);

-- Location: LCCOMB_X23_Y19_N4
\ram_rw_control_inst|Equal4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|Equal4~2_combout\ = (\ram_rw_control_inst|counter\(9) & (\ram_rw_control_inst|Equal4~0_combout\ & (!\ram_rw_control_inst|counter\(0) & \ram_rw_control_inst|Equal4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_rw_control_inst|counter\(9),
	datab => \ram_rw_control_inst|Equal4~0_combout\,
	datac => \ram_rw_control_inst|counter\(0),
	datad => \ram_rw_control_inst|Equal4~1_combout\,
	combout => \ram_rw_control_inst|Equal4~2_combout\);

-- Location: FF_X23_Y18_N1
\ram_rw_control_inst|ram_addr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ram_rw_control_inst|ram_addr[0]~13_combout\,
	sclr => \ram_rw_control_inst|Equal4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_rw_control_inst|ram_addr\(0));

-- Location: LCCOMB_X23_Y18_N2
\ram_rw_control_inst|ram_addr[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|ram_addr[1]~15_combout\ = (\ram_rw_control_inst|ram_addr\(1) & (!\ram_rw_control_inst|ram_addr[0]~14\)) # (!\ram_rw_control_inst|ram_addr\(1) & ((\ram_rw_control_inst|ram_addr[0]~14\) # (GND)))
-- \ram_rw_control_inst|ram_addr[1]~16\ = CARRY((!\ram_rw_control_inst|ram_addr[0]~14\) # (!\ram_rw_control_inst|ram_addr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ram_rw_control_inst|ram_addr\(1),
	datad => VCC,
	cin => \ram_rw_control_inst|ram_addr[0]~14\,
	combout => \ram_rw_control_inst|ram_addr[1]~15_combout\,
	cout => \ram_rw_control_inst|ram_addr[1]~16\);

-- Location: FF_X23_Y18_N3
\ram_rw_control_inst|ram_addr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ram_rw_control_inst|ram_addr[1]~15_combout\,
	sclr => \ram_rw_control_inst|Equal4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_rw_control_inst|ram_addr\(1));

-- Location: LCCOMB_X23_Y18_N4
\ram_rw_control_inst|ram_addr[2]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|ram_addr[2]~17_combout\ = (\ram_rw_control_inst|ram_addr\(2) & (\ram_rw_control_inst|ram_addr[1]~16\ $ (GND))) # (!\ram_rw_control_inst|ram_addr\(2) & (!\ram_rw_control_inst|ram_addr[1]~16\ & VCC))
-- \ram_rw_control_inst|ram_addr[2]~18\ = CARRY((\ram_rw_control_inst|ram_addr\(2) & !\ram_rw_control_inst|ram_addr[1]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ram_rw_control_inst|ram_addr\(2),
	datad => VCC,
	cin => \ram_rw_control_inst|ram_addr[1]~16\,
	combout => \ram_rw_control_inst|ram_addr[2]~17_combout\,
	cout => \ram_rw_control_inst|ram_addr[2]~18\);

-- Location: FF_X23_Y18_N5
\ram_rw_control_inst|ram_addr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ram_rw_control_inst|ram_addr[2]~17_combout\,
	sclr => \ram_rw_control_inst|Equal4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_rw_control_inst|ram_addr\(2));

-- Location: LCCOMB_X23_Y18_N6
\ram_rw_control_inst|ram_addr[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|ram_addr[3]~19_combout\ = (\ram_rw_control_inst|ram_addr\(3) & (!\ram_rw_control_inst|ram_addr[2]~18\)) # (!\ram_rw_control_inst|ram_addr\(3) & ((\ram_rw_control_inst|ram_addr[2]~18\) # (GND)))
-- \ram_rw_control_inst|ram_addr[3]~20\ = CARRY((!\ram_rw_control_inst|ram_addr[2]~18\) # (!\ram_rw_control_inst|ram_addr\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ram_rw_control_inst|ram_addr\(3),
	datad => VCC,
	cin => \ram_rw_control_inst|ram_addr[2]~18\,
	combout => \ram_rw_control_inst|ram_addr[3]~19_combout\,
	cout => \ram_rw_control_inst|ram_addr[3]~20\);

-- Location: LCCOMB_X23_Y18_N8
\ram_rw_control_inst|ram_addr[4]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|ram_addr[4]~21_combout\ = (\ram_rw_control_inst|ram_addr\(4) & (\ram_rw_control_inst|ram_addr[3]~20\ $ (GND))) # (!\ram_rw_control_inst|ram_addr\(4) & (!\ram_rw_control_inst|ram_addr[3]~20\ & VCC))
-- \ram_rw_control_inst|ram_addr[4]~22\ = CARRY((\ram_rw_control_inst|ram_addr\(4) & !\ram_rw_control_inst|ram_addr[3]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ram_rw_control_inst|ram_addr\(4),
	datad => VCC,
	cin => \ram_rw_control_inst|ram_addr[3]~20\,
	combout => \ram_rw_control_inst|ram_addr[4]~21_combout\,
	cout => \ram_rw_control_inst|ram_addr[4]~22\);

-- Location: FF_X23_Y18_N9
\ram_rw_control_inst|ram_addr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ram_rw_control_inst|ram_addr[4]~21_combout\,
	sclr => \ram_rw_control_inst|Equal4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_rw_control_inst|ram_addr\(4));

-- Location: LCCOMB_X23_Y18_N10
\ram_rw_control_inst|ram_addr[5]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|ram_addr[5]~23_combout\ = (\ram_rw_control_inst|ram_addr\(5) & (!\ram_rw_control_inst|ram_addr[4]~22\)) # (!\ram_rw_control_inst|ram_addr\(5) & ((\ram_rw_control_inst|ram_addr[4]~22\) # (GND)))
-- \ram_rw_control_inst|ram_addr[5]~24\ = CARRY((!\ram_rw_control_inst|ram_addr[4]~22\) # (!\ram_rw_control_inst|ram_addr\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ram_rw_control_inst|ram_addr\(5),
	datad => VCC,
	cin => \ram_rw_control_inst|ram_addr[4]~22\,
	combout => \ram_rw_control_inst|ram_addr[5]~23_combout\,
	cout => \ram_rw_control_inst|ram_addr[5]~24\);

-- Location: LCCOMB_X23_Y18_N12
\ram_rw_control_inst|ram_addr[6]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|ram_addr[6]~25_combout\ = (\ram_rw_control_inst|ram_addr\(6) & (\ram_rw_control_inst|ram_addr[5]~24\ $ (GND))) # (!\ram_rw_control_inst|ram_addr\(6) & (!\ram_rw_control_inst|ram_addr[5]~24\ & VCC))
-- \ram_rw_control_inst|ram_addr[6]~26\ = CARRY((\ram_rw_control_inst|ram_addr\(6) & !\ram_rw_control_inst|ram_addr[5]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ram_rw_control_inst|ram_addr\(6),
	datad => VCC,
	cin => \ram_rw_control_inst|ram_addr[5]~24\,
	combout => \ram_rw_control_inst|ram_addr[6]~25_combout\,
	cout => \ram_rw_control_inst|ram_addr[6]~26\);

-- Location: FF_X23_Y18_N13
\ram_rw_control_inst|ram_addr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ram_rw_control_inst|ram_addr[6]~25_combout\,
	sclr => \ram_rw_control_inst|Equal4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_rw_control_inst|ram_addr\(6));

-- Location: LCCOMB_X23_Y18_N14
\ram_rw_control_inst|ram_addr[7]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|ram_addr[7]~27_combout\ = (\ram_rw_control_inst|ram_addr\(7) & (!\ram_rw_control_inst|ram_addr[6]~26\)) # (!\ram_rw_control_inst|ram_addr\(7) & ((\ram_rw_control_inst|ram_addr[6]~26\) # (GND)))
-- \ram_rw_control_inst|ram_addr[7]~28\ = CARRY((!\ram_rw_control_inst|ram_addr[6]~26\) # (!\ram_rw_control_inst|ram_addr\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ram_rw_control_inst|ram_addr\(7),
	datad => VCC,
	cin => \ram_rw_control_inst|ram_addr[6]~26\,
	combout => \ram_rw_control_inst|ram_addr[7]~27_combout\,
	cout => \ram_rw_control_inst|ram_addr[7]~28\);

-- Location: FF_X23_Y18_N15
\ram_rw_control_inst|ram_addr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ram_rw_control_inst|ram_addr[7]~27_combout\,
	sclr => \ram_rw_control_inst|Equal4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_rw_control_inst|ram_addr\(7));

-- Location: LCCOMB_X23_Y18_N16
\ram_rw_control_inst|ram_addr[8]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|ram_addr[8]~29_combout\ = (\ram_rw_control_inst|ram_addr\(8) & (\ram_rw_control_inst|ram_addr[7]~28\ $ (GND))) # (!\ram_rw_control_inst|ram_addr\(8) & (!\ram_rw_control_inst|ram_addr[7]~28\ & VCC))
-- \ram_rw_control_inst|ram_addr[8]~30\ = CARRY((\ram_rw_control_inst|ram_addr\(8) & !\ram_rw_control_inst|ram_addr[7]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ram_rw_control_inst|ram_addr\(8),
	datad => VCC,
	cin => \ram_rw_control_inst|ram_addr[7]~28\,
	combout => \ram_rw_control_inst|ram_addr[8]~29_combout\,
	cout => \ram_rw_control_inst|ram_addr[8]~30\);

-- Location: LCCOMB_X23_Y18_N18
\ram_rw_control_inst|ram_addr[9]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|ram_addr[9]~31_combout\ = (\ram_rw_control_inst|ram_addr\(9) & (!\ram_rw_control_inst|ram_addr[8]~30\)) # (!\ram_rw_control_inst|ram_addr\(9) & ((\ram_rw_control_inst|ram_addr[8]~30\) # (GND)))
-- \ram_rw_control_inst|ram_addr[9]~32\ = CARRY((!\ram_rw_control_inst|ram_addr[8]~30\) # (!\ram_rw_control_inst|ram_addr\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ram_rw_control_inst|ram_addr\(9),
	datad => VCC,
	cin => \ram_rw_control_inst|ram_addr[8]~30\,
	combout => \ram_rw_control_inst|ram_addr[9]~31_combout\,
	cout => \ram_rw_control_inst|ram_addr[9]~32\);

-- Location: FF_X23_Y18_N19
\ram_rw_control_inst|ram_addr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ram_rw_control_inst|ram_addr[9]~31_combout\,
	sclr => \ram_rw_control_inst|Equal4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_rw_control_inst|ram_addr\(9));

-- Location: LCCOMB_X23_Y18_N20
\ram_rw_control_inst|ram_addr[10]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|ram_addr[10]~33_combout\ = (\ram_rw_control_inst|ram_addr\(10) & (\ram_rw_control_inst|ram_addr[9]~32\ $ (GND))) # (!\ram_rw_control_inst|ram_addr\(10) & (!\ram_rw_control_inst|ram_addr[9]~32\ & VCC))
-- \ram_rw_control_inst|ram_addr[10]~34\ = CARRY((\ram_rw_control_inst|ram_addr\(10) & !\ram_rw_control_inst|ram_addr[9]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ram_rw_control_inst|ram_addr\(10),
	datad => VCC,
	cin => \ram_rw_control_inst|ram_addr[9]~32\,
	combout => \ram_rw_control_inst|ram_addr[10]~33_combout\,
	cout => \ram_rw_control_inst|ram_addr[10]~34\);

-- Location: FF_X23_Y18_N21
\ram_rw_control_inst|ram_addr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ram_rw_control_inst|ram_addr[10]~33_combout\,
	sclr => \ram_rw_control_inst|Equal4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_rw_control_inst|ram_addr\(10));

-- Location: LCCOMB_X23_Y18_N22
\ram_rw_control_inst|ram_addr[11]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|ram_addr[11]~35_combout\ = (\ram_rw_control_inst|ram_addr\(11) & (!\ram_rw_control_inst|ram_addr[10]~34\)) # (!\ram_rw_control_inst|ram_addr\(11) & ((\ram_rw_control_inst|ram_addr[10]~34\) # (GND)))
-- \ram_rw_control_inst|ram_addr[11]~36\ = CARRY((!\ram_rw_control_inst|ram_addr[10]~34\) # (!\ram_rw_control_inst|ram_addr\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ram_rw_control_inst|ram_addr\(11),
	datad => VCC,
	cin => \ram_rw_control_inst|ram_addr[10]~34\,
	combout => \ram_rw_control_inst|ram_addr[11]~35_combout\,
	cout => \ram_rw_control_inst|ram_addr[11]~36\);

-- Location: FF_X23_Y18_N23
\ram_rw_control_inst|ram_addr[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ram_rw_control_inst|ram_addr[11]~35_combout\,
	sclr => \ram_rw_control_inst|Equal4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_rw_control_inst|ram_addr\(11));

-- Location: FF_X23_Y18_N7
\ram_rw_control_inst|ram_addr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ram_rw_control_inst|ram_addr[3]~19_combout\,
	sclr => \ram_rw_control_inst|Equal4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_rw_control_inst|ram_addr\(3));

-- Location: LCCOMB_X23_Y18_N28
\ram_rw_control_inst|always1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|always1~1_combout\ = (\ram_rw_control_inst|ram_addr\(5) & (\ram_rw_control_inst|ram_addr\(6) & (\ram_rw_control_inst|ram_addr\(3) & \ram_rw_control_inst|ram_addr\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_rw_control_inst|ram_addr\(5),
	datab => \ram_rw_control_inst|ram_addr\(6),
	datac => \ram_rw_control_inst|ram_addr\(3),
	datad => \ram_rw_control_inst|ram_addr\(4),
	combout => \ram_rw_control_inst|always1~1_combout\);

-- Location: LCCOMB_X23_Y18_N26
\ram_rw_control_inst|always1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|always1~0_combout\ = (\sd_read_inst|myvalid_o~q\ & (\ram_rw_control_inst|ram_addr\(1) & (\ram_rw_control_inst|ram_addr\(0) & \ram_rw_control_inst|ram_addr\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_read_inst|myvalid_o~q\,
	datab => \ram_rw_control_inst|ram_addr\(1),
	datac => \ram_rw_control_inst|ram_addr\(0),
	datad => \ram_rw_control_inst|ram_addr\(2),
	combout => \ram_rw_control_inst|always1~0_combout\);

-- Location: LCCOMB_X22_Y18_N4
\ram_rw_control_inst|always1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|always1~3_combout\ = (\ram_rw_control_inst|always1~2_combout\ & (\ram_rw_control_inst|ram_addr\(11) & (\ram_rw_control_inst|always1~1_combout\ & \ram_rw_control_inst|always1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_rw_control_inst|always1~2_combout\,
	datab => \ram_rw_control_inst|ram_addr\(11),
	datac => \ram_rw_control_inst|always1~1_combout\,
	datad => \ram_rw_control_inst|always1~0_combout\,
	combout => \ram_rw_control_inst|always1~3_combout\);

-- Location: LCCOMB_X21_Y18_N12
\ram_rw_control_inst|read_req~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|read_req~0_combout\ = (\ram_rw_control_inst|Equal4~2_combout\) # ((\ram_rw_control_inst|read_req~q\ & ((\ram_rw_control_inst|ram_addr\(12)) # (!\ram_rw_control_inst|always1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_rw_control_inst|ram_addr\(12),
	datab => \ram_rw_control_inst|always1~3_combout\,
	datac => \ram_rw_control_inst|read_req~q\,
	datad => \ram_rw_control_inst|Equal4~2_combout\,
	combout => \ram_rw_control_inst|read_req~0_combout\);

-- Location: FF_X21_Y18_N13
\ram_rw_control_inst|read_req\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ram_rw_control_inst|read_req~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_rw_control_inst|read_req~q\);

-- Location: LCCOMB_X21_Y18_N10
\ram_rw_control_inst|read_req_a~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|read_req_a~feeder_combout\ = \ram_rw_control_inst|read_req~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ram_rw_control_inst|read_req~q\,
	combout => \ram_rw_control_inst|read_req_a~feeder_combout\);

-- Location: FF_X21_Y18_N11
\ram_rw_control_inst|read_req_a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	d => \ram_rw_control_inst|read_req_a~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_rw_control_inst|read_req_a~q\);

-- Location: LCCOMB_X19_Y18_N28
\ram_rw_control_inst|read_req_b~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|read_req_b~feeder_combout\ = \ram_rw_control_inst|read_req_a~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ram_rw_control_inst|read_req_a~q\,
	combout => \ram_rw_control_inst|read_req_b~feeder_combout\);

-- Location: FF_X19_Y18_N29
\ram_rw_control_inst|read_req_b\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	d => \ram_rw_control_inst|read_req_b~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_rw_control_inst|read_req_b~q\);

-- Location: LCCOMB_X19_Y18_N10
\ram_rw_control_inst|Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|Add3~2_combout\ = (\ram_rw_control_inst|Add3~0_combout\ & (\sd_initial_inst|init_o~q\ & ((\ram_rw_control_inst|read_req_a~q\) # (!\ram_rw_control_inst|read_req_b~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_rw_control_inst|Add3~0_combout\,
	datab => \sd_initial_inst|init_o~q\,
	datac => \ram_rw_control_inst|read_req_a~q\,
	datad => \ram_rw_control_inst|read_req_b~q\,
	combout => \ram_rw_control_inst|Add3~2_combout\);

-- Location: FF_X18_Y18_N3
\ram_rw_control_inst|ram_raddr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	asdata => \ram_rw_control_inst|Add3~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_rw_control_inst|ram_raddr\(1));

-- Location: LCCOMB_X18_Y18_N4
\ram_rw_control_inst|Add3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|Add3~3_combout\ = (\ram_rw_control_inst|ram_raddr\(2) & (!\ram_rw_control_inst|Add3~1\)) # (!\ram_rw_control_inst|ram_raddr\(2) & ((\ram_rw_control_inst|Add3~1\) # (GND)))
-- \ram_rw_control_inst|Add3~4\ = CARRY((!\ram_rw_control_inst|Add3~1\) # (!\ram_rw_control_inst|ram_raddr\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ram_rw_control_inst|ram_raddr\(2),
	datad => VCC,
	cin => \ram_rw_control_inst|Add3~1\,
	combout => \ram_rw_control_inst|Add3~3_combout\,
	cout => \ram_rw_control_inst|Add3~4\);

-- Location: LCCOMB_X19_Y18_N16
\ram_rw_control_inst|Add3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|Add3~5_combout\ = (\sd_initial_inst|init_o~q\ & (\ram_rw_control_inst|Add3~3_combout\ & ((\ram_rw_control_inst|read_req_a~q\) # (!\ram_rw_control_inst|read_req_b~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|init_o~q\,
	datab => \ram_rw_control_inst|read_req_a~q\,
	datac => \ram_rw_control_inst|Add3~3_combout\,
	datad => \ram_rw_control_inst|read_req_b~q\,
	combout => \ram_rw_control_inst|Add3~5_combout\);

-- Location: FF_X18_Y18_N5
\ram_rw_control_inst|ram_raddr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	asdata => \ram_rw_control_inst|Add3~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_rw_control_inst|ram_raddr\(2));

-- Location: LCCOMB_X19_Y18_N4
\ram_rw_control_inst|Add3~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|Add3~23_combout\ = (\ram_rw_control_inst|Add3~21_combout\ & (\sd_initial_inst|init_o~q\ & ((\ram_rw_control_inst|read_req_a~q\) # (!\ram_rw_control_inst|read_req_b~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_rw_control_inst|Add3~21_combout\,
	datab => \sd_initial_inst|init_o~q\,
	datac => \ram_rw_control_inst|read_req_a~q\,
	datad => \ram_rw_control_inst|read_req_b~q\,
	combout => \ram_rw_control_inst|Add3~23_combout\);

-- Location: FF_X18_Y18_N17
\ram_rw_control_inst|ram_raddr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	asdata => \ram_rw_control_inst|Add3~23_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_rw_control_inst|ram_raddr\(8));

-- Location: LCCOMB_X19_Y18_N2
\ram_rw_control_inst|Add3~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|Add3~20_combout\ = (\ram_rw_control_inst|Add3~18_combout\ & (\sd_initial_inst|init_o~q\ & ((\ram_rw_control_inst|read_req_a~q\) # (!\ram_rw_control_inst|read_req_b~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_rw_control_inst|Add3~18_combout\,
	datab => \sd_initial_inst|init_o~q\,
	datac => \ram_rw_control_inst|read_req_a~q\,
	datad => \ram_rw_control_inst|read_req_b~q\,
	combout => \ram_rw_control_inst|Add3~20_combout\);

-- Location: FF_X18_Y18_N15
\ram_rw_control_inst|ram_raddr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	asdata => \ram_rw_control_inst|Add3~20_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_rw_control_inst|ram_raddr\(7));

-- Location: LCCOMB_X19_Y18_N20
\ram_rw_control_inst|Add3~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|Add3~11_combout\ = (\ram_rw_control_inst|Add3~9_combout\ & (\sd_initial_inst|init_o~q\ & ((\ram_rw_control_inst|read_req_a~q\) # (!\ram_rw_control_inst|read_req_b~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_rw_control_inst|Add3~9_combout\,
	datab => \sd_initial_inst|init_o~q\,
	datac => \ram_rw_control_inst|read_req_a~q\,
	datad => \ram_rw_control_inst|read_req_b~q\,
	combout => \ram_rw_control_inst|Add3~11_combout\);

-- Location: FF_X18_Y18_N9
\ram_rw_control_inst|ram_raddr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	asdata => \ram_rw_control_inst|Add3~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_rw_control_inst|ram_raddr\(4));

-- Location: LCCOMB_X18_Y18_N6
\ram_rw_control_inst|Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|Add3~6_combout\ = (\ram_rw_control_inst|ram_raddr\(3) & (\ram_rw_control_inst|Add3~4\ $ (GND))) # (!\ram_rw_control_inst|ram_raddr\(3) & (!\ram_rw_control_inst|Add3~4\ & VCC))
-- \ram_rw_control_inst|Add3~7\ = CARRY((\ram_rw_control_inst|ram_raddr\(3) & !\ram_rw_control_inst|Add3~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ram_rw_control_inst|ram_raddr\(3),
	datad => VCC,
	cin => \ram_rw_control_inst|Add3~4\,
	combout => \ram_rw_control_inst|Add3~6_combout\,
	cout => \ram_rw_control_inst|Add3~7\);

-- Location: LCCOMB_X18_Y18_N18
\ram_rw_control_inst|Add3~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|Add3~24_combout\ = (\ram_rw_control_inst|ram_raddr\(9) & (\ram_rw_control_inst|Add3~22\ $ (GND))) # (!\ram_rw_control_inst|ram_raddr\(9) & (!\ram_rw_control_inst|Add3~22\ & VCC))
-- \ram_rw_control_inst|Add3~25\ = CARRY((\ram_rw_control_inst|ram_raddr\(9) & !\ram_rw_control_inst|Add3~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ram_rw_control_inst|ram_raddr\(9),
	datad => VCC,
	cin => \ram_rw_control_inst|Add3~22\,
	combout => \ram_rw_control_inst|Add3~24_combout\,
	cout => \ram_rw_control_inst|Add3~25\);

-- Location: LCCOMB_X19_Y18_N14
\ram_rw_control_inst|Add3~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|Add3~26_combout\ = (\sd_initial_inst|init_o~q\ & (\ram_rw_control_inst|Add3~24_combout\ & ((\ram_rw_control_inst|read_req_a~q\) # (!\ram_rw_control_inst|read_req_b~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|init_o~q\,
	datab => \ram_rw_control_inst|read_req_b~q\,
	datac => \ram_rw_control_inst|read_req_a~q\,
	datad => \ram_rw_control_inst|Add3~24_combout\,
	combout => \ram_rw_control_inst|Add3~26_combout\);

-- Location: FF_X18_Y18_N19
\ram_rw_control_inst|ram_raddr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	asdata => \ram_rw_control_inst|Add3~26_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_rw_control_inst|ram_raddr\(9));

-- Location: LCCOMB_X18_Y18_N20
\ram_rw_control_inst|Add3~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|Add3~27_combout\ = (\ram_rw_control_inst|ram_raddr\(10) & (!\ram_rw_control_inst|Add3~25\)) # (!\ram_rw_control_inst|ram_raddr\(10) & ((\ram_rw_control_inst|Add3~25\) # (GND)))
-- \ram_rw_control_inst|Add3~28\ = CARRY((!\ram_rw_control_inst|Add3~25\) # (!\ram_rw_control_inst|ram_raddr\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ram_rw_control_inst|ram_raddr\(10),
	datad => VCC,
	cin => \ram_rw_control_inst|Add3~25\,
	combout => \ram_rw_control_inst|Add3~27_combout\,
	cout => \ram_rw_control_inst|Add3~28\);

-- Location: LCCOMB_X19_Y18_N8
\ram_rw_control_inst|Add3~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|Add3~29_combout\ = (\sd_initial_inst|init_o~q\ & (\ram_rw_control_inst|Add3~27_combout\ & ((\ram_rw_control_inst|read_req_a~q\) # (!\ram_rw_control_inst|read_req_b~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|init_o~q\,
	datab => \ram_rw_control_inst|read_req_b~q\,
	datac => \ram_rw_control_inst|read_req_a~q\,
	datad => \ram_rw_control_inst|Add3~27_combout\,
	combout => \ram_rw_control_inst|Add3~29_combout\);

-- Location: FF_X18_Y18_N21
\ram_rw_control_inst|ram_raddr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	asdata => \ram_rw_control_inst|Add3~29_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_rw_control_inst|ram_raddr\(10));

-- Location: LCCOMB_X18_Y18_N22
\ram_rw_control_inst|Add3~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|Add3~30_combout\ = (\ram_rw_control_inst|ram_raddr\(11) & (\ram_rw_control_inst|Add3~28\ $ (GND))) # (!\ram_rw_control_inst|ram_raddr\(11) & (!\ram_rw_control_inst|Add3~28\ & VCC))
-- \ram_rw_control_inst|Add3~31\ = CARRY((\ram_rw_control_inst|ram_raddr\(11) & !\ram_rw_control_inst|Add3~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ram_rw_control_inst|ram_raddr\(11),
	datad => VCC,
	cin => \ram_rw_control_inst|Add3~28\,
	combout => \ram_rw_control_inst|Add3~30_combout\,
	cout => \ram_rw_control_inst|Add3~31\);

-- Location: LCCOMB_X18_Y18_N24
\ram_rw_control_inst|Add3~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|Add3~33_combout\ = \ram_rw_control_inst|Add3~31\ $ (\ram_rw_control_inst|ram_raddr\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \ram_rw_control_inst|ram_raddr\(12),
	cin => \ram_rw_control_inst|Add3~31\,
	combout => \ram_rw_control_inst|Add3~33_combout\);

-- Location: LCCOMB_X19_Y18_N24
\ram_rw_control_inst|Add3~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|Add3~35_combout\ = (\sd_initial_inst|init_o~q\ & (\ram_rw_control_inst|Add3~33_combout\ & ((\ram_rw_control_inst|read_req_a~q\) # (!\ram_rw_control_inst|read_req_b~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|init_o~q\,
	datab => \ram_rw_control_inst|read_req_b~q\,
	datac => \ram_rw_control_inst|read_req_a~q\,
	datad => \ram_rw_control_inst|Add3~33_combout\,
	combout => \ram_rw_control_inst|Add3~35_combout\);

-- Location: FF_X18_Y18_N29
\ram_rw_control_inst|ram_raddr[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	asdata => \ram_rw_control_inst|Add3~35_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_rw_control_inst|ram_raddr\(12));

-- Location: LCCOMB_X18_Y18_N28
\ram_rw_control_inst|next_read_reg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|next_read_reg~0_combout\ = (\mywav_inst|sinwave_gen_inst|myvalid~q\ & (!\ram_rw_control_inst|ram_raddr\(2) & (\ram_rw_control_inst|ram_raddr\(12) $ (\ram_rw_control_inst|ram_raddr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mywav_inst|sinwave_gen_inst|myvalid~q\,
	datab => \ram_rw_control_inst|ram_raddr\(2),
	datac => \ram_rw_control_inst|ram_raddr\(12),
	datad => \ram_rw_control_inst|ram_raddr\(1),
	combout => \ram_rw_control_inst|next_read_reg~0_combout\);

-- Location: LCCOMB_X19_Y18_N26
\ram_rw_control_inst|Add3~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|Add3~32_combout\ = (\sd_initial_inst|init_o~q\ & (\ram_rw_control_inst|Add3~30_combout\ & ((\ram_rw_control_inst|read_req_a~q\) # (!\ram_rw_control_inst|read_req_b~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|init_o~q\,
	datab => \ram_rw_control_inst|read_req_b~q\,
	datac => \ram_rw_control_inst|read_req_a~q\,
	datad => \ram_rw_control_inst|Add3~30_combout\,
	combout => \ram_rw_control_inst|Add3~32_combout\);

-- Location: FF_X18_Y18_N23
\ram_rw_control_inst|ram_raddr[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	asdata => \ram_rw_control_inst|Add3~32_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_rw_control_inst|ram_raddr\(11));

-- Location: LCCOMB_X18_Y18_N0
\ram_rw_control_inst|next_read_reg~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|next_read_reg~2_combout\ = (!\ram_rw_control_inst|ram_raddr\(9) & (!\ram_rw_control_inst|ram_raddr\(10) & (!\ram_rw_control_inst|ram_raddr\(7) & !\ram_rw_control_inst|ram_raddr\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_rw_control_inst|ram_raddr\(9),
	datab => \ram_rw_control_inst|ram_raddr\(10),
	datac => \ram_rw_control_inst|ram_raddr\(7),
	datad => \ram_rw_control_inst|ram_raddr\(8),
	combout => \ram_rw_control_inst|next_read_reg~2_combout\);

-- Location: LCCOMB_X18_Y18_N26
\ram_rw_control_inst|next_read_reg~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|next_read_reg~3_combout\ = (\ram_rw_control_inst|next_read_reg~1_combout\ & (\ram_rw_control_inst|next_read_reg~0_combout\ & (!\ram_rw_control_inst|ram_raddr\(11) & \ram_rw_control_inst|next_read_reg~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_rw_control_inst|next_read_reg~1_combout\,
	datab => \ram_rw_control_inst|next_read_reg~0_combout\,
	datac => \ram_rw_control_inst|ram_raddr\(11),
	datad => \ram_rw_control_inst|next_read_reg~2_combout\,
	combout => \ram_rw_control_inst|next_read_reg~3_combout\);

-- Location: LCCOMB_X21_Y18_N24
\ram_rw_control_inst|next_read_reg~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|next_read_reg~4_combout\ = (\ram_rw_control_inst|next_read_reg~3_combout\) # ((!\ram_rw_control_inst|always1~3_combout\ & \ram_rw_control_inst|next_read_reg~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ram_rw_control_inst|always1~3_combout\,
	datac => \ram_rw_control_inst|next_read_reg~q\,
	datad => \ram_rw_control_inst|next_read_reg~3_combout\,
	combout => \ram_rw_control_inst|next_read_reg~4_combout\);

-- Location: FF_X21_Y18_N25
\ram_rw_control_inst|next_read_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	d => \ram_rw_control_inst|next_read_reg~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_rw_control_inst|next_read_reg~q\);

-- Location: LCCOMB_X21_Y20_N24
\ram_rw_control_inst|next_read_reg_r1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|next_read_reg_r1~feeder_combout\ = \ram_rw_control_inst|next_read_reg~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ram_rw_control_inst|next_read_reg~q\,
	combout => \ram_rw_control_inst|next_read_reg_r1~feeder_combout\);

-- Location: FF_X21_Y20_N25
\ram_rw_control_inst|next_read_reg_r1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ram_rw_control_inst|next_read_reg_r1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_rw_control_inst|next_read_reg_r1~q\);

-- Location: LCCOMB_X22_Y20_N2
\ram_rw_control_inst|next_read_reg_r2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|next_read_reg_r2~feeder_combout\ = \ram_rw_control_inst|next_read_reg_r1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ram_rw_control_inst|next_read_reg_r1~q\,
	combout => \ram_rw_control_inst|next_read_reg_r2~feeder_combout\);

-- Location: FF_X22_Y20_N3
\ram_rw_control_inst|next_read_reg_r2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ram_rw_control_inst|next_read_reg_r2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_rw_control_inst|next_read_reg_r2~q\);

-- Location: LCCOMB_X22_Y20_N12
\ram_rw_control_inst|next_read~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|next_read~feeder_combout\ = \ram_rw_control_inst|next_read_reg_r2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ram_rw_control_inst|next_read_reg_r2~q\,
	combout => \ram_rw_control_inst|next_read~feeder_combout\);

-- Location: FF_X22_Y20_N13
\ram_rw_control_inst|next_read\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ram_rw_control_inst|next_read~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_rw_control_inst|next_read~q\);

-- Location: LCCOMB_X22_Y20_N26
\sd_read_inst|Selector49~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|Selector49~0_combout\ = (!\sd_read_inst|mystate\(0) & ((\ram_rw_control_inst|read_req~q\) # (\ram_rw_control_inst|next_read~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_read_inst|mystate\(0),
	datac => \ram_rw_control_inst|read_req~q\,
	datad => \ram_rw_control_inst|next_read~q\,
	combout => \sd_read_inst|Selector49~0_combout\);

-- Location: LCCOMB_X22_Y21_N8
\sd_read_inst|Selector49~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|Selector49~1_combout\ = (\sd_read_inst|mystate[1]~3_combout\ & ((\sd_read_inst|Selector49~0_combout\) # ((!\sd_read_inst|mystate\(0) & \sd_read_inst|CMD17\(0))))) # (!\sd_read_inst|mystate[1]~3_combout\ & (((\sd_read_inst|CMD17\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_read_inst|mystate[1]~3_combout\,
	datab => \sd_read_inst|mystate\(0),
	datac => \sd_read_inst|CMD17\(0),
	datad => \sd_read_inst|Selector49~0_combout\,
	combout => \sd_read_inst|Selector49~1_combout\);

-- Location: FF_X22_Y21_N9
\sd_read_inst|CMD17[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_read_inst|Selector49~1_combout\,
	asdata => VCC,
	sload => \sd_initial_inst|ALT_INV_init_o~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|CMD17\(0));

-- Location: LCCOMB_X22_Y21_N30
\sd_read_inst|CMD17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|CMD17~0_combout\ = ((\sd_read_inst|CMD17\(0)) # (!\sd_read_inst|mystate\(0))) # (!\sd_initial_inst|init_o~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|init_o~q\,
	datab => \sd_read_inst|mystate\(0),
	datac => \sd_read_inst|CMD17\(0),
	combout => \sd_read_inst|CMD17~0_combout\);

-- Location: LCCOMB_X22_Y20_N28
\sd_read_inst|CMD17[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|CMD17[7]~1_combout\ = ((!\sd_read_inst|mystate\(0) & (!\ram_rw_control_inst|read_req~q\ & !\ram_rw_control_inst|next_read~q\))) # (!\sd_read_inst|mystate[1]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_read_inst|mystate[1]~3_combout\,
	datab => \sd_read_inst|mystate\(0),
	datac => \ram_rw_control_inst|read_req~q\,
	datad => \ram_rw_control_inst|next_read~q\,
	combout => \sd_read_inst|CMD17[7]~1_combout\);

-- Location: LCCOMB_X22_Y20_N6
\sd_read_inst|CMD17[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|CMD17[7]~2_combout\ = ((!\sd_read_inst|CMD17[7]~1_combout\ & ((!\sd_read_inst|mystate\(0)) # (!\sd_read_inst|Equal0~15_combout\)))) # (!\sd_initial_inst|init_o~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_read_inst|Equal0~15_combout\,
	datab => \sd_read_inst|mystate\(0),
	datac => \sd_initial_inst|init_o~q\,
	datad => \sd_read_inst|CMD17[7]~1_combout\,
	combout => \sd_read_inst|CMD17[7]~2_combout\);

-- Location: FF_X22_Y21_N31
\sd_read_inst|CMD17[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_read_inst|CMD17~0_combout\,
	ena => \sd_read_inst|CMD17[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|CMD17\(1));

-- Location: LCCOMB_X22_Y21_N4
\sd_read_inst|CMD17~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|CMD17~3_combout\ = ((\sd_read_inst|CMD17\(1)) # (!\sd_read_inst|mystate\(0))) # (!\sd_initial_inst|init_o~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|init_o~q\,
	datab => \sd_read_inst|mystate\(0),
	datac => \sd_read_inst|CMD17\(1),
	combout => \sd_read_inst|CMD17~3_combout\);

-- Location: FF_X22_Y21_N5
\sd_read_inst|CMD17[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_read_inst|CMD17~3_combout\,
	ena => \sd_read_inst|CMD17[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|CMD17\(2));

-- Location: LCCOMB_X22_Y21_N22
\sd_read_inst|CMD17~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|CMD17~4_combout\ = ((\sd_read_inst|CMD17\(2)) # (!\sd_read_inst|mystate\(0))) # (!\sd_initial_inst|init_o~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|init_o~q\,
	datab => \sd_read_inst|mystate\(0),
	datac => \sd_read_inst|CMD17\(2),
	combout => \sd_read_inst|CMD17~4_combout\);

-- Location: FF_X22_Y21_N23
\sd_read_inst|CMD17[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_read_inst|CMD17~4_combout\,
	ena => \sd_read_inst|CMD17[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|CMD17\(3));

-- Location: LCCOMB_X22_Y21_N0
\sd_read_inst|CMD17~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|CMD17~5_combout\ = ((\sd_read_inst|CMD17\(3)) # (!\sd_read_inst|mystate\(0))) # (!\sd_initial_inst|init_o~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|init_o~q\,
	datab => \sd_read_inst|mystate\(0),
	datac => \sd_read_inst|CMD17\(3),
	combout => \sd_read_inst|CMD17~5_combout\);

-- Location: FF_X22_Y21_N1
\sd_read_inst|CMD17[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_read_inst|CMD17~5_combout\,
	ena => \sd_read_inst|CMD17[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|CMD17\(4));

-- Location: LCCOMB_X22_Y21_N18
\sd_read_inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|Equal0~0_combout\ = (!\sd_read_inst|CMD17\(3) & (!\sd_read_inst|CMD17\(2) & (!\sd_read_inst|CMD17\(1) & !\sd_read_inst|CMD17\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_read_inst|CMD17\(3),
	datab => \sd_read_inst|CMD17\(2),
	datac => \sd_read_inst|CMD17\(1),
	datad => \sd_read_inst|CMD17\(4),
	combout => \sd_read_inst|Equal0~0_combout\);

-- Location: LCCOMB_X22_Y21_N16
\sd_read_inst|CMD17~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|CMD17~6_combout\ = ((\sd_read_inst|CMD17\(4)) # (!\sd_read_inst|mystate\(0))) # (!\sd_initial_inst|init_o~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|init_o~q\,
	datab => \sd_read_inst|CMD17\(4),
	datad => \sd_read_inst|mystate\(0),
	combout => \sd_read_inst|CMD17~6_combout\);

-- Location: FF_X22_Y21_N17
\sd_read_inst|CMD17[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_read_inst|CMD17~6_combout\,
	ena => \sd_read_inst|CMD17[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|CMD17\(5));

-- Location: LCCOMB_X19_Y20_N0
\ram_rw_control_inst|read_sec[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|read_sec[0]~32_combout\ = \ram_rw_control_inst|read_sec\(0) $ (VCC)
-- \ram_rw_control_inst|read_sec[0]~33\ = CARRY(\ram_rw_control_inst|read_sec\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ram_rw_control_inst|read_sec\(0),
	datad => VCC,
	combout => \ram_rw_control_inst|read_sec[0]~32_combout\,
	cout => \ram_rw_control_inst|read_sec[0]~33\);

-- Location: LCCOMB_X19_Y19_N6
\ram_rw_control_inst|read_sec[19]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|read_sec[19]~74_combout\ = (\ram_rw_control_inst|read_sec\(19) & (!\ram_rw_control_inst|read_sec[18]~73\)) # (!\ram_rw_control_inst|read_sec\(19) & ((\ram_rw_control_inst|read_sec[18]~73\) # (GND)))
-- \ram_rw_control_inst|read_sec[19]~75\ = CARRY((!\ram_rw_control_inst|read_sec[18]~73\) # (!\ram_rw_control_inst|read_sec\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ram_rw_control_inst|read_sec\(19),
	datad => VCC,
	cin => \ram_rw_control_inst|read_sec[18]~73\,
	combout => \ram_rw_control_inst|read_sec[19]~74_combout\,
	cout => \ram_rw_control_inst|read_sec[19]~75\);

-- Location: LCCOMB_X22_Y20_N0
\sd_read_inst|data_come~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|data_come~0_combout\ = (\sd_read_inst|data_come~q\) # ((!\SD_dataout~input_o\ & \sd_read_inst|read_start~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SD_dataout~input_o\,
	datac => \sd_read_inst|data_come~q\,
	datad => \sd_read_inst|read_start~q\,
	combout => \sd_read_inst|data_come~0_combout\);

-- Location: FF_X22_Y20_N1
\sd_read_inst|data_come\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_read_inst|data_come~0_combout\,
	asdata => \~GND~combout\,
	sclr => \sd_initial_inst|ALT_INV_init_o~q\,
	sload => \sd_read_inst|read_step.01~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|data_come~q\);

-- Location: LCCOMB_X22_Y20_N4
\ram_rw_control_inst|read_sec[15]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|read_sec[15]~37_combout\ = (\ram_rw_control_inst|Equal4~2_combout\) # (\sd_read_inst|data_come~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ram_rw_control_inst|Equal4~2_combout\,
	datad => \sd_read_inst|data_come~q\,
	combout => \ram_rw_control_inst|read_sec[15]~37_combout\);

-- Location: FF_X19_Y19_N7
\ram_rw_control_inst|read_sec[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ram_rw_control_inst|read_sec[19]~74_combout\,
	asdata => \~GND~combout\,
	sload => \ram_rw_control_inst|read_sec[15]~36_combout\,
	ena => \ram_rw_control_inst|read_sec[15]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_rw_control_inst|read_sec\(19));

-- Location: LCCOMB_X19_Y20_N6
\ram_rw_control_inst|read_sec[3]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|read_sec[3]~42_combout\ = (\ram_rw_control_inst|read_sec\(3) & (!\ram_rw_control_inst|read_sec[2]~41\)) # (!\ram_rw_control_inst|read_sec\(3) & ((\ram_rw_control_inst|read_sec[2]~41\) # (GND)))
-- \ram_rw_control_inst|read_sec[3]~43\ = CARRY((!\ram_rw_control_inst|read_sec[2]~41\) # (!\ram_rw_control_inst|read_sec\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ram_rw_control_inst|read_sec\(3),
	datad => VCC,
	cin => \ram_rw_control_inst|read_sec[2]~41\,
	combout => \ram_rw_control_inst|read_sec[3]~42_combout\,
	cout => \ram_rw_control_inst|read_sec[3]~43\);

-- Location: FF_X19_Y20_N7
\ram_rw_control_inst|read_sec[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ram_rw_control_inst|read_sec[3]~42_combout\,
	asdata => \~GND~combout\,
	sload => \ram_rw_control_inst|read_sec[15]~36_combout\,
	ena => \ram_rw_control_inst|read_sec[15]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_rw_control_inst|read_sec\(3));

-- Location: LCCOMB_X18_Y21_N16
\ram_rw_control_inst|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|LessThan1~1_combout\ = (((!\ram_rw_control_inst|read_sec\(1)) # (!\ram_rw_control_inst|read_sec\(3))) # (!\ram_rw_control_inst|read_sec\(2))) # (!\ram_rw_control_inst|read_sec\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_rw_control_inst|read_sec\(0),
	datab => \ram_rw_control_inst|read_sec\(2),
	datac => \ram_rw_control_inst|read_sec\(3),
	datad => \ram_rw_control_inst|read_sec\(1),
	combout => \ram_rw_control_inst|LessThan1~1_combout\);

-- Location: LCCOMB_X19_Y20_N10
\ram_rw_control_inst|read_sec[5]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|read_sec[5]~46_combout\ = (\ram_rw_control_inst|read_sec\(5) & (!\ram_rw_control_inst|read_sec[4]~45\)) # (!\ram_rw_control_inst|read_sec\(5) & ((\ram_rw_control_inst|read_sec[4]~45\) # (GND)))
-- \ram_rw_control_inst|read_sec[5]~47\ = CARRY((!\ram_rw_control_inst|read_sec[4]~45\) # (!\ram_rw_control_inst|read_sec\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ram_rw_control_inst|read_sec\(5),
	datad => VCC,
	cin => \ram_rw_control_inst|read_sec[4]~45\,
	combout => \ram_rw_control_inst|read_sec[5]~46_combout\,
	cout => \ram_rw_control_inst|read_sec[5]~47\);

-- Location: FF_X19_Y20_N11
\ram_rw_control_inst|read_sec[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ram_rw_control_inst|read_sec[5]~46_combout\,
	asdata => \~GND~combout\,
	sload => \ram_rw_control_inst|read_sec[15]~36_combout\,
	ena => \ram_rw_control_inst|read_sec[15]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_rw_control_inst|read_sec\(5));

-- Location: LCCOMB_X19_Y21_N24
\ram_rw_control_inst|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|LessThan1~2_combout\ = (((!\ram_rw_control_inst|read_sec\(4)) # (!\ram_rw_control_inst|read_sec\(5))) # (!\ram_rw_control_inst|read_sec\(7))) # (!\ram_rw_control_inst|read_sec\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_rw_control_inst|read_sec\(6),
	datab => \ram_rw_control_inst|read_sec\(7),
	datac => \ram_rw_control_inst|read_sec\(5),
	datad => \ram_rw_control_inst|read_sec\(4),
	combout => \ram_rw_control_inst|LessThan1~2_combout\);

-- Location: LCCOMB_X19_Y20_N26
\ram_rw_control_inst|read_sec[13]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|read_sec[13]~62_combout\ = (\ram_rw_control_inst|read_sec\(13) & (!\ram_rw_control_inst|read_sec[12]~61\)) # (!\ram_rw_control_inst|read_sec\(13) & ((\ram_rw_control_inst|read_sec[12]~61\) # (GND)))
-- \ram_rw_control_inst|read_sec[13]~63\ = CARRY((!\ram_rw_control_inst|read_sec[12]~61\) # (!\ram_rw_control_inst|read_sec\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ram_rw_control_inst|read_sec\(13),
	datad => VCC,
	cin => \ram_rw_control_inst|read_sec[12]~61\,
	combout => \ram_rw_control_inst|read_sec[13]~62_combout\,
	cout => \ram_rw_control_inst|read_sec[13]~63\);

-- Location: FF_X19_Y20_N27
\ram_rw_control_inst|read_sec[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ram_rw_control_inst|read_sec[13]~62_combout\,
	asdata => VCC,
	sload => \ram_rw_control_inst|read_sec[15]~36_combout\,
	ena => \ram_rw_control_inst|read_sec[15]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_rw_control_inst|read_sec\(13));

-- Location: LCCOMB_X19_Y20_N30
\ram_rw_control_inst|read_sec[15]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|read_sec[15]~66_combout\ = (\ram_rw_control_inst|read_sec\(15) & (!\ram_rw_control_inst|read_sec[14]~65\)) # (!\ram_rw_control_inst|read_sec\(15) & ((\ram_rw_control_inst|read_sec[14]~65\) # (GND)))
-- \ram_rw_control_inst|read_sec[15]~67\ = CARRY((!\ram_rw_control_inst|read_sec[14]~65\) # (!\ram_rw_control_inst|read_sec\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ram_rw_control_inst|read_sec\(15),
	datad => VCC,
	cin => \ram_rw_control_inst|read_sec[14]~65\,
	combout => \ram_rw_control_inst|read_sec[15]~66_combout\,
	cout => \ram_rw_control_inst|read_sec[15]~67\);

-- Location: FF_X19_Y20_N31
\ram_rw_control_inst|read_sec[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ram_rw_control_inst|read_sec[15]~66_combout\,
	asdata => \~GND~combout\,
	sload => \ram_rw_control_inst|read_sec[15]~36_combout\,
	ena => \ram_rw_control_inst|read_sec[15]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_rw_control_inst|read_sec\(15));

-- Location: LCCOMB_X18_Y20_N20
\ram_rw_control_inst|LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|LessThan1~4_combout\ = (((!\ram_rw_control_inst|read_sec\(14)) # (!\ram_rw_control_inst|read_sec\(15))) # (!\ram_rw_control_inst|read_sec\(13))) # (!\ram_rw_control_inst|read_sec\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_rw_control_inst|read_sec\(12),
	datab => \ram_rw_control_inst|read_sec\(13),
	datac => \ram_rw_control_inst|read_sec\(15),
	datad => \ram_rw_control_inst|read_sec\(14),
	combout => \ram_rw_control_inst|LessThan1~4_combout\);

-- Location: LCCOMB_X18_Y20_N2
\ram_rw_control_inst|LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|LessThan1~5_combout\ = (\ram_rw_control_inst|LessThan1~3_combout\) # ((\ram_rw_control_inst|LessThan1~1_combout\) # ((\ram_rw_control_inst|LessThan1~2_combout\) # (\ram_rw_control_inst|LessThan1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_rw_control_inst|LessThan1~3_combout\,
	datab => \ram_rw_control_inst|LessThan1~1_combout\,
	datac => \ram_rw_control_inst|LessThan1~2_combout\,
	datad => \ram_rw_control_inst|LessThan1~4_combout\,
	combout => \ram_rw_control_inst|LessThan1~5_combout\);

-- Location: LCCOMB_X18_Y20_N24
\ram_rw_control_inst|LessThan1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|LessThan1~6_combout\ = (!\ram_rw_control_inst|read_sec\(17) & (\ram_rw_control_inst|LessThan1~5_combout\ & (!\ram_rw_control_inst|read_sec\(18) & !\ram_rw_control_inst|read_sec\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_rw_control_inst|read_sec\(17),
	datab => \ram_rw_control_inst|LessThan1~5_combout\,
	datac => \ram_rw_control_inst|read_sec\(18),
	datad => \ram_rw_control_inst|read_sec\(16),
	combout => \ram_rw_control_inst|LessThan1~6_combout\);

-- Location: LCCOMB_X18_Y20_N6
\ram_rw_control_inst|LessThan1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|LessThan1~7_combout\ = (\ram_rw_control_inst|LessThan1~0_combout\) # ((!\ram_rw_control_inst|read_sec\(20) & ((\ram_rw_control_inst|LessThan1~6_combout\) # (!\ram_rw_control_inst|read_sec\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_rw_control_inst|LessThan1~0_combout\,
	datab => \ram_rw_control_inst|read_sec\(19),
	datac => \ram_rw_control_inst|read_sec\(20),
	datad => \ram_rw_control_inst|LessThan1~6_combout\,
	combout => \ram_rw_control_inst|LessThan1~7_combout\);

-- Location: LCCOMB_X19_Y19_N26
\ram_rw_control_inst|read_sec[29]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|read_sec[29]~94_combout\ = (\ram_rw_control_inst|read_sec\(29) & (!\ram_rw_control_inst|read_sec[28]~93\)) # (!\ram_rw_control_inst|read_sec\(29) & ((\ram_rw_control_inst|read_sec[28]~93\) # (GND)))
-- \ram_rw_control_inst|read_sec[29]~95\ = CARRY((!\ram_rw_control_inst|read_sec[28]~93\) # (!\ram_rw_control_inst|read_sec\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ram_rw_control_inst|read_sec\(29),
	datad => VCC,
	cin => \ram_rw_control_inst|read_sec[28]~93\,
	combout => \ram_rw_control_inst|read_sec[29]~94_combout\,
	cout => \ram_rw_control_inst|read_sec[29]~95\);

-- Location: FF_X19_Y19_N27
\ram_rw_control_inst|read_sec[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ram_rw_control_inst|read_sec[29]~94_combout\,
	asdata => \~GND~combout\,
	sload => \ram_rw_control_inst|read_sec[15]~36_combout\,
	ena => \ram_rw_control_inst|read_sec[15]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_rw_control_inst|read_sec\(29));

-- Location: LCCOMB_X19_Y19_N28
\ram_rw_control_inst|read_sec[30]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|read_sec[30]~96_combout\ = (\ram_rw_control_inst|read_sec\(30) & (\ram_rw_control_inst|read_sec[29]~95\ $ (GND))) # (!\ram_rw_control_inst|read_sec\(30) & (!\ram_rw_control_inst|read_sec[29]~95\ & VCC))
-- \ram_rw_control_inst|read_sec[30]~97\ = CARRY((\ram_rw_control_inst|read_sec\(30) & !\ram_rw_control_inst|read_sec[29]~95\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ram_rw_control_inst|read_sec\(30),
	datad => VCC,
	cin => \ram_rw_control_inst|read_sec[29]~95\,
	combout => \ram_rw_control_inst|read_sec[30]~96_combout\,
	cout => \ram_rw_control_inst|read_sec[30]~97\);

-- Location: LCCOMB_X19_Y19_N30
\ram_rw_control_inst|read_sec[31]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|read_sec[31]~98_combout\ = \ram_rw_control_inst|read_sec\(31) $ (\ram_rw_control_inst|read_sec[30]~97\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ram_rw_control_inst|read_sec\(31),
	cin => \ram_rw_control_inst|read_sec[30]~97\,
	combout => \ram_rw_control_inst|read_sec[31]~98_combout\);

-- Location: FF_X19_Y19_N31
\ram_rw_control_inst|read_sec[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ram_rw_control_inst|read_sec[31]~98_combout\,
	asdata => \~GND~combout\,
	sload => \ram_rw_control_inst|read_sec[15]~36_combout\,
	ena => \ram_rw_control_inst|read_sec[15]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_rw_control_inst|read_sec\(31));

-- Location: LCCOMB_X18_Y19_N2
\ram_rw_control_inst|read_sec[15]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|read_sec[15]~35_combout\ = (!\ram_rw_control_inst|read_sec\(28) & (!\ram_rw_control_inst|read_sec\(29) & (!\ram_rw_control_inst|read_sec\(31) & !\ram_rw_control_inst|read_sec\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_rw_control_inst|read_sec\(28),
	datab => \ram_rw_control_inst|read_sec\(29),
	datac => \ram_rw_control_inst|read_sec\(31),
	datad => \ram_rw_control_inst|read_sec\(30),
	combout => \ram_rw_control_inst|read_sec[15]~35_combout\);

-- Location: LCCOMB_X18_Y19_N24
\ram_rw_control_inst|read_sec[15]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|read_sec[15]~36_combout\ = ((\ram_rw_control_inst|Equal4~2_combout\) # ((!\ram_rw_control_inst|read_sec[15]~35_combout\) # (!\ram_rw_control_inst|LessThan1~7_combout\))) # (!\ram_rw_control_inst|read_sec[15]~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_rw_control_inst|read_sec[15]~34_combout\,
	datab => \ram_rw_control_inst|Equal4~2_combout\,
	datac => \ram_rw_control_inst|LessThan1~7_combout\,
	datad => \ram_rw_control_inst|read_sec[15]~35_combout\,
	combout => \ram_rw_control_inst|read_sec[15]~36_combout\);

-- Location: FF_X19_Y20_N1
\ram_rw_control_inst|read_sec[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ram_rw_control_inst|read_sec[0]~32_combout\,
	asdata => \~GND~combout\,
	sload => \ram_rw_control_inst|read_sec[15]~36_combout\,
	ena => \ram_rw_control_inst|read_sec[15]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_rw_control_inst|read_sec\(0));

-- Location: LCCOMB_X19_Y20_N2
\ram_rw_control_inst|read_sec[1]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|read_sec[1]~38_combout\ = (\ram_rw_control_inst|read_sec\(1) & (!\ram_rw_control_inst|read_sec[0]~33\)) # (!\ram_rw_control_inst|read_sec\(1) & ((\ram_rw_control_inst|read_sec[0]~33\) # (GND)))
-- \ram_rw_control_inst|read_sec[1]~39\ = CARRY((!\ram_rw_control_inst|read_sec[0]~33\) # (!\ram_rw_control_inst|read_sec\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ram_rw_control_inst|read_sec\(1),
	datad => VCC,
	cin => \ram_rw_control_inst|read_sec[0]~33\,
	combout => \ram_rw_control_inst|read_sec[1]~38_combout\,
	cout => \ram_rw_control_inst|read_sec[1]~39\);

-- Location: FF_X19_Y20_N3
\ram_rw_control_inst|read_sec[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ram_rw_control_inst|read_sec[1]~38_combout\,
	asdata => \~GND~combout\,
	sload => \ram_rw_control_inst|read_sec[15]~36_combout\,
	ena => \ram_rw_control_inst|read_sec[15]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_rw_control_inst|read_sec\(1));

-- Location: LCCOMB_X19_Y20_N4
\ram_rw_control_inst|read_sec[2]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|read_sec[2]~40_combout\ = (\ram_rw_control_inst|read_sec\(2) & (\ram_rw_control_inst|read_sec[1]~39\ $ (GND))) # (!\ram_rw_control_inst|read_sec\(2) & (!\ram_rw_control_inst|read_sec[1]~39\ & VCC))
-- \ram_rw_control_inst|read_sec[2]~41\ = CARRY((\ram_rw_control_inst|read_sec\(2) & !\ram_rw_control_inst|read_sec[1]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ram_rw_control_inst|read_sec\(2),
	datad => VCC,
	cin => \ram_rw_control_inst|read_sec[1]~39\,
	combout => \ram_rw_control_inst|read_sec[2]~40_combout\,
	cout => \ram_rw_control_inst|read_sec[2]~41\);

-- Location: FF_X19_Y20_N5
\ram_rw_control_inst|read_sec[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ram_rw_control_inst|read_sec[2]~40_combout\,
	asdata => \~GND~combout\,
	sload => \ram_rw_control_inst|read_sec[15]~36_combout\,
	ena => \ram_rw_control_inst|read_sec[15]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_rw_control_inst|read_sec\(2));

-- Location: LCCOMB_X19_Y20_N8
\ram_rw_control_inst|read_sec[4]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|read_sec[4]~44_combout\ = (\ram_rw_control_inst|read_sec\(4) & (\ram_rw_control_inst|read_sec[3]~43\ $ (GND))) # (!\ram_rw_control_inst|read_sec\(4) & (!\ram_rw_control_inst|read_sec[3]~43\ & VCC))
-- \ram_rw_control_inst|read_sec[4]~45\ = CARRY((\ram_rw_control_inst|read_sec\(4) & !\ram_rw_control_inst|read_sec[3]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ram_rw_control_inst|read_sec\(4),
	datad => VCC,
	cin => \ram_rw_control_inst|read_sec[3]~43\,
	combout => \ram_rw_control_inst|read_sec[4]~44_combout\,
	cout => \ram_rw_control_inst|read_sec[4]~45\);

-- Location: FF_X19_Y20_N9
\ram_rw_control_inst|read_sec[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ram_rw_control_inst|read_sec[4]~44_combout\,
	asdata => \~GND~combout\,
	sload => \ram_rw_control_inst|read_sec[15]~36_combout\,
	ena => \ram_rw_control_inst|read_sec[15]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_rw_control_inst|read_sec\(4));

-- Location: LCCOMB_X19_Y20_N14
\ram_rw_control_inst|read_sec[7]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|read_sec[7]~50_combout\ = (\ram_rw_control_inst|read_sec\(7) & (!\ram_rw_control_inst|read_sec[6]~49\)) # (!\ram_rw_control_inst|read_sec\(7) & ((\ram_rw_control_inst|read_sec[6]~49\) # (GND)))
-- \ram_rw_control_inst|read_sec[7]~51\ = CARRY((!\ram_rw_control_inst|read_sec[6]~49\) # (!\ram_rw_control_inst|read_sec\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ram_rw_control_inst|read_sec\(7),
	datad => VCC,
	cin => \ram_rw_control_inst|read_sec[6]~49\,
	combout => \ram_rw_control_inst|read_sec[7]~50_combout\,
	cout => \ram_rw_control_inst|read_sec[7]~51\);

-- Location: FF_X19_Y20_N15
\ram_rw_control_inst|read_sec[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ram_rw_control_inst|read_sec[7]~50_combout\,
	asdata => \~GND~combout\,
	sload => \ram_rw_control_inst|read_sec[15]~36_combout\,
	ena => \ram_rw_control_inst|read_sec[15]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_rw_control_inst|read_sec\(7));

-- Location: LCCOMB_X19_Y20_N16
\ram_rw_control_inst|read_sec[8]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|read_sec[8]~52_combout\ = (\ram_rw_control_inst|read_sec\(8) & (\ram_rw_control_inst|read_sec[7]~51\ $ (GND))) # (!\ram_rw_control_inst|read_sec\(8) & (!\ram_rw_control_inst|read_sec[7]~51\ & VCC))
-- \ram_rw_control_inst|read_sec[8]~53\ = CARRY((\ram_rw_control_inst|read_sec\(8) & !\ram_rw_control_inst|read_sec[7]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ram_rw_control_inst|read_sec\(8),
	datad => VCC,
	cin => \ram_rw_control_inst|read_sec[7]~51\,
	combout => \ram_rw_control_inst|read_sec[8]~52_combout\,
	cout => \ram_rw_control_inst|read_sec[8]~53\);

-- Location: FF_X19_Y20_N17
\ram_rw_control_inst|read_sec[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ram_rw_control_inst|read_sec[8]~52_combout\,
	asdata => \~GND~combout\,
	sload => \ram_rw_control_inst|read_sec[15]~36_combout\,
	ena => \ram_rw_control_inst|read_sec[15]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_rw_control_inst|read_sec\(8));

-- Location: LCCOMB_X19_Y20_N18
\ram_rw_control_inst|read_sec[9]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|read_sec[9]~54_combout\ = (\ram_rw_control_inst|read_sec\(9) & (!\ram_rw_control_inst|read_sec[8]~53\)) # (!\ram_rw_control_inst|read_sec\(9) & ((\ram_rw_control_inst|read_sec[8]~53\) # (GND)))
-- \ram_rw_control_inst|read_sec[9]~55\ = CARRY((!\ram_rw_control_inst|read_sec[8]~53\) # (!\ram_rw_control_inst|read_sec\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ram_rw_control_inst|read_sec\(9),
	datad => VCC,
	cin => \ram_rw_control_inst|read_sec[8]~53\,
	combout => \ram_rw_control_inst|read_sec[9]~54_combout\,
	cout => \ram_rw_control_inst|read_sec[9]~55\);

-- Location: FF_X19_Y20_N19
\ram_rw_control_inst|read_sec[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ram_rw_control_inst|read_sec[9]~54_combout\,
	asdata => \~GND~combout\,
	sload => \ram_rw_control_inst|read_sec[15]~36_combout\,
	ena => \ram_rw_control_inst|read_sec[15]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_rw_control_inst|read_sec\(9));

-- Location: LCCOMB_X19_Y20_N20
\ram_rw_control_inst|read_sec[10]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|read_sec[10]~56_combout\ = (\ram_rw_control_inst|read_sec\(10) & (\ram_rw_control_inst|read_sec[9]~55\ $ (GND))) # (!\ram_rw_control_inst|read_sec\(10) & (!\ram_rw_control_inst|read_sec[9]~55\ & VCC))
-- \ram_rw_control_inst|read_sec[10]~57\ = CARRY((\ram_rw_control_inst|read_sec\(10) & !\ram_rw_control_inst|read_sec[9]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ram_rw_control_inst|read_sec\(10),
	datad => VCC,
	cin => \ram_rw_control_inst|read_sec[9]~55\,
	combout => \ram_rw_control_inst|read_sec[10]~56_combout\,
	cout => \ram_rw_control_inst|read_sec[10]~57\);

-- Location: FF_X19_Y20_N21
\ram_rw_control_inst|read_sec[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ram_rw_control_inst|read_sec[10]~56_combout\,
	asdata => \~GND~combout\,
	sload => \ram_rw_control_inst|read_sec[15]~36_combout\,
	ena => \ram_rw_control_inst|read_sec[15]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_rw_control_inst|read_sec\(10));

-- Location: LCCOMB_X19_Y20_N24
\ram_rw_control_inst|read_sec[12]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|read_sec[12]~60_combout\ = (\ram_rw_control_inst|read_sec\(12) & (\ram_rw_control_inst|read_sec[11]~59\ $ (GND))) # (!\ram_rw_control_inst|read_sec\(12) & (!\ram_rw_control_inst|read_sec[11]~59\ & VCC))
-- \ram_rw_control_inst|read_sec[12]~61\ = CARRY((\ram_rw_control_inst|read_sec\(12) & !\ram_rw_control_inst|read_sec[11]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ram_rw_control_inst|read_sec\(12),
	datad => VCC,
	cin => \ram_rw_control_inst|read_sec[11]~59\,
	combout => \ram_rw_control_inst|read_sec[12]~60_combout\,
	cout => \ram_rw_control_inst|read_sec[12]~61\);

-- Location: FF_X19_Y20_N25
\ram_rw_control_inst|read_sec[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ram_rw_control_inst|read_sec[12]~60_combout\,
	asdata => \~GND~combout\,
	sload => \ram_rw_control_inst|read_sec[15]~36_combout\,
	ena => \ram_rw_control_inst|read_sec[15]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_rw_control_inst|read_sec\(12));

-- Location: LCCOMB_X19_Y20_N28
\ram_rw_control_inst|read_sec[14]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|read_sec[14]~64_combout\ = (\ram_rw_control_inst|read_sec\(14) & (\ram_rw_control_inst|read_sec[13]~63\ $ (GND))) # (!\ram_rw_control_inst|read_sec\(14) & (!\ram_rw_control_inst|read_sec[13]~63\ & VCC))
-- \ram_rw_control_inst|read_sec[14]~65\ = CARRY((\ram_rw_control_inst|read_sec\(14) & !\ram_rw_control_inst|read_sec[13]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ram_rw_control_inst|read_sec\(14),
	datad => VCC,
	cin => \ram_rw_control_inst|read_sec[13]~63\,
	combout => \ram_rw_control_inst|read_sec[14]~64_combout\,
	cout => \ram_rw_control_inst|read_sec[14]~65\);

-- Location: FF_X19_Y20_N29
\ram_rw_control_inst|read_sec[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ram_rw_control_inst|read_sec[14]~64_combout\,
	asdata => \~GND~combout\,
	sload => \ram_rw_control_inst|read_sec[15]~36_combout\,
	ena => \ram_rw_control_inst|read_sec[15]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_rw_control_inst|read_sec\(14));

-- Location: LCCOMB_X19_Y19_N0
\ram_rw_control_inst|read_sec[16]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|read_sec[16]~68_combout\ = (\ram_rw_control_inst|read_sec\(16) & (\ram_rw_control_inst|read_sec[15]~67\ $ (GND))) # (!\ram_rw_control_inst|read_sec\(16) & (!\ram_rw_control_inst|read_sec[15]~67\ & VCC))
-- \ram_rw_control_inst|read_sec[16]~69\ = CARRY((\ram_rw_control_inst|read_sec\(16) & !\ram_rw_control_inst|read_sec[15]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ram_rw_control_inst|read_sec\(16),
	datad => VCC,
	cin => \ram_rw_control_inst|read_sec[15]~67\,
	combout => \ram_rw_control_inst|read_sec[16]~68_combout\,
	cout => \ram_rw_control_inst|read_sec[16]~69\);

-- Location: FF_X19_Y19_N1
\ram_rw_control_inst|read_sec[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ram_rw_control_inst|read_sec[16]~68_combout\,
	asdata => \~GND~combout\,
	sload => \ram_rw_control_inst|read_sec[15]~36_combout\,
	ena => \ram_rw_control_inst|read_sec[15]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_rw_control_inst|read_sec\(16));

-- Location: LCCOMB_X19_Y19_N2
\ram_rw_control_inst|read_sec[17]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|read_sec[17]~70_combout\ = (\ram_rw_control_inst|read_sec\(17) & (!\ram_rw_control_inst|read_sec[16]~69\)) # (!\ram_rw_control_inst|read_sec\(17) & ((\ram_rw_control_inst|read_sec[16]~69\) # (GND)))
-- \ram_rw_control_inst|read_sec[17]~71\ = CARRY((!\ram_rw_control_inst|read_sec[16]~69\) # (!\ram_rw_control_inst|read_sec\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ram_rw_control_inst|read_sec\(17),
	datad => VCC,
	cin => \ram_rw_control_inst|read_sec[16]~69\,
	combout => \ram_rw_control_inst|read_sec[17]~70_combout\,
	cout => \ram_rw_control_inst|read_sec[17]~71\);

-- Location: FF_X19_Y19_N3
\ram_rw_control_inst|read_sec[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ram_rw_control_inst|read_sec[17]~70_combout\,
	asdata => \~GND~combout\,
	sload => \ram_rw_control_inst|read_sec[15]~36_combout\,
	ena => \ram_rw_control_inst|read_sec[15]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_rw_control_inst|read_sec\(17));

-- Location: LCCOMB_X19_Y19_N4
\ram_rw_control_inst|read_sec[18]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|read_sec[18]~72_combout\ = (\ram_rw_control_inst|read_sec\(18) & (\ram_rw_control_inst|read_sec[17]~71\ $ (GND))) # (!\ram_rw_control_inst|read_sec\(18) & (!\ram_rw_control_inst|read_sec[17]~71\ & VCC))
-- \ram_rw_control_inst|read_sec[18]~73\ = CARRY((\ram_rw_control_inst|read_sec\(18) & !\ram_rw_control_inst|read_sec[17]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ram_rw_control_inst|read_sec\(18),
	datad => VCC,
	cin => \ram_rw_control_inst|read_sec[17]~71\,
	combout => \ram_rw_control_inst|read_sec[18]~72_combout\,
	cout => \ram_rw_control_inst|read_sec[18]~73\);

-- Location: FF_X19_Y19_N5
\ram_rw_control_inst|read_sec[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ram_rw_control_inst|read_sec[18]~72_combout\,
	asdata => \~GND~combout\,
	sload => \ram_rw_control_inst|read_sec[15]~36_combout\,
	ena => \ram_rw_control_inst|read_sec[15]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_rw_control_inst|read_sec\(18));

-- Location: LCCOMB_X19_Y19_N8
\ram_rw_control_inst|read_sec[20]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|read_sec[20]~76_combout\ = (\ram_rw_control_inst|read_sec\(20) & (\ram_rw_control_inst|read_sec[19]~75\ $ (GND))) # (!\ram_rw_control_inst|read_sec\(20) & (!\ram_rw_control_inst|read_sec[19]~75\ & VCC))
-- \ram_rw_control_inst|read_sec[20]~77\ = CARRY((\ram_rw_control_inst|read_sec\(20) & !\ram_rw_control_inst|read_sec[19]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ram_rw_control_inst|read_sec\(20),
	datad => VCC,
	cin => \ram_rw_control_inst|read_sec[19]~75\,
	combout => \ram_rw_control_inst|read_sec[20]~76_combout\,
	cout => \ram_rw_control_inst|read_sec[20]~77\);

-- Location: FF_X19_Y19_N9
\ram_rw_control_inst|read_sec[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ram_rw_control_inst|read_sec[20]~76_combout\,
	asdata => \~GND~combout\,
	sload => \ram_rw_control_inst|read_sec[15]~36_combout\,
	ena => \ram_rw_control_inst|read_sec[15]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_rw_control_inst|read_sec\(20));

-- Location: LCCOMB_X19_Y19_N10
\ram_rw_control_inst|read_sec[21]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|read_sec[21]~78_combout\ = (\ram_rw_control_inst|read_sec\(21) & (!\ram_rw_control_inst|read_sec[20]~77\)) # (!\ram_rw_control_inst|read_sec\(21) & ((\ram_rw_control_inst|read_sec[20]~77\) # (GND)))
-- \ram_rw_control_inst|read_sec[21]~79\ = CARRY((!\ram_rw_control_inst|read_sec[20]~77\) # (!\ram_rw_control_inst|read_sec\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ram_rw_control_inst|read_sec\(21),
	datad => VCC,
	cin => \ram_rw_control_inst|read_sec[20]~77\,
	combout => \ram_rw_control_inst|read_sec[21]~78_combout\,
	cout => \ram_rw_control_inst|read_sec[21]~79\);

-- Location: LCCOMB_X19_Y19_N14
\ram_rw_control_inst|read_sec[23]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|read_sec[23]~82_combout\ = (\ram_rw_control_inst|read_sec\(23) & (!\ram_rw_control_inst|read_sec[22]~81\)) # (!\ram_rw_control_inst|read_sec\(23) & ((\ram_rw_control_inst|read_sec[22]~81\) # (GND)))
-- \ram_rw_control_inst|read_sec[23]~83\ = CARRY((!\ram_rw_control_inst|read_sec[22]~81\) # (!\ram_rw_control_inst|read_sec\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ram_rw_control_inst|read_sec\(23),
	datad => VCC,
	cin => \ram_rw_control_inst|read_sec[22]~81\,
	combout => \ram_rw_control_inst|read_sec[23]~82_combout\,
	cout => \ram_rw_control_inst|read_sec[23]~83\);

-- Location: FF_X19_Y19_N15
\ram_rw_control_inst|read_sec[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ram_rw_control_inst|read_sec[23]~82_combout\,
	asdata => \~GND~combout\,
	sload => \ram_rw_control_inst|read_sec[15]~36_combout\,
	ena => \ram_rw_control_inst|read_sec[15]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_rw_control_inst|read_sec\(23));

-- Location: LCCOMB_X19_Y19_N16
\ram_rw_control_inst|read_sec[24]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|read_sec[24]~84_combout\ = (\ram_rw_control_inst|read_sec\(24) & (\ram_rw_control_inst|read_sec[23]~83\ $ (GND))) # (!\ram_rw_control_inst|read_sec\(24) & (!\ram_rw_control_inst|read_sec[23]~83\ & VCC))
-- \ram_rw_control_inst|read_sec[24]~85\ = CARRY((\ram_rw_control_inst|read_sec\(24) & !\ram_rw_control_inst|read_sec[23]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ram_rw_control_inst|read_sec\(24),
	datad => VCC,
	cin => \ram_rw_control_inst|read_sec[23]~83\,
	combout => \ram_rw_control_inst|read_sec[24]~84_combout\,
	cout => \ram_rw_control_inst|read_sec[24]~85\);

-- Location: FF_X19_Y19_N17
\ram_rw_control_inst|read_sec[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ram_rw_control_inst|read_sec[24]~84_combout\,
	asdata => \~GND~combout\,
	sload => \ram_rw_control_inst|read_sec[15]~36_combout\,
	ena => \ram_rw_control_inst|read_sec[15]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_rw_control_inst|read_sec\(24));

-- Location: LCCOMB_X19_Y19_N18
\ram_rw_control_inst|read_sec[25]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|read_sec[25]~86_combout\ = (\ram_rw_control_inst|read_sec\(25) & (!\ram_rw_control_inst|read_sec[24]~85\)) # (!\ram_rw_control_inst|read_sec\(25) & ((\ram_rw_control_inst|read_sec[24]~85\) # (GND)))
-- \ram_rw_control_inst|read_sec[25]~87\ = CARRY((!\ram_rw_control_inst|read_sec[24]~85\) # (!\ram_rw_control_inst|read_sec\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ram_rw_control_inst|read_sec\(25),
	datad => VCC,
	cin => \ram_rw_control_inst|read_sec[24]~85\,
	combout => \ram_rw_control_inst|read_sec[25]~86_combout\,
	cout => \ram_rw_control_inst|read_sec[25]~87\);

-- Location: FF_X19_Y19_N19
\ram_rw_control_inst|read_sec[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ram_rw_control_inst|read_sec[25]~86_combout\,
	asdata => \~GND~combout\,
	sload => \ram_rw_control_inst|read_sec[15]~36_combout\,
	ena => \ram_rw_control_inst|read_sec[15]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_rw_control_inst|read_sec\(25));

-- Location: LCCOMB_X19_Y19_N20
\ram_rw_control_inst|read_sec[26]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|read_sec[26]~88_combout\ = (\ram_rw_control_inst|read_sec\(26) & (\ram_rw_control_inst|read_sec[25]~87\ $ (GND))) # (!\ram_rw_control_inst|read_sec\(26) & (!\ram_rw_control_inst|read_sec[25]~87\ & VCC))
-- \ram_rw_control_inst|read_sec[26]~89\ = CARRY((\ram_rw_control_inst|read_sec\(26) & !\ram_rw_control_inst|read_sec[25]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ram_rw_control_inst|read_sec\(26),
	datad => VCC,
	cin => \ram_rw_control_inst|read_sec[25]~87\,
	combout => \ram_rw_control_inst|read_sec[26]~88_combout\,
	cout => \ram_rw_control_inst|read_sec[26]~89\);

-- Location: FF_X19_Y19_N21
\ram_rw_control_inst|read_sec[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ram_rw_control_inst|read_sec[26]~88_combout\,
	asdata => \~GND~combout\,
	sload => \ram_rw_control_inst|read_sec[15]~36_combout\,
	ena => \ram_rw_control_inst|read_sec[15]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_rw_control_inst|read_sec\(26));

-- Location: LCCOMB_X19_Y19_N22
\ram_rw_control_inst|read_sec[27]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|read_sec[27]~90_combout\ = (\ram_rw_control_inst|read_sec\(27) & (!\ram_rw_control_inst|read_sec[26]~89\)) # (!\ram_rw_control_inst|read_sec\(27) & ((\ram_rw_control_inst|read_sec[26]~89\) # (GND)))
-- \ram_rw_control_inst|read_sec[27]~91\ = CARRY((!\ram_rw_control_inst|read_sec[26]~89\) # (!\ram_rw_control_inst|read_sec\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ram_rw_control_inst|read_sec\(27),
	datad => VCC,
	cin => \ram_rw_control_inst|read_sec[26]~89\,
	combout => \ram_rw_control_inst|read_sec[27]~90_combout\,
	cout => \ram_rw_control_inst|read_sec[27]~91\);

-- Location: LCCOMB_X19_Y19_N24
\ram_rw_control_inst|read_sec[28]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|read_sec[28]~92_combout\ = (\ram_rw_control_inst|read_sec\(28) & (\ram_rw_control_inst|read_sec[27]~91\ $ (GND))) # (!\ram_rw_control_inst|read_sec\(28) & (!\ram_rw_control_inst|read_sec[27]~91\ & VCC))
-- \ram_rw_control_inst|read_sec[28]~93\ = CARRY((\ram_rw_control_inst|read_sec\(28) & !\ram_rw_control_inst|read_sec[27]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ram_rw_control_inst|read_sec\(28),
	datad => VCC,
	cin => \ram_rw_control_inst|read_sec[27]~91\,
	combout => \ram_rw_control_inst|read_sec[28]~92_combout\,
	cout => \ram_rw_control_inst|read_sec[28]~93\);

-- Location: FF_X19_Y19_N25
\ram_rw_control_inst|read_sec[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ram_rw_control_inst|read_sec[28]~92_combout\,
	asdata => \~GND~combout\,
	sload => \ram_rw_control_inst|read_sec[15]~36_combout\,
	ena => \ram_rw_control_inst|read_sec[15]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_rw_control_inst|read_sec\(28));

-- Location: FF_X19_Y19_N29
\ram_rw_control_inst|read_sec[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ram_rw_control_inst|read_sec[30]~96_combout\,
	asdata => \~GND~combout\,
	sload => \ram_rw_control_inst|read_sec[15]~36_combout\,
	ena => \ram_rw_control_inst|read_sec[15]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_rw_control_inst|read_sec\(30));

-- Location: FF_X19_Y19_N23
\ram_rw_control_inst|read_sec[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ram_rw_control_inst|read_sec[27]~90_combout\,
	asdata => \~GND~combout\,
	sload => \ram_rw_control_inst|read_sec[15]~36_combout\,
	ena => \ram_rw_control_inst|read_sec[15]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_rw_control_inst|read_sec\(27));

-- Location: LCCOMB_X18_Y20_N14
\sd_read_inst|CMD17~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|CMD17~36_combout\ = (\sd_read_inst|mystate\(0) & (\sd_read_inst|CMD17\(26))) # (!\sd_read_inst|mystate\(0) & ((\ram_rw_control_inst|read_sec\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_read_inst|CMD17\(26),
	datab => \ram_rw_control_inst|read_sec\(19),
	datad => \sd_read_inst|mystate\(0),
	combout => \sd_read_inst|CMD17~36_combout\);

-- Location: FF_X18_Y20_N15
\sd_read_inst|CMD17[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_read_inst|CMD17~36_combout\,
	sclr => \sd_initial_inst|ALT_INV_init_o~q\,
	ena => \sd_read_inst|CMD17[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|CMD17\(27));

-- Location: LCCOMB_X18_Y20_N8
\sd_read_inst|CMD17~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|CMD17~37_combout\ = (\sd_read_inst|mystate\(0) & ((\sd_read_inst|CMD17\(27)))) # (!\sd_read_inst|mystate\(0) & (\ram_rw_control_inst|read_sec\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ram_rw_control_inst|read_sec\(20),
	datac => \sd_read_inst|CMD17\(27),
	datad => \sd_read_inst|mystate\(0),
	combout => \sd_read_inst|CMD17~37_combout\);

-- Location: FF_X18_Y20_N9
\sd_read_inst|CMD17[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_read_inst|CMD17~37_combout\,
	sclr => \sd_initial_inst|ALT_INV_init_o~q\,
	ena => \sd_read_inst|CMD17[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|CMD17\(28));

-- Location: FF_X19_Y19_N11
\ram_rw_control_inst|read_sec[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ram_rw_control_inst|read_sec[21]~78_combout\,
	asdata => \~GND~combout\,
	sload => \ram_rw_control_inst|read_sec[15]~36_combout\,
	ena => \ram_rw_control_inst|read_sec[15]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_rw_control_inst|read_sec\(21));

-- Location: LCCOMB_X18_Y20_N22
\sd_read_inst|CMD17~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|CMD17~38_combout\ = (\sd_read_inst|mystate\(0) & (\sd_read_inst|CMD17\(28))) # (!\sd_read_inst|mystate\(0) & ((\ram_rw_control_inst|read_sec\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_read_inst|mystate\(0),
	datac => \sd_read_inst|CMD17\(28),
	datad => \ram_rw_control_inst|read_sec\(21),
	combout => \sd_read_inst|CMD17~38_combout\);

-- Location: FF_X18_Y20_N23
\sd_read_inst|CMD17[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_read_inst|CMD17~38_combout\,
	sclr => \sd_initial_inst|ALT_INV_init_o~q\,
	ena => \sd_read_inst|CMD17[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|CMD17\(29));

-- Location: LCCOMB_X18_Y20_N16
\sd_read_inst|CMD17~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|CMD17~39_combout\ = (\sd_read_inst|mystate\(0) & ((\sd_read_inst|CMD17\(29)))) # (!\sd_read_inst|mystate\(0) & (\ram_rw_control_inst|read_sec\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_rw_control_inst|read_sec\(22),
	datab => \sd_read_inst|mystate\(0),
	datac => \sd_read_inst|CMD17\(29),
	combout => \sd_read_inst|CMD17~39_combout\);

-- Location: FF_X18_Y20_N17
\sd_read_inst|CMD17[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_read_inst|CMD17~39_combout\,
	sclr => \sd_initial_inst|ALT_INV_init_o~q\,
	ena => \sd_read_inst|CMD17[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|CMD17\(30));

-- Location: LCCOMB_X18_Y19_N0
\sd_read_inst|CMD17~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|CMD17~40_combout\ = (\sd_read_inst|mystate\(0) & ((\sd_read_inst|CMD17\(30)))) # (!\sd_read_inst|mystate\(0) & (\ram_rw_control_inst|read_sec\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_read_inst|mystate\(0),
	datac => \ram_rw_control_inst|read_sec\(23),
	datad => \sd_read_inst|CMD17\(30),
	combout => \sd_read_inst|CMD17~40_combout\);

-- Location: FF_X18_Y19_N1
\sd_read_inst|CMD17[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_read_inst|CMD17~40_combout\,
	sclr => \sd_initial_inst|ALT_INV_init_o~q\,
	ena => \sd_read_inst|CMD17[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|CMD17\(31));

-- Location: LCCOMB_X18_Y19_N26
\sd_read_inst|CMD17~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|CMD17~41_combout\ = (\sd_read_inst|mystate\(0) & ((\sd_read_inst|CMD17\(31)))) # (!\sd_read_inst|mystate\(0) & (\ram_rw_control_inst|read_sec\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ram_rw_control_inst|read_sec\(24),
	datac => \sd_read_inst|mystate\(0),
	datad => \sd_read_inst|CMD17\(31),
	combout => \sd_read_inst|CMD17~41_combout\);

-- Location: FF_X18_Y19_N27
\sd_read_inst|CMD17[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_read_inst|CMD17~41_combout\,
	sclr => \sd_initial_inst|ALT_INV_init_o~q\,
	ena => \sd_read_inst|CMD17[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|CMD17\(32));

-- Location: LCCOMB_X18_Y19_N4
\sd_read_inst|CMD17~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|CMD17~42_combout\ = (\sd_read_inst|mystate\(0) & ((\sd_read_inst|CMD17\(32)))) # (!\sd_read_inst|mystate\(0) & (\ram_rw_control_inst|read_sec\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_read_inst|mystate\(0),
	datab => \ram_rw_control_inst|read_sec\(25),
	datac => \sd_read_inst|CMD17\(32),
	combout => \sd_read_inst|CMD17~42_combout\);

-- Location: FF_X18_Y19_N5
\sd_read_inst|CMD17[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_read_inst|CMD17~42_combout\,
	sclr => \sd_initial_inst|ALT_INV_init_o~q\,
	ena => \sd_read_inst|CMD17[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|CMD17\(33));

-- Location: LCCOMB_X18_Y19_N22
\sd_read_inst|CMD17~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|CMD17~43_combout\ = (\sd_read_inst|mystate\(0) & ((\sd_read_inst|CMD17\(33)))) # (!\sd_read_inst|mystate\(0) & (\ram_rw_control_inst|read_sec\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_rw_control_inst|read_sec\(26),
	datac => \sd_read_inst|CMD17\(33),
	datad => \sd_read_inst|mystate\(0),
	combout => \sd_read_inst|CMD17~43_combout\);

-- Location: FF_X18_Y19_N23
\sd_read_inst|CMD17[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_read_inst|CMD17~43_combout\,
	sclr => \sd_initial_inst|ALT_INV_init_o~q\,
	ena => \sd_read_inst|CMD17[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|CMD17\(34));

-- Location: LCCOMB_X18_Y19_N28
\sd_read_inst|CMD17~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|CMD17~44_combout\ = (\sd_read_inst|mystate\(0) & ((\sd_read_inst|CMD17\(34)))) # (!\sd_read_inst|mystate\(0) & (\ram_rw_control_inst|read_sec\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_read_inst|mystate\(0),
	datab => \ram_rw_control_inst|read_sec\(27),
	datac => \sd_read_inst|CMD17\(34),
	combout => \sd_read_inst|CMD17~44_combout\);

-- Location: FF_X18_Y19_N29
\sd_read_inst|CMD17[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_read_inst|CMD17~44_combout\,
	sclr => \sd_initial_inst|ALT_INV_init_o~q\,
	ena => \sd_read_inst|CMD17[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|CMD17\(35));

-- Location: LCCOMB_X18_Y19_N30
\sd_read_inst|CMD17~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|CMD17~45_combout\ = (\sd_read_inst|mystate\(0) & ((\sd_read_inst|CMD17\(35)))) # (!\sd_read_inst|mystate\(0) & (\ram_rw_control_inst|read_sec\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_rw_control_inst|read_sec\(28),
	datab => \sd_read_inst|CMD17\(35),
	datac => \sd_read_inst|mystate\(0),
	combout => \sd_read_inst|CMD17~45_combout\);

-- Location: FF_X18_Y19_N31
\sd_read_inst|CMD17[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_read_inst|CMD17~45_combout\,
	sclr => \sd_initial_inst|ALT_INV_init_o~q\,
	ena => \sd_read_inst|CMD17[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|CMD17\(36));

-- Location: LCCOMB_X18_Y19_N8
\sd_read_inst|CMD17~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|CMD17~46_combout\ = (\sd_read_inst|mystate\(0) & ((\sd_read_inst|CMD17\(36)))) # (!\sd_read_inst|mystate\(0) & (\ram_rw_control_inst|read_sec\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_read_inst|mystate\(0),
	datab => \ram_rw_control_inst|read_sec\(29),
	datac => \sd_read_inst|CMD17\(36),
	combout => \sd_read_inst|CMD17~46_combout\);

-- Location: FF_X18_Y19_N9
\sd_read_inst|CMD17[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_read_inst|CMD17~46_combout\,
	sclr => \sd_initial_inst|ALT_INV_init_o~q\,
	ena => \sd_read_inst|CMD17[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|CMD17\(37));

-- Location: LCCOMB_X18_Y19_N14
\sd_read_inst|CMD17~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|CMD17~47_combout\ = (\sd_read_inst|mystate\(0) & ((\sd_read_inst|CMD17\(37)))) # (!\sd_read_inst|mystate\(0) & (\ram_rw_control_inst|read_sec\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_read_inst|mystate\(0),
	datab => \ram_rw_control_inst|read_sec\(30),
	datac => \sd_read_inst|CMD17\(37),
	combout => \sd_read_inst|CMD17~47_combout\);

-- Location: FF_X18_Y19_N15
\sd_read_inst|CMD17[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_read_inst|CMD17~47_combout\,
	sclr => \sd_initial_inst|ALT_INV_init_o~q\,
	ena => \sd_read_inst|CMD17[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|CMD17\(38));

-- Location: LCCOMB_X18_Y19_N20
\sd_read_inst|CMD17~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|CMD17~48_combout\ = (\sd_read_inst|mystate\(0) & (\sd_read_inst|CMD17\(38))) # (!\sd_read_inst|mystate\(0) & ((\ram_rw_control_inst|read_sec\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_read_inst|mystate\(0),
	datac => \sd_read_inst|CMD17\(38),
	datad => \ram_rw_control_inst|read_sec\(31),
	combout => \sd_read_inst|CMD17~48_combout\);

-- Location: FF_X18_Y19_N21
\sd_read_inst|CMD17[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_read_inst|CMD17~48_combout\,
	sclr => \sd_initial_inst|ALT_INV_init_o~q\,
	ena => \sd_read_inst|CMD17[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|CMD17\(39));

-- Location: LCCOMB_X18_Y21_N18
\sd_read_inst|CMD17~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|CMD17~9_combout\ = ((\sd_read_inst|CMD17\(39)) # (!\sd_initial_inst|init_o~q\)) # (!\sd_read_inst|mystate\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_read_inst|mystate\(0),
	datab => \sd_initial_inst|init_o~q\,
	datac => \sd_read_inst|CMD17\(39),
	combout => \sd_read_inst|CMD17~9_combout\);

-- Location: FF_X18_Y21_N19
\sd_read_inst|CMD17[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_read_inst|CMD17~9_combout\,
	ena => \sd_read_inst|CMD17[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|CMD17\(40));

-- Location: LCCOMB_X22_Y21_N26
\sd_read_inst|CMD17~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|CMD17~7_combout\ = ((\sd_read_inst|CMD17\(5)) # (!\sd_read_inst|mystate\(0))) # (!\sd_initial_inst|init_o~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|init_o~q\,
	datab => \sd_read_inst|CMD17\(5),
	datad => \sd_read_inst|mystate\(0),
	combout => \sd_read_inst|CMD17~7_combout\);

-- Location: FF_X22_Y21_N27
\sd_read_inst|CMD17[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_read_inst|CMD17~7_combout\,
	ena => \sd_read_inst|CMD17[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|CMD17\(6));

-- Location: LCCOMB_X22_Y21_N20
\sd_read_inst|CMD17~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|CMD17~8_combout\ = ((\sd_read_inst|CMD17\(6)) # (!\sd_read_inst|mystate\(0))) # (!\sd_initial_inst|init_o~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|init_o~q\,
	datab => \sd_read_inst|mystate\(0),
	datac => \sd_read_inst|CMD17\(6),
	combout => \sd_read_inst|CMD17~8_combout\);

-- Location: FF_X22_Y21_N21
\sd_read_inst|CMD17[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_read_inst|CMD17~8_combout\,
	ena => \sd_read_inst|CMD17[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|CMD17\(7));

-- Location: LCCOMB_X22_Y21_N14
\sd_read_inst|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|Equal0~1_combout\ = (!\sd_read_inst|CMD17\(6) & (!\sd_read_inst|CMD17\(5) & (!\sd_read_inst|CMD17\(40) & !\sd_read_inst|CMD17\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_read_inst|CMD17\(6),
	datab => \sd_read_inst|CMD17\(5),
	datac => \sd_read_inst|CMD17\(40),
	datad => \sd_read_inst|CMD17\(7),
	combout => \sd_read_inst|Equal0~1_combout\);

-- Location: LCCOMB_X18_Y21_N20
\sd_read_inst|CMD17~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|CMD17~10_combout\ = (\sd_read_inst|mystate\(0) & (\sd_initial_inst|init_o~q\ & \sd_read_inst|CMD17\(40)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_read_inst|mystate\(0),
	datab => \sd_initial_inst|init_o~q\,
	datad => \sd_read_inst|CMD17\(40),
	combout => \sd_read_inst|CMD17~10_combout\);

-- Location: FF_X18_Y21_N21
\sd_read_inst|CMD17[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_read_inst|CMD17~10_combout\,
	ena => \sd_read_inst|CMD17[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|CMD17\(41));

-- Location: LCCOMB_X18_Y21_N6
\sd_read_inst|CMD17~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|CMD17~11_combout\ = (\sd_read_inst|mystate\(0) & (\sd_initial_inst|init_o~q\ & \sd_read_inst|CMD17\(41)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_read_inst|mystate\(0),
	datab => \sd_initial_inst|init_o~q\,
	datad => \sd_read_inst|CMD17\(41),
	combout => \sd_read_inst|CMD17~11_combout\);

-- Location: FF_X18_Y21_N7
\sd_read_inst|CMD17[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_read_inst|CMD17~11_combout\,
	ena => \sd_read_inst|CMD17[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|CMD17\(42));

-- Location: LCCOMB_X18_Y21_N4
\sd_read_inst|CMD17~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|CMD17~12_combout\ = (\sd_read_inst|mystate\(0) & (\sd_initial_inst|init_o~q\ & \sd_read_inst|CMD17\(42)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_read_inst|mystate\(0),
	datab => \sd_initial_inst|init_o~q\,
	datad => \sd_read_inst|CMD17\(42),
	combout => \sd_read_inst|CMD17~12_combout\);

-- Location: FF_X18_Y21_N5
\sd_read_inst|CMD17[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_read_inst|CMD17~12_combout\,
	ena => \sd_read_inst|CMD17[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|CMD17\(43));

-- Location: LCCOMB_X18_Y21_N2
\sd_read_inst|CMD17~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|CMD17~13_combout\ = ((\sd_read_inst|CMD17\(43)) # (!\sd_initial_inst|init_o~q\)) # (!\sd_read_inst|mystate\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_read_inst|mystate\(0),
	datac => \sd_read_inst|CMD17\(43),
	datad => \sd_initial_inst|init_o~q\,
	combout => \sd_read_inst|CMD17~13_combout\);

-- Location: FF_X18_Y21_N3
\sd_read_inst|CMD17[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_read_inst|CMD17~13_combout\,
	ena => \sd_read_inst|CMD17[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|CMD17\(44));

-- Location: LCCOMB_X18_Y21_N0
\sd_read_inst|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|Equal0~2_combout\ = (!\sd_read_inst|CMD17\(42) & (!\sd_read_inst|CMD17\(41) & (!\sd_read_inst|CMD17\(43) & !\sd_read_inst|CMD17\(44))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_read_inst|CMD17\(42),
	datab => \sd_read_inst|CMD17\(41),
	datac => \sd_read_inst|CMD17\(43),
	datad => \sd_read_inst|CMD17\(44),
	combout => \sd_read_inst|Equal0~2_combout\);

-- Location: LCCOMB_X22_Y21_N10
\sd_read_inst|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|Equal0~4_combout\ = (\sd_read_inst|Equal0~3_combout\ & (\sd_read_inst|Equal0~0_combout\ & (\sd_read_inst|Equal0~1_combout\ & \sd_read_inst|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_read_inst|Equal0~3_combout\,
	datab => \sd_read_inst|Equal0~0_combout\,
	datac => \sd_read_inst|Equal0~1_combout\,
	datad => \sd_read_inst|Equal0~2_combout\,
	combout => \sd_read_inst|Equal0~4_combout\);

-- Location: LCCOMB_X18_Y20_N28
\sd_read_inst|Equal0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|Equal0~11_combout\ = (!\sd_read_inst|CMD17\(29) & (!\sd_read_inst|CMD17\(30) & (!\sd_read_inst|CMD17\(28) & !\sd_read_inst|CMD17\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_read_inst|CMD17\(29),
	datab => \sd_read_inst|CMD17\(30),
	datac => \sd_read_inst|CMD17\(28),
	datad => \sd_read_inst|CMD17\(31),
	combout => \sd_read_inst|Equal0~11_combout\);

-- Location: LCCOMB_X19_Y21_N28
\sd_read_inst|CMD17~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|CMD17~17_combout\ = (\sd_read_inst|mystate\(0) & ((\sd_read_inst|CMD17\(7)))) # (!\sd_read_inst|mystate\(0) & (\ram_rw_control_inst|read_sec\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_read_inst|mystate\(0),
	datac => \ram_rw_control_inst|read_sec\(0),
	datad => \sd_read_inst|CMD17\(7),
	combout => \sd_read_inst|CMD17~17_combout\);

-- Location: FF_X19_Y21_N29
\sd_read_inst|CMD17[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_read_inst|CMD17~17_combout\,
	sclr => \sd_initial_inst|ALT_INV_init_o~q\,
	ena => \sd_read_inst|CMD17[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|CMD17\(8));

-- Location: LCCOMB_X18_Y21_N28
\sd_read_inst|CMD17~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|CMD17~18_combout\ = (\sd_read_inst|mystate\(0) & (\sd_read_inst|CMD17\(8))) # (!\sd_read_inst|mystate\(0) & ((\ram_rw_control_inst|read_sec\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_read_inst|CMD17\(8),
	datac => \sd_read_inst|mystate\(0),
	datad => \ram_rw_control_inst|read_sec\(1),
	combout => \sd_read_inst|CMD17~18_combout\);

-- Location: FF_X18_Y21_N29
\sd_read_inst|CMD17[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_read_inst|CMD17~18_combout\,
	sclr => \sd_initial_inst|ALT_INV_init_o~q\,
	ena => \sd_read_inst|CMD17[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|CMD17\(9));

-- Location: LCCOMB_X18_Y21_N22
\sd_read_inst|CMD17~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|CMD17~19_combout\ = (\sd_read_inst|mystate\(0) & ((\sd_read_inst|CMD17\(9)))) # (!\sd_read_inst|mystate\(0) & (\ram_rw_control_inst|read_sec\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ram_rw_control_inst|read_sec\(2),
	datac => \sd_read_inst|mystate\(0),
	datad => \sd_read_inst|CMD17\(9),
	combout => \sd_read_inst|CMD17~19_combout\);

-- Location: FF_X18_Y21_N23
\sd_read_inst|CMD17[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_read_inst|CMD17~19_combout\,
	sclr => \sd_initial_inst|ALT_INV_init_o~q\,
	ena => \sd_read_inst|CMD17[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|CMD17\(10));

-- Location: LCCOMB_X18_Y21_N8
\sd_read_inst|CMD17~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|CMD17~20_combout\ = (\sd_read_inst|mystate\(0) & ((\sd_read_inst|CMD17\(10)))) # (!\sd_read_inst|mystate\(0) & (\ram_rw_control_inst|read_sec\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_read_inst|mystate\(0),
	datab => \ram_rw_control_inst|read_sec\(3),
	datac => \sd_read_inst|CMD17\(10),
	combout => \sd_read_inst|CMD17~20_combout\);

-- Location: FF_X18_Y21_N9
\sd_read_inst|CMD17[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_read_inst|CMD17~20_combout\,
	sclr => \sd_initial_inst|ALT_INV_init_o~q\,
	ena => \sd_read_inst|CMD17[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|CMD17\(11));

-- Location: LCCOMB_X19_Y21_N26
\sd_read_inst|CMD17~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|CMD17~21_combout\ = (\sd_read_inst|mystate\(0) & ((\sd_read_inst|CMD17\(11)))) # (!\sd_read_inst|mystate\(0) & (\ram_rw_control_inst|read_sec\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_rw_control_inst|read_sec\(4),
	datab => \sd_read_inst|mystate\(0),
	datad => \sd_read_inst|CMD17\(11),
	combout => \sd_read_inst|CMD17~21_combout\);

-- Location: FF_X19_Y21_N27
\sd_read_inst|CMD17[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_read_inst|CMD17~21_combout\,
	sclr => \sd_initial_inst|ALT_INV_init_o~q\,
	ena => \sd_read_inst|CMD17[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|CMD17\(12));

-- Location: LCCOMB_X19_Y21_N0
\sd_read_inst|CMD17~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|CMD17~22_combout\ = (\sd_read_inst|mystate\(0) & ((\sd_read_inst|CMD17\(12)))) # (!\sd_read_inst|mystate\(0) & (\ram_rw_control_inst|read_sec\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ram_rw_control_inst|read_sec\(5),
	datac => \sd_read_inst|CMD17\(12),
	datad => \sd_read_inst|mystate\(0),
	combout => \sd_read_inst|CMD17~22_combout\);

-- Location: FF_X19_Y21_N1
\sd_read_inst|CMD17[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_read_inst|CMD17~22_combout\,
	sclr => \sd_initial_inst|ALT_INV_init_o~q\,
	ena => \sd_read_inst|CMD17[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|CMD17\(13));

-- Location: LCCOMB_X19_Y21_N14
\sd_read_inst|CMD17~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|CMD17~23_combout\ = (\sd_read_inst|mystate\(0) & ((\sd_read_inst|CMD17\(13)))) # (!\sd_read_inst|mystate\(0) & (\ram_rw_control_inst|read_sec\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_rw_control_inst|read_sec\(6),
	datab => \sd_read_inst|CMD17\(13),
	datad => \sd_read_inst|mystate\(0),
	combout => \sd_read_inst|CMD17~23_combout\);

-- Location: FF_X19_Y21_N15
\sd_read_inst|CMD17[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_read_inst|CMD17~23_combout\,
	sclr => \sd_initial_inst|ALT_INV_init_o~q\,
	ena => \sd_read_inst|CMD17[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|CMD17\(14));

-- Location: LCCOMB_X19_Y21_N8
\sd_read_inst|CMD17~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|CMD17~24_combout\ = (\sd_read_inst|mystate\(0) & ((\sd_read_inst|CMD17\(14)))) # (!\sd_read_inst|mystate\(0) & (\ram_rw_control_inst|read_sec\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ram_rw_control_inst|read_sec\(7),
	datac => \sd_read_inst|CMD17\(14),
	datad => \sd_read_inst|mystate\(0),
	combout => \sd_read_inst|CMD17~24_combout\);

-- Location: FF_X19_Y21_N9
\sd_read_inst|CMD17[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_read_inst|CMD17~24_combout\,
	sclr => \sd_initial_inst|ALT_INV_init_o~q\,
	ena => \sd_read_inst|CMD17[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|CMD17\(15));

-- Location: LCCOMB_X19_Y21_N30
\sd_read_inst|CMD17~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|CMD17~25_combout\ = (\sd_read_inst|mystate\(0) & ((\sd_read_inst|CMD17\(15)))) # (!\sd_read_inst|mystate\(0) & (\ram_rw_control_inst|read_sec\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_rw_control_inst|read_sec\(8),
	datac => \sd_read_inst|CMD17\(15),
	datad => \sd_read_inst|mystate\(0),
	combout => \sd_read_inst|CMD17~25_combout\);

-- Location: FF_X19_Y21_N31
\sd_read_inst|CMD17[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_read_inst|CMD17~25_combout\,
	sclr => \sd_initial_inst|ALT_INV_init_o~q\,
	ena => \sd_read_inst|CMD17[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|CMD17\(16));

-- Location: LCCOMB_X19_Y21_N4
\sd_read_inst|CMD17~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|CMD17~26_combout\ = (\sd_read_inst|mystate\(0) & ((\sd_read_inst|CMD17\(16)))) # (!\sd_read_inst|mystate\(0) & (\ram_rw_control_inst|read_sec\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ram_rw_control_inst|read_sec\(9),
	datac => \sd_read_inst|CMD17\(16),
	datad => \sd_read_inst|mystate\(0),
	combout => \sd_read_inst|CMD17~26_combout\);

-- Location: FF_X19_Y21_N5
\sd_read_inst|CMD17[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_read_inst|CMD17~26_combout\,
	sclr => \sd_initial_inst|ALT_INV_init_o~q\,
	ena => \sd_read_inst|CMD17[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|CMD17\(17));

-- Location: LCCOMB_X19_Y21_N22
\sd_read_inst|CMD17~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|CMD17~27_combout\ = (\sd_read_inst|mystate\(0) & (\sd_read_inst|CMD17\(17))) # (!\sd_read_inst|mystate\(0) & ((\ram_rw_control_inst|read_sec\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_read_inst|mystate\(0),
	datac => \sd_read_inst|CMD17\(17),
	datad => \ram_rw_control_inst|read_sec\(10),
	combout => \sd_read_inst|CMD17~27_combout\);

-- Location: FF_X19_Y21_N23
\sd_read_inst|CMD17[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_read_inst|CMD17~27_combout\,
	sclr => \sd_initial_inst|ALT_INV_init_o~q\,
	ena => \sd_read_inst|CMD17[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|CMD17\(18));

-- Location: LCCOMB_X19_Y21_N16
\sd_read_inst|CMD17~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|CMD17~28_combout\ = (\sd_read_inst|mystate\(0) & ((\sd_read_inst|CMD17\(18)))) # (!\sd_read_inst|mystate\(0) & (\ram_rw_control_inst|read_sec\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_rw_control_inst|read_sec\(11),
	datac => \sd_read_inst|CMD17\(18),
	datad => \sd_read_inst|mystate\(0),
	combout => \sd_read_inst|CMD17~28_combout\);

-- Location: FF_X19_Y21_N17
\sd_read_inst|CMD17[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_read_inst|CMD17~28_combout\,
	sclr => \sd_initial_inst|ALT_INV_init_o~q\,
	ena => \sd_read_inst|CMD17[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|CMD17\(19));

-- Location: LCCOMB_X18_Y21_N30
\sd_read_inst|CMD17~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|CMD17~29_combout\ = (\sd_read_inst|mystate\(0) & ((\sd_read_inst|CMD17\(19)))) # (!\sd_read_inst|mystate\(0) & (\ram_rw_control_inst|read_sec\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_read_inst|mystate\(0),
	datac => \ram_rw_control_inst|read_sec\(12),
	datad => \sd_read_inst|CMD17\(19),
	combout => \sd_read_inst|CMD17~29_combout\);

-- Location: FF_X18_Y21_N31
\sd_read_inst|CMD17[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_read_inst|CMD17~29_combout\,
	sclr => \sd_initial_inst|ALT_INV_init_o~q\,
	ena => \sd_read_inst|CMD17[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|CMD17\(20));

-- Location: LCCOMB_X18_Y21_N12
\sd_read_inst|CMD17~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|CMD17~30_combout\ = (\sd_read_inst|mystate\(0) & ((\sd_read_inst|CMD17\(20)))) # (!\sd_read_inst|mystate\(0) & (\ram_rw_control_inst|read_sec\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_read_inst|mystate\(0),
	datab => \ram_rw_control_inst|read_sec\(13),
	datac => \sd_read_inst|CMD17\(20),
	combout => \sd_read_inst|CMD17~30_combout\);

-- Location: FF_X18_Y21_N13
\sd_read_inst|CMD17[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_read_inst|CMD17~30_combout\,
	sclr => \sd_initial_inst|ALT_INV_init_o~q\,
	ena => \sd_read_inst|CMD17[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|CMD17\(21));

-- Location: LCCOMB_X18_Y20_N0
\sd_read_inst|CMD17~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|CMD17~31_combout\ = (\sd_read_inst|mystate\(0) & (\sd_read_inst|CMD17\(21))) # (!\sd_read_inst|mystate\(0) & ((\ram_rw_control_inst|read_sec\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_read_inst|mystate\(0),
	datac => \sd_read_inst|CMD17\(21),
	datad => \ram_rw_control_inst|read_sec\(14),
	combout => \sd_read_inst|CMD17~31_combout\);

-- Location: FF_X18_Y20_N1
\sd_read_inst|CMD17[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_read_inst|CMD17~31_combout\,
	sclr => \sd_initial_inst|ALT_INV_init_o~q\,
	ena => \sd_read_inst|CMD17[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|CMD17\(22));

-- Location: LCCOMB_X18_Y20_N30
\sd_read_inst|CMD17~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|CMD17~32_combout\ = (\sd_read_inst|mystate\(0) & ((\sd_read_inst|CMD17\(22)))) # (!\sd_read_inst|mystate\(0) & (\ram_rw_control_inst|read_sec\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_read_inst|mystate\(0),
	datac => \ram_rw_control_inst|read_sec\(15),
	datad => \sd_read_inst|CMD17\(22),
	combout => \sd_read_inst|CMD17~32_combout\);

-- Location: FF_X18_Y20_N31
\sd_read_inst|CMD17[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_read_inst|CMD17~32_combout\,
	sclr => \sd_initial_inst|ALT_INV_init_o~q\,
	ena => \sd_read_inst|CMD17[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|CMD17\(23));

-- Location: LCCOMB_X18_Y20_N4
\sd_read_inst|CMD17~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|CMD17~33_combout\ = (\sd_read_inst|mystate\(0) & (\sd_read_inst|CMD17\(23))) # (!\sd_read_inst|mystate\(0) & ((\ram_rw_control_inst|read_sec\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_read_inst|mystate\(0),
	datac => \sd_read_inst|CMD17\(23),
	datad => \ram_rw_control_inst|read_sec\(16),
	combout => \sd_read_inst|CMD17~33_combout\);

-- Location: FF_X18_Y20_N5
\sd_read_inst|CMD17[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_read_inst|CMD17~33_combout\,
	sclr => \sd_initial_inst|ALT_INV_init_o~q\,
	ena => \sd_read_inst|CMD17[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|CMD17\(24));

-- Location: LCCOMB_X18_Y20_N26
\sd_read_inst|CMD17~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|CMD17~34_combout\ = (\sd_read_inst|mystate\(0) & ((\sd_read_inst|CMD17\(24)))) # (!\sd_read_inst|mystate\(0) & (\ram_rw_control_inst|read_sec\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ram_rw_control_inst|read_sec\(17),
	datac => \sd_read_inst|CMD17\(24),
	datad => \sd_read_inst|mystate\(0),
	combout => \sd_read_inst|CMD17~34_combout\);

-- Location: FF_X18_Y20_N27
\sd_read_inst|CMD17[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_read_inst|CMD17~34_combout\,
	sclr => \sd_initial_inst|ALT_INV_init_o~q\,
	ena => \sd_read_inst|CMD17[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|CMD17\(25));

-- Location: LCCOMB_X18_Y20_N12
\sd_read_inst|CMD17~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|CMD17~35_combout\ = (\sd_read_inst|mystate\(0) & ((\sd_read_inst|CMD17\(25)))) # (!\sd_read_inst|mystate\(0) & (\ram_rw_control_inst|read_sec\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ram_rw_control_inst|read_sec\(18),
	datac => \sd_read_inst|CMD17\(25),
	datad => \sd_read_inst|mystate\(0),
	combout => \sd_read_inst|CMD17~35_combout\);

-- Location: FF_X18_Y20_N13
\sd_read_inst|CMD17[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_read_inst|CMD17~35_combout\,
	sclr => \sd_initial_inst|ALT_INV_init_o~q\,
	ena => \sd_read_inst|CMD17[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|CMD17\(26));

-- Location: LCCOMB_X18_Y20_N18
\sd_read_inst|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|Equal0~10_combout\ = (!\sd_read_inst|CMD17\(25) & (!\sd_read_inst|CMD17\(24) & (!\sd_read_inst|CMD17\(27) & !\sd_read_inst|CMD17\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_read_inst|CMD17\(25),
	datab => \sd_read_inst|CMD17\(24),
	datac => \sd_read_inst|CMD17\(27),
	datad => \sd_read_inst|CMD17\(26),
	combout => \sd_read_inst|Equal0~10_combout\);

-- Location: LCCOMB_X18_Y19_N16
\sd_read_inst|Equal0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|Equal0~13_combout\ = (!\sd_read_inst|CMD17\(36) & (!\sd_read_inst|CMD17\(38) & (!\sd_read_inst|CMD17\(37) & !\sd_read_inst|CMD17\(39))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_read_inst|CMD17\(36),
	datab => \sd_read_inst|CMD17\(38),
	datac => \sd_read_inst|CMD17\(37),
	datad => \sd_read_inst|CMD17\(39),
	combout => \sd_read_inst|Equal0~13_combout\);

-- Location: LCCOMB_X18_Y19_N6
\sd_read_inst|Equal0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|Equal0~14_combout\ = (\sd_read_inst|Equal0~12_combout\ & (\sd_read_inst|Equal0~11_combout\ & (\sd_read_inst|Equal0~10_combout\ & \sd_read_inst|Equal0~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_read_inst|Equal0~12_combout\,
	datab => \sd_read_inst|Equal0~11_combout\,
	datac => \sd_read_inst|Equal0~10_combout\,
	datad => \sd_read_inst|Equal0~13_combout\,
	combout => \sd_read_inst|Equal0~14_combout\);

-- Location: LCCOMB_X19_Y21_N6
\sd_read_inst|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|Mux3~0_combout\ = (((!\sd_read_inst|rx_valid~q\) # (!\sd_read_inst|Equal0~14_combout\)) # (!\sd_read_inst|Equal0~4_combout\)) # (!\sd_read_inst|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_read_inst|Equal0~9_combout\,
	datab => \sd_read_inst|Equal0~4_combout\,
	datac => \sd_read_inst|Equal0~14_combout\,
	datad => \sd_read_inst|rx_valid~q\,
	combout => \sd_read_inst|Mux3~0_combout\);

-- Location: LCCOMB_X23_Y20_N16
\sd_read_inst|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|Mux3~1_combout\ = (\sd_read_inst|mystate[1]~3_combout\ & ((\sd_read_inst|Selector49~0_combout\) # ((\sd_read_inst|mystate\(0) & \sd_read_inst|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_read_inst|Selector49~0_combout\,
	datab => \sd_read_inst|mystate[1]~3_combout\,
	datac => \sd_read_inst|mystate\(0),
	datad => \sd_read_inst|Mux3~0_combout\,
	combout => \sd_read_inst|Mux3~1_combout\);

-- Location: FF_X23_Y20_N17
\sd_read_inst|mystate[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_read_inst|Mux3~1_combout\,
	sclr => \sd_initial_inst|ALT_INV_init_o~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|mystate\(0));

-- Location: LCCOMB_X23_Y20_N28
\sd_read_inst|mystate[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|mystate[1]~2_combout\ = (!\sd_read_inst|mystate\(0)) # (!\sd_initial_inst|init_o~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sd_initial_inst|init_o~q\,
	datad => \sd_read_inst|mystate\(0),
	combout => \sd_read_inst|mystate[1]~2_combout\);

-- Location: LCCOMB_X23_Y20_N4
\sd_read_inst|SD_cs~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|SD_cs~feeder_combout\ = \sd_read_inst|mystate[1]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sd_read_inst|mystate[1]~2_combout\,
	combout => \sd_read_inst|SD_cs~feeder_combout\);

-- Location: LCCOMB_X22_Y20_N14
\sd_read_inst|SD_datain~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|SD_datain~0_combout\ = (\sd_read_inst|mystate\(0) & (!\sd_read_inst|Equal0~15_combout\ & ((!\sd_read_inst|mystate\(2))))) # (!\sd_read_inst|mystate\(0) & (((\sd_read_inst|LessThan1~6_combout\) # (!\sd_read_inst|mystate\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_read_inst|Equal0~15_combout\,
	datab => \sd_read_inst|mystate\(0),
	datac => \sd_read_inst|LessThan1~6_combout\,
	datad => \sd_read_inst|mystate\(2),
	combout => \sd_read_inst|SD_datain~0_combout\);

-- Location: LCCOMB_X23_Y20_N2
\sd_read_inst|SD_datain~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|SD_datain~1_combout\ = ((!\sd_read_inst|mystate\(1) & \sd_read_inst|SD_datain~0_combout\)) # (!\sd_initial_inst|init_o~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_read_inst|mystate\(1),
	datac => \sd_initial_inst|init_o~q\,
	datad => \sd_read_inst|SD_datain~0_combout\,
	combout => \sd_read_inst|SD_datain~1_combout\);

-- Location: FF_X23_Y20_N5
\sd_read_inst|SD_cs\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_read_inst|SD_cs~feeder_combout\,
	ena => \sd_read_inst|SD_datain~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|SD_cs~q\);

-- Location: LCCOMB_X23_Y20_N14
\SD_cs~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SD_cs~0_combout\ = (\sd_initial_inst|init_o~q\ & ((\sd_read_inst|SD_cs~q\))) # (!\sd_initial_inst|init_o~q\ & (\sd_initial_inst|SD_cs~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|SD_cs~q\,
	datab => \sd_read_inst|SD_cs~q\,
	datac => \sd_initial_inst|init_o~q\,
	combout => \SD_cs~0_combout\);

-- Location: LCCOMB_X21_Y14_N4
\sd_initial_inst|Selector51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector51~0_combout\ = (\sd_initial_inst|CMD55\(45) & \sd_initial_inst|state\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|CMD55\(45),
	datad => \sd_initial_inst|state\(1),
	combout => \sd_initial_inst|Selector51~0_combout\);

-- Location: LCCOMB_X25_Y15_N4
\sd_initial_inst|CMD55[47]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|CMD55[47]~1_combout\ = ((\sd_initial_inst|state\(0) & ((\sd_initial_inst|always3~3_combout\) # (\sd_initial_inst|state\(1)))) # (!\sd_initial_inst|state\(0) & ((!\sd_initial_inst|state\(1))))) # (!\sd_initial_inst|CMD0[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|CMD0[0]~0_combout\,
	datab => \sd_initial_inst|state\(0),
	datac => \sd_initial_inst|always3~3_combout\,
	datad => \sd_initial_inst|state\(1),
	combout => \sd_initial_inst|CMD55[47]~1_combout\);

-- Location: LCCOMB_X25_Y15_N6
\sd_initial_inst|CMD55[47]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|CMD55[47]~2_combout\ = (!\sd_initial_inst|CMD55[32]~0_combout\ & (!\sd_initial_inst|CMD55[47]~1_combout\ & \sd_initial_inst|state\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|CMD55[32]~0_combout\,
	datab => \sd_initial_inst|CMD55[47]~1_combout\,
	datac => \sd_initial_inst|state\(2),
	combout => \sd_initial_inst|CMD55[47]~2_combout\);

-- Location: FF_X21_Y14_N5
\sd_initial_inst|CMD55[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector51~0_combout\,
	ena => \sd_initial_inst|CMD55[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD55\(46));

-- Location: LCCOMB_X21_Y14_N0
\sd_initial_inst|Selector50~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector50~0_combout\ = (!\sd_initial_inst|CMD55\(46) & \sd_initial_inst|state\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sd_initial_inst|CMD55\(46),
	datad => \sd_initial_inst|state\(1),
	combout => \sd_initial_inst|Selector50~0_combout\);

-- Location: FF_X21_Y14_N1
\sd_initial_inst|CMD55[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector50~0_combout\,
	ena => \sd_initial_inst|CMD55[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD55\(47));

-- Location: LCCOMB_X23_Y14_N14
\sd_initial_inst|Selector81~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector81~0_combout\ = (\sd_initial_inst|CMD55\(15) & \sd_initial_inst|state\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|CMD55\(15),
	datac => \sd_initial_inst|state\(1),
	combout => \sd_initial_inst|Selector81~0_combout\);

-- Location: FF_X23_Y14_N15
\sd_initial_inst|CMD55[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector81~0_combout\,
	ena => \sd_initial_inst|CMD55[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD55\(16));

-- Location: LCCOMB_X23_Y14_N16
\sd_initial_inst|Selector80~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector80~0_combout\ = (\sd_initial_inst|state\(1) & \sd_initial_inst|CMD55\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_initial_inst|state\(1),
	datac => \sd_initial_inst|CMD55\(16),
	combout => \sd_initial_inst|Selector80~0_combout\);

-- Location: FF_X23_Y14_N17
\sd_initial_inst|CMD55[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector80~0_combout\,
	ena => \sd_initial_inst|CMD55[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD55\(17));

-- Location: LCCOMB_X23_Y14_N22
\sd_initial_inst|Selector79~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector79~0_combout\ = (\sd_initial_inst|CMD55\(17) & \sd_initial_inst|state\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_initial_inst|CMD55\(17),
	datac => \sd_initial_inst|state\(1),
	combout => \sd_initial_inst|Selector79~0_combout\);

-- Location: FF_X23_Y14_N23
\sd_initial_inst|CMD55[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector79~0_combout\,
	ena => \sd_initial_inst|CMD55[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD55\(18));

-- Location: LCCOMB_X23_Y14_N20
\sd_initial_inst|Selector78~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector78~0_combout\ = (\sd_initial_inst|state\(1) & \sd_initial_inst|CMD55\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_initial_inst|state\(1),
	datac => \sd_initial_inst|CMD55\(18),
	combout => \sd_initial_inst|Selector78~0_combout\);

-- Location: FF_X23_Y14_N21
\sd_initial_inst|CMD55[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector78~0_combout\,
	ena => \sd_initial_inst|CMD55[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD55\(19));

-- Location: LCCOMB_X23_Y14_N8
\sd_initial_inst|Selector77~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector77~0_combout\ = (\sd_initial_inst|CMD55\(19) & \sd_initial_inst|state\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_initial_inst|CMD55\(19),
	datac => \sd_initial_inst|state\(1),
	combout => \sd_initial_inst|Selector77~0_combout\);

-- Location: FF_X23_Y14_N9
\sd_initial_inst|CMD55[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector77~0_combout\,
	ena => \sd_initial_inst|CMD55[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD55\(20));

-- Location: LCCOMB_X23_Y14_N18
\sd_initial_inst|Selector76~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector76~0_combout\ = (\sd_initial_inst|state\(1) & \sd_initial_inst|CMD55\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_initial_inst|state\(1),
	datac => \sd_initial_inst|CMD55\(20),
	combout => \sd_initial_inst|Selector76~0_combout\);

-- Location: FF_X23_Y14_N19
\sd_initial_inst|CMD55[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector76~0_combout\,
	ena => \sd_initial_inst|CMD55[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD55\(21));

-- Location: LCCOMB_X23_Y14_N4
\sd_initial_inst|Selector75~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector75~0_combout\ = (\sd_initial_inst|CMD55\(21) & \sd_initial_inst|state\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_initial_inst|CMD55\(21),
	datac => \sd_initial_inst|state\(1),
	combout => \sd_initial_inst|Selector75~0_combout\);

-- Location: FF_X23_Y14_N5
\sd_initial_inst|CMD55[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector75~0_combout\,
	ena => \sd_initial_inst|CMD55[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD55\(22));

-- Location: LCCOMB_X23_Y14_N24
\sd_initial_inst|Equal4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Equal4~6_combout\ = (\sd_initial_inst|CMD55\(23)) # ((\sd_initial_inst|CMD55\(20)) # ((\sd_initial_inst|CMD55\(22)) # (\sd_initial_inst|CMD55\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|CMD55\(23),
	datab => \sd_initial_inst|CMD55\(20),
	datac => \sd_initial_inst|CMD55\(22),
	datad => \sd_initial_inst|CMD55\(21),
	combout => \sd_initial_inst|Equal4~6_combout\);

-- Location: LCCOMB_X23_Y14_N30
\sd_initial_inst|Selector74~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector74~0_combout\ = (\sd_initial_inst|state\(1) & \sd_initial_inst|CMD55\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_initial_inst|state\(1),
	datac => \sd_initial_inst|CMD55\(22),
	combout => \sd_initial_inst|Selector74~0_combout\);

-- Location: FF_X23_Y14_N31
\sd_initial_inst|CMD55[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector74~0_combout\,
	ena => \sd_initial_inst|CMD55[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD55\(23));

-- Location: LCCOMB_X23_Y14_N26
\sd_initial_inst|Selector73~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector73~0_combout\ = (\sd_initial_inst|state\(1) & \sd_initial_inst|CMD55\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_initial_inst|state\(1),
	datac => \sd_initial_inst|CMD55\(23),
	combout => \sd_initial_inst|Selector73~0_combout\);

-- Location: FF_X23_Y14_N27
\sd_initial_inst|CMD55[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector73~0_combout\,
	ena => \sd_initial_inst|CMD55[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD55\(24));

-- Location: LCCOMB_X23_Y14_N0
\sd_initial_inst|Selector72~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector72~0_combout\ = (\sd_initial_inst|state\(1) & \sd_initial_inst|CMD55\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_initial_inst|state\(1),
	datac => \sd_initial_inst|CMD55\(24),
	combout => \sd_initial_inst|Selector72~0_combout\);

-- Location: FF_X23_Y14_N1
\sd_initial_inst|CMD55[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector72~0_combout\,
	ena => \sd_initial_inst|CMD55[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD55\(25));

-- Location: LCCOMB_X23_Y14_N2
\sd_initial_inst|Selector71~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector71~0_combout\ = (\sd_initial_inst|CMD55\(25) & \sd_initial_inst|state\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_initial_inst|CMD55\(25),
	datac => \sd_initial_inst|state\(1),
	combout => \sd_initial_inst|Selector71~0_combout\);

-- Location: FF_X23_Y14_N3
\sd_initial_inst|CMD55[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector71~0_combout\,
	ena => \sd_initial_inst|CMD55[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD55\(26));

-- Location: LCCOMB_X24_Y14_N28
\sd_initial_inst|Selector70~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector70~0_combout\ = (\sd_initial_inst|state\(1) & \sd_initial_inst|CMD55\(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sd_initial_inst|state\(1),
	datad => \sd_initial_inst|CMD55\(26),
	combout => \sd_initial_inst|Selector70~0_combout\);

-- Location: FF_X24_Y14_N29
\sd_initial_inst|CMD55[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector70~0_combout\,
	ena => \sd_initial_inst|CMD55[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD55\(27));

-- Location: LCCOMB_X23_Y14_N12
\sd_initial_inst|Equal4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Equal4~7_combout\ = (\sd_initial_inst|CMD55\(24)) # ((\sd_initial_inst|CMD55\(26)) # ((\sd_initial_inst|CMD55\(27)) # (\sd_initial_inst|CMD55\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|CMD55\(24),
	datab => \sd_initial_inst|CMD55\(26),
	datac => \sd_initial_inst|CMD55\(27),
	datad => \sd_initial_inst|CMD55\(25),
	combout => \sd_initial_inst|Equal4~7_combout\);

-- Location: LCCOMB_X24_Y14_N24
\sd_initial_inst|Selector68~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector68~0_combout\ = (\sd_initial_inst|CMD55\(28) & \sd_initial_inst|state\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|CMD55\(28),
	datab => \sd_initial_inst|state\(1),
	combout => \sd_initial_inst|Selector68~0_combout\);

-- Location: FF_X24_Y14_N25
\sd_initial_inst|CMD55[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector68~0_combout\,
	ena => \sd_initial_inst|CMD55[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD55\(29));

-- Location: LCCOMB_X24_Y14_N14
\sd_initial_inst|Selector67~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector67~0_combout\ = (\sd_initial_inst|CMD55\(29) & \sd_initial_inst|state\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_initial_inst|CMD55\(29),
	datac => \sd_initial_inst|state\(1),
	combout => \sd_initial_inst|Selector67~0_combout\);

-- Location: FF_X24_Y14_N15
\sd_initial_inst|CMD55[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector67~0_combout\,
	ena => \sd_initial_inst|CMD55[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD55\(30));

-- Location: LCCOMB_X24_Y14_N0
\sd_initial_inst|Selector66~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector66~0_combout\ = (\sd_initial_inst|state\(1) & \sd_initial_inst|CMD55\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_initial_inst|state\(1),
	datac => \sd_initial_inst|CMD55\(30),
	combout => \sd_initial_inst|Selector66~0_combout\);

-- Location: FF_X24_Y14_N1
\sd_initial_inst|CMD55[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector66~0_combout\,
	ena => \sd_initial_inst|CMD55[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD55\(31));

-- Location: LCCOMB_X24_Y14_N2
\sd_initial_inst|Equal4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Equal4~8_combout\ = (\sd_initial_inst|CMD55\(28)) # ((\sd_initial_inst|CMD55\(29)) # ((\sd_initial_inst|CMD55\(30)) # (\sd_initial_inst|CMD55\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|CMD55\(28),
	datab => \sd_initial_inst|CMD55\(29),
	datac => \sd_initial_inst|CMD55\(30),
	datad => \sd_initial_inst|CMD55\(31),
	combout => \sd_initial_inst|Equal4~8_combout\);

-- Location: LCCOMB_X23_Y14_N10
\sd_initial_inst|Equal4~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Equal4~9_combout\ = (\sd_initial_inst|Equal4~5_combout\) # ((\sd_initial_inst|Equal4~6_combout\) # ((\sd_initial_inst|Equal4~7_combout\) # (\sd_initial_inst|Equal4~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|Equal4~5_combout\,
	datab => \sd_initial_inst|Equal4~6_combout\,
	datac => \sd_initial_inst|Equal4~7_combout\,
	datad => \sd_initial_inst|Equal4~8_combout\,
	combout => \sd_initial_inst|Equal4~9_combout\);

-- Location: LCCOMB_X21_Y14_N18
\sd_initial_inst|Selector56~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector56~0_combout\ = (\sd_initial_inst|CMD55\(40) & \sd_initial_inst|state\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|CMD55\(40),
	datad => \sd_initial_inst|state\(1),
	combout => \sd_initial_inst|Selector56~0_combout\);

-- Location: FF_X21_Y14_N19
\sd_initial_inst|CMD55[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector56~0_combout\,
	ena => \sd_initial_inst|CMD55[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD55\(41));

-- Location: LCCOMB_X21_Y14_N20
\sd_initial_inst|Selector55~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector55~0_combout\ = (\sd_initial_inst|CMD55\(41) & \sd_initial_inst|state\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_initial_inst|CMD55\(41),
	datad => \sd_initial_inst|state\(1),
	combout => \sd_initial_inst|Selector55~0_combout\);

-- Location: FF_X21_Y14_N21
\sd_initial_inst|CMD55[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector55~0_combout\,
	ena => \sd_initial_inst|CMD55[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD55\(42));

-- Location: LCCOMB_X21_Y14_N26
\sd_initial_inst|Selector54~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector54~0_combout\ = (!\sd_initial_inst|CMD55\(42) & \sd_initial_inst|state\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_initial_inst|CMD55\(42),
	datad => \sd_initial_inst|state\(1),
	combout => \sd_initial_inst|Selector54~0_combout\);

-- Location: FF_X21_Y14_N27
\sd_initial_inst|CMD55[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector54~0_combout\,
	ena => \sd_initial_inst|CMD55[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD55\(43));

-- Location: LCCOMB_X21_Y14_N22
\sd_initial_inst|Equal4~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Equal4~12_combout\ = (((\sd_initial_inst|CMD55\(43)) # (!\sd_initial_inst|CMD55\(42))) # (!\sd_initial_inst|CMD55\(41))) # (!\sd_initial_inst|CMD55\(40))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|CMD55\(40),
	datab => \sd_initial_inst|CMD55\(41),
	datac => \sd_initial_inst|CMD55\(43),
	datad => \sd_initial_inst|CMD55\(42),
	combout => \sd_initial_inst|Equal4~12_combout\);

-- Location: LCCOMB_X21_Y14_N8
\sd_initial_inst|Selector53~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector53~0_combout\ = (!\sd_initial_inst|CMD55\(43) & \sd_initial_inst|state\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sd_initial_inst|CMD55\(43),
	datad => \sd_initial_inst|state\(1),
	combout => \sd_initial_inst|Selector53~0_combout\);

-- Location: FF_X21_Y14_N9
\sd_initial_inst|CMD55[44]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector53~0_combout\,
	ena => \sd_initial_inst|CMD55[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD55\(44));

-- Location: LCCOMB_X21_Y14_N6
\sd_initial_inst|Equal4~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Equal4~13_combout\ = (((\sd_initial_inst|CMD55\(47)) # (!\sd_initial_inst|CMD55\(44))) # (!\sd_initial_inst|CMD55\(46))) # (!\sd_initial_inst|CMD55\(45))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|CMD55\(45),
	datab => \sd_initial_inst|CMD55\(46),
	datac => \sd_initial_inst|CMD55\(44),
	datad => \sd_initial_inst|CMD55\(47),
	combout => \sd_initial_inst|Equal4~13_combout\);

-- Location: LCCOMB_X24_Y14_N4
\sd_initial_inst|Selector60~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector60~0_combout\ = (\sd_initial_inst|CMD55\(36) & \sd_initial_inst|state\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|CMD55\(36),
	datab => \sd_initial_inst|state\(1),
	combout => \sd_initial_inst|Selector60~0_combout\);

-- Location: FF_X24_Y14_N5
\sd_initial_inst|CMD55[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector60~0_combout\,
	ena => \sd_initial_inst|CMD55[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD55\(37));

-- Location: LCCOMB_X24_Y14_N22
\sd_initial_inst|Selector59~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector59~0_combout\ = (\sd_initial_inst|state\(1) & \sd_initial_inst|CMD55\(37))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_initial_inst|state\(1),
	datac => \sd_initial_inst|CMD55\(37),
	combout => \sd_initial_inst|Selector59~0_combout\);

-- Location: FF_X24_Y14_N23
\sd_initial_inst|CMD55[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector59~0_combout\,
	ena => \sd_initial_inst|CMD55[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD55\(38));

-- Location: LCCOMB_X24_Y14_N8
\sd_initial_inst|Selector58~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector58~0_combout\ = (\sd_initial_inst|state\(1) & \sd_initial_inst|CMD55\(38))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_initial_inst|state\(1),
	datac => \sd_initial_inst|CMD55\(38),
	combout => \sd_initial_inst|Selector58~0_combout\);

-- Location: FF_X24_Y14_N9
\sd_initial_inst|CMD55[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector58~0_combout\,
	ena => \sd_initial_inst|CMD55[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD55\(39));

-- Location: LCCOMB_X24_Y14_N26
\sd_initial_inst|Selector62~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector62~0_combout\ = (\sd_initial_inst|CMD55\(34) & \sd_initial_inst|state\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|CMD55\(34),
	datab => \sd_initial_inst|state\(1),
	combout => \sd_initial_inst|Selector62~0_combout\);

-- Location: FF_X24_Y14_N27
\sd_initial_inst|CMD55[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector62~0_combout\,
	ena => \sd_initial_inst|CMD55[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD55\(35));

-- Location: LCCOMB_X24_Y14_N6
\sd_initial_inst|Selector61~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector61~0_combout\ = (\sd_initial_inst|state\(1) & \sd_initial_inst|CMD55\(35))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_initial_inst|state\(1),
	datac => \sd_initial_inst|CMD55\(35),
	combout => \sd_initial_inst|Selector61~0_combout\);

-- Location: FF_X24_Y14_N7
\sd_initial_inst|CMD55[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector61~0_combout\,
	ena => \sd_initial_inst|CMD55[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD55\(36));

-- Location: LCCOMB_X24_Y14_N18
\sd_initial_inst|Equal4~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Equal4~11_combout\ = (\sd_initial_inst|CMD55\(38)) # ((\sd_initial_inst|CMD55\(37)) # ((\sd_initial_inst|CMD55\(39)) # (\sd_initial_inst|CMD55\(36))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|CMD55\(38),
	datab => \sd_initial_inst|CMD55\(37),
	datac => \sd_initial_inst|CMD55\(39),
	datad => \sd_initial_inst|CMD55\(36),
	combout => \sd_initial_inst|Equal4~11_combout\);

-- Location: LCCOMB_X22_Y14_N26
\sd_initial_inst|Equal4~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Equal4~14_combout\ = (\sd_initial_inst|Equal4~10_combout\) # ((\sd_initial_inst|Equal4~12_combout\) # ((\sd_initial_inst|Equal4~13_combout\) # (\sd_initial_inst|Equal4~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|Equal4~10_combout\,
	datab => \sd_initial_inst|Equal4~12_combout\,
	datac => \sd_initial_inst|Equal4~13_combout\,
	datad => \sd_initial_inst|Equal4~11_combout\,
	combout => \sd_initial_inst|Equal4~14_combout\);

-- Location: LCCOMB_X23_Y15_N18
\sd_initial_inst|Selector97~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector97~1_combout\ = ((\sd_initial_inst|state\(3)) # (\sd_initial_inst|state\(0) $ (!\sd_initial_inst|state\(1)))) # (!\sd_initial_inst|state\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|state\(2),
	datab => \sd_initial_inst|state\(3),
	datac => \sd_initial_inst|state\(0),
	datad => \sd_initial_inst|state\(1),
	combout => \sd_initial_inst|Selector97~1_combout\);

-- Location: LCCOMB_X23_Y15_N4
\sd_initial_inst|CMD55[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|CMD55[0]~3_combout\ = (\sd_initial_inst|reset~q\ & !\sd_initial_inst|Selector97~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sd_initial_inst|reset~q\,
	datad => \sd_initial_inst|Selector97~1_combout\,
	combout => \sd_initial_inst|CMD55[0]~3_combout\);

-- Location: LCCOMB_X22_Y15_N0
\sd_initial_inst|CMD55[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|CMD55[0]~4_combout\ = (\sd_initial_inst|CMD55[0]~3_combout\ & (((\sd_initial_inst|always3~3_combout\ & \sd_initial_inst|CMD55\(0))) # (!\sd_initial_inst|Selector97~0_combout\))) # (!\sd_initial_inst|CMD55[0]~3_combout\ & 
-- (((\sd_initial_inst|CMD55\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|always3~3_combout\,
	datab => \sd_initial_inst|Selector97~0_combout\,
	datac => \sd_initial_inst|CMD55\(0),
	datad => \sd_initial_inst|CMD55[0]~3_combout\,
	combout => \sd_initial_inst|CMD55[0]~4_combout\);

-- Location: FF_X22_Y15_N1
\sd_initial_inst|CMD55[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|CMD55[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD55\(0));

-- Location: LCCOMB_X21_Y14_N30
\sd_initial_inst|Selector96~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector96~0_combout\ = (\sd_initial_inst|state\(1) & \sd_initial_inst|CMD55\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_initial_inst|state\(1),
	datad => \sd_initial_inst|CMD55\(0),
	combout => \sd_initial_inst|Selector96~0_combout\);

-- Location: FF_X21_Y14_N31
\sd_initial_inst|CMD55[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector96~0_combout\,
	ena => \sd_initial_inst|CMD55[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD55\(1));

-- Location: LCCOMB_X21_Y14_N28
\sd_initial_inst|Selector95~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector95~0_combout\ = (\sd_initial_inst|CMD55\(1) & \sd_initial_inst|state\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sd_initial_inst|CMD55\(1),
	datad => \sd_initial_inst|state\(1),
	combout => \sd_initial_inst|Selector95~0_combout\);

-- Location: FF_X21_Y14_N29
\sd_initial_inst|CMD55[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector95~0_combout\,
	ena => \sd_initial_inst|CMD55[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD55\(2));

-- Location: LCCOMB_X21_Y14_N2
\sd_initial_inst|Selector94~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector94~0_combout\ = (\sd_initial_inst|CMD55\(2) & \sd_initial_inst|state\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_initial_inst|CMD55\(2),
	datad => \sd_initial_inst|state\(1),
	combout => \sd_initial_inst|Selector94~0_combout\);

-- Location: FF_X21_Y14_N3
\sd_initial_inst|CMD55[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector94~0_combout\,
	ena => \sd_initial_inst|CMD55[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD55\(3));

-- Location: LCCOMB_X21_Y14_N14
\sd_initial_inst|Selector93~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector93~0_combout\ = (\sd_initial_inst|CMD55\(3) & \sd_initial_inst|state\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_initial_inst|CMD55\(3),
	datad => \sd_initial_inst|state\(1),
	combout => \sd_initial_inst|Selector93~0_combout\);

-- Location: FF_X21_Y14_N15
\sd_initial_inst|CMD55[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector93~0_combout\,
	ena => \sd_initial_inst|CMD55[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD55\(4));

-- Location: LCCOMB_X21_Y14_N24
\sd_initial_inst|Selector92~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector92~0_combout\ = (\sd_initial_inst|CMD55\(4) & \sd_initial_inst|state\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sd_initial_inst|CMD55\(4),
	datad => \sd_initial_inst|state\(1),
	combout => \sd_initial_inst|Selector92~0_combout\);

-- Location: FF_X21_Y14_N25
\sd_initial_inst|CMD55[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector92~0_combout\,
	ena => \sd_initial_inst|CMD55[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD55\(5));

-- Location: LCCOMB_X22_Y14_N24
\sd_initial_inst|Selector91~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector91~0_combout\ = (\sd_initial_inst|CMD55\(5) & \sd_initial_inst|state\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_initial_inst|CMD55\(5),
	datac => \sd_initial_inst|state\(1),
	combout => \sd_initial_inst|Selector91~0_combout\);

-- Location: FF_X22_Y14_N25
\sd_initial_inst|CMD55[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector91~0_combout\,
	ena => \sd_initial_inst|CMD55[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD55\(6));

-- Location: LCCOMB_X22_Y14_N2
\sd_initial_inst|Selector90~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector90~0_combout\ = (\sd_initial_inst|state\(1) & \sd_initial_inst|CMD55\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sd_initial_inst|state\(1),
	datad => \sd_initial_inst|CMD55\(6),
	combout => \sd_initial_inst|Selector90~0_combout\);

-- Location: FF_X22_Y14_N3
\sd_initial_inst|CMD55[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector90~0_combout\,
	ena => \sd_initial_inst|CMD55[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD55\(7));

-- Location: LCCOMB_X22_Y14_N20
\sd_initial_inst|Equal4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Equal4~1_combout\ = (((!\sd_initial_inst|CMD55\(5)) # (!\sd_initial_inst|CMD55\(7))) # (!\sd_initial_inst|CMD55\(6))) # (!\sd_initial_inst|CMD55\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|CMD55\(4),
	datab => \sd_initial_inst|CMD55\(6),
	datac => \sd_initial_inst|CMD55\(7),
	datad => \sd_initial_inst|CMD55\(5),
	combout => \sd_initial_inst|Equal4~1_combout\);

-- Location: LCCOMB_X21_Y14_N16
\sd_initial_inst|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Equal4~0_combout\ = (((!\sd_initial_inst|CMD55\(0)) # (!\sd_initial_inst|CMD55\(1))) # (!\sd_initial_inst|CMD55\(2))) # (!\sd_initial_inst|CMD55\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|CMD55\(3),
	datab => \sd_initial_inst|CMD55\(2),
	datac => \sd_initial_inst|CMD55\(1),
	datad => \sd_initial_inst|CMD55\(0),
	combout => \sd_initial_inst|Equal4~0_combout\);

-- Location: LCCOMB_X23_Y14_N28
\sd_initial_inst|Selector89~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector89~0_combout\ = (\sd_initial_inst|state\(1) & !\sd_initial_inst|CMD55\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sd_initial_inst|state\(1),
	datad => \sd_initial_inst|CMD55\(7),
	combout => \sd_initial_inst|Selector89~0_combout\);

-- Location: FF_X23_Y14_N29
\sd_initial_inst|CMD55[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector89~0_combout\,
	ena => \sd_initial_inst|CMD55[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD55\(8));

-- Location: LCCOMB_X22_Y14_N14
\sd_initial_inst|Selector88~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector88~0_combout\ = (\sd_initial_inst|state\(1) & \sd_initial_inst|CMD55\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sd_initial_inst|state\(1),
	datad => \sd_initial_inst|CMD55\(8),
	combout => \sd_initial_inst|Selector88~0_combout\);

-- Location: FF_X22_Y14_N15
\sd_initial_inst|CMD55[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector88~0_combout\,
	ena => \sd_initial_inst|CMD55[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD55\(9));

-- Location: LCCOMB_X22_Y14_N4
\sd_initial_inst|Selector87~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector87~0_combout\ = (\sd_initial_inst|state\(1) & \sd_initial_inst|CMD55\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|state\(1),
	datac => \sd_initial_inst|CMD55\(9),
	combout => \sd_initial_inst|Selector87~0_combout\);

-- Location: FF_X22_Y14_N5
\sd_initial_inst|CMD55[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector87~0_combout\,
	ena => \sd_initial_inst|CMD55[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD55\(10));

-- Location: LCCOMB_X22_Y14_N30
\sd_initial_inst|Selector86~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector86~0_combout\ = (\sd_initial_inst|state\(1) & \sd_initial_inst|CMD55\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|state\(1),
	datac => \sd_initial_inst|CMD55\(10),
	combout => \sd_initial_inst|Selector86~0_combout\);

-- Location: FF_X22_Y14_N31
\sd_initial_inst|CMD55[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector86~0_combout\,
	ena => \sd_initial_inst|CMD55[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD55\(11));

-- Location: LCCOMB_X22_Y14_N22
\sd_initial_inst|Selector85~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector85~0_combout\ = (\sd_initial_inst|state\(1) & \sd_initial_inst|CMD55\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|state\(1),
	datac => \sd_initial_inst|CMD55\(11),
	combout => \sd_initial_inst|Selector85~0_combout\);

-- Location: FF_X22_Y14_N23
\sd_initial_inst|CMD55[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector85~0_combout\,
	ena => \sd_initial_inst|CMD55[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD55\(12));

-- Location: LCCOMB_X22_Y14_N8
\sd_initial_inst|Selector84~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector84~0_combout\ = (\sd_initial_inst|state\(1) & \sd_initial_inst|CMD55\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|state\(1),
	datac => \sd_initial_inst|CMD55\(12),
	combout => \sd_initial_inst|Selector84~0_combout\);

-- Location: FF_X22_Y14_N9
\sd_initial_inst|CMD55[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector84~0_combout\,
	ena => \sd_initial_inst|CMD55[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD55\(13));

-- Location: LCCOMB_X22_Y14_N16
\sd_initial_inst|Selector82~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector82~0_combout\ = (\sd_initial_inst|CMD55\(14) & \sd_initial_inst|state\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|CMD55\(14),
	datac => \sd_initial_inst|state\(1),
	combout => \sd_initial_inst|Selector82~0_combout\);

-- Location: FF_X22_Y14_N17
\sd_initial_inst|CMD55[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector82~0_combout\,
	ena => \sd_initial_inst|CMD55[47]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD55\(15));

-- Location: LCCOMB_X22_Y14_N18
\sd_initial_inst|Equal4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Equal4~3_combout\ = (\sd_initial_inst|CMD55\(14)) # ((\sd_initial_inst|CMD55\(13)) # ((\sd_initial_inst|CMD55\(12)) # (\sd_initial_inst|CMD55\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|CMD55\(14),
	datab => \sd_initial_inst|CMD55\(13),
	datac => \sd_initial_inst|CMD55\(12),
	datad => \sd_initial_inst|CMD55\(15),
	combout => \sd_initial_inst|Equal4~3_combout\);

-- Location: LCCOMB_X22_Y14_N0
\sd_initial_inst|Equal4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Equal4~4_combout\ = (\sd_initial_inst|Equal4~2_combout\) # ((\sd_initial_inst|Equal4~1_combout\) # ((\sd_initial_inst|Equal4~0_combout\) # (\sd_initial_inst|Equal4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|Equal4~2_combout\,
	datab => \sd_initial_inst|Equal4~1_combout\,
	datac => \sd_initial_inst|Equal4~0_combout\,
	datad => \sd_initial_inst|Equal4~3_combout\,
	combout => \sd_initial_inst|Equal4~4_combout\);

-- Location: LCCOMB_X22_Y14_N28
\sd_initial_inst|Equal4~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Equal4~15_combout\ = (\sd_initial_inst|Equal4~9_combout\) # ((\sd_initial_inst|Equal4~14_combout\) # (\sd_initial_inst|Equal4~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_initial_inst|Equal4~9_combout\,
	datac => \sd_initial_inst|Equal4~14_combout\,
	datad => \sd_initial_inst|Equal4~4_combout\,
	combout => \sd_initial_inst|Equal4~15_combout\);

-- Location: LCCOMB_X22_Y14_N6
\sd_initial_inst|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Mux4~3_combout\ = (\sd_initial_inst|state\(1) & (\sd_initial_inst|CMD55\(47) $ (!\sd_initial_inst|Equal4~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|state\(1),
	datac => \sd_initial_inst|CMD55\(47),
	datad => \sd_initial_inst|Equal4~15_combout\,
	combout => \sd_initial_inst|Mux4~3_combout\);

-- Location: LCCOMB_X22_Y16_N28
\sd_initial_inst|Selector98~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Selector98~0_combout\ = (!\sd_initial_inst|CMD8\(46) & \sd_initial_inst|state\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|CMD8\(46),
	datad => \sd_initial_inst|state\(2),
	combout => \sd_initial_inst|Selector98~0_combout\);

-- Location: FF_X22_Y16_N29
\sd_initial_inst|CMD8[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|Selector98~0_combout\,
	ena => \sd_initial_inst|CMD8[47]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|CMD8\(47));

-- Location: LCCOMB_X22_Y15_N30
\sd_initial_inst|Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Mux4~4_combout\ = (!\sd_initial_inst|state\(1) & (\sd_initial_inst|Equal2~15_combout\ $ (\sd_initial_inst|CMD8\(47))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_initial_inst|Equal2~15_combout\,
	datac => \sd_initial_inst|CMD8\(47),
	datad => \sd_initial_inst|state\(1),
	combout => \sd_initial_inst|Mux4~4_combout\);

-- Location: LCCOMB_X22_Y15_N20
\sd_initial_inst|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Mux4~1_combout\ = (\sd_initial_inst|state\(1) & ((\sd_initial_inst|Equal5~15_combout\ $ (!\sd_initial_inst|ACMD41\(47))))) # (!\sd_initial_inst|state\(1) & (\sd_initial_inst|state\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|state\(2),
	datab => \sd_initial_inst|Equal5~15_combout\,
	datac => \sd_initial_inst|ACMD41\(47),
	datad => \sd_initial_inst|state\(1),
	combout => \sd_initial_inst|Mux4~1_combout\);

-- Location: LCCOMB_X21_Y15_N14
\sd_initial_inst|state~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|state~0_combout\ = (!\sd_initial_inst|state\(1) & \sd_initial_inst|state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_initial_inst|state\(1),
	datac => \sd_initial_inst|state\(0),
	combout => \sd_initial_inst|state~0_combout\);

-- Location: LCCOMB_X22_Y15_N26
\sd_initial_inst|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Mux4~0_combout\ = (!\sd_initial_inst|state\(2) & ((\sd_initial_inst|CMD0\(47) $ (\sd_initial_inst|Equal0~15_combout\)) # (!\sd_initial_inst|state~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|CMD0\(47),
	datab => \sd_initial_inst|Equal0~15_combout\,
	datac => \sd_initial_inst|state\(2),
	datad => \sd_initial_inst|state~0_combout\,
	combout => \sd_initial_inst|Mux4~0_combout\);

-- Location: LCCOMB_X22_Y15_N10
\sd_initial_inst|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Mux4~2_combout\ = (\sd_initial_inst|Mux4~0_combout\) # ((\sd_initial_inst|state\(3)) # ((\sd_initial_inst|state\(0) & \sd_initial_inst|Mux4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|state\(0),
	datab => \sd_initial_inst|Mux4~1_combout\,
	datac => \sd_initial_inst|Mux4~0_combout\,
	datad => \sd_initial_inst|state\(3),
	combout => \sd_initial_inst|Mux4~2_combout\);

-- Location: LCCOMB_X22_Y15_N16
\sd_initial_inst|Mux4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|Mux4~5_combout\ = (\sd_initial_inst|Mux4~2_combout\) # ((!\sd_initial_inst|state\(0) & ((\sd_initial_inst|Mux4~3_combout\) # (\sd_initial_inst|Mux4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|state\(0),
	datab => \sd_initial_inst|Mux4~3_combout\,
	datac => \sd_initial_inst|Mux4~4_combout\,
	datad => \sd_initial_inst|Mux4~2_combout\,
	combout => \sd_initial_inst|Mux4~5_combout\);

-- Location: LCCOMB_X22_Y15_N14
\sd_initial_inst|SD_datain~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_initial_inst|SD_datain~feeder_combout\ = \sd_initial_inst|Mux4~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sd_initial_inst|Mux4~5_combout\,
	combout => \sd_initial_inst|SD_datain~feeder_combout\);

-- Location: FF_X22_Y15_N15
\sd_initial_inst|SD_datain\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_initial_inst|SD_datain~feeder_combout\,
	asdata => VCC,
	sload => \sd_initial_inst|ALT_INV_reset~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_initial_inst|SD_datain~q\);

-- Location: LCCOMB_X22_Y21_N24
\sd_read_inst|CMD17~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|CMD17~15_combout\ = (\sd_read_inst|CMD17\(45)) # ((!\sd_initial_inst|init_o~q\) # (!\sd_read_inst|mystate\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_read_inst|CMD17\(45),
	datab => \sd_read_inst|mystate\(0),
	datac => \sd_initial_inst|init_o~q\,
	combout => \sd_read_inst|CMD17~15_combout\);

-- Location: FF_X22_Y21_N25
\sd_read_inst|CMD17[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_read_inst|CMD17~15_combout\,
	ena => \sd_read_inst|CMD17[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|CMD17\(46));

-- Location: LCCOMB_X22_Y21_N2
\sd_read_inst|CMD17~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|CMD17~16_combout\ = (\sd_read_inst|mystate\(0) & (\sd_initial_inst|init_o~q\ & \sd_read_inst|CMD17\(46)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_read_inst|mystate\(0),
	datac => \sd_initial_inst|init_o~q\,
	datad => \sd_read_inst|CMD17\(46),
	combout => \sd_read_inst|CMD17~16_combout\);

-- Location: FF_X22_Y21_N3
\sd_read_inst|CMD17[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_read_inst|CMD17~16_combout\,
	ena => \sd_read_inst|CMD17[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|CMD17\(47));

-- Location: LCCOMB_X23_Y20_N0
\sd_read_inst|SD_datain~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|SD_datain~2_combout\ = ((\sd_read_inst|CMD17\(47)) # (!\sd_initial_inst|init_o~q\)) # (!\sd_read_inst|mystate\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_read_inst|mystate\(0),
	datab => \sd_initial_inst|init_o~q\,
	datad => \sd_read_inst|CMD17\(47),
	combout => \sd_read_inst|SD_datain~2_combout\);

-- Location: FF_X23_Y20_N1
\sd_read_inst|SD_datain\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|ALT_INV_wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_read_inst|SD_datain~2_combout\,
	ena => \sd_read_inst|SD_datain~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|SD_datain~q\);

-- Location: LCCOMB_X23_Y20_N10
\SD_datain~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SD_datain~0_combout\ = (\sd_initial_inst|init_o~q\ & ((\sd_read_inst|SD_datain~q\))) # (!\sd_initial_inst|init_o~q\ & (\sd_initial_inst|SD_datain~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|SD_datain~q\,
	datac => \sd_initial_inst|init_o~q\,
	datad => \sd_read_inst|SD_datain~q\,
	combout => \SD_datain~0_combout\);

-- Location: LCCOMB_X16_Y19_N4
\mywav_inst|sinwave_gen_inst|data_num[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|sinwave_gen_inst|data_num[0]~4_combout\ = \mywav_inst|sinwave_gen_inst|data_num\(0) $ (VCC)
-- \mywav_inst|sinwave_gen_inst|data_num[0]~5\ = CARRY(\mywav_inst|sinwave_gen_inst|data_num\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mywav_inst|sinwave_gen_inst|data_num\(0),
	datad => VCC,
	combout => \mywav_inst|sinwave_gen_inst|data_num[0]~4_combout\,
	cout => \mywav_inst|sinwave_gen_inst|data_num[0]~5\);

-- Location: IOIBUF_X3_Y24_N15
\DACLRC~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DACLRC,
	o => \DACLRC~input_o\);

-- Location: LCCOMB_X16_Y20_N0
\mywav_inst|sinwave_gen_inst|dacclk_a~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|sinwave_gen_inst|dacclk_a~feeder_combout\ = \DACLRC~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DACLRC~input_o\,
	combout => \mywav_inst|sinwave_gen_inst|dacclk_a~feeder_combout\);

-- Location: FF_X16_Y20_N1
\mywav_inst|sinwave_gen_inst|dacclk_a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	d => \mywav_inst|sinwave_gen_inst|dacclk_a~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mywav_inst|sinwave_gen_inst|dacclk_a~q\);

-- Location: LCCOMB_X16_Y20_N2
\mywav_inst|sinwave_gen_inst|dacclk_b~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|sinwave_gen_inst|dacclk_b~feeder_combout\ = \mywav_inst|sinwave_gen_inst|dacclk_a~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mywav_inst|sinwave_gen_inst|dacclk_a~q\,
	combout => \mywav_inst|sinwave_gen_inst|dacclk_b~feeder_combout\);

-- Location: FF_X16_Y20_N3
\mywav_inst|sinwave_gen_inst|dacclk_b\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	d => \mywav_inst|sinwave_gen_inst|dacclk_b~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mywav_inst|sinwave_gen_inst|dacclk_b~q\);

-- Location: LCCOMB_X16_Y20_N18
\mywav_inst|sinwave_gen_inst|always1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|sinwave_gen_inst|always1~0_combout\ = \mywav_inst|sinwave_gen_inst|dacclk_a~q\ $ (\mywav_inst|sinwave_gen_inst|dacclk_b~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mywav_inst|sinwave_gen_inst|dacclk_a~q\,
	datad => \mywav_inst|sinwave_gen_inst|dacclk_b~q\,
	combout => \mywav_inst|sinwave_gen_inst|always1~0_combout\);

-- Location: IOIBUF_X5_Y24_N1
\BCLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BCLK,
	o => \BCLK~input_o\);

-- Location: LCCOMB_X13_Y20_N16
\mywav_inst|sinwave_gen_inst|bclk_a~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|sinwave_gen_inst|bclk_a~feeder_combout\ = \BCLK~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BCLK~input_o\,
	combout => \mywav_inst|sinwave_gen_inst|bclk_a~feeder_combout\);

-- Location: FF_X13_Y20_N17
\mywav_inst|sinwave_gen_inst|bclk_a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	d => \mywav_inst|sinwave_gen_inst|bclk_a~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mywav_inst|sinwave_gen_inst|bclk_a~q\);

-- Location: FF_X16_Y20_N21
\mywav_inst|sinwave_gen_inst|bclk_b\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	asdata => \mywav_inst|sinwave_gen_inst|bclk_a~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mywav_inst|sinwave_gen_inst|bclk_b~q\);

-- Location: LCCOMB_X16_Y20_N20
\mywav_inst|sinwave_gen_inst|data_num[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|sinwave_gen_inst|data_num[0]~8_combout\ = (\mywav_inst|sinwave_gen_inst|bclk_a~q\ & (\mywav_inst|sinwave_gen_inst|dacclk_a~q\ $ (((\mywav_inst|sinwave_gen_inst|dacclk_b~q\))))) # (!\mywav_inst|sinwave_gen_inst|bclk_a~q\ & 
-- ((\mywav_inst|sinwave_gen_inst|bclk_b~q\) # (\mywav_inst|sinwave_gen_inst|dacclk_a~q\ $ (\mywav_inst|sinwave_gen_inst|dacclk_b~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mywav_inst|sinwave_gen_inst|bclk_a~q\,
	datab => \mywav_inst|sinwave_gen_inst|dacclk_a~q\,
	datac => \mywav_inst|sinwave_gen_inst|bclk_b~q\,
	datad => \mywav_inst|sinwave_gen_inst|dacclk_b~q\,
	combout => \mywav_inst|sinwave_gen_inst|data_num[0]~8_combout\);

-- Location: FF_X16_Y19_N5
\mywav_inst|sinwave_gen_inst|data_num[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	d => \mywav_inst|sinwave_gen_inst|data_num[0]~4_combout\,
	asdata => VCC,
	sload => \mywav_inst|sinwave_gen_inst|always1~0_combout\,
	ena => \mywav_inst|sinwave_gen_inst|data_num[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mywav_inst|sinwave_gen_inst|data_num\(0));

-- Location: LCCOMB_X16_Y19_N6
\mywav_inst|sinwave_gen_inst|data_num[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|sinwave_gen_inst|data_num[1]~6_combout\ = (\mywav_inst|sinwave_gen_inst|data_num\(1) & (\mywav_inst|sinwave_gen_inst|data_num[0]~5\ & VCC)) # (!\mywav_inst|sinwave_gen_inst|data_num\(1) & (!\mywav_inst|sinwave_gen_inst|data_num[0]~5\))
-- \mywav_inst|sinwave_gen_inst|data_num[1]~7\ = CARRY((!\mywav_inst|sinwave_gen_inst|data_num\(1) & !\mywav_inst|sinwave_gen_inst|data_num[0]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mywav_inst|sinwave_gen_inst|data_num\(1),
	datad => VCC,
	cin => \mywav_inst|sinwave_gen_inst|data_num[0]~5\,
	combout => \mywav_inst|sinwave_gen_inst|data_num[1]~6_combout\,
	cout => \mywav_inst|sinwave_gen_inst|data_num[1]~7\);

-- Location: LCCOMB_X16_Y19_N8
\mywav_inst|sinwave_gen_inst|data_num[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|sinwave_gen_inst|data_num[2]~9_combout\ = (\mywav_inst|sinwave_gen_inst|data_num\(2) & ((GND) # (!\mywav_inst|sinwave_gen_inst|data_num[1]~7\))) # (!\mywav_inst|sinwave_gen_inst|data_num\(2) & (\mywav_inst|sinwave_gen_inst|data_num[1]~7\ $ 
-- (GND)))
-- \mywav_inst|sinwave_gen_inst|data_num[2]~10\ = CARRY((\mywav_inst|sinwave_gen_inst|data_num\(2)) # (!\mywav_inst|sinwave_gen_inst|data_num[1]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mywav_inst|sinwave_gen_inst|data_num\(2),
	datad => VCC,
	cin => \mywav_inst|sinwave_gen_inst|data_num[1]~7\,
	combout => \mywav_inst|sinwave_gen_inst|data_num[2]~9_combout\,
	cout => \mywav_inst|sinwave_gen_inst|data_num[2]~10\);

-- Location: FF_X16_Y19_N9
\mywav_inst|sinwave_gen_inst|data_num[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	d => \mywav_inst|sinwave_gen_inst|data_num[2]~9_combout\,
	asdata => VCC,
	sload => \mywav_inst|sinwave_gen_inst|always1~0_combout\,
	ena => \mywav_inst|sinwave_gen_inst|data_num[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mywav_inst|sinwave_gen_inst|data_num\(2));

-- Location: LCCOMB_X16_Y19_N10
\mywav_inst|sinwave_gen_inst|data_num[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|sinwave_gen_inst|data_num[3]~11_combout\ = \mywav_inst|sinwave_gen_inst|data_num\(3) $ (!\mywav_inst|sinwave_gen_inst|data_num[2]~10\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mywav_inst|sinwave_gen_inst|data_num\(3),
	cin => \mywav_inst|sinwave_gen_inst|data_num[2]~10\,
	combout => \mywav_inst|sinwave_gen_inst|data_num[3]~11_combout\);

-- Location: FF_X16_Y19_N11
\mywav_inst|sinwave_gen_inst|data_num[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	d => \mywav_inst|sinwave_gen_inst|data_num[3]~11_combout\,
	asdata => VCC,
	sload => \mywav_inst|sinwave_gen_inst|always1~0_combout\,
	ena => \mywav_inst|sinwave_gen_inst|data_num[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mywav_inst|sinwave_gen_inst|data_num\(3));

-- Location: CLKCTRL_G2
\clk_50m~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_50m~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_50m~inputclkctrl_outclk\);

-- Location: LCCOMB_X23_Y19_N6
\ram_rw_control_inst|myram~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|myram~0_combout\ = (\sd_read_inst|myvalid_o~q\ & !\ram_rw_control_inst|Equal4~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_read_inst|myvalid_o~q\,
	datac => \ram_rw_control_inst|Equal4~2_combout\,
	combout => \ram_rw_control_inst|myram~0_combout\);

-- Location: LCCOMB_X16_Y20_N4
\mywav_inst|sinwave_gen_inst|myvalid~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|sinwave_gen_inst|myvalid~feeder_combout\ = \mywav_inst|sinwave_gen_inst|always1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mywav_inst|sinwave_gen_inst|always1~0_combout\,
	combout => \mywav_inst|sinwave_gen_inst|myvalid~feeder_combout\);

-- Location: FF_X16_Y20_N5
\mywav_inst|sinwave_gen_inst|myvalid\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	d => \mywav_inst|sinwave_gen_inst|myvalid~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mywav_inst|sinwave_gen_inst|myvalid~q\);

-- Location: LCCOMB_X26_Y21_N4
\sd_read_inst|mydata_o~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|mydata_o~3_combout\ = (\SD_dataout~input_o\ & \sd_initial_inst|init_o~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SD_dataout~input_o\,
	datad => \sd_initial_inst|init_o~q\,
	combout => \sd_read_inst|mydata_o~3_combout\);

-- Location: LCCOMB_X26_Y20_N14
\sd_read_inst|mydata[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|mydata[0]~0_combout\ = ((!\sd_read_inst|LessThan3~0_combout\ & (\sd_read_inst|read_step.01~q\ & !\sd_read_inst|read_cnt\(9)))) # (!\sd_initial_inst|init_o~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|init_o~q\,
	datab => \sd_read_inst|LessThan3~0_combout\,
	datac => \sd_read_inst|read_step.01~q\,
	datad => \sd_read_inst|read_cnt\(9),
	combout => \sd_read_inst|mydata[0]~0_combout\);

-- Location: FF_X26_Y21_N23
\sd_read_inst|mydata[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sd_read_inst|mydata_o~3_combout\,
	sload => VCC,
	ena => \sd_read_inst|mydata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|mydata\(0));

-- Location: LCCOMB_X26_Y21_N22
\sd_read_inst|mydata_o~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|mydata_o~2_combout\ = (\sd_read_inst|mydata\(0) & \sd_initial_inst|init_o~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sd_read_inst|mydata\(0),
	datad => \sd_initial_inst|init_o~q\,
	combout => \sd_read_inst|mydata_o~2_combout\);

-- Location: FF_X26_Y21_N21
\sd_read_inst|mydata[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sd_read_inst|mydata_o~2_combout\,
	sload => VCC,
	ena => \sd_read_inst|mydata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|mydata\(1));

-- Location: LCCOMB_X26_Y21_N20
\sd_read_inst|mydata_o~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|mydata_o~0_combout\ = (\sd_read_inst|mydata\(1) & \sd_initial_inst|init_o~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sd_read_inst|mydata\(1),
	datad => \sd_initial_inst|init_o~q\,
	combout => \sd_read_inst|mydata_o~0_combout\);

-- Location: FF_X26_Y21_N27
\sd_read_inst|mydata[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sd_read_inst|mydata_o~0_combout\,
	sload => VCC,
	ena => \sd_read_inst|mydata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|mydata\(2));

-- Location: LCCOMB_X26_Y21_N26
\sd_read_inst|mydata_o~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|mydata_o~4_combout\ = (\sd_read_inst|mydata\(2) & \sd_initial_inst|init_o~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sd_read_inst|mydata\(2),
	datad => \sd_initial_inst|init_o~q\,
	combout => \sd_read_inst|mydata_o~4_combout\);

-- Location: FF_X26_Y21_N9
\sd_read_inst|mydata[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sd_read_inst|mydata_o~4_combout\,
	sload => VCC,
	ena => \sd_read_inst|mydata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|mydata\(3));

-- Location: LCCOMB_X26_Y21_N8
\sd_read_inst|mydata_o~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|mydata_o~7_combout\ = (\sd_read_inst|mydata\(3) & \sd_initial_inst|init_o~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sd_read_inst|mydata\(3),
	datad => \sd_initial_inst|init_o~q\,
	combout => \sd_read_inst|mydata_o~7_combout\);

-- Location: FF_X26_Y21_N1
\sd_read_inst|mydata[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sd_read_inst|mydata_o~7_combout\,
	sload => VCC,
	ena => \sd_read_inst|mydata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|mydata\(4));

-- Location: LCCOMB_X26_Y21_N0
\sd_read_inst|mydata_o~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|mydata_o~5_combout\ = (\sd_read_inst|mydata\(4) & \sd_initial_inst|init_o~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sd_read_inst|mydata\(4),
	datad => \sd_initial_inst|init_o~q\,
	combout => \sd_read_inst|mydata_o~5_combout\);

-- Location: LCCOMB_X26_Y20_N2
\sd_read_inst|mydata_o[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|mydata_o[0]~1_combout\ = ((\sd_read_inst|LessThan3~0_combout\ & (\sd_read_inst|read_step.01~q\ & !\sd_read_inst|read_cnt\(9)))) # (!\sd_initial_inst|init_o~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|init_o~q\,
	datab => \sd_read_inst|LessThan3~0_combout\,
	datac => \sd_read_inst|read_step.01~q\,
	datad => \sd_read_inst|read_cnt\(9),
	combout => \sd_read_inst|mydata_o[0]~1_combout\);

-- Location: FF_X26_Y21_N13
\sd_read_inst|mydata_o[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sd_read_inst|mydata_o~5_combout\,
	sload => VCC,
	ena => \sd_read_inst|mydata_o[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|mydata_o\(5));

-- Location: FF_X23_Y18_N11
\ram_rw_control_inst|ram_addr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ram_rw_control_inst|ram_addr[5]~23_combout\,
	sclr => \ram_rw_control_inst|Equal4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_rw_control_inst|ram_addr\(5));

-- Location: FF_X23_Y18_N17
\ram_rw_control_inst|ram_addr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ram_rw_control_inst|ram_addr[8]~29_combout\,
	sclr => \ram_rw_control_inst|Equal4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_rw_control_inst|ram_addr\(8));

-- Location: LCCOMB_X23_Y18_N24
\ram_rw_control_inst|ram_addr[12]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|ram_addr[12]~37_combout\ = \ram_rw_control_inst|ram_addr\(12) $ (!\ram_rw_control_inst|ram_addr[11]~36\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ram_rw_control_inst|ram_addr\(12),
	cin => \ram_rw_control_inst|ram_addr[11]~36\,
	combout => \ram_rw_control_inst|ram_addr[12]~37_combout\);

-- Location: FF_X23_Y18_N25
\ram_rw_control_inst|ram_addr[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \ram_rw_control_inst|ram_addr[12]~37_combout\,
	sclr => \ram_rw_control_inst|Equal4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_rw_control_inst|ram_addr\(12));

-- Location: LCCOMB_X19_Y18_N30
\ram_rw_control_inst|Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|Add3~8_combout\ = (\sd_initial_inst|init_o~q\ & (\ram_rw_control_inst|Add3~6_combout\ & ((\ram_rw_control_inst|read_req_a~q\) # (!\ram_rw_control_inst|read_req_b~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd_initial_inst|init_o~q\,
	datab => \ram_rw_control_inst|read_req_a~q\,
	datac => \ram_rw_control_inst|Add3~6_combout\,
	datad => \ram_rw_control_inst|read_req_b~q\,
	combout => \ram_rw_control_inst|Add3~8_combout\);

-- Location: FF_X18_Y18_N7
\ram_rw_control_inst|ram_raddr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	asdata => \ram_rw_control_inst|Add3~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_rw_control_inst|ram_raddr\(3));

-- Location: LCCOMB_X19_Y18_N22
\ram_rw_control_inst|Add3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|Add3~14_combout\ = (\ram_rw_control_inst|Add3~12_combout\ & (\sd_initial_inst|init_o~q\ & ((\ram_rw_control_inst|read_req_a~q\) # (!\ram_rw_control_inst|read_req_b~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_rw_control_inst|Add3~12_combout\,
	datab => \sd_initial_inst|init_o~q\,
	datac => \ram_rw_control_inst|read_req_a~q\,
	datad => \ram_rw_control_inst|read_req_b~q\,
	combout => \ram_rw_control_inst|Add3~14_combout\);

-- Location: FF_X18_Y18_N11
\ram_rw_control_inst|ram_raddr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	asdata => \ram_rw_control_inst|Add3~14_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_rw_control_inst|ram_raddr\(5));

-- Location: LCCOMB_X19_Y18_N12
\ram_rw_control_inst|Add3~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \ram_rw_control_inst|Add3~17_combout\ = (\ram_rw_control_inst|Add3~15_combout\ & (\sd_initial_inst|init_o~q\ & ((\ram_rw_control_inst|read_req_a~q\) # (!\ram_rw_control_inst|read_req_b~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_rw_control_inst|Add3~15_combout\,
	datab => \sd_initial_inst|init_o~q\,
	datac => \ram_rw_control_inst|read_req_a~q\,
	datad => \ram_rw_control_inst|read_req_b~q\,
	combout => \ram_rw_control_inst|Add3~17_combout\);

-- Location: FF_X18_Y18_N13
\ram_rw_control_inst|ram_raddr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	asdata => \ram_rw_control_inst|Add3~17_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_rw_control_inst|ram_raddr\(6));

-- Location: M9K_X27_Y19_N0
\ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a5\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "ram_rw_control:ram_rw_control_inst|altsyncram:myram_rtl_0|altsyncram_60e1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 8192,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 5,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 8192,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \ram_rw_control_inst|myram~0_combout\,
	portbre => VCC,
	clk0 => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	clk1 => \clk_50m~inputclkctrl_outclk\,
	ena0 => \ram_rw_control_inst|myram~0_combout\,
	ena1 => \mywav_inst|sinwave_gen_inst|myvalid~q\,
	portadatain => \ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a5_PORTADATAIN_bus\,
	portaaddr => \ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a5_PORTAADDR_bus\,
	portbaddr => \ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a5_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a5_PORTBDATAOUT_bus\);

-- Location: FF_X26_Y21_N29
\sd_read_inst|mydata_o[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sd_read_inst|mydata_o~7_combout\,
	sload => VCC,
	ena => \sd_read_inst|mydata_o[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|mydata_o\(4));

-- Location: M9K_X15_Y22_N0
\ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a4\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "ram_rw_control:ram_rw_control_inst|altsyncram:myram_rtl_0|altsyncram_60e1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 8192,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 4,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 8192,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \ram_rw_control_inst|myram~0_combout\,
	portbre => VCC,
	clk0 => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	clk1 => \clk_50m~inputclkctrl_outclk\,
	ena0 => \ram_rw_control_inst|myram~0_combout\,
	ena1 => \mywav_inst|sinwave_gen_inst|myvalid~q\,
	portadatain => \ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a4_PORTAADDR_bus\,
	portbaddr => \ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a4_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a4_PORTBDATAOUT_bus\);

-- Location: FF_X16_Y19_N7
\mywav_inst|sinwave_gen_inst|data_num[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_50m~inputclkctrl_outclk\,
	d => \mywav_inst|sinwave_gen_inst|data_num[1]~6_combout\,
	asdata => VCC,
	sload => \mywav_inst|sinwave_gen_inst|always1~0_combout\,
	ena => \mywav_inst|sinwave_gen_inst|data_num[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mywav_inst|sinwave_gen_inst|data_num\(1));

-- Location: LCCOMB_X16_Y19_N2
\mywav_inst|sinwave_gen_inst|Mux0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|sinwave_gen_inst|Mux0~7_combout\ = (\mywav_inst|sinwave_gen_inst|data_num\(0) & (((\mywav_inst|sinwave_gen_inst|data_num\(1))))) # (!\mywav_inst|sinwave_gen_inst|data_num\(0) & ((\mywav_inst|sinwave_gen_inst|data_num\(1) & 
-- (\ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a6~portbdataout\)) # (!\mywav_inst|sinwave_gen_inst|data_num\(1) & ((\ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a4~portbdataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a6~portbdataout\,
	datab => \ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a4~portbdataout\,
	datac => \mywav_inst|sinwave_gen_inst|data_num\(0),
	datad => \mywav_inst|sinwave_gen_inst|data_num\(1),
	combout => \mywav_inst|sinwave_gen_inst|Mux0~7_combout\);

-- Location: LCCOMB_X16_Y19_N0
\mywav_inst|sinwave_gen_inst|Mux0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|sinwave_gen_inst|Mux0~8_combout\ = (\mywav_inst|sinwave_gen_inst|data_num\(0) & ((\mywav_inst|sinwave_gen_inst|Mux0~7_combout\ & (\ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a7~portbdataout\)) # 
-- (!\mywav_inst|sinwave_gen_inst|Mux0~7_combout\ & ((\ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a5~portbdataout\))))) # (!\mywav_inst|sinwave_gen_inst|data_num\(0) & (((\mywav_inst|sinwave_gen_inst|Mux0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a7~portbdataout\,
	datab => \ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a5~portbdataout\,
	datac => \mywav_inst|sinwave_gen_inst|data_num\(0),
	datad => \mywav_inst|sinwave_gen_inst|Mux0~7_combout\,
	combout => \mywav_inst|sinwave_gen_inst|Mux0~8_combout\);

-- Location: FF_X26_Y21_N25
\sd_read_inst|mydata_o[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sd_read_inst|mydata_o~3_combout\,
	sload => VCC,
	ena => \sd_read_inst|mydata_o[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|mydata_o\(0));

-- Location: M9K_X15_Y20_N0
\ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "ram_rw_control:ram_rw_control_inst|altsyncram:myram_rtl_0|altsyncram_60e1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 8192,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 8192,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \ram_rw_control_inst|myram~0_combout\,
	portbre => VCC,
	clk0 => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	clk1 => \clk_50m~inputclkctrl_outclk\,
	ena0 => \ram_rw_control_inst|myram~0_combout\,
	ena1 => \mywav_inst|sinwave_gen_inst|myvalid~q\,
	portadatain => \ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: FF_X26_Y21_N7
\sd_read_inst|mydata_o[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sd_read_inst|mydata_o~2_combout\,
	sload => VCC,
	ena => \sd_read_inst|mydata_o[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|mydata_o\(1));

-- Location: M9K_X15_Y21_N0
\ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a1\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "ram_rw_control:ram_rw_control_inst|altsyncram:myram_rtl_0|altsyncram_60e1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 8192,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 8192,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \ram_rw_control_inst|myram~0_combout\,
	portbre => VCC,
	clk0 => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	clk1 => \clk_50m~inputclkctrl_outclk\,
	ena0 => \ram_rw_control_inst|myram~0_combout\,
	ena1 => \mywav_inst|sinwave_gen_inst|myvalid~q\,
	portadatain => \ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a1_PORTADATAIN_bus\,
	portaaddr => \ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a1_PORTAADDR_bus\,
	portbaddr => \ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a1_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a1_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X16_Y19_N20
\mywav_inst|sinwave_gen_inst|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|sinwave_gen_inst|Mux0~0_combout\ = (\mywav_inst|sinwave_gen_inst|data_num\(1) & (((\mywav_inst|sinwave_gen_inst|data_num\(0))))) # (!\mywav_inst|sinwave_gen_inst|data_num\(1) & ((\mywav_inst|sinwave_gen_inst|data_num\(0) & 
-- ((\ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a1~portbdataout\))) # (!\mywav_inst|sinwave_gen_inst|data_num\(0) & (\ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a0~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mywav_inst|sinwave_gen_inst|data_num\(1),
	datab => \ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datac => \mywav_inst|sinwave_gen_inst|data_num\(0),
	datad => \ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a1~portbdataout\,
	combout => \mywav_inst|sinwave_gen_inst|Mux0~0_combout\);

-- Location: FF_X26_Y21_N17
\sd_read_inst|mydata_o[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sd_read_inst|mydata_o~0_combout\,
	sload => VCC,
	ena => \sd_read_inst|mydata_o[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|mydata_o\(2));

-- Location: M9K_X27_Y20_N0
\ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a2\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "ram_rw_control:ram_rw_control_inst|altsyncram:myram_rtl_0|altsyncram_60e1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 8192,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 8192,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \ram_rw_control_inst|myram~0_combout\,
	portbre => VCC,
	clk0 => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	clk1 => \clk_50m~inputclkctrl_outclk\,
	ena0 => \ram_rw_control_inst|myram~0_combout\,
	ena1 => \mywav_inst|sinwave_gen_inst|myvalid~q\,
	portadatain => \ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a2_PORTADATAIN_bus\,
	portaaddr => \ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a2_PORTAADDR_bus\,
	portbaddr => \ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a2_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a2_PORTBDATAOUT_bus\);

-- Location: FF_X26_Y21_N15
\sd_read_inst|mydata_o[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sd_read_inst|mydata_o~4_combout\,
	sload => VCC,
	ena => \sd_read_inst|mydata_o[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|mydata_o\(3));

-- Location: M9K_X15_Y19_N0
\ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a3\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "ram_rw_control:ram_rw_control_inst|altsyncram:myram_rtl_0|altsyncram_60e1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 8192,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 3,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 8192,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \ram_rw_control_inst|myram~0_combout\,
	portbre => VCC,
	clk0 => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	clk1 => \clk_50m~inputclkctrl_outclk\,
	ena0 => \ram_rw_control_inst|myram~0_combout\,
	ena1 => \mywav_inst|sinwave_gen_inst|myvalid~q\,
	portadatain => \ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a3_PORTADATAIN_bus\,
	portaaddr => \ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a3_PORTAADDR_bus\,
	portbaddr => \ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a3_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a3_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X16_Y19_N22
\mywav_inst|sinwave_gen_inst|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|sinwave_gen_inst|Mux0~1_combout\ = (\mywav_inst|sinwave_gen_inst|data_num\(1) & ((\mywav_inst|sinwave_gen_inst|Mux0~0_combout\ & ((\ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a3~portbdataout\))) # 
-- (!\mywav_inst|sinwave_gen_inst|Mux0~0_combout\ & (\ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a2~portbdataout\)))) # (!\mywav_inst|sinwave_gen_inst|data_num\(1) & (\mywav_inst|sinwave_gen_inst|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mywav_inst|sinwave_gen_inst|data_num\(1),
	datab => \mywav_inst|sinwave_gen_inst|Mux0~0_combout\,
	datac => \ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a2~portbdataout\,
	datad => \ram_rw_control_inst|myram_rtl_0|auto_generated|ram_block1a3~portbdataout\,
	combout => \mywav_inst|sinwave_gen_inst|Mux0~1_combout\);

-- Location: FF_X26_Y21_N3
\sd_read_inst|mydata[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \sd_read_inst|mydata_o~5_combout\,
	sload => VCC,
	ena => \sd_read_inst|mydata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|mydata\(5));

-- Location: LCCOMB_X26_Y21_N2
\sd_read_inst|mydata_o~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|mydata_o~6_combout\ = (\sd_read_inst|mydata\(5) & \sd_initial_inst|init_o~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sd_read_inst|mydata\(5),
	datad => \sd_initial_inst|init_o~q\,
	combout => \sd_read_inst|mydata_o~6_combout\);

-- Location: LCCOMB_X26_Y21_N30
\sd_read_inst|mydata[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|mydata[6]~feeder_combout\ = \sd_read_inst|mydata_o~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sd_read_inst|mydata_o~6_combout\,
	combout => \sd_read_inst|mydata[6]~feeder_combout\);

-- Location: FF_X26_Y21_N31
\sd_read_inst|mydata[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_read_inst|mydata[6]~feeder_combout\,
	ena => \sd_read_inst|mydata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|mydata\(6));

-- Location: LCCOMB_X26_Y21_N18
\sd_read_inst|mydata_o~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|mydata_o~8_combout\ = (\sd_initial_inst|init_o~q\ & \sd_read_inst|mydata\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd_initial_inst|init_o~q\,
	datad => \sd_read_inst|mydata\(6),
	combout => \sd_read_inst|mydata_o~8_combout\);

-- Location: FF_X26_Y21_N19
\sd_read_inst|mydata_o[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_read_inst|mydata_o~8_combout\,
	ena => \sd_read_inst|mydata_o[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|mydata_o\(7));

-- Location: M9K_X27_Y18_N0
\ram_rw_control_inst|myram_rtl_1|auto_generated|ram_block1a7\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_output_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "ram_rw_control:ram_rw_control_inst|altsyncram:myram_rtl_1|altsyncram_m6d1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 8192,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 7,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 8192,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \ram_rw_control_inst|myram~0_combout\,
	portbre => VCC,
	clk0 => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	clk1 => \clk_50m~inputclkctrl_outclk\,
	ena0 => \ram_rw_control_inst|myram~0_combout\,
	ena1 => \mywav_inst|sinwave_gen_inst|myvalid~q\,
	portadatain => \ram_rw_control_inst|myram_rtl_1|auto_generated|ram_block1a7_PORTADATAIN_bus\,
	portaaddr => \ram_rw_control_inst|myram_rtl_1|auto_generated|ram_block1a7_PORTAADDR_bus\,
	portbaddr => \ram_rw_control_inst|myram_rtl_1|auto_generated|ram_block1a7_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \ram_rw_control_inst|myram_rtl_1|auto_generated|ram_block1a7_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X26_Y21_N10
\sd_read_inst|mydata_o[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sd_read_inst|mydata_o[6]~feeder_combout\ = \sd_read_inst|mydata_o~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sd_read_inst|mydata_o~6_combout\,
	combout => \sd_read_inst|mydata_o[6]~feeder_combout\);

-- Location: FF_X26_Y21_N11
\sd_read_inst|mydata_o[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \sd_read_inst|mydata_o[6]~feeder_combout\,
	ena => \sd_read_inst|mydata_o[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd_read_inst|mydata_o\(6));

-- Location: M9K_X27_Y17_N0
\ram_rw_control_inst|myram_rtl_1|auto_generated|ram_block1a6\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_output_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "ram_rw_control:ram_rw_control_inst|altsyncram:myram_rtl_1|altsyncram_m6d1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 8192,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 6,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 8192,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \ram_rw_control_inst|myram~0_combout\,
	portbre => VCC,
	clk0 => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	clk1 => \clk_50m~inputclkctrl_outclk\,
	ena0 => \ram_rw_control_inst|myram~0_combout\,
	ena1 => \mywav_inst|sinwave_gen_inst|myvalid~q\,
	portadatain => \ram_rw_control_inst|myram_rtl_1|auto_generated|ram_block1a6_PORTADATAIN_bus\,
	portaaddr => \ram_rw_control_inst|myram_rtl_1|auto_generated|ram_block1a6_PORTAADDR_bus\,
	portbaddr => \ram_rw_control_inst|myram_rtl_1|auto_generated|ram_block1a6_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \ram_rw_control_inst|myram_rtl_1|auto_generated|ram_block1a6_PORTBDATAOUT_bus\);

-- Location: M9K_X15_Y18_N0
\ram_rw_control_inst|myram_rtl_1|auto_generated|ram_block1a4\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_output_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "ram_rw_control:ram_rw_control_inst|altsyncram:myram_rtl_1|altsyncram_m6d1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 8192,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 13,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 4,
	port_b_last_address => 8191,
	port_b_logical_ram_depth => 8192,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \ram_rw_control_inst|myram~0_combout\,
	portbre => VCC,
	clk0 => \pll_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	clk1 => \clk_50m~inputclkctrl_outclk\,
	ena0 => \ram_rw_control_inst|myram~0_combout\,
	ena1 => \mywav_inst|sinwave_gen_inst|myvalid~q\,
	portadatain => \ram_rw_control_inst|myram_rtl_1|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \ram_rw_control_inst|myram_rtl_1|auto_generated|ram_block1a4_PORTAADDR_bus\,
	portbaddr => \ram_rw_control_inst|myram_rtl_1|auto_generated|ram_block1a4_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \ram_rw_control_inst|myram_rtl_1|auto_generated|ram_block1a4_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X16_Y19_N24
\mywav_inst|sinwave_gen_inst|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|sinwave_gen_inst|Mux0~2_combout\ = (\mywav_inst|sinwave_gen_inst|data_num\(1) & ((\ram_rw_control_inst|wav_data\(6)) # ((\mywav_inst|sinwave_gen_inst|data_num\(0))))) # (!\mywav_inst|sinwave_gen_inst|data_num\(1) & 
-- (((!\mywav_inst|sinwave_gen_inst|data_num\(0) & \ram_rw_control_inst|wav_data\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mywav_inst|sinwave_gen_inst|data_num\(1),
	datab => \ram_rw_control_inst|wav_data\(6),
	datac => \mywav_inst|sinwave_gen_inst|data_num\(0),
	datad => \ram_rw_control_inst|wav_data\(4),
	combout => \mywav_inst|sinwave_gen_inst|Mux0~2_combout\);

-- Location: LCCOMB_X16_Y19_N30
\mywav_inst|sinwave_gen_inst|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|sinwave_gen_inst|Mux0~3_combout\ = (\mywav_inst|sinwave_gen_inst|data_num\(0) & ((\mywav_inst|sinwave_gen_inst|Mux0~2_combout\ & ((\ram_rw_control_inst|wav_data\(7)))) # (!\mywav_inst|sinwave_gen_inst|Mux0~2_combout\ & 
-- (\ram_rw_control_inst|wav_data\(5))))) # (!\mywav_inst|sinwave_gen_inst|data_num\(0) & (((\mywav_inst|sinwave_gen_inst|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_rw_control_inst|wav_data\(5),
	datab => \ram_rw_control_inst|wav_data\(7),
	datac => \mywav_inst|sinwave_gen_inst|data_num\(0),
	datad => \mywav_inst|sinwave_gen_inst|Mux0~2_combout\,
	combout => \mywav_inst|sinwave_gen_inst|Mux0~3_combout\);

-- Location: LCCOMB_X16_Y19_N16
\mywav_inst|sinwave_gen_inst|Mux0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|sinwave_gen_inst|Mux0~6_combout\ = (\mywav_inst|sinwave_gen_inst|data_num\(2) & (((\mywav_inst|sinwave_gen_inst|Mux0~3_combout\) # (\mywav_inst|sinwave_gen_inst|data_num\(3))))) # (!\mywav_inst|sinwave_gen_inst|data_num\(2) & 
-- (\mywav_inst|sinwave_gen_inst|Mux0~5_combout\ & ((!\mywav_inst|sinwave_gen_inst|data_num\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mywav_inst|sinwave_gen_inst|Mux0~5_combout\,
	datab => \mywav_inst|sinwave_gen_inst|data_num\(2),
	datac => \mywav_inst|sinwave_gen_inst|Mux0~3_combout\,
	datad => \mywav_inst|sinwave_gen_inst|data_num\(3),
	combout => \mywav_inst|sinwave_gen_inst|Mux0~6_combout\);

-- Location: LCCOMB_X16_Y19_N18
\mywav_inst|sinwave_gen_inst|Mux0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|sinwave_gen_inst|Mux0~9_combout\ = (\mywav_inst|sinwave_gen_inst|data_num\(3) & ((\mywav_inst|sinwave_gen_inst|Mux0~6_combout\ & (\mywav_inst|sinwave_gen_inst|Mux0~8_combout\)) # (!\mywav_inst|sinwave_gen_inst|Mux0~6_combout\ & 
-- ((\mywav_inst|sinwave_gen_inst|Mux0~1_combout\))))) # (!\mywav_inst|sinwave_gen_inst|data_num\(3) & (((\mywav_inst|sinwave_gen_inst|Mux0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mywav_inst|sinwave_gen_inst|data_num\(3),
	datab => \mywav_inst|sinwave_gen_inst|Mux0~8_combout\,
	datac => \mywav_inst|sinwave_gen_inst|Mux0~1_combout\,
	datad => \mywav_inst|sinwave_gen_inst|Mux0~6_combout\,
	combout => \mywav_inst|sinwave_gen_inst|Mux0~9_combout\);

-- Location: LCCOMB_X33_Y12_N8
\mywav_inst|reg_config_inst|u1|i2c_sclk~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|reg_config_inst|u1|i2c_sclk~0_combout\ = (\mywav_inst|reg_config_inst|u1|cyc_count\(2)) # ((\mywav_inst|reg_config_inst|u1|cyc_count\(1)) # ((\mywav_inst|reg_config_inst|u1|cyc_count\(0)) # (\mywav_inst|reg_config_inst|u1|cyc_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mywav_inst|reg_config_inst|u1|cyc_count\(2),
	datab => \mywav_inst|reg_config_inst|u1|cyc_count\(1),
	datac => \mywav_inst|reg_config_inst|u1|cyc_count\(0),
	datad => \mywav_inst|reg_config_inst|u1|cyc_count\(3),
	combout => \mywav_inst|reg_config_inst|u1|i2c_sclk~0_combout\);

-- Location: LCCOMB_X33_Y12_N14
\mywav_inst|reg_config_inst|u1|i2c_sclk~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|reg_config_inst|u1|i2c_sclk~1_combout\ = (\mywav_inst|reg_config_inst|u1|cyc_count\(4) & (((!\mywav_inst|reg_config_inst|u1|cyc_count\(3))) # (!\mywav_inst|reg_config_inst|u1|cyc_count\(2)))) # (!\mywav_inst|reg_config_inst|u1|cyc_count\(4) & 
-- (((\mywav_inst|reg_config_inst|u1|i2c_sclk~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mywav_inst|reg_config_inst|u1|cyc_count\(2),
	datab => \mywav_inst|reg_config_inst|u1|cyc_count\(3),
	datac => \mywav_inst|reg_config_inst|u1|i2c_sclk~0_combout\,
	datad => \mywav_inst|reg_config_inst|u1|cyc_count\(4),
	combout => \mywav_inst|reg_config_inst|u1|i2c_sclk~1_combout\);

-- Location: LCCOMB_X33_Y12_N16
\mywav_inst|reg_config_inst|u1|sclk~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|reg_config_inst|u1|sclk~3_combout\ = (\mywav_inst|reg_config_inst|u1|cyc_count\(5) & ((\mywav_inst|reg_config_inst|u1|tr_end~0_combout\) # ((!\mywav_inst|reg_config_inst|u1|sclk~5_combout\ & !\mywav_inst|reg_config_inst|u1|cyc_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mywav_inst|reg_config_inst|u1|sclk~5_combout\,
	datab => \mywav_inst|reg_config_inst|u1|cyc_count\(1),
	datac => \mywav_inst|reg_config_inst|u1|cyc_count\(5),
	datad => \mywav_inst|reg_config_inst|u1|tr_end~0_combout\,
	combout => \mywav_inst|reg_config_inst|u1|sclk~3_combout\);

-- Location: LCCOMB_X33_Y12_N20
\mywav_inst|reg_config_inst|u1|sclk~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|reg_config_inst|u1|sclk~4_combout\ = (\mywav_inst|reg_config_inst|u1|sclk~3_combout\ & (\mywav_inst|reg_config_inst|u1|cyc_count\(0) & (!\mywav_inst|reg_config_inst|u1|tr_end~0_combout\))) # (!\mywav_inst|reg_config_inst|u1|sclk~3_combout\ & 
-- (((\mywav_inst|reg_config_inst|u1|sclk~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mywav_inst|reg_config_inst|u1|cyc_count\(0),
	datab => \mywav_inst|reg_config_inst|u1|tr_end~0_combout\,
	datac => \mywav_inst|reg_config_inst|u1|sclk~q\,
	datad => \mywav_inst|reg_config_inst|u1|sclk~3_combout\,
	combout => \mywav_inst|reg_config_inst|u1|sclk~4_combout\);

-- Location: FF_X33_Y12_N21
\mywav_inst|reg_config_inst|u1|sclk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mywav_inst|reg_config_inst|clock_20k~clkctrl_outclk\,
	d => \mywav_inst|reg_config_inst|u1|sclk~4_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mywav_inst|reg_config_inst|u1|sclk~q\);

-- Location: LCCOMB_X33_Y12_N26
\mywav_inst|reg_config_inst|u1|i2c_sclk~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mywav_inst|reg_config_inst|u1|i2c_sclk~2_combout\ = ((\mywav_inst|reg_config_inst|u1|i2c_sclk~1_combout\ & (!\mywav_inst|reg_config_inst|clock_20k~q\ & \mywav_inst|reg_config_inst|u1|cyc_count\(5)))) # (!\mywav_inst|reg_config_inst|u1|sclk~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mywav_inst|reg_config_inst|u1|i2c_sclk~1_combout\,
	datab => \mywav_inst|reg_config_inst|clock_20k~q\,
	datac => \mywav_inst|reg_config_inst|u1|cyc_count\(5),
	datad => \mywav_inst|reg_config_inst|u1|sclk~q\,
	combout => \mywav_inst|reg_config_inst|u1|i2c_sclk~2_combout\);

-- Location: IOIBUF_X5_Y24_N8
\ADCLRC~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADCLRC,
	o => \ADCLRC~input_o\);

-- Location: IOIBUF_X5_Y24_N22
\ADCDAT~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ADCDAT,
	o => \ADCDAT~input_o\);
END structure;


