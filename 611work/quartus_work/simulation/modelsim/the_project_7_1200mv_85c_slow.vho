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
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 12.0 Build 178 05/31/2012 SJ Full Version"

-- DATE "11/17/2016 02:44:55"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	lab4_cpu IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	d1out : OUT std_logic_vector(31 DOWNTO 0);
	d2out : OUT std_logic_vector(31 DOWNTO 0)
	);
END lab4_cpu;

-- Design Ports Information
-- clk	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_AH15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1out[0]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1out[1]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1out[2]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1out[3]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1out[4]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1out[5]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1out[6]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1out[7]	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1out[8]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1out[9]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1out[10]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1out[11]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1out[12]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1out[13]	=>  Location: PIN_AE25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1out[14]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1out[15]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1out[16]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1out[17]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1out[18]	=>  Location: PIN_A26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1out[19]	=>  Location: PIN_B26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1out[20]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1out[21]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1out[22]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1out[23]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1out[24]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1out[25]	=>  Location: PIN_B25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1out[26]	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1out[27]	=>  Location: PIN_AE24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1out[28]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1out[29]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1out[30]	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1out[31]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2out[0]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2out[1]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2out[2]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2out[3]	=>  Location: PIN_AE21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2out[4]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2out[5]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2out[6]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2out[7]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2out[8]	=>  Location: PIN_AF22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2out[9]	=>  Location: PIN_G25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2out[10]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2out[11]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2out[12]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2out[13]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2out[14]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2out[15]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2out[16]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2out[17]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2out[18]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2out[19]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2out[20]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2out[21]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2out[22]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2out[23]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2out[24]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2out[25]	=>  Location: PIN_AC22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2out[26]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2out[27]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2out[28]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2out[29]	=>  Location: PIN_C24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2out[30]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2out[31]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab4_cpu IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_d1out : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_d2out : std_logic_vector(31 DOWNTO 0);
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \d1out[0]~output_o\ : std_logic;
SIGNAL \d1out[1]~output_o\ : std_logic;
SIGNAL \d1out[2]~output_o\ : std_logic;
SIGNAL \d1out[3]~output_o\ : std_logic;
SIGNAL \d1out[4]~output_o\ : std_logic;
SIGNAL \d1out[5]~output_o\ : std_logic;
SIGNAL \d1out[6]~output_o\ : std_logic;
SIGNAL \d1out[7]~output_o\ : std_logic;
SIGNAL \d1out[8]~output_o\ : std_logic;
SIGNAL \d1out[9]~output_o\ : std_logic;
SIGNAL \d1out[10]~output_o\ : std_logic;
SIGNAL \d1out[11]~output_o\ : std_logic;
SIGNAL \d1out[12]~output_o\ : std_logic;
SIGNAL \d1out[13]~output_o\ : std_logic;
SIGNAL \d1out[14]~output_o\ : std_logic;
SIGNAL \d1out[15]~output_o\ : std_logic;
SIGNAL \d1out[16]~output_o\ : std_logic;
SIGNAL \d1out[17]~output_o\ : std_logic;
SIGNAL \d1out[18]~output_o\ : std_logic;
SIGNAL \d1out[19]~output_o\ : std_logic;
SIGNAL \d1out[20]~output_o\ : std_logic;
SIGNAL \d1out[21]~output_o\ : std_logic;
SIGNAL \d1out[22]~output_o\ : std_logic;
SIGNAL \d1out[23]~output_o\ : std_logic;
SIGNAL \d1out[24]~output_o\ : std_logic;
SIGNAL \d1out[25]~output_o\ : std_logic;
SIGNAL \d1out[26]~output_o\ : std_logic;
SIGNAL \d1out[27]~output_o\ : std_logic;
SIGNAL \d1out[28]~output_o\ : std_logic;
SIGNAL \d1out[29]~output_o\ : std_logic;
SIGNAL \d1out[30]~output_o\ : std_logic;
SIGNAL \d1out[31]~output_o\ : std_logic;
SIGNAL \d2out[0]~output_o\ : std_logic;
SIGNAL \d2out[1]~output_o\ : std_logic;
SIGNAL \d2out[2]~output_o\ : std_logic;
SIGNAL \d2out[3]~output_o\ : std_logic;
SIGNAL \d2out[4]~output_o\ : std_logic;
SIGNAL \d2out[5]~output_o\ : std_logic;
SIGNAL \d2out[6]~output_o\ : std_logic;
SIGNAL \d2out[7]~output_o\ : std_logic;
SIGNAL \d2out[8]~output_o\ : std_logic;
SIGNAL \d2out[9]~output_o\ : std_logic;
SIGNAL \d2out[10]~output_o\ : std_logic;
SIGNAL \d2out[11]~output_o\ : std_logic;
SIGNAL \d2out[12]~output_o\ : std_logic;
SIGNAL \d2out[13]~output_o\ : std_logic;
SIGNAL \d2out[14]~output_o\ : std_logic;
SIGNAL \d2out[15]~output_o\ : std_logic;
SIGNAL \d2out[16]~output_o\ : std_logic;
SIGNAL \d2out[17]~output_o\ : std_logic;
SIGNAL \d2out[18]~output_o\ : std_logic;
SIGNAL \d2out[19]~output_o\ : std_logic;
SIGNAL \d2out[20]~output_o\ : std_logic;
SIGNAL \d2out[21]~output_o\ : std_logic;
SIGNAL \d2out[22]~output_o\ : std_logic;
SIGNAL \d2out[23]~output_o\ : std_logic;
SIGNAL \d2out[24]~output_o\ : std_logic;
SIGNAL \d2out[25]~output_o\ : std_logic;
SIGNAL \d2out[26]~output_o\ : std_logic;
SIGNAL \d2out[27]~output_o\ : std_logic;
SIGNAL \d2out[28]~output_o\ : std_logic;
SIGNAL \d2out[29]~output_o\ : std_logic;
SIGNAL \d2out[30]~output_o\ : std_logic;
SIGNAL \d2out[31]~output_o\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
d1out <= ww_d1out;
d2out <= ww_d2out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X7_Y73_N16
\d1out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \d1out[0]~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\d1out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \d1out[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\d1out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \d1out[2]~output_o\);

