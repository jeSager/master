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

-- DATE "11/19/2016 01:16:47"

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

ENTITY 	lab4_cpu IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	d1out : OUT std_logic_vector(31 DOWNTO 0);
	d2out : OUT std_logic_vector(31 DOWNTO 0)
	);
END lab4_cpu;

-- Design Ports Information
-- d1out[0]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1out[1]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1out[2]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1out[3]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1out[4]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1out[5]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1out[6]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1out[7]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1out[8]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1out[9]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1out[10]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1out[11]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1out[12]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1out[13]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1out[14]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1out[15]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1out[16]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1out[17]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1out[18]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1out[19]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1out[20]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1out[21]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1out[22]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1out[23]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1out[24]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1out[25]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1out[26]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1out[27]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1out[28]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1out[29]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1out[30]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1out[31]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2out[0]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2out[1]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2out[2]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2out[3]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2out[4]	=>  Location: PIN_AC21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2out[5]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2out[6]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2out[7]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2out[8]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2out[9]	=>  Location: PIN_AD2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2out[10]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2out[11]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2out[12]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2out[13]	=>  Location: PIN_L27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2out[14]	=>  Location: PIN_F25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2out[15]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2out[16]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2out[17]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2out[18]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2out[19]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2out[20]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2out[21]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2out[22]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2out[23]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2out[24]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2out[25]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2out[26]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2out[27]	=>  Location: PIN_AD5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2out[28]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2out[29]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2out[30]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2out[31]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \ftch|RAM_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ftch|RAM_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ftch|RAM_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ftch|RAM_rtl_0|auto_generated|ram_block1a9_PORTADATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ftch|RAM_rtl_0|auto_generated|ram_block1a18_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ftch|RAM_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ftch|RAM_rtl_0|auto_generated|ram_block1a27_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ftch|RAM_rtl_0|auto_generated|ram_block1a27_PORTADATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ftch|count[7]~feeder_combout\ : std_logic;
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
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \ftch|Add0~0_combout\ : std_logic;
SIGNAL \ftch|Add0~2_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \ftch|Add0~1\ : std_logic;
SIGNAL \ftch|Add0~3_combout\ : std_logic;
SIGNAL \ftch|Add0~5_combout\ : std_logic;
SIGNAL \ftch|Add0~4\ : std_logic;
SIGNAL \ftch|Add0~6_combout\ : std_logic;
SIGNAL \ftch|Add0~8_combout\ : std_logic;
SIGNAL \ftch|Add0~7\ : std_logic;
SIGNAL \ftch|Add0~9_combout\ : std_logic;
SIGNAL \ftch|Add0~11_combout\ : std_logic;
SIGNAL \ftch|Add0~10\ : std_logic;
SIGNAL \ftch|Add0~12_combout\ : std_logic;
SIGNAL \ftch|Add0~14_combout\ : std_logic;
SIGNAL \ftch|Add0~13\ : std_logic;
SIGNAL \ftch|Add0~15_combout\ : std_logic;
SIGNAL \ftch|Add0~17_combout\ : std_logic;
SIGNAL \ftch|Add0~16\ : std_logic;
SIGNAL \ftch|Add0~18_combout\ : std_logic;
SIGNAL \ftch|Add0~20_combout\ : std_logic;
SIGNAL \ftch|Add0~19\ : std_logic;
SIGNAL \ftch|Add0~21_combout\ : std_logic;
SIGNAL \ftch|Add0~23_combout\ : std_logic;
SIGNAL \ftch|Add0~22\ : std_logic;
SIGNAL \ftch|Add0~24_combout\ : std_logic;
SIGNAL \ftch|Add0~26_combout\ : std_logic;
SIGNAL \ftch|count[9]~feeder_combout\ : std_logic;
SIGNAL \ftch|Add0~25\ : std_logic;
SIGNAL \ftch|Add0~27_combout\ : std_logic;
SIGNAL \ftch|Add0~29_combout\ : std_logic;
SIGNAL \ftch|RAM_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \ftch|RAM_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \ftch|RAM_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \ftch|RAM_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \ftch|RAM_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \ftch|RAM_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \ftch|RAM_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \ftch|RAM_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \ftch|RAM_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \ftch|RAM_rtl_0|auto_generated|ram_block1a9~portadataout\ : std_logic;
SIGNAL \ftch|RAM_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \ftch|RAM_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \ftch|RAM_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \ftch|RAM_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \ftch|RAM_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \ftch|RAM_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \ftch|RAM_rtl_0|auto_generated|ram_block1a16\ : std_logic;
SIGNAL \ftch|RAM_rtl_0|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \ftch|RAM_rtl_0|auto_generated|ram_block1a18~portadataout\ : std_logic;
SIGNAL \ftch|RAM_rtl_0|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \ftch|RAM_rtl_0|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \ftch|RAM_rtl_0|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \ftch|RAM_rtl_0|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \ftch|RAM_rtl_0|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \ftch|RAM_rtl_0|auto_generated|ram_block1a24\ : std_logic;
SIGNAL \ftch|RAM_rtl_0|auto_generated|ram_block1a25\ : std_logic;
SIGNAL \ftch|RAM_rtl_0|auto_generated|ram_block1a26\ : std_logic;
SIGNAL \ftch|RAM_rtl_0|auto_generated|ram_block1a27~portadataout\ : std_logic;
SIGNAL \ftch|RAM_rtl_0|auto_generated|ram_block1a28\ : std_logic;
SIGNAL \ftch|RAM_rtl_0|auto_generated|ram_block1a29\ : std_logic;
SIGNAL \ftch|RAM_rtl_0|auto_generated|ram_block1a30\ : std_logic;
SIGNAL \ftch|RAM_rtl_0|auto_generated|ram_block1a31\ : std_logic;
SIGNAL \ftch|count\ : std_logic_vector(9 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_rst <= rst;
d1out <= ww_d1out;
d2out <= ww_d2out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\ftch|RAM_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\ftch|Add0~29_combout\ & \ftch|Add0~26_combout\ & \ftch|Add0~23_combout\ & \ftch|Add0~20_combout\ & \ftch|Add0~17_combout\ & \ftch|Add0~14_combout\ & \ftch|Add0~11_combout\ & 
\ftch|Add0~8_combout\ & \ftch|Add0~5_combout\ & \ftch|Add0~2_combout\);

