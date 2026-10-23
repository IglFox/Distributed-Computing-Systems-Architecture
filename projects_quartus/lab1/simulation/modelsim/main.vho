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

-- DATE "10/10/2026 13:39:59"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	main IS
    PORT (
	sw_data : IN std_logic_vector(3 DOWNTO 0);
	addr : IN std_logic_vector(1 DOWNTO 0);
	hex0 : BUFFER std_logic_vector(6 DOWNTO 0);
	hex1 : BUFFER std_logic_vector(6 DOWNTO 0);
	hex2 : BUFFER std_logic_vector(6 DOWNTO 0);
	hex3 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END main;

-- Design Ports Information
-- hex0[0]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[1]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[2]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[3]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[4]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[5]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex0[6]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[0]	=>  Location: PIN_AJ29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[1]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[2]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[3]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[4]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[5]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex1[6]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[0]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[1]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[2]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[3]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[4]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[5]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex2[6]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[0]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[1]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[2]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[3]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[4]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[5]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hex3[6]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw_data[0]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw_data[1]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw_data[2]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw_data[3]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addr[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_sw_data : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_addr : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_hex0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex3 : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \addr[1]~input_o\ : std_logic;
SIGNAL \sw_data[1]~input_o\ : std_logic;
SIGNAL \sw_data[2]~input_o\ : std_logic;
SIGNAL \sw_data[0]~input_o\ : std_logic;
SIGNAL \sw_data[3]~input_o\ : std_logic;
SIGNAL \block_coder|WideOr6~0_combout\ : std_logic;
SIGNAL \addr[0]~input_o\ : std_logic;
SIGNAL \block_dms|data0[0]~0_combout\ : std_logic;
SIGNAL \block_coder|WideOr5~0_combout\ : std_logic;
SIGNAL \block_dms|data0[1]~1_combout\ : std_logic;
SIGNAL \block_coder|WideOr4~0_combout\ : std_logic;
SIGNAL \block_dms|data0[2]~2_combout\ : std_logic;
SIGNAL \block_coder|WideOr3~0_combout\ : std_logic;
SIGNAL \block_dms|data0[3]~3_combout\ : std_logic;
SIGNAL \block_coder|WideOr2~0_combout\ : std_logic;
SIGNAL \block_dms|data0[4]~4_combout\ : std_logic;
SIGNAL \block_coder|WideOr1~0_combout\ : std_logic;
SIGNAL \block_dms|data0[5]~5_combout\ : std_logic;
SIGNAL \block_coder|WideOr0~0_combout\ : std_logic;
SIGNAL \block_dms|data0[6]~6_combout\ : std_logic;
SIGNAL \block_dms|data1[0]~0_combout\ : std_logic;
SIGNAL \block_dms|data1[1]~1_combout\ : std_logic;
SIGNAL \block_dms|data1[2]~2_combout\ : std_logic;
SIGNAL \block_dms|data1[3]~3_combout\ : std_logic;
SIGNAL \block_dms|data1[4]~4_combout\ : std_logic;
SIGNAL \block_dms|data1[5]~5_combout\ : std_logic;
SIGNAL \block_dms|data1[6]~6_combout\ : std_logic;
SIGNAL \block_dms|data2[0]~0_combout\ : std_logic;
SIGNAL \block_dms|data2[1]~1_combout\ : std_logic;
SIGNAL \block_dms|data2[2]~2_combout\ : std_logic;
SIGNAL \block_dms|data2[3]~3_combout\ : std_logic;
SIGNAL \block_dms|data2[4]~4_combout\ : std_logic;
SIGNAL \block_dms|data2[5]~5_combout\ : std_logic;
SIGNAL \block_dms|data2[6]~6_combout\ : std_logic;
SIGNAL \block_dms|data3[0]~0_combout\ : std_logic;
SIGNAL \block_dms|data3[1]~1_combout\ : std_logic;
SIGNAL \block_dms|data3[2]~2_combout\ : std_logic;
SIGNAL \block_dms|data3[3]~3_combout\ : std_logic;
SIGNAL \block_dms|data3[4]~4_combout\ : std_logic;
SIGNAL \block_dms|data3[5]~5_combout\ : std_logic;
SIGNAL \block_dms|data3[6]~6_combout\ : std_logic;
SIGNAL \ALT_INV_addr[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_addr[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw_data[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw_data[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw_data[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_sw_data[0]~input_o\ : std_logic;
SIGNAL \block_dms|ALT_INV_data0[6]~6_combout\ : std_logic;
SIGNAL \block_coder|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \block_coder|ALT_INV_WideOr1~0_combout\ : std_logic;
SIGNAL \block_coder|ALT_INV_WideOr2~0_combout\ : std_logic;
SIGNAL \block_coder|ALT_INV_WideOr3~0_combout\ : std_logic;
SIGNAL \block_coder|ALT_INV_WideOr4~0_combout\ : std_logic;
SIGNAL \block_coder|ALT_INV_WideOr5~0_combout\ : std_logic;
SIGNAL \block_coder|ALT_INV_WideOr6~0_combout\ : std_logic;

BEGIN

ww_sw_data <= sw_data;
ww_addr <= addr;
hex0 <= ww_hex0;
hex1 <= ww_hex1;
hex2 <= ww_hex2;
hex3 <= ww_hex3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_addr[1]~input_o\ <= NOT \addr[1]~input_o\;
\ALT_INV_addr[0]~input_o\ <= NOT \addr[0]~input_o\;
\ALT_INV_sw_data[3]~input_o\ <= NOT \sw_data[3]~input_o\;
\ALT_INV_sw_data[2]~input_o\ <= NOT \sw_data[2]~input_o\;
\ALT_INV_sw_data[1]~input_o\ <= NOT \sw_data[1]~input_o\;
\ALT_INV_sw_data[0]~input_o\ <= NOT \sw_data[0]~input_o\;
\block_dms|ALT_INV_data0[6]~6_combout\ <= NOT \block_dms|data0[6]~6_combout\;
\block_coder|ALT_INV_WideOr0~0_combout\ <= NOT \block_coder|WideOr0~0_combout\;
\block_coder|ALT_INV_WideOr1~0_combout\ <= NOT \block_coder|WideOr1~0_combout\;
\block_coder|ALT_INV_WideOr2~0_combout\ <= NOT \block_coder|WideOr2~0_combout\;
\block_coder|ALT_INV_WideOr3~0_combout\ <= NOT \block_coder|WideOr3~0_combout\;
\block_coder|ALT_INV_WideOr4~0_combout\ <= NOT \block_coder|WideOr4~0_combout\;
\block_coder|ALT_INV_WideOr5~0_combout\ <= NOT \block_coder|WideOr5~0_combout\;
\block_coder|ALT_INV_WideOr6~0_combout\ <= NOT \block_coder|WideOr6~0_combout\;

-- Location: IOOBUF_X89_Y8_N39
\hex0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \block_dms|data0[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_hex0(0));

-- Location: IOOBUF_X89_Y11_N79
\hex0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \block_dms|data0[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_hex0(1));

-- Location: IOOBUF_X89_Y11_N96
\hex0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \block_dms|data0[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_hex0(2));

-- Location: IOOBUF_X89_Y4_N79
\hex0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \block_dms|data0[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_hex0(3));

-- Location: IOOBUF_X89_Y13_N56
\hex0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \block_dms|data0[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_hex0(4));

-- Location: IOOBUF_X89_Y13_N39
\hex0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \block_dms|data0[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_hex0(5));

-- Location: IOOBUF_X89_Y4_N96
\hex0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \block_dms|ALT_INV_data0[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_hex0(6));

-- Location: IOOBUF_X89_Y6_N39
\hex1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \block_dms|data1[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_hex1(0));

-- Location: IOOBUF_X89_Y6_N56
\hex1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \block_dms|data1[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_hex1(1));

-- Location: IOOBUF_X89_Y16_N39
\hex1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \block_dms|data1[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_hex1(2));

-- Location: IOOBUF_X89_Y16_N56
\hex1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \block_dms|data1[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_hex1(3));

-- Location: IOOBUF_X89_Y15_N39
\hex1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \block_dms|data1[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_hex1(4));

-- Location: IOOBUF_X89_Y15_N56
\hex1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \block_dms|data1[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_hex1(5));

-- Location: IOOBUF_X89_Y8_N56
\hex1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \block_dms|data1[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_hex1(6));

-- Location: IOOBUF_X89_Y9_N22
\hex2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \block_dms|data2[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_hex2(0));

-- Location: IOOBUF_X89_Y23_N39
\hex2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \block_dms|data2[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_hex2(1));

-- Location: IOOBUF_X89_Y23_N56
\hex2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \block_dms|data2[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_hex2(2));

-- Location: IOOBUF_X89_Y20_N79
\hex2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \block_dms|data2[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_hex2(3));

-- Location: IOOBUF_X89_Y25_N39
\hex2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \block_dms|data2[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_hex2(4));

-- Location: IOOBUF_X89_Y20_N96
\hex2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \block_dms|data2[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_hex2(5));

-- Location: IOOBUF_X89_Y25_N56
\hex2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \block_dms|data2[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_hex2(6));

-- Location: IOOBUF_X89_Y16_N5
\hex3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \block_dms|data3[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_hex3(0));

-- Location: IOOBUF_X89_Y16_N22
\hex3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \block_dms|data3[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_hex3(1));

-- Location: IOOBUF_X89_Y4_N45
\hex3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \block_dms|data3[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_hex3(2));

-- Location: IOOBUF_X89_Y4_N62
\hex3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \block_dms|data3[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_hex3(3));

-- Location: IOOBUF_X89_Y21_N39
\hex3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \block_dms|data3[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_hex3(4));

-- Location: IOOBUF_X89_Y11_N62
\hex3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \block_dms|data3[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_hex3(5));

-- Location: IOOBUF_X89_Y9_N5
\hex3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \block_dms|data3[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_hex3(6));

-- Location: IOIBUF_X16_Y0_N1
\addr[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(1),
	o => \addr[1]~input_o\);

-- Location: IOIBUF_X4_Y0_N1
\sw_data[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw_data(1),
	o => \sw_data[1]~input_o\);

-- Location: IOIBUF_X4_Y0_N18
\sw_data[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw_data(2),
	o => \sw_data[2]~input_o\);

-- Location: IOIBUF_X4_Y0_N35
\sw_data[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw_data(0),
	o => \sw_data[0]~input_o\);

-- Location: IOIBUF_X2_Y0_N58
\sw_data[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw_data(3),
	o => \sw_data[3]~input_o\);

-- Location: LABCELL_X88_Y12_N30
\block_coder|WideOr6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \block_coder|WideOr6~0_combout\ = ( \sw_data[3]~input_o\ & ( (\sw_data[0]~input_o\ & (!\sw_data[1]~input_o\ $ (!\sw_data[2]~input_o\))) ) ) # ( !\sw_data[3]~input_o\ & ( (!\sw_data[1]~input_o\ & (!\sw_data[2]~input_o\ $ (!\sw_data[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100000101000001010000010100000000110000001100000011000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sw_data[1]~input_o\,
	datab => \ALT_INV_sw_data[2]~input_o\,
	datac => \ALT_INV_sw_data[0]~input_o\,
	dataf => \ALT_INV_sw_data[3]~input_o\,
	combout => \block_coder|WideOr6~0_combout\);

-- Location: IOIBUF_X12_Y0_N18
\addr[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_addr(0),
	o => \addr[0]~input_o\);

-- Location: LABCELL_X88_Y12_N6
\block_dms|data0[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \block_dms|data0[0]~0_combout\ = ( !\addr[0]~input_o\ & ( (!\addr[1]~input_o\ & \block_coder|WideOr6~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_addr[1]~input_o\,
	datad => \block_coder|ALT_INV_WideOr6~0_combout\,
	dataf => \ALT_INV_addr[0]~input_o\,
	combout => \block_dms|data0[0]~0_combout\);

-- Location: LABCELL_X88_Y12_N33
\block_coder|WideOr5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \block_coder|WideOr5~0_combout\ = ( \sw_data[3]~input_o\ & ( (!\sw_data[0]~input_o\ & ((\sw_data[2]~input_o\))) # (\sw_data[0]~input_o\ & (\sw_data[1]~input_o\)) ) ) # ( !\sw_data[3]~input_o\ & ( (\sw_data[2]~input_o\ & (!\sw_data[1]~input_o\ $ 
-- (!\sw_data[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001010000001010000101000001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sw_data[1]~input_o\,
	datac => \ALT_INV_sw_data[2]~input_o\,
	datad => \ALT_INV_sw_data[0]~input_o\,
	dataf => \ALT_INV_sw_data[3]~input_o\,
	combout => \block_coder|WideOr5~0_combout\);

-- Location: LABCELL_X88_Y12_N42
\block_dms|data0[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \block_dms|data0[1]~1_combout\ = ( \block_coder|WideOr5~0_combout\ & ( (!\addr[0]~input_o\ & !\addr[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[0]~input_o\,
	datab => \ALT_INV_addr[1]~input_o\,
	dataf => \block_coder|ALT_INV_WideOr5~0_combout\,
	combout => \block_dms|data0[1]~1_combout\);

-- Location: LABCELL_X88_Y12_N18
\block_coder|WideOr4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \block_coder|WideOr4~0_combout\ = ( \sw_data[3]~input_o\ & ( (\sw_data[2]~input_o\ & ((!\sw_data[0]~input_o\) # (\sw_data[1]~input_o\))) ) ) # ( !\sw_data[3]~input_o\ & ( (\sw_data[1]~input_o\ & (!\sw_data[2]~input_o\ & !\sw_data[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000000110001001100010011000100110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sw_data[1]~input_o\,
	datab => \ALT_INV_sw_data[2]~input_o\,
	datac => \ALT_INV_sw_data[0]~input_o\,
	dataf => \ALT_INV_sw_data[3]~input_o\,
	combout => \block_coder|WideOr4~0_combout\);

-- Location: LABCELL_X88_Y12_N54
\block_dms|data0[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \block_dms|data0[2]~2_combout\ = ( \block_coder|WideOr4~0_combout\ & ( (!\addr[0]~input_o\ & !\addr[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[0]~input_o\,
	datab => \ALT_INV_addr[1]~input_o\,
	dataf => \block_coder|ALT_INV_WideOr4~0_combout\,
	combout => \block_dms|data0[2]~2_combout\);

-- Location: LABCELL_X88_Y12_N21
\block_coder|WideOr3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \block_coder|WideOr3~0_combout\ = ( \sw_data[0]~input_o\ & ( (!\sw_data[1]~input_o\ & (!\sw_data[2]~input_o\ & !\sw_data[3]~input_o\)) # (\sw_data[1]~input_o\ & (\sw_data[2]~input_o\)) ) ) # ( !\sw_data[0]~input_o\ & ( (!\sw_data[1]~input_o\ & 
-- (\sw_data[2]~input_o\ & !\sw_data[3]~input_o\)) # (\sw_data[1]~input_o\ & (!\sw_data[2]~input_o\ & \sw_data[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010000100100001001000010010010010001100100011001000110010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sw_data[1]~input_o\,
	datab => \ALT_INV_sw_data[2]~input_o\,
	datac => \ALT_INV_sw_data[3]~input_o\,
	dataf => \ALT_INV_sw_data[0]~input_o\,
	combout => \block_coder|WideOr3~0_combout\);

-- Location: LABCELL_X88_Y12_N3
\block_dms|data0[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \block_dms|data0[3]~3_combout\ = (!\addr[0]~input_o\ & (!\addr[1]~input_o\ & \block_coder|WideOr3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100000000000100010000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[0]~input_o\,
	datab => \ALT_INV_addr[1]~input_o\,
	datad => \block_coder|ALT_INV_WideOr3~0_combout\,
	combout => \block_dms|data0[3]~3_combout\);

-- Location: LABCELL_X88_Y12_N36
\block_coder|WideOr2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \block_coder|WideOr2~0_combout\ = ( \sw_data[3]~input_o\ & ( (!\sw_data[1]~input_o\ & (!\sw_data[2]~input_o\ & \sw_data[0]~input_o\)) ) ) # ( !\sw_data[3]~input_o\ & ( ((!\sw_data[1]~input_o\ & \sw_data[2]~input_o\)) # (\sw_data[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111100101111001011110010111100001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sw_data[1]~input_o\,
	datab => \ALT_INV_sw_data[2]~input_o\,
	datac => \ALT_INV_sw_data[0]~input_o\,
	dataf => \ALT_INV_sw_data[3]~input_o\,
	combout => \block_coder|WideOr2~0_combout\);

-- Location: LABCELL_X88_Y13_N33
\block_dms|data0[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \block_dms|data0[4]~4_combout\ = ( !\addr[0]~input_o\ & ( \block_coder|WideOr2~0_combout\ & ( !\addr[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[1]~input_o\,
	datae => \ALT_INV_addr[0]~input_o\,
	dataf => \block_coder|ALT_INV_WideOr2~0_combout\,
	combout => \block_dms|data0[4]~4_combout\);

-- Location: LABCELL_X88_Y12_N39
\block_coder|WideOr1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \block_coder|WideOr1~0_combout\ = ( \sw_data[0]~input_o\ & ( !\sw_data[3]~input_o\ $ (((!\sw_data[1]~input_o\ & \sw_data[2]~input_o\))) ) ) # ( !\sw_data[0]~input_o\ & ( (\sw_data[1]~input_o\ & (!\sw_data[2]~input_o\ & !\sw_data[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000011010010110100101101001011010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sw_data[1]~input_o\,
	datab => \ALT_INV_sw_data[2]~input_o\,
	datac => \ALT_INV_sw_data[3]~input_o\,
	dataf => \ALT_INV_sw_data[0]~input_o\,
	combout => \block_coder|WideOr1~0_combout\);

-- Location: LABCELL_X88_Y13_N39
\block_dms|data0[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \block_dms|data0[5]~5_combout\ = ( !\addr[0]~input_o\ & ( \block_coder|WideOr1~0_combout\ & ( !\addr[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[1]~input_o\,
	datae => \ALT_INV_addr[0]~input_o\,
	dataf => \block_coder|ALT_INV_WideOr1~0_combout\,
	combout => \block_dms|data0[5]~5_combout\);

-- Location: LABCELL_X88_Y12_N12
\block_coder|WideOr0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \block_coder|WideOr0~0_combout\ = ( \sw_data[2]~input_o\ & ( (!\sw_data[3]~input_o\ & (\sw_data[1]~input_o\ & \sw_data[0]~input_o\)) # (\sw_data[3]~input_o\ & (!\sw_data[1]~input_o\ & !\sw_data[0]~input_o\)) ) ) # ( !\sw_data[2]~input_o\ & ( 
-- (!\sw_data[3]~input_o\ & !\sw_data[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000000110000000011000011000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sw_data[3]~input_o\,
	datac => \ALT_INV_sw_data[1]~input_o\,
	datad => \ALT_INV_sw_data[0]~input_o\,
	dataf => \ALT_INV_sw_data[2]~input_o\,
	combout => \block_coder|WideOr0~0_combout\);

-- Location: LABCELL_X88_Y13_N12
\block_dms|data0[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \block_dms|data0[6]~6_combout\ = ( \addr[0]~input_o\ & ( \block_coder|WideOr0~0_combout\ ) ) # ( !\addr[0]~input_o\ & ( \block_coder|WideOr0~0_combout\ & ( \addr[1]~input_o\ ) ) ) # ( \addr[0]~input_o\ & ( !\block_coder|WideOr0~0_combout\ ) ) # ( 
-- !\addr[0]~input_o\ & ( !\block_coder|WideOr0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_addr[1]~input_o\,
	datae => \ALT_INV_addr[0]~input_o\,
	dataf => \block_coder|ALT_INV_WideOr0~0_combout\,
	combout => \block_dms|data0[6]~6_combout\);

-- Location: LABCELL_X88_Y12_N15
\block_dms|data1[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \block_dms|data1[0]~0_combout\ = ( \block_coder|WideOr6~0_combout\ & ( (\addr[0]~input_o\ & !\addr[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[0]~input_o\,
	datac => \ALT_INV_addr[1]~input_o\,
	dataf => \block_coder|ALT_INV_WideOr6~0_combout\,
	combout => \block_dms|data1[0]~0_combout\);

-- Location: LABCELL_X88_Y12_N51
\block_dms|data1[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \block_dms|data1[1]~1_combout\ = ( \block_coder|WideOr5~0_combout\ & ( (\addr[0]~input_o\ & !\addr[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[0]~input_o\,
	datab => \ALT_INV_addr[1]~input_o\,
	dataf => \block_coder|ALT_INV_WideOr5~0_combout\,
	combout => \block_dms|data1[1]~1_combout\);

-- Location: LABCELL_X88_Y12_N0
\block_dms|data1[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \block_dms|data1[2]~2_combout\ = ( \block_coder|WideOr4~0_combout\ & ( (\addr[0]~input_o\ & !\addr[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[0]~input_o\,
	datab => \ALT_INV_addr[1]~input_o\,
	dataf => \block_coder|ALT_INV_WideOr4~0_combout\,
	combout => \block_dms|data1[2]~2_combout\);

-- Location: LABCELL_X88_Y13_N51
\block_dms|data1[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \block_dms|data1[3]~3_combout\ = ( \block_coder|WideOr3~0_combout\ & ( (!\addr[1]~input_o\ & \addr[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[1]~input_o\,
	datab => \ALT_INV_addr[0]~input_o\,
	dataf => \block_coder|ALT_INV_WideOr3~0_combout\,
	combout => \block_dms|data1[3]~3_combout\);

-- Location: LABCELL_X88_Y13_N54
\block_dms|data1[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \block_dms|data1[4]~4_combout\ = ( \block_coder|WideOr2~0_combout\ & ( (!\addr[1]~input_o\ & \addr[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[1]~input_o\,
	datab => \ALT_INV_addr[0]~input_o\,
	dataf => \block_coder|ALT_INV_WideOr2~0_combout\,
	combout => \block_dms|data1[4]~4_combout\);

-- Location: LABCELL_X88_Y13_N0
\block_dms|data1[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \block_dms|data1[5]~5_combout\ = ( \block_coder|WideOr1~0_combout\ & ( (!\addr[1]~input_o\ & \addr[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[1]~input_o\,
	datab => \ALT_INV_addr[0]~input_o\,
	dataf => \block_coder|ALT_INV_WideOr1~0_combout\,
	combout => \block_dms|data1[5]~5_combout\);

-- Location: LABCELL_X88_Y13_N6
\block_dms|data1[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \block_dms|data1[6]~6_combout\ = ( \block_coder|WideOr0~0_combout\ & ( (!\addr[1]~input_o\ & \addr[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[1]~input_o\,
	datab => \ALT_INV_addr[0]~input_o\,
	dataf => \block_coder|ALT_INV_WideOr0~0_combout\,
	combout => \block_dms|data1[6]~6_combout\);

-- Location: LABCELL_X88_Y12_N9
\block_dms|data2[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \block_dms|data2[0]~0_combout\ = ( !\addr[0]~input_o\ & ( (\addr[1]~input_o\ & \block_coder|WideOr6~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_addr[1]~input_o\,
	datac => \block_coder|ALT_INV_WideOr6~0_combout\,
	dataf => \ALT_INV_addr[0]~input_o\,
	combout => \block_dms|data2[0]~0_combout\);

-- Location: LABCELL_X88_Y12_N45
\block_dms|data2[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \block_dms|data2[1]~1_combout\ = ( \block_coder|WideOr5~0_combout\ & ( (!\addr[0]~input_o\ & \addr[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[0]~input_o\,
	datab => \ALT_INV_addr[1]~input_o\,
	dataf => \block_coder|ALT_INV_WideOr5~0_combout\,
	combout => \block_dms|data2[1]~1_combout\);

-- Location: LABCELL_X88_Y12_N57
\block_dms|data2[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \block_dms|data2[2]~2_combout\ = ( \block_coder|WideOr4~0_combout\ & ( (!\addr[0]~input_o\ & \addr[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[0]~input_o\,
	datab => \ALT_INV_addr[1]~input_o\,
	dataf => \block_coder|ALT_INV_WideOr4~0_combout\,
	combout => \block_dms|data2[2]~2_combout\);

-- Location: LABCELL_X88_Y13_N42
\block_dms|data2[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \block_dms|data2[3]~3_combout\ = ( !\addr[0]~input_o\ & ( \block_coder|WideOr3~0_combout\ & ( \addr[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_addr[1]~input_o\,
	datae => \ALT_INV_addr[0]~input_o\,
	dataf => \block_coder|ALT_INV_WideOr3~0_combout\,
	combout => \block_dms|data2[3]~3_combout\);

-- Location: LABCELL_X88_Y13_N57
\block_dms|data2[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \block_dms|data2[4]~4_combout\ = ( \block_coder|WideOr2~0_combout\ & ( (\addr[1]~input_o\ & !\addr[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[1]~input_o\,
	datab => \ALT_INV_addr[0]~input_o\,
	dataf => \block_coder|ALT_INV_WideOr2~0_combout\,
	combout => \block_dms|data2[4]~4_combout\);

-- Location: LABCELL_X88_Y13_N3
\block_dms|data2[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \block_dms|data2[5]~5_combout\ = ( \block_coder|WideOr1~0_combout\ & ( (\addr[1]~input_o\ & !\addr[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[1]~input_o\,
	datab => \ALT_INV_addr[0]~input_o\,
	dataf => \block_coder|ALT_INV_WideOr1~0_combout\,
	combout => \block_dms|data2[5]~5_combout\);

-- Location: LABCELL_X88_Y13_N21
\block_dms|data2[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \block_dms|data2[6]~6_combout\ = ( \block_coder|WideOr0~0_combout\ & ( (\addr[1]~input_o\ & !\addr[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[1]~input_o\,
	datab => \ALT_INV_addr[0]~input_o\,
	dataf => \block_coder|ALT_INV_WideOr0~0_combout\,
	combout => \block_dms|data2[6]~6_combout\);

-- Location: LABCELL_X88_Y12_N48
\block_dms|data3[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \block_dms|data3[0]~0_combout\ = ( \block_coder|WideOr6~0_combout\ & ( (\addr[0]~input_o\ & \addr[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[0]~input_o\,
	datab => \ALT_INV_addr[1]~input_o\,
	dataf => \block_coder|ALT_INV_WideOr6~0_combout\,
	combout => \block_dms|data3[0]~0_combout\);

-- Location: LABCELL_X88_Y12_N24
\block_dms|data3[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \block_dms|data3[1]~1_combout\ = ( \block_coder|WideOr5~0_combout\ & ( (\addr[0]~input_o\ & \addr[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[0]~input_o\,
	datab => \ALT_INV_addr[1]~input_o\,
	dataf => \block_coder|ALT_INV_WideOr5~0_combout\,
	combout => \block_dms|data3[1]~1_combout\);

-- Location: LABCELL_X88_Y12_N27
\block_dms|data3[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \block_dms|data3[2]~2_combout\ = ( \block_coder|WideOr4~0_combout\ & ( (\addr[0]~input_o\ & \addr[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[0]~input_o\,
	datab => \ALT_INV_addr[1]~input_o\,
	dataf => \block_coder|ALT_INV_WideOr4~0_combout\,
	combout => \block_dms|data3[2]~2_combout\);

-- Location: LABCELL_X88_Y13_N48
\block_dms|data3[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \block_dms|data3[3]~3_combout\ = ( \block_coder|WideOr3~0_combout\ & ( (\addr[1]~input_o\ & \addr[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[1]~input_o\,
	datab => \ALT_INV_addr[0]~input_o\,
	dataf => \block_coder|ALT_INV_WideOr3~0_combout\,
	combout => \block_dms|data3[3]~3_combout\);

-- Location: LABCELL_X88_Y13_N24
\block_dms|data3[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \block_dms|data3[4]~4_combout\ = ( \addr[0]~input_o\ & ( \block_coder|WideOr2~0_combout\ & ( \addr[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_addr[1]~input_o\,
	datae => \ALT_INV_addr[0]~input_o\,
	dataf => \block_coder|ALT_INV_WideOr2~0_combout\,
	combout => \block_dms|data3[4]~4_combout\);

-- Location: LABCELL_X88_Y13_N18
\block_dms|data3[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \block_dms|data3[5]~5_combout\ = ( \block_coder|WideOr1~0_combout\ & ( (\addr[1]~input_o\ & \addr[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[1]~input_o\,
	datab => \ALT_INV_addr[0]~input_o\,
	dataf => \block_coder|ALT_INV_WideOr1~0_combout\,
	combout => \block_dms|data3[5]~5_combout\);

-- Location: LABCELL_X88_Y13_N9
\block_dms|data3[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \block_dms|data3[6]~6_combout\ = ( \block_coder|WideOr0~0_combout\ & ( (\addr[1]~input_o\ & \addr[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_addr[1]~input_o\,
	datab => \ALT_INV_addr[0]~input_o\,
	dataf => \block_coder|ALT_INV_WideOr0~0_combout\,
	combout => \block_dms|data3[6]~6_combout\);

-- Location: MLABCELL_X8_Y54_N3
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


