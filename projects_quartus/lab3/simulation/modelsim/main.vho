-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 15.0.0 Build 145 04/22/2015 SJ Web Edition"

-- DATE "10/24/2026 15:52:32"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	main IS
    PORT (
	clk_h : IN std_logic;
	sld : IN std_logic;
	en : IN std_logic;
	sclr : IN std_logic;
	rvs : IN std_logic;
	aclr : IN std_logic;
	d : IN std_logic_vector(23 DOWNTO 0);
	seg : OUT std_logic_vector(6 DOWNTO 0)
	);
END main;

-- Design Ports Information
-- seg[0]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[1]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[2]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[3]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[4]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[5]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[6]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[4]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[5]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[6]	=>  Location: PIN_AC23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[7]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[8]	=>  Location: PIN_AH2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[9]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[10]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[11]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[12]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[13]	=>  Location: PIN_AJ6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[14]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[15]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[16]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[17]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[18]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[19]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[20]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[21]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[22]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[23]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[0]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aclr	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sclr	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sld	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[1]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[2]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d[3]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_h	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rvs	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF main IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk_h : std_logic;
SIGNAL ww_sld : std_logic;
SIGNAL ww_en : std_logic;
SIGNAL ww_sclr : std_logic;
SIGNAL ww_rvs : std_logic;
SIGNAL ww_aclr : std_logic;
SIGNAL ww_d : std_logic_vector(23 DOWNTO 0);
SIGNAL ww_seg : std_logic_vector(6 DOWNTO 0);
SIGNAL \d[4]~input_o\ : std_logic;
SIGNAL \d[5]~input_o\ : std_logic;
SIGNAL \d[6]~input_o\ : std_logic;
SIGNAL \d[7]~input_o\ : std_logic;
SIGNAL \d[8]~input_o\ : std_logic;
SIGNAL \d[9]~input_o\ : std_logic;
SIGNAL \d[10]~input_o\ : std_logic;
SIGNAL \d[11]~input_o\ : std_logic;
SIGNAL \d[12]~input_o\ : std_logic;
SIGNAL \d[13]~input_o\ : std_logic;
SIGNAL \d[14]~input_o\ : std_logic;
SIGNAL \d[15]~input_o\ : std_logic;
SIGNAL \d[16]~input_o\ : std_logic;
SIGNAL \d[17]~input_o\ : std_logic;
SIGNAL \d[18]~input_o\ : std_logic;
SIGNAL \d[19]~input_o\ : std_logic;
SIGNAL \d[20]~input_o\ : std_logic;
SIGNAL \d[21]~input_o\ : std_logic;
SIGNAL \d[22]~input_o\ : std_logic;
SIGNAL \d[23]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk_h~input_o\ : std_logic;
SIGNAL \clk_h~inputCLKENA0_outclk\ : std_logic;
SIGNAL \count_div2|Add0~1_sumout\ : std_logic;
SIGNAL \count_div2|Add0~90\ : std_logic;
SIGNAL \count_div2|Add0~85_sumout\ : std_logic;
SIGNAL \count_div2|Add0~86\ : std_logic;
SIGNAL \count_div2|Add0~81_sumout\ : std_logic;
SIGNAL \count_div2|Add0~82\ : std_logic;
SIGNAL \count_div2|Add0~77_sumout\ : std_logic;
SIGNAL \count_div2|Add0~78\ : std_logic;
SIGNAL \count_div2|Add0~73_sumout\ : std_logic;
SIGNAL \count_div2|Add0~74\ : std_logic;
SIGNAL \count_div2|Add0~69_sumout\ : std_logic;
SIGNAL \count_div2|Add0~70\ : std_logic;
SIGNAL \count_div2|Add0~65_sumout\ : std_logic;
SIGNAL \count_div2|Add0~66\ : std_logic;
SIGNAL \count_div2|Add0~61_sumout\ : std_logic;
SIGNAL \count_div2|Add0~62\ : std_logic;
SIGNAL \count_div2|Add0~57_sumout\ : std_logic;
SIGNAL \count_div2|Add0~58\ : std_logic;
SIGNAL \count_div2|Add0~29_sumout\ : std_logic;
SIGNAL \count_div2|Add0~30\ : std_logic;
SIGNAL \count_div2|Add0~53_sumout\ : std_logic;
SIGNAL \count_div2|Equal0~2_combout\ : std_logic;
SIGNAL \count_div2|Add0~54\ : std_logic;
SIGNAL \count_div2|Add0~33_sumout\ : std_logic;
SIGNAL \count_div2|Add0~34\ : std_logic;
SIGNAL \count_div2|Add0~37_sumout\ : std_logic;
SIGNAL \count_div2|Add0~38\ : std_logic;
SIGNAL \count_div2|Add0~41_sumout\ : std_logic;
SIGNAL \count_div2|Add0~42\ : std_logic;
SIGNAL \count_div2|Add0~45_sumout\ : std_logic;
SIGNAL \count_div2|Add0~46\ : std_logic;
SIGNAL \count_div2|Add0~49_sumout\ : std_logic;
SIGNAL \count_div2|Equal0~1_combout\ : std_logic;
SIGNAL \count_div2|Add0~50\ : std_logic;
SIGNAL \count_div2|Add0~5_sumout\ : std_logic;
SIGNAL \count_div2|Add0~6\ : std_logic;
SIGNAL \count_div2|Add0~9_sumout\ : std_logic;
SIGNAL \count_div2|Add0~10\ : std_logic;
SIGNAL \count_div2|Add0~13_sumout\ : std_logic;
SIGNAL \count_div2|Add0~14\ : std_logic;
SIGNAL \count_div2|Add0~17_sumout\ : std_logic;
SIGNAL \count_div2|Add0~18\ : std_logic;
SIGNAL \count_div2|Add0~21_sumout\ : std_logic;
SIGNAL \count_div2|Add0~22\ : std_logic;
SIGNAL \count_div2|Add0~25_sumout\ : std_logic;
SIGNAL \count_div2|Equal0~0_combout\ : std_logic;
SIGNAL \count_div2|Equal0~4_combout\ : std_logic;
SIGNAL \count_div2|Add0~2\ : std_logic;
SIGNAL \count_div2|Add0~93_sumout\ : std_logic;
SIGNAL \count_div2|Add0~94\ : std_logic;
SIGNAL \count_div2|Add0~89_sumout\ : std_logic;
SIGNAL \count_div2|Equal0~3_combout\ : std_logic;
SIGNAL \count_div2|cnt[0]~DUPLICATE_q\ : std_logic;
SIGNAL \count_div2|sync~0_combout\ : std_logic;
SIGNAL \count_div2|sync~q\ : std_logic;
SIGNAL \count_div2|sync~CLKENA0_outclk\ : std_logic;
SIGNAL \en~input_o\ : std_logic;
SIGNAL \rvs~input_o\ : std_logic;
SIGNAL \count_par|Add0~1_sumout\ : std_logic;
SIGNAL \d[0]~input_o\ : std_logic;
SIGNAL \aclr~input_o\ : std_logic;
SIGNAL \sclr~input_o\ : std_logic;
SIGNAL \sld~input_o\ : std_logic;
SIGNAL \count_par|cnt[12]~0_combout\ : std_logic;
SIGNAL \count_par|Add0~2\ : std_logic;
SIGNAL \count_par|Add0~5_sumout\ : std_logic;
SIGNAL \d[1]~input_o\ : std_logic;
SIGNAL \count_par|Add0~6\ : std_logic;
SIGNAL \count_par|Add0~9_sumout\ : std_logic;
SIGNAL \d[2]~input_o\ : std_logic;
SIGNAL \count_par|Add0~10\ : std_logic;
SIGNAL \count_par|Add0~13_sumout\ : std_logic;
SIGNAL \d[3]~input_o\ : std_logic;
SIGNAL \coder|WideOr6~0_combout\ : std_logic;
SIGNAL \coder|WideOr5~0_combout\ : std_logic;
SIGNAL \coder|WideOr4~0_combout\ : std_logic;
SIGNAL \coder|WideOr3~0_combout\ : std_logic;
SIGNAL \coder|WideOr2~0_combout\ : std_logic;
SIGNAL \coder|WideOr1~0_combout\ : std_logic;
SIGNAL \coder|WideOr0~0_combout\ : std_logic;
SIGNAL \count_div2|cnt\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \count_par|cnt\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \count_div2|ALT_INV_cnt[0]~DUPLICATE_q\ : std_logic;
SIGNAL \count_div2|ALT_INV_sync~CLKENA0_outclk\ : std_logic;
SIGNAL \ALT_INV_rvs~input_o\ : std_logic;
SIGNAL \ALT_INV_en~input_o\ : std_logic;
SIGNAL \ALT_INV_sld~input_o\ : std_logic;
SIGNAL \ALT_INV_sclr~input_o\ : std_logic;
SIGNAL \count_div2|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \count_div2|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \count_div2|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \count_div2|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \coder|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \count_div2|ALT_INV_cnt\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \count_par|ALT_INV_cnt\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_clk_h <= clk_h;
ww_sld <= sld;
ww_en <= en;
ww_sclr <= sclr;
ww_rvs <= rvs;
ww_aclr <= aclr;
ww_d <= d;
seg <= ww_seg;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\count_div2|ALT_INV_cnt[0]~DUPLICATE_q\ <= NOT \count_div2|cnt[0]~DUPLICATE_q\;
\count_div2|ALT_INV_sync~CLKENA0_outclk\ <= NOT \count_div2|sync~CLKENA0_outclk\;
\ALT_INV_rvs~input_o\ <= NOT \rvs~input_o\;
\ALT_INV_en~input_o\ <= NOT \en~input_o\;
\ALT_INV_sld~input_o\ <= NOT \sld~input_o\;
\ALT_INV_sclr~input_o\ <= NOT \sclr~input_o\;
\count_div2|ALT_INV_Equal0~3_combout\ <= NOT \count_div2|Equal0~3_combout\;
\count_div2|ALT_INV_Equal0~2_combout\ <= NOT \count_div2|Equal0~2_combout\;
\count_div2|ALT_INV_Equal0~1_combout\ <= NOT \count_div2|Equal0~1_combout\;
\count_div2|ALT_INV_Equal0~0_combout\ <= NOT \count_div2|Equal0~0_combout\;
\coder|ALT_INV_WideOr0~0_combout\ <= NOT \coder|WideOr0~0_combout\;
\count_div2|ALT_INV_cnt\(1) <= NOT \count_div2|cnt\(1);
\count_div2|ALT_INV_cnt\(2) <= NOT \count_div2|cnt\(2);
\count_div2|ALT_INV_cnt\(3) <= NOT \count_div2|cnt\(3);
\count_div2|ALT_INV_cnt\(4) <= NOT \count_div2|cnt\(4);
\count_div2|ALT_INV_cnt\(5) <= NOT \count_div2|cnt\(5);
\count_div2|ALT_INV_cnt\(6) <= NOT \count_div2|cnt\(6);
\count_div2|ALT_INV_cnt\(7) <= NOT \count_div2|cnt\(7);
\count_div2|ALT_INV_cnt\(8) <= NOT \count_div2|cnt\(8);
\count_div2|ALT_INV_cnt\(9) <= NOT \count_div2|cnt\(9);
\count_div2|ALT_INV_cnt\(10) <= NOT \count_div2|cnt\(10);
\count_div2|ALT_INV_cnt\(12) <= NOT \count_div2|cnt\(12);
\count_div2|ALT_INV_cnt\(17) <= NOT \count_div2|cnt\(17);
\count_div2|ALT_INV_cnt\(16) <= NOT \count_div2|cnt\(16);
\count_div2|ALT_INV_cnt\(15) <= NOT \count_div2|cnt\(15);
\count_div2|ALT_INV_cnt\(14) <= NOT \count_div2|cnt\(14);
\count_div2|ALT_INV_cnt\(13) <= NOT \count_div2|cnt\(13);
\count_div2|ALT_INV_cnt\(11) <= NOT \count_div2|cnt\(11);
\count_div2|ALT_INV_cnt\(23) <= NOT \count_div2|cnt\(23);
\count_div2|ALT_INV_cnt\(22) <= NOT \count_div2|cnt\(22);
\count_div2|ALT_INV_cnt\(21) <= NOT \count_div2|cnt\(21);
\count_div2|ALT_INV_cnt\(20) <= NOT \count_div2|cnt\(20);
\count_div2|ALT_INV_cnt\(19) <= NOT \count_div2|cnt\(19);
\count_div2|ALT_INV_cnt\(18) <= NOT \count_div2|cnt\(18);
\count_div2|ALT_INV_cnt\(0) <= NOT \count_div2|cnt\(0);
\count_par|ALT_INV_cnt\(3) <= NOT \count_par|cnt\(3);
\count_par|ALT_INV_cnt\(2) <= NOT \count_par|cnt\(2);
\count_par|ALT_INV_cnt\(1) <= NOT \count_par|cnt\(1);
\count_par|ALT_INV_cnt\(0) <= NOT \count_par|cnt\(0);

