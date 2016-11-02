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

-- DATE "10/27/2016 18:15:47"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
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

ENTITY 	lab3_top IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(17 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	HEX6 : OUT std_logic_vector(6 DOWNTO 0);
	HEX7 : OUT std_logic_vector(6 DOWNTO 0)
	);
END lab3_top;

-- Design Ports Information
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AB20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[3]	=>  Location: PIN_AA21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[4]	=>  Location: PIN_AD24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[5]	=>  Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[6]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[0]	=>  Location: PIN_AB19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[1]	=>  Location: PIN_AA19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[2]	=>  Location: PIN_AG21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[3]	=>  Location: PIN_AH21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[4]	=>  Location: PIN_AE19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[5]	=>  Location: PIN_AF19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[6]	=>  Location: PIN_AE18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[0]	=>  Location: PIN_AD18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[1]	=>  Location: PIN_AC18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[2]	=>  Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[3]	=>  Location: PIN_AH19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[4]	=>  Location: PIN_AG19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[5]	=>  Location: PIN_AF18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[6]	=>  Location: PIN_AH18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[0]	=>  Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[1]	=>  Location: PIN_AB16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[2]	=>  Location: PIN_AA16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[3]	=>  Location: PIN_AB17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[4]	=>  Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[5]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[6]	=>  Location: PIN_AC17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[0]	=>  Location: PIN_AD17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[1]	=>  Location: PIN_AE17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[2]	=>  Location: PIN_AG17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[3]	=>  Location: PIN_AH17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[4]	=>  Location: PIN_AF17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[5]	=>  Location: PIN_AG18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[6]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[16]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[17]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab3_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_SW : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX7 : std_logic_vector(6 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \HEX6[0]~output_o\ : std_logic;
SIGNAL \HEX6[1]~output_o\ : std_logic;
SIGNAL \HEX6[2]~output_o\ : std_logic;
SIGNAL \HEX6[3]~output_o\ : std_logic;
SIGNAL \HEX6[4]~output_o\ : std_logic;
SIGNAL \HEX6[5]~output_o\ : std_logic;
SIGNAL \HEX6[6]~output_o\ : std_logic;
SIGNAL \HEX7[0]~output_o\ : std_logic;
SIGNAL \HEX7[1]~output_o\ : std_logic;
SIGNAL \HEX7[2]~output_o\ : std_logic;
SIGNAL \HEX7[3]~output_o\ : std_logic;
SIGNAL \HEX7[4]~output_o\ : std_logic;
SIGNAL \HEX7[5]~output_o\ : std_logic;
SIGNAL \HEX7[6]~output_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \r|array[30][2]~feeder_combout\ : std_logic;
SIGNAL \r|array[30][2]~q\ : std_logic;
SIGNAL \r|reg30_out[2]~feeder_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \r|array[30][1]~feeder_combout\ : std_logic;
SIGNAL \r|array[30][1]~q\ : std_logic;
SIGNAL \r|reg30_out[1]~feeder_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \r|array[30][3]~feeder_combout\ : std_logic;
SIGNAL \r|array[30][3]~q\ : std_logic;
SIGNAL \r|reg30_out[3]~feeder_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \r|array[30][0]~feeder_combout\ : std_logic;
SIGNAL \r|array[30][0]~q\ : std_logic;
SIGNAL \r|reg30_out[0]~feeder_combout\ : std_logic;
SIGNAL \a|WideOr6~0_combout\ : std_logic;
SIGNAL \a|WideOr5~0_combout\ : std_logic;
SIGNAL \a|WideOr4~0_combout\ : std_logic;
SIGNAL \a|WideOr3~0_combout\ : std_logic;
SIGNAL \a|WideOr2~0_combout\ : std_logic;
SIGNAL \a|WideOr1~0_combout\ : std_logic;
SIGNAL \a|WideOr0~0_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \r|array[30][5]~feeder_combout\ : std_logic;
SIGNAL \r|array[30][5]~q\ : std_logic;
SIGNAL \r|reg30_out[5]~feeder_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \r|array[30][6]~q\ : std_logic;
SIGNAL \r|reg30_out[6]~feeder_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \r|array[30][4]~feeder_combout\ : std_logic;
SIGNAL \r|array[30][4]~q\ : std_logic;
SIGNAL \r|reg30_out[4]~feeder_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \r|array[30][7]~feeder_combout\ : std_logic;
SIGNAL \r|array[30][7]~q\ : std_logic;
SIGNAL \r|reg30_out[7]~feeder_combout\ : std_logic;
SIGNAL \b|WideOr6~0_combout\ : std_logic;
SIGNAL \b|WideOr5~0_combout\ : std_logic;
SIGNAL \b|WideOr4~0_combout\ : std_logic;
SIGNAL \b|WideOr3~0_combout\ : std_logic;
SIGNAL \b|WideOr2~0_combout\ : std_logic;
SIGNAL \b|WideOr1~0_combout\ : std_logic;
SIGNAL \b|WideOr0~0_combout\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \r|array[30][9]~feeder_combout\ : std_logic;
SIGNAL \r|array[30][9]~q\ : std_logic;
SIGNAL \r|reg30_out[9]~feeder_combout\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \r|array[30][10]~feeder_combout\ : std_logic;
SIGNAL \r|array[30][10]~q\ : std_logic;
SIGNAL \r|reg30_out[10]~feeder_combout\ : std_logic;
SIGNAL \SW[11]~input_o\ : std_logic;
SIGNAL \r|array[30][11]~feeder_combout\ : std_logic;
SIGNAL \r|array[30][11]~q\ : std_logic;
SIGNAL \r|reg30_out[11]~feeder_combout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \r|array[30][8]~feeder_combout\ : std_logic;
SIGNAL \r|array[30][8]~q\ : std_logic;
SIGNAL \r|reg30_out[8]~feeder_combout\ : std_logic;
SIGNAL \c|WideOr6~0_combout\ : std_logic;
SIGNAL \c|WideOr5~0_combout\ : std_logic;
SIGNAL \c|WideOr4~0_combout\ : std_logic;
SIGNAL \c|WideOr3~0_combout\ : std_logic;
SIGNAL \c|WideOr2~0_combout\ : std_logic;
SIGNAL \c|WideOr1~0_combout\ : std_logic;
SIGNAL \c|WideOr0~0_combout\ : std_logic;
SIGNAL \SW[14]~input_o\ : std_logic;
SIGNAL \r|array[30][14]~feeder_combout\ : std_logic;
SIGNAL \r|array[30][14]~q\ : std_logic;
SIGNAL \r|reg30_out[14]~feeder_combout\ : std_logic;
SIGNAL \SW[12]~input_o\ : std_logic;
SIGNAL \r|array[30][12]~feeder_combout\ : std_logic;
SIGNAL \r|array[30][12]~q\ : std_logic;
SIGNAL \r|reg30_out[12]~feeder_combout\ : std_logic;
SIGNAL \SW[13]~input_o\ : std_logic;
SIGNAL \r|array[30][13]~feeder_combout\ : std_logic;
SIGNAL \r|array[30][13]~q\ : std_logic;
SIGNAL \r|reg30_out[13]~feeder_combout\ : std_logic;
SIGNAL \SW[15]~input_o\ : std_logic;
SIGNAL \r|array[30][15]~feeder_combout\ : std_logic;
SIGNAL \r|array[30][15]~q\ : std_logic;
SIGNAL \r|reg30_out[15]~feeder_combout\ : std_logic;
SIGNAL \d|WideOr6~0_combout\ : std_logic;
SIGNAL \d|WideOr5~0_combout\ : std_logic;
SIGNAL \d|WideOr4~0_combout\ : std_logic;
SIGNAL \d|WideOr3~0_combout\ : std_logic;
SIGNAL \d|WideOr2~0_combout\ : std_logic;
SIGNAL \d|WideOr1~0_combout\ : std_logic;
SIGNAL \d|WideOr0~0_combout\ : std_logic;
SIGNAL \SW[16]~input_o\ : std_logic;
SIGNAL \r|array[30][16]~q\ : std_logic;
SIGNAL \r|reg30_out[16]~feeder_combout\ : std_logic;
SIGNAL \SW[17]~input_o\ : std_logic;
SIGNAL \r|array[30][17]~feeder_combout\ : std_logic;
SIGNAL \r|array[30][17]~q\ : std_logic;
SIGNAL \r|reg30_out[17]~feeder_combout\ : std_logic;
SIGNAL \e|Decoder0~0_combout\ : std_logic;
SIGNAL \e|WideOr4~0_combout\ : std_logic;
SIGNAL \e|Decoder0~1_combout\ : std_logic;
SIGNAL \r|reg30_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \r|ALT_INV_reg30_out\ : std_logic_vector(17 DOWNTO 17);
SIGNAL \d|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \c|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \b|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \a|ALT_INV_WideOr0~0_combout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
HEX6 <= ww_HEX6;
HEX7 <= ww_HEX7;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\r|ALT_INV_reg30_out\(17) <= NOT \r|reg30_out\(17);
\d|ALT_INV_WideOr0~0_combout\ <= NOT \d|WideOr0~0_combout\;
\c|ALT_INV_WideOr0~0_combout\ <= NOT \c|WideOr0~0_combout\;
\b|ALT_INV_WideOr0~0_combout\ <= NOT \b|WideOr0~0_combout\;
\a|ALT_INV_WideOr0~0_combout\ <= NOT \a|WideOr0~0_combout\;

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a|WideOr6~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a|WideOr5~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a|WideOr4~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a|WideOr3~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a|WideOr2~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a|WideOr1~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a|ALT_INV_WideOr0~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b|WideOr6~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b|WideOr5~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b|WideOr4~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b|WideOr3~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b|WideOr2~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b|WideOr1~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b|ALT_INV_WideOr0~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c|WideOr6~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c|WideOr5~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c|WideOr4~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c|WideOr3~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c|WideOr2~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c|WideOr1~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c|ALT_INV_WideOr0~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\HEX3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d|WideOr6~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\HEX3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d|WideOr5~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\HEX3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d|WideOr4~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\HEX3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d|WideOr3~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\HEX3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d|WideOr2~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\HEX3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d|WideOr1~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\HEX3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d|ALT_INV_WideOr0~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\HEX4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e|Decoder0~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\HEX4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e|Decoder0~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\HEX4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e|WideOr4~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\HEX4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e|Decoder0~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\HEX4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \e|Decoder0~1_combout\,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\HEX4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r|reg30_out\(17),
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\HEX4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \r|ALT_INV_reg30_out\(17),
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\HEX5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\HEX5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\HEX5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\HEX5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\HEX5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\HEX5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\HEX5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\HEX6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX6[0]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\HEX6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX6[1]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\HEX6[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX6[2]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\HEX6[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX6[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\HEX6[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX6[4]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\HEX6[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX6[5]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\HEX6[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX6[6]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\HEX7[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX7[0]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\HEX7[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX7[1]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\HEX7[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX7[2]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\HEX7[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX7[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\HEX7[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX7[4]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\HEX7[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX7[5]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\HEX7[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX7[6]~output_o\);

-- Location: IOIBUF_X115_Y15_N8
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: LCCOMB_X114_Y36_N6
\r|array[30][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|array[30][2]~feeder_combout\ = \SW[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[2]~input_o\,
	combout => \r|array[30][2]~feeder_combout\);

-- Location: FF_X114_Y36_N7
\r|array[30][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \r|array[30][2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r|array[30][2]~q\);

-- Location: LCCOMB_X114_Y36_N12
\r|reg30_out[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|reg30_out[2]~feeder_combout\ = \r|array[30][2]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r|array[30][2]~q\,
	combout => \r|reg30_out[2]~feeder_combout\);

-- Location: FF_X114_Y36_N13
\r|reg30_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \r|reg30_out[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r|reg30_out\(2));

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: LCCOMB_X114_Y36_N24
\r|array[30][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|array[30][1]~feeder_combout\ = \SW[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[1]~input_o\,
	combout => \r|array[30][1]~feeder_combout\);

-- Location: FF_X114_Y36_N25
\r|array[30][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \r|array[30][1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r|array[30][1]~q\);

-- Location: LCCOMB_X114_Y36_N14
\r|reg30_out[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|reg30_out[1]~feeder_combout\ = \r|array[30][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r|array[30][1]~q\,
	combout => \r|reg30_out[1]~feeder_combout\);

-- Location: FF_X114_Y36_N15
\r|reg30_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \r|reg30_out[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r|reg30_out\(1));

-- Location: IOIBUF_X115_Y13_N8
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: LCCOMB_X114_Y36_N20
\r|array[30][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|array[30][3]~feeder_combout\ = \SW[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[3]~input_o\,
	combout => \r|array[30][3]~feeder_combout\);

-- Location: FF_X114_Y36_N21
\r|array[30][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \r|array[30][3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r|array[30][3]~q\);

-- Location: LCCOMB_X114_Y36_N22
\r|reg30_out[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|reg30_out[3]~feeder_combout\ = \r|array[30][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r|array[30][3]~q\,
	combout => \r|reg30_out[3]~feeder_combout\);

-- Location: FF_X114_Y36_N23
\r|reg30_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \r|reg30_out[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r|reg30_out\(3));

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LCCOMB_X114_Y36_N10
\r|array[30][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|array[30][0]~feeder_combout\ = \SW[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[0]~input_o\,
	combout => \r|array[30][0]~feeder_combout\);

-- Location: FF_X114_Y36_N11
\r|array[30][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \r|array[30][0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r|array[30][0]~q\);

-- Location: LCCOMB_X114_Y36_N0
\r|reg30_out[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|reg30_out[0]~feeder_combout\ = \r|array[30][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r|array[30][0]~q\,
	combout => \r|reg30_out[0]~feeder_combout\);

-- Location: FF_X114_Y36_N1
\r|reg30_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \r|reg30_out[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r|reg30_out\(0));

-- Location: LCCOMB_X114_Y36_N8
\a|WideOr6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \a|WideOr6~0_combout\ = (\r|reg30_out\(2) & (!\r|reg30_out\(1) & (\r|reg30_out\(3) $ (!\r|reg30_out\(0))))) # (!\r|reg30_out\(2) & (\r|reg30_out\(0) & (\r|reg30_out\(1) $ (!\r|reg30_out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r|reg30_out\(2),
	datab => \r|reg30_out\(1),
	datac => \r|reg30_out\(3),
	datad => \r|reg30_out\(0),
	combout => \a|WideOr6~0_combout\);

-- Location: LCCOMB_X114_Y36_N26
\a|WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \a|WideOr5~0_combout\ = (\r|reg30_out\(0) & ((\r|reg30_out\(1) $ (!\r|reg30_out\(3))))) # (!\r|reg30_out\(0) & (\r|reg30_out\(2) & ((\r|reg30_out\(1)) # (\r|reg30_out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r|reg30_out\(2),
	datab => \r|reg30_out\(1),
	datac => \r|reg30_out\(3),
	datad => \r|reg30_out\(0),
	combout => \a|WideOr5~0_combout\);

-- Location: LCCOMB_X114_Y36_N28
\a|WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \a|WideOr4~0_combout\ = (\r|reg30_out\(2) & (\r|reg30_out\(3) & ((\r|reg30_out\(1)) # (!\r|reg30_out\(0))))) # (!\r|reg30_out\(2) & (!\r|reg30_out\(3) & (\r|reg30_out\(1) $ (\r|reg30_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r|reg30_out\(2),
	datab => \r|reg30_out\(1),
	datac => \r|reg30_out\(3),
	datad => \r|reg30_out\(0),
	combout => \a|WideOr4~0_combout\);

-- Location: LCCOMB_X114_Y36_N18
\a|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \a|WideOr3~0_combout\ = (\r|reg30_out\(0) & (\r|reg30_out\(2) $ ((!\r|reg30_out\(1))))) # (!\r|reg30_out\(0) & ((\r|reg30_out\(2) & (!\r|reg30_out\(1) & !\r|reg30_out\(3))) # (!\r|reg30_out\(2) & (\r|reg30_out\(1) & \r|reg30_out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r|reg30_out\(2),
	datab => \r|reg30_out\(1),
	datac => \r|reg30_out\(3),
	datad => \r|reg30_out\(0),
	combout => \a|WideOr3~0_combout\);

-- Location: LCCOMB_X114_Y36_N16
\a|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \a|WideOr2~0_combout\ = (\r|reg30_out\(2) & (!\r|reg30_out\(3) & ((\r|reg30_out\(0)) # (!\r|reg30_out\(1))))) # (!\r|reg30_out\(2) & (\r|reg30_out\(0) & (\r|reg30_out\(1) $ (\r|reg30_out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r|reg30_out\(2),
	datab => \r|reg30_out\(1),
	datac => \r|reg30_out\(3),
	datad => \r|reg30_out\(0),
	combout => \a|WideOr2~0_combout\);

-- Location: LCCOMB_X114_Y36_N30
\a|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \a|WideOr1~0_combout\ = (\r|reg30_out\(2) & (\r|reg30_out\(0) & (\r|reg30_out\(1) $ (\r|reg30_out\(3))))) # (!\r|reg30_out\(2) & (\r|reg30_out\(1) & (!\r|reg30_out\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r|reg30_out\(2),
	datab => \r|reg30_out\(1),
	datac => \r|reg30_out\(3),
	datad => \r|reg30_out\(0),
	combout => \a|WideOr1~0_combout\);

-- Location: LCCOMB_X114_Y36_N4
\a|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \a|WideOr0~0_combout\ = (\r|reg30_out\(0) & ((\r|reg30_out\(3)) # (\r|reg30_out\(2) $ (\r|reg30_out\(1))))) # (!\r|reg30_out\(0) & ((\r|reg30_out\(1)) # (\r|reg30_out\(2) $ (\r|reg30_out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r|reg30_out\(2),
	datab => \r|reg30_out\(1),
	datac => \r|reg30_out\(3),
	datad => \r|reg30_out\(0),
	combout => \a|WideOr0~0_combout\);

-- Location: IOIBUF_X115_Y11_N8
\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: LCCOMB_X114_Y22_N20
\r|array[30][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|array[30][5]~feeder_combout\ = \SW[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[5]~input_o\,
	combout => \r|array[30][5]~feeder_combout\);

-- Location: FF_X114_Y22_N21
\r|array[30][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \r|array[30][5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r|array[30][5]~q\);

-- Location: LCCOMB_X114_Y22_N22
\r|reg30_out[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|reg30_out[5]~feeder_combout\ = \r|array[30][5]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r|array[30][5]~q\,
	combout => \r|reg30_out[5]~feeder_combout\);

-- Location: FF_X114_Y22_N23
\r|reg30_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \r|reg30_out[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r|reg30_out\(5));

-- Location: IOIBUF_X115_Y10_N1
\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: FF_X114_Y22_N11
\r|array[30][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r|array[30][6]~q\);

-- Location: LCCOMB_X114_Y22_N16
\r|reg30_out[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|reg30_out[6]~feeder_combout\ = \r|array[30][6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r|array[30][6]~q\,
	combout => \r|reg30_out[6]~feeder_combout\);

-- Location: FF_X114_Y22_N17
\r|reg30_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \r|reg30_out[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r|reg30_out\(6));

-- Location: IOIBUF_X115_Y18_N8
\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: LCCOMB_X114_Y22_N18
\r|array[30][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|array[30][4]~feeder_combout\ = \SW[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[4]~input_o\,
	combout => \r|array[30][4]~feeder_combout\);

-- Location: FF_X114_Y22_N19
\r|array[30][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \r|array[30][4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r|array[30][4]~q\);

-- Location: LCCOMB_X114_Y22_N8
\r|reg30_out[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|reg30_out[4]~feeder_combout\ = \r|array[30][4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r|array[30][4]~q\,
	combout => \r|reg30_out[4]~feeder_combout\);

-- Location: FF_X114_Y22_N9
\r|reg30_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \r|reg30_out[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r|reg30_out\(4));

-- Location: IOIBUF_X115_Y15_N1
\SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: LCCOMB_X114_Y22_N0
\r|array[30][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|array[30][7]~feeder_combout\ = \SW[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[7]~input_o\,
	combout => \r|array[30][7]~feeder_combout\);

-- Location: FF_X114_Y22_N1
\r|array[30][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \r|array[30][7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r|array[30][7]~q\);

-- Location: LCCOMB_X114_Y22_N6
\r|reg30_out[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|reg30_out[7]~feeder_combout\ = \r|array[30][7]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r|array[30][7]~q\,
	combout => \r|reg30_out[7]~feeder_combout\);

-- Location: FF_X114_Y22_N7
\r|reg30_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \r|reg30_out[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r|reg30_out\(7));

-- Location: LCCOMB_X114_Y22_N12
\b|WideOr6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b|WideOr6~0_combout\ = (\r|reg30_out\(6) & (!\r|reg30_out\(5) & (\r|reg30_out\(4) $ (!\r|reg30_out\(7))))) # (!\r|reg30_out\(6) & (\r|reg30_out\(4) & (\r|reg30_out\(5) $ (!\r|reg30_out\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r|reg30_out\(5),
	datab => \r|reg30_out\(6),
	datac => \r|reg30_out\(4),
	datad => \r|reg30_out\(7),
	combout => \b|WideOr6~0_combout\);

-- Location: LCCOMB_X114_Y22_N2
\b|WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b|WideOr5~0_combout\ = (\r|reg30_out\(4) & (\r|reg30_out\(5) $ (((!\r|reg30_out\(7)))))) # (!\r|reg30_out\(4) & (\r|reg30_out\(6) & ((\r|reg30_out\(5)) # (\r|reg30_out\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r|reg30_out\(5),
	datab => \r|reg30_out\(6),
	datac => \r|reg30_out\(4),
	datad => \r|reg30_out\(7),
	combout => \b|WideOr5~0_combout\);

-- Location: LCCOMB_X114_Y22_N24
\b|WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b|WideOr4~0_combout\ = (\r|reg30_out\(6) & (\r|reg30_out\(7) & ((\r|reg30_out\(5)) # (!\r|reg30_out\(4))))) # (!\r|reg30_out\(6) & (!\r|reg30_out\(7) & (\r|reg30_out\(5) $ (\r|reg30_out\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r|reg30_out\(5),
	datab => \r|reg30_out\(6),
	datac => \r|reg30_out\(4),
	datad => \r|reg30_out\(7),
	combout => \b|WideOr4~0_combout\);

-- Location: LCCOMB_X114_Y22_N30
\b|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b|WideOr3~0_combout\ = (\r|reg30_out\(4) & (\r|reg30_out\(5) $ ((!\r|reg30_out\(6))))) # (!\r|reg30_out\(4) & ((\r|reg30_out\(5) & (!\r|reg30_out\(6) & \r|reg30_out\(7))) # (!\r|reg30_out\(5) & (\r|reg30_out\(6) & !\r|reg30_out\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r|reg30_out\(5),
	datab => \r|reg30_out\(6),
	datac => \r|reg30_out\(4),
	datad => \r|reg30_out\(7),
	combout => \b|WideOr3~0_combout\);

-- Location: LCCOMB_X114_Y22_N28
\b|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b|WideOr2~0_combout\ = (\r|reg30_out\(5) & (((\r|reg30_out\(4) & !\r|reg30_out\(7))))) # (!\r|reg30_out\(5) & ((\r|reg30_out\(6) & ((!\r|reg30_out\(7)))) # (!\r|reg30_out\(6) & (\r|reg30_out\(4) & \r|reg30_out\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r|reg30_out\(5),
	datab => \r|reg30_out\(6),
	datac => \r|reg30_out\(4),
	datad => \r|reg30_out\(7),
	combout => \b|WideOr2~0_combout\);

-- Location: LCCOMB_X114_Y22_N14
\b|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b|WideOr1~0_combout\ = (\r|reg30_out\(6) & (\r|reg30_out\(4) & (\r|reg30_out\(5) $ (\r|reg30_out\(7))))) # (!\r|reg30_out\(6) & (\r|reg30_out\(5) & ((!\r|reg30_out\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r|reg30_out\(5),
	datab => \r|reg30_out\(6),
	datac => \r|reg30_out\(4),
	datad => \r|reg30_out\(7),
	combout => \b|WideOr1~0_combout\);

-- Location: LCCOMB_X114_Y22_N4
\b|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b|WideOr0~0_combout\ = (\r|reg30_out\(4) & ((\r|reg30_out\(7)) # (\r|reg30_out\(5) $ (\r|reg30_out\(6))))) # (!\r|reg30_out\(4) & ((\r|reg30_out\(5)) # (\r|reg30_out\(6) $ (\r|reg30_out\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r|reg30_out\(5),
	datab => \r|reg30_out\(6),
	datac => \r|reg30_out\(4),
	datad => \r|reg30_out\(7),
	combout => \b|WideOr0~0_combout\);

-- Location: IOIBUF_X115_Y16_N8
\SW[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: LCCOMB_X114_Y16_N28
\r|array[30][9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|array[30][9]~feeder_combout\ = \SW[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[9]~input_o\,
	combout => \r|array[30][9]~feeder_combout\);

-- Location: FF_X114_Y16_N29
\r|array[30][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \r|array[30][9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r|array[30][9]~q\);

-- Location: LCCOMB_X114_Y16_N30
\r|reg30_out[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|reg30_out[9]~feeder_combout\ = \r|array[30][9]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r|array[30][9]~q\,
	combout => \r|reg30_out[9]~feeder_combout\);

-- Location: FF_X114_Y16_N31
\r|reg30_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \r|reg30_out[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r|reg30_out\(9));

-- Location: IOIBUF_X115_Y4_N15
\SW[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(10),
	o => \SW[10]~input_o\);

-- Location: LCCOMB_X114_Y16_N10
\r|array[30][10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|array[30][10]~feeder_combout\ = \SW[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[10]~input_o\,
	combout => \r|array[30][10]~feeder_combout\);

-- Location: FF_X114_Y16_N11
\r|array[30][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \r|array[30][10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r|array[30][10]~q\);

-- Location: LCCOMB_X114_Y16_N4
\r|reg30_out[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|reg30_out[10]~feeder_combout\ = \r|array[30][10]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r|array[30][10]~q\,
	combout => \r|reg30_out[10]~feeder_combout\);

-- Location: FF_X114_Y16_N5
\r|reg30_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \r|reg30_out[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r|reg30_out\(10));

-- Location: IOIBUF_X115_Y5_N15
\SW[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(11),
	o => \SW[11]~input_o\);

-- Location: LCCOMB_X114_Y16_N24
\r|array[30][11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|array[30][11]~feeder_combout\ = \SW[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[11]~input_o\,
	combout => \r|array[30][11]~feeder_combout\);

-- Location: FF_X114_Y16_N25
\r|array[30][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \r|array[30][11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r|array[30][11]~q\);

-- Location: LCCOMB_X114_Y16_N22
\r|reg30_out[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|reg30_out[11]~feeder_combout\ = \r|array[30][11]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r|array[30][11]~q\,
	combout => \r|reg30_out[11]~feeder_combout\);

-- Location: FF_X114_Y16_N23
\r|reg30_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \r|reg30_out[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r|reg30_out\(11));

-- Location: IOIBUF_X115_Y4_N22
\SW[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: LCCOMB_X114_Y16_N6
\r|array[30][8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|array[30][8]~feeder_combout\ = \SW[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[8]~input_o\,
	combout => \r|array[30][8]~feeder_combout\);

-- Location: FF_X114_Y16_N7
\r|array[30][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \r|array[30][8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r|array[30][8]~q\);

-- Location: LCCOMB_X114_Y16_N20
\r|reg30_out[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|reg30_out[8]~feeder_combout\ = \r|array[30][8]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r|array[30][8]~q\,
	combout => \r|reg30_out[8]~feeder_combout\);

-- Location: FF_X114_Y16_N21
\r|reg30_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \r|reg30_out[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r|reg30_out\(8));

-- Location: LCCOMB_X114_Y16_N12
\c|WideOr6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c|WideOr6~0_combout\ = (\r|reg30_out\(10) & (!\r|reg30_out\(9) & (\r|reg30_out\(11) $ (!\r|reg30_out\(8))))) # (!\r|reg30_out\(10) & (\r|reg30_out\(8) & (\r|reg30_out\(9) $ (!\r|reg30_out\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r|reg30_out\(9),
	datab => \r|reg30_out\(10),
	datac => \r|reg30_out\(11),
	datad => \r|reg30_out\(8),
	combout => \c|WideOr6~0_combout\);

-- Location: LCCOMB_X114_Y16_N2
\c|WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c|WideOr5~0_combout\ = (\r|reg30_out\(8) & (\r|reg30_out\(9) $ (((!\r|reg30_out\(11)))))) # (!\r|reg30_out\(8) & (\r|reg30_out\(10) & ((\r|reg30_out\(9)) # (\r|reg30_out\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r|reg30_out\(9),
	datab => \r|reg30_out\(10),
	datac => \r|reg30_out\(11),
	datad => \r|reg30_out\(8),
	combout => \c|WideOr5~0_combout\);

-- Location: LCCOMB_X114_Y16_N16
\c|WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c|WideOr4~0_combout\ = (\r|reg30_out\(10) & (\r|reg30_out\(11) & ((\r|reg30_out\(9)) # (!\r|reg30_out\(8))))) # (!\r|reg30_out\(10) & (!\r|reg30_out\(11) & (\r|reg30_out\(9) $ (\r|reg30_out\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r|reg30_out\(9),
	datab => \r|reg30_out\(10),
	datac => \r|reg30_out\(11),
	datad => \r|reg30_out\(8),
	combout => \c|WideOr4~0_combout\);

-- Location: LCCOMB_X114_Y16_N18
\c|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c|WideOr3~0_combout\ = (\r|reg30_out\(8) & (\r|reg30_out\(9) $ ((!\r|reg30_out\(10))))) # (!\r|reg30_out\(8) & ((\r|reg30_out\(9) & (!\r|reg30_out\(10) & \r|reg30_out\(11))) # (!\r|reg30_out\(9) & (\r|reg30_out\(10) & !\r|reg30_out\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r|reg30_out\(9),
	datab => \r|reg30_out\(10),
	datac => \r|reg30_out\(11),
	datad => \r|reg30_out\(8),
	combout => \c|WideOr3~0_combout\);

-- Location: LCCOMB_X114_Y16_N8
\c|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c|WideOr2~0_combout\ = (\r|reg30_out\(9) & (((!\r|reg30_out\(11) & \r|reg30_out\(8))))) # (!\r|reg30_out\(9) & ((\r|reg30_out\(10) & (!\r|reg30_out\(11))) # (!\r|reg30_out\(10) & (\r|reg30_out\(11) & \r|reg30_out\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r|reg30_out\(9),
	datab => \r|reg30_out\(10),
	datac => \r|reg30_out\(11),
	datad => \r|reg30_out\(8),
	combout => \c|WideOr2~0_combout\);

-- Location: LCCOMB_X114_Y16_N14
\c|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c|WideOr1~0_combout\ = (\r|reg30_out\(10) & (\r|reg30_out\(8) & (\r|reg30_out\(9) $ (\r|reg30_out\(11))))) # (!\r|reg30_out\(10) & (\r|reg30_out\(9) & (!\r|reg30_out\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r|reg30_out\(9),
	datab => \r|reg30_out\(10),
	datac => \r|reg30_out\(11),
	datad => \r|reg30_out\(8),
	combout => \c|WideOr1~0_combout\);

-- Location: LCCOMB_X114_Y16_N0
\c|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c|WideOr0~0_combout\ = (\r|reg30_out\(8) & ((\r|reg30_out\(11)) # (\r|reg30_out\(9) $ (\r|reg30_out\(10))))) # (!\r|reg30_out\(8) & ((\r|reg30_out\(9)) # (\r|reg30_out\(10) $ (\r|reg30_out\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r|reg30_out\(9),
	datab => \r|reg30_out\(10),
	datac => \r|reg30_out\(11),
	datad => \r|reg30_out\(8),
	combout => \c|WideOr0~0_combout\);

-- Location: IOIBUF_X115_Y10_N8
\SW[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(14),
	o => \SW[14]~input_o\);

-- Location: LCCOMB_X114_Y4_N6
\r|array[30][14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|array[30][14]~feeder_combout\ = \SW[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[14]~input_o\,
	combout => \r|array[30][14]~feeder_combout\);

-- Location: FF_X114_Y4_N7
\r|array[30][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \r|array[30][14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r|array[30][14]~q\);

-- Location: LCCOMB_X114_Y4_N12
\r|reg30_out[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|reg30_out[14]~feeder_combout\ = \r|array[30][14]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r|array[30][14]~q\,
	combout => \r|reg30_out[14]~feeder_combout\);

-- Location: FF_X114_Y4_N13
\r|reg30_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \r|reg30_out[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r|reg30_out\(14));

-- Location: IOIBUF_X115_Y7_N15
\SW[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(12),
	o => \SW[12]~input_o\);

-- Location: LCCOMB_X114_Y4_N10
\r|array[30][12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|array[30][12]~feeder_combout\ = \SW[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[12]~input_o\,
	combout => \r|array[30][12]~feeder_combout\);

-- Location: FF_X114_Y4_N11
\r|array[30][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \r|array[30][12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r|array[30][12]~q\);

-- Location: LCCOMB_X114_Y4_N24
\r|reg30_out[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|reg30_out[12]~feeder_combout\ = \r|array[30][12]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r|array[30][12]~q\,
	combout => \r|reg30_out[12]~feeder_combout\);

-- Location: FF_X114_Y4_N25
\r|reg30_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \r|reg30_out[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r|reg30_out\(12));

-- Location: IOIBUF_X115_Y9_N22
\SW[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(13),
	o => \SW[13]~input_o\);

-- Location: LCCOMB_X114_Y4_N20
\r|array[30][13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|array[30][13]~feeder_combout\ = \SW[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[13]~input_o\,
	combout => \r|array[30][13]~feeder_combout\);

-- Location: FF_X114_Y4_N21
\r|array[30][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \r|array[30][13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r|array[30][13]~q\);

-- Location: LCCOMB_X114_Y4_N22
\r|reg30_out[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|reg30_out[13]~feeder_combout\ = \r|array[30][13]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r|array[30][13]~q\,
	combout => \r|reg30_out[13]~feeder_combout\);

-- Location: FF_X114_Y4_N23
\r|reg30_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \r|reg30_out[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r|reg30_out\(13));

-- Location: IOIBUF_X115_Y6_N15
\SW[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(15),
	o => \SW[15]~input_o\);

-- Location: LCCOMB_X114_Y4_N16
\r|array[30][15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|array[30][15]~feeder_combout\ = \SW[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[15]~input_o\,
	combout => \r|array[30][15]~feeder_combout\);

-- Location: FF_X114_Y4_N17
\r|array[30][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \r|array[30][15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r|array[30][15]~q\);

-- Location: LCCOMB_X114_Y4_N2
\r|reg30_out[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|reg30_out[15]~feeder_combout\ = \r|array[30][15]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r|array[30][15]~q\,
	combout => \r|reg30_out[15]~feeder_combout\);

-- Location: FF_X114_Y4_N3
\r|reg30_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \r|reg30_out[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r|reg30_out\(15));

-- Location: LCCOMB_X114_Y4_N4
\d|WideOr6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d|WideOr6~0_combout\ = (\r|reg30_out\(14) & (!\r|reg30_out\(13) & (\r|reg30_out\(12) $ (!\r|reg30_out\(15))))) # (!\r|reg30_out\(14) & (\r|reg30_out\(12) & (\r|reg30_out\(13) $ (!\r|reg30_out\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r|reg30_out\(14),
	datab => \r|reg30_out\(12),
	datac => \r|reg30_out\(13),
	datad => \r|reg30_out\(15),
	combout => \d|WideOr6~0_combout\);

-- Location: LCCOMB_X114_Y4_N18
\d|WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d|WideOr5~0_combout\ = (\r|reg30_out\(12) & ((\r|reg30_out\(13) $ (!\r|reg30_out\(15))))) # (!\r|reg30_out\(12) & (\r|reg30_out\(14) & ((\r|reg30_out\(13)) # (\r|reg30_out\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r|reg30_out\(14),
	datab => \r|reg30_out\(12),
	datac => \r|reg30_out\(13),
	datad => \r|reg30_out\(15),
	combout => \d|WideOr5~0_combout\);

-- Location: LCCOMB_X114_Y4_N28
\d|WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d|WideOr4~0_combout\ = (\r|reg30_out\(14) & (\r|reg30_out\(15) & ((\r|reg30_out\(13)) # (!\r|reg30_out\(12))))) # (!\r|reg30_out\(14) & (!\r|reg30_out\(15) & (\r|reg30_out\(12) $ (\r|reg30_out\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r|reg30_out\(14),
	datab => \r|reg30_out\(12),
	datac => \r|reg30_out\(13),
	datad => \r|reg30_out\(15),
	combout => \d|WideOr4~0_combout\);

-- Location: LCCOMB_X114_Y4_N30
\d|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d|WideOr3~0_combout\ = (\r|reg30_out\(12) & (\r|reg30_out\(14) $ ((!\r|reg30_out\(13))))) # (!\r|reg30_out\(12) & ((\r|reg30_out\(14) & (!\r|reg30_out\(13) & !\r|reg30_out\(15))) # (!\r|reg30_out\(14) & (\r|reg30_out\(13) & \r|reg30_out\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r|reg30_out\(14),
	datab => \r|reg30_out\(12),
	datac => \r|reg30_out\(13),
	datad => \r|reg30_out\(15),
	combout => \d|WideOr3~0_combout\);

-- Location: LCCOMB_X114_Y4_N8
\d|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d|WideOr2~0_combout\ = (\r|reg30_out\(14) & (!\r|reg30_out\(15) & ((\r|reg30_out\(12)) # (!\r|reg30_out\(13))))) # (!\r|reg30_out\(14) & (\r|reg30_out\(12) & (\r|reg30_out\(13) $ (\r|reg30_out\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r|reg30_out\(14),
	datab => \r|reg30_out\(12),
	datac => \r|reg30_out\(13),
	datad => \r|reg30_out\(15),
	combout => \d|WideOr2~0_combout\);

-- Location: LCCOMB_X114_Y4_N26
\d|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d|WideOr1~0_combout\ = (\r|reg30_out\(14) & (\r|reg30_out\(12) & (\r|reg30_out\(13) $ (\r|reg30_out\(15))))) # (!\r|reg30_out\(14) & (((\r|reg30_out\(13) & !\r|reg30_out\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r|reg30_out\(14),
	datab => \r|reg30_out\(12),
	datac => \r|reg30_out\(13),
	datad => \r|reg30_out\(15),
	combout => \d|WideOr1~0_combout\);

-- Location: LCCOMB_X114_Y4_N0
\d|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d|WideOr0~0_combout\ = (\r|reg30_out\(12) & ((\r|reg30_out\(15)) # (\r|reg30_out\(14) $ (\r|reg30_out\(13))))) # (!\r|reg30_out\(12) & ((\r|reg30_out\(13)) # (\r|reg30_out\(14) $ (\r|reg30_out\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r|reg30_out\(14),
	datab => \r|reg30_out\(12),
	datac => \r|reg30_out\(13),
	datad => \r|reg30_out\(15),
	combout => \d|WideOr0~0_combout\);

-- Location: IOIBUF_X115_Y13_N1
\SW[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(16),
	o => \SW[16]~input_o\);

-- Location: FF_X87_Y4_N19
\r|array[30][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[16]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r|array[30][16]~q\);

-- Location: LCCOMB_X87_Y4_N0
\r|reg30_out[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|reg30_out[16]~feeder_combout\ = \r|array[30][16]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r|array[30][16]~q\,
	combout => \r|reg30_out[16]~feeder_combout\);

-- Location: FF_X87_Y4_N1
\r|reg30_out[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \r|reg30_out[16]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r|reg30_out\(16));

-- Location: IOIBUF_X115_Y14_N8
\SW[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(17),
	o => \SW[17]~input_o\);

-- Location: LCCOMB_X87_Y4_N28
\r|array[30][17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|array[30][17]~feeder_combout\ = \SW[17]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[17]~input_o\,
	combout => \r|array[30][17]~feeder_combout\);

-- Location: FF_X87_Y4_N29
\r|array[30][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \r|array[30][17]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r|array[30][17]~q\);

-- Location: LCCOMB_X87_Y4_N2
\r|reg30_out[17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|reg30_out[17]~feeder_combout\ = \r|array[30][17]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \r|array[30][17]~q\,
	combout => \r|reg30_out[17]~feeder_combout\);

-- Location: FF_X87_Y4_N3
\r|reg30_out[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \r|reg30_out[17]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r|reg30_out\(17));

-- Location: LCCOMB_X87_Y4_N24
\e|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \e|Decoder0~0_combout\ = (\r|reg30_out\(16) & !\r|reg30_out\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r|reg30_out\(16),
	datac => \r|reg30_out\(17),
	combout => \e|Decoder0~0_combout\);

-- Location: LCCOMB_X87_Y4_N26
\e|WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \e|WideOr4~0_combout\ = \r|reg30_out\(16) $ (\r|reg30_out\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r|reg30_out\(16),
	datad => \r|reg30_out\(17),
	combout => \e|WideOr4~0_combout\);

-- Location: LCCOMB_X87_Y4_N8
\e|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \e|Decoder0~1_combout\ = (\r|reg30_out\(16) & \r|reg30_out\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r|reg30_out\(16),
	datac => \r|reg30_out\(17),
	combout => \e|Decoder0~1_combout\);

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;

ww_HEX6(0) <= \HEX6[0]~output_o\;

ww_HEX6(1) <= \HEX6[1]~output_o\;

ww_HEX6(2) <= \HEX6[2]~output_o\;

ww_HEX6(3) <= \HEX6[3]~output_o\;

ww_HEX6(4) <= \HEX6[4]~output_o\;

ww_HEX6(5) <= \HEX6[5]~output_o\;

ww_HEX6(6) <= \HEX6[6]~output_o\;

ww_HEX7(0) <= \HEX7[0]~output_o\;

ww_HEX7(1) <= \HEX7[1]~output_o\;

ww_HEX7(2) <= \HEX7[2]~output_o\;

ww_HEX7(3) <= \HEX7[3]~output_o\;

ww_HEX7(4) <= \HEX7[4]~output_o\;

ww_HEX7(5) <= \HEX7[5]~output_o\;

ww_HEX7(6) <= \HEX7[6]~output_o\;
END structure;