-- Location: IOOBUF_X94_Y0_N2
\d1out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \d1out[3]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\d1out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \d1out[4]~output_o\);

-- Location: IOOBUF_X85_Y0_N16
\d1out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \d1out[5]~output_o\);

-- Location: IOOBUF_X96_Y0_N23
\d1out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \d1out[6]~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\d1out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \d1out[7]~output_o\);

-- Location: IOOBUF_X81_Y0_N23
\d1out[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \d1out[8]~output_o\);

-- Location: IOOBUF_X96_Y0_N16
\d1out[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \d1out[9]~output_o\);

-- Location: IOOBUF_X60_Y0_N9
\d1out[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \d1out[10]~output_o\);

-- Location: IOOBUF_X49_Y0_N23
\d1out[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \d1out[11]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\d1out[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \d1out[12]~output_o\);

-- Location: IOOBUF_X89_Y0_N9
\d1out[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \d1out[13]~output_o\);

-- Location: IOOBUF_X45_Y0_N23
\d1out[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \d1out[14]~output_o\);

-- Location: IOOBUF_X29_Y0_N16
\d1out[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \d1out[15]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\d1out[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \d1out[16]~output_o\);

-- Location: IOOBUF_X115_Y32_N9
\d1out[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \d1out[17]~output_o\);

-- Location: IOOBUF_X109_Y73_N2
\d1out[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \d1out[18]~output_o\);

-- Location: IOOBUF_X113_Y73_N9
\d1out[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \d1out[19]~output_o\);

-- Location: IOOBUF_X83_Y0_N9
\d1out[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \d1out[20]~output_o\);

-- Location: IOOBUF_X100_Y0_N23
\d1out[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \d1out[21]~output_o\);

-- Location: IOOBUF_X65_Y0_N23
\d1out[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \d1out[22]~output_o\);

-- Location: IOOBUF_X83_Y0_N2
\d1out[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \d1out[23]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\d1out[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \d1out[24]~output_o\);

-- Location: IOOBUF_X107_Y73_N2
\d1out[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \d1out[25]~output_o\);

-- Location: IOOBUF_X85_Y0_N23
\d1out[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \d1out[26]~output_o\);

-- Location: IOOBUF_X100_Y0_N16
\d1out[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \d1out[27]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\d1out[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \d1out[28]~output_o\);

-- Location: IOOBUF_X0_Y42_N9
\d1out[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \d1out[29]~output_o\);

-- Location: IOOBUF_X18_Y0_N2
\d1out[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \d1out[30]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\d1out[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \d1out[31]~output_o\);

-- Location: IOOBUF_X0_Y55_N16
\d2out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \d2out[0]~output_o\);

-- Location: IOOBUF_X81_Y0_N16
\d2out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \d2out[1]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\d2out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \d2out[2]~output_o\);

-- Location: IOOBUF_X85_Y0_N2
\d2out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \d2out[3]~output_o\);

-- Location: IOOBUF_X47_Y0_N2
\d2out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \d2out[4]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\d2out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \d2out[5]~output_o\);

-- Location: IOOBUF_X27_Y0_N23
\d2out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \d2out[6]~output_o\);