-- Location: IOOBUF_X89_Y8_N39
\seg[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \coder|WideOr6~0_combout\,
	devoe => ww_devoe,
	o => ww_seg(0));

-- Location: IOOBUF_X89_Y11_N79
\seg[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \coder|WideOr5~0_combout\,
	devoe => ww_devoe,
	o => ww_seg(1));

-- Location: IOOBUF_X89_Y11_N96
\seg[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \coder|WideOr4~0_combout\,
	devoe => ww_devoe,
	o => ww_seg(2));

-- Location: IOOBUF_X89_Y4_N79
\seg[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \coder|WideOr3~0_combout\,
	devoe => ww_devoe,
	o => ww_seg(3));

-- Location: IOOBUF_X89_Y13_N56
\seg[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \coder|WideOr2~0_combout\,
	devoe => ww_devoe,
	o => ww_seg(4));

-- Location: IOOBUF_X89_Y13_N39
\seg[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \coder|WideOr1~0_combout\,
	devoe => ww_devoe,
	o => ww_seg(5));

-- Location: IOOBUF_X89_Y4_N96
\seg[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \coder|ALT_INV_WideOr0~0_combout\,
	devoe => ww_devoe,
	o => ww_seg(6));

-- Location: IOIBUF_X32_Y0_N1
\clk_h~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_h,
	o => \clk_h~input_o\);

