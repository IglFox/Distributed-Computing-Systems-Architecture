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

-- DATE "10/10/2026 16:22:37"

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

ENTITY 	summ_4 IS
    PORT (
	op_a : IN std_logic_vector(3 DOWNTO 0);
	op_b : IN std_logic_vector(3 DOWNTO 0);
	op_c : IN std_logic;
	sync : IN std_logic;
	led : BUFFER std_logic;
	hex : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END summ_4;

-- Design Ports Information
-- led	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex[0]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex[1]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex[2]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex[3]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex[4]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex[5]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex[6]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op_a[3]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op_b[3]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op_a[2]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op_b[2]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op_a[1]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op_b[1]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op_a[0]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op_b[0]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op_c	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sync	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF summ_4 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_op_a : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_op_b : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_op_c : std_logic;
SIGNAL ww_sync : std_logic;
SIGNAL ww_led : std_logic;
SIGNAL ww_hex : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \sync~input_o\ : std_logic;
SIGNAL \sync~inputCLKENA0_outclk\ : std_logic;
SIGNAL \op_a[0]~input_o\ : std_logic;
SIGNAL \op_b[1]~input_o\ : std_logic;
SIGNAL \op_b[0]~input_o\ : std_logic;
SIGNAL \op_a[1]~input_o\ : std_logic;
SIGNAL \op_c~input_o\ : std_logic;
SIGNAL \block1|sum1|crp~combout\ : std_logic;
SIGNAL \op_a[2]~input_o\ : std_logic;
SIGNAL \op_b[2]~input_o\ : std_logic;
SIGNAL \op_b[3]~input_o\ : std_logic;
SIGNAL \op_a[3]~input_o\ : std_logic;
SIGNAL \block1|sum3|crp~combout\ : std_logic;
SIGNAL \block1|sum2|s~combout\ : std_logic;
SIGNAL \block1|sum1|s~combout\ : std_logic;
SIGNAL \block1|sum3|s~combout\ : std_logic;
SIGNAL \block1|sum0|s~combout\ : std_logic;
SIGNAL \block3|WideOr6~0_combout\ : std_logic;
SIGNAL \block3|WideOr5~0_combout\ : std_logic;
SIGNAL \block3|WideOr4~0_combout\ : std_logic;
SIGNAL \block3|WideOr3~0_combout\ : std_logic;
SIGNAL \block3|WideOr2~0_combout\ : std_logic;
SIGNAL \block3|WideOr1~0_combout\ : std_logic;
SIGNAL \block3|WideOr0~0_combout\ : std_logic;
SIGNAL \block2|q\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALT_INV_op_c~input_o\ : std_logic;
SIGNAL \ALT_INV_op_b[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_op_a[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_op_b[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_op_a[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_op_b[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_op_a[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_op_b[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_op_a[3]~input_o\ : std_logic;
SIGNAL \block1|sum1|ALT_INV_crp~combout\ : std_logic;
SIGNAL \block3|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \block2|ALT_INV_q\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_op_a <= op_a;
ww_op_b <= op_b;
ww_op_c <= op_c;
ww_sync <= sync;
led <= ww_led;
hex <= ww_hex;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_op_c~input_o\ <= NOT \op_c~input_o\;
\ALT_INV_op_b[0]~input_o\ <= NOT \op_b[0]~input_o\;
\ALT_INV_op_a[0]~input_o\ <= NOT \op_a[0]~input_o\;
\ALT_INV_op_b[1]~input_o\ <= NOT \op_b[1]~input_o\;
\ALT_INV_op_a[1]~input_o\ <= NOT \op_a[1]~input_o\;
\ALT_INV_op_b[2]~input_o\ <= NOT \op_b[2]~input_o\;
\ALT_INV_op_a[2]~input_o\ <= NOT \op_a[2]~input_o\;
\ALT_INV_op_b[3]~input_o\ <= NOT \op_b[3]~input_o\;
\ALT_INV_op_a[3]~input_o\ <= NOT \op_a[3]~input_o\;
\block1|sum1|ALT_INV_crp~combout\ <= NOT \block1|sum1|crp~combout\;
\block3|ALT_INV_WideOr0~0_combout\ <= NOT \block3|WideOr0~0_combout\;
\block2|ALT_INV_q\(3) <= NOT \block2|q\(3);
\block2|ALT_INV_q\(2) <= NOT \block2|q\(2);
\block2|ALT_INV_q\(1) <= NOT \block2|q\(1);
\block2|ALT_INV_q\(0) <= NOT \block2|q\(0);

-- Location: IOOBUF_X52_Y0_N19
\led~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \block2|q\(4),
	devoe => ww_devoe,
	o => ww_led);

-- Location: IOOBUF_X89_Y8_N39
\hex[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \block3|WideOr6~0_combout\,
	devoe => ww_devoe,
	o => ww_hex(0));

-- Location: IOOBUF_X89_Y11_N79
\hex[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \block3|WideOr5~0_combout\,
	devoe => ww_devoe,
	o => ww_hex(1));

-- Location: IOOBUF_X89_Y11_N96
\hex[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \block3|WideOr4~0_combout\,
	devoe => ww_devoe,
	o => ww_hex(2));

-- Location: IOOBUF_X89_Y4_N79
\hex[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \block3|WideOr3~0_combout\,
	devoe => ww_devoe,
	o => ww_hex(3));

-- Location: IOOBUF_X89_Y13_N56
\hex[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \block3|WideOr2~0_combout\,
	devoe => ww_devoe,
	o => ww_hex(4));

-- Location: IOOBUF_X89_Y13_N39
\hex[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \block3|WideOr1~0_combout\,
	devoe => ww_devoe,
	o => ww_hex(5));

-- Location: IOOBUF_X89_Y4_N96
\hex[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \block3|ALT_INV_WideOr0~0_combout\,
	devoe => ww_devoe,
	o => ww_hex(6));

-- Location: IOIBUF_X36_Y0_N1
\sync~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sync,
	o => \sync~input_o\);

-- Location: CLKCTRL_G6
\sync~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \sync~input_o\,
	outclk => \sync~inputCLKENA0_outclk\);

-- Location: IOIBUF_X4_Y0_N35
\op_a[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op_a(0),
	o => \op_a[0]~input_o\);

-- Location: IOIBUF_X4_Y0_N52
\op_b[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op_b(1),
	o => \op_b[1]~input_o\);

-- Location: IOIBUF_X8_Y0_N35
\op_b[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op_b(0),
	o => \op_b[0]~input_o\);

-- Location: IOIBUF_X4_Y0_N1
\op_a[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op_a(1),
	o => \op_a[1]~input_o\);

-- Location: IOIBUF_X12_Y0_N18
\op_c~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op_c,
	o => \op_c~input_o\);

-- Location: LABCELL_X10_Y4_N27
\block1|sum1|crp\ : cyclonev_lcell_comb
-- Equation(s):
-- \block1|sum1|crp~combout\ = ( \op_a[1]~input_o\ & ( \op_c~input_o\ & ( ((\op_b[0]~input_o\) # (\op_b[1]~input_o\)) # (\op_a[0]~input_o\) ) ) ) # ( !\op_a[1]~input_o\ & ( \op_c~input_o\ & ( (\op_b[1]~input_o\ & ((\op_b[0]~input_o\) # (\op_a[0]~input_o\))) 
-- ) ) ) # ( \op_a[1]~input_o\ & ( !\op_c~input_o\ & ( ((\op_a[0]~input_o\ & \op_b[0]~input_o\)) # (\op_b[1]~input_o\) ) ) ) # ( !\op_a[1]~input_o\ & ( !\op_c~input_o\ & ( (\op_a[0]~input_o\ & (\op_b[1]~input_o\ & \op_b[0]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000011110101111100000101000011110101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_op_a[0]~input_o\,
	datac => \ALT_INV_op_b[1]~input_o\,
	datad => \ALT_INV_op_b[0]~input_o\,
	datae => \ALT_INV_op_a[1]~input_o\,
	dataf => \ALT_INV_op_c~input_o\,
	combout => \block1|sum1|crp~combout\);

-- Location: IOIBUF_X4_Y0_N18
\op_a[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op_a(2),
	o => \op_a[2]~input_o\);

-- Location: IOIBUF_X2_Y0_N41
\op_b[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op_b(2),
	o => \op_b[2]~input_o\);

-- Location: IOIBUF_X16_Y0_N18
\op_b[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op_b(3),
	o => \op_b[3]~input_o\);

-- Location: IOIBUF_X2_Y0_N58
\op_a[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op_a(3),
	o => \op_a[3]~input_o\);

-- Location: LABCELL_X10_Y4_N3
\block1|sum3|crp\ : cyclonev_lcell_comb
-- Equation(s):
-- \block1|sum3|crp~combout\ = ( \op_a[3]~input_o\ & ( ((!\block1|sum1|crp~combout\ & (\op_a[2]~input_o\ & \op_b[2]~input_o\)) # (\block1|sum1|crp~combout\ & ((\op_b[2]~input_o\) # (\op_a[2]~input_o\)))) # (\op_b[3]~input_o\) ) ) # ( !\op_a[3]~input_o\ & ( 
-- (\op_b[3]~input_o\ & ((!\block1|sum1|crp~combout\ & (\op_a[2]~input_o\ & \op_b[2]~input_o\)) # (\block1|sum1|crp~combout\ & ((\op_b[2]~input_o\) # (\op_a[2]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010111000101111111111100000000000101110001011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \block1|sum1|ALT_INV_crp~combout\,
	datab => \ALT_INV_op_a[2]~input_o\,
	datac => \ALT_INV_op_b[2]~input_o\,
	datad => \ALT_INV_op_b[3]~input_o\,
	datae => \ALT_INV_op_a[3]~input_o\,
	combout => \block1|sum3|crp~combout\);

-- Location: FF_X10_Y4_N4
\block2|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync~inputCLKENA0_outclk\,
	d => \block1|sum3|crp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \block2|q\(4));

-- Location: LABCELL_X10_Y4_N51
\block1|sum2|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \block1|sum2|s~combout\ = ( \op_a[2]~input_o\ & ( !\block1|sum1|crp~combout\ $ (\op_b[2]~input_o\) ) ) # ( !\op_a[2]~input_o\ & ( !\block1|sum1|crp~combout\ $ (!\op_b[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010101001011010010101011010010110101010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \block1|sum1|ALT_INV_crp~combout\,
	datac => \ALT_INV_op_b[2]~input_o\,
	datae => \ALT_INV_op_a[2]~input_o\,
	combout => \block1|sum2|s~combout\);

-- Location: FF_X10_Y4_N53
\block2|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync~inputCLKENA0_outclk\,
	d => \block1|sum2|s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \block2|q\(2));

-- Location: LABCELL_X10_Y4_N42
\block1|sum1|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \block1|sum1|s~combout\ = ( \op_a[1]~input_o\ & ( \op_c~input_o\ & ( !\op_b[1]~input_o\ $ (((\op_a[0]~input_o\) # (\op_b[0]~input_o\))) ) ) ) # ( !\op_a[1]~input_o\ & ( \op_c~input_o\ & ( !\op_b[1]~input_o\ $ (((!\op_b[0]~input_o\ & !\op_a[0]~input_o\))) 
-- ) ) ) # ( \op_a[1]~input_o\ & ( !\op_c~input_o\ & ( !\op_b[1]~input_o\ $ (((\op_b[0]~input_o\ & \op_a[0]~input_o\))) ) ) ) # ( !\op_a[1]~input_o\ & ( !\op_c~input_o\ & ( !\op_b[1]~input_o\ $ (((!\op_b[0]~input_o\) # (!\op_a[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011000110110110010011100100101101100011011001001001110010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_op_b[0]~input_o\,
	datab => \ALT_INV_op_b[1]~input_o\,
	datac => \ALT_INV_op_a[0]~input_o\,
	datae => \ALT_INV_op_a[1]~input_o\,
	dataf => \ALT_INV_op_c~input_o\,
	combout => \block1|sum1|s~combout\);

-- Location: FF_X10_Y4_N44
\block2|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync~inputCLKENA0_outclk\,
	d => \block1|sum1|s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \block2|q\(1));

-- Location: LABCELL_X10_Y4_N54
\block1|sum3|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \block1|sum3|s~combout\ = ( \op_a[3]~input_o\ & ( !\op_b[3]~input_o\ $ (((!\op_b[2]~input_o\ & (\block1|sum1|crp~combout\ & \op_a[2]~input_o\)) # (\op_b[2]~input_o\ & ((\op_a[2]~input_o\) # (\block1|sum1|crp~combout\))))) ) ) # ( !\op_a[3]~input_o\ & ( 
-- !\op_b[3]~input_o\ $ (((!\op_b[2]~input_o\ & ((!\block1|sum1|crp~combout\) # (!\op_a[2]~input_o\))) # (\op_b[2]~input_o\ & (!\block1|sum1|crp~combout\ & !\op_a[2]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011001101010101010011001010101010110011010101010100110010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_op_b[3]~input_o\,
	datab => \ALT_INV_op_b[2]~input_o\,
	datac => \block1|sum1|ALT_INV_crp~combout\,
	datad => \ALT_INV_op_a[2]~input_o\,
	datae => \ALT_INV_op_a[3]~input_o\,
	combout => \block1|sum3|s~combout\);

-- Location: FF_X10_Y4_N56
\block2|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync~inputCLKENA0_outclk\,
	d => \block1|sum3|s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \block2|q\(3));

-- Location: LABCELL_X10_Y4_N6
\block1|sum0|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \block1|sum0|s~combout\ = ( \op_c~input_o\ & ( !\op_b[0]~input_o\ $ (\op_a[0]~input_o\) ) ) # ( !\op_c~input_o\ & ( !\op_b[0]~input_o\ $ (!\op_a[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101010100101101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_op_b[0]~input_o\,
	datac => \ALT_INV_op_a[0]~input_o\,
	dataf => \ALT_INV_op_c~input_o\,
	combout => \block1|sum0|s~combout\);

-- Location: FF_X10_Y4_N8
\block2|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync~inputCLKENA0_outclk\,
	d => \block1|sum0|s~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \block2|q\(0));

-- Location: LABCELL_X10_Y4_N30
\block3|WideOr6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \block3|WideOr6~0_combout\ = ( \block2|q\(0) & ( (!\block2|q\(2) & (!\block2|q\(1) $ (\block2|q\(3)))) # (\block2|q\(2) & (!\block2|q\(1) & \block2|q\(3))) ) ) # ( !\block2|q\(0) & ( (\block2|q\(2) & (!\block2|q\(1) & !\block2|q\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000010000110100001101000011010000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \block2|ALT_INV_q\(2),
	datab => \block2|ALT_INV_q\(1),
	datac => \block2|ALT_INV_q\(3),
	dataf => \block2|ALT_INV_q\(0),
	combout => \block3|WideOr6~0_combout\);

-- Location: LABCELL_X10_Y4_N33
\block3|WideOr5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \block3|WideOr5~0_combout\ = ( \block2|q\(0) & ( (!\block2|q\(1) & (\block2|q\(2) & !\block2|q\(3))) # (\block2|q\(1) & ((\block2|q\(3)))) ) ) # ( !\block2|q\(0) & ( (\block2|q\(2) & ((\block2|q\(3)) # (\block2|q\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101010101000100010101010101000100001100110100010000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \block2|ALT_INV_q\(2),
	datab => \block2|ALT_INV_q\(1),
	datad => \block2|ALT_INV_q\(3),
	dataf => \block2|ALT_INV_q\(0),
	combout => \block3|WideOr5~0_combout\);

-- Location: LABCELL_X10_Y4_N39
\block3|WideOr4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \block3|WideOr4~0_combout\ = ( \block2|q\(0) & ( (\block2|q\(2) & (\block2|q\(1) & \block2|q\(3))) ) ) # ( !\block2|q\(0) & ( (!\block2|q\(2) & (\block2|q\(1) & !\block2|q\(3))) # (\block2|q\(2) & ((\block2|q\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001010101001000100101010100000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \block2|ALT_INV_q\(2),
	datab => \block2|ALT_INV_q\(1),
	datad => \block2|ALT_INV_q\(3),
	dataf => \block2|ALT_INV_q\(0),
	combout => \block3|WideOr4~0_combout\);

-- Location: LABCELL_X10_Y4_N36
\block3|WideOr3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \block3|WideOr3~0_combout\ = ( \block2|q\(0) & ( (!\block2|q\(2) & (!\block2|q\(1) & !\block2|q\(3))) # (\block2|q\(2) & (\block2|q\(1))) ) ) # ( !\block2|q\(0) & ( (!\block2|q\(2) & (\block2|q\(1) & \block2|q\(3))) # (\block2|q\(2) & (!\block2|q\(1) & 
-- !\block2|q\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001001000010010000100100001010010001100100011001000110010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \block2|ALT_INV_q\(2),
	datab => \block2|ALT_INV_q\(1),
	datac => \block2|ALT_INV_q\(3),
	dataf => \block2|ALT_INV_q\(0),
	combout => \block3|WideOr3~0_combout\);

-- Location: LABCELL_X10_Y4_N15
\block3|WideOr2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \block3|WideOr2~0_combout\ = ( \block2|q\(0) & ( (!\block2|q\(3)) # ((!\block2|q\(2) & !\block2|q\(1))) ) ) # ( !\block2|q\(0) & ( (\block2|q\(2) & (!\block2|q\(1) & !\block2|q\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000000010001000000000011111111100010001111111110001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \block2|ALT_INV_q\(2),
	datab => \block2|ALT_INV_q\(1),
	datad => \block2|ALT_INV_q\(3),
	dataf => \block2|ALT_INV_q\(0),
	combout => \block3|WideOr2~0_combout\);

-- Location: LABCELL_X10_Y4_N18
\block3|WideOr1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \block3|WideOr1~0_combout\ = ( \block2|q\(3) & ( \block2|q\(0) & ( (!\block2|q\(1) & \block2|q\(2)) ) ) ) # ( !\block2|q\(3) & ( \block2|q\(0) & ( (!\block2|q\(2)) # (\block2|q\(1)) ) ) ) # ( !\block2|q\(3) & ( !\block2|q\(0) & ( (\block2|q\(1) & 
-- !\block2|q\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000000000000000000011110011111100110000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \block2|ALT_INV_q\(1),
	datac => \block2|ALT_INV_q\(2),
	datae => \block2|ALT_INV_q\(3),
	dataf => \block2|ALT_INV_q\(0),
	combout => \block3|WideOr1~0_combout\);

-- Location: LABCELL_X10_Y4_N12
\block3|WideOr0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \block3|WideOr0~0_combout\ = ( \block2|q\(0) & ( (!\block2|q\(2) $ (!\block2|q\(1))) # (\block2|q\(3)) ) ) # ( !\block2|q\(0) & ( (!\block2|q\(2) $ (!\block2|q\(3))) # (\block2|q\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111101101111011011110110111101101101111011011110110111101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \block2|ALT_INV_q\(2),
	datab => \block2|ALT_INV_q\(1),
	datac => \block2|ALT_INV_q\(3),
	dataf => \block2|ALT_INV_q\(0),
	combout => \block3|WideOr0~0_combout\);

-- Location: LABCELL_X29_Y49_N3
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


