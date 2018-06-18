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

-- DATE "11/17/2016 10:57:05"

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

ENTITY 	uart_tx IS
    PORT (
	tx : OUT std_logic;
	clk50 : IN std_logic;
	rst_n : IN std_logic
	);
END uart_tx;

-- Design Ports Information
-- tx	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- rst_n	=>  Location: PIN_N13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk50	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF uart_tx IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_tx : std_logic;
SIGNAL ww_clk50 : std_logic;
SIGNAL ww_rst_n : std_logic;
SIGNAL \inst|clkout~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|Add0~4_combout\ : std_logic;
SIGNAL \inst2|Add0~10_combout\ : std_logic;
SIGNAL \inst1|dataout[1]~7_combout\ : std_logic;
SIGNAL \inst1|dataout[1]~8\ : std_logic;
SIGNAL \inst1|dataout[2]~9_combout\ : std_logic;
SIGNAL \inst1|dataout[2]~10\ : std_logic;
SIGNAL \inst1|dataout[3]~11_combout\ : std_logic;
SIGNAL \inst1|dataout[3]~12\ : std_logic;
SIGNAL \inst1|dataout[4]~13_combout\ : std_logic;
SIGNAL \inst1|dataout[4]~14\ : std_logic;
SIGNAL \inst1|dataout[5]~15_combout\ : std_logic;
SIGNAL \inst1|dataout[5]~16\ : std_logic;
SIGNAL \inst1|dataout[6]~18_combout\ : std_logic;
SIGNAL \inst1|dataout[6]~19\ : std_logic;
SIGNAL \inst1|dataout[7]~21_combout\ : std_logic;
SIGNAL \inst1|cnt[0]~8_combout\ : std_logic;
SIGNAL \inst1|cnt[0]~9\ : std_logic;
SIGNAL \inst1|cnt[1]~10_combout\ : std_logic;
SIGNAL \inst1|cnt[1]~11\ : std_logic;
SIGNAL \inst1|cnt[2]~12_combout\ : std_logic;
SIGNAL \inst1|cnt[2]~13\ : std_logic;
SIGNAL \inst1|cnt[3]~14_combout\ : std_logic;
SIGNAL \inst1|cnt[3]~15\ : std_logic;
SIGNAL \inst1|cnt[4]~16_combout\ : std_logic;
SIGNAL \inst1|cnt[4]~17\ : std_logic;
SIGNAL \inst1|cnt[5]~18_combout\ : std_logic;
SIGNAL \inst1|cnt[5]~19\ : std_logic;
SIGNAL \inst1|cnt[6]~20_combout\ : std_logic;
SIGNAL \inst1|cnt[6]~21\ : std_logic;
SIGNAL \inst1|cnt[7]~22_combout\ : std_logic;
SIGNAL \inst|Add0~10_combout\ : std_logic;
SIGNAL \inst|Add0~26_combout\ : std_logic;
SIGNAL \inst2|Selector5~0_combout\ : std_logic;
SIGNAL \inst2|Selector5~1_combout\ : std_logic;
SIGNAL \inst2|Selector5~2_combout\ : std_logic;
SIGNAL \inst2|Selector5~3_combout\ : std_logic;
SIGNAL \inst2|Selector5~4_combout\ : std_logic;
SIGNAL \inst2|Selector5~5_combout\ : std_logic;
SIGNAL \inst2|presult~q\ : std_logic;
SIGNAL \inst2|Selector5~6_combout\ : std_logic;
SIGNAL \inst2|Selector5~7_combout\ : std_logic;
SIGNAL \inst2|Selector5~8_combout\ : std_logic;
SIGNAL \inst2|Selector5~9_combout\ : std_logic;
SIGNAL \inst2|cnt~3_combout\ : std_logic;
SIGNAL \inst1|Equal0~0_combout\ : std_logic;
SIGNAL \inst1|Equal0~1_combout\ : std_logic;
SIGNAL \inst1|dataout[0]~17_combout\ : std_logic;
SIGNAL \inst2|cnt~8_combout\ : std_logic;
SIGNAL \inst2|cnt~9_combout\ : std_logic;
SIGNAL \inst1|dataout[0]~20_combout\ : std_logic;
SIGNAL \inst2|presult~0_combout\ : std_logic;
SIGNAL \inst2|Selector5~10_combout\ : std_logic;
SIGNAL \inst2|Selector5~11_combout\ : std_logic;
SIGNAL \inst2|presult~1_combout\ : std_logic;
SIGNAL \inst2|presult~2_combout\ : std_logic;
SIGNAL \inst2|presult~3_combout\ : std_logic;
SIGNAL \inst2|presult~4_combout\ : std_logic;
SIGNAL \inst2|presult~5_combout\ : std_logic;
SIGNAL \inst2|WideOr10~0_combout\ : std_logic;
SIGNAL \inst2|cnt~14_combout\ : std_logic;
SIGNAL \inst2|wrsigrise~q\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|Equal0~3_combout\ : std_logic;
SIGNAL \inst|Equal1~1_combout\ : std_logic;
SIGNAL \inst1|Equal0~2_combout\ : std_logic;
SIGNAL \inst1|wrsig~q\ : std_logic;
SIGNAL \inst2|wrsigbuf~q\ : std_logic;
SIGNAL \inst2|wrsigrise~0_combout\ : std_logic;
SIGNAL \inst2|presult~6_combout\ : std_logic;
SIGNAL \inst2|presult~7_combout\ : std_logic;
SIGNAL \clk50~input_o\ : std_logic;
SIGNAL \clk50~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst2|wrsigbuf~feeder_combout\ : std_logic;
SIGNAL \tx~output_o\ : std_logic;
SIGNAL \inst|Add0~0_combout\ : std_logic;
SIGNAL \rst_n~input_o\ : std_logic;
SIGNAL \inst|Add0~1\ : std_logic;
SIGNAL \inst|Add0~2_combout\ : std_logic;
SIGNAL \inst|cnt~0_combout\ : std_logic;
SIGNAL \inst|Add0~3\ : std_logic;
SIGNAL \inst|Add0~4_combout\ : std_logic;
SIGNAL \inst|cnt~1_combout\ : std_logic;
SIGNAL \inst|Add0~5\ : std_logic;
SIGNAL \inst|Add0~7\ : std_logic;
SIGNAL \inst|Add0~8_combout\ : std_logic;
SIGNAL \inst|Add0~9\ : std_logic;
SIGNAL \inst|Add0~11\ : std_logic;
SIGNAL \inst|Add0~13\ : std_logic;
SIGNAL \inst|Add0~14_combout\ : std_logic;
SIGNAL \inst|Add0~15\ : std_logic;
SIGNAL \inst|Add0~17\ : std_logic;
SIGNAL \inst|Add0~18_combout\ : std_logic;
SIGNAL \inst|Add0~19\ : std_logic;
SIGNAL \inst|Add0~20_combout\ : std_logic;
SIGNAL \inst|Add0~21\ : std_logic;
SIGNAL \inst|Add0~22_combout\ : std_logic;
SIGNAL \inst|Equal0~2_combout\ : std_logic;
SIGNAL \inst|Add0~23\ : std_logic;
SIGNAL \inst|Add0~24_combout\ : std_logic;
SIGNAL \inst|Add0~25\ : std_logic;
SIGNAL \inst|Add0~27\ : std_logic;
SIGNAL \inst|Add0~28_combout\ : std_logic;
SIGNAL \inst|Add0~29\ : std_logic;
SIGNAL \inst|Add0~30_combout\ : std_logic;
SIGNAL \inst|Equal0~1_combout\ : std_logic;
SIGNAL \inst|Add0~16_combout\ : std_logic;
SIGNAL \inst|cnt~2_combout\ : std_logic;
SIGNAL \inst|Add0~12_combout\ : std_logic;
SIGNAL \inst|cnt~3_combout\ : std_logic;
SIGNAL \inst|Equal1~0_combout\ : std_logic;
SIGNAL \inst|Equal1~2_combout\ : std_logic;
SIGNAL \inst|Add0~6_combout\ : std_logic;
SIGNAL \inst|Equal0~4_combout\ : std_logic;
SIGNAL \inst|clkout~0_combout\ : std_logic;
SIGNAL \inst|clkout~q\ : std_logic;
SIGNAL \inst|clkout~clkctrl_outclk\ : std_logic;
SIGNAL \inst2|cnt~10_combout\ : std_logic;
SIGNAL \inst2|Equal0~0_combout\ : std_logic;
SIGNAL \inst2|cnt[0]~13_combout\ : std_logic;
SIGNAL \inst2|Add0~0_combout\ : std_logic;
SIGNAL \inst2|cnt~16_combout\ : std_logic;
SIGNAL \inst2|Add0~1\ : std_logic;
SIGNAL \inst2|Add0~2_combout\ : std_logic;
SIGNAL \inst2|cnt~15_combout\ : std_logic;
SIGNAL \inst2|Add0~3\ : std_logic;
SIGNAL \inst2|Add0~5\ : std_logic;
SIGNAL \inst2|Add0~6_combout\ : std_logic;
SIGNAL \inst2|cnt~12_combout\ : std_logic;
SIGNAL \inst2|Add0~7\ : std_logic;
SIGNAL \inst2|Add0~9\ : std_logic;
SIGNAL \inst2|Add0~11\ : std_logic;
SIGNAL \inst2|Add0~12_combout\ : std_logic;
SIGNAL \inst2|cnt~11_combout\ : std_logic;
SIGNAL \inst2|Add0~13\ : std_logic;
SIGNAL \inst2|Add0~14_combout\ : std_logic;
SIGNAL \inst2|cnt[3]~0_combout\ : std_logic;
SIGNAL \inst2|cnt[3]~2_combout\ : std_logic;
SIGNAL \inst2|cnt~4_combout\ : std_logic;
SIGNAL \inst2|cnt[3]~1_combout\ : std_logic;
SIGNAL \inst2|cnt~5_combout\ : std_logic;
SIGNAL \inst2|Add0~8_combout\ : std_logic;
SIGNAL \inst2|cnt~6_combout\ : std_logic;
SIGNAL \inst2|cnt~7_combout\ : std_logic;
SIGNAL \inst2|Equal0~1_combout\ : std_logic;
SIGNAL \inst2|Equal0~2_combout\ : std_logic;
SIGNAL \inst2|idle~0_combout\ : std_logic;
SIGNAL \inst2|idle~1_combout\ : std_logic;
SIGNAL \inst2|idle~q\ : std_logic;
SIGNAL \inst2|send~0_combout\ : std_logic;
SIGNAL \inst2|send~q\ : std_logic;
SIGNAL \inst2|tx~0_combout\ : std_logic;
SIGNAL \inst2|tx~q\ : std_logic;
SIGNAL \inst2|cnt\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|cnt\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst1|dataout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|cnt\ : std_logic_vector(7 DOWNTO 0);