-- Location: IOOBUF_X0_Y66_N23
\d2out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \d2out[7]~output_o\);

-- Location: IOOBUF_X96_Y0_N2
\d2out[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \d2out[8]~output_o\);

-- Location: IOOBUF_X115_Y66_N16
\d2out[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \d2out[9]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\d2out[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \d2out[10]~output_o\);

-- Location: IOOBUF_X0_Y4_N9
\d2out[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \d2out[11]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\d2out[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \d2out[12]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\d2out[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \d2out[13]~output_o\);

-- Location: IOOBUF_X65_Y0_N16
\d2out[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \d2out[14]~output_o\);

-- Location: IOOBUF_X105_Y0_N16
\d2out[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \d2out[15]~output_o\);

-- Location: IOOBUF_X45_Y73_N9
\d2out[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \d2out[16]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\d2out[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \d2out[17]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\d2out[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \d2out[18]~output_o\);

-- Location: IOOBUF_X60_Y73_N9
\d2out[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \d2out[19]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\d2out[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \d2out[20]~output_o\);

-- Location: IOOBUF_X91_Y0_N23
\d2out[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \d2out[21]~output_o\);

-- Location: IOOBUF_X109_Y0_N9
\d2out[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \d2out[22]~output_o\);

-- Location: IOOBUF_X79_Y0_N9
\d2out[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \d2out[23]~output_o\);

-- Location: IOOBUF_X91_Y0_N16
\d2out[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \d2out[24]~output_o\);

-- Location: IOOBUF_X109_Y0_N2
\d2out[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \d2out[25]~output_o\);

-- Location: IOOBUF_X20_Y73_N23
\d2out[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \d2out[26]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\d2out[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \d2out[27]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\d2out[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \d2out[28]~output_o\);

-- Location: IOOBUF_X98_Y73_N16
\d2out[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \d2out[29]~output_o\);

-- Location: IOOBUF_X29_Y0_N23
\d2out[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \d2out[30]~output_o\);

-- Location: IOOBUF_X115_Y53_N16
\d2out[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \d2out[31]~output_o\);

-- Location: IOIBUF_X58_Y0_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: IOIBUF_X58_Y0_N1
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

ww_d1out(0) <= \d1out[0]~output_o\;

ww_d1out(1) <= \d1out[1]~output_o\;

ww_d1out(2) <= \d1out[2]~output_o\;

ww_d1out(3) <= \d1out[3]~output_o\;

ww_d1out(4) <= \d1out[4]~output_o\;

ww_d1out(5) <= \d1out[5]~output_o\;

ww_d1out(6) <= \d1out[6]~output_o\;

ww_d1out(7) <= \d1out[7]~output_o\;

ww_d1out(8) <= \d1out[8]~output_o\;

ww_d1out(9) <= \d1out[9]~output_o\;

ww_d1out(10) <= \d1out[10]~output_o\;

ww_d1out(11) <= \d1out[11]~output_o\;

ww_d1out(12) <= \d1out[12]~output_o\;

ww_d1out(13) <= \d1out[13]~output_o\;

ww_d1out(14) <= \d1out[14]~output_o\;

ww_d1out(15) <= \d1out[15]~output_o\;

ww_d1out(16) <= \d1out[16]~output_o\;

ww_d1out(17) <= \d1out[17]~output_o\;

ww_d1out(18) <= \d1out[18]~output_o\;

ww_d1out(19) <= \d1out[19]~output_o\;

ww_d1out(20) <= \d1out[20]~output_o\;

ww_d1out(21) <= \d1out[21]~output_o\;

ww_d1out(22) <= \d1out[22]~output_o\;

ww_d1out(23) <= \d1out[23]~output_o\;

ww_d1out(24) <= \d1out[24]~output_o\;

ww_d1out(25) <= \d1out[25]~output_o\;

ww_d1out(26) <= \d1out[26]~output_o\;

ww_d1out(27) <= \d1out[27]~output_o\;

ww_d1out(28) <= \d1out[28]~output_o\;

ww_d1out(29) <= \d1out[29]~output_o\;

ww_d1out(30) <= \d1out[30]~output_o\;

ww_d1out(31) <= \d1out[31]~output_o\;

ww_d2out(0) <= \d2out[0]~output_o\;

ww_d2out(1) <= \d2out[1]~output_o\;

ww_d2out(2) <= \d2out[2]~output_o\;

ww_d2out(3) <= \d2out[3]~output_o\;

ww_d2out(4) <= \d2out[4]~output_o\;

ww_d2out(5) <= \d2out[5]~output_o\;

ww_d2out(6) <= \d2out[6]~output_o\;

ww_d2out(7) <= \d2out[7]~output_o\;

ww_d2out(8) <= \d2out[8]~output_o\;

ww_d2out(9) <= \d2out[9]~output_o\;

ww_d2out(10) <= \d2out[10]~output_o\;

ww_d2out(11) <= \d2out[11]~output_o\;

ww_d2out(12) <= \d2out[12]~output_o\;

ww_d2out(13) <= \d2out[13]~output_o\;

ww_d2out(14) <= \d2out[14]~output_o\;

ww_d2out(15) <= \d2out[15]~output_o\;

ww_d2out(16) <= \d2out[16]~output_o\;

ww_d2out(17) <= \d2out[17]~output_o\;

ww_d2out(18) <= \d2out[18]~output_o\;

ww_d2out(19) <= \d2out[19]~output_o\;

ww_d2out(20) <= \d2out[20]~output_o\;

ww_d2out(21) <= \d2out[21]~output_o\;

ww_d2out(22) <= \d2out[22]~output_o\;

ww_d2out(23) <= \d2out[23]~output_o\;

ww_d2out(24) <= \d2out[24]~output_o\;

ww_d2out(25) <= \d2out[25]~output_o\;

ww_d2out(26) <= \d2out[26]~output_o\;

ww_d2out(27) <= \d2out[27]~output_o\;

ww_d2out(28) <= \d2out[28]~output_o\;

ww_d2out(29) <= \d2out[29]~output_o\;

ww_d2out(30) <= \d2out[30]~output_o\;

ww_d2out(31) <= \d2out[31]~output_o\;
END structure;