\ftch|RAM_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \ftch|RAM_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\ftch|RAM_rtl_0|auto_generated|ram_block1a1\ <= \ftch|RAM_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\ftch|RAM_rtl_0|auto_generated|ram_block1a2\ <= \ftch|RAM_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\ftch|RAM_rtl_0|auto_generated|ram_block1a3\ <= \ftch|RAM_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\ftch|RAM_rtl_0|auto_generated|ram_block1a4\ <= \ftch|RAM_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\ftch|RAM_rtl_0|auto_generated|ram_block1a5\ <= \ftch|RAM_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\ftch|RAM_rtl_0|auto_generated|ram_block1a6\ <= \ftch|RAM_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\ftch|RAM_rtl_0|auto_generated|ram_block1a7\ <= \ftch|RAM_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\ftch|RAM_rtl_0|auto_generated|ram_block1a8\ <= \ftch|RAM_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);

\ftch|RAM_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\ <= (\ftch|Add0~29_combout\ & \ftch|Add0~26_combout\ & \ftch|Add0~23_combout\ & \ftch|Add0~20_combout\ & \ftch|Add0~17_combout\ & \ftch|Add0~14_combout\ & \ftch|Add0~11_combout\ & 
\ftch|Add0~8_combout\ & \ftch|Add0~5_combout\ & \ftch|Add0~2_combout\);