-- Location: CLKCTRL_G5
\clk_h~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk_h~input_o\,
	outclk => \clk_h~inputCLKENA0_outclk\);

-- Location: LABCELL_X45_Y2_N30
\count_div2|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \count_div2|Add0~1_sumout\ = SUM(( \count_div2|cnt\(0) ) + ( VCC ) + ( !VCC ))
-- \count_div2|Add0~2\ = CARRY(( \count_div2|cnt\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \count_div2|ALT_INV_cnt\(0),
	cin => GND,
	sumout => \count_div2|Add0~1_sumout\,
	cout => \count_div2|Add0~2\);

-- Location: LABCELL_X45_Y2_N36
\count_div2|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \count_div2|Add0~89_sumout\ = SUM(( \count_div2|cnt\(2) ) + ( GND ) + ( \count_div2|Add0~94\ ))
-- \count_div2|Add0~90\ = CARRY(( \count_div2|cnt\(2) ) + ( GND ) + ( \count_div2|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \count_div2|ALT_INV_cnt\(2),
	cin => \count_div2|Add0~94\,
	sumout => \count_div2|Add0~89_sumout\,
	cout => \count_div2|Add0~90\);

-- Location: LABCELL_X45_Y2_N39
\count_div2|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \count_div2|Add0~85_sumout\ = SUM(( \count_div2|cnt\(3) ) + ( GND ) + ( \count_div2|Add0~90\ ))
-- \count_div2|Add0~86\ = CARRY(( \count_div2|cnt\(3) ) + ( GND ) + ( \count_div2|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \count_div2|ALT_INV_cnt\(3),
	cin => \count_div2|Add0~90\,
	sumout => \count_div2|Add0~85_sumout\,
	cout => \count_div2|Add0~86\);

-- Location: FF_X45_Y2_N41
\count_div2|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_h~inputCLKENA0_outclk\,
	d => \count_div2|Add0~85_sumout\,
	sclr => \count_div2|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_div2|cnt\(3));

-- Location: LABCELL_X45_Y2_N42
\count_div2|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \count_div2|Add0~81_sumout\ = SUM(( \count_div2|cnt\(4) ) + ( GND ) + ( \count_div2|Add0~86\ ))
-- \count_div2|Add0~82\ = CARRY(( \count_div2|cnt\(4) ) + ( GND ) + ( \count_div2|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \count_div2|ALT_INV_cnt\(4),
	cin => \count_div2|Add0~86\,
	sumout => \count_div2|Add0~81_sumout\,
	cout => \count_div2|Add0~82\);

-- Location: FF_X45_Y2_N44
\count_div2|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_h~inputCLKENA0_outclk\,
	d => \count_div2|Add0~81_sumout\,
	sclr => \count_div2|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_div2|cnt\(4));

-- Location: LABCELL_X45_Y2_N45
\count_div2|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \count_div2|Add0~77_sumout\ = SUM(( \count_div2|cnt\(5) ) + ( GND ) + ( \count_div2|Add0~82\ ))
-- \count_div2|Add0~78\ = CARRY(( \count_div2|cnt\(5) ) + ( GND ) + ( \count_div2|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \count_div2|ALT_INV_cnt\(5),
	cin => \count_div2|Add0~82\,
	sumout => \count_div2|Add0~77_sumout\,
	cout => \count_div2|Add0~78\);

-- Location: FF_X45_Y2_N46
\count_div2|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_h~inputCLKENA0_outclk\,
	d => \count_div2|Add0~77_sumout\,
	sclr => \count_div2|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_div2|cnt\(5));

-- Location: LABCELL_X45_Y2_N48
\count_div2|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \count_div2|Add0~73_sumout\ = SUM(( \count_div2|cnt\(6) ) + ( GND ) + ( \count_div2|Add0~78\ ))
-- \count_div2|Add0~74\ = CARRY(( \count_div2|cnt\(6) ) + ( GND ) + ( \count_div2|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \count_div2|ALT_INV_cnt\(6),
	cin => \count_div2|Add0~78\,
	sumout => \count_div2|Add0~73_sumout\,
	cout => \count_div2|Add0~74\);

-- Location: FF_X45_Y2_N50
\count_div2|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_h~inputCLKENA0_outclk\,
	d => \count_div2|Add0~73_sumout\,
	sclr => \count_div2|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_div2|cnt\(6));

-- Location: LABCELL_X45_Y2_N51
\count_div2|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \count_div2|Add0~69_sumout\ = SUM(( \count_div2|cnt\(7) ) + ( GND ) + ( \count_div2|Add0~74\ ))
-- \count_div2|Add0~70\ = CARRY(( \count_div2|cnt\(7) ) + ( GND ) + ( \count_div2|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \count_div2|ALT_INV_cnt\(7),
	cin => \count_div2|Add0~74\,
	sumout => \count_div2|Add0~69_sumout\,
	cout => \count_div2|Add0~70\);

-- Location: FF_X45_Y2_N52
\count_div2|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_h~inputCLKENA0_outclk\,
	d => \count_div2|Add0~69_sumout\,
	sclr => \count_div2|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_div2|cnt\(7));

-- Location: LABCELL_X45_Y2_N54
\count_div2|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \count_div2|Add0~65_sumout\ = SUM(( \count_div2|cnt\(8) ) + ( GND ) + ( \count_div2|Add0~70\ ))
-- \count_div2|Add0~66\ = CARRY(( \count_div2|cnt\(8) ) + ( GND ) + ( \count_div2|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \count_div2|ALT_INV_cnt\(8),
	cin => \count_div2|Add0~70\,
	sumout => \count_div2|Add0~65_sumout\,
	cout => \count_div2|Add0~66\);

-- Location: FF_X45_Y2_N56
\count_div2|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_h~inputCLKENA0_outclk\,
	d => \count_div2|Add0~65_sumout\,
	sclr => \count_div2|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_div2|cnt\(8));

-- Location: LABCELL_X45_Y2_N57
\count_div2|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \count_div2|Add0~61_sumout\ = SUM(( \count_div2|cnt\(9) ) + ( GND ) + ( \count_div2|Add0~66\ ))
-- \count_div2|Add0~62\ = CARRY(( \count_div2|cnt\(9) ) + ( GND ) + ( \count_div2|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \count_div2|ALT_INV_cnt\(9),
	cin => \count_div2|Add0~66\,
	sumout => \count_div2|Add0~61_sumout\,
	cout => \count_div2|Add0~62\);

-- Location: FF_X45_Y2_N59
\count_div2|cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_h~inputCLKENA0_outclk\,
	d => \count_div2|Add0~61_sumout\,
	sclr => \count_div2|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_div2|cnt\(9));

-- Location: LABCELL_X45_Y1_N0
\count_div2|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \count_div2|Add0~57_sumout\ = SUM(( \count_div2|cnt\(10) ) + ( GND ) + ( \count_div2|Add0~62\ ))
-- \count_div2|Add0~58\ = CARRY(( \count_div2|cnt\(10) ) + ( GND ) + ( \count_div2|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \count_div2|ALT_INV_cnt\(10),
	cin => \count_div2|Add0~62\,
	sumout => \count_div2|Add0~57_sumout\,
	cout => \count_div2|Add0~58\);

-- Location: FF_X45_Y1_N2
\count_div2|cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_h~inputCLKENA0_outclk\,
	d => \count_div2|Add0~57_sumout\,
	sclr => \count_div2|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_div2|cnt\(10));

-- Location: LABCELL_X45_Y1_N3
\count_div2|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \count_div2|Add0~29_sumout\ = SUM(( \count_div2|cnt\(11) ) + ( GND ) + ( \count_div2|Add0~58\ ))
-- \count_div2|Add0~30\ = CARRY(( \count_div2|cnt\(11) ) + ( GND ) + ( \count_div2|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \count_div2|ALT_INV_cnt\(11),
	cin => \count_div2|Add0~58\,
	sumout => \count_div2|Add0~29_sumout\,
	cout => \count_div2|Add0~30\);

-- Location: FF_X45_Y1_N5
\count_div2|cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_h~inputCLKENA0_outclk\,
	d => \count_div2|Add0~29_sumout\,
	sclr => \count_div2|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_div2|cnt\(11));

-- Location: LABCELL_X45_Y1_N6
\count_div2|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \count_div2|Add0~53_sumout\ = SUM(( \count_div2|cnt\(12) ) + ( GND ) + ( \count_div2|Add0~30\ ))
-- \count_div2|Add0~54\ = CARRY(( \count_div2|cnt\(12) ) + ( GND ) + ( \count_div2|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \count_div2|ALT_INV_cnt\(12),
	cin => \count_div2|Add0~30\,
	sumout => \count_div2|Add0~53_sumout\,
	cout => \count_div2|Add0~54\);

-- Location: FF_X45_Y1_N7
\count_div2|cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_h~inputCLKENA0_outclk\,
	d => \count_div2|Add0~53_sumout\,
	sclr => \count_div2|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_div2|cnt\(12));

-- Location: LABCELL_X45_Y2_N0
\count_div2|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \count_div2|Equal0~2_combout\ = ( \count_div2|cnt\(12) & ( \count_div2|cnt\(10) & ( (!\count_div2|cnt\(8) & (!\count_div2|cnt\(9) & (!\count_div2|cnt\(6) & !\count_div2|cnt\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \count_div2|ALT_INV_cnt\(8),
	datab => \count_div2|ALT_INV_cnt\(9),
	datac => \count_div2|ALT_INV_cnt\(6),
	datad => \count_div2|ALT_INV_cnt\(7),
	datae => \count_div2|ALT_INV_cnt\(12),
	dataf => \count_div2|ALT_INV_cnt\(10),
	combout => \count_div2|Equal0~2_combout\);

-- Location: LABCELL_X45_Y1_N9
\count_div2|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \count_div2|Add0~33_sumout\ = SUM(( \count_div2|cnt\(13) ) + ( GND ) + ( \count_div2|Add0~54\ ))
-- \count_div2|Add0~34\ = CARRY(( \count_div2|cnt\(13) ) + ( GND ) + ( \count_div2|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \count_div2|ALT_INV_cnt\(13),
	cin => \count_div2|Add0~54\,
	sumout => \count_div2|Add0~33_sumout\,
	cout => \count_div2|Add0~34\);

-- Location: FF_X45_Y1_N10
\count_div2|cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_h~inputCLKENA0_outclk\,
	d => \count_div2|Add0~33_sumout\,
	sclr => \count_div2|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_div2|cnt\(13));

-- Location: LABCELL_X45_Y1_N12
\count_div2|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \count_div2|Add0~37_sumout\ = SUM(( \count_div2|cnt\(14) ) + ( GND ) + ( \count_div2|Add0~34\ ))
-- \count_div2|Add0~38\ = CARRY(( \count_div2|cnt\(14) ) + ( GND ) + ( \count_div2|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \count_div2|ALT_INV_cnt\(14),
	cin => \count_div2|Add0~34\,
	sumout => \count_div2|Add0~37_sumout\,
	cout => \count_div2|Add0~38\);

-- Location: FF_X45_Y1_N14
\count_div2|cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_h~inputCLKENA0_outclk\,
	d => \count_div2|Add0~37_sumout\,
	sclr => \count_div2|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_div2|cnt\(14));

-- Location: LABCELL_X45_Y1_N15
\count_div2|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \count_div2|Add0~41_sumout\ = SUM(( \count_div2|cnt\(15) ) + ( GND ) + ( \count_div2|Add0~38\ ))
-- \count_div2|Add0~42\ = CARRY(( \count_div2|cnt\(15) ) + ( GND ) + ( \count_div2|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \count_div2|ALT_INV_cnt\(15),
	cin => \count_div2|Add0~38\,
	sumout => \count_div2|Add0~41_sumout\,
	cout => \count_div2|Add0~42\);

-- Location: FF_X45_Y1_N16
\count_div2|cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_h~inputCLKENA0_outclk\,
	d => \count_div2|Add0~41_sumout\,
	sclr => \count_div2|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_div2|cnt\(15));

-- Location: LABCELL_X45_Y1_N18
\count_div2|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \count_div2|Add0~45_sumout\ = SUM(( \count_div2|cnt\(16) ) + ( GND ) + ( \count_div2|Add0~42\ ))
-- \count_div2|Add0~46\ = CARRY(( \count_div2|cnt\(16) ) + ( GND ) + ( \count_div2|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \count_div2|ALT_INV_cnt\(16),
	cin => \count_div2|Add0~42\,
	sumout => \count_div2|Add0~45_sumout\,
	cout => \count_div2|Add0~46\);

-- Location: FF_X45_Y1_N19
\count_div2|cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_h~inputCLKENA0_outclk\,
	d => \count_div2|Add0~45_sumout\,
	sclr => \count_div2|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_div2|cnt\(16));

-- Location: LABCELL_X45_Y1_N21
\count_div2|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \count_div2|Add0~49_sumout\ = SUM(( \count_div2|cnt\(17) ) + ( GND ) + ( \count_div2|Add0~46\ ))
-- \count_div2|Add0~50\ = CARRY(( \count_div2|cnt\(17) ) + ( GND ) + ( \count_div2|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \count_div2|ALT_INV_cnt\(17),
	cin => \count_div2|Add0~46\,
	sumout => \count_div2|Add0~49_sumout\,
	cout => \count_div2|Add0~50\);

-- Location: FF_X45_Y1_N23
\count_div2|cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_h~inputCLKENA0_outclk\,
	d => \count_div2|Add0~49_sumout\,
	sclr => \count_div2|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_div2|cnt\(17));

-- Location: LABCELL_X45_Y1_N54
\count_div2|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \count_div2|Equal0~1_combout\ = ( \count_div2|cnt\(13) & ( \count_div2|cnt\(15) & ( (\count_div2|cnt\(17) & (!\count_div2|cnt\(16) & (\count_div2|cnt\(11) & !\count_div2|cnt\(14)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \count_div2|ALT_INV_cnt\(17),
	datab => \count_div2|ALT_INV_cnt\(16),
	datac => \count_div2|ALT_INV_cnt\(11),
	datad => \count_div2|ALT_INV_cnt\(14),
	datae => \count_div2|ALT_INV_cnt\(13),
	dataf => \count_div2|ALT_INV_cnt\(15),
	combout => \count_div2|Equal0~1_combout\);

-- Location: LABCELL_X45_Y1_N24
\count_div2|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \count_div2|Add0~5_sumout\ = SUM(( \count_div2|cnt\(18) ) + ( GND ) + ( \count_div2|Add0~50\ ))
-- \count_div2|Add0~6\ = CARRY(( \count_div2|cnt\(18) ) + ( GND ) + ( \count_div2|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \count_div2|ALT_INV_cnt\(18),
	cin => \count_div2|Add0~50\,
	sumout => \count_div2|Add0~5_sumout\,
	cout => \count_div2|Add0~6\);

-- Location: FF_X45_Y1_N25
\count_div2|cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_h~inputCLKENA0_outclk\,
	d => \count_div2|Add0~5_sumout\,
	sclr => \count_div2|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_div2|cnt\(18));

-- Location: LABCELL_X45_Y1_N27
\count_div2|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \count_div2|Add0~9_sumout\ = SUM(( \count_div2|cnt\(19) ) + ( GND ) + ( \count_div2|Add0~6\ ))
-- \count_div2|Add0~10\ = CARRY(( \count_div2|cnt\(19) ) + ( GND ) + ( \count_div2|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \count_div2|ALT_INV_cnt\(19),
	cin => \count_div2|Add0~6\,
	sumout => \count_div2|Add0~9_sumout\,
	cout => \count_div2|Add0~10\);

-- Location: FF_X45_Y1_N29
\count_div2|cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_h~inputCLKENA0_outclk\,
	d => \count_div2|Add0~9_sumout\,
	sclr => \count_div2|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_div2|cnt\(19));

-- Location: LABCELL_X45_Y1_N30
\count_div2|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \count_div2|Add0~13_sumout\ = SUM(( \count_div2|cnt\(20) ) + ( GND ) + ( \count_div2|Add0~10\ ))
-- \count_div2|Add0~14\ = CARRY(( \count_div2|cnt\(20) ) + ( GND ) + ( \count_div2|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \count_div2|ALT_INV_cnt\(20),
	cin => \count_div2|Add0~10\,
	sumout => \count_div2|Add0~13_sumout\,
	cout => \count_div2|Add0~14\);

-- Location: FF_X45_Y1_N32
\count_div2|cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_h~inputCLKENA0_outclk\,
	d => \count_div2|Add0~13_sumout\,
	sclr => \count_div2|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_div2|cnt\(20));

-- Location: LABCELL_X45_Y1_N33
\count_div2|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \count_div2|Add0~17_sumout\ = SUM(( \count_div2|cnt\(21) ) + ( GND ) + ( \count_div2|Add0~14\ ))
-- \count_div2|Add0~18\ = CARRY(( \count_div2|cnt\(21) ) + ( GND ) + ( \count_div2|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \count_div2|ALT_INV_cnt\(21),
	cin => \count_div2|Add0~14\,
	sumout => \count_div2|Add0~17_sumout\,
	cout => \count_div2|Add0~18\);

-- Location: FF_X45_Y1_N35
\count_div2|cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_h~inputCLKENA0_outclk\,
	d => \count_div2|Add0~17_sumout\,
	sclr => \count_div2|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_div2|cnt\(21));

-- Location: LABCELL_X45_Y1_N36
\count_div2|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \count_div2|Add0~21_sumout\ = SUM(( \count_div2|cnt\(22) ) + ( GND ) + ( \count_div2|Add0~18\ ))
-- \count_div2|Add0~22\ = CARRY(( \count_div2|cnt\(22) ) + ( GND ) + ( \count_div2|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \count_div2|ALT_INV_cnt\(22),
	cin => \count_div2|Add0~18\,
	sumout => \count_div2|Add0~21_sumout\,
	cout => \count_div2|Add0~22\);

-- Location: FF_X45_Y1_N38
\count_div2|cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_h~inputCLKENA0_outclk\,
	d => \count_div2|Add0~21_sumout\,
	sclr => \count_div2|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_div2|cnt\(22));

-- Location: LABCELL_X45_Y1_N39
\count_div2|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \count_div2|Add0~25_sumout\ = SUM(( \count_div2|cnt\(23) ) + ( GND ) + ( \count_div2|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \count_div2|ALT_INV_cnt\(23),
	cin => \count_div2|Add0~22\,
	sumout => \count_div2|Add0~25_sumout\);

-- Location: FF_X45_Y1_N41
\count_div2|cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_h~inputCLKENA0_outclk\,
	d => \count_div2|Add0~25_sumout\,
	sclr => \count_div2|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_div2|cnt\(23));

-- Location: LABCELL_X45_Y1_N48
\count_div2|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \count_div2|Equal0~0_combout\ = ( !\count_div2|cnt\(22) & ( \count_div2|cnt\(18) & ( (\count_div2|cnt\(19) & (\count_div2|cnt\(23) & (\count_div2|cnt\(21) & \count_div2|cnt\(20)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \count_div2|ALT_INV_cnt\(19),
	datab => \count_div2|ALT_INV_cnt\(23),
	datac => \count_div2|ALT_INV_cnt\(21),
	datad => \count_div2|ALT_INV_cnt\(20),
	datae => \count_div2|ALT_INV_cnt\(22),
	dataf => \count_div2|ALT_INV_cnt\(18),
	combout => \count_div2|Equal0~0_combout\);

-- Location: LABCELL_X45_Y2_N6
\count_div2|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \count_div2|Equal0~4_combout\ = ( \count_div2|Equal0~1_combout\ & ( \count_div2|Equal0~0_combout\ & ( (\count_div2|Equal0~3_combout\ & (\count_div2|cnt\(0) & \count_div2|Equal0~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \count_div2|ALT_INV_Equal0~3_combout\,
	datab => \count_div2|ALT_INV_cnt\(0),
	datac => \count_div2|ALT_INV_Equal0~2_combout\,
	datae => \count_div2|ALT_INV_Equal0~1_combout\,
	dataf => \count_div2|ALT_INV_Equal0~0_combout\,
	combout => \count_div2|Equal0~4_combout\);

-- Location: FF_X45_Y2_N32
\count_div2|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_h~inputCLKENA0_outclk\,
	d => \count_div2|Add0~1_sumout\,
	sclr => \count_div2|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_div2|cnt\(0));

-- Location: LABCELL_X45_Y2_N33
\count_div2|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \count_div2|Add0~93_sumout\ = SUM(( \count_div2|cnt\(1) ) + ( GND ) + ( \count_div2|Add0~2\ ))
-- \count_div2|Add0~94\ = CARRY(( \count_div2|cnt\(1) ) + ( GND ) + ( \count_div2|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \count_div2|ALT_INV_cnt\(1),
	cin => \count_div2|Add0~2\,
	sumout => \count_div2|Add0~93_sumout\,
	cout => \count_div2|Add0~94\);

-- Location: FF_X45_Y2_N35
\count_div2|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_h~inputCLKENA0_outclk\,
	d => \count_div2|Add0~93_sumout\,
	sclr => \count_div2|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_div2|cnt\(1));

-- Location: FF_X45_Y2_N38
\count_div2|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_h~inputCLKENA0_outclk\,
	d => \count_div2|Add0~89_sumout\,
	sclr => \count_div2|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_div2|cnt\(2));

-- Location: LABCELL_X45_Y2_N24
\count_div2|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \count_div2|Equal0~3_combout\ = ( \count_div2|cnt\(3) & ( (\count_div2|cnt\(2) & (\count_div2|cnt\(4) & (\count_div2|cnt\(1) & !\count_div2|cnt\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \count_div2|ALT_INV_cnt\(2),
	datab => \count_div2|ALT_INV_cnt\(4),
	datac => \count_div2|ALT_INV_cnt\(1),
	datad => \count_div2|ALT_INV_cnt\(5),
	dataf => \count_div2|ALT_INV_cnt\(3),
	combout => \count_div2|Equal0~3_combout\);

-- Location: FF_X45_Y2_N31
\count_div2|cnt[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_h~inputCLKENA0_outclk\,
	d => \count_div2|Add0~1_sumout\,
	sclr => \count_div2|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_div2|cnt[0]~DUPLICATE_q\);

-- Location: LABCELL_X45_Y2_N18
\count_div2|sync~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \count_div2|sync~0_combout\ = ( \count_div2|Equal0~2_combout\ & ( GLOBAL(\count_div2|sync~CLKENA0_outclk\) & ( (!\count_div2|Equal0~3_combout\) # ((!\count_div2|cnt[0]~DUPLICATE_q\) # ((!\count_div2|Equal0~0_combout\) # (!\count_div2|Equal0~1_combout\))) 
-- ) ) ) # ( !\count_div2|Equal0~2_combout\ & ( GLOBAL(\count_div2|sync~CLKENA0_outclk\) ) ) # ( \count_div2|Equal0~2_combout\ & ( !GLOBAL(\count_div2|sync~CLKENA0_outclk\) & ( (\count_div2|Equal0~3_combout\ & (\count_div2|cnt[0]~DUPLICATE_q\ & 
-- (\count_div2|Equal0~0_combout\ & \count_div2|Equal0~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000111111111111111111111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \count_div2|ALT_INV_Equal0~3_combout\,
	datab => \count_div2|ALT_INV_cnt[0]~DUPLICATE_q\,
	datac => \count_div2|ALT_INV_Equal0~0_combout\,
	datad => \count_div2|ALT_INV_Equal0~1_combout\,
	datae => \count_div2|ALT_INV_Equal0~2_combout\,
	dataf => \count_div2|ALT_INV_sync~CLKENA0_outclk\,
	combout => \count_div2|sync~0_combout\);

-- Location: FF_X45_Y2_N19
\count_div2|sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_h~input_o\,
	d => \count_div2|sync~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_div2|sync~q\);

-- Location: CLKCTRL_G7
\count_div2|sync~CLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \count_div2|sync~q\,
	outclk => \count_div2|sync~CLKENA0_outclk\);

-- Location: IOIBUF_X8_Y0_N35
\en~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_en,
	o => \en~input_o\);

-- Location: IOIBUF_X4_Y0_N52
\rvs~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rvs,
	o => \rvs~input_o\);

-- Location: LABCELL_X10_Y4_N30
\count_par|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \count_par|Add0~1_sumout\ = SUM(( \count_par|cnt\(0) ) + ( VCC ) + ( !VCC ))
-- \count_par|Add0~2\ = CARRY(( \count_par|cnt\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \count_par|ALT_INV_cnt\(0),
	cin => GND,
	sumout => \count_par|Add0~1_sumout\,
	cout => \count_par|Add0~2\);

-- Location: IOIBUF_X4_Y0_N35
\d[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(0),
	o => \d[0]~input_o\);

-- Location: IOIBUF_X12_Y0_N18
\aclr~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_aclr,
	o => \aclr~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\sclr~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sclr,
	o => \sclr~input_o\);

-- Location: IOIBUF_X2_Y0_N41
\sld~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sld,
	o => \sld~input_o\);

-- Location: LABCELL_X10_Y4_N54
\count_par|cnt[12]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \count_par|cnt[12]~0_combout\ = ( \sclr~input_o\ ) # ( !\sclr~input_o\ & ( (\en~input_o\) # (\sld~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001111110011111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sld~input_o\,
	datac => \ALT_INV_en~input_o\,
	dataf => \ALT_INV_sclr~input_o\,
	combout => \count_par|cnt[12]~0_combout\);

-- Location: FF_X10_Y4_N32
\count_par|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_div2|sync~CLKENA0_outclk\,
	d => \count_par|Add0~1_sumout\,
	asdata => \d[0]~input_o\,
	clrn => \aclr~input_o\,
	sclr => \sclr~input_o\,
	sload => \sld~input_o\,
	ena => \count_par|cnt[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_par|cnt\(0));

-- Location: LABCELL_X10_Y4_N33
\count_par|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \count_par|Add0~5_sumout\ = SUM(( \count_par|cnt\(1) ) + ( (!\en~input_o\) # (\rvs~input_o\) ) + ( \count_par|Add0~2\ ))
-- \count_par|Add0~6\ = CARRY(( \count_par|cnt\(1) ) + ( (!\en~input_o\) # (\rvs~input_o\) ) + ( \count_par|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_en~input_o\,
	datad => \count_par|ALT_INV_cnt\(1),
	dataf => \ALT_INV_rvs~input_o\,
	cin => \count_par|Add0~2\,
	sumout => \count_par|Add0~5_sumout\,
	cout => \count_par|Add0~6\);

-- Location: IOIBUF_X4_Y0_N1
\d[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(1),
	o => \d[1]~input_o\);

-- Location: FF_X10_Y4_N35
\count_par|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_div2|sync~CLKENA0_outclk\,
	d => \count_par|Add0~5_sumout\,
	asdata => \d[1]~input_o\,
	clrn => \aclr~input_o\,
	sclr => \sclr~input_o\,
	sload => \sld~input_o\,
	ena => \count_par|cnt[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_par|cnt\(1));

-- Location: LABCELL_X10_Y4_N36
\count_par|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \count_par|Add0~9_sumout\ = SUM(( \count_par|cnt\(2) ) + ( (!\en~input_o\) # (\rvs~input_o\) ) + ( \count_par|Add0~6\ ))
-- \count_par|Add0~10\ = CARRY(( \count_par|cnt\(2) ) + ( (!\en~input_o\) # (\rvs~input_o\) ) + ( \count_par|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_en~input_o\,
	datac => \ALT_INV_rvs~input_o\,
	datad => \count_par|ALT_INV_cnt\(2),
	cin => \count_par|Add0~6\,
	sumout => \count_par|Add0~9_sumout\,
	cout => \count_par|Add0~10\);

-- Location: IOIBUF_X4_Y0_N18
\d[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(2),
	o => \d[2]~input_o\);

-- Location: FF_X10_Y4_N38
\count_par|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_div2|sync~CLKENA0_outclk\,
	d => \count_par|Add0~9_sumout\,
	asdata => \d[2]~input_o\,
	clrn => \aclr~input_o\,
	sclr => \sclr~input_o\,
	sload => \sld~input_o\,
	ena => \count_par|cnt[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_par|cnt\(2));

-- Location: LABCELL_X10_Y4_N39
\count_par|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \count_par|Add0~13_sumout\ = SUM(( \count_par|cnt\(3) ) + ( (!\en~input_o\) # (\rvs~input_o\) ) + ( \count_par|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_en~input_o\,
	datad => \count_par|ALT_INV_cnt\(3),
	dataf => \ALT_INV_rvs~input_o\,
	cin => \count_par|Add0~10\,
	sumout => \count_par|Add0~13_sumout\);

-- Location: IOIBUF_X2_Y0_N58
\d[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(3),
	o => \d[3]~input_o\);

-- Location: FF_X10_Y4_N41
\count_par|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_div2|sync~CLKENA0_outclk\,
	d => \count_par|Add0~13_sumout\,
	asdata => \d[3]~input_o\,
	clrn => \aclr~input_o\,
	sclr => \sclr~input_o\,
	sload => \sld~input_o\,
	ena => \count_par|cnt[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_par|cnt\(3));

-- Location: LABCELL_X10_Y4_N51
\coder|WideOr6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \coder|WideOr6~0_combout\ = ( \count_par|cnt\(2) & ( \count_par|cnt\(0) & ( (!\count_par|cnt\(1) & \count_par|cnt\(3)) ) ) ) # ( !\count_par|cnt\(2) & ( \count_par|cnt\(0) & ( !\count_par|cnt\(1) $ (\count_par|cnt\(3)) ) ) ) # ( \count_par|cnt\(2) & ( 
-- !\count_par|cnt\(0) & ( (!\count_par|cnt\(1) & !\count_par|cnt\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000001010000010100101101001010000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \count_par|ALT_INV_cnt\(1),
	datac => \count_par|ALT_INV_cnt\(3),
	datae => \count_par|ALT_INV_cnt\(2),
	dataf => \count_par|ALT_INV_cnt\(0),
	combout => \coder|WideOr6~0_combout\);

-- Location: LABCELL_X10_Y4_N18
\coder|WideOr5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \coder|WideOr5~0_combout\ = ( \count_par|cnt\(2) & ( \count_par|cnt\(0) & ( !\count_par|cnt\(3) $ (\count_par|cnt\(1)) ) ) ) # ( !\count_par|cnt\(2) & ( \count_par|cnt\(0) & ( (\count_par|cnt\(3) & \count_par|cnt\(1)) ) ) ) # ( \count_par|cnt\(2) & ( 
-- !\count_par|cnt\(0) & ( (\count_par|cnt\(1)) # (\count_par|cnt\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001111110011111100000011000000111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \count_par|ALT_INV_cnt\(3),
	datac => \count_par|ALT_INV_cnt\(1),
	datae => \count_par|ALT_INV_cnt\(2),
	dataf => \count_par|ALT_INV_cnt\(0),
	combout => \coder|WideOr5~0_combout\);

-- Location: LABCELL_X10_Y4_N15
\coder|WideOr4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \coder|WideOr4~0_combout\ = ( \count_par|cnt\(2) & ( \count_par|cnt\(0) & ( (\count_par|cnt\(1) & \count_par|cnt\(3)) ) ) ) # ( \count_par|cnt\(2) & ( !\count_par|cnt\(0) & ( \count_par|cnt\(3) ) ) ) # ( !\count_par|cnt\(2) & ( !\count_par|cnt\(0) & ( 
-- (\count_par|cnt\(1) & !\count_par|cnt\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000000011110000111100000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \count_par|ALT_INV_cnt\(1),
	datac => \count_par|ALT_INV_cnt\(3),
	datae => \count_par|ALT_INV_cnt\(2),
	dataf => \count_par|ALT_INV_cnt\(0),
	combout => \coder|WideOr4~0_combout\);

-- Location: LABCELL_X10_Y4_N45
\coder|WideOr3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \coder|WideOr3~0_combout\ = ( \count_par|cnt\(2) & ( \count_par|cnt\(0) & ( \count_par|cnt\(1) ) ) ) # ( !\count_par|cnt\(2) & ( \count_par|cnt\(0) & ( (!\count_par|cnt\(1) & !\count_par|cnt\(3)) ) ) ) # ( \count_par|cnt\(2) & ( !\count_par|cnt\(0) & ( 
-- (!\count_par|cnt\(1) & !\count_par|cnt\(3)) ) ) ) # ( !\count_par|cnt\(2) & ( !\count_par|cnt\(0) & ( (\count_par|cnt\(1) & \count_par|cnt\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101101000001010000010100000101000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \count_par|ALT_INV_cnt\(1),
	datac => \count_par|ALT_INV_cnt\(3),
	datae => \count_par|ALT_INV_cnt\(2),
	dataf => \count_par|ALT_INV_cnt\(0),
	combout => \coder|WideOr3~0_combout\);

-- Location: LABCELL_X10_Y4_N24
\coder|WideOr2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \coder|WideOr2~0_combout\ = ( \count_par|cnt\(2) & ( \count_par|cnt\(0) & ( !\count_par|cnt\(3) ) ) ) # ( !\count_par|cnt\(2) & ( \count_par|cnt\(0) & ( (!\count_par|cnt\(3)) # (!\count_par|cnt\(1)) ) ) ) # ( \count_par|cnt\(2) & ( !\count_par|cnt\(0) & ( 
-- (!\count_par|cnt\(3) & !\count_par|cnt\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000001100000011111100111111001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \count_par|ALT_INV_cnt\(3),
	datac => \count_par|ALT_INV_cnt\(1),
	datae => \count_par|ALT_INV_cnt\(2),
	dataf => \count_par|ALT_INV_cnt\(0),
	combout => \coder|WideOr2~0_combout\);

-- Location: LABCELL_X10_Y4_N9
\coder|WideOr1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \coder|WideOr1~0_combout\ = ( \count_par|cnt\(2) & ( \count_par|cnt\(0) & ( !\count_par|cnt\(1) $ (!\count_par|cnt\(3)) ) ) ) # ( !\count_par|cnt\(2) & ( \count_par|cnt\(0) & ( !\count_par|cnt\(3) ) ) ) # ( !\count_par|cnt\(2) & ( !\count_par|cnt\(0) & ( 
-- (\count_par|cnt\(1) & !\count_par|cnt\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000000000000000000011110000111100000101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \count_par|ALT_INV_cnt\(1),
	datac => \count_par|ALT_INV_cnt\(3),
	datae => \count_par|ALT_INV_cnt\(2),
	dataf => \count_par|ALT_INV_cnt\(0),
	combout => \coder|WideOr1~0_combout\);

-- Location: LABCELL_X10_Y4_N0
\coder|WideOr0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \coder|WideOr0~0_combout\ = ( \count_par|cnt\(2) & ( \count_par|cnt\(0) & ( (!\count_par|cnt\(1)) # (\count_par|cnt\(3)) ) ) ) # ( !\count_par|cnt\(2) & ( \count_par|cnt\(0) & ( (\count_par|cnt\(1)) # (\count_par|cnt\(3)) ) ) ) # ( \count_par|cnt\(2) & ( 
-- !\count_par|cnt\(0) & ( (!\count_par|cnt\(3)) # (\count_par|cnt\(1)) ) ) ) # ( !\count_par|cnt\(2) & ( !\count_par|cnt\(0) & ( (\count_par|cnt\(1)) # (\count_par|cnt\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111110011111100111100111111001111111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \count_par|ALT_INV_cnt\(3),
	datac => \count_par|ALT_INV_cnt\(1),
	datae => \count_par|ALT_INV_cnt\(2),
	dataf => \count_par|ALT_INV_cnt\(0),
	combout => \coder|WideOr0~0_combout\);

-- Location: IOIBUF_X24_Y0_N1
\d[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(4),
	o => \d[4]~input_o\);

-- Location: IOIBUF_X89_Y16_N55
\d[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(5),
	o => \d[5]~input_o\);

-- Location: IOIBUF_X86_Y0_N18
\d[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(6),
	o => \d[6]~input_o\);

-- Location: IOIBUF_X20_Y81_N1
\d[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(7),
	o => \d[7]~input_o\);

-- Location: IOIBUF_X10_Y0_N58
\d[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(8),
	o => \d[8]~input_o\);

-- Location: IOIBUF_X89_Y4_N61
\d[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(9),
	o => \d[9]~input_o\);

-- Location: IOIBUF_X89_Y20_N78
\d[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(10),
	o => \d[10]~input_o\);

-- Location: IOIBUF_X18_Y0_N58
\d[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(11),
	o => \d[11]~input_o\);

-- Location: IOIBUF_X38_Y81_N1
\d[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(12),
	o => \d[12]~input_o\);

-- Location: IOIBUF_X26_Y0_N75
\d[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(13),
	o => \d[13]~input_o\);

-- Location: IOIBUF_X86_Y0_N35
\d[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(14),
	o => \d[14]~input_o\);

-- Location: IOIBUF_X89_Y20_N44
\d[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(15),
	o => \d[15]~input_o\);

-- Location: IOIBUF_X38_Y81_N18
\d[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(16),
	o => \d[16]~input_o\);

-- Location: IOIBUF_X2_Y0_N92
\d[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(17),
	o => \d[17]~input_o\);

-- Location: IOIBUF_X89_Y8_N4
\d[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(18),
	o => \d[18]~input_o\);

-- Location: IOIBUF_X40_Y81_N1
\d[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(19),
	o => \d[19]~input_o\);

-- Location: IOIBUF_X8_Y81_N18
\d[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(20),
	o => \d[20]~input_o\);

-- Location: IOIBUF_X52_Y0_N52
\d[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(21),
	o => \d[21]~input_o\);

-- Location: IOIBUF_X12_Y81_N1
\d[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(22),
	o => \d[22]~input_o\);

-- Location: IOIBUF_X28_Y81_N1
\d[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d(23),
	o => \d[23]~input_o\);

-- Location: LABCELL_X48_Y2_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