BEGIN

tx <= ww_tx;
ww_clk50 <= clk50;
ww_rst_n <= rst_n;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst|clkout~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|clkout~q\);

\clk50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk50~input_o\);

-- Location: FF_X8_Y11_N15
\inst1|dataout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clkout~clkctrl_outclk\,
	d => \inst1|dataout[5]~15_combout\,
	ena => \inst1|dataout[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|dataout\(5));

-- Location: FF_X8_Y11_N11
\inst1|dataout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clkout~clkctrl_outclk\,
	d => \inst1|dataout[3]~11_combout\,
	ena => \inst1|dataout[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|dataout\(3));

-- Location: FF_X8_Y11_N17
\inst1|dataout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clkout~clkctrl_outclk\,
	d => \inst1|dataout[6]~18_combout\,
	ena => \inst1|dataout[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|dataout\(6));

-- Location: FF_X8_Y11_N13
\inst1|dataout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clkout~clkctrl_outclk\,
	d => \inst1|dataout[4]~13_combout\,
	ena => \inst1|dataout[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|dataout\(4));

-- Location: FF_X8_Y11_N9
\inst1|dataout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clkout~clkctrl_outclk\,
	d => \inst1|dataout[2]~9_combout\,
	ena => \inst1|dataout[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|dataout\(2));

-- Location: FF_X8_Y11_N7
\inst1|dataout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clkout~clkctrl_outclk\,
	d => \inst1|dataout[1]~7_combout\,
	ena => \inst1|dataout[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|dataout\(1));

-- Location: FF_X8_Y11_N19
\inst1|dataout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clkout~clkctrl_outclk\,
	d => \inst1|dataout[7]~21_combout\,
	ena => \inst1|dataout[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|dataout\(7));