\ftch|RAM_rtl_0|auto_generated|ram_block1a9~portadataout\ <= \ftch|RAM_rtl_0|auto_generated|ram_block1a9_PORTADATAOUT_bus\(0);
\ftch|RAM_rtl_0|auto_generated|ram_block1a10\ <= \ftch|RAM_rtl_0|auto_generated|ram_block1a9_PORTADATAOUT_bus\(1);
\ftch|RAM_rtl_0|auto_generated|ram_block1a11\ <= \ftch|RAM_rtl_0|auto_generated|ram_block1a9_PORTADATAOUT_bus\(2);
\ftch|RAM_rtl_0|auto_generated|ram_block1a12\ <= \ftch|RAM_rtl_0|auto_generated|ram_block1a9_PORTADATAOUT_bus\(3);
\ftch|RAM_rtl_0|auto_generated|ram_block1a13\ <= \ftch|RAM_rtl_0|auto_generated|ram_block1a9_PORTADATAOUT_bus\(4);
\ftch|RAM_rtl_0|auto_generated|ram_block1a14\ <= \ftch|RAM_rtl_0|auto_generated|ram_block1a9_PORTADATAOUT_bus\(5);
\ftch|RAM_rtl_0|auto_generated|ram_block1a15\ <= \ftch|RAM_rtl_0|auto_generated|ram_block1a9_PORTADATAOUT_bus\(6);
\ftch|RAM_rtl_0|auto_generated|ram_block1a16\ <= \ftch|RAM_rtl_0|auto_generated|ram_block1a9_PORTADATAOUT_bus\(7);
\ftch|RAM_rtl_0|auto_generated|ram_block1a17\ <= \ftch|RAM_rtl_0|auto_generated|ram_block1a9_PORTADATAOUT_bus\(8);

\ftch|RAM_rtl_0|auto_generated|ram_block1a18_PORTAADDR_bus\ <= (\ftch|Add0~29_combout\ & \ftch|Add0~26_combout\ & \ftch|Add0~23_combout\ & \ftch|Add0~20_combout\ & \ftch|Add0~17_combout\ & \ftch|Add0~14_combout\ & \ftch|Add0~11_combout\ & 
\ftch|Add0~8_combout\ & \ftch|Add0~5_combout\ & \ftch|Add0~2_combout\);

\ftch|RAM_rtl_0|auto_generated|ram_block1a18~portadataout\ <= \ftch|RAM_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\(0);
\ftch|RAM_rtl_0|auto_generated|ram_block1a19\ <= \ftch|RAM_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\(1);
\ftch|RAM_rtl_0|auto_generated|ram_block1a20\ <= \ftch|RAM_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\(2);
\ftch|RAM_rtl_0|auto_generated|ram_block1a21\ <= \ftch|RAM_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\(3);
\ftch|RAM_rtl_0|auto_generated|ram_block1a22\ <= \ftch|RAM_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\(4);
\ftch|RAM_rtl_0|auto_generated|ram_block1a23\ <= \ftch|RAM_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\(5);
\ftch|RAM_rtl_0|auto_generated|ram_block1a24\ <= \ftch|RAM_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\(6);
\ftch|RAM_rtl_0|auto_generated|ram_block1a25\ <= \ftch|RAM_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\(7);
\ftch|RAM_rtl_0|auto_generated|ram_block1a26\ <= \ftch|RAM_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\(8);

\ftch|RAM_rtl_0|auto_generated|ram_block1a27_PORTAADDR_bus\ <= (\ftch|Add0~29_combout\ & \ftch|Add0~26_combout\ & \ftch|Add0~23_combout\ & \ftch|Add0~20_combout\ & \ftch|Add0~17_combout\ & \ftch|Add0~14_combout\ & \ftch|Add0~11_combout\ & 
\ftch|Add0~8_combout\ & \ftch|Add0~5_combout\ & \ftch|Add0~2_combout\);