-- Location: LCCOMB_X16_Y11_N16
\inst2|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~4_combout\ = (\inst2|cnt\(2) & (\inst2|Add0~3\ $ (GND))) # (!\inst2|cnt\(2) & (!\inst2|Add0~3\ & VCC))
-- \inst2|Add0~5\ = CARRY((\inst2|cnt\(2) & !\inst2|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cnt\(2),
	datad => VCC,
	cin => \inst2|Add0~3\,
	combout => \inst2|Add0~4_combout\,
	cout => \inst2|Add0~5\);

-- Location: LCCOMB_X16_Y11_N22
\inst2|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~10_combout\ = (\inst2|cnt\(5) & (!\inst2|Add0~9\)) # (!\inst2|cnt\(5) & ((\inst2|Add0~9\) # (GND)))
-- \inst2|Add0~11\ = CARRY((!\inst2|Add0~9\) # (!\inst2|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cnt\(5),
	datad => VCC,
	cin => \inst2|Add0~9\,
	combout => \inst2|Add0~10_combout\,
	cout => \inst2|Add0~11\);

-- Location: LCCOMB_X8_Y11_N6
\inst1|dataout[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dataout[1]~7_combout\ = (\inst1|dataout\(1) & (\inst1|dataout\(0) $ (VCC))) # (!\inst1|dataout\(1) & (\inst1|dataout\(0) & VCC))
-- \inst1|dataout[1]~8\ = CARRY((\inst1|dataout\(1) & \inst1|dataout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dataout\(1),
	datab => \inst1|dataout\(0),
	datad => VCC,
	combout => \inst1|dataout[1]~7_combout\,
	cout => \inst1|dataout[1]~8\);

-- Location: LCCOMB_X8_Y11_N8
\inst1|dataout[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dataout[2]~9_combout\ = (\inst1|dataout\(2) & (!\inst1|dataout[1]~8\)) # (!\inst1|dataout\(2) & ((\inst1|dataout[1]~8\) # (GND)))
-- \inst1|dataout[2]~10\ = CARRY((!\inst1|dataout[1]~8\) # (!\inst1|dataout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|dataout\(2),
	datad => VCC,
	cin => \inst1|dataout[1]~8\,
	combout => \inst1|dataout[2]~9_combout\,
	cout => \inst1|dataout[2]~10\);

-- Location: LCCOMB_X8_Y11_N10
\inst1|dataout[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dataout[3]~11_combout\ = (\inst1|dataout\(3) & (\inst1|dataout[2]~10\ $ (GND))) # (!\inst1|dataout\(3) & (!\inst1|dataout[2]~10\ & VCC))
-- \inst1|dataout[3]~12\ = CARRY((\inst1|dataout\(3) & !\inst1|dataout[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dataout\(3),
	datad => VCC,
	cin => \inst1|dataout[2]~10\,
	combout => \inst1|dataout[3]~11_combout\,
	cout => \inst1|dataout[3]~12\);

-- Location: LCCOMB_X8_Y11_N12
\inst1|dataout[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dataout[4]~13_combout\ = (\inst1|dataout\(4) & (!\inst1|dataout[3]~12\)) # (!\inst1|dataout\(4) & ((\inst1|dataout[3]~12\) # (GND)))
-- \inst1|dataout[4]~14\ = CARRY((!\inst1|dataout[3]~12\) # (!\inst1|dataout\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dataout\(4),
	datad => VCC,
	cin => \inst1|dataout[3]~12\,
	combout => \inst1|dataout[4]~13_combout\,
	cout => \inst1|dataout[4]~14\);

-- Location: LCCOMB_X8_Y11_N14
\inst1|dataout[5]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dataout[5]~15_combout\ = (\inst1|dataout\(5) & (\inst1|dataout[4]~14\ $ (GND))) # (!\inst1|dataout\(5) & (!\inst1|dataout[4]~14\ & VCC))
-- \inst1|dataout[5]~16\ = CARRY((\inst1|dataout\(5) & !\inst1|dataout[4]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|dataout\(5),
	datad => VCC,
	cin => \inst1|dataout[4]~14\,
	combout => \inst1|dataout[5]~15_combout\,
	cout => \inst1|dataout[5]~16\);

-- Location: FF_X21_Y7_N15
\inst1|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clkout~clkctrl_outclk\,
	d => \inst1|cnt[1]~10_combout\,
	clrn => \rst_n~input_o\,
	sclr => \inst1|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cnt\(1));

-- Location: FF_X21_Y7_N17
\inst1|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clkout~clkctrl_outclk\,
	d => \inst1|cnt[2]~12_combout\,
	clrn => \rst_n~input_o\,
	sclr => \inst1|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cnt\(2));

-- Location: FF_X21_Y7_N19
\inst1|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clkout~clkctrl_outclk\,
	d => \inst1|cnt[3]~14_combout\,
	clrn => \rst_n~input_o\,
	sclr => \inst1|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cnt\(3));

-- Location: FF_X21_Y7_N13
\inst1|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clkout~clkctrl_outclk\,
	d => \inst1|cnt[0]~8_combout\,
	clrn => \rst_n~input_o\,
	sclr => \inst1|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cnt\(0));

-- Location: FF_X21_Y7_N21
\inst1|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clkout~clkctrl_outclk\,
	d => \inst1|cnt[4]~16_combout\,
	clrn => \rst_n~input_o\,
	sclr => \inst1|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cnt\(4));

-- Location: FF_X21_Y7_N23
\inst1|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clkout~clkctrl_outclk\,
	d => \inst1|cnt[5]~18_combout\,
	clrn => \rst_n~input_o\,
	sclr => \inst1|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cnt\(5));

-- Location: FF_X21_Y7_N25
\inst1|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clkout~clkctrl_outclk\,
	d => \inst1|cnt[6]~20_combout\,
	clrn => \rst_n~input_o\,
	sclr => \inst1|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cnt\(6));

-- Location: FF_X21_Y7_N27
\inst1|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clkout~clkctrl_outclk\,
	d => \inst1|cnt[7]~22_combout\,
	clrn => \rst_n~input_o\,
	sclr => \inst1|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cnt\(7));

-- Location: LCCOMB_X8_Y11_N16
\inst1|dataout[6]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dataout[6]~18_combout\ = (\inst1|dataout\(6) & (!\inst1|dataout[5]~16\)) # (!\inst1|dataout\(6) & ((\inst1|dataout[5]~16\) # (GND)))
-- \inst1|dataout[6]~19\ = CARRY((!\inst1|dataout[5]~16\) # (!\inst1|dataout\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|dataout\(6),
	datad => VCC,
	cin => \inst1|dataout[5]~16\,
	combout => \inst1|dataout[6]~18_combout\,
	cout => \inst1|dataout[6]~19\);

-- Location: LCCOMB_X8_Y11_N18
\inst1|dataout[7]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dataout[7]~21_combout\ = \inst1|dataout[6]~19\ $ (!\inst1|dataout\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst1|dataout\(7),
	cin => \inst1|dataout[6]~19\,
	combout => \inst1|dataout[7]~21_combout\);

-- Location: LCCOMB_X21_Y7_N12
\inst1|cnt[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cnt[0]~8_combout\ = \inst1|cnt\(0) $ (VCC)
-- \inst1|cnt[0]~9\ = CARRY(\inst1|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cnt\(0),
	datad => VCC,
	combout => \inst1|cnt[0]~8_combout\,
	cout => \inst1|cnt[0]~9\);

-- Location: LCCOMB_X21_Y7_N14
\inst1|cnt[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cnt[1]~10_combout\ = (\inst1|cnt\(1) & (!\inst1|cnt[0]~9\)) # (!\inst1|cnt\(1) & ((\inst1|cnt[0]~9\) # (GND)))
-- \inst1|cnt[1]~11\ = CARRY((!\inst1|cnt[0]~9\) # (!\inst1|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cnt\(1),
	datad => VCC,
	cin => \inst1|cnt[0]~9\,
	combout => \inst1|cnt[1]~10_combout\,
	cout => \inst1|cnt[1]~11\);

-- Location: LCCOMB_X21_Y7_N16
\inst1|cnt[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cnt[2]~12_combout\ = (\inst1|cnt\(2) & (\inst1|cnt[1]~11\ $ (GND))) # (!\inst1|cnt\(2) & (!\inst1|cnt[1]~11\ & VCC))
-- \inst1|cnt[2]~13\ = CARRY((\inst1|cnt\(2) & !\inst1|cnt[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cnt\(2),
	datad => VCC,
	cin => \inst1|cnt[1]~11\,
	combout => \inst1|cnt[2]~12_combout\,
	cout => \inst1|cnt[2]~13\);

-- Location: LCCOMB_X21_Y7_N18
\inst1|cnt[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cnt[3]~14_combout\ = (\inst1|cnt\(3) & (!\inst1|cnt[2]~13\)) # (!\inst1|cnt\(3) & ((\inst1|cnt[2]~13\) # (GND)))
-- \inst1|cnt[3]~15\ = CARRY((!\inst1|cnt[2]~13\) # (!\inst1|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cnt\(3),
	datad => VCC,
	cin => \inst1|cnt[2]~13\,
	combout => \inst1|cnt[3]~14_combout\,
	cout => \inst1|cnt[3]~15\);

-- Location: LCCOMB_X21_Y7_N20
\inst1|cnt[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cnt[4]~16_combout\ = (\inst1|cnt\(4) & (\inst1|cnt[3]~15\ $ (GND))) # (!\inst1|cnt\(4) & (!\inst1|cnt[3]~15\ & VCC))
-- \inst1|cnt[4]~17\ = CARRY((\inst1|cnt\(4) & !\inst1|cnt[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cnt\(4),
	datad => VCC,
	cin => \inst1|cnt[3]~15\,
	combout => \inst1|cnt[4]~16_combout\,
	cout => \inst1|cnt[4]~17\);

-- Location: LCCOMB_X21_Y7_N22
\inst1|cnt[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cnt[5]~18_combout\ = (\inst1|cnt\(5) & (!\inst1|cnt[4]~17\)) # (!\inst1|cnt\(5) & ((\inst1|cnt[4]~17\) # (GND)))
-- \inst1|cnt[5]~19\ = CARRY((!\inst1|cnt[4]~17\) # (!\inst1|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cnt\(5),
	datad => VCC,
	cin => \inst1|cnt[4]~17\,
	combout => \inst1|cnt[5]~18_combout\,
	cout => \inst1|cnt[5]~19\);

-- Location: LCCOMB_X21_Y7_N24
\inst1|cnt[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cnt[6]~20_combout\ = (\inst1|cnt\(6) & (\inst1|cnt[5]~19\ $ (GND))) # (!\inst1|cnt\(6) & (!\inst1|cnt[5]~19\ & VCC))
-- \inst1|cnt[6]~21\ = CARRY((\inst1|cnt\(6) & !\inst1|cnt[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|cnt\(6),
	datad => VCC,
	cin => \inst1|cnt[5]~19\,
	combout => \inst1|cnt[6]~20_combout\,
	cout => \inst1|cnt[6]~21\);

-- Location: LCCOMB_X21_Y7_N26
\inst1|cnt[7]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|cnt[7]~22_combout\ = \inst1|cnt\(7) $ (\inst1|cnt[6]~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cnt\(7),
	cin => \inst1|cnt[6]~21\,
	combout => \inst1|cnt[7]~22_combout\);

-- Location: LCCOMB_X29_Y16_N10
\inst|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~10_combout\ = (\inst|cnt\(5) & (!\inst|Add0~9\)) # (!\inst|cnt\(5) & ((\inst|Add0~9\) # (GND)))
-- \inst|Add0~11\ = CARRY((!\inst|Add0~9\) # (!\inst|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(5),
	datad => VCC,
	cin => \inst|Add0~9\,
	combout => \inst|Add0~10_combout\,
	cout => \inst|Add0~11\);

-- Location: LCCOMB_X29_Y16_N26
\inst|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~26_combout\ = (\inst|cnt\(13) & (!\inst|Add0~25\)) # (!\inst|cnt\(13) & ((\inst|Add0~25\) # (GND)))
-- \inst|Add0~27\ = CARRY((!\inst|Add0~25\) # (!\inst|cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(13),
	datad => VCC,
	cin => \inst|Add0~25\,
	combout => \inst|Add0~26_combout\,
	cout => \inst|Add0~27\);

-- Location: FF_X16_Y11_N11
\inst2|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clkout~clkctrl_outclk\,
	d => \inst2|cnt~9_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cnt\(5));

-- Location: LCCOMB_X8_Y11_N24
\inst2|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector5~0_combout\ = (\inst2|cnt\(4) & ((\inst2|cnt\(5) & ((\inst1|dataout\(6)))) # (!\inst2|cnt\(5) & (\inst1|dataout\(4))))) # (!\inst2|cnt\(4) & (((\inst2|cnt\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dataout\(4),
	datab => \inst1|dataout\(6),
	datac => \inst2|cnt\(4),
	datad => \inst2|cnt\(5),
	combout => \inst2|Selector5~0_combout\);

-- Location: LCCOMB_X8_Y11_N26
\inst2|Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector5~1_combout\ = (\inst2|cnt\(4) & (((\inst2|Selector5~0_combout\)))) # (!\inst2|cnt\(4) & ((\inst2|Selector5~0_combout\ & ((\inst1|dataout\(5)))) # (!\inst2|Selector5~0_combout\ & (\inst1|dataout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dataout\(3),
	datab => \inst1|dataout\(5),
	datac => \inst2|cnt\(4),
	datad => \inst2|Selector5~0_combout\,
	combout => \inst2|Selector5~1_combout\);

-- Location: LCCOMB_X9_Y11_N18
\inst2|Selector5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector5~2_combout\ = (\inst2|cnt\(7) & (\inst2|tx~q\)) # (!\inst2|cnt\(7) & ((\inst2|Selector5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|tx~q\,
	datac => \inst2|Selector5~1_combout\,
	datad => \inst2|cnt\(7),
	combout => \inst2|Selector5~2_combout\);

-- Location: LCCOMB_X9_Y11_N12
\inst2|Selector5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector5~3_combout\ = (\inst2|tx~q\) # ((!\inst2|cnt\(4) & (\inst2|cnt\(5) & \inst2|cnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cnt\(4),
	datab => \inst2|tx~q\,
	datac => \inst2|cnt\(5),
	datad => \inst2|cnt\(7),
	combout => \inst2|Selector5~3_combout\);

-- Location: FF_X21_Y7_N1
\inst1|dataout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clkout~clkctrl_outclk\,
	d => \inst1|dataout[0]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|dataout\(0));

-- Location: LCCOMB_X8_Y11_N4
\inst2|Selector5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector5~4_combout\ = (\inst2|cnt\(4) & (((\inst1|dataout\(2)) # (!\inst2|cnt\(5))))) # (!\inst2|cnt\(4) & (\inst1|dataout\(1) & ((\inst2|cnt\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dataout\(1),
	datab => \inst1|dataout\(2),
	datac => \inst2|cnt\(4),
	datad => \inst2|cnt\(5),
	combout => \inst2|Selector5~4_combout\);

-- Location: LCCOMB_X9_Y11_N22
\inst2|Selector5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector5~5_combout\ = (\inst2|cnt\(7) & (\inst2|cnt\(5))) # (!\inst2|cnt\(7) & (\inst2|Selector5~4_combout\ & ((\inst2|cnt\(5)) # (\inst1|dataout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cnt\(5),
	datab => \inst1|dataout\(0),
	datac => \inst2|Selector5~4_combout\,
	datad => \inst2|cnt\(7),
	combout => \inst2|Selector5~5_combout\);

-- Location: FF_X9_Y11_N25
\inst2|presult\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clkout~clkctrl_outclk\,
	d => \inst2|presult~5_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|presult~q\);

-- Location: LCCOMB_X9_Y11_N10
\inst2|Selector5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector5~6_combout\ = (\inst2|Selector5~5_combout\ & (((\inst2|cnt\(4))))) # (!\inst2|Selector5~5_combout\ & ((\inst2|cnt\(4) & ((!\inst2|presult~q\))) # (!\inst2|cnt\(4) & (!\inst1|dataout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Selector5~5_combout\,
	datab => \inst1|dataout\(7),
	datac => \inst2|presult~q\,
	datad => \inst2|cnt\(4),
	combout => \inst2|Selector5~6_combout\);

-- Location: LCCOMB_X9_Y11_N20
\inst2|Selector5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector5~7_combout\ = (\inst2|cnt\(7) & (((\inst2|tx~q\ & \inst2|Selector5~5_combout\)) # (!\inst2|Selector5~6_combout\))) # (!\inst2|cnt\(7) & (((\inst2|Selector5~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Selector5~6_combout\,
	datab => \inst2|tx~q\,
	datac => \inst2|Selector5~5_combout\,
	datad => \inst2|cnt\(7),
	combout => \inst2|Selector5~7_combout\);

-- Location: LCCOMB_X9_Y11_N6
\inst2|Selector5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector5~8_combout\ = (\inst2|cnt\(6) & (((\inst2|cnt\(3))))) # (!\inst2|cnt\(6) & ((\inst2|cnt\(3) & (\inst2|Selector5~3_combout\)) # (!\inst2|cnt\(3) & ((\inst2|Selector5~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Selector5~3_combout\,
	datab => \inst2|Selector5~7_combout\,
	datac => \inst2|cnt\(6),
	datad => \inst2|cnt\(3),
	combout => \inst2|Selector5~8_combout\);

-- Location: LCCOMB_X9_Y11_N8
\inst2|Selector5~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector5~9_combout\ = (\inst2|Selector5~8_combout\ & (((\inst2|tx~q\) # (!\inst2|cnt\(6))))) # (!\inst2|Selector5~8_combout\ & (\inst2|Selector5~2_combout\ & (\inst2|cnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Selector5~8_combout\,
	datab => \inst2|Selector5~2_combout\,
	datac => \inst2|cnt\(6),
	datad => \inst2|tx~q\,
	combout => \inst2|Selector5~9_combout\);

-- Location: FF_X16_Y11_N7
\inst2|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clkout~clkctrl_outclk\,
	d => \inst2|cnt~14_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cnt\(2));

-- Location: LCCOMB_X16_Y11_N30
\inst2|cnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|cnt~3_combout\ = (!\inst2|cnt\(7) & !\inst2|cnt\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|cnt\(7),
	datac => \inst2|cnt\(3),
	combout => \inst2|cnt~3_combout\);

-- Location: LCCOMB_X21_Y7_N2
\inst1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~0_combout\ = (!\inst1|cnt\(0) & (\inst1|cnt\(2) & (\inst1|cnt\(1) & \inst1|cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cnt\(0),
	datab => \inst1|cnt\(2),
	datac => \inst1|cnt\(1),
	datad => \inst1|cnt\(3),
	combout => \inst1|Equal0~0_combout\);

-- Location: LCCOMB_X21_Y7_N4
\inst1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~1_combout\ = (\inst1|cnt\(7) & (\inst1|cnt\(6) & (\inst1|cnt\(5) & \inst1|cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|cnt\(7),
	datab => \inst1|cnt\(6),
	datac => \inst1|cnt\(5),
	datad => \inst1|cnt\(4),
	combout => \inst1|Equal0~1_combout\);

-- Location: LCCOMB_X21_Y7_N6
\inst1|dataout[0]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dataout[0]~17_combout\ = (\inst1|Equal0~1_combout\ & (\rst_n~input_o\ & \inst1|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Equal0~1_combout\,
	datac => \rst_n~input_o\,
	datad => \inst1|Equal0~0_combout\,
	combout => \inst1|dataout[0]~17_combout\);

-- Location: LCCOMB_X9_Y11_N2
\inst2|cnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|cnt~8_combout\ = (\inst2|cnt\(5)) # (\inst2|cnt\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|cnt\(5),
	datad => \inst2|cnt\(3),
	combout => \inst2|cnt~8_combout\);

-- Location: LCCOMB_X16_Y11_N10
\inst2|cnt~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|cnt~9_combout\ = (\inst2|cnt[3]~2_combout\ & (((\inst2|Add0~10_combout\)))) # (!\inst2|cnt[3]~2_combout\ & (\inst2|cnt~8_combout\ & (\inst2|send~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cnt~8_combout\,
	datab => \inst2|send~q\,
	datac => \inst2|Add0~10_combout\,
	datad => \inst2|cnt[3]~2_combout\,
	combout => \inst2|cnt~9_combout\);

-- Location: LCCOMB_X21_Y7_N0
\inst1|dataout[0]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dataout[0]~20_combout\ = \inst1|dataout\(0) $ (((\inst1|Equal0~1_combout\ & (\rst_n~input_o\ & \inst1|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal0~1_combout\,
	datab => \rst_n~input_o\,
	datac => \inst1|dataout\(0),
	datad => \inst1|Equal0~0_combout\,
	combout => \inst1|dataout[0]~20_combout\);

-- Location: LCCOMB_X9_Y11_N28
\inst2|presult~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|presult~0_combout\ = (\inst2|Equal0~0_combout\ & (\inst2|send~q\ & !\inst2|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Equal0~0_combout\,
	datac => \inst2|send~q\,
	datad => \inst2|cnt\(3),
	combout => \inst2|presult~0_combout\);

-- Location: LCCOMB_X8_Y11_N28
\inst2|Selector5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector5~10_combout\ = \inst2|presult~q\ $ (((\inst2|cnt\(4) & ((\inst1|dataout\(4)))) # (!\inst2|cnt\(4) & (\inst1|dataout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dataout\(3),
	datab => \inst2|presult~q\,
	datac => \inst2|cnt\(4),
	datad => \inst1|dataout\(4),
	combout => \inst2|Selector5~10_combout\);

-- Location: LCCOMB_X8_Y11_N22
\inst2|Selector5~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Selector5~11_combout\ = \inst2|presult~q\ $ (((\inst2|cnt\(4) & (\inst1|dataout\(6))) # (!\inst2|cnt\(4) & ((\inst1|dataout\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cnt\(4),
	datab => \inst1|dataout\(6),
	datac => \inst1|dataout\(5),
	datad => \inst2|presult~q\,
	combout => \inst2|Selector5~11_combout\);

-- Location: LCCOMB_X8_Y11_N0
\inst2|presult~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|presult~1_combout\ = (\inst2|cnt\(7) & (((\inst2|cnt\(5))))) # (!\inst2|cnt\(7) & ((\inst2|cnt\(5) & (\inst2|Selector5~11_combout\)) # (!\inst2|cnt\(5) & ((\inst2|Selector5~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Selector5~11_combout\,
	datab => \inst2|Selector5~10_combout\,
	datac => \inst2|cnt\(7),
	datad => \inst2|cnt\(5),
	combout => \inst2|presult~1_combout\);

-- Location: LCCOMB_X9_Y11_N30
\inst2|presult~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|presult~2_combout\ = (\inst2|cnt\(6) & ((\inst2|presult~1_combout\) # ((\inst2|cnt\(7))))) # (!\inst2|cnt\(6) & ((\inst2|cnt\(7) & (\inst2|presult~1_combout\)) # (!\inst2|cnt\(7) & ((\inst2|presult~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|presult~1_combout\,
	datab => \inst2|presult~7_combout\,
	datac => \inst2|cnt\(6),
	datad => \inst2|cnt\(7),
	combout => \inst2|presult~2_combout\);

-- Location: LCCOMB_X9_Y11_N16
\inst2|presult~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|presult~3_combout\ = (\inst2|cnt\(4) & (((\inst1|dataout\(0))))) # (!\inst2|cnt\(4) & (\inst1|dataout\(7) $ ((\inst2|presult~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cnt\(4),
	datab => \inst1|dataout\(7),
	datac => \inst2|presult~q\,
	datad => \inst1|dataout\(0),
	combout => \inst2|presult~3_combout\);

-- Location: LCCOMB_X9_Y11_N26
\inst2|presult~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|presult~4_combout\ = (\inst2|cnt\(7) & ((\inst2|presult~3_combout\) # (\inst2|presult~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|presult~3_combout\,
	datac => \inst2|presult~2_combout\,
	datad => \inst2|cnt\(7),
	combout => \inst2|presult~4_combout\);

-- Location: LCCOMB_X9_Y11_N24
\inst2|presult~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|presult~5_combout\ = (\inst2|presult~0_combout\ & ((\inst2|presult~4_combout\ & ((\inst2|presult~q\) # (!\inst2|presult~2_combout\))) # (!\inst2|presult~4_combout\ & ((\inst2|presult~2_combout\))))) # (!\inst2|presult~0_combout\ & 
-- (((\inst2|presult~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|presult~4_combout\,
	datab => \inst2|presult~0_combout\,
	datac => \inst2|presult~q\,
	datad => \inst2|presult~2_combout\,
	combout => \inst2|presult~5_combout\);

-- Location: LCCOMB_X11_Y10_N10
\inst2|WideOr10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|WideOr10~0_combout\ = (\inst2|cnt\(7) & ((\inst2|cnt\(6)) # ((\inst2|cnt\(5) & \inst2|cnt\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cnt\(5),
	datab => \inst2|cnt\(4),
	datac => \inst2|cnt\(6),
	datad => \inst2|cnt\(7),
	combout => \inst2|WideOr10~0_combout\);

-- Location: LCCOMB_X16_Y11_N6
\inst2|cnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|cnt~14_combout\ = (\inst2|send~q\ & (\inst2|cnt[0]~13_combout\ & \inst2|Add0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|send~q\,
	datac => \inst2|cnt[0]~13_combout\,
	datad => \inst2|Add0~4_combout\,
	combout => \inst2|cnt~14_combout\);

-- Location: FF_X21_Y7_N9
\inst2|wrsigrise\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clkout~clkctrl_outclk\,
	d => \inst2|wrsigrise~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|wrsigrise~q\);

-- Location: FF_X29_Y16_N11
\inst|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \inst|Add0~10_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(5));

-- Location: LCCOMB_X28_Y16_N24
\inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = (!\inst|cnt\(2) & (\inst|cnt\(5) & \inst|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(2),
	datab => \inst|cnt\(5),
	datac => \inst|cnt\(1),
	combout => \inst|Equal0~0_combout\);

-- Location: FF_X29_Y16_N27
\inst|cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \inst|Add0~26_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(13));

-- Location: LCCOMB_X28_Y16_N10
\inst|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~3_combout\ = (!\inst|cnt\(8) & (!\inst|cnt\(0) & (\inst|cnt\(7) & !\inst|cnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(8),
	datab => \inst|cnt\(0),
	datac => \inst|cnt\(7),
	datad => \inst|cnt\(6),
	combout => \inst|Equal0~3_combout\);

-- Location: LCCOMB_X28_Y16_N12
\inst|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal1~1_combout\ = (\inst|cnt\(2) & (!\inst|cnt\(7) & (!\inst|cnt\(5) & !\inst|cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(2),
	datab => \inst|cnt\(7),
	datac => \inst|cnt\(5),
	datad => \inst|cnt\(1),
	combout => \inst|Equal1~1_combout\);

-- Location: LCCOMB_X21_Y7_N10
\inst1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~2_combout\ = (\inst1|Equal0~1_combout\ & \inst1|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Equal0~1_combout\,
	datad => \inst1|Equal0~0_combout\,
	combout => \inst1|Equal0~2_combout\);

-- Location: FF_X21_Y7_N11
\inst1|wrsig\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clkout~clkctrl_outclk\,
	d => \inst1|Equal0~2_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|wrsig~q\);

-- Location: FF_X21_Y7_N29
\inst2|wrsigbuf\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clkout~clkctrl_outclk\,
	d => \inst2|wrsigbuf~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|wrsigbuf~q\);

-- Location: LCCOMB_X21_Y7_N8
\inst2|wrsigrise~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|wrsigrise~0_combout\ = (!\inst2|wrsigbuf~q\ & \inst1|wrsig~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|wrsigbuf~q\,
	datac => \inst1|wrsig~q\,
	combout => \inst2|wrsigrise~0_combout\);

-- Location: LCCOMB_X8_Y11_N2
\inst2|presult~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|presult~6_combout\ = (\inst2|cnt\(4) & (((\inst1|dataout\(2)) # (!\inst2|cnt\(5))))) # (!\inst2|cnt\(4) & (\inst1|dataout\(1) & ((\inst2|cnt\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dataout\(1),
	datab => \inst1|dataout\(2),
	datac => \inst2|cnt\(4),
	datad => \inst2|cnt\(5),
	combout => \inst2|presult~6_combout\);

-- Location: LCCOMB_X8_Y11_N20
\inst2|presult~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|presult~7_combout\ = (\inst2|presult~6_combout\ & ((\inst2|cnt\(5) & (!\inst2|presult~q\)) # (!\inst2|cnt\(5) & ((\inst1|dataout\(0)))))) # (!\inst2|presult~6_combout\ & (\inst2|presult~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|presult~6_combout\,
	datab => \inst2|presult~q\,
	datac => \inst1|dataout\(0),
	datad => \inst2|cnt\(5),
	combout => \inst2|presult~7_combout\);

-- Location: IOIBUF_X0_Y11_N8
\clk50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk50,
	o => \clk50~input_o\);

-- Location: CLKCTRL_G2
\clk50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk50~inputclkctrl_outclk\);

-- Location: LCCOMB_X21_Y7_N28
\inst2|wrsigbuf~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|wrsigbuf~feeder_combout\ = \inst1|wrsig~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|wrsig~q\,
	combout => \inst2|wrsigbuf~feeder_combout\);

-- Location: IOOBUF_X0_Y7_N23
\tx~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|tx~q\,
	devoe => ww_devoe,
	o => \tx~output_o\);

-- Location: LCCOMB_X29_Y16_N0
\inst|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~0_combout\ = \inst|cnt\(0) $ (VCC)
-- \inst|Add0~1\ = CARRY(\inst|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(0),
	datad => VCC,
	combout => \inst|Add0~0_combout\,
	cout => \inst|Add0~1\);

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

-- Location: FF_X29_Y16_N1
\inst|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \inst|Add0~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(0));

-- Location: LCCOMB_X29_Y16_N2
\inst|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~2_combout\ = (\inst|cnt\(1) & (!\inst|Add0~1\)) # (!\inst|cnt\(1) & ((\inst|Add0~1\) # (GND)))
-- \inst|Add0~3\ = CARRY((!\inst|Add0~1\) # (!\inst|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(1),
	datad => VCC,
	cin => \inst|Add0~1\,
	combout => \inst|Add0~2_combout\,
	cout => \inst|Add0~3\);

-- Location: LCCOMB_X28_Y16_N4
\inst|cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cnt~0_combout\ = (!\inst|Equal1~2_combout\ & \inst|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal1~2_combout\,
	datac => \inst|Add0~2_combout\,
	combout => \inst|cnt~0_combout\);

-- Location: FF_X28_Y16_N5
\inst|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \inst|cnt~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(1));

-- Location: LCCOMB_X29_Y16_N4
\inst|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~4_combout\ = (\inst|cnt\(2) & (\inst|Add0~3\ $ (GND))) # (!\inst|cnt\(2) & (!\inst|Add0~3\ & VCC))
-- \inst|Add0~5\ = CARRY((\inst|cnt\(2) & !\inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(2),
	datad => VCC,
	cin => \inst|Add0~3\,
	combout => \inst|Add0~4_combout\,
	cout => \inst|Add0~5\);

-- Location: LCCOMB_X28_Y16_N22
\inst|cnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cnt~1_combout\ = (!\inst|Equal1~2_combout\ & \inst|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal1~2_combout\,
	datad => \inst|Add0~4_combout\,
	combout => \inst|cnt~1_combout\);

-- Location: FF_X28_Y16_N23
\inst|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \inst|cnt~1_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(2));

-- Location: LCCOMB_X29_Y16_N6
\inst|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~6_combout\ = (\inst|cnt\(3) & (!\inst|Add0~5\)) # (!\inst|cnt\(3) & ((\inst|Add0~5\) # (GND)))
-- \inst|Add0~7\ = CARRY((!\inst|Add0~5\) # (!\inst|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(3),
	datad => VCC,
	cin => \inst|Add0~5\,
	combout => \inst|Add0~6_combout\,
	cout => \inst|Add0~7\);

-- Location: LCCOMB_X29_Y16_N8
\inst|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~8_combout\ = (\inst|cnt\(4) & (\inst|Add0~7\ $ (GND))) # (!\inst|cnt\(4) & (!\inst|Add0~7\ & VCC))
-- \inst|Add0~9\ = CARRY((\inst|cnt\(4) & !\inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(4),
	datad => VCC,
	cin => \inst|Add0~7\,
	combout => \inst|Add0~8_combout\,
	cout => \inst|Add0~9\);

-- Location: FF_X29_Y16_N9
\inst|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \inst|Add0~8_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(4));

-- Location: LCCOMB_X29_Y16_N12
\inst|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~12_combout\ = (\inst|cnt\(6) & (\inst|Add0~11\ $ (GND))) # (!\inst|cnt\(6) & (!\inst|Add0~11\ & VCC))
-- \inst|Add0~13\ = CARRY((\inst|cnt\(6) & !\inst|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(6),
	datad => VCC,
	cin => \inst|Add0~11\,
	combout => \inst|Add0~12_combout\,
	cout => \inst|Add0~13\);

-- Location: LCCOMB_X29_Y16_N14
\inst|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~14_combout\ = (\inst|cnt\(7) & (!\inst|Add0~13\)) # (!\inst|cnt\(7) & ((\inst|Add0~13\) # (GND)))
-- \inst|Add0~15\ = CARRY((!\inst|Add0~13\) # (!\inst|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(7),
	datad => VCC,
	cin => \inst|Add0~13\,
	combout => \inst|Add0~14_combout\,
	cout => \inst|Add0~15\);

-- Location: FF_X29_Y16_N15
\inst|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \inst|Add0~14_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(7));

-- Location: LCCOMB_X29_Y16_N16
\inst|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~16_combout\ = (\inst|cnt\(8) & (\inst|Add0~15\ $ (GND))) # (!\inst|cnt\(8) & (!\inst|Add0~15\ & VCC))
-- \inst|Add0~17\ = CARRY((\inst|cnt\(8) & !\inst|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(8),
	datad => VCC,
	cin => \inst|Add0~15\,
	combout => \inst|Add0~16_combout\,
	cout => \inst|Add0~17\);

-- Location: LCCOMB_X29_Y16_N18
\inst|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~18_combout\ = (\inst|cnt\(9) & (!\inst|Add0~17\)) # (!\inst|cnt\(9) & ((\inst|Add0~17\) # (GND)))
-- \inst|Add0~19\ = CARRY((!\inst|Add0~17\) # (!\inst|cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(9),
	datad => VCC,
	cin => \inst|Add0~17\,
	combout => \inst|Add0~18_combout\,
	cout => \inst|Add0~19\);

-- Location: FF_X29_Y16_N19
\inst|cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \inst|Add0~18_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(9));

-- Location: LCCOMB_X29_Y16_N20
\inst|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~20_combout\ = (\inst|cnt\(10) & (\inst|Add0~19\ $ (GND))) # (!\inst|cnt\(10) & (!\inst|Add0~19\ & VCC))
-- \inst|Add0~21\ = CARRY((\inst|cnt\(10) & !\inst|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(10),
	datad => VCC,
	cin => \inst|Add0~19\,
	combout => \inst|Add0~20_combout\,
	cout => \inst|Add0~21\);

-- Location: FF_X29_Y16_N21
\inst|cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \inst|Add0~20_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(10));

-- Location: LCCOMB_X29_Y16_N22
\inst|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~22_combout\ = (\inst|cnt\(11) & (!\inst|Add0~21\)) # (!\inst|cnt\(11) & ((\inst|Add0~21\) # (GND)))
-- \inst|Add0~23\ = CARRY((!\inst|Add0~21\) # (!\inst|cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(11),
	datad => VCC,
	cin => \inst|Add0~21\,
	combout => \inst|Add0~22_combout\,
	cout => \inst|Add0~23\);

-- Location: FF_X29_Y16_N23
\inst|cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \inst|Add0~22_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(11));

-- Location: LCCOMB_X28_Y16_N16
\inst|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~2_combout\ = (!\inst|cnt\(10) & (!\inst|cnt\(11) & (!\inst|cnt\(4) & !\inst|cnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(10),
	datab => \inst|cnt\(11),
	datac => \inst|cnt\(4),
	datad => \inst|cnt\(9),
	combout => \inst|Equal0~2_combout\);

-- Location: LCCOMB_X29_Y16_N24
\inst|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~24_combout\ = (\inst|cnt\(12) & (\inst|Add0~23\ $ (GND))) # (!\inst|cnt\(12) & (!\inst|Add0~23\ & VCC))
-- \inst|Add0~25\ = CARRY((\inst|cnt\(12) & !\inst|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(12),
	datad => VCC,
	cin => \inst|Add0~23\,
	combout => \inst|Add0~24_combout\,
	cout => \inst|Add0~25\);

-- Location: FF_X29_Y16_N25
\inst|cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \inst|Add0~24_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(12));

-- Location: LCCOMB_X29_Y16_N28
\inst|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~28_combout\ = (\inst|cnt\(14) & (\inst|Add0~27\ $ (GND))) # (!\inst|cnt\(14) & (!\inst|Add0~27\ & VCC))
-- \inst|Add0~29\ = CARRY((\inst|cnt\(14) & !\inst|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(14),
	datad => VCC,
	cin => \inst|Add0~27\,
	combout => \inst|Add0~28_combout\,
	cout => \inst|Add0~29\);

-- Location: FF_X29_Y16_N29
\inst|cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \inst|Add0~28_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(14));

-- Location: LCCOMB_X29_Y16_N30
\inst|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~30_combout\ = \inst|cnt\(15) $ (\inst|Add0~29\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(15),
	cin => \inst|Add0~29\,
	combout => \inst|Add0~30_combout\);

-- Location: FF_X29_Y16_N31
\inst|cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \inst|Add0~30_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(15));

-- Location: LCCOMB_X28_Y16_N26
\inst|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~1_combout\ = (!\inst|cnt\(13) & (!\inst|cnt\(14) & (!\inst|cnt\(15) & !\inst|cnt\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(13),
	datab => \inst|cnt\(14),
	datac => \inst|cnt\(15),
	datad => \inst|cnt\(12),
	combout => \inst|Equal0~1_combout\);

-- Location: LCCOMB_X28_Y16_N14
\inst|cnt~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cnt~2_combout\ = (!\inst|Equal1~2_combout\ & \inst|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal1~2_combout\,
	datad => \inst|Add0~16_combout\,
	combout => \inst|cnt~2_combout\);

-- Location: FF_X28_Y16_N15
\inst|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \inst|cnt~2_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(8));

-- Location: LCCOMB_X28_Y16_N0
\inst|cnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cnt~3_combout\ = (\inst|Add0~12_combout\ & !\inst|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add0~12_combout\,
	datad => \inst|Equal1~2_combout\,
	combout => \inst|cnt~3_combout\);

-- Location: FF_X28_Y16_N1
\inst|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \inst|cnt~3_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(6));

-- Location: LCCOMB_X28_Y16_N18
\inst|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal1~0_combout\ = (!\inst|cnt\(3) & (\inst|cnt\(8) & (\inst|cnt\(0) & \inst|cnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(3),
	datab => \inst|cnt\(8),
	datac => \inst|cnt\(0),
	datad => \inst|cnt\(6),
	combout => \inst|Equal1~0_combout\);

-- Location: LCCOMB_X28_Y16_N28
\inst|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal1~2_combout\ = (\inst|Equal1~1_combout\ & (\inst|Equal0~2_combout\ & (\inst|Equal0~1_combout\ & \inst|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal1~1_combout\,
	datab => \inst|Equal0~2_combout\,
	datac => \inst|Equal0~1_combout\,
	datad => \inst|Equal1~0_combout\,
	combout => \inst|Equal1~2_combout\);

-- Location: FF_X29_Y16_N7
\inst|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~inputclkctrl_outclk\,
	d => \inst|Add0~6_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(3));

-- Location: LCCOMB_X28_Y16_N30
\inst|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~4_combout\ = (\inst|Equal0~3_combout\ & (\inst|Equal0~2_combout\ & (\inst|Equal0~1_combout\ & !\inst|cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~3_combout\,
	datab => \inst|Equal0~2_combout\,
	datac => \inst|Equal0~1_combout\,
	datad => \inst|cnt\(3),
	combout => \inst|Equal0~4_combout\);

-- Location: LCCOMB_X28_Y16_N20
\inst|clkout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkout~0_combout\ = (\inst|Equal0~0_combout\ & ((\inst|Equal0~4_combout\) # ((!\inst|Equal1~2_combout\ & \inst|clkout~q\)))) # (!\inst|Equal0~0_combout\ & (!\inst|Equal1~2_combout\ & (\inst|clkout~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~0_combout\,
	datab => \inst|Equal1~2_combout\,
	datac => \inst|clkout~q\,
	datad => \inst|Equal0~4_combout\,
	combout => \inst|clkout~0_combout\);

-- Location: FF_X28_Y16_N21
\inst|clkout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50~input_o\,
	d => \inst|clkout~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clkout~q\);

-- Location: CLKCTRL_G1
\inst|clkout~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|clkout~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|clkout~clkctrl_outclk\);

-- Location: LCCOMB_X11_Y10_N16
\inst2|cnt~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|cnt~10_combout\ = (!\inst2|cnt\(3) & (\inst2|cnt~5_combout\ & (\inst2|cnt\(6) & !\inst2|cnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cnt\(3),
	datab => \inst2|cnt~5_combout\,
	datac => \inst2|cnt\(6),
	datad => \inst2|cnt\(7),
	combout => \inst2|cnt~10_combout\);

-- Location: LCCOMB_X16_Y11_N28
\inst2|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~0_combout\ = (!\inst2|cnt\(2) & (!\inst2|cnt\(0) & !\inst2|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cnt\(2),
	datab => \inst2|cnt\(0),
	datac => \inst2|cnt\(1),
	combout => \inst2|Equal0~0_combout\);

-- Location: LCCOMB_X11_Y10_N30
\inst2|cnt[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|cnt[0]~13_combout\ = ((\inst2|cnt\(3) & ((!\inst2|Equal0~1_combout\))) # (!\inst2|cnt\(3) & (\inst2|WideOr10~0_combout\))) # (!\inst2|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|WideOr10~0_combout\,
	datab => \inst2|Equal0~1_combout\,
	datac => \inst2|cnt\(3),
	datad => \inst2|Equal0~0_combout\,
	combout => \inst2|cnt[0]~13_combout\);

-- Location: LCCOMB_X16_Y11_N12
\inst2|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~0_combout\ = \inst2|cnt\(0) $ (VCC)
-- \inst2|Add0~1\ = CARRY(\inst2|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|cnt\(0),
	datad => VCC,
	combout => \inst2|Add0~0_combout\,
	cout => \inst2|Add0~1\);

-- Location: LCCOMB_X16_Y11_N2
\inst2|cnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|cnt~16_combout\ = (\inst2|send~q\ & ((\inst2|Add0~0_combout\) # (!\inst2|cnt[0]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|send~q\,
	datac => \inst2|cnt[0]~13_combout\,
	datad => \inst2|Add0~0_combout\,
	combout => \inst2|cnt~16_combout\);

-- Location: FF_X16_Y11_N3
\inst2|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clkout~clkctrl_outclk\,
	d => \inst2|cnt~16_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cnt\(0));

-- Location: LCCOMB_X16_Y11_N14
\inst2|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~2_combout\ = (\inst2|cnt\(1) & (!\inst2|Add0~1\)) # (!\inst2|cnt\(1) & ((\inst2|Add0~1\) # (GND)))
-- \inst2|Add0~3\ = CARRY((!\inst2|Add0~1\) # (!\inst2|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|cnt\(1),
	datad => VCC,
	cin => \inst2|Add0~1\,
	combout => \inst2|Add0~2_combout\,
	cout => \inst2|Add0~3\);

-- Location: LCCOMB_X16_Y11_N8
\inst2|cnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|cnt~15_combout\ = (\inst2|cnt[0]~13_combout\ & (\inst2|send~q\ & \inst2|Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cnt[0]~13_combout\,
	datab => \inst2|send~q\,
	datac => \inst2|Add0~2_combout\,
	combout => \inst2|cnt~15_combout\);

-- Location: FF_X16_Y11_N9
\inst2|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clkout~clkctrl_outclk\,
	d => \inst2|cnt~15_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cnt\(1));

-- Location: LCCOMB_X16_Y11_N18
\inst2|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~6_combout\ = (\inst2|cnt\(3) & (!\inst2|Add0~5\)) # (!\inst2|cnt\(3) & ((\inst2|Add0~5\) # (GND)))
-- \inst2|Add0~7\ = CARRY((!\inst2|Add0~5\) # (!\inst2|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|cnt\(3),
	datad => VCC,
	cin => \inst2|Add0~5\,
	combout => \inst2|Add0~6_combout\,
	cout => \inst2|Add0~7\);

-- Location: LCCOMB_X16_Y11_N4
\inst2|cnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|cnt~12_combout\ = (\inst2|cnt[3]~2_combout\ & (((\inst2|Add0~6_combout\)))) # (!\inst2|cnt[3]~2_combout\ & (\inst2|send~q\ & (\inst2|cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cnt[3]~2_combout\,
	datab => \inst2|send~q\,
	datac => \inst2|cnt\(3),
	datad => \inst2|Add0~6_combout\,
	combout => \inst2|cnt~12_combout\);

-- Location: FF_X16_Y11_N5
\inst2|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clkout~clkctrl_outclk\,
	d => \inst2|cnt~12_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cnt\(3));

-- Location: LCCOMB_X16_Y11_N20
\inst2|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~8_combout\ = (\inst2|cnt\(4) & (\inst2|Add0~7\ $ (GND))) # (!\inst2|cnt\(4) & (!\inst2|Add0~7\ & VCC))
-- \inst2|Add0~9\ = CARRY((\inst2|cnt\(4) & !\inst2|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cnt\(4),
	datad => VCC,
	cin => \inst2|Add0~7\,
	combout => \inst2|Add0~8_combout\,
	cout => \inst2|Add0~9\);

-- Location: LCCOMB_X16_Y11_N24
\inst2|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~12_combout\ = (\inst2|cnt\(6) & (\inst2|Add0~11\ $ (GND))) # (!\inst2|cnt\(6) & (!\inst2|Add0~11\ & VCC))
-- \inst2|Add0~13\ = CARRY((\inst2|cnt\(6) & !\inst2|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|cnt\(6),
	datad => VCC,
	cin => \inst2|Add0~11\,
	combout => \inst2|Add0~12_combout\,
	cout => \inst2|Add0~13\);

-- Location: LCCOMB_X11_Y10_N2
\inst2|cnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|cnt~11_combout\ = (\inst2|cnt~10_combout\) # ((\inst2|cnt[3]~2_combout\ & \inst2|Add0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cnt[3]~2_combout\,
	datab => \inst2|cnt~10_combout\,
	datac => \inst2|Add0~12_combout\,
	combout => \inst2|cnt~11_combout\);

-- Location: FF_X11_Y10_N3
\inst2|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clkout~clkctrl_outclk\,
	d => \inst2|cnt~11_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cnt\(6));

-- Location: LCCOMB_X16_Y11_N26
\inst2|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~14_combout\ = \inst2|cnt\(7) $ (\inst2|Add0~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cnt\(7),
	cin => \inst2|Add0~13\,
	combout => \inst2|Add0~14_combout\);

-- Location: LCCOMB_X11_Y10_N14
\inst2|cnt[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|cnt[3]~0_combout\ = (\inst2|cnt\(7) & ((\inst2|cnt\(6)) # ((\inst2|cnt\(5) & \inst2|cnt\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cnt\(5),
	datab => \inst2|cnt\(4),
	datac => \inst2|cnt\(6),
	datad => \inst2|cnt\(7),
	combout => \inst2|cnt[3]~0_combout\);

-- Location: LCCOMB_X11_Y10_N26
\inst2|cnt[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|cnt[3]~2_combout\ = (\inst2|send~q\ & ((\inst2|cnt[3]~1_combout\) # ((\inst2|cnt[3]~0_combout\) # (!\inst2|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|send~q\,
	datab => \inst2|cnt[3]~1_combout\,
	datac => \inst2|cnt[3]~0_combout\,
	datad => \inst2|Equal0~0_combout\,
	combout => \inst2|cnt[3]~2_combout\);

-- Location: LCCOMB_X16_Y11_N0
\inst2|cnt~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|cnt~4_combout\ = (\inst2|cnt[3]~2_combout\ & (((\inst2|Add0~14_combout\)))) # (!\inst2|cnt[3]~2_combout\ & (!\inst2|cnt~3_combout\ & (\inst2|send~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cnt~3_combout\,
	datab => \inst2|send~q\,
	datac => \inst2|Add0~14_combout\,
	datad => \inst2|cnt[3]~2_combout\,
	combout => \inst2|cnt~4_combout\);

-- Location: FF_X16_Y11_N1
\inst2|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clkout~clkctrl_outclk\,
	d => \inst2|cnt~4_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cnt\(7));

-- Location: LCCOMB_X11_Y10_N24
\inst2|cnt[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|cnt[3]~1_combout\ = (\inst2|cnt\(3) & ((!\inst2|cnt\(7)) # (!\inst2|cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cnt\(5),
	datab => \inst2|cnt\(7),
	datac => \inst2|cnt\(3),
	combout => \inst2|cnt[3]~1_combout\);

-- Location: LCCOMB_X11_Y10_N28
\inst2|cnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|cnt~5_combout\ = (\inst2|send~q\ & (!\inst2|cnt[3]~1_combout\ & (!\inst2|cnt[3]~0_combout\ & \inst2|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|send~q\,
	datab => \inst2|cnt[3]~1_combout\,
	datac => \inst2|cnt[3]~0_combout\,
	datad => \inst2|Equal0~0_combout\,
	combout => \inst2|cnt~5_combout\);

-- Location: LCCOMB_X11_Y10_N6
\inst2|cnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|cnt~6_combout\ = (\inst2|cnt\(4) & (!\inst2|cnt\(3) & ((!\inst2|cnt\(7)) # (!\inst2|cnt\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cnt\(5),
	datab => \inst2|cnt\(4),
	datac => \inst2|cnt\(3),
	datad => \inst2|cnt\(7),
	combout => \inst2|cnt~6_combout\);

-- Location: LCCOMB_X11_Y10_N0
\inst2|cnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|cnt~7_combout\ = (\inst2|cnt[3]~2_combout\ & ((\inst2|Add0~8_combout\) # ((\inst2|cnt~5_combout\ & \inst2|cnt~6_combout\)))) # (!\inst2|cnt[3]~2_combout\ & (\inst2|cnt~5_combout\ & ((\inst2|cnt~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cnt[3]~2_combout\,
	datab => \inst2|cnt~5_combout\,
	datac => \inst2|Add0~8_combout\,
	datad => \inst2|cnt~6_combout\,
	combout => \inst2|cnt~7_combout\);

-- Location: FF_X11_Y10_N1
\inst2|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clkout~clkctrl_outclk\,
	d => \inst2|cnt~7_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cnt\(4));

-- Location: LCCOMB_X11_Y10_N4
\inst2|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~1_combout\ = (\inst2|cnt\(5) & (!\inst2|cnt\(4) & (!\inst2|cnt\(6) & \inst2|cnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|cnt\(5),
	datab => \inst2|cnt\(4),
	datac => \inst2|cnt\(6),
	datad => \inst2|cnt\(7),
	combout => \inst2|Equal0~1_combout\);

-- Location: LCCOMB_X11_Y10_N8
\inst2|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~2_combout\ = (\inst2|Equal0~0_combout\ & (\inst2|Equal0~1_combout\ & \inst2|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~0_combout\,
	datab => \inst2|Equal0~1_combout\,
	datac => \inst2|cnt\(3),
	combout => \inst2|Equal0~2_combout\);

-- Location: LCCOMB_X11_Y10_N20
\inst2|idle~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|idle~0_combout\ = (!\inst2|WideOr10~0_combout\ & (!\inst2|cnt\(3) & \inst2|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|WideOr10~0_combout\,
	datac => \inst2|cnt\(3),
	datad => \inst2|Equal0~0_combout\,
	combout => \inst2|idle~0_combout\);

-- Location: LCCOMB_X11_Y10_N18
\inst2|idle~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|idle~1_combout\ = (\inst2|send~q\ & ((\inst2|idle~0_combout\) # ((!\inst2|Equal0~2_combout\ & \inst2|idle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|send~q\,
	datab => \inst2|Equal0~2_combout\,
	datac => \inst2|idle~q\,
	datad => \inst2|idle~0_combout\,
	combout => \inst2|idle~1_combout\);

-- Location: FF_X11_Y10_N19
\inst2|idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clkout~clkctrl_outclk\,
	d => \inst2|idle~1_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|idle~q\);

-- Location: LCCOMB_X11_Y10_N12
\inst2|send~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|send~0_combout\ = (\inst2|wrsigrise~q\ & (((!\inst2|Equal0~2_combout\ & \inst2|send~q\)) # (!\inst2|idle~q\))) # (!\inst2|wrsigrise~q\ & (!\inst2|Equal0~2_combout\ & (\inst2|send~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|wrsigrise~q\,
	datab => \inst2|Equal0~2_combout\,
	datac => \inst2|send~q\,
	datad => \inst2|idle~q\,
	combout => \inst2|send~0_combout\);

-- Location: FF_X11_Y10_N13
\inst2|send\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clkout~clkctrl_outclk\,
	d => \inst2|send~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|send~q\);

-- Location: LCCOMB_X9_Y11_N0
\inst2|tx~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|tx~0_combout\ = ((\inst2|Equal0~0_combout\ & (\inst2|Selector5~9_combout\)) # (!\inst2|Equal0~0_combout\ & ((\inst2|tx~q\)))) # (!\inst2|send~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Selector5~9_combout\,
	datab => \inst2|send~q\,
	datac => \inst2|tx~q\,
	datad => \inst2|Equal0~0_combout\,
	combout => \inst2|tx~0_combout\);

-- Location: FF_X9_Y11_N1
\inst2|tx\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clkout~clkctrl_outclk\,
	d => \inst2|tx~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|tx~q\);

ww_tx <= \tx~output_o\;
END structure;