\ftch|RAM_rtl_0|auto_generated|ram_block1a27~portadataout\ <= \ftch|RAM_rtl_0|auto_generated|ram_block1a27_PORTADATAOUT_bus\(0);
\ftch|RAM_rtl_0|auto_generated|ram_block1a28\ <= \ftch|RAM_rtl_0|auto_generated|ram_block1a27_PORTADATAOUT_bus\(1);
\ftch|RAM_rtl_0|auto_generated|ram_block1a29\ <= \ftch|RAM_rtl_0|auto_generated|ram_block1a27_PORTADATAOUT_bus\(2);
\ftch|RAM_rtl_0|auto_generated|ram_block1a30\ <= \ftch|RAM_rtl_0|auto_generated|ram_block1a27_PORTADATAOUT_bus\(3);
\ftch|RAM_rtl_0|auto_generated|ram_block1a31\ <= \ftch|RAM_rtl_0|auto_generated|ram_block1a27_PORTADATAOUT_bus\(4);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: FF_X63_Y4_N5
\ftch|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ftch|count[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ftch|count\(7));

-- Location: FF_X62_Y4_N19
\ftch|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ftch|Add0~26_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ftch|count\(8));

-- Location: LCCOMB_X63_Y4_N4
\ftch|count[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ftch|count[7]~feeder_combout\ = \ftch|Add0~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ftch|Add0~23_combout\,
	combout => \ftch|count[7]~feeder_combout\);

-- Location: IOOBUF_X67_Y0_N9
\d1out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ftch|RAM_rtl_0|auto_generated|ram_block1a0~portadataout\,
	devoe => ww_devoe,
	o => \d1out[0]~output_o\);

-- Location: IOOBUF_X60_Y0_N23
\d1out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ftch|RAM_rtl_0|auto_generated|ram_block1a1\,
	devoe => ww_devoe,
	o => \d1out[1]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\d1out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ftch|RAM_rtl_0|auto_generated|ram_block1a2\,
	devoe => ww_devoe,
	o => \d1out[2]~output_o\);

-- Location: IOOBUF_X60_Y0_N9
\d1out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ftch|RAM_rtl_0|auto_generated|ram_block1a3\,
	devoe => ww_devoe,
	o => \d1out[3]~output_o\);

-- Location: IOOBUF_X60_Y0_N2
\d1out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ftch|RAM_rtl_0|auto_generated|ram_block1a4\,
	devoe => ww_devoe,
	o => \d1out[4]~output_o\);

-- Location: IOOBUF_X65_Y0_N16
\d1out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ftch|RAM_rtl_0|auto_generated|ram_block1a5\,
	devoe => ww_devoe,
	o => \d1out[5]~output_o\);

-- Location: IOOBUF_X60_Y0_N16
\d1out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ftch|RAM_rtl_0|auto_generated|ram_block1a6\,
	devoe => ww_devoe,
	o => \d1out[6]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\d1out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ftch|RAM_rtl_0|auto_generated|ram_block1a7\,
	devoe => ww_devoe,
	o => \d1out[7]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\d1out[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ftch|RAM_rtl_0|auto_generated|ram_block1a8\,
	devoe => ww_devoe,
	o => \d1out[8]~output_o\);

-- Location: IOOBUF_X54_Y0_N16
\d1out[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ftch|RAM_rtl_0|auto_generated|ram_block1a9~portadataout\,
	devoe => ww_devoe,
	o => \d1out[9]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\d1out[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ftch|RAM_rtl_0|auto_generated|ram_block1a10\,
	devoe => ww_devoe,
	o => \d1out[10]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\d1out[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ftch|RAM_rtl_0|auto_generated|ram_block1a11\,
	devoe => ww_devoe,
	o => \d1out[11]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\d1out[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ftch|RAM_rtl_0|auto_generated|ram_block1a12\,
	devoe => ww_devoe,
	o => \d1out[12]~output_o\);

-- Location: IOOBUF_X54_Y0_N9
\d1out[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ftch|RAM_rtl_0|auto_generated|ram_block1a13\,
	devoe => ww_devoe,
	o => \d1out[13]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\d1out[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ftch|RAM_rtl_0|auto_generated|ram_block1a14\,
	devoe => ww_devoe,
	o => \d1out[14]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\d1out[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ftch|RAM_rtl_0|auto_generated|ram_block1a15\,
	devoe => ww_devoe,
	o => \d1out[15]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\d1out[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ftch|RAM_rtl_0|auto_generated|ram_block1a16\,
	devoe => ww_devoe,
	o => \d1out[16]~output_o\);

-- Location: IOOBUF_X54_Y0_N2
\d1out[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ftch|RAM_rtl_0|auto_generated|ram_block1a17\,
	devoe => ww_devoe,
	o => \d1out[17]~output_o\);

-- Location: IOOBUF_X56_Y0_N9
\d1out[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ftch|RAM_rtl_0|auto_generated|ram_block1a18~portadataout\,
	devoe => ww_devoe,
	o => \d1out[18]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\d1out[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ftch|RAM_rtl_0|auto_generated|ram_block1a19\,
	devoe => ww_devoe,
	o => \d1out[19]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\d1out[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ftch|RAM_rtl_0|auto_generated|ram_block1a20\,
	devoe => ww_devoe,
	o => \d1out[20]~output_o\);

-- Location: IOOBUF_X56_Y0_N16
\d1out[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ftch|RAM_rtl_0|auto_generated|ram_block1a21\,
	devoe => ww_devoe,
	o => \d1out[21]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\d1out[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ftch|RAM_rtl_0|auto_generated|ram_block1a22\,
	devoe => ww_devoe,
	o => \d1out[22]~output_o\);

-- Location: IOOBUF_X79_Y0_N9
\d1out[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ftch|RAM_rtl_0|auto_generated|ram_block1a23\,
	devoe => ww_devoe,
	o => \d1out[23]~output_o\);

-- Location: IOOBUF_X65_Y0_N23
\d1out[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ftch|RAM_rtl_0|auto_generated|ram_block1a24\,
	devoe => ww_devoe,
	o => \d1out[24]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\d1out[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ftch|RAM_rtl_0|auto_generated|ram_block1a25\,
	devoe => ww_devoe,
	o => \d1out[25]~output_o\);

-- Location: IOOBUF_X56_Y0_N2
\d1out[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ftch|RAM_rtl_0|auto_generated|ram_block1a26\,
	devoe => ww_devoe,
	o => \d1out[26]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\d1out[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ftch|RAM_rtl_0|auto_generated|ram_block1a27~portadataout\,
	devoe => ww_devoe,
	o => \d1out[27]~output_o\);

-- Location: IOOBUF_X56_Y0_N23
\d1out[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ftch|RAM_rtl_0|auto_generated|ram_block1a28\,
	devoe => ww_devoe,
	o => \d1out[28]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\d1out[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ftch|RAM_rtl_0|auto_generated|ram_block1a29\,
	devoe => ww_devoe,
	o => \d1out[29]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\d1out[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ftch|RAM_rtl_0|auto_generated|ram_block1a30\,
	devoe => ww_devoe,
	o => \d1out[30]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\d1out[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ftch|RAM_rtl_0|auto_generated|ram_block1a31\,
	devoe => ww_devoe,
	o => \d1out[31]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
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

-- Location: IOOBUF_X47_Y73_N16
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

-- Location: IOOBUF_X9_Y73_N9
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

-- Location: IOOBUF_X1_Y0_N16
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

-- Location: IOOBUF_X102_Y0_N23
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

-- Location: IOOBUF_X31_Y0_N2
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

-- Location: IOOBUF_X96_Y73_N16
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

-- Location: IOOBUF_X38_Y73_N16
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

-- Location: IOOBUF_X11_Y73_N23
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

-- Location: IOOBUF_X0_Y22_N23
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

-- Location: IOOBUF_X27_Y73_N16
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

-- Location: IOOBUF_X5_Y73_N23
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

-- Location: IOOBUF_X105_Y0_N16
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

-- Location: IOOBUF_X115_Y48_N9
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

-- Location: IOOBUF_X115_Y68_N23
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

-- Location: IOOBUF_X87_Y73_N16
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

-- Location: IOOBUF_X3_Y73_N23
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

-- Location: IOOBUF_X105_Y0_N9
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

-- Location: IOOBUF_X52_Y73_N16
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

-- Location: IOOBUF_X83_Y0_N9
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

-- Location: IOOBUF_X3_Y73_N2
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

-- Location: IOOBUF_X105_Y0_N23
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

-- Location: IOOBUF_X58_Y73_N2
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

-- Location: IOOBUF_X109_Y0_N9
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

-- Location: IOOBUF_X0_Y68_N16
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

-- Location: IOOBUF_X69_Y73_N2
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

-- Location: IOOBUF_X89_Y73_N9
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

-- Location: IOOBUF_X1_Y0_N23
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

-- Location: IOOBUF_X67_Y73_N16
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

-- Location: IOOBUF_X81_Y73_N23
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

-- Location: IOOBUF_X58_Y73_N16
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

-- Location: IOOBUF_X115_Y25_N23
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

-- Location: IOIBUF_X0_Y36_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: FF_X62_Y4_N29
\ftch|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ftch|Add0~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ftch|count\(0));

-- Location: LCCOMB_X62_Y4_N2
\ftch|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ftch|Add0~0_combout\ = \ftch|count\(0) $ (VCC)
-- \ftch|Add0~1\ = CARRY(\ftch|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ftch|count\(0),
	datad => VCC,
	combout => \ftch|Add0~0_combout\,
	cout => \ftch|Add0~1\);

-- Location: LCCOMB_X63_Y4_N8
\ftch|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ftch|Add0~2_combout\ = (!\rst~input_o\ & \ftch|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datad => \ftch|Add0~0_combout\,
	combout => \ftch|Add0~2_combout\);

-- Location: IOIBUF_X58_Y0_N8
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: FF_X62_Y4_N27
\ftch|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ftch|Add0~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ftch|count\(1));

-- Location: LCCOMB_X62_Y4_N4
\ftch|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ftch|Add0~3_combout\ = (\ftch|count\(1) & (!\ftch|Add0~1\)) # (!\ftch|count\(1) & ((\ftch|Add0~1\) # (GND)))
-- \ftch|Add0~4\ = CARRY((!\ftch|Add0~1\) # (!\ftch|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ftch|count\(1),
	datad => VCC,
	cin => \ftch|Add0~1\,
	combout => \ftch|Add0~3_combout\,
	cout => \ftch|Add0~4\);

-- Location: LCCOMB_X62_Y4_N28
\ftch|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ftch|Add0~5_combout\ = (!\rst~input_o\ & \ftch|Add0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datad => \ftch|Add0~3_combout\,
	combout => \ftch|Add0~5_combout\);

-- Location: FF_X62_Y4_N1
\ftch|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ftch|Add0~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ftch|count\(2));

-- Location: LCCOMB_X62_Y4_N6
\ftch|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ftch|Add0~6_combout\ = (\ftch|count\(2) & (\ftch|Add0~4\ $ (GND))) # (!\ftch|count\(2) & (!\ftch|Add0~4\ & VCC))
-- \ftch|Add0~7\ = CARRY((\ftch|count\(2) & !\ftch|Add0~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ftch|count\(2),
	datad => VCC,
	cin => \ftch|Add0~4\,
	combout => \ftch|Add0~6_combout\,
	cout => \ftch|Add0~7\);

-- Location: LCCOMB_X63_Y4_N30
\ftch|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ftch|Add0~8_combout\ = (\ftch|Add0~6_combout\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ftch|Add0~6_combout\,
	datad => \rst~input_o\,
	combout => \ftch|Add0~8_combout\);

-- Location: FF_X62_Y4_N31
\ftch|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ftch|Add0~11_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ftch|count\(3));

-- Location: LCCOMB_X62_Y4_N8
\ftch|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ftch|Add0~9_combout\ = (\ftch|count\(3) & (!\ftch|Add0~7\)) # (!\ftch|count\(3) & ((\ftch|Add0~7\) # (GND)))
-- \ftch|Add0~10\ = CARRY((!\ftch|Add0~7\) # (!\ftch|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ftch|count\(3),
	datad => VCC,
	cin => \ftch|Add0~7\,
	combout => \ftch|Add0~9_combout\,
	cout => \ftch|Add0~10\);

-- Location: LCCOMB_X62_Y4_N0
\ftch|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ftch|Add0~11_combout\ = (!\rst~input_o\ & \ftch|Add0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datad => \ftch|Add0~9_combout\,
	combout => \ftch|Add0~11_combout\);

-- Location: FF_X62_Y4_N11
\ftch|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ftch|Add0~14_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ftch|count\(4));

-- Location: LCCOMB_X62_Y4_N10
\ftch|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ftch|Add0~12_combout\ = (\ftch|count\(4) & (\ftch|Add0~10\ $ (GND))) # (!\ftch|count\(4) & (!\ftch|Add0~10\ & VCC))
-- \ftch|Add0~13\ = CARRY((\ftch|count\(4) & !\ftch|Add0~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ftch|count\(4),
	datad => VCC,
	cin => \ftch|Add0~10\,
	combout => \ftch|Add0~12_combout\,
	cout => \ftch|Add0~13\);

-- Location: LCCOMB_X62_Y4_N26
\ftch|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ftch|Add0~14_combout\ = (!\rst~input_o\ & \ftch|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datad => \ftch|Add0~12_combout\,
	combout => \ftch|Add0~14_combout\);

-- Location: FF_X62_Y4_N25
\ftch|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ftch|Add0~17_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ftch|count\(5));

-- Location: LCCOMB_X62_Y4_N12
\ftch|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \ftch|Add0~15_combout\ = (\ftch|count\(5) & (!\ftch|Add0~13\)) # (!\ftch|count\(5) & ((\ftch|Add0~13\) # (GND)))
-- \ftch|Add0~16\ = CARRY((!\ftch|Add0~13\) # (!\ftch|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ftch|count\(5),
	datad => VCC,
	cin => \ftch|Add0~13\,
	combout => \ftch|Add0~15_combout\,
	cout => \ftch|Add0~16\);

-- Location: LCCOMB_X62_Y4_N30
\ftch|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \ftch|Add0~17_combout\ = (!\rst~input_o\ & \ftch|Add0~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datad => \ftch|Add0~15_combout\,
	combout => \ftch|Add0~17_combout\);

-- Location: FF_X62_Y4_N23
\ftch|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \ftch|Add0~20_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ftch|count\(6));

-- Location: LCCOMB_X62_Y4_N14
\ftch|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \ftch|Add0~18_combout\ = (\ftch|count\(6) & (\ftch|Add0~16\ $ (GND))) # (!\ftch|count\(6) & (!\ftch|Add0~16\ & VCC))
-- \ftch|Add0~19\ = CARRY((\ftch|count\(6) & !\ftch|Add0~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ftch|count\(6),
	datad => VCC,
	cin => \ftch|Add0~16\,
	combout => \ftch|Add0~18_combout\,
	cout => \ftch|Add0~19\);

-- Location: LCCOMB_X62_Y4_N24
\ftch|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \ftch|Add0~20_combout\ = (!\rst~input_o\ & \ftch|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datad => \ftch|Add0~18_combout\,
	combout => \ftch|Add0~20_combout\);

-- Location: LCCOMB_X62_Y4_N16
\ftch|Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \ftch|Add0~21_combout\ = (\ftch|count\(7) & (!\ftch|Add0~19\)) # (!\ftch|count\(7) & ((\ftch|Add0~19\) # (GND)))
-- \ftch|Add0~22\ = CARRY((!\ftch|Add0~19\) # (!\ftch|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ftch|count\(7),
	datad => VCC,
	cin => \ftch|Add0~19\,
	combout => \ftch|Add0~21_combout\,
	cout => \ftch|Add0~22\);

-- Location: LCCOMB_X63_Y4_N2
\ftch|Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \ftch|Add0~23_combout\ = (\ftch|Add0~21_combout\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ftch|Add0~21_combout\,
	datad => \rst~input_o\,
	combout => \ftch|Add0~23_combout\);

-- Location: LCCOMB_X62_Y4_N18
\ftch|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \ftch|Add0~24_combout\ = (\ftch|count\(8) & (\ftch|Add0~22\ $ (GND))) # (!\ftch|count\(8) & (!\ftch|Add0~22\ & VCC))
-- \ftch|Add0~25\ = CARRY((\ftch|count\(8) & !\ftch|Add0~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ftch|count\(8),
	datad => VCC,
	cin => \ftch|Add0~22\,
	combout => \ftch|Add0~24_combout\,
	cout => \ftch|Add0~25\);

-- Location: LCCOMB_X62_Y4_N22
\ftch|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \ftch|Add0~26_combout\ = (!\rst~input_o\ & \ftch|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datad => \ftch|Add0~24_combout\,
	combout => \ftch|Add0~26_combout\);

-- Location: LCCOMB_X63_Y4_N28
\ftch|count[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ftch|count[9]~feeder_combout\ = \ftch|Add0~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ftch|Add0~29_combout\,
	combout => \ftch|count[9]~feeder_combout\);

-- Location: FF_X63_Y4_N29
\ftch|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ftch|count[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ftch|count\(9));

-- Location: LCCOMB_X62_Y4_N20
\ftch|Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \ftch|Add0~27_combout\ = \ftch|Add0~25\ $ (\ftch|count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \ftch|count\(9),
	cin => \ftch|Add0~25\,
	combout => \ftch|Add0~27_combout\);

-- Location: LCCOMB_X63_Y4_N26
\ftch|Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \ftch|Add0~29_combout\ = (!\rst~input_o\ & \ftch|Add0~27_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datad => \ftch|Add0~27_combout\,
	combout => \ftch|Add0~29_combout\);

-- Location: M9K_X64_Y1_N0
\ftch|RAM_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000158A88642200004E261289020120C8402418118884220",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/the_project.ram0_lab4_fetch_86c718ac.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "lab4_fetch:ftch|altsyncram:RAM_rtl_0|altsyncram_um71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 10,
	port_b_data_width => 9,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portaaddr => \ftch|RAM_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ftch|RAM_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: M9K_X64_Y2_N0
\ftch|RAM_rtl_0|auto_generated|ram_block1a9\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002C15198C4DE0007034180B050248008039000C650200C",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/the_project.ram0_lab4_fetch_86c718ac.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "lab4_fetch:ftch|altsyncram:RAM_rtl_0|altsyncram_um71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 10,
	port_b_data_width => 9,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portaaddr => \ftch|RAM_rtl_0|auto_generated|ram_block1a9_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ftch|RAM_rtl_0|auto_generated|ram_block1a9_PORTADATAOUT_bus\);

-- Location: M9K_X64_Y3_N0
\ftch|RAM_rtl_0|auto_generated|ram_block1a18\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000188C402010000032190C8640000108000021008002008",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/the_project.ram0_lab4_fetch_86c718ac.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "lab4_fetch:ftch|altsyncram:RAM_rtl_0|altsyncram_um71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 18,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 10,
	port_b_data_width => 9,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portaaddr => \ftch|RAM_rtl_0|auto_generated|ram_block1a18_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ftch|RAM_rtl_0|auto_generated|ram_block1a18_PORTADATAOUT_bus\);

-- Location: M9K_X64_Y4_N0
\ftch|RAM_rtl_0|auto_generated|ram_block1a27\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/the_project.ram0_lab4_fetch_86c718ac.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "lab4_fetch:ftch|altsyncram:RAM_rtl_0|altsyncram_um71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 27,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 10,
	port_b_data_width => 9,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	portaaddr => \ftch|RAM_rtl_0|auto_generated|ram_block1a27_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ftch|RAM_rtl_0|auto_generated|ram_block1a27_PORTADATAOUT_bus\);

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


