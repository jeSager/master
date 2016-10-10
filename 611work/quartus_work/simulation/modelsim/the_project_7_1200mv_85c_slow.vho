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

-- DATE "09/30/2016 17:30:13"

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

ENTITY 	alu_reg IS
    PORT (
	clk : IN std_logic;
	a : IN std_logic_vector(31 DOWNTO 0);
	b : IN std_logic_vector(31 DOWNTO 0);
	op : IN std_logic_vector(3 DOWNTO 0);
	shamt : IN std_logic_vector(4 DOWNTO 0);
	hi : OUT std_logic_vector(31 DOWNTO 0);
	lo : OUT std_logic_vector(31 DOWNTO 0);
	zero : OUT std_logic
	);
END alu_reg;

-- Design Ports Information
-- hi[0]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hi[1]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hi[2]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hi[3]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hi[4]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hi[5]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hi[6]	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hi[7]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hi[8]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hi[9]	=>  Location: PIN_AC1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hi[10]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hi[11]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hi[12]	=>  Location: PIN_AD8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hi[13]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hi[14]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hi[15]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hi[16]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hi[17]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hi[18]	=>  Location: PIN_AH6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hi[19]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hi[20]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hi[21]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hi[22]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hi[23]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hi[24]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hi[25]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hi[26]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hi[27]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hi[28]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hi[29]	=>  Location: PIN_AC8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hi[30]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hi[31]	=>  Location: PIN_AG7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lo[0]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lo[1]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lo[2]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lo[3]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lo[4]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lo[5]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lo[6]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lo[7]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lo[8]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lo[9]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lo[10]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lo[11]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lo[12]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lo[13]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lo[14]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lo[15]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lo[16]	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lo[17]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lo[18]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lo[19]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lo[20]	=>  Location: PIN_V24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lo[21]	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lo[22]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lo[23]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lo[24]	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lo[25]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lo[26]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lo[27]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lo[28]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lo[29]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lo[30]	=>  Location: PIN_AD2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lo[31]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- zero	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op[0]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op[3]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op[1]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op[2]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[0]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shamt[3]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shamt[2]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shamt[0]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shamt[1]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- shamt[4]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[29]	=>  Location: PIN_AC2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[28]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[31]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[30]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[27]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[25]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[26]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[24]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[23]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[21]	=>  Location: PIN_V27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[22]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[20]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[19]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[17]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[18]	=>  Location: PIN_AE2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[16]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[1]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[3]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[2]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[7]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[6]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[5]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[4]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[15]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[13]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[14]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[12]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[11]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[9]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[10]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[8]	=>  Location: PIN_AD3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[31]	=>  Location: PIN_V28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[30]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[29]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[28]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[27]	=>  Location: PIN_AE1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[26]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[25]	=>  Location: PIN_AD1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[24]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[23]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[22]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[21]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[20]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[19]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[18]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[17]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[16]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[15]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[14]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[13]	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[12]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[11]	=>  Location: PIN_V26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[10]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[9]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[8]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[7]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[6]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[5]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[4]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF alu_reg IS
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
SIGNAL ww_a : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_op : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_shamt : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_hi : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_lo : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_zero : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out4_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \my_alu|Mult1|auto_generated|mac_out4_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \my_alu|Mult1|auto_generated|mac_out6_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \my_alu|Mult1|auto_generated|mac_out6_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \my_alu|Mult1|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \my_alu|Mult1|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \my_alu|Mult0|auto_generated|mac_out4_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \my_alu|Mult0|auto_generated|mac_out4_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \my_alu|Mult0|auto_generated|mac_out6_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \my_alu|Mult0|auto_generated|mac_out6_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \my_alu|Mult0|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \my_alu|Mult0|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \my_alu|Mult1|auto_generated|mac_out8_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \my_alu|Mult1|auto_generated|mac_out8_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \my_alu|Mult0|auto_generated|mac_out8_DATAA_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \my_alu|Mult0|auto_generated|mac_out8_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \my_alu|Mult1|auto_generated|mac_mult3_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \my_alu|Mult1|auto_generated|mac_mult3_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \my_alu|Mult1|auto_generated|mac_mult3_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \my_alu|Mult1|auto_generated|mac_mult5_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \my_alu|Mult1|auto_generated|mac_mult5_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \my_alu|Mult1|auto_generated|mac_mult5_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \my_alu|Mult1|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \my_alu|Mult1|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \my_alu|Mult1|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \my_alu|Mult0|auto_generated|mac_mult3_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \my_alu|Mult0|auto_generated|mac_mult3_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \my_alu|Mult0|auto_generated|mac_mult3_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \my_alu|Mult0|auto_generated|mac_mult5_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \my_alu|Mult0|auto_generated|mac_mult5_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \my_alu|Mult0|auto_generated|mac_mult5_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \my_alu|Mult0|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \my_alu|Mult0|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \my_alu|Mult0|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \my_alu|Mult1|auto_generated|mac_mult7_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \my_alu|Mult1|auto_generated|mac_mult7_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \my_alu|Mult1|auto_generated|mac_mult7_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \my_alu|Mult0|auto_generated|mac_mult7_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \my_alu|Mult0|auto_generated|mac_mult7_DATAB_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \my_alu|Mult0|auto_generated|mac_mult7_DATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \my_alu|Mult1|auto_generated|mac_out4~DATAOUT7\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out4~DATAOUT8\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out4~DATAOUT9\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out4~DATAOUT11\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out4~DATAOUT13\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out4~DATAOUT14\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out4~DATAOUT15\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out4~DATAOUT19\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out4~DATAOUT20\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out4~DATAOUT22\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out4~DATAOUT23\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out4~DATAOUT25\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out4~DATAOUT27\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out4~DATAOUT29\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out4~0\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out4~1\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out4~2\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out4~3\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out6~dataout\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out6~DATAOUT1\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out6~DATAOUT2\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out6~DATAOUT3\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out6~DATAOUT4\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out6~DATAOUT5\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out6~DATAOUT6\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out6~DATAOUT10\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out6~DATAOUT12\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out6~DATAOUT16\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out6~DATAOUT17\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out6~DATAOUT19\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out6~DATAOUT21\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out6~DATAOUT25\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out6~DATAOUT26\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out6~DATAOUT27\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out6~DATAOUT28\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out6~DATAOUT29\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out6~DATAOUT30\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out6~DATAOUT31\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out6~0\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out6~1\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out6~2\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out6~3\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|add9_result[0]~0_combout\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|add9_result[5]~10_combout\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|add9_result[8]~16_combout\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|add9_result[9]~18_combout\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|add9_result[10]~20_combout\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|add9_result[12]~24_combout\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|add9_result[13]~26_combout\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out2~DATAOUT20\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out2~DATAOUT21\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out2~DATAOUT22\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out2~DATAOUT24\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out2~DATAOUT25\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out2~DATAOUT29\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out2~DATAOUT32\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out2~DATAOUT35\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out4~dataout\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out4~DATAOUT2\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out4~DATAOUT3\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out4~DATAOUT5\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out4~DATAOUT7\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out4~DATAOUT9\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out4~DATAOUT10\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out4~DATAOUT13\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out4~DATAOUT19\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out4~DATAOUT20\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out4~DATAOUT21\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out4~DATAOUT22\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out4~DATAOUT23\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out4~DATAOUT24\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out4~DATAOUT26\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out4~DATAOUT27\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out4~DATAOUT28\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out4~DATAOUT29\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out4~DATAOUT31\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out4~0\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out4~1\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out4~2\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out4~3\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out6~DATAOUT1\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out6~DATAOUT4\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out6~DATAOUT6\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out6~DATAOUT8\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out6~DATAOUT11\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out6~DATAOUT12\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out6~DATAOUT14\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out6~DATAOUT15\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out6~DATAOUT16\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out6~DATAOUT17\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out6~DATAOUT21\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out6~DATAOUT28\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out6~DATAOUT30\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out6~0\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out6~1\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out6~2\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out6~3\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|add9_result[0]~0_combout\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|add9_result[1]~2_combout\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|add9_result[2]~4_combout\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|add9_result[9]~18_combout\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|add9_result[11]~22_combout\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|add9_result[14]~28_combout\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out2~DATAOUT21\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out2~DATAOUT22\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out2~DATAOUT23\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out2~DATAOUT24\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out2~DATAOUT25\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out2~DATAOUT26\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out2~DATAOUT28\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out2~DATAOUT30\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out2~DATAOUT31\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out2~DATAOUT33\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|op_1~26_combout\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|add9_result[15]~30_combout\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|add9_result[16]~32_combout\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|add9_result[16]~32_combout\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|add9_result[17]~34_combout\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out8~dataout\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out8~DATAOUT2\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out8~DATAOUT4\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out8~DATAOUT5\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out8~DATAOUT6\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out8~DATAOUT12\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out8~DATAOUT13\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out8~DATAOUT16\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out8~DATAOUT20\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out8~DATAOUT21\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out8~DATAOUT22\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out8~DATAOUT23\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out8~DATAOUT24\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out8~DATAOUT25\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out8~DATAOUT27\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out8~0\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out8~1\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out8~2\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out8~3\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out8~4\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out8~5\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out8~6\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out8~7\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|add9_result[18]~36_combout\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out8~dataout\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out8~DATAOUT1\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out8~DATAOUT2\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out8~DATAOUT4\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out8~DATAOUT5\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out8~DATAOUT6\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out8~DATAOUT7\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out8~DATAOUT8\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out8~DATAOUT9\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out8~DATAOUT11\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out8~DATAOUT13\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out8~DATAOUT15\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out8~DATAOUT16\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out8~DATAOUT17\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out8~DATAOUT24\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out8~DATAOUT25\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out8~DATAOUT27\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out8~0\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out8~1\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out8~2\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out8~3\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out8~4\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out8~5\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out8~6\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out8~7\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|add9_result[18]~36_combout\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|add9_result[21]~42_combout\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|add9_result[24]~48_combout\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|add9_result[25]~50_combout\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|add9_result[26]~52_combout\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|add9_result[28]~56_combout\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|add9_result[29]~59\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|add9_result[30]~60_combout\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|add9_result[30]~61\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|add9_result[30]~60_combout\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|add9_result[31]~62_combout\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|add9_result[31]~63\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|add9_result[32]~64_combout\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|add9_result[32]~64_combout\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|add9_result[33]~66_combout\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|op_1~68_combout\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|add9_result[34]~68_combout\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|op_1~76_combout\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|add9_result[41]~82_combout\ : std_logic;
SIGNAL \my_alu|Add2~0_combout\ : std_logic;
SIGNAL \my_alu|Add0~2_combout\ : std_logic;
SIGNAL \my_alu|Add0~4_combout\ : std_logic;
SIGNAL \my_alu|Add0~12_combout\ : std_logic;
SIGNAL \my_alu|Add0~14_combout\ : std_logic;
SIGNAL \my_alu|Add0~16_combout\ : std_logic;
SIGNAL \my_alu|Add0~26_combout\ : std_logic;
SIGNAL \my_alu|Add0~32_combout\ : std_logic;
SIGNAL \my_alu|Add0~38_combout\ : std_logic;
SIGNAL \my_alu|Add0~40_combout\ : std_logic;
SIGNAL \my_alu|Add0~42_combout\ : std_logic;
SIGNAL \my_alu|Add0~44_combout\ : std_logic;
SIGNAL \my_alu|Add0~46_combout\ : std_logic;
SIGNAL \my_alu|Add0~48_combout\ : std_logic;
SIGNAL \my_alu|Add0~58_combout\ : std_logic;
SIGNAL \my_alu|diff[31]~0_combout\ : std_logic;
SIGNAL \my_alu|Add3~0_combout\ : std_logic;
SIGNAL \my_alu|Add3~10_combout\ : std_logic;
SIGNAL \my_alu|Add3~14_combout\ : std_logic;
SIGNAL \my_alu|Add2~14_combout\ : std_logic;
SIGNAL \my_alu|Add3~26_combout\ : std_logic;
SIGNAL \my_alu|Add2~26_combout\ : std_logic;
SIGNAL \my_alu|Add3~40_combout\ : std_logic;
SIGNAL \my_alu|Add3~54_combout\ : std_logic;
SIGNAL \my_alu|Add2~54_combout\ : std_logic;
SIGNAL \my_alu|Add3~56_combout\ : std_logic;
SIGNAL \my_alu|Add2~56_combout\ : std_logic;
SIGNAL \my_alu|Add3~58_combout\ : std_logic;
SIGNAL \my_alu|Add2~58_combout\ : std_logic;
SIGNAL \my_alu|ShiftRight0~4_combout\ : std_logic;
SIGNAL \my_alu|Mux31~4_combout\ : std_logic;
SIGNAL \my_alu|ShiftRight0~18_combout\ : std_logic;
SIGNAL \my_alu|ShiftRight0~25_combout\ : std_logic;
SIGNAL \input_reg_a|q[25]~_Duplicate_4_q\ : std_logic;
SIGNAL \input_reg_a|q[18]~_Duplicate_4_q\ : std_logic;
SIGNAL \my_alu|Mux31~12_combout\ : std_logic;
SIGNAL \my_alu|Mux31~13_combout\ : std_logic;
SIGNAL \my_alu|Mux31~14_combout\ : std_logic;
SIGNAL \my_alu|Mux31~15_combout\ : std_logic;
SIGNAL \my_alu|Mux31~16_combout\ : std_logic;
SIGNAL \my_alu|Mux31~17_combout\ : std_logic;
SIGNAL \my_alu|Mux31~18_combout\ : std_logic;
SIGNAL \my_alu|ShiftRight0~32_combout\ : std_logic;
SIGNAL \my_alu|ShiftRight0~33_combout\ : std_logic;
SIGNAL \my_alu|Mux30~5_combout\ : std_logic;
SIGNAL \my_alu|ShiftLeft0~7_combout\ : std_logic;
SIGNAL \my_alu|Mux29~5_combout\ : std_logic;
SIGNAL \my_alu|Mux29~6_combout\ : std_logic;
SIGNAL \my_alu|ShiftRight0~43_combout\ : std_logic;
SIGNAL \my_alu|Mux29~7_combout\ : std_logic;
SIGNAL \my_alu|ShiftRight1~37_combout\ : std_logic;
SIGNAL \my_alu|ShiftRight0~44_combout\ : std_logic;
SIGNAL \my_alu|ShiftRight0~46_combout\ : std_logic;
SIGNAL \my_alu|ShiftLeft0~16_combout\ : std_logic;
SIGNAL \my_alu|ShiftLeft0~20_combout\ : std_logic;
SIGNAL \my_alu|Mux26~0_combout\ : std_logic;
SIGNAL \my_alu|Mux26~1_combout\ : std_logic;
SIGNAL \my_alu|Mux26~2_combout\ : std_logic;
SIGNAL \my_alu|Mux26~3_combout\ : std_logic;
SIGNAL \my_alu|Mux26~4_combout\ : std_logic;
SIGNAL \my_alu|Mux26~5_combout\ : std_logic;
SIGNAL \my_alu|ShiftRight0~57_combout\ : std_logic;
SIGNAL \my_alu|Mux24~0_combout\ : std_logic;
SIGNAL \my_alu|Mux24~1_combout\ : std_logic;
SIGNAL \my_alu|ShiftRight0~61_combout\ : std_logic;
SIGNAL \my_alu|Mux24~2_combout\ : std_logic;
SIGNAL \my_alu|Mux24~3_combout\ : std_logic;
SIGNAL \my_alu|Mux24~4_combout\ : std_logic;
SIGNAL \my_alu|Mux24~6_combout\ : std_logic;
SIGNAL \my_alu|Mux24~7_combout\ : std_logic;
SIGNAL \my_alu|Mux21~2_combout\ : std_logic;
SIGNAL \my_alu|ShiftRight0~65_combout\ : std_logic;
SIGNAL \my_alu|ShiftLeft0~46_combout\ : std_logic;
SIGNAL \my_alu|ShiftLeft0~47_combout\ : std_logic;
SIGNAL \my_alu|ShiftRight0~67_combout\ : std_logic;
SIGNAL \my_alu|Mux19~2_combout\ : std_logic;
SIGNAL \my_alu|Mux19~3_combout\ : std_logic;
SIGNAL \my_alu|Mux19~4_combout\ : std_logic;
SIGNAL \my_alu|Mux19~5_combout\ : std_logic;
SIGNAL \my_alu|Mux18~0_combout\ : std_logic;
SIGNAL \my_alu|Mux18~1_combout\ : std_logic;
SIGNAL \my_alu|ShiftRight1~58_combout\ : std_logic;
SIGNAL \my_alu|Mux17~2_combout\ : std_logic;
SIGNAL \my_alu|Mux17~3_combout\ : std_logic;
SIGNAL \my_alu|Mux17~4_combout\ : std_logic;
SIGNAL \my_alu|Mux17~5_combout\ : std_logic;
SIGNAL \my_alu|Mux16~2_combout\ : std_logic;
SIGNAL \my_alu|ShiftRight0~69_combout\ : std_logic;
SIGNAL \my_alu|ShiftLeft0~68_combout\ : std_logic;
SIGNAL \my_alu|ShiftLeft0~69_combout\ : std_logic;
SIGNAL \my_alu|Mux14~0_combout\ : std_logic;
SIGNAL \my_alu|Mux14~1_combout\ : std_logic;
SIGNAL \my_alu|Mux14~2_combout\ : std_logic;
SIGNAL \my_alu|Mux14~3_combout\ : std_logic;
SIGNAL \my_alu|Mux14~4_combout\ : std_logic;
SIGNAL \my_alu|Mux13~6_combout\ : std_logic;
SIGNAL \my_alu|Mux13~7_combout\ : std_logic;
SIGNAL \my_alu|Mux13~8_combout\ : std_logic;
SIGNAL \my_alu|Mux13~9_combout\ : std_logic;
SIGNAL \my_alu|Mux13~10_combout\ : std_logic;
SIGNAL \my_alu|ShiftLeft0~75_combout\ : std_logic;
SIGNAL \my_alu|Mux12~0_combout\ : std_logic;
SIGNAL \my_alu|Mux12~1_combout\ : std_logic;
SIGNAL \my_alu|Mux12~2_combout\ : std_logic;
SIGNAL \my_alu|Mux12~3_combout\ : std_logic;
SIGNAL \my_alu|Mux12~4_combout\ : std_logic;
SIGNAL \my_alu|Mux11~0_combout\ : std_logic;
SIGNAL \my_alu|Mux11~1_combout\ : std_logic;
SIGNAL \my_alu|Mux11~2_combout\ : std_logic;
SIGNAL \my_alu|Mux11~3_combout\ : std_logic;
SIGNAL \my_alu|Mux11~4_combout\ : std_logic;
SIGNAL \my_alu|ShiftLeft0~79_combout\ : std_logic;
SIGNAL \my_alu|ShiftLeft0~80_combout\ : std_logic;
SIGNAL \my_alu|ShiftLeft0~81_combout\ : std_logic;
SIGNAL \my_alu|Mux9~0_combout\ : std_logic;
SIGNAL \my_alu|Mux9~1_combout\ : std_logic;
SIGNAL \my_alu|Mux9~2_combout\ : std_logic;
SIGNAL \my_alu|Mux9~3_combout\ : std_logic;
SIGNAL \my_alu|Mux9~4_combout\ : std_logic;
SIGNAL \my_alu|Mux8~0_combout\ : std_logic;
SIGNAL \my_alu|Mux7~0_combout\ : std_logic;
SIGNAL \my_alu|Mux7~7_combout\ : std_logic;
SIGNAL \my_alu|ShiftLeft0~90_combout\ : std_logic;
SIGNAL \my_alu|ShiftLeft0~91_combout\ : std_logic;
SIGNAL \my_alu|Mux6~4_combout\ : std_logic;
SIGNAL \my_alu|Mux6~5_combout\ : std_logic;
SIGNAL \my_alu|Mux6~11_combout\ : std_logic;
SIGNAL \my_alu|ShiftLeft0~95_combout\ : std_logic;
SIGNAL \my_alu|Mux4~0_combout\ : std_logic;
SIGNAL \my_alu|Mux4~4_combout\ : std_logic;
SIGNAL \my_alu|Mux4~7_combout\ : std_logic;
SIGNAL \my_alu|Mux3~0_combout\ : std_logic;
SIGNAL \my_alu|Mux2~0_combout\ : std_logic;
SIGNAL \my_alu|Mux2~2_combout\ : std_logic;
SIGNAL \my_alu|Mux2~3_combout\ : std_logic;
SIGNAL \my_alu|Mux2~4_combout\ : std_logic;
SIGNAL \my_alu|Mux2~5_combout\ : std_logic;
SIGNAL \my_alu|Mux2~6_combout\ : std_logic;
SIGNAL \my_alu|Mux2~7_combout\ : std_logic;
SIGNAL \my_alu|Mux0~5_combout\ : std_logic;
SIGNAL \my_alu|Mux0~7_combout\ : std_logic;
SIGNAL \my_alu|Equal0~4_combout\ : std_logic;
SIGNAL \my_alu|Equal0~5_combout\ : std_logic;
SIGNAL \my_alu|Equal0~9_combout\ : std_logic;
SIGNAL \my_alu|Equal0~10_combout\ : std_logic;
SIGNAL \my_alu|Equal0~11_combout\ : std_logic;
SIGNAL \my_alu|Mux31~21_combout\ : std_logic;
SIGNAL \my_alu|ShiftLeft0~102_combout\ : std_logic;
SIGNAL \my_alu|ShiftRight1~60_combout\ : std_logic;
SIGNAL \hi[0]~output_o\ : std_logic;
SIGNAL \hi[1]~output_o\ : std_logic;
SIGNAL \hi[2]~output_o\ : std_logic;
SIGNAL \hi[3]~output_o\ : std_logic;
SIGNAL \hi[4]~output_o\ : std_logic;
SIGNAL \hi[5]~output_o\ : std_logic;
SIGNAL \hi[6]~output_o\ : std_logic;
SIGNAL \hi[7]~output_o\ : std_logic;
SIGNAL \hi[8]~output_o\ : std_logic;
SIGNAL \hi[9]~output_o\ : std_logic;
SIGNAL \hi[10]~output_o\ : std_logic;
SIGNAL \hi[11]~output_o\ : std_logic;
SIGNAL \hi[12]~output_o\ : std_logic;
SIGNAL \hi[13]~output_o\ : std_logic;
SIGNAL \hi[14]~output_o\ : std_logic;
SIGNAL \hi[15]~output_o\ : std_logic;
SIGNAL \hi[16]~output_o\ : std_logic;
SIGNAL \hi[17]~output_o\ : std_logic;
SIGNAL \hi[18]~output_o\ : std_logic;
SIGNAL \hi[19]~output_o\ : std_logic;
SIGNAL \hi[20]~output_o\ : std_logic;
SIGNAL \hi[21]~output_o\ : std_logic;
SIGNAL \hi[22]~output_o\ : std_logic;
SIGNAL \hi[23]~output_o\ : std_logic;
SIGNAL \hi[24]~output_o\ : std_logic;
SIGNAL \hi[25]~output_o\ : std_logic;
SIGNAL \hi[26]~output_o\ : std_logic;
SIGNAL \hi[27]~output_o\ : std_logic;
SIGNAL \hi[28]~output_o\ : std_logic;
SIGNAL \hi[29]~output_o\ : std_logic;
SIGNAL \hi[30]~output_o\ : std_logic;
SIGNAL \hi[31]~output_o\ : std_logic;
SIGNAL \lo[0]~output_o\ : std_logic;
SIGNAL \lo[1]~output_o\ : std_logic;
SIGNAL \lo[2]~output_o\ : std_logic;
SIGNAL \lo[3]~output_o\ : std_logic;
SIGNAL \lo[4]~output_o\ : std_logic;
SIGNAL \lo[5]~output_o\ : std_logic;
SIGNAL \lo[6]~output_o\ : std_logic;
SIGNAL \lo[7]~output_o\ : std_logic;
SIGNAL \lo[8]~output_o\ : std_logic;
SIGNAL \lo[9]~output_o\ : std_logic;
SIGNAL \lo[10]~output_o\ : std_logic;
SIGNAL \lo[11]~output_o\ : std_logic;
SIGNAL \lo[12]~output_o\ : std_logic;
SIGNAL \lo[13]~output_o\ : std_logic;
SIGNAL \lo[14]~output_o\ : std_logic;
SIGNAL \lo[15]~output_o\ : std_logic;
SIGNAL \lo[16]~output_o\ : std_logic;
SIGNAL \lo[17]~output_o\ : std_logic;
SIGNAL \lo[18]~output_o\ : std_logic;
SIGNAL \lo[19]~output_o\ : std_logic;
SIGNAL \lo[20]~output_o\ : std_logic;
SIGNAL \lo[21]~output_o\ : std_logic;
SIGNAL \lo[22]~output_o\ : std_logic;
SIGNAL \lo[23]~output_o\ : std_logic;
SIGNAL \lo[24]~output_o\ : std_logic;
SIGNAL \lo[25]~output_o\ : std_logic;
SIGNAL \lo[26]~output_o\ : std_logic;
SIGNAL \lo[27]~output_o\ : std_logic;
SIGNAL \lo[28]~output_o\ : std_logic;
SIGNAL \lo[29]~output_o\ : std_logic;
SIGNAL \lo[30]~output_o\ : std_logic;
SIGNAL \lo[31]~output_o\ : std_logic;
SIGNAL \zero~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \op[2]~input_o\ : std_logic;
SIGNAL \op[1]~input_o\ : std_logic;
SIGNAL \output_reg_hi|q[0]~0_combout\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \a[4]~input_o\ : std_logic;
SIGNAL \a[5]~input_o\ : std_logic;
SIGNAL \a[6]~input_o\ : std_logic;
SIGNAL \a[7]~input_o\ : std_logic;
SIGNAL \a[8]~input_o\ : std_logic;
SIGNAL \a[9]~input_o\ : std_logic;
SIGNAL \a[10]~input_o\ : std_logic;
SIGNAL \a[11]~input_o\ : std_logic;
SIGNAL \a[12]~input_o\ : std_logic;
SIGNAL \a[13]~input_o\ : std_logic;
SIGNAL \a[14]~input_o\ : std_logic;
SIGNAL \a[15]~input_o\ : std_logic;
SIGNAL \a[16]~input_o\ : std_logic;
SIGNAL \a[17]~input_o\ : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \b[3]~input_o\ : std_logic;
SIGNAL \b[4]~input_o\ : std_logic;
SIGNAL \b[5]~input_o\ : std_logic;
SIGNAL \b[6]~input_o\ : std_logic;
SIGNAL \b[7]~input_o\ : std_logic;
SIGNAL \b[8]~input_o\ : std_logic;
SIGNAL \b[9]~input_o\ : std_logic;
SIGNAL \b[10]~input_o\ : std_logic;
SIGNAL \b[11]~input_o\ : std_logic;
SIGNAL \b[12]~input_o\ : std_logic;
SIGNAL \b[13]~input_o\ : std_logic;
SIGNAL \b[14]~input_o\ : std_logic;
SIGNAL \b[15]~input_o\ : std_logic;
SIGNAL \b[16]~input_o\ : std_logic;
SIGNAL \b[17]~input_o\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult1~DATAOUT22\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult1~DATAOUT23\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult1~DATAOUT24\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult1~DATAOUT25\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult1~DATAOUT26\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult1~DATAOUT27\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult1~DATAOUT28\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult1~DATAOUT29\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult1~DATAOUT30\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult1~DATAOUT31\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult1~DATAOUT32\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult1~DATAOUT33\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult1~DATAOUT34\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult1~DATAOUT35\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out2~DATAOUT32\ : std_logic;
SIGNAL \a[18]~input_o\ : std_logic;
SIGNAL \a[19]~input_o\ : std_logic;
SIGNAL \a[20]~input_o\ : std_logic;
SIGNAL \a[21]~input_o\ : std_logic;
SIGNAL \a[22]~input_o\ : std_logic;
SIGNAL \a[23]~input_o\ : std_logic;
SIGNAL \a[24]~input_o\ : std_logic;
SIGNAL \a[25]~input_o\ : std_logic;
SIGNAL \a[26]~input_o\ : std_logic;
SIGNAL \a[27]~input_o\ : std_logic;
SIGNAL \a[28]~input_o\ : std_logic;
SIGNAL \a[29]~input_o\ : std_logic;
SIGNAL \a[30]~input_o\ : std_logic;
SIGNAL \a[31]~input_o\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult5~dataout\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult5~DATAOUT1\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult5~DATAOUT2\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult5~DATAOUT3\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult5~DATAOUT4\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult5~DATAOUT5\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult5~DATAOUT6\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult5~DATAOUT7\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult5~DATAOUT8\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult5~DATAOUT9\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult5~DATAOUT10\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult5~DATAOUT11\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult5~DATAOUT12\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult5~DATAOUT13\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult5~DATAOUT14\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult5~DATAOUT15\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult5~DATAOUT16\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult5~DATAOUT17\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult5~DATAOUT18\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult5~DATAOUT19\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult5~DATAOUT20\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult5~DATAOUT21\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult5~DATAOUT22\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult5~DATAOUT23\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult5~DATAOUT24\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult5~DATAOUT25\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult5~DATAOUT26\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult5~DATAOUT27\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult5~DATAOUT28\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult5~DATAOUT29\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult5~DATAOUT30\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult5~DATAOUT31\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult5~0\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult5~1\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult5~2\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult5~3\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out6~DATAOUT13\ : std_logic;
SIGNAL \b[18]~input_o\ : std_logic;
SIGNAL \b[19]~input_o\ : std_logic;
SIGNAL \b[20]~input_o\ : std_logic;
SIGNAL \b[21]~input_o\ : std_logic;
SIGNAL \b[22]~input_o\ : std_logic;
SIGNAL \b[23]~input_o\ : std_logic;
SIGNAL \b[24]~input_o\ : std_logic;
SIGNAL \b[25]~input_o\ : std_logic;
SIGNAL \b[26]~input_o\ : std_logic;
SIGNAL \b[27]~input_o\ : std_logic;
SIGNAL \b[28]~input_o\ : std_logic;
SIGNAL \b[29]~input_o\ : std_logic;
SIGNAL \b[30]~input_o\ : std_logic;
SIGNAL \b[31]~input_o\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult3~dataout\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult3~DATAOUT1\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult3~DATAOUT2\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult3~DATAOUT3\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult3~DATAOUT4\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult3~DATAOUT5\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult3~DATAOUT6\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult3~DATAOUT7\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult3~DATAOUT8\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult3~DATAOUT9\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult3~DATAOUT10\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult3~DATAOUT11\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult3~DATAOUT12\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult3~DATAOUT13\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult3~DATAOUT14\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult3~DATAOUT15\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult3~DATAOUT16\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult3~DATAOUT17\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult3~DATAOUT18\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult3~DATAOUT19\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult3~DATAOUT20\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult3~DATAOUT21\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult3~DATAOUT22\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult3~DATAOUT23\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult3~DATAOUT24\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult3~DATAOUT25\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult3~DATAOUT26\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult3~DATAOUT27\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult3~DATAOUT28\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult3~DATAOUT29\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult3~DATAOUT30\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult3~DATAOUT31\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult3~0\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult3~1\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult3~2\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult3~3\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out4~DATAOUT12\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out4~DATAOUT11\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out6~DATAOUT10\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out6~DATAOUT9\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out4~DATAOUT8\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out6~DATAOUT7\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out4~DATAOUT6\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out6~DATAOUT5\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out4~DATAOUT4\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out6~DATAOUT3\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out6~DATAOUT2\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out4~DATAOUT1\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out6~dataout\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|add9_result[0]~1\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|add9_result[1]~3\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|add9_result[2]~5\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|add9_result[3]~7\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|add9_result[4]~9\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|add9_result[5]~11\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|add9_result[6]~13\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|add9_result[7]~15\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|add9_result[8]~17\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|add9_result[9]~19\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|add9_result[10]~21\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|add9_result[11]~23\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|add9_result[12]~25\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|add9_result[13]~26_combout\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|add9_result[12]~24_combout\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out2~DATAOUT29\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|add9_result[10]~20_combout\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out2~DATAOUT27\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|add9_result[8]~16_combout\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|add9_result[7]~14_combout\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|add9_result[6]~12_combout\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|add9_result[5]~10_combout\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|add9_result[4]~8_combout\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|add9_result[3]~6_combout\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out2~DATAOUT20\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out2~DATAOUT19\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|op_1~1\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|op_1~3\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|op_1~5\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|op_1~7\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|op_1~9\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|op_1~11\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|op_1~13\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|op_1~15\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|op_1~17\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|op_1~19\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|op_1~21\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|op_1~23\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|op_1~25\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|op_1~27\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|op_1~28_combout\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult5~dataout\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult5~DATAOUT1\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult5~DATAOUT2\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult5~DATAOUT3\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult5~DATAOUT4\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult5~DATAOUT5\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult5~DATAOUT6\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult5~DATAOUT7\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult5~DATAOUT8\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult5~DATAOUT9\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult5~DATAOUT10\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult5~DATAOUT11\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult5~DATAOUT12\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult5~DATAOUT13\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult5~DATAOUT14\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult5~DATAOUT15\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult5~DATAOUT16\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult5~DATAOUT17\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult5~DATAOUT18\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult5~DATAOUT19\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult5~DATAOUT20\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult5~DATAOUT21\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult5~DATAOUT22\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult5~DATAOUT23\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult5~DATAOUT24\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult5~DATAOUT25\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult5~DATAOUT26\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult5~DATAOUT27\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult5~DATAOUT28\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult5~DATAOUT29\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult5~DATAOUT30\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult5~DATAOUT31\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult5~0\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult5~1\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult5~2\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult5~3\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out6~DATAOUT14\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out6~DATAOUT13\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult3~dataout\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult3~DATAOUT1\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult3~DATAOUT2\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult3~DATAOUT3\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult3~DATAOUT4\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult3~DATAOUT5\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult3~DATAOUT6\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult3~DATAOUT7\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult3~DATAOUT8\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult3~DATAOUT9\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult3~DATAOUT10\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult3~DATAOUT11\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult3~DATAOUT12\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult3~DATAOUT13\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult3~DATAOUT14\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult3~DATAOUT15\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult3~DATAOUT16\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult3~DATAOUT17\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult3~DATAOUT18\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult3~DATAOUT19\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult3~DATAOUT20\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult3~DATAOUT21\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult3~DATAOUT22\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult3~DATAOUT23\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult3~DATAOUT24\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult3~DATAOUT25\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult3~DATAOUT26\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult3~DATAOUT27\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult3~DATAOUT28\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult3~DATAOUT29\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult3~DATAOUT30\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult3~DATAOUT31\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult3~0\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult3~1\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult3~2\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult3~3\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out4~DATAOUT12\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out6~DATAOUT11\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out4~DATAOUT10\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out6~DATAOUT9\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out6~DATAOUT8\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out6~DATAOUT7\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out4~DATAOUT6\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out4~DATAOUT5\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out4~DATAOUT4\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out4~DATAOUT3\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out4~DATAOUT2\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out4~DATAOUT1\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out4~dataout\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|add9_result[0]~1\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|add9_result[1]~3\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|add9_result[2]~5\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|add9_result[3]~7\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|add9_result[4]~9\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|add9_result[5]~11\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|add9_result[6]~13\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|add9_result[7]~15\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|add9_result[8]~17\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|add9_result[9]~19\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|add9_result[10]~21\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|add9_result[11]~23\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|add9_result[12]~25\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|add9_result[13]~27\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|add9_result[14]~28_combout\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult1~DATAOUT16\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult1~DATAOUT17\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult1~DATAOUT18\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult1~DATAOUT19\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult1~DATAOUT20\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult1~DATAOUT21\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult1~DATAOUT22\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult1~DATAOUT23\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult1~DATAOUT24\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult1~DATAOUT25\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult1~DATAOUT26\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult1~DATAOUT27\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult1~DATAOUT28\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult1~DATAOUT29\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult1~DATAOUT30\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult1~DATAOUT31\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult1~DATAOUT32\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult1~DATAOUT33\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult1~DATAOUT34\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult1~DATAOUT35\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out2~DATAOUT31\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out2~DATAOUT30\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|add9_result[11]~22_combout\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out2~DATAOUT28\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out2~DATAOUT27\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out2~DATAOUT26\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|add9_result[7]~14_combout\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|add9_result[6]~12_combout\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out2~DATAOUT23\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|add9_result[4]~8_combout\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|add9_result[3]~6_combout\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|add9_result[2]~4_combout\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|add9_result[1]~2_combout\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out2~DATAOUT18\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|op_1~1\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|op_1~3\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|op_1~5\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|op_1~7\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|op_1~9\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|op_1~11\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|op_1~13\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|op_1~15\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|op_1~17\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|op_1~19\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|op_1~21\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|op_1~23\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|op_1~25\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|op_1~27\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|op_1~28_combout\ : std_logic;
SIGNAL \my_alu|Selector31~0_combout\ : std_logic;
SIGNAL \op[0]~input_o\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out2~DATAOUT33\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|op_1~29\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|op_1~30_combout\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out4~DATAOUT15\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out4~DATAOUT14\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|add9_result[13]~27\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|add9_result[14]~29\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|add9_result[15]~30_combout\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|op_1~29\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|op_1~30_combout\ : std_logic;
SIGNAL \my_alu|Selector30~0_combout\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out2~DATAOUT34\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|op_1~31\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|op_1~32_combout\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out2~DATAOUT34\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|op_1~31\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|op_1~32_combout\ : std_logic;
SIGNAL \my_alu|Selector29~0_combout\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out4~DATAOUT17\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out4~DATAOUT16\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out6~DATAOUT15\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|add9_result[14]~29\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|add9_result[15]~31\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|add9_result[16]~33\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|add9_result[17]~34_combout\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|op_1~33\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|op_1~34_combout\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out2~DATAOUT35\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|op_1~33\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|op_1~34_combout\ : std_logic;
SIGNAL \my_alu|Selector28~0_combout\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out4~DATAOUT18\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|op_1~35\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|op_1~36_combout\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out4~DATAOUT18\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|op_1~35\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|op_1~36_combout\ : std_logic;
SIGNAL \my_alu|Selector27~0_combout\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out6~DATAOUT19\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out6~DATAOUT18\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out4~DATAOUT17\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out4~DATAOUT16\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|add9_result[15]~31\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|add9_result[16]~33\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|add9_result[17]~35\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|add9_result[18]~37\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|add9_result[19]~38_combout\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|op_1~37\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|op_1~38_combout\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult7~dataout\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult7~DATAOUT1\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult7~DATAOUT2\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult7~DATAOUT3\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult7~DATAOUT4\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult7~DATAOUT5\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult7~DATAOUT6\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult7~DATAOUT7\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult7~DATAOUT8\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult7~DATAOUT9\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult7~DATAOUT10\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult7~DATAOUT11\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult7~DATAOUT12\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult7~DATAOUT13\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult7~DATAOUT14\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult7~DATAOUT15\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult7~DATAOUT16\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult7~DATAOUT17\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult7~DATAOUT18\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult7~DATAOUT19\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult7~DATAOUT20\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult7~DATAOUT21\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult7~DATAOUT22\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult7~DATAOUT23\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult7~DATAOUT24\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult7~DATAOUT25\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult7~DATAOUT26\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult7~DATAOUT27\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult7~0\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult7~1\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult7~2\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult7~3\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult7~4\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult7~5\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult7~6\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_mult7~7\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out8~DATAOUT1\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out6~DATAOUT18\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|add9_result[17]~35\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|add9_result[18]~37\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|add9_result[19]~38_combout\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|op_1~37\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|op_1~38_combout\ : std_logic;
SIGNAL \my_alu|Selector26~0_combout\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out6~DATAOUT20\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|add9_result[19]~39\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|add9_result[20]~40_combout\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|op_1~39\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|op_1~40_combout\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out6~DATAOUT20\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|add9_result[19]~39\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|add9_result[20]~40_combout\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|op_1~39\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|op_1~40_combout\ : std_logic;
SIGNAL \my_alu|Selector25~0_combout\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult7~dataout\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult7~DATAOUT1\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult7~DATAOUT2\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult7~DATAOUT3\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult7~DATAOUT4\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult7~DATAOUT5\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult7~DATAOUT6\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult7~DATAOUT7\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult7~DATAOUT8\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult7~DATAOUT9\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult7~DATAOUT10\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult7~DATAOUT11\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult7~DATAOUT12\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult7~DATAOUT13\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult7~DATAOUT14\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult7~DATAOUT15\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult7~DATAOUT16\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult7~DATAOUT17\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult7~DATAOUT18\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult7~DATAOUT19\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult7~DATAOUT20\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult7~DATAOUT21\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult7~DATAOUT22\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult7~DATAOUT23\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult7~DATAOUT24\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult7~DATAOUT25\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult7~DATAOUT26\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult7~DATAOUT27\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult7~0\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult7~1\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult7~2\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult7~3\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult7~4\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult7~5\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult7~6\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_mult7~7\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out8~DATAOUT3\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|add9_result[20]~41\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|add9_result[21]~42_combout\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|op_1~41\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|op_1~42_combout\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out4~DATAOUT21\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|op_1~41\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|op_1~42_combout\ : std_logic;
SIGNAL \my_alu|Selector24~0_combout\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out6~DATAOUT22\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|add9_result[21]~43\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|add9_result[22]~44_combout\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|op_1~43\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|op_1~44_combout\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out6~DATAOUT22\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out8~DATAOUT3\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|add9_result[20]~41\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|add9_result[21]~43\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|add9_result[22]~44_combout\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|op_1~43\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|op_1~44_combout\ : std_logic;
SIGNAL \my_alu|Selector23~0_combout\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out6~DATAOUT23\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|add9_result[22]~45\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|add9_result[23]~46_combout\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|op_1~45\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|op_1~46_combout\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out6~DATAOUT23\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|add9_result[22]~45\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|add9_result[23]~46_combout\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|op_1~45\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|op_1~46_combout\ : std_logic;
SIGNAL \my_alu|Selector22~0_combout\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out4~DATAOUT24\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|op_1~47\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|op_1~48_combout\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out6~DATAOUT24\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|add9_result[23]~47\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|add9_result[24]~48_combout\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|op_1~47\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|op_1~48_combout\ : std_logic;
SIGNAL \my_alu|Selector21~0_combout\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out4~DATAOUT25\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|op_1~49\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|op_1~50_combout\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out8~DATAOUT7\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out6~DATAOUT24\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|add9_result[23]~47\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|add9_result[24]~49\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|add9_result[25]~50_combout\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|op_1~49\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|op_1~50_combout\ : std_logic;
SIGNAL \my_alu|Selector20~0_combout\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out6~DATAOUT26\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out6~DATAOUT25\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|add9_result[24]~49\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|add9_result[25]~51\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|add9_result[26]~52_combout\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|op_1~51\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|op_1~52_combout\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out4~DATAOUT26\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|op_1~51\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|op_1~52_combout\ : std_logic;
SIGNAL \my_alu|Selector19~0_combout\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out6~DATAOUT27\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|add9_result[26]~53\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|add9_result[27]~54_combout\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|op_1~53\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|op_1~54_combout\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out8~DATAOUT9\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out8~DATAOUT8\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|add9_result[25]~51\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|add9_result[26]~53\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|add9_result[27]~54_combout\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|op_1~53\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|op_1~54_combout\ : std_logic;
SIGNAL \my_alu|Selector18~0_combout\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out4~DATAOUT28\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|op_1~55\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|op_1~56_combout\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out8~DATAOUT10\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|add9_result[27]~55\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|add9_result[28]~56_combout\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|op_1~55\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|op_1~56_combout\ : std_logic;
SIGNAL \my_alu|Selector17~0_combout\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out8~DATAOUT11\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out8~DATAOUT10\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|add9_result[27]~55\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|add9_result[28]~57\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|add9_result[29]~58_combout\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|op_1~57\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|op_1~58_combout\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out6~DATAOUT29\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|add9_result[28]~57\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|add9_result[29]~58_combout\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|op_1~57\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|op_1~58_combout\ : std_logic;
SIGNAL \my_alu|Selector16~0_combout\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out4~DATAOUT30\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|op_1~59\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|op_1~60_combout\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out4~DATAOUT30\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|op_1~59\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|op_1~60_combout\ : std_logic;
SIGNAL \my_alu|Selector15~0_combout\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out4~DATAOUT31\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|op_1~61\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|op_1~62_combout\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out6~DATAOUT31\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out8~DATAOUT12\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|add9_result[29]~59\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|add9_result[30]~61\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|add9_result[31]~62_combout\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|op_1~61\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|op_1~62_combout\ : std_logic;
SIGNAL \my_alu|Selector14~0_combout\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|op_1~63\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|op_1~64_combout\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out8~DATAOUT14\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|op_1~63\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|op_1~64_combout\ : std_logic;
SIGNAL \my_alu|Selector13~0_combout\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out8~DATAOUT15\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|op_1~65\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|op_1~66_combout\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|op_1~65\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|op_1~66_combout\ : std_logic;
SIGNAL \my_alu|Selector12~0_combout\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|op_1~67\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|op_1~68_combout\ : std_logic;
SIGNAL \my_alu|Selector11~0_combout\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out8~DATAOUT14\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|add9_result[31]~63\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|add9_result[32]~65\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|add9_result[33]~67\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|add9_result[34]~69\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|add9_result[35]~70_combout\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|op_1~69\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|op_1~70_combout\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out8~DATAOUT17\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|op_1~67\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|op_1~69\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|op_1~70_combout\ : std_logic;
SIGNAL \my_alu|Selector10~0_combout\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out8~DATAOUT18\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|op_1~71\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|op_1~72_combout\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out8~DATAOUT18\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|add9_result[35]~71\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|add9_result[36]~72_combout\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|op_1~71\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|op_1~72_combout\ : std_logic;
SIGNAL \my_alu|Selector9~0_combout\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out8~DATAOUT19\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|add9_result[36]~73\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|add9_result[37]~74_combout\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|op_1~73\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|op_1~74_combout\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out8~DATAOUT19\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|op_1~73\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|op_1~74_combout\ : std_logic;
SIGNAL \my_alu|Selector8~0_combout\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out8~DATAOUT20\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|add9_result[37]~75\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|add9_result[38]~76_combout\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|op_1~75\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|op_1~76_combout\ : std_logic;
SIGNAL \my_alu|Selector7~0_combout\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|op_1~75\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|op_1~77\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|op_1~78_combout\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out8~DATAOUT21\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|add9_result[38]~77\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|add9_result[39]~78_combout\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|op_1~77\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|op_1~78_combout\ : std_logic;
SIGNAL \my_alu|Selector6~0_combout\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|op_1~79\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|op_1~80_combout\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out8~DATAOUT22\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|add9_result[39]~79\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|add9_result[40]~80_combout\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|op_1~79\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|op_1~80_combout\ : std_logic;
SIGNAL \my_alu|Selector5~0_combout\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|op_1~81\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|op_1~82_combout\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|op_1~81\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|op_1~82_combout\ : std_logic;
SIGNAL \my_alu|Selector4~0_combout\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|op_1~83\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|op_1~84_combout\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out8~DATAOUT23\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|add9_result[40]~81\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|add9_result[41]~83\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|add9_result[42]~84_combout\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|op_1~83\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|op_1~84_combout\ : std_logic;
SIGNAL \my_alu|Selector3~0_combout\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|add9_result[42]~85\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|add9_result[43]~86_combout\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|op_1~85\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|op_1~86_combout\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|op_1~85\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|op_1~86_combout\ : std_logic;
SIGNAL \my_alu|Selector2~0_combout\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|mac_out8~DATAOUT26\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|add9_result[43]~87\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|add9_result[44]~88_combout\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|op_1~87\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|op_1~88_combout\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|mac_out8~DATAOUT26\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|op_1~87\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|op_1~88_combout\ : std_logic;
SIGNAL \my_alu|Selector1~0_combout\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|add9_result[44]~89\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|add9_result[45]~90_combout\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|op_1~89\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|op_1~90_combout\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|op_1~89\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|op_1~90_combout\ : std_logic;
SIGNAL \my_alu|Selector0~0_combout\ : std_logic;
SIGNAL \op[3]~input_o\ : std_logic;
SIGNAL \input_reg_op|q[3]~feeder_combout\ : std_logic;
SIGNAL \input_reg_b|q[0]~_Duplicate_4_q\ : std_logic;
SIGNAL \my_alu|Mux31~22_combout\ : std_logic;
SIGNAL \my_alu|Mux31~23_combout\ : std_logic;
SIGNAL \my_alu|Mux0~0_combout\ : std_logic;
SIGNAL \shamt[4]~input_o\ : std_logic;
SIGNAL \shamt[1]~input_o\ : std_logic;
SIGNAL \shamt[0]~input_o\ : std_logic;
SIGNAL \input_reg_b|q[28]~_Duplicate_4_q\ : std_logic;
SIGNAL \my_alu|ShiftRight0~5_combout\ : std_logic;
SIGNAL \input_reg_b|q[31]~_Duplicate_4_q\ : std_logic;
SIGNAL \my_alu|ShiftRight1~8_combout\ : std_logic;
SIGNAL \my_alu|ShiftRight0~6_combout\ : std_logic;
SIGNAL \shamt[2]~input_o\ : std_logic;
SIGNAL \input_reg_b|q[27]~_Duplicate_4_q\ : std_logic;
SIGNAL \input_reg_b|q[25]~_Duplicate_4_q\ : std_logic;
SIGNAL \my_alu|ShiftRight0~7_combout\ : std_logic;
SIGNAL \input_reg_b|q[26]~_Duplicate_4_q\ : std_logic;
SIGNAL \input_reg_b|q[24]~_Duplicate_4_q\ : std_logic;
SIGNAL \my_alu|ShiftRight0~8_combout\ : std_logic;
SIGNAL \my_alu|ShiftRight0~9_combout\ : std_logic;
SIGNAL \my_alu|ShiftRight0~10_combout\ : std_logic;
SIGNAL \input_reg_b|q[19]~_Duplicate_4_q\ : std_logic;
SIGNAL \my_alu|ShiftRight0~14_combout\ : std_logic;
SIGNAL \input_reg_b|q[16]~_Duplicate_4feeder_combout\ : std_logic;
SIGNAL \input_reg_b|q[16]~_Duplicate_4_q\ : std_logic;
SIGNAL \input_reg_b|q[18]~_Duplicate_4_q\ : std_logic;
SIGNAL \my_alu|ShiftRight0~15_combout\ : std_logic;
SIGNAL \my_alu|ShiftRight0~16_combout\ : std_logic;
SIGNAL \input_reg_b|q[23]~_Duplicate_4_q\ : std_logic;
SIGNAL \my_alu|ShiftRight0~11_combout\ : std_logic;
SIGNAL \input_reg_b|q[22]~_Duplicate_4_q\ : std_logic;
SIGNAL \input_reg_b|q[20]~_Duplicate_4_q\ : std_logic;
SIGNAL \my_alu|ShiftRight0~12_combout\ : std_logic;
SIGNAL \my_alu|ShiftRight0~13_combout\ : std_logic;
SIGNAL \my_alu|ShiftRight0~17_combout\ : std_logic;
SIGNAL \my_alu|Mux31~5_combout\ : std_logic;
SIGNAL \input_reg_b|q[15]~_Duplicate_4_q\ : std_logic;
SIGNAL \my_alu|ShiftRight0~20_combout\ : std_logic;
SIGNAL \input_reg_b|q[14]~_Duplicate_4_q\ : std_logic;
SIGNAL \input_reg_b|q[12]~_Duplicate_4_q\ : std_logic;
SIGNAL \my_alu|ShiftRight0~21_combout\ : std_logic;
SIGNAL \my_alu|ShiftRight0~22_combout\ : std_logic;
SIGNAL \my_alu|ShiftRight0~26_combout\ : std_logic;
SIGNAL \input_reg_b|q[3]~_Duplicate_4_q\ : std_logic;
SIGNAL \my_alu|ShiftRight1~9_combout\ : std_logic;
SIGNAL \input_reg_b|q[1]~_Duplicate_4_q\ : std_logic;
SIGNAL \my_alu|Mux31~6_combout\ : std_logic;
SIGNAL \my_alu|Mux31~7_combout\ : std_logic;
SIGNAL \input_reg_b|q[4]~_Duplicate_4_q\ : std_logic;
SIGNAL \my_alu|ShiftRight1~10_combout\ : std_logic;
SIGNAL \my_alu|ShiftRight0~19_combout\ : std_logic;
SIGNAL \my_alu|Mux31~8_combout\ : std_logic;
SIGNAL \my_alu|Mux31~9_combout\ : std_logic;
SIGNAL \my_alu|Mux31~10_combout\ : std_logic;
SIGNAL \my_alu|Mux31~11_combout\ : std_logic;
SIGNAL \input_reg_b|q[29]~_Duplicate_4_q\ : std_logic;
SIGNAL \input_reg_b|q[11]~_Duplicate_4_q\ : std_logic;
SIGNAL \input_reg_b|q[8]~_Duplicate_4_q\ : std_logic;
SIGNAL \input_reg_b|q[6]~_Duplicate_4_q\ : std_logic;
SIGNAL \input_reg_b|q[5]~_Duplicate_4_q\ : std_logic;
SIGNAL \my_alu|Add0~1_cout\ : std_logic;
SIGNAL \my_alu|Add0~3\ : std_logic;
SIGNAL \my_alu|Add0~5\ : std_logic;
SIGNAL \my_alu|Add0~7\ : std_logic;
SIGNAL \my_alu|Add0~9\ : std_logic;
SIGNAL \my_alu|Add0~11\ : std_logic;
SIGNAL \my_alu|Add0~13\ : std_logic;
SIGNAL \my_alu|Add0~15\ : std_logic;
SIGNAL \my_alu|Add0~17\ : std_logic;
SIGNAL \my_alu|Add0~19\ : std_logic;
SIGNAL \my_alu|Add0~21\ : std_logic;
SIGNAL \my_alu|Add0~23\ : std_logic;
SIGNAL \my_alu|Add0~25\ : std_logic;
SIGNAL \my_alu|Add0~27\ : std_logic;
SIGNAL \my_alu|Add0~29\ : std_logic;
SIGNAL \my_alu|Add0~31\ : std_logic;
SIGNAL \my_alu|Add0~33\ : std_logic;
SIGNAL \my_alu|Add0~35\ : std_logic;
SIGNAL \my_alu|Add0~37\ : std_logic;
SIGNAL \my_alu|Add0~39\ : std_logic;
SIGNAL \my_alu|Add0~41\ : std_logic;
SIGNAL \my_alu|Add0~43\ : std_logic;
SIGNAL \my_alu|Add0~45\ : std_logic;
SIGNAL \my_alu|Add0~47\ : std_logic;
SIGNAL \my_alu|Add0~49\ : std_logic;
SIGNAL \my_alu|Add0~51\ : std_logic;
SIGNAL \my_alu|Add0~53\ : std_logic;
SIGNAL \my_alu|Add0~55\ : std_logic;
SIGNAL \my_alu|Add0~57\ : std_logic;
SIGNAL \my_alu|Add0~59\ : std_logic;
SIGNAL \my_alu|Add0~61\ : std_logic;
SIGNAL \my_alu|Add0~62_combout\ : std_logic;
SIGNAL \my_alu|Add0~60_combout\ : std_logic;
SIGNAL \input_reg_a|q[29]~_Duplicate_4feeder_combout\ : std_logic;
SIGNAL \input_reg_a|q[29]~_Duplicate_4_q\ : std_logic;
SIGNAL \my_alu|Add0~56_combout\ : std_logic;
SIGNAL \my_alu|Add0~54_combout\ : std_logic;
SIGNAL \my_alu|Add0~52_combout\ : std_logic;
SIGNAL \my_alu|Add0~50_combout\ : std_logic;
SIGNAL \input_reg_a|q[24]~_Duplicate_4_q\ : std_logic;
SIGNAL \input_reg_a|q[23]~_Duplicate_4feeder_combout\ : std_logic;
SIGNAL \input_reg_a|q[23]~_Duplicate_4_q\ : std_logic;
SIGNAL \input_reg_a|q[22]~_Duplicate_4_q\ : std_logic;
SIGNAL \input_reg_a|q[21]~_Duplicate_4_q\ : std_logic;
SIGNAL \input_reg_a|q[20]~_Duplicate_4feeder_combout\ : std_logic;
SIGNAL \input_reg_a|q[20]~_Duplicate_4_q\ : std_logic;
SIGNAL \input_reg_a|q[19]~_Duplicate_4_q\ : std_logic;
SIGNAL \my_alu|Add0~36_combout\ : std_logic;
SIGNAL \my_alu|Add0~34_combout\ : std_logic;
SIGNAL \input_reg_a|q[16]~_Duplicate_4feeder_combout\ : std_logic;
SIGNAL \input_reg_a|q[16]~_Duplicate_4_q\ : std_logic;
SIGNAL \my_alu|Add0~30_combout\ : std_logic;
SIGNAL \my_alu|Add0~28_combout\ : std_logic;
SIGNAL \input_reg_a|q[13]~_Duplicate_4_q\ : std_logic;
SIGNAL \my_alu|Add0~24_combout\ : std_logic;
SIGNAL \my_alu|Add0~22_combout\ : std_logic;
SIGNAL \my_alu|Add0~20_combout\ : std_logic;
SIGNAL \my_alu|Add0~18_combout\ : std_logic;
SIGNAL \input_reg_a|q[8]~_Duplicate_4_q\ : std_logic;
SIGNAL \input_reg_a|q[7]~_Duplicate_4_q\ : std_logic;
SIGNAL \input_reg_a|q[6]~_Duplicate_4_q\ : std_logic;
SIGNAL \my_alu|Add0~10_combout\ : std_logic;
SIGNAL \my_alu|Add0~8_combout\ : std_logic;
SIGNAL \my_alu|Add0~6_combout\ : std_logic;
SIGNAL \input_reg_a|q[2]~_Duplicate_4_q\ : std_logic;
SIGNAL \input_reg_a|q[1]~_Duplicate_4_q\ : std_logic;
SIGNAL \my_alu|Add1~1_cout\ : std_logic;
SIGNAL \my_alu|Add1~3_cout\ : std_logic;
SIGNAL \my_alu|Add1~5_cout\ : std_logic;
SIGNAL \my_alu|Add1~7_cout\ : std_logic;
SIGNAL \my_alu|Add1~9_cout\ : std_logic;
SIGNAL \my_alu|Add1~11_cout\ : std_logic;
SIGNAL \my_alu|Add1~13_cout\ : std_logic;
SIGNAL \my_alu|Add1~15_cout\ : std_logic;
SIGNAL \my_alu|Add1~17_cout\ : std_logic;
SIGNAL \my_alu|Add1~19_cout\ : std_logic;
SIGNAL \my_alu|Add1~21_cout\ : std_logic;
SIGNAL \my_alu|Add1~23_cout\ : std_logic;
SIGNAL \my_alu|Add1~25_cout\ : std_logic;
SIGNAL \my_alu|Add1~27_cout\ : std_logic;
SIGNAL \my_alu|Add1~29_cout\ : std_logic;
SIGNAL \my_alu|Add1~31_cout\ : std_logic;
SIGNAL \my_alu|Add1~33_cout\ : std_logic;
SIGNAL \my_alu|Add1~35_cout\ : std_logic;
SIGNAL \my_alu|Add1~37_cout\ : std_logic;
SIGNAL \my_alu|Add1~39_cout\ : std_logic;
SIGNAL \my_alu|Add1~41_cout\ : std_logic;
SIGNAL \my_alu|Add1~43_cout\ : std_logic;
SIGNAL \my_alu|Add1~45_cout\ : std_logic;
SIGNAL \my_alu|Add1~47_cout\ : std_logic;
SIGNAL \my_alu|Add1~49_cout\ : std_logic;
SIGNAL \my_alu|Add1~51_cout\ : std_logic;
SIGNAL \my_alu|Add1~53_cout\ : std_logic;
SIGNAL \my_alu|Add1~55_cout\ : std_logic;
SIGNAL \my_alu|Add1~57_cout\ : std_logic;
SIGNAL \my_alu|Add1~59_cout\ : std_logic;
SIGNAL \my_alu|Add1~61_cout\ : std_logic;
SIGNAL \my_alu|diff[31]~1\ : std_logic;
SIGNAL \my_alu|Add1~62_combout\ : std_logic;
SIGNAL \my_alu|Mux31~20_combout\ : std_logic;
SIGNAL \my_alu|Mux31~19_combout\ : std_logic;
SIGNAL \my_alu|ShiftRight1~11_combout\ : std_logic;
SIGNAL \my_alu|ShiftRight0~27_combout\ : std_logic;
SIGNAL \my_alu|ShiftRight1~12_combout\ : std_logic;
SIGNAL \my_alu|ShiftRight0~28_combout\ : std_logic;
SIGNAL \my_alu|ShiftRight0~29_combout\ : std_logic;
SIGNAL \my_alu|ShiftRight1~13_combout\ : std_logic;
SIGNAL \my_alu|ShiftRight0~30_combout\ : std_logic;
SIGNAL \input_reg_b|q[30]~_Duplicate_4_q\ : std_logic;
SIGNAL \my_alu|ShiftRight1~14_combout\ : std_logic;
SIGNAL \my_alu|ShiftRight1~15_combout\ : std_logic;
SIGNAL \my_alu|ShiftRight1~16_combout\ : std_logic;
SIGNAL \my_alu|Mux30~4_combout\ : std_logic;
SIGNAL \input_reg_b|q[2]~_Duplicate_4_q\ : std_logic;
SIGNAL \my_alu|Mux30~6_combout\ : std_logic;
SIGNAL \my_alu|ShiftRight1~17_combout\ : std_logic;
SIGNAL \my_alu|Mux30~7_combout\ : std_logic;
SIGNAL \shamt[3]~input_o\ : std_logic;
SIGNAL \input_reg_b|q[7]~_Duplicate_4_q\ : std_logic;
SIGNAL \my_alu|ShiftRight0~35_combout\ : std_logic;
SIGNAL \my_alu|ShiftRight1~18_combout\ : std_logic;
SIGNAL \my_alu|ShiftRight0~36_combout\ : std_logic;
SIGNAL \my_alu|Mux30~8_combout\ : std_logic;
SIGNAL \input_reg_b|q[9]~_Duplicate_4_q\ : std_logic;
SIGNAL \my_alu|ShiftRight0~23_combout\ : std_logic;
SIGNAL \my_alu|ShiftRight1~20_combout\ : std_logic;
SIGNAL \my_alu|ShiftRight0~38_combout\ : std_logic;
SIGNAL \my_alu|ShiftRight1~19_combout\ : std_logic;
SIGNAL \my_alu|ShiftRight0~37_combout\ : std_logic;
SIGNAL \my_alu|ShiftRight0~39_combout\ : std_logic;
SIGNAL \my_alu|Mux30~9_combout\ : std_logic;
SIGNAL \my_alu|Mux30~10_combout\ : std_logic;
SIGNAL \input_reg_a|q[0]~_Duplicate_4_q\ : std_logic;
SIGNAL \my_alu|Add3~1\ : std_logic;
SIGNAL \my_alu|Add3~2_combout\ : std_logic;
SIGNAL \my_alu|Add2~1\ : std_logic;
SIGNAL \my_alu|Add2~2_combout\ : std_logic;
SIGNAL \my_alu|Mux30~0_combout\ : std_logic;
SIGNAL \my_alu|Mux30~1_combout\ : std_logic;
SIGNAL \my_alu|Mux30~2_combout\ : std_logic;
SIGNAL \my_alu|Mux30~3_combout\ : std_logic;
SIGNAL \my_alu|Mux30~11_combout\ : std_logic;
SIGNAL \my_alu|Add2~3\ : std_logic;
SIGNAL \my_alu|Add2~4_combout\ : std_logic;
SIGNAL \my_alu|Add3~3\ : std_logic;
SIGNAL \my_alu|Add3~4_combout\ : std_logic;
SIGNAL \my_alu|Mux29~0_combout\ : std_logic;
SIGNAL \my_alu|Mux29~1_combout\ : std_logic;
SIGNAL \my_alu|Mux29~2_combout\ : std_logic;
SIGNAL \my_alu|Mux29~3_combout\ : std_logic;
SIGNAL \my_alu|ShiftLeft0~8_combout\ : std_logic;
SIGNAL \my_alu|ShiftLeft0~100_combout\ : std_logic;
SIGNAL \my_alu|ShiftRight1~21_combout\ : std_logic;
SIGNAL \my_alu|ShiftRight1~22_combout\ : std_logic;
SIGNAL \my_alu|ShiftRight1~27_combout\ : std_logic;
SIGNAL \my_alu|ShiftRight1~28_combout\ : std_logic;
SIGNAL \my_alu|ShiftRight1~23_combout\ : std_logic;
SIGNAL \my_alu|ShiftRight1~24_combout\ : std_logic;
SIGNAL \input_reg_b|q[21]~_Duplicate_4_q\ : std_logic;
SIGNAL \my_alu|ShiftRight1~25_combout\ : std_logic;
SIGNAL \my_alu|ShiftRight1~26_combout\ : std_logic;
SIGNAL \my_alu|ShiftRight0~41_combout\ : std_logic;
SIGNAL \my_alu|ShiftRight1~29_combout\ : std_logic;
SIGNAL \my_alu|Mux29~9_combout\ : std_logic;
SIGNAL \my_alu|Mux29~8_combout\ : std_logic;
SIGNAL \my_alu|Mux29~10_combout\ : std_logic;
SIGNAL \my_alu|ShiftRight0~40_combout\ : std_logic;
SIGNAL \my_alu|ShiftRight0~42_combout\ : std_logic;
SIGNAL \my_alu|Mux29~11_combout\ : std_logic;
SIGNAL \my_alu|Mux29~12_combout\ : std_logic;
SIGNAL \my_alu|ShiftRight0~34_combout\ : std_logic;
SIGNAL \my_alu|ShiftLeft0~9_combout\ : std_logic;
SIGNAL \my_alu|ShiftLeft0~10_combout\ : std_logic;
SIGNAL \my_alu|Mux29~4_combout\ : std_logic;
SIGNAL \my_alu|ShiftRight1~38_combout\ : std_logic;
SIGNAL \my_alu|ShiftRight1~41_combout\ : std_logic;
SIGNAL \my_alu|ShiftRight1~39_combout\ : std_logic;
SIGNAL \my_alu|ShiftRight1~40_combout\ : std_logic;
SIGNAL \my_alu|ShiftRight0~45_combout\ : std_logic;
SIGNAL \my_alu|ShiftRight1~42_combout\ : std_logic;
SIGNAL \input_reg_b|q[17]~_Duplicate_4_q\ : std_logic;
SIGNAL \my_alu|ShiftRight1~33_combout\ : std_logic;
SIGNAL \my_alu|ShiftRight1~44_combout\ : std_logic;
SIGNAL \my_alu|ShiftRight1~35_combout\ : std_logic;
SIGNAL \my_alu|ShiftRight1~45_combout\ : std_logic;
SIGNAL \my_alu|ShiftRight0~47_combout\ : std_logic;
SIGNAL \my_alu|ShiftRight1~31_combout\ : std_logic;
SIGNAL \input_reg_b|q[10]~_Duplicate_4feeder_combout\ : std_logic;
SIGNAL \input_reg_b|q[10]~_Duplicate_4_q\ : std_logic;
SIGNAL \my_alu|ShiftRight0~24_combout\ : std_logic;
SIGNAL \my_alu|ShiftRight1~43_combout\ : std_logic;
SIGNAL \my_alu|Mux28~4_combout\ : std_logic;
SIGNAL \my_alu|Mux28~5_combout\ : std_logic;
SIGNAL \my_alu|Mux28~6_combout\ : std_logic;
SIGNAL \my_alu|Mux28~7_combout\ : std_logic;
SIGNAL \my_alu|Mux28~2_combout\ : std_logic;
SIGNAL \input_reg_a|q[3]~_Duplicate_4_q\ : std_logic;
SIGNAL \my_alu|Add3~5\ : std_logic;
SIGNAL \my_alu|Add3~6_combout\ : std_logic;
SIGNAL \my_alu|Add2~5\ : std_logic;
SIGNAL \my_alu|Add2~6_combout\ : std_logic;
SIGNAL \my_alu|Mux28~0_combout\ : std_logic;
SIGNAL \my_alu|Mux28~1_combout\ : std_logic;
SIGNAL \my_alu|Mux28~3_combout\ : std_logic;
SIGNAL \my_alu|Mux28~8_combout\ : std_logic;
SIGNAL \input_reg_a|q[4]~_Duplicate_4_q\ : std_logic;
SIGNAL \my_alu|Add3~7\ : std_logic;
SIGNAL \my_alu|Add3~8_combout\ : std_logic;
SIGNAL \my_alu|Add2~7\ : std_logic;
SIGNAL \my_alu|Add2~8_combout\ : std_logic;
SIGNAL \my_alu|Mux27~12_combout\ : std_logic;
SIGNAL \my_alu|Mux27~13_combout\ : std_logic;
SIGNAL \my_alu|Mux27~0_combout\ : std_logic;
SIGNAL \my_alu|Mux27~1_combout\ : std_logic;
SIGNAL \my_alu|Mux27~2_combout\ : std_logic;
SIGNAL \my_alu|ShiftRight0~48_combout\ : std_logic;
SIGNAL \my_alu|ShiftRight0~49_combout\ : std_logic;
SIGNAL \my_alu|Mux27~3_combout\ : std_logic;
SIGNAL \my_alu|ShiftRight0~50_combout\ : std_logic;
SIGNAL \my_alu|Mux27~4_combout\ : std_logic;
SIGNAL \my_alu|Mux27~5_combout\ : std_logic;
SIGNAL \my_alu|ShiftRight1~46_combout\ : std_logic;
SIGNAL \my_alu|ShiftRight1~47_combout\ : std_logic;
SIGNAL \my_alu|Mux27~7_combout\ : std_logic;
SIGNAL \my_alu|Mux27~8_combout\ : std_logic;
SIGNAL \my_alu|Mux27~9_combout\ : std_logic;
SIGNAL \my_alu|Mux27~10_combout\ : std_logic;
SIGNAL \my_alu|Mux27~11_combout\ : std_logic;
SIGNAL \my_alu|Mux27~14_combout\ : std_logic;
SIGNAL \input_reg_a|q[5]~_Duplicate_4_q\ : std_logic;
SIGNAL \my_alu|Add2~9\ : std_logic;
SIGNAL \my_alu|Add2~10_combout\ : std_logic;
SIGNAL \my_alu|Mux26~6_combout\ : std_logic;
SIGNAL \my_alu|Mux26~7_combout\ : std_logic;
SIGNAL \my_alu|Mux26~8_combout\ : std_logic;
SIGNAL \my_alu|Add2~11\ : std_logic;
SIGNAL \my_alu|Add2~12_combout\ : std_logic;
SIGNAL \my_alu|Add3~9\ : std_logic;
SIGNAL \my_alu|Add3~11\ : std_logic;
SIGNAL \my_alu|Add3~12_combout\ : std_logic;
SIGNAL \my_alu|Mux25~6_combout\ : std_logic;
SIGNAL \my_alu|Mux25~7_combout\ : std_logic;
SIGNAL \my_alu|ShiftLeft0~23_combout\ : std_logic;
SIGNAL \my_alu|Mux25~0_combout\ : std_logic;
SIGNAL \my_alu|ShiftRight1~36_combout\ : std_logic;
SIGNAL \my_alu|ShiftRight1~34_combout\ : std_logic;
SIGNAL \my_alu|ShiftRight0~58_combout\ : std_logic;
SIGNAL \my_alu|Mux27~6_combout\ : std_logic;
SIGNAL \my_alu|ShiftLeft0~24_combout\ : std_logic;
SIGNAL \my_alu|ShiftRight1~50_combout\ : std_logic;
SIGNAL \my_alu|ShiftRight1~51_combout\ : std_logic;
SIGNAL \my_alu|ShiftRight1~30_combout\ : std_logic;
SIGNAL \my_alu|ShiftRight1~32_combout\ : std_logic;
SIGNAL \my_alu|Mux25~1_combout\ : std_logic;
SIGNAL \my_alu|Mux25~2_combout\ : std_logic;
SIGNAL \my_alu|Mux25~3_combout\ : std_logic;
SIGNAL \my_alu|Mux25~4_combout\ : std_logic;
SIGNAL \my_alu|Mux25~5_combout\ : std_logic;
SIGNAL \my_alu|Mux25~8_combout\ : std_logic;
SIGNAL \my_alu|ShiftLeft0~25_combout\ : std_logic;
SIGNAL \my_alu|ShiftLeft0~21_combout\ : std_logic;
SIGNAL \my_alu|ShiftLeft0~26_combout\ : std_logic;
SIGNAL \my_alu|ShiftLeft0~27_combout\ : std_logic;
SIGNAL \my_alu|ShiftLeft0~28_combout\ : std_logic;
SIGNAL \my_alu|ShiftRight0~59_combout\ : std_logic;
SIGNAL \my_alu|ShiftRight0~60_combout\ : std_logic;
SIGNAL \my_alu|Mux24~5_combout\ : std_logic;
SIGNAL \my_alu|Mux24~8_combout\ : std_logic;
SIGNAL \my_alu|Mux23~4_combout\ : std_logic;
SIGNAL \my_alu|ShiftLeft0~31_combout\ : std_logic;
SIGNAL \my_alu|ShiftLeft0~101_combout\ : std_logic;
SIGNAL \my_alu|ShiftLeft0~13_combout\ : std_logic;
SIGNAL \my_alu|ShiftLeft0~12_combout\ : std_logic;
SIGNAL \my_alu|ShiftLeft0~14_combout\ : std_logic;
SIGNAL \my_alu|ShiftLeft0~32_combout\ : std_logic;
SIGNAL \my_alu|ShiftRight0~62_combout\ : std_logic;
SIGNAL \my_alu|ShiftRight1~53_combout\ : std_logic;
SIGNAL \my_alu|Mux23~2_combout\ : std_logic;
SIGNAL \my_alu|Mux23~3_combout\ : std_logic;
SIGNAL \my_alu|Mux23~5_combout\ : std_logic;
SIGNAL \my_alu|Add3~13\ : std_logic;
SIGNAL \my_alu|Add3~15\ : std_logic;
SIGNAL \my_alu|Add3~16_combout\ : std_logic;
SIGNAL \my_alu|Add2~13\ : std_logic;
SIGNAL \my_alu|Add2~15\ : std_logic;
SIGNAL \my_alu|Add2~16_combout\ : std_logic;
SIGNAL \my_alu|Mux23~0_combout\ : std_logic;
SIGNAL \my_alu|Mux23~1_combout\ : std_logic;
SIGNAL \my_alu|Mux23~6_combout\ : std_logic;
SIGNAL \my_alu|Mux23~7_combout\ : std_logic;
SIGNAL \input_reg_a|q[9]~_Duplicate_4_q\ : std_logic;
SIGNAL \my_alu|Mux22~6_combout\ : std_logic;
SIGNAL \my_alu|ShiftRight0~51_combout\ : std_logic;
SIGNAL \my_alu|ShiftRight0~63_combout\ : std_logic;
SIGNAL \my_alu|Mux22~1_combout\ : std_logic;
SIGNAL \my_alu|ShiftRight1~54_combout\ : std_logic;
SIGNAL \my_alu|Mux22~4_combout\ : std_logic;
SIGNAL \my_alu|ShiftLeft0~17_combout\ : std_logic;
SIGNAL \my_alu|ShiftLeft0~18_combout\ : std_logic;
SIGNAL \my_alu|ShiftLeft0~19_combout\ : std_logic;
SIGNAL \my_alu|ShiftLeft0~29_combout\ : std_logic;
SIGNAL \my_alu|ShiftLeft0~33_combout\ : std_logic;
SIGNAL \my_alu|ShiftLeft0~34_combout\ : std_logic;
SIGNAL \my_alu|ShiftLeft0~35_combout\ : std_logic;
SIGNAL \my_alu|ShiftLeft0~36_combout\ : std_logic;
SIGNAL \my_alu|Mux22~5_combout\ : std_logic;
SIGNAL \my_alu|Mux22~7_combout\ : std_logic;
SIGNAL \my_alu|Add2~17\ : std_logic;
SIGNAL \my_alu|Add2~18_combout\ : std_logic;
SIGNAL \my_alu|Add3~17\ : std_logic;
SIGNAL \my_alu|Add3~18_combout\ : std_logic;
SIGNAL \my_alu|Mux22~2_combout\ : std_logic;
SIGNAL \my_alu|Mux22~3_combout\ : std_logic;
SIGNAL \my_alu|Mux22~8_combout\ : std_logic;
SIGNAL \my_alu|Mux22~9_combout\ : std_logic;
SIGNAL \my_alu|Add2~19\ : std_logic;
SIGNAL \my_alu|Add2~20_combout\ : std_logic;
SIGNAL \input_reg_a|q[10]~_Duplicate_4feeder_combout\ : std_logic;
SIGNAL \input_reg_a|q[10]~_Duplicate_4_q\ : std_logic;
SIGNAL \my_alu|Add3~19\ : std_logic;
SIGNAL \my_alu|Add3~20_combout\ : std_logic;
SIGNAL \my_alu|Mux21~0_combout\ : std_logic;
SIGNAL \my_alu|Mux21~1_combout\ : std_logic;
SIGNAL \my_alu|Mux21~4_combout\ : std_logic;
SIGNAL \my_alu|Mux22~0_combout\ : std_logic;
SIGNAL \my_alu|ShiftRight0~56_combout\ : std_logic;
SIGNAL \my_alu|ShiftRight0~64_combout\ : std_logic;
SIGNAL \my_alu|ShiftLeft0~22_combout\ : std_logic;
SIGNAL \my_alu|ShiftLeft0~39_combout\ : std_logic;
SIGNAL \my_alu|ShiftLeft0~40_combout\ : std_logic;
SIGNAL \my_alu|Mux21~3_combout\ : std_logic;
SIGNAL \my_alu|Mux21~5_combout\ : std_logic;
SIGNAL \my_alu|Mux21~6_combout\ : std_logic;
SIGNAL \my_alu|Mux21~7_combout\ : std_logic;
SIGNAL \my_alu|ShiftRight0~66_combout\ : std_logic;
SIGNAL \my_alu|ShiftRight1~59_combout\ : std_logic;
SIGNAL \my_alu|Mux20~2_combout\ : std_logic;
SIGNAL \my_alu|Mux20~3_combout\ : std_logic;
SIGNAL \input_reg_a|q[11]~_Duplicate_4_q\ : std_logic;
SIGNAL \my_alu|Mux20~4_combout\ : std_logic;
SIGNAL \my_alu|Mux20~5_combout\ : std_logic;
SIGNAL \my_alu|Add3~21\ : std_logic;
SIGNAL \my_alu|Add3~22_combout\ : std_logic;
SIGNAL \my_alu|Add2~21\ : std_logic;
SIGNAL \my_alu|Add2~22_combout\ : std_logic;
SIGNAL \my_alu|Mux20~0_combout\ : std_logic;
SIGNAL \my_alu|Mux20~1_combout\ : std_logic;
SIGNAL \my_alu|Mux20~6_combout\ : std_logic;
SIGNAL \my_alu|Mux20~7_combout\ : std_logic;
SIGNAL \input_reg_a|q[12]~_Duplicate_4_q\ : std_logic;
SIGNAL \my_alu|Add3~23\ : std_logic;
SIGNAL \my_alu|Add3~24_combout\ : std_logic;
SIGNAL \my_alu|Add2~23\ : std_logic;
SIGNAL \my_alu|Add2~24_combout\ : std_logic;
SIGNAL \my_alu|Mux19~0_combout\ : std_logic;
SIGNAL \my_alu|Mux19~1_combout\ : std_logic;
SIGNAL \my_alu|Mux19~6_combout\ : std_logic;
SIGNAL \my_alu|Mux19~7_combout\ : std_logic;
SIGNAL \my_alu|ShiftRight0~52_combout\ : std_logic;
SIGNAL \input_reg_b|q[13]~_Duplicate_4_q\ : std_logic;
SIGNAL \my_alu|Mux18~4_combout\ : std_logic;
SIGNAL \my_alu|ShiftLeft0~45_combout\ : std_logic;
SIGNAL \my_alu|ShiftLeft0~50_combout\ : std_logic;
SIGNAL \my_alu|ShiftLeft0~51_combout\ : std_logic;
SIGNAL \my_alu|ShiftLeft0~52_combout\ : std_logic;
SIGNAL \my_alu|ShiftLeft0~6_combout\ : std_logic;
SIGNAL \my_alu|ShiftLeft0~49_combout\ : std_logic;
SIGNAL \my_alu|ShiftLeft0~53_combout\ : std_logic;
SIGNAL \my_alu|ShiftRight0~31_combout\ : std_logic;
SIGNAL \my_alu|ShiftRight0~70_combout\ : std_logic;
SIGNAL \my_alu|ShiftRight0~54_combout\ : std_logic;
SIGNAL \my_alu|ShiftRight1~57_combout\ : std_logic;
SIGNAL \my_alu|Mux18~2_combout\ : std_logic;
SIGNAL \my_alu|Mux18~3_combout\ : std_logic;
SIGNAL \my_alu|Mux18~5_combout\ : std_logic;
SIGNAL \my_alu|Mux18~6_combout\ : std_logic;
SIGNAL \my_alu|Mux18~7_combout\ : std_logic;
SIGNAL \my_alu|ShiftRight0~55_combout\ : std_logic;
SIGNAL \my_alu|Add3~25\ : std_logic;
SIGNAL \my_alu|Add3~27\ : std_logic;
SIGNAL \my_alu|Add3~28_combout\ : std_logic;
SIGNAL \input_reg_a|q[14]~_Duplicate_4feeder_combout\ : std_logic;
SIGNAL \input_reg_a|q[14]~_Duplicate_4_q\ : std_logic;
SIGNAL \my_alu|Add2~25\ : std_logic;
SIGNAL \my_alu|Add2~27\ : std_logic;
SIGNAL \my_alu|Add2~28_combout\ : std_logic;
SIGNAL \my_alu|Mux17~0_combout\ : std_logic;
SIGNAL \my_alu|Mux17~1_combout\ : std_logic;
SIGNAL \my_alu|Mux17~6_combout\ : std_logic;
SIGNAL \my_alu|Mux17~7_combout\ : std_logic;
SIGNAL \my_alu|ShiftRight0~68_combout\ : std_logic;
SIGNAL \my_alu|ShiftLeft0~59_combout\ : std_logic;
SIGNAL \my_alu|ShiftLeft0~63_combout\ : std_logic;
SIGNAL \my_alu|Mux16~3_combout\ : std_logic;
SIGNAL \my_alu|Mux16~4_combout\ : std_logic;
SIGNAL \my_alu|Mux16~5_combout\ : std_logic;
SIGNAL \input_reg_a|q[15]~_Duplicate_4_q\ : std_logic;
SIGNAL \my_alu|Add2~29\ : std_logic;
SIGNAL \my_alu|Add2~30_combout\ : std_logic;
SIGNAL \my_alu|Add3~29\ : std_logic;
SIGNAL \my_alu|Add3~30_combout\ : std_logic;
SIGNAL \my_alu|Mux16~0_combout\ : std_logic;
SIGNAL \my_alu|Mux16~1_combout\ : std_logic;
SIGNAL \my_alu|Mux16~6_combout\ : std_logic;
SIGNAL \my_alu|Mux16~7_combout\ : std_logic;
SIGNAL \my_alu|Mux15~8_combout\ : std_logic;
SIGNAL \my_alu|Mux15~6_combout\ : std_logic;
SIGNAL \my_alu|ShiftLeft0~30_combout\ : std_logic;
SIGNAL \my_alu|Mux15~4_combout\ : std_logic;
SIGNAL \my_alu|Mux15~5_combout\ : std_logic;
SIGNAL \my_alu|Mux15~7_combout\ : std_logic;
SIGNAL \my_alu|Mux15~9_combout\ : std_logic;
SIGNAL \my_alu|Mux15~2_combout\ : std_logic;
SIGNAL \my_alu|Add3~31\ : std_logic;
SIGNAL \my_alu|Add3~32_combout\ : std_logic;
SIGNAL \my_alu|Add2~31\ : std_logic;
SIGNAL \my_alu|Add2~32_combout\ : std_logic;
SIGNAL \my_alu|Mux15~0_combout\ : std_logic;
SIGNAL \my_alu|Mux15~1_combout\ : std_logic;
SIGNAL \my_alu|Mux15~3_combout\ : std_logic;
SIGNAL \my_alu|Mux15~10_combout\ : std_logic;
SIGNAL \my_alu|Add3~33\ : std_logic;
SIGNAL \my_alu|Add3~34_combout\ : std_logic;
SIGNAL \input_reg_a|q[17]~_Duplicate_4_q\ : std_logic;
SIGNAL \my_alu|Add2~33\ : std_logic;
SIGNAL \my_alu|Add2~34_combout\ : std_logic;
SIGNAL \my_alu|Mux14~5_combout\ : std_logic;
SIGNAL \my_alu|Mux14~6_combout\ : std_logic;
SIGNAL \my_alu|Mux14~7_combout\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \my_alu|Add3~35\ : std_logic;
SIGNAL \my_alu|Add3~36_combout\ : std_logic;
SIGNAL \my_alu|Add2~35\ : std_logic;
SIGNAL \my_alu|Add2~36_combout\ : std_logic;
SIGNAL \my_alu|Mux13~11_combout\ : std_logic;
SIGNAL \my_alu|Mux13~12_combout\ : std_logic;
SIGNAL \my_alu|Mux13~13_combout\ : std_logic;
SIGNAL \my_alu|Add3~37\ : std_logic;
SIGNAL \my_alu|Add3~38_combout\ : std_logic;
SIGNAL \my_alu|Add2~37\ : std_logic;
SIGNAL \my_alu|Add2~38_combout\ : std_logic;
SIGNAL \my_alu|Mux12~5_combout\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \my_alu|Mux12~6_combout\ : std_logic;
SIGNAL \my_alu|Mux12~7_combout\ : std_logic;
SIGNAL \my_alu|Add2~39\ : std_logic;
SIGNAL \my_alu|Add2~40_combout\ : std_logic;
SIGNAL \my_alu|Mux11~5_combout\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \my_alu|Mux11~6_combout\ : std_logic;
SIGNAL \my_alu|Mux11~7_combout\ : std_logic;
SIGNAL \my_alu|Mux10~2_combout\ : std_logic;
SIGNAL \my_alu|Mux13~5_combout\ : std_logic;
SIGNAL \my_alu|Mux13~2_combout\ : std_logic;
SIGNAL \my_alu|Mux13~3_combout\ : std_logic;
SIGNAL \my_alu|ShiftRight0~53_combout\ : std_logic;
SIGNAL \my_alu|Mux10~0_combout\ : std_logic;
SIGNAL \my_alu|Mux13~1_combout\ : std_logic;
SIGNAL \my_alu|Mux10~1_combout\ : std_logic;
SIGNAL \my_alu|Mux10~3_combout\ : std_logic;
SIGNAL \my_alu|ShiftRight1~48_combout\ : std_logic;
SIGNAL \my_alu|ShiftRight1~49_combout\ : std_logic;
SIGNAL \my_alu|Mux10~4_combout\ : std_logic;
SIGNAL \my_alu|Add2~41\ : std_logic;
SIGNAL \my_alu|Add2~42_combout\ : std_logic;
SIGNAL \my_alu|Add3~39\ : std_logic;
SIGNAL \my_alu|Add3~41\ : std_logic;
SIGNAL \my_alu|Add3~42_combout\ : std_logic;
SIGNAL \my_alu|Mux10~5_combout\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \my_alu|Mux10~6_combout\ : std_logic;
SIGNAL \my_alu|Mux10~7_combout\ : std_logic;
SIGNAL \my_alu|Add3~43\ : std_logic;
SIGNAL \my_alu|Add3~44_combout\ : std_logic;
SIGNAL \my_alu|Add2~43\ : std_logic;
SIGNAL \my_alu|Add2~44_combout\ : std_logic;
SIGNAL \my_alu|Mux9~5_combout\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \my_alu|Mux9~6_combout\ : std_logic;
SIGNAL \my_alu|Mux9~7_combout\ : std_logic;
SIGNAL \my_alu|Mux13~0_combout\ : std_logic;
SIGNAL \my_alu|ShiftRight1~52_combout\ : std_logic;
SIGNAL \my_alu|Mux13~4_combout\ : std_logic;
SIGNAL \my_alu|Mux8~2_combout\ : std_logic;
SIGNAL \my_alu|ShiftLeft0~73_combout\ : std_logic;
SIGNAL \my_alu|ShiftLeft0~70_combout\ : std_logic;
SIGNAL \my_alu|ShiftLeft0~74_combout\ : std_logic;
SIGNAL \my_alu|ShiftLeft0~85_combout\ : std_logic;
SIGNAL \my_alu|ShiftLeft0~82_combout\ : std_logic;
SIGNAL \my_alu|ShiftLeft0~86_combout\ : std_logic;
SIGNAL \my_alu|ShiftLeft0~87_combout\ : std_logic;
SIGNAL \my_alu|ShiftLeft0~55_combout\ : std_logic;
SIGNAL \my_alu|ShiftLeft0~60_combout\ : std_logic;
SIGNAL \my_alu|ShiftLeft0~61_combout\ : std_logic;
SIGNAL \my_alu|ShiftLeft0~37_combout\ : std_logic;
SIGNAL \my_alu|ShiftLeft0~41_combout\ : std_logic;
SIGNAL \my_alu|ShiftLeft0~42_combout\ : std_logic;
SIGNAL \my_alu|ShiftLeft0~62_combout\ : std_logic;
SIGNAL \my_alu|Mux8~1_combout\ : std_logic;
SIGNAL \my_alu|Mux8~3_combout\ : std_logic;
SIGNAL \my_alu|Mux8~4_combout\ : std_logic;
SIGNAL \my_alu|Add2~45\ : std_logic;
SIGNAL \my_alu|Add2~46_combout\ : std_logic;
SIGNAL \my_alu|Add3~45\ : std_logic;
SIGNAL \my_alu|Add3~46_combout\ : std_logic;
SIGNAL \my_alu|Mux8~5_combout\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \my_alu|Mux8~6_combout\ : std_logic;
SIGNAL \my_alu|Mux8~7_combout\ : std_logic;
SIGNAL \my_alu|Mux6~2_combout\ : std_logic;
SIGNAL \my_alu|ShiftLeft0~64_combout\ : std_logic;
SIGNAL \my_alu|ShiftLeft0~65_combout\ : std_logic;
SIGNAL \my_alu|ShiftLeft0~66_combout\ : std_logic;
SIGNAL \my_alu|Mux6~0_combout\ : std_logic;
SIGNAL \my_alu|Mux7~1_combout\ : std_logic;
SIGNAL \my_alu|Mux7~2_combout\ : std_logic;
SIGNAL \my_alu|Mux7~3_combout\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \my_alu|Add2~47\ : std_logic;
SIGNAL \my_alu|Add2~48_combout\ : std_logic;
SIGNAL \my_alu|Add3~47\ : std_logic;
SIGNAL \my_alu|Add3~48_combout\ : std_logic;
SIGNAL \my_alu|Mux7~4_combout\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|op_1~12_combout\ : std_logic;
SIGNAL \my_alu|Mux7~5_combout\ : std_logic;
SIGNAL \my_alu|Mux7~6_combout\ : std_logic;
SIGNAL \my_alu|Mux7~8_combout\ : std_logic;
SIGNAL \my_alu|Mux6~3_combout\ : std_logic;
SIGNAL \my_alu|Mux6~6_combout\ : std_logic;
SIGNAL \my_alu|Mux6~7_combout\ : std_logic;
SIGNAL \my_alu|Add2~49\ : std_logic;
SIGNAL \my_alu|Add2~50_combout\ : std_logic;
SIGNAL \my_alu|Add3~49\ : std_logic;
SIGNAL \my_alu|Add3~50_combout\ : std_logic;
SIGNAL \my_alu|Mux6~8_combout\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|op_1~14_combout\ : std_logic;
SIGNAL \my_alu|Mux6~9_combout\ : std_logic;
SIGNAL \my_alu|Mux6~10_combout\ : std_logic;
SIGNAL \my_alu|Mux6~12_combout\ : std_logic;
SIGNAL \input_reg_a|q[26]~_Duplicate_4_q\ : std_logic;
SIGNAL \my_alu|Mux5~7_combout\ : std_logic;
SIGNAL \my_alu|ShiftLeft0~67_combout\ : std_logic;
SIGNAL \my_alu|ShiftLeft0~71_combout\ : std_logic;
SIGNAL \my_alu|ShiftLeft0~56_combout\ : std_logic;
SIGNAL \my_alu|ShiftLeft0~72_combout\ : std_logic;
SIGNAL \my_alu|ShiftLeft0~83_combout\ : std_logic;
SIGNAL \my_alu|ShiftLeft0~93_combout\ : std_logic;
SIGNAL \my_alu|ShiftLeft0~92_combout\ : std_logic;
SIGNAL \my_alu|ShiftLeft0~94_combout\ : std_logic;
SIGNAL \my_alu|Mux5~0_combout\ : std_logic;
SIGNAL \my_alu|Mux5~1_combout\ : std_logic;
SIGNAL \my_alu|Mux5~2_combout\ : std_logic;
SIGNAL \my_alu|ShiftRight1~55_combout\ : std_logic;
SIGNAL \my_alu|Mux5~3_combout\ : std_logic;
SIGNAL \my_alu|Add3~51\ : std_logic;
SIGNAL \my_alu|Add3~52_combout\ : std_logic;
SIGNAL \my_alu|Add2~51\ : std_logic;
SIGNAL \my_alu|Add2~52_combout\ : std_logic;
SIGNAL \my_alu|Mux5~4_combout\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|op_1~16_combout\ : std_logic;
SIGNAL \my_alu|Mux5~5_combout\ : std_logic;
SIGNAL \my_alu|Mux5~6_combout\ : std_logic;
SIGNAL \my_alu|Mux5~8_combout\ : std_logic;
SIGNAL \my_alu|Mux6~1_combout\ : std_logic;
SIGNAL \my_alu|ShiftLeft0~43_combout\ : std_logic;
SIGNAL \my_alu|ShiftLeft0~44_combout\ : std_logic;
SIGNAL \my_alu|Mux4~1_combout\ : std_logic;
SIGNAL \my_alu|Mux4~2_combout\ : std_logic;
SIGNAL \my_alu|Mux4~3_combout\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|op_1~18_combout\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|op_1~18_combout\ : std_logic;
SIGNAL \my_alu|Mux4~5_combout\ : std_logic;
SIGNAL \my_alu|Mux4~6_combout\ : std_logic;
SIGNAL \my_alu|Mux4~8_combout\ : std_logic;
SIGNAL \input_reg_a|q[28]~_Duplicate_4feeder_combout\ : std_logic;
SIGNAL \input_reg_a|q[28]~_Duplicate_4_q\ : std_logic;
SIGNAL \my_alu|Mux3~8_combout\ : std_logic;
SIGNAL \my_alu|Mux3~5_combout\ : std_logic;
SIGNAL \my_alu|ShiftRight1~56_combout\ : std_logic;
SIGNAL \my_alu|Mux3~6_combout\ : std_logic;
SIGNAL \my_alu|ShiftLeft0~88_combout\ : std_logic;
SIGNAL \my_alu|ShiftLeft0~89_combout\ : std_logic;
SIGNAL \my_alu|ShiftLeft0~98_combout\ : std_logic;
SIGNAL \my_alu|Mux3~3_combout\ : std_logic;
SIGNAL \my_alu|ShiftLeft0~76_combout\ : std_logic;
SIGNAL \my_alu|ShiftLeft0~77_combout\ : std_logic;
SIGNAL \my_alu|ShiftLeft0~78_combout\ : std_logic;
SIGNAL \my_alu|Mux3~4_combout\ : std_logic;
SIGNAL \my_alu|ShiftLeft0~11_combout\ : std_logic;
SIGNAL \my_alu|ShiftLeft0~15_combout\ : std_logic;
SIGNAL \my_alu|ShiftLeft0~48_combout\ : std_logic;
SIGNAL \my_alu|Mux3~7_combout\ : std_logic;
SIGNAL \my_alu|Mux3~9_combout\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|op_1~20_combout\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|op_1~20_combout\ : std_logic;
SIGNAL \my_alu|Mux3~1_combout\ : std_logic;
SIGNAL \my_alu|Mux3~10_combout\ : std_logic;
SIGNAL \my_alu|Mux3~11_combout\ : std_logic;
SIGNAL \my_alu|Mux3~2_combout\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|op_1~22_combout\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|op_1~22_combout\ : std_logic;
SIGNAL \my_alu|Mux2~1_combout\ : std_logic;
SIGNAL \my_alu|Mux2~8_combout\ : std_logic;
SIGNAL \my_alu|Mux2~9_combout\ : std_logic;
SIGNAL \input_reg_a|q[30]~_Duplicate_4_q\ : std_logic;
SIGNAL \my_alu|Mux1~8_combout\ : std_logic;
SIGNAL \my_alu|ShiftLeft0~84_combout\ : std_logic;
SIGNAL \my_alu|Mux1~2_combout\ : std_logic;
SIGNAL \my_alu|Mux1~1_combout\ : std_logic;
SIGNAL \my_alu|Mux1~3_combout\ : std_logic;
SIGNAL \my_alu|Mux1~4_combout\ : std_logic;
SIGNAL \my_alu|ShiftLeft0~54_combout\ : std_logic;
SIGNAL \my_alu|ShiftLeft0~38_combout\ : std_logic;
SIGNAL \my_alu|ShiftLeft0~57_combout\ : std_logic;
SIGNAL \my_alu|ShiftLeft0~58_combout\ : std_logic;
SIGNAL \my_alu|Mux1~5_combout\ : std_logic;
SIGNAL \my_alu|ShiftRight0~71_combout\ : std_logic;
SIGNAL \my_alu|Mux1~6_combout\ : std_logic;
SIGNAL \my_alu|Mux1~0_combout\ : std_logic;
SIGNAL \my_alu|Mux1~7_combout\ : std_logic;
SIGNAL \my_alu|Mux1~9_combout\ : std_logic;
SIGNAL \input_reg_a|q[27]~_Duplicate_4feeder_combout\ : std_logic;
SIGNAL \input_reg_a|q[27]~_Duplicate_4_q\ : std_logic;
SIGNAL \my_alu|Add3~53\ : std_logic;
SIGNAL \my_alu|Add3~55\ : std_logic;
SIGNAL \my_alu|Add3~57\ : std_logic;
SIGNAL \my_alu|Add3~59\ : std_logic;
SIGNAL \my_alu|Add3~60_combout\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|op_1~24_combout\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|op_1~24_combout\ : std_logic;
SIGNAL \my_alu|Add2~53\ : std_logic;
SIGNAL \my_alu|Add2~55\ : std_logic;
SIGNAL \my_alu|Add2~57\ : std_logic;
SIGNAL \my_alu|Add2~59\ : std_logic;
SIGNAL \my_alu|Add2~60_combout\ : std_logic;
SIGNAL \my_alu|Mux1~10_combout\ : std_logic;
SIGNAL \my_alu|Mux1~11_combout\ : std_logic;
SIGNAL \my_alu|Mux1~12_combout\ : std_logic;
SIGNAL \input_reg_a|q[31]~_Duplicate_4_q\ : std_logic;
SIGNAL \my_alu|Add2~61\ : std_logic;
SIGNAL \my_alu|Add2~62_combout\ : std_logic;
SIGNAL \my_alu|Add3~61\ : std_logic;
SIGNAL \my_alu|Add3~62_combout\ : std_logic;
SIGNAL \my_alu|Mux0~9_combout\ : std_logic;
SIGNAL \my_alu|Mult1|auto_generated|op_1~26_combout\ : std_logic;
SIGNAL \my_alu|Mux0~10_combout\ : std_logic;
SIGNAL \my_alu|ShiftLeft0~99_combout\ : std_logic;
SIGNAL \my_alu|Mux0~1_combout\ : std_logic;
SIGNAL \my_alu|ShiftLeft0~96_combout\ : std_logic;
SIGNAL \my_alu|ShiftLeft0~97_combout\ : std_logic;
SIGNAL \my_alu|Mux0~2_combout\ : std_logic;
SIGNAL \my_alu|Mux0~3_combout\ : std_logic;
SIGNAL \my_alu|Mux0~4_combout\ : std_logic;
SIGNAL \my_alu|Mux0~6_combout\ : std_logic;
SIGNAL \my_alu|Mux0~8_combout\ : std_logic;
SIGNAL \my_alu|Mux0~11_combout\ : std_logic;
SIGNAL \my_alu|Equal0~7_combout\ : std_logic;
SIGNAL \my_alu|Equal0~8_combout\ : std_logic;
SIGNAL \my_alu|Equal0~0_combout\ : std_logic;
SIGNAL \my_alu|Equal0~1_combout\ : std_logic;
SIGNAL \my_alu|Equal0~2_combout\ : std_logic;
SIGNAL \my_alu|Equal0~3_combout\ : std_logic;
SIGNAL \my_alu|Equal0~6_combout\ : std_logic;
SIGNAL \my_alu|Equal0~12_combout\ : std_logic;
SIGNAL \my_alu|Mult0|auto_generated|w569w\ : std_logic_vector(64 DOWNTO 0);
SIGNAL \my_alu|Mult1|auto_generated|w513w\ : std_logic_vector(64 DOWNTO 0);
SIGNAL \output_reg_hi|q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \output_reg_lo|q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \input_reg_op|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \input_reg_shamt|q\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \output_reg_zero|q\ : std_logic_vector(0 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_a <= a;
ww_b <= b;
ww_op <= op;
ww_shamt <= shamt;
hi <= ww_hi;
lo <= ww_lo;
zero <= ww_zero;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\my_alu|Mult1|auto_generated|mac_out4_DATAA_bus\ <= (\my_alu|Mult1|auto_generated|mac_mult3~DATAOUT31\ & \my_alu|Mult1|auto_generated|mac_mult3~DATAOUT30\ & \my_alu|Mult1|auto_generated|mac_mult3~DATAOUT29\ & 
\my_alu|Mult1|auto_generated|mac_mult3~DATAOUT28\ & \my_alu|Mult1|auto_generated|mac_mult3~DATAOUT27\ & \my_alu|Mult1|auto_generated|mac_mult3~DATAOUT26\ & \my_alu|Mult1|auto_generated|mac_mult3~DATAOUT25\ & 
\my_alu|Mult1|auto_generated|mac_mult3~DATAOUT24\ & \my_alu|Mult1|auto_generated|mac_mult3~DATAOUT23\ & \my_alu|Mult1|auto_generated|mac_mult3~DATAOUT22\ & \my_alu|Mult1|auto_generated|mac_mult3~DATAOUT21\ & 
\my_alu|Mult1|auto_generated|mac_mult3~DATAOUT20\ & \my_alu|Mult1|auto_generated|mac_mult3~DATAOUT19\ & \my_alu|Mult1|auto_generated|mac_mult3~DATAOUT18\ & \my_alu|Mult1|auto_generated|mac_mult3~DATAOUT17\ & 
\my_alu|Mult1|auto_generated|mac_mult3~DATAOUT16\ & \my_alu|Mult1|auto_generated|mac_mult3~DATAOUT15\ & \my_alu|Mult1|auto_generated|mac_mult3~DATAOUT14\ & \my_alu|Mult1|auto_generated|mac_mult3~DATAOUT13\ & 
\my_alu|Mult1|auto_generated|mac_mult3~DATAOUT12\ & \my_alu|Mult1|auto_generated|mac_mult3~DATAOUT11\ & \my_alu|Mult1|auto_generated|mac_mult3~DATAOUT10\ & \my_alu|Mult1|auto_generated|mac_mult3~DATAOUT9\ & \my_alu|Mult1|auto_generated|mac_mult3~DATAOUT8\
& \my_alu|Mult1|auto_generated|mac_mult3~DATAOUT7\ & \my_alu|Mult1|auto_generated|mac_mult3~DATAOUT6\ & \my_alu|Mult1|auto_generated|mac_mult3~DATAOUT5\ & \my_alu|Mult1|auto_generated|mac_mult3~DATAOUT4\ & \my_alu|Mult1|auto_generated|mac_mult3~DATAOUT3\
& \my_alu|Mult1|auto_generated|mac_mult3~DATAOUT2\ & \my_alu|Mult1|auto_generated|mac_mult3~DATAOUT1\ & \my_alu|Mult1|auto_generated|mac_mult3~dataout\ & \my_alu|Mult1|auto_generated|mac_mult3~3\ & \my_alu|Mult1|auto_generated|mac_mult3~2\ & 
\my_alu|Mult1|auto_generated|mac_mult3~1\ & \my_alu|Mult1|auto_generated|mac_mult3~0\);

\my_alu|Mult1|auto_generated|mac_out4~0\ <= \my_alu|Mult1|auto_generated|mac_out4_DATAOUT_bus\(0);
\my_alu|Mult1|auto_generated|mac_out4~1\ <= \my_alu|Mult1|auto_generated|mac_out4_DATAOUT_bus\(1);
\my_alu|Mult1|auto_generated|mac_out4~2\ <= \my_alu|Mult1|auto_generated|mac_out4_DATAOUT_bus\(2);
\my_alu|Mult1|auto_generated|mac_out4~3\ <= \my_alu|Mult1|auto_generated|mac_out4_DATAOUT_bus\(3);
\my_alu|Mult1|auto_generated|mac_out4~dataout\ <= \my_alu|Mult1|auto_generated|mac_out4_DATAOUT_bus\(4);
\my_alu|Mult1|auto_generated|mac_out4~DATAOUT1\ <= \my_alu|Mult1|auto_generated|mac_out4_DATAOUT_bus\(5);
\my_alu|Mult1|auto_generated|mac_out4~DATAOUT2\ <= \my_alu|Mult1|auto_generated|mac_out4_DATAOUT_bus\(6);
\my_alu|Mult1|auto_generated|mac_out4~DATAOUT3\ <= \my_alu|Mult1|auto_generated|mac_out4_DATAOUT_bus\(7);
\my_alu|Mult1|auto_generated|mac_out4~DATAOUT4\ <= \my_alu|Mult1|auto_generated|mac_out4_DATAOUT_bus\(8);
\my_alu|Mult1|auto_generated|mac_out4~DATAOUT5\ <= \my_alu|Mult1|auto_generated|mac_out4_DATAOUT_bus\(9);
\my_alu|Mult1|auto_generated|mac_out4~DATAOUT6\ <= \my_alu|Mult1|auto_generated|mac_out4_DATAOUT_bus\(10);
\my_alu|Mult1|auto_generated|mac_out4~DATAOUT7\ <= \my_alu|Mult1|auto_generated|mac_out4_DATAOUT_bus\(11);
\my_alu|Mult1|auto_generated|mac_out4~DATAOUT8\ <= \my_alu|Mult1|auto_generated|mac_out4_DATAOUT_bus\(12);
\my_alu|Mult1|auto_generated|mac_out4~DATAOUT9\ <= \my_alu|Mult1|auto_generated|mac_out4_DATAOUT_bus\(13);
\my_alu|Mult1|auto_generated|mac_out4~DATAOUT10\ <= \my_alu|Mult1|auto_generated|mac_out4_DATAOUT_bus\(14);
\my_alu|Mult1|auto_generated|mac_out4~DATAOUT11\ <= \my_alu|Mult1|auto_generated|mac_out4_DATAOUT_bus\(15);
\my_alu|Mult1|auto_generated|mac_out4~DATAOUT12\ <= \my_alu|Mult1|auto_generated|mac_out4_DATAOUT_bus\(16);
\my_alu|Mult1|auto_generated|mac_out4~DATAOUT13\ <= \my_alu|Mult1|auto_generated|mac_out4_DATAOUT_bus\(17);
\my_alu|Mult1|auto_generated|mac_out4~DATAOUT14\ <= \my_alu|Mult1|auto_generated|mac_out4_DATAOUT_bus\(18);
\my_alu|Mult1|auto_generated|mac_out4~DATAOUT15\ <= \my_alu|Mult1|auto_generated|mac_out4_DATAOUT_bus\(19);
\my_alu|Mult1|auto_generated|mac_out4~DATAOUT16\ <= \my_alu|Mult1|auto_generated|mac_out4_DATAOUT_bus\(20);
\my_alu|Mult1|auto_generated|mac_out4~DATAOUT17\ <= \my_alu|Mult1|auto_generated|mac_out4_DATAOUT_bus\(21);
\my_alu|Mult1|auto_generated|mac_out4~DATAOUT18\ <= \my_alu|Mult1|auto_generated|mac_out4_DATAOUT_bus\(22);
\my_alu|Mult1|auto_generated|mac_out4~DATAOUT19\ <= \my_alu|Mult1|auto_generated|mac_out4_DATAOUT_bus\(23);
\my_alu|Mult1|auto_generated|mac_out4~DATAOUT20\ <= \my_alu|Mult1|auto_generated|mac_out4_DATAOUT_bus\(24);
\my_alu|Mult1|auto_generated|mac_out4~DATAOUT21\ <= \my_alu|Mult1|auto_generated|mac_out4_DATAOUT_bus\(25);
\my_alu|Mult1|auto_generated|mac_out4~DATAOUT22\ <= \my_alu|Mult1|auto_generated|mac_out4_DATAOUT_bus\(26);
\my_alu|Mult1|auto_generated|mac_out4~DATAOUT23\ <= \my_alu|Mult1|auto_generated|mac_out4_DATAOUT_bus\(27);
\my_alu|Mult1|auto_generated|mac_out4~DATAOUT24\ <= \my_alu|Mult1|auto_generated|mac_out4_DATAOUT_bus\(28);
\my_alu|Mult1|auto_generated|mac_out4~DATAOUT25\ <= \my_alu|Mult1|auto_generated|mac_out4_DATAOUT_bus\(29);
\my_alu|Mult1|auto_generated|mac_out4~DATAOUT26\ <= \my_alu|Mult1|auto_generated|mac_out4_DATAOUT_bus\(30);
\my_alu|Mult1|auto_generated|mac_out4~DATAOUT27\ <= \my_alu|Mult1|auto_generated|mac_out4_DATAOUT_bus\(31);
\my_alu|Mult1|auto_generated|mac_out4~DATAOUT28\ <= \my_alu|Mult1|auto_generated|mac_out4_DATAOUT_bus\(32);
\my_alu|Mult1|auto_generated|mac_out4~DATAOUT29\ <= \my_alu|Mult1|auto_generated|mac_out4_DATAOUT_bus\(33);
\my_alu|Mult1|auto_generated|mac_out4~DATAOUT30\ <= \my_alu|Mult1|auto_generated|mac_out4_DATAOUT_bus\(34);
\my_alu|Mult1|auto_generated|mac_out4~DATAOUT31\ <= \my_alu|Mult1|auto_generated|mac_out4_DATAOUT_bus\(35);

\my_alu|Mult1|auto_generated|mac_out6_DATAA_bus\ <= (\my_alu|Mult1|auto_generated|mac_mult5~DATAOUT31\ & \my_alu|Mult1|auto_generated|mac_mult5~DATAOUT30\ & \my_alu|Mult1|auto_generated|mac_mult5~DATAOUT29\ & 
\my_alu|Mult1|auto_generated|mac_mult5~DATAOUT28\ & \my_alu|Mult1|auto_generated|mac_mult5~DATAOUT27\ & \my_alu|Mult1|auto_generated|mac_mult5~DATAOUT26\ & \my_alu|Mult1|auto_generated|mac_mult5~DATAOUT25\ & 
\my_alu|Mult1|auto_generated|mac_mult5~DATAOUT24\ & \my_alu|Mult1|auto_generated|mac_mult5~DATAOUT23\ & \my_alu|Mult1|auto_generated|mac_mult5~DATAOUT22\ & \my_alu|Mult1|auto_generated|mac_mult5~DATAOUT21\ & 
\my_alu|Mult1|auto_generated|mac_mult5~DATAOUT20\ & \my_alu|Mult1|auto_generated|mac_mult5~DATAOUT19\ & \my_alu|Mult1|auto_generated|mac_mult5~DATAOUT18\ & \my_alu|Mult1|auto_generated|mac_mult5~DATAOUT17\ & 
\my_alu|Mult1|auto_generated|mac_mult5~DATAOUT16\ & \my_alu|Mult1|auto_generated|mac_mult5~DATAOUT15\ & \my_alu|Mult1|auto_generated|mac_mult5~DATAOUT14\ & \my_alu|Mult1|auto_generated|mac_mult5~DATAOUT13\ & 
\my_alu|Mult1|auto_generated|mac_mult5~DATAOUT12\ & \my_alu|Mult1|auto_generated|mac_mult5~DATAOUT11\ & \my_alu|Mult1|auto_generated|mac_mult5~DATAOUT10\ & \my_alu|Mult1|auto_generated|mac_mult5~DATAOUT9\ & \my_alu|Mult1|auto_generated|mac_mult5~DATAOUT8\
& \my_alu|Mult1|auto_generated|mac_mult5~DATAOUT7\ & \my_alu|Mult1|auto_generated|mac_mult5~DATAOUT6\ & \my_alu|Mult1|auto_generated|mac_mult5~DATAOUT5\ & \my_alu|Mult1|auto_generated|mac_mult5~DATAOUT4\ & \my_alu|Mult1|auto_generated|mac_mult5~DATAOUT3\
& \my_alu|Mult1|auto_generated|mac_mult5~DATAOUT2\ & \my_alu|Mult1|auto_generated|mac_mult5~DATAOUT1\ & \my_alu|Mult1|auto_generated|mac_mult5~dataout\ & \my_alu|Mult1|auto_generated|mac_mult5~3\ & \my_alu|Mult1|auto_generated|mac_mult5~2\ & 
\my_alu|Mult1|auto_generated|mac_mult5~1\ & \my_alu|Mult1|auto_generated|mac_mult5~0\);

\my_alu|Mult1|auto_generated|mac_out6~0\ <= \my_alu|Mult1|auto_generated|mac_out6_DATAOUT_bus\(0);
\my_alu|Mult1|auto_generated|mac_out6~1\ <= \my_alu|Mult1|auto_generated|mac_out6_DATAOUT_bus\(1);
\my_alu|Mult1|auto_generated|mac_out6~2\ <= \my_alu|Mult1|auto_generated|mac_out6_DATAOUT_bus\(2);
\my_alu|Mult1|auto_generated|mac_out6~3\ <= \my_alu|Mult1|auto_generated|mac_out6_DATAOUT_bus\(3);
\my_alu|Mult1|auto_generated|mac_out6~dataout\ <= \my_alu|Mult1|auto_generated|mac_out6_DATAOUT_bus\(4);
\my_alu|Mult1|auto_generated|mac_out6~DATAOUT1\ <= \my_alu|Mult1|auto_generated|mac_out6_DATAOUT_bus\(5);
\my_alu|Mult1|auto_generated|mac_out6~DATAOUT2\ <= \my_alu|Mult1|auto_generated|mac_out6_DATAOUT_bus\(6);
\my_alu|Mult1|auto_generated|mac_out6~DATAOUT3\ <= \my_alu|Mult1|auto_generated|mac_out6_DATAOUT_bus\(7);
\my_alu|Mult1|auto_generated|mac_out6~DATAOUT4\ <= \my_alu|Mult1|auto_generated|mac_out6_DATAOUT_bus\(8);
\my_alu|Mult1|auto_generated|mac_out6~DATAOUT5\ <= \my_alu|Mult1|auto_generated|mac_out6_DATAOUT_bus\(9);
\my_alu|Mult1|auto_generated|mac_out6~DATAOUT6\ <= \my_alu|Mult1|auto_generated|mac_out6_DATAOUT_bus\(10);
\my_alu|Mult1|auto_generated|mac_out6~DATAOUT7\ <= \my_alu|Mult1|auto_generated|mac_out6_DATAOUT_bus\(11);
\my_alu|Mult1|auto_generated|mac_out6~DATAOUT8\ <= \my_alu|Mult1|auto_generated|mac_out6_DATAOUT_bus\(12);
\my_alu|Mult1|auto_generated|mac_out6~DATAOUT9\ <= \my_alu|Mult1|auto_generated|mac_out6_DATAOUT_bus\(13);
\my_alu|Mult1|auto_generated|mac_out6~DATAOUT10\ <= \my_alu|Mult1|auto_generated|mac_out6_DATAOUT_bus\(14);
\my_alu|Mult1|auto_generated|mac_out6~DATAOUT11\ <= \my_alu|Mult1|auto_generated|mac_out6_DATAOUT_bus\(15);
\my_alu|Mult1|auto_generated|mac_out6~DATAOUT12\ <= \my_alu|Mult1|auto_generated|mac_out6_DATAOUT_bus\(16);
\my_alu|Mult1|auto_generated|mac_out6~DATAOUT13\ <= \my_alu|Mult1|auto_generated|mac_out6_DATAOUT_bus\(17);
\my_alu|Mult1|auto_generated|mac_out6~DATAOUT14\ <= \my_alu|Mult1|auto_generated|mac_out6_DATAOUT_bus\(18);
\my_alu|Mult1|auto_generated|mac_out6~DATAOUT15\ <= \my_alu|Mult1|auto_generated|mac_out6_DATAOUT_bus\(19);
\my_alu|Mult1|auto_generated|mac_out6~DATAOUT16\ <= \my_alu|Mult1|auto_generated|mac_out6_DATAOUT_bus\(20);
\my_alu|Mult1|auto_generated|mac_out6~DATAOUT17\ <= \my_alu|Mult1|auto_generated|mac_out6_DATAOUT_bus\(21);
\my_alu|Mult1|auto_generated|mac_out6~DATAOUT18\ <= \my_alu|Mult1|auto_generated|mac_out6_DATAOUT_bus\(22);
\my_alu|Mult1|auto_generated|mac_out6~DATAOUT19\ <= \my_alu|Mult1|auto_generated|mac_out6_DATAOUT_bus\(23);
\my_alu|Mult1|auto_generated|mac_out6~DATAOUT20\ <= \my_alu|Mult1|auto_generated|mac_out6_DATAOUT_bus\(24);
\my_alu|Mult1|auto_generated|mac_out6~DATAOUT21\ <= \my_alu|Mult1|auto_generated|mac_out6_DATAOUT_bus\(25);
\my_alu|Mult1|auto_generated|mac_out6~DATAOUT22\ <= \my_alu|Mult1|auto_generated|mac_out6_DATAOUT_bus\(26);
\my_alu|Mult1|auto_generated|mac_out6~DATAOUT23\ <= \my_alu|Mult1|auto_generated|mac_out6_DATAOUT_bus\(27);
\my_alu|Mult1|auto_generated|mac_out6~DATAOUT24\ <= \my_alu|Mult1|auto_generated|mac_out6_DATAOUT_bus\(28);
\my_alu|Mult1|auto_generated|mac_out6~DATAOUT25\ <= \my_alu|Mult1|auto_generated|mac_out6_DATAOUT_bus\(29);
\my_alu|Mult1|auto_generated|mac_out6~DATAOUT26\ <= \my_alu|Mult1|auto_generated|mac_out6_DATAOUT_bus\(30);
\my_alu|Mult1|auto_generated|mac_out6~DATAOUT27\ <= \my_alu|Mult1|auto_generated|mac_out6_DATAOUT_bus\(31);
\my_alu|Mult1|auto_generated|mac_out6~DATAOUT28\ <= \my_alu|Mult1|auto_generated|mac_out6_DATAOUT_bus\(32);
\my_alu|Mult1|auto_generated|mac_out6~DATAOUT29\ <= \my_alu|Mult1|auto_generated|mac_out6_DATAOUT_bus\(33);
\my_alu|Mult1|auto_generated|mac_out6~DATAOUT30\ <= \my_alu|Mult1|auto_generated|mac_out6_DATAOUT_bus\(34);
\my_alu|Mult1|auto_generated|mac_out6~DATAOUT31\ <= \my_alu|Mult1|auto_generated|mac_out6_DATAOUT_bus\(35);

\my_alu|Mult1|auto_generated|mac_out2_DATAA_bus\ <= (\my_alu|Mult1|auto_generated|mac_mult1~DATAOUT35\ & \my_alu|Mult1|auto_generated|mac_mult1~DATAOUT34\ & \my_alu|Mult1|auto_generated|mac_mult1~DATAOUT33\ & 
\my_alu|Mult1|auto_generated|mac_mult1~DATAOUT32\ & \my_alu|Mult1|auto_generated|mac_mult1~DATAOUT31\ & \my_alu|Mult1|auto_generated|mac_mult1~DATAOUT30\ & \my_alu|Mult1|auto_generated|mac_mult1~DATAOUT29\ & 
\my_alu|Mult1|auto_generated|mac_mult1~DATAOUT28\ & \my_alu|Mult1|auto_generated|mac_mult1~DATAOUT27\ & \my_alu|Mult1|auto_generated|mac_mult1~DATAOUT26\ & \my_alu|Mult1|auto_generated|mac_mult1~DATAOUT25\ & 
\my_alu|Mult1|auto_generated|mac_mult1~DATAOUT24\ & \my_alu|Mult1|auto_generated|mac_mult1~DATAOUT23\ & \my_alu|Mult1|auto_generated|mac_mult1~DATAOUT22\ & \my_alu|Mult1|auto_generated|mac_mult1~DATAOUT21\ & 
\my_alu|Mult1|auto_generated|mac_mult1~DATAOUT20\ & \my_alu|Mult1|auto_generated|mac_mult1~DATAOUT19\ & \my_alu|Mult1|auto_generated|mac_mult1~DATAOUT18\ & \my_alu|Mult1|auto_generated|mac_mult1~DATAOUT17\ & 
\my_alu|Mult1|auto_generated|mac_mult1~DATAOUT16\ & \my_alu|Mult1|auto_generated|mac_mult1~DATAOUT15\ & \my_alu|Mult1|auto_generated|mac_mult1~DATAOUT14\ & \my_alu|Mult1|auto_generated|mac_mult1~DATAOUT13\ & 
\my_alu|Mult1|auto_generated|mac_mult1~DATAOUT12\ & \my_alu|Mult1|auto_generated|mac_mult1~DATAOUT11\ & \my_alu|Mult1|auto_generated|mac_mult1~DATAOUT10\ & \my_alu|Mult1|auto_generated|mac_mult1~DATAOUT9\ & \my_alu|Mult1|auto_generated|mac_mult1~DATAOUT8\
& \my_alu|Mult1|auto_generated|mac_mult1~DATAOUT7\ & \my_alu|Mult1|auto_generated|mac_mult1~DATAOUT6\ & \my_alu|Mult1|auto_generated|mac_mult1~DATAOUT5\ & \my_alu|Mult1|auto_generated|mac_mult1~DATAOUT4\ & \my_alu|Mult1|auto_generated|mac_mult1~DATAOUT3\
& \my_alu|Mult1|auto_generated|mac_mult1~DATAOUT2\ & \my_alu|Mult1|auto_generated|mac_mult1~DATAOUT1\ & \my_alu|Mult1|auto_generated|mac_mult1~dataout\);

\my_alu|Mult1|auto_generated|w513w\(0) <= \my_alu|Mult1|auto_generated|mac_out2_DATAOUT_bus\(0);
\my_alu|Mult1|auto_generated|w513w\(1) <= \my_alu|Mult1|auto_generated|mac_out2_DATAOUT_bus\(1);
\my_alu|Mult1|auto_generated|w513w\(2) <= \my_alu|Mult1|auto_generated|mac_out2_DATAOUT_bus\(2);
\my_alu|Mult1|auto_generated|w513w\(3) <= \my_alu|Mult1|auto_generated|mac_out2_DATAOUT_bus\(3);
\my_alu|Mult1|auto_generated|w513w\(4) <= \my_alu|Mult1|auto_generated|mac_out2_DATAOUT_bus\(4);
\my_alu|Mult1|auto_generated|w513w\(5) <= \my_alu|Mult1|auto_generated|mac_out2_DATAOUT_bus\(5);
\my_alu|Mult1|auto_generated|w513w\(6) <= \my_alu|Mult1|auto_generated|mac_out2_DATAOUT_bus\(6);
\my_alu|Mult1|auto_generated|w513w\(7) <= \my_alu|Mult1|auto_generated|mac_out2_DATAOUT_bus\(7);
\my_alu|Mult1|auto_generated|w513w\(8) <= \my_alu|Mult1|auto_generated|mac_out2_DATAOUT_bus\(8);
\my_alu|Mult1|auto_generated|w513w\(9) <= \my_alu|Mult1|auto_generated|mac_out2_DATAOUT_bus\(9);
\my_alu|Mult1|auto_generated|w513w\(10) <= \my_alu|Mult1|auto_generated|mac_out2_DATAOUT_bus\(10);
\my_alu|Mult1|auto_generated|w513w\(11) <= \my_alu|Mult1|auto_generated|mac_out2_DATAOUT_bus\(11);
\my_alu|Mult1|auto_generated|w513w\(12) <= \my_alu|Mult1|auto_generated|mac_out2_DATAOUT_bus\(12);
\my_alu|Mult1|auto_generated|w513w\(13) <= \my_alu|Mult1|auto_generated|mac_out2_DATAOUT_bus\(13);
\my_alu|Mult1|auto_generated|w513w\(14) <= \my_alu|Mult1|auto_generated|mac_out2_DATAOUT_bus\(14);
\my_alu|Mult1|auto_generated|w513w\(15) <= \my_alu|Mult1|auto_generated|mac_out2_DATAOUT_bus\(15);
\my_alu|Mult1|auto_generated|w513w\(16) <= \my_alu|Mult1|auto_generated|mac_out2_DATAOUT_bus\(16);
\my_alu|Mult1|auto_generated|w513w\(17) <= \my_alu|Mult1|auto_generated|mac_out2_DATAOUT_bus\(17);
\my_alu|Mult1|auto_generated|mac_out2~DATAOUT18\ <= \my_alu|Mult1|auto_generated|mac_out2_DATAOUT_bus\(18);
\my_alu|Mult1|auto_generated|mac_out2~DATAOUT19\ <= \my_alu|Mult1|auto_generated|mac_out2_DATAOUT_bus\(19);
\my_alu|Mult1|auto_generated|mac_out2~DATAOUT20\ <= \my_alu|Mult1|auto_generated|mac_out2_DATAOUT_bus\(20);
\my_alu|Mult1|auto_generated|mac_out2~DATAOUT21\ <= \my_alu|Mult1|auto_generated|mac_out2_DATAOUT_bus\(21);
\my_alu|Mult1|auto_generated|mac_out2~DATAOUT22\ <= \my_alu|Mult1|auto_generated|mac_out2_DATAOUT_bus\(22);
\my_alu|Mult1|auto_generated|mac_out2~DATAOUT23\ <= \my_alu|Mult1|auto_generated|mac_out2_DATAOUT_bus\(23);
\my_alu|Mult1|auto_generated|mac_out2~DATAOUT24\ <= \my_alu|Mult1|auto_generated|mac_out2_DATAOUT_bus\(24);
\my_alu|Mult1|auto_generated|mac_out2~DATAOUT25\ <= \my_alu|Mult1|auto_generated|mac_out2_DATAOUT_bus\(25);
\my_alu|Mult1|auto_generated|mac_out2~DATAOUT26\ <= \my_alu|Mult1|auto_generated|mac_out2_DATAOUT_bus\(26);
\my_alu|Mult1|auto_generated|mac_out2~DATAOUT27\ <= \my_alu|Mult1|auto_generated|mac_out2_DATAOUT_bus\(27);
\my_alu|Mult1|auto_generated|mac_out2~DATAOUT28\ <= \my_alu|Mult1|auto_generated|mac_out2_DATAOUT_bus\(28);
\my_alu|Mult1|auto_generated|mac_out2~DATAOUT29\ <= \my_alu|Mult1|auto_generated|mac_out2_DATAOUT_bus\(29);
\my_alu|Mult1|auto_generated|mac_out2~DATAOUT30\ <= \my_alu|Mult1|auto_generated|mac_out2_DATAOUT_bus\(30);
\my_alu|Mult1|auto_generated|mac_out2~DATAOUT31\ <= \my_alu|Mult1|auto_generated|mac_out2_DATAOUT_bus\(31);
\my_alu|Mult1|auto_generated|mac_out2~DATAOUT32\ <= \my_alu|Mult1|auto_generated|mac_out2_DATAOUT_bus\(32);
\my_alu|Mult1|auto_generated|mac_out2~DATAOUT33\ <= \my_alu|Mult1|auto_generated|mac_out2_DATAOUT_bus\(33);
\my_alu|Mult1|auto_generated|mac_out2~DATAOUT34\ <= \my_alu|Mult1|auto_generated|mac_out2_DATAOUT_bus\(34);
\my_alu|Mult1|auto_generated|mac_out2~DATAOUT35\ <= \my_alu|Mult1|auto_generated|mac_out2_DATAOUT_bus\(35);

\my_alu|Mult0|auto_generated|mac_out4_DATAA_bus\ <= (\my_alu|Mult0|auto_generated|mac_mult3~DATAOUT31\ & \my_alu|Mult0|auto_generated|mac_mult3~DATAOUT30\ & \my_alu|Mult0|auto_generated|mac_mult3~DATAOUT29\ & 
\my_alu|Mult0|auto_generated|mac_mult3~DATAOUT28\ & \my_alu|Mult0|auto_generated|mac_mult3~DATAOUT27\ & \my_alu|Mult0|auto_generated|mac_mult3~DATAOUT26\ & \my_alu|Mult0|auto_generated|mac_mult3~DATAOUT25\ & 
\my_alu|Mult0|auto_generated|mac_mult3~DATAOUT24\ & \my_alu|Mult0|auto_generated|mac_mult3~DATAOUT23\ & \my_alu|Mult0|auto_generated|mac_mult3~DATAOUT22\ & \my_alu|Mult0|auto_generated|mac_mult3~DATAOUT21\ & 
\my_alu|Mult0|auto_generated|mac_mult3~DATAOUT20\ & \my_alu|Mult0|auto_generated|mac_mult3~DATAOUT19\ & \my_alu|Mult0|auto_generated|mac_mult3~DATAOUT18\ & \my_alu|Mult0|auto_generated|mac_mult3~DATAOUT17\ & 
\my_alu|Mult0|auto_generated|mac_mult3~DATAOUT16\ & \my_alu|Mult0|auto_generated|mac_mult3~DATAOUT15\ & \my_alu|Mult0|auto_generated|mac_mult3~DATAOUT14\ & \my_alu|Mult0|auto_generated|mac_mult3~DATAOUT13\ & 
\my_alu|Mult0|auto_generated|mac_mult3~DATAOUT12\ & \my_alu|Mult0|auto_generated|mac_mult3~DATAOUT11\ & \my_alu|Mult0|auto_generated|mac_mult3~DATAOUT10\ & \my_alu|Mult0|auto_generated|mac_mult3~DATAOUT9\ & \my_alu|Mult0|auto_generated|mac_mult3~DATAOUT8\
& \my_alu|Mult0|auto_generated|mac_mult3~DATAOUT7\ & \my_alu|Mult0|auto_generated|mac_mult3~DATAOUT6\ & \my_alu|Mult0|auto_generated|mac_mult3~DATAOUT5\ & \my_alu|Mult0|auto_generated|mac_mult3~DATAOUT4\ & \my_alu|Mult0|auto_generated|mac_mult3~DATAOUT3\
& \my_alu|Mult0|auto_generated|mac_mult3~DATAOUT2\ & \my_alu|Mult0|auto_generated|mac_mult3~DATAOUT1\ & \my_alu|Mult0|auto_generated|mac_mult3~dataout\ & \my_alu|Mult0|auto_generated|mac_mult3~3\ & \my_alu|Mult0|auto_generated|mac_mult3~2\ & 
\my_alu|Mult0|auto_generated|mac_mult3~1\ & \my_alu|Mult0|auto_generated|mac_mult3~0\);

\my_alu|Mult0|auto_generated|mac_out4~0\ <= \my_alu|Mult0|auto_generated|mac_out4_DATAOUT_bus\(0);
\my_alu|Mult0|auto_generated|mac_out4~1\ <= \my_alu|Mult0|auto_generated|mac_out4_DATAOUT_bus\(1);
\my_alu|Mult0|auto_generated|mac_out4~2\ <= \my_alu|Mult0|auto_generated|mac_out4_DATAOUT_bus\(2);
\my_alu|Mult0|auto_generated|mac_out4~3\ <= \my_alu|Mult0|auto_generated|mac_out4_DATAOUT_bus\(3);
\my_alu|Mult0|auto_generated|mac_out4~dataout\ <= \my_alu|Mult0|auto_generated|mac_out4_DATAOUT_bus\(4);
\my_alu|Mult0|auto_generated|mac_out4~DATAOUT1\ <= \my_alu|Mult0|auto_generated|mac_out4_DATAOUT_bus\(5);
\my_alu|Mult0|auto_generated|mac_out4~DATAOUT2\ <= \my_alu|Mult0|auto_generated|mac_out4_DATAOUT_bus\(6);
\my_alu|Mult0|auto_generated|mac_out4~DATAOUT3\ <= \my_alu|Mult0|auto_generated|mac_out4_DATAOUT_bus\(7);
\my_alu|Mult0|auto_generated|mac_out4~DATAOUT4\ <= \my_alu|Mult0|auto_generated|mac_out4_DATAOUT_bus\(8);
\my_alu|Mult0|auto_generated|mac_out4~DATAOUT5\ <= \my_alu|Mult0|auto_generated|mac_out4_DATAOUT_bus\(9);
\my_alu|Mult0|auto_generated|mac_out4~DATAOUT6\ <= \my_alu|Mult0|auto_generated|mac_out4_DATAOUT_bus\(10);
\my_alu|Mult0|auto_generated|mac_out4~DATAOUT7\ <= \my_alu|Mult0|auto_generated|mac_out4_DATAOUT_bus\(11);
\my_alu|Mult0|auto_generated|mac_out4~DATAOUT8\ <= \my_alu|Mult0|auto_generated|mac_out4_DATAOUT_bus\(12);
\my_alu|Mult0|auto_generated|mac_out4~DATAOUT9\ <= \my_alu|Mult0|auto_generated|mac_out4_DATAOUT_bus\(13);
\my_alu|Mult0|auto_generated|mac_out4~DATAOUT10\ <= \my_alu|Mult0|auto_generated|mac_out4_DATAOUT_bus\(14);
\my_alu|Mult0|auto_generated|mac_out4~DATAOUT11\ <= \my_alu|Mult0|auto_generated|mac_out4_DATAOUT_bus\(15);
\my_alu|Mult0|auto_generated|mac_out4~DATAOUT12\ <= \my_alu|Mult0|auto_generated|mac_out4_DATAOUT_bus\(16);
\my_alu|Mult0|auto_generated|mac_out4~DATAOUT13\ <= \my_alu|Mult0|auto_generated|mac_out4_DATAOUT_bus\(17);
\my_alu|Mult0|auto_generated|mac_out4~DATAOUT14\ <= \my_alu|Mult0|auto_generated|mac_out4_DATAOUT_bus\(18);
\my_alu|Mult0|auto_generated|mac_out4~DATAOUT15\ <= \my_alu|Mult0|auto_generated|mac_out4_DATAOUT_bus\(19);
\my_alu|Mult0|auto_generated|mac_out4~DATAOUT16\ <= \my_alu|Mult0|auto_generated|mac_out4_DATAOUT_bus\(20);
\my_alu|Mult0|auto_generated|mac_out4~DATAOUT17\ <= \my_alu|Mult0|auto_generated|mac_out4_DATAOUT_bus\(21);
\my_alu|Mult0|auto_generated|mac_out4~DATAOUT18\ <= \my_alu|Mult0|auto_generated|mac_out4_DATAOUT_bus\(22);
\my_alu|Mult0|auto_generated|mac_out4~DATAOUT19\ <= \my_alu|Mult0|auto_generated|mac_out4_DATAOUT_bus\(23);
\my_alu|Mult0|auto_generated|mac_out4~DATAOUT20\ <= \my_alu|Mult0|auto_generated|mac_out4_DATAOUT_bus\(24);
\my_alu|Mult0|auto_generated|mac_out4~DATAOUT21\ <= \my_alu|Mult0|auto_generated|mac_out4_DATAOUT_bus\(25);
\my_alu|Mult0|auto_generated|mac_out4~DATAOUT22\ <= \my_alu|Mult0|auto_generated|mac_out4_DATAOUT_bus\(26);
\my_alu|Mult0|auto_generated|mac_out4~DATAOUT23\ <= \my_alu|Mult0|auto_generated|mac_out4_DATAOUT_bus\(27);
\my_alu|Mult0|auto_generated|mac_out4~DATAOUT24\ <= \my_alu|Mult0|auto_generated|mac_out4_DATAOUT_bus\(28);
\my_alu|Mult0|auto_generated|mac_out4~DATAOUT25\ <= \my_alu|Mult0|auto_generated|mac_out4_DATAOUT_bus\(29);
\my_alu|Mult0|auto_generated|mac_out4~DATAOUT26\ <= \my_alu|Mult0|auto_generated|mac_out4_DATAOUT_bus\(30);
\my_alu|Mult0|auto_generated|mac_out4~DATAOUT27\ <= \my_alu|Mult0|auto_generated|mac_out4_DATAOUT_bus\(31);
\my_alu|Mult0|auto_generated|mac_out4~DATAOUT28\ <= \my_alu|Mult0|auto_generated|mac_out4_DATAOUT_bus\(32);
\my_alu|Mult0|auto_generated|mac_out4~DATAOUT29\ <= \my_alu|Mult0|auto_generated|mac_out4_DATAOUT_bus\(33);
\my_alu|Mult0|auto_generated|mac_out4~DATAOUT30\ <= \my_alu|Mult0|auto_generated|mac_out4_DATAOUT_bus\(34);
\my_alu|Mult0|auto_generated|mac_out4~DATAOUT31\ <= \my_alu|Mult0|auto_generated|mac_out4_DATAOUT_bus\(35);

\my_alu|Mult0|auto_generated|mac_out6_DATAA_bus\ <= (\my_alu|Mult0|auto_generated|mac_mult5~DATAOUT31\ & \my_alu|Mult0|auto_generated|mac_mult5~DATAOUT30\ & \my_alu|Mult0|auto_generated|mac_mult5~DATAOUT29\ & 
\my_alu|Mult0|auto_generated|mac_mult5~DATAOUT28\ & \my_alu|Mult0|auto_generated|mac_mult5~DATAOUT27\ & \my_alu|Mult0|auto_generated|mac_mult5~DATAOUT26\ & \my_alu|Mult0|auto_generated|mac_mult5~DATAOUT25\ & 
\my_alu|Mult0|auto_generated|mac_mult5~DATAOUT24\ & \my_alu|Mult0|auto_generated|mac_mult5~DATAOUT23\ & \my_alu|Mult0|auto_generated|mac_mult5~DATAOUT22\ & \my_alu|Mult0|auto_generated|mac_mult5~DATAOUT21\ & 
\my_alu|Mult0|auto_generated|mac_mult5~DATAOUT20\ & \my_alu|Mult0|auto_generated|mac_mult5~DATAOUT19\ & \my_alu|Mult0|auto_generated|mac_mult5~DATAOUT18\ & \my_alu|Mult0|auto_generated|mac_mult5~DATAOUT17\ & 
\my_alu|Mult0|auto_generated|mac_mult5~DATAOUT16\ & \my_alu|Mult0|auto_generated|mac_mult5~DATAOUT15\ & \my_alu|Mult0|auto_generated|mac_mult5~DATAOUT14\ & \my_alu|Mult0|auto_generated|mac_mult5~DATAOUT13\ & 
\my_alu|Mult0|auto_generated|mac_mult5~DATAOUT12\ & \my_alu|Mult0|auto_generated|mac_mult5~DATAOUT11\ & \my_alu|Mult0|auto_generated|mac_mult5~DATAOUT10\ & \my_alu|Mult0|auto_generated|mac_mult5~DATAOUT9\ & \my_alu|Mult0|auto_generated|mac_mult5~DATAOUT8\
& \my_alu|Mult0|auto_generated|mac_mult5~DATAOUT7\ & \my_alu|Mult0|auto_generated|mac_mult5~DATAOUT6\ & \my_alu|Mult0|auto_generated|mac_mult5~DATAOUT5\ & \my_alu|Mult0|auto_generated|mac_mult5~DATAOUT4\ & \my_alu|Mult0|auto_generated|mac_mult5~DATAOUT3\
& \my_alu|Mult0|auto_generated|mac_mult5~DATAOUT2\ & \my_alu|Mult0|auto_generated|mac_mult5~DATAOUT1\ & \my_alu|Mult0|auto_generated|mac_mult5~dataout\ & \my_alu|Mult0|auto_generated|mac_mult5~3\ & \my_alu|Mult0|auto_generated|mac_mult5~2\ & 
\my_alu|Mult0|auto_generated|mac_mult5~1\ & \my_alu|Mult0|auto_generated|mac_mult5~0\);

\my_alu|Mult0|auto_generated|mac_out6~0\ <= \my_alu|Mult0|auto_generated|mac_out6_DATAOUT_bus\(0);
\my_alu|Mult0|auto_generated|mac_out6~1\ <= \my_alu|Mult0|auto_generated|mac_out6_DATAOUT_bus\(1);
\my_alu|Mult0|auto_generated|mac_out6~2\ <= \my_alu|Mult0|auto_generated|mac_out6_DATAOUT_bus\(2);
\my_alu|Mult0|auto_generated|mac_out6~3\ <= \my_alu|Mult0|auto_generated|mac_out6_DATAOUT_bus\(3);
\my_alu|Mult0|auto_generated|mac_out6~dataout\ <= \my_alu|Mult0|auto_generated|mac_out6_DATAOUT_bus\(4);
\my_alu|Mult0|auto_generated|mac_out6~DATAOUT1\ <= \my_alu|Mult0|auto_generated|mac_out6_DATAOUT_bus\(5);
\my_alu|Mult0|auto_generated|mac_out6~DATAOUT2\ <= \my_alu|Mult0|auto_generated|mac_out6_DATAOUT_bus\(6);
\my_alu|Mult0|auto_generated|mac_out6~DATAOUT3\ <= \my_alu|Mult0|auto_generated|mac_out6_DATAOUT_bus\(7);
\my_alu|Mult0|auto_generated|mac_out6~DATAOUT4\ <= \my_alu|Mult0|auto_generated|mac_out6_DATAOUT_bus\(8);
\my_alu|Mult0|auto_generated|mac_out6~DATAOUT5\ <= \my_alu|Mult0|auto_generated|mac_out6_DATAOUT_bus\(9);
\my_alu|Mult0|auto_generated|mac_out6~DATAOUT6\ <= \my_alu|Mult0|auto_generated|mac_out6_DATAOUT_bus\(10);
\my_alu|Mult0|auto_generated|mac_out6~DATAOUT7\ <= \my_alu|Mult0|auto_generated|mac_out6_DATAOUT_bus\(11);
\my_alu|Mult0|auto_generated|mac_out6~DATAOUT8\ <= \my_alu|Mult0|auto_generated|mac_out6_DATAOUT_bus\(12);
\my_alu|Mult0|auto_generated|mac_out6~DATAOUT9\ <= \my_alu|Mult0|auto_generated|mac_out6_DATAOUT_bus\(13);
\my_alu|Mult0|auto_generated|mac_out6~DATAOUT10\ <= \my_alu|Mult0|auto_generated|mac_out6_DATAOUT_bus\(14);
\my_alu|Mult0|auto_generated|mac_out6~DATAOUT11\ <= \my_alu|Mult0|auto_generated|mac_out6_DATAOUT_bus\(15);
\my_alu|Mult0|auto_generated|mac_out6~DATAOUT12\ <= \my_alu|Mult0|auto_generated|mac_out6_DATAOUT_bus\(16);
\my_alu|Mult0|auto_generated|mac_out6~DATAOUT13\ <= \my_alu|Mult0|auto_generated|mac_out6_DATAOUT_bus\(17);
\my_alu|Mult0|auto_generated|mac_out6~DATAOUT14\ <= \my_alu|Mult0|auto_generated|mac_out6_DATAOUT_bus\(18);
\my_alu|Mult0|auto_generated|mac_out6~DATAOUT15\ <= \my_alu|Mult0|auto_generated|mac_out6_DATAOUT_bus\(19);
\my_alu|Mult0|auto_generated|mac_out6~DATAOUT16\ <= \my_alu|Mult0|auto_generated|mac_out6_DATAOUT_bus\(20);
\my_alu|Mult0|auto_generated|mac_out6~DATAOUT17\ <= \my_alu|Mult0|auto_generated|mac_out6_DATAOUT_bus\(21);
\my_alu|Mult0|auto_generated|mac_out6~DATAOUT18\ <= \my_alu|Mult0|auto_generated|mac_out6_DATAOUT_bus\(22);
\my_alu|Mult0|auto_generated|mac_out6~DATAOUT19\ <= \my_alu|Mult0|auto_generated|mac_out6_DATAOUT_bus\(23);
\my_alu|Mult0|auto_generated|mac_out6~DATAOUT20\ <= \my_alu|Mult0|auto_generated|mac_out6_DATAOUT_bus\(24);
\my_alu|Mult0|auto_generated|mac_out6~DATAOUT21\ <= \my_alu|Mult0|auto_generated|mac_out6_DATAOUT_bus\(25);
\my_alu|Mult0|auto_generated|mac_out6~DATAOUT22\ <= \my_alu|Mult0|auto_generated|mac_out6_DATAOUT_bus\(26);
\my_alu|Mult0|auto_generated|mac_out6~DATAOUT23\ <= \my_alu|Mult0|auto_generated|mac_out6_DATAOUT_bus\(27);
\my_alu|Mult0|auto_generated|mac_out6~DATAOUT24\ <= \my_alu|Mult0|auto_generated|mac_out6_DATAOUT_bus\(28);
\my_alu|Mult0|auto_generated|mac_out6~DATAOUT25\ <= \my_alu|Mult0|auto_generated|mac_out6_DATAOUT_bus\(29);
\my_alu|Mult0|auto_generated|mac_out6~DATAOUT26\ <= \my_alu|Mult0|auto_generated|mac_out6_DATAOUT_bus\(30);
\my_alu|Mult0|auto_generated|mac_out6~DATAOUT27\ <= \my_alu|Mult0|auto_generated|mac_out6_DATAOUT_bus\(31);
\my_alu|Mult0|auto_generated|mac_out6~DATAOUT28\ <= \my_alu|Mult0|auto_generated|mac_out6_DATAOUT_bus\(32);
\my_alu|Mult0|auto_generated|mac_out6~DATAOUT29\ <= \my_alu|Mult0|auto_generated|mac_out6_DATAOUT_bus\(33);
\my_alu|Mult0|auto_generated|mac_out6~DATAOUT30\ <= \my_alu|Mult0|auto_generated|mac_out6_DATAOUT_bus\(34);
\my_alu|Mult0|auto_generated|mac_out6~DATAOUT31\ <= \my_alu|Mult0|auto_generated|mac_out6_DATAOUT_bus\(35);

\my_alu|Mult0|auto_generated|mac_out2_DATAA_bus\ <= (\my_alu|Mult0|auto_generated|mac_mult1~DATAOUT35\ & \my_alu|Mult0|auto_generated|mac_mult1~DATAOUT34\ & \my_alu|Mult0|auto_generated|mac_mult1~DATAOUT33\ & 
\my_alu|Mult0|auto_generated|mac_mult1~DATAOUT32\ & \my_alu|Mult0|auto_generated|mac_mult1~DATAOUT31\ & \my_alu|Mult0|auto_generated|mac_mult1~DATAOUT30\ & \my_alu|Mult0|auto_generated|mac_mult1~DATAOUT29\ & 
\my_alu|Mult0|auto_generated|mac_mult1~DATAOUT28\ & \my_alu|Mult0|auto_generated|mac_mult1~DATAOUT27\ & \my_alu|Mult0|auto_generated|mac_mult1~DATAOUT26\ & \my_alu|Mult0|auto_generated|mac_mult1~DATAOUT25\ & 
\my_alu|Mult0|auto_generated|mac_mult1~DATAOUT24\ & \my_alu|Mult0|auto_generated|mac_mult1~DATAOUT23\ & \my_alu|Mult0|auto_generated|mac_mult1~DATAOUT22\ & \my_alu|Mult0|auto_generated|mac_mult1~DATAOUT21\ & 
\my_alu|Mult0|auto_generated|mac_mult1~DATAOUT20\ & \my_alu|Mult0|auto_generated|mac_mult1~DATAOUT19\ & \my_alu|Mult0|auto_generated|mac_mult1~DATAOUT18\ & \my_alu|Mult0|auto_generated|mac_mult1~DATAOUT17\ & 
\my_alu|Mult0|auto_generated|mac_mult1~DATAOUT16\ & \my_alu|Mult0|auto_generated|mac_mult1~DATAOUT15\ & \my_alu|Mult0|auto_generated|mac_mult1~DATAOUT14\ & \my_alu|Mult0|auto_generated|mac_mult1~DATAOUT13\ & 
\my_alu|Mult0|auto_generated|mac_mult1~DATAOUT12\ & \my_alu|Mult0|auto_generated|mac_mult1~DATAOUT11\ & \my_alu|Mult0|auto_generated|mac_mult1~DATAOUT10\ & \my_alu|Mult0|auto_generated|mac_mult1~DATAOUT9\ & \my_alu|Mult0|auto_generated|mac_mult1~DATAOUT8\
& \my_alu|Mult0|auto_generated|mac_mult1~DATAOUT7\ & \my_alu|Mult0|auto_generated|mac_mult1~DATAOUT6\ & \my_alu|Mult0|auto_generated|mac_mult1~DATAOUT5\ & \my_alu|Mult0|auto_generated|mac_mult1~DATAOUT4\ & \my_alu|Mult0|auto_generated|mac_mult1~DATAOUT3\
& \my_alu|Mult0|auto_generated|mac_mult1~DATAOUT2\ & \my_alu|Mult0|auto_generated|mac_mult1~DATAOUT1\ & \my_alu|Mult0|auto_generated|mac_mult1~dataout\);

\my_alu|Mult0|auto_generated|w569w\(0) <= \my_alu|Mult0|auto_generated|mac_out2_DATAOUT_bus\(0);
\my_alu|Mult0|auto_generated|w569w\(1) <= \my_alu|Mult0|auto_generated|mac_out2_DATAOUT_bus\(1);
\my_alu|Mult0|auto_generated|w569w\(2) <= \my_alu|Mult0|auto_generated|mac_out2_DATAOUT_bus\(2);
\my_alu|Mult0|auto_generated|w569w\(3) <= \my_alu|Mult0|auto_generated|mac_out2_DATAOUT_bus\(3);
\my_alu|Mult0|auto_generated|w569w\(4) <= \my_alu|Mult0|auto_generated|mac_out2_DATAOUT_bus\(4);
\my_alu|Mult0|auto_generated|w569w\(5) <= \my_alu|Mult0|auto_generated|mac_out2_DATAOUT_bus\(5);
\my_alu|Mult0|auto_generated|w569w\(6) <= \my_alu|Mult0|auto_generated|mac_out2_DATAOUT_bus\(6);
\my_alu|Mult0|auto_generated|w569w\(7) <= \my_alu|Mult0|auto_generated|mac_out2_DATAOUT_bus\(7);
\my_alu|Mult0|auto_generated|w569w\(8) <= \my_alu|Mult0|auto_generated|mac_out2_DATAOUT_bus\(8);
\my_alu|Mult0|auto_generated|w569w\(9) <= \my_alu|Mult0|auto_generated|mac_out2_DATAOUT_bus\(9);
\my_alu|Mult0|auto_generated|w569w\(10) <= \my_alu|Mult0|auto_generated|mac_out2_DATAOUT_bus\(10);
\my_alu|Mult0|auto_generated|w569w\(11) <= \my_alu|Mult0|auto_generated|mac_out2_DATAOUT_bus\(11);
\my_alu|Mult0|auto_generated|w569w\(12) <= \my_alu|Mult0|auto_generated|mac_out2_DATAOUT_bus\(12);
\my_alu|Mult0|auto_generated|w569w\(13) <= \my_alu|Mult0|auto_generated|mac_out2_DATAOUT_bus\(13);
\my_alu|Mult0|auto_generated|w569w\(14) <= \my_alu|Mult0|auto_generated|mac_out2_DATAOUT_bus\(14);
\my_alu|Mult0|auto_generated|w569w\(15) <= \my_alu|Mult0|auto_generated|mac_out2_DATAOUT_bus\(15);
\my_alu|Mult0|auto_generated|w569w\(16) <= \my_alu|Mult0|auto_generated|mac_out2_DATAOUT_bus\(16);
\my_alu|Mult0|auto_generated|w569w\(17) <= \my_alu|Mult0|auto_generated|mac_out2_DATAOUT_bus\(17);
\my_alu|Mult0|auto_generated|mac_out2~DATAOUT18\ <= \my_alu|Mult0|auto_generated|mac_out2_DATAOUT_bus\(18);
\my_alu|Mult0|auto_generated|mac_out2~DATAOUT19\ <= \my_alu|Mult0|auto_generated|mac_out2_DATAOUT_bus\(19);
\my_alu|Mult0|auto_generated|mac_out2~DATAOUT20\ <= \my_alu|Mult0|auto_generated|mac_out2_DATAOUT_bus\(20);
\my_alu|Mult0|auto_generated|mac_out2~DATAOUT21\ <= \my_alu|Mult0|auto_generated|mac_out2_DATAOUT_bus\(21);
\my_alu|Mult0|auto_generated|mac_out2~DATAOUT22\ <= \my_alu|Mult0|auto_generated|mac_out2_DATAOUT_bus\(22);
\my_alu|Mult0|auto_generated|mac_out2~DATAOUT23\ <= \my_alu|Mult0|auto_generated|mac_out2_DATAOUT_bus\(23);
\my_alu|Mult0|auto_generated|mac_out2~DATAOUT24\ <= \my_alu|Mult0|auto_generated|mac_out2_DATAOUT_bus\(24);
\my_alu|Mult0|auto_generated|mac_out2~DATAOUT25\ <= \my_alu|Mult0|auto_generated|mac_out2_DATAOUT_bus\(25);
\my_alu|Mult0|auto_generated|mac_out2~DATAOUT26\ <= \my_alu|Mult0|auto_generated|mac_out2_DATAOUT_bus\(26);
\my_alu|Mult0|auto_generated|mac_out2~DATAOUT27\ <= \my_alu|Mult0|auto_generated|mac_out2_DATAOUT_bus\(27);
\my_alu|Mult0|auto_generated|mac_out2~DATAOUT28\ <= \my_alu|Mult0|auto_generated|mac_out2_DATAOUT_bus\(28);
\my_alu|Mult0|auto_generated|mac_out2~DATAOUT29\ <= \my_alu|Mult0|auto_generated|mac_out2_DATAOUT_bus\(29);
\my_alu|Mult0|auto_generated|mac_out2~DATAOUT30\ <= \my_alu|Mult0|auto_generated|mac_out2_DATAOUT_bus\(30);
\my_alu|Mult0|auto_generated|mac_out2~DATAOUT31\ <= \my_alu|Mult0|auto_generated|mac_out2_DATAOUT_bus\(31);
\my_alu|Mult0|auto_generated|mac_out2~DATAOUT32\ <= \my_alu|Mult0|auto_generated|mac_out2_DATAOUT_bus\(32);
\my_alu|Mult0|auto_generated|mac_out2~DATAOUT33\ <= \my_alu|Mult0|auto_generated|mac_out2_DATAOUT_bus\(33);
\my_alu|Mult0|auto_generated|mac_out2~DATAOUT34\ <= \my_alu|Mult0|auto_generated|mac_out2_DATAOUT_bus\(34);
\my_alu|Mult0|auto_generated|mac_out2~DATAOUT35\ <= \my_alu|Mult0|auto_generated|mac_out2_DATAOUT_bus\(35);

\my_alu|Mult1|auto_generated|mac_out8_DATAA_bus\ <= (\my_alu|Mult1|auto_generated|mac_mult7~DATAOUT27\ & \my_alu|Mult1|auto_generated|mac_mult7~DATAOUT26\ & \my_alu|Mult1|auto_generated|mac_mult7~DATAOUT25\ & 
\my_alu|Mult1|auto_generated|mac_mult7~DATAOUT24\ & \my_alu|Mult1|auto_generated|mac_mult7~DATAOUT23\ & \my_alu|Mult1|auto_generated|mac_mult7~DATAOUT22\ & \my_alu|Mult1|auto_generated|mac_mult7~DATAOUT21\ & 
\my_alu|Mult1|auto_generated|mac_mult7~DATAOUT20\ & \my_alu|Mult1|auto_generated|mac_mult7~DATAOUT19\ & \my_alu|Mult1|auto_generated|mac_mult7~DATAOUT18\ & \my_alu|Mult1|auto_generated|mac_mult7~DATAOUT17\ & 
\my_alu|Mult1|auto_generated|mac_mult7~DATAOUT16\ & \my_alu|Mult1|auto_generated|mac_mult7~DATAOUT15\ & \my_alu|Mult1|auto_generated|mac_mult7~DATAOUT14\ & \my_alu|Mult1|auto_generated|mac_mult7~DATAOUT13\ & 
\my_alu|Mult1|auto_generated|mac_mult7~DATAOUT12\ & \my_alu|Mult1|auto_generated|mac_mult7~DATAOUT11\ & \my_alu|Mult1|auto_generated|mac_mult7~DATAOUT10\ & \my_alu|Mult1|auto_generated|mac_mult7~DATAOUT9\ & \my_alu|Mult1|auto_generated|mac_mult7~DATAOUT8\
& \my_alu|Mult1|auto_generated|mac_mult7~DATAOUT7\ & \my_alu|Mult1|auto_generated|mac_mult7~DATAOUT6\ & \my_alu|Mult1|auto_generated|mac_mult7~DATAOUT5\ & \my_alu|Mult1|auto_generated|mac_mult7~DATAOUT4\ & \my_alu|Mult1|auto_generated|mac_mult7~DATAOUT3\
& \my_alu|Mult1|auto_generated|mac_mult7~DATAOUT2\ & \my_alu|Mult1|auto_generated|mac_mult7~DATAOUT1\ & \my_alu|Mult1|auto_generated|mac_mult7~dataout\ & \my_alu|Mult1|auto_generated|mac_mult7~7\ & \my_alu|Mult1|auto_generated|mac_mult7~6\ & 
\my_alu|Mult1|auto_generated|mac_mult7~5\ & \my_alu|Mult1|auto_generated|mac_mult7~4\ & \my_alu|Mult1|auto_generated|mac_mult7~3\ & \my_alu|Mult1|auto_generated|mac_mult7~2\ & \my_alu|Mult1|auto_generated|mac_mult7~1\ & 
\my_alu|Mult1|auto_generated|mac_mult7~0\);

\my_alu|Mult1|auto_generated|mac_out8~0\ <= \my_alu|Mult1|auto_generated|mac_out8_DATAOUT_bus\(0);
\my_alu|Mult1|auto_generated|mac_out8~1\ <= \my_alu|Mult1|auto_generated|mac_out8_DATAOUT_bus\(1);
\my_alu|Mult1|auto_generated|mac_out8~2\ <= \my_alu|Mult1|auto_generated|mac_out8_DATAOUT_bus\(2);
\my_alu|Mult1|auto_generated|mac_out8~3\ <= \my_alu|Mult1|auto_generated|mac_out8_DATAOUT_bus\(3);
\my_alu|Mult1|auto_generated|mac_out8~4\ <= \my_alu|Mult1|auto_generated|mac_out8_DATAOUT_bus\(4);
\my_alu|Mult1|auto_generated|mac_out8~5\ <= \my_alu|Mult1|auto_generated|mac_out8_DATAOUT_bus\(5);
\my_alu|Mult1|auto_generated|mac_out8~6\ <= \my_alu|Mult1|auto_generated|mac_out8_DATAOUT_bus\(6);
\my_alu|Mult1|auto_generated|mac_out8~7\ <= \my_alu|Mult1|auto_generated|mac_out8_DATAOUT_bus\(7);
\my_alu|Mult1|auto_generated|mac_out8~dataout\ <= \my_alu|Mult1|auto_generated|mac_out8_DATAOUT_bus\(8);
\my_alu|Mult1|auto_generated|mac_out8~DATAOUT1\ <= \my_alu|Mult1|auto_generated|mac_out8_DATAOUT_bus\(9);
\my_alu|Mult1|auto_generated|mac_out8~DATAOUT2\ <= \my_alu|Mult1|auto_generated|mac_out8_DATAOUT_bus\(10);
\my_alu|Mult1|auto_generated|mac_out8~DATAOUT3\ <= \my_alu|Mult1|auto_generated|mac_out8_DATAOUT_bus\(11);
\my_alu|Mult1|auto_generated|mac_out8~DATAOUT4\ <= \my_alu|Mult1|auto_generated|mac_out8_DATAOUT_bus\(12);
\my_alu|Mult1|auto_generated|mac_out8~DATAOUT5\ <= \my_alu|Mult1|auto_generated|mac_out8_DATAOUT_bus\(13);
\my_alu|Mult1|auto_generated|mac_out8~DATAOUT6\ <= \my_alu|Mult1|auto_generated|mac_out8_DATAOUT_bus\(14);
\my_alu|Mult1|auto_generated|mac_out8~DATAOUT7\ <= \my_alu|Mult1|auto_generated|mac_out8_DATAOUT_bus\(15);
\my_alu|Mult1|auto_generated|mac_out8~DATAOUT8\ <= \my_alu|Mult1|auto_generated|mac_out8_DATAOUT_bus\(16);
\my_alu|Mult1|auto_generated|mac_out8~DATAOUT9\ <= \my_alu|Mult1|auto_generated|mac_out8_DATAOUT_bus\(17);
\my_alu|Mult1|auto_generated|mac_out8~DATAOUT10\ <= \my_alu|Mult1|auto_generated|mac_out8_DATAOUT_bus\(18);
\my_alu|Mult1|auto_generated|mac_out8~DATAOUT11\ <= \my_alu|Mult1|auto_generated|mac_out8_DATAOUT_bus\(19);
\my_alu|Mult1|auto_generated|mac_out8~DATAOUT12\ <= \my_alu|Mult1|auto_generated|mac_out8_DATAOUT_bus\(20);
\my_alu|Mult1|auto_generated|mac_out8~DATAOUT13\ <= \my_alu|Mult1|auto_generated|mac_out8_DATAOUT_bus\(21);
\my_alu|Mult1|auto_generated|mac_out8~DATAOUT14\ <= \my_alu|Mult1|auto_generated|mac_out8_DATAOUT_bus\(22);
\my_alu|Mult1|auto_generated|mac_out8~DATAOUT15\ <= \my_alu|Mult1|auto_generated|mac_out8_DATAOUT_bus\(23);
\my_alu|Mult1|auto_generated|mac_out8~DATAOUT16\ <= \my_alu|Mult1|auto_generated|mac_out8_DATAOUT_bus\(24);
\my_alu|Mult1|auto_generated|mac_out8~DATAOUT17\ <= \my_alu|Mult1|auto_generated|mac_out8_DATAOUT_bus\(25);
\my_alu|Mult1|auto_generated|mac_out8~DATAOUT18\ <= \my_alu|Mult1|auto_generated|mac_out8_DATAOUT_bus\(26);
\my_alu|Mult1|auto_generated|mac_out8~DATAOUT19\ <= \my_alu|Mult1|auto_generated|mac_out8_DATAOUT_bus\(27);
\my_alu|Mult1|auto_generated|mac_out8~DATAOUT20\ <= \my_alu|Mult1|auto_generated|mac_out8_DATAOUT_bus\(28);
\my_alu|Mult1|auto_generated|mac_out8~DATAOUT21\ <= \my_alu|Mult1|auto_generated|mac_out8_DATAOUT_bus\(29);
\my_alu|Mult1|auto_generated|mac_out8~DATAOUT22\ <= \my_alu|Mult1|auto_generated|mac_out8_DATAOUT_bus\(30);
\my_alu|Mult1|auto_generated|mac_out8~DATAOUT23\ <= \my_alu|Mult1|auto_generated|mac_out8_DATAOUT_bus\(31);
\my_alu|Mult1|auto_generated|mac_out8~DATAOUT24\ <= \my_alu|Mult1|auto_generated|mac_out8_DATAOUT_bus\(32);
\my_alu|Mult1|auto_generated|mac_out8~DATAOUT25\ <= \my_alu|Mult1|auto_generated|mac_out8_DATAOUT_bus\(33);
\my_alu|Mult1|auto_generated|mac_out8~DATAOUT26\ <= \my_alu|Mult1|auto_generated|mac_out8_DATAOUT_bus\(34);
\my_alu|Mult1|auto_generated|mac_out8~DATAOUT27\ <= \my_alu|Mult1|auto_generated|mac_out8_DATAOUT_bus\(35);

\my_alu|Mult0|auto_generated|mac_out8_DATAA_bus\ <= (\my_alu|Mult0|auto_generated|mac_mult7~DATAOUT27\ & \my_alu|Mult0|auto_generated|mac_mult7~DATAOUT26\ & \my_alu|Mult0|auto_generated|mac_mult7~DATAOUT25\ & 
\my_alu|Mult0|auto_generated|mac_mult7~DATAOUT24\ & \my_alu|Mult0|auto_generated|mac_mult7~DATAOUT23\ & \my_alu|Mult0|auto_generated|mac_mult7~DATAOUT22\ & \my_alu|Mult0|auto_generated|mac_mult7~DATAOUT21\ & 
\my_alu|Mult0|auto_generated|mac_mult7~DATAOUT20\ & \my_alu|Mult0|auto_generated|mac_mult7~DATAOUT19\ & \my_alu|Mult0|auto_generated|mac_mult7~DATAOUT18\ & \my_alu|Mult0|auto_generated|mac_mult7~DATAOUT17\ & 
\my_alu|Mult0|auto_generated|mac_mult7~DATAOUT16\ & \my_alu|Mult0|auto_generated|mac_mult7~DATAOUT15\ & \my_alu|Mult0|auto_generated|mac_mult7~DATAOUT14\ & \my_alu|Mult0|auto_generated|mac_mult7~DATAOUT13\ & 
\my_alu|Mult0|auto_generated|mac_mult7~DATAOUT12\ & \my_alu|Mult0|auto_generated|mac_mult7~DATAOUT11\ & \my_alu|Mult0|auto_generated|mac_mult7~DATAOUT10\ & \my_alu|Mult0|auto_generated|mac_mult7~DATAOUT9\ & \my_alu|Mult0|auto_generated|mac_mult7~DATAOUT8\
& \my_alu|Mult0|auto_generated|mac_mult7~DATAOUT7\ & \my_alu|Mult0|auto_generated|mac_mult7~DATAOUT6\ & \my_alu|Mult0|auto_generated|mac_mult7~DATAOUT5\ & \my_alu|Mult0|auto_generated|mac_mult7~DATAOUT4\ & \my_alu|Mult0|auto_generated|mac_mult7~DATAOUT3\
& \my_alu|Mult0|auto_generated|mac_mult7~DATAOUT2\ & \my_alu|Mult0|auto_generated|mac_mult7~DATAOUT1\ & \my_alu|Mult0|auto_generated|mac_mult7~dataout\ & \my_alu|Mult0|auto_generated|mac_mult7~7\ & \my_alu|Mult0|auto_generated|mac_mult7~6\ & 
\my_alu|Mult0|auto_generated|mac_mult7~5\ & \my_alu|Mult0|auto_generated|mac_mult7~4\ & \my_alu|Mult0|auto_generated|mac_mult7~3\ & \my_alu|Mult0|auto_generated|mac_mult7~2\ & \my_alu|Mult0|auto_generated|mac_mult7~1\ & 
\my_alu|Mult0|auto_generated|mac_mult7~0\);

\my_alu|Mult0|auto_generated|mac_out8~0\ <= \my_alu|Mult0|auto_generated|mac_out8_DATAOUT_bus\(0);
\my_alu|Mult0|auto_generated|mac_out8~1\ <= \my_alu|Mult0|auto_generated|mac_out8_DATAOUT_bus\(1);
\my_alu|Mult0|auto_generated|mac_out8~2\ <= \my_alu|Mult0|auto_generated|mac_out8_DATAOUT_bus\(2);
\my_alu|Mult0|auto_generated|mac_out8~3\ <= \my_alu|Mult0|auto_generated|mac_out8_DATAOUT_bus\(3);
\my_alu|Mult0|auto_generated|mac_out8~4\ <= \my_alu|Mult0|auto_generated|mac_out8_DATAOUT_bus\(4);
\my_alu|Mult0|auto_generated|mac_out8~5\ <= \my_alu|Mult0|auto_generated|mac_out8_DATAOUT_bus\(5);
\my_alu|Mult0|auto_generated|mac_out8~6\ <= \my_alu|Mult0|auto_generated|mac_out8_DATAOUT_bus\(6);
\my_alu|Mult0|auto_generated|mac_out8~7\ <= \my_alu|Mult0|auto_generated|mac_out8_DATAOUT_bus\(7);
\my_alu|Mult0|auto_generated|mac_out8~dataout\ <= \my_alu|Mult0|auto_generated|mac_out8_DATAOUT_bus\(8);
\my_alu|Mult0|auto_generated|mac_out8~DATAOUT1\ <= \my_alu|Mult0|auto_generated|mac_out8_DATAOUT_bus\(9);
\my_alu|Mult0|auto_generated|mac_out8~DATAOUT2\ <= \my_alu|Mult0|auto_generated|mac_out8_DATAOUT_bus\(10);
\my_alu|Mult0|auto_generated|mac_out8~DATAOUT3\ <= \my_alu|Mult0|auto_generated|mac_out8_DATAOUT_bus\(11);
\my_alu|Mult0|auto_generated|mac_out8~DATAOUT4\ <= \my_alu|Mult0|auto_generated|mac_out8_DATAOUT_bus\(12);
\my_alu|Mult0|auto_generated|mac_out8~DATAOUT5\ <= \my_alu|Mult0|auto_generated|mac_out8_DATAOUT_bus\(13);
\my_alu|Mult0|auto_generated|mac_out8~DATAOUT6\ <= \my_alu|Mult0|auto_generated|mac_out8_DATAOUT_bus\(14);
\my_alu|Mult0|auto_generated|mac_out8~DATAOUT7\ <= \my_alu|Mult0|auto_generated|mac_out8_DATAOUT_bus\(15);
\my_alu|Mult0|auto_generated|mac_out8~DATAOUT8\ <= \my_alu|Mult0|auto_generated|mac_out8_DATAOUT_bus\(16);
\my_alu|Mult0|auto_generated|mac_out8~DATAOUT9\ <= \my_alu|Mult0|auto_generated|mac_out8_DATAOUT_bus\(17);
\my_alu|Mult0|auto_generated|mac_out8~DATAOUT10\ <= \my_alu|Mult0|auto_generated|mac_out8_DATAOUT_bus\(18);
\my_alu|Mult0|auto_generated|mac_out8~DATAOUT11\ <= \my_alu|Mult0|auto_generated|mac_out8_DATAOUT_bus\(19);
\my_alu|Mult0|auto_generated|mac_out8~DATAOUT12\ <= \my_alu|Mult0|auto_generated|mac_out8_DATAOUT_bus\(20);
\my_alu|Mult0|auto_generated|mac_out8~DATAOUT13\ <= \my_alu|Mult0|auto_generated|mac_out8_DATAOUT_bus\(21);
\my_alu|Mult0|auto_generated|mac_out8~DATAOUT14\ <= \my_alu|Mult0|auto_generated|mac_out8_DATAOUT_bus\(22);
\my_alu|Mult0|auto_generated|mac_out8~DATAOUT15\ <= \my_alu|Mult0|auto_generated|mac_out8_DATAOUT_bus\(23);
\my_alu|Mult0|auto_generated|mac_out8~DATAOUT16\ <= \my_alu|Mult0|auto_generated|mac_out8_DATAOUT_bus\(24);
\my_alu|Mult0|auto_generated|mac_out8~DATAOUT17\ <= \my_alu|Mult0|auto_generated|mac_out8_DATAOUT_bus\(25);
\my_alu|Mult0|auto_generated|mac_out8~DATAOUT18\ <= \my_alu|Mult0|auto_generated|mac_out8_DATAOUT_bus\(26);
\my_alu|Mult0|auto_generated|mac_out8~DATAOUT19\ <= \my_alu|Mult0|auto_generated|mac_out8_DATAOUT_bus\(27);
\my_alu|Mult0|auto_generated|mac_out8~DATAOUT20\ <= \my_alu|Mult0|auto_generated|mac_out8_DATAOUT_bus\(28);
\my_alu|Mult0|auto_generated|mac_out8~DATAOUT21\ <= \my_alu|Mult0|auto_generated|mac_out8_DATAOUT_bus\(29);
\my_alu|Mult0|auto_generated|mac_out8~DATAOUT22\ <= \my_alu|Mult0|auto_generated|mac_out8_DATAOUT_bus\(30);
\my_alu|Mult0|auto_generated|mac_out8~DATAOUT23\ <= \my_alu|Mult0|auto_generated|mac_out8_DATAOUT_bus\(31);
\my_alu|Mult0|auto_generated|mac_out8~DATAOUT24\ <= \my_alu|Mult0|auto_generated|mac_out8_DATAOUT_bus\(32);
\my_alu|Mult0|auto_generated|mac_out8~DATAOUT25\ <= \my_alu|Mult0|auto_generated|mac_out8_DATAOUT_bus\(33);
\my_alu|Mult0|auto_generated|mac_out8~DATAOUT26\ <= \my_alu|Mult0|auto_generated|mac_out8_DATAOUT_bus\(34);
\my_alu|Mult0|auto_generated|mac_out8~DATAOUT27\ <= \my_alu|Mult0|auto_generated|mac_out8_DATAOUT_bus\(35);

\my_alu|Mult1|auto_generated|mac_mult3_DATAA_bus\ <= (\a[17]~input_o\ & \a[16]~input_o\ & \a[15]~input_o\ & \a[14]~input_o\ & \a[13]~input_o\ & \a[12]~input_o\ & \a[11]~input_o\ & \a[10]~input_o\ & \a[9]~input_o\ & \a[8]~input_o\ & \a[7]~input_o\ & 
\a[6]~input_o\ & \a[5]~input_o\ & \a[4]~input_o\ & \a[3]~input_o\ & \a[2]~input_o\ & \a[1]~input_o\ & \a[0]~input_o\);

\my_alu|Mult1|auto_generated|mac_mult3_DATAB_bus\ <= (\b[31]~input_o\ & \b[30]~input_o\ & \b[29]~input_o\ & \b[28]~input_o\ & \b[27]~input_o\ & \b[26]~input_o\ & \b[25]~input_o\ & \b[24]~input_o\ & \b[23]~input_o\ & \b[22]~input_o\ & \b[21]~input_o\ & 
\b[20]~input_o\ & \b[19]~input_o\ & \b[18]~input_o\ & gnd & gnd & gnd & gnd);

\my_alu|Mult1|auto_generated|mac_mult3~0\ <= \my_alu|Mult1|auto_generated|mac_mult3_DATAOUT_bus\(0);
\my_alu|Mult1|auto_generated|mac_mult3~1\ <= \my_alu|Mult1|auto_generated|mac_mult3_DATAOUT_bus\(1);
\my_alu|Mult1|auto_generated|mac_mult3~2\ <= \my_alu|Mult1|auto_generated|mac_mult3_DATAOUT_bus\(2);
\my_alu|Mult1|auto_generated|mac_mult3~3\ <= \my_alu|Mult1|auto_generated|mac_mult3_DATAOUT_bus\(3);
\my_alu|Mult1|auto_generated|mac_mult3~dataout\ <= \my_alu|Mult1|auto_generated|mac_mult3_DATAOUT_bus\(4);
\my_alu|Mult1|auto_generated|mac_mult3~DATAOUT1\ <= \my_alu|Mult1|auto_generated|mac_mult3_DATAOUT_bus\(5);
\my_alu|Mult1|auto_generated|mac_mult3~DATAOUT2\ <= \my_alu|Mult1|auto_generated|mac_mult3_DATAOUT_bus\(6);
\my_alu|Mult1|auto_generated|mac_mult3~DATAOUT3\ <= \my_alu|Mult1|auto_generated|mac_mult3_DATAOUT_bus\(7);
\my_alu|Mult1|auto_generated|mac_mult3~DATAOUT4\ <= \my_alu|Mult1|auto_generated|mac_mult3_DATAOUT_bus\(8);
\my_alu|Mult1|auto_generated|mac_mult3~DATAOUT5\ <= \my_alu|Mult1|auto_generated|mac_mult3_DATAOUT_bus\(9);
\my_alu|Mult1|auto_generated|mac_mult3~DATAOUT6\ <= \my_alu|Mult1|auto_generated|mac_mult3_DATAOUT_bus\(10);
\my_alu|Mult1|auto_generated|mac_mult3~DATAOUT7\ <= \my_alu|Mult1|auto_generated|mac_mult3_DATAOUT_bus\(11);
\my_alu|Mult1|auto_generated|mac_mult3~DATAOUT8\ <= \my_alu|Mult1|auto_generated|mac_mult3_DATAOUT_bus\(12);
\my_alu|Mult1|auto_generated|mac_mult3~DATAOUT9\ <= \my_alu|Mult1|auto_generated|mac_mult3_DATAOUT_bus\(13);
\my_alu|Mult1|auto_generated|mac_mult3~DATAOUT10\ <= \my_alu|Mult1|auto_generated|mac_mult3_DATAOUT_bus\(14);
\my_alu|Mult1|auto_generated|mac_mult3~DATAOUT11\ <= \my_alu|Mult1|auto_generated|mac_mult3_DATAOUT_bus\(15);
\my_alu|Mult1|auto_generated|mac_mult3~DATAOUT12\ <= \my_alu|Mult1|auto_generated|mac_mult3_DATAOUT_bus\(16);
\my_alu|Mult1|auto_generated|mac_mult3~DATAOUT13\ <= \my_alu|Mult1|auto_generated|mac_mult3_DATAOUT_bus\(17);
\my_alu|Mult1|auto_generated|mac_mult3~DATAOUT14\ <= \my_alu|Mult1|auto_generated|mac_mult3_DATAOUT_bus\(18);
\my_alu|Mult1|auto_generated|mac_mult3~DATAOUT15\ <= \my_alu|Mult1|auto_generated|mac_mult3_DATAOUT_bus\(19);
\my_alu|Mult1|auto_generated|mac_mult3~DATAOUT16\ <= \my_alu|Mult1|auto_generated|mac_mult3_DATAOUT_bus\(20);
\my_alu|Mult1|auto_generated|mac_mult3~DATAOUT17\ <= \my_alu|Mult1|auto_generated|mac_mult3_DATAOUT_bus\(21);
\my_alu|Mult1|auto_generated|mac_mult3~DATAOUT18\ <= \my_alu|Mult1|auto_generated|mac_mult3_DATAOUT_bus\(22);
\my_alu|Mult1|auto_generated|mac_mult3~DATAOUT19\ <= \my_alu|Mult1|auto_generated|mac_mult3_DATAOUT_bus\(23);
\my_alu|Mult1|auto_generated|mac_mult3~DATAOUT20\ <= \my_alu|Mult1|auto_generated|mac_mult3_DATAOUT_bus\(24);
\my_alu|Mult1|auto_generated|mac_mult3~DATAOUT21\ <= \my_alu|Mult1|auto_generated|mac_mult3_DATAOUT_bus\(25);
\my_alu|Mult1|auto_generated|mac_mult3~DATAOUT22\ <= \my_alu|Mult1|auto_generated|mac_mult3_DATAOUT_bus\(26);
\my_alu|Mult1|auto_generated|mac_mult3~DATAOUT23\ <= \my_alu|Mult1|auto_generated|mac_mult3_DATAOUT_bus\(27);
\my_alu|Mult1|auto_generated|mac_mult3~DATAOUT24\ <= \my_alu|Mult1|auto_generated|mac_mult3_DATAOUT_bus\(28);
\my_alu|Mult1|auto_generated|mac_mult3~DATAOUT25\ <= \my_alu|Mult1|auto_generated|mac_mult3_DATAOUT_bus\(29);
\my_alu|Mult1|auto_generated|mac_mult3~DATAOUT26\ <= \my_alu|Mult1|auto_generated|mac_mult3_DATAOUT_bus\(30);
\my_alu|Mult1|auto_generated|mac_mult3~DATAOUT27\ <= \my_alu|Mult1|auto_generated|mac_mult3_DATAOUT_bus\(31);
\my_alu|Mult1|auto_generated|mac_mult3~DATAOUT28\ <= \my_alu|Mult1|auto_generated|mac_mult3_DATAOUT_bus\(32);
\my_alu|Mult1|auto_generated|mac_mult3~DATAOUT29\ <= \my_alu|Mult1|auto_generated|mac_mult3_DATAOUT_bus\(33);
\my_alu|Mult1|auto_generated|mac_mult3~DATAOUT30\ <= \my_alu|Mult1|auto_generated|mac_mult3_DATAOUT_bus\(34);
\my_alu|Mult1|auto_generated|mac_mult3~DATAOUT31\ <= \my_alu|Mult1|auto_generated|mac_mult3_DATAOUT_bus\(35);

\my_alu|Mult1|auto_generated|mac_mult5_DATAA_bus\ <= (\b[17]~input_o\ & \b[16]~input_o\ & \b[15]~input_o\ & \b[14]~input_o\ & \b[13]~input_o\ & \b[12]~input_o\ & \b[11]~input_o\ & \b[10]~input_o\ & \b[9]~input_o\ & \b[8]~input_o\ & \b[7]~input_o\ & 
\b[6]~input_o\ & \b[5]~input_o\ & \b[4]~input_o\ & \b[3]~input_o\ & \b[2]~input_o\ & \b[1]~input_o\ & \b[0]~input_o\);

\my_alu|Mult1|auto_generated|mac_mult5_DATAB_bus\ <= (\a[31]~input_o\ & \a[30]~input_o\ & \a[29]~input_o\ & \a[28]~input_o\ & \a[27]~input_o\ & \a[26]~input_o\ & \a[25]~input_o\ & \a[24]~input_o\ & \a[23]~input_o\ & \a[22]~input_o\ & \a[21]~input_o\ & 
\a[20]~input_o\ & \a[19]~input_o\ & \a[18]~input_o\ & gnd & gnd & gnd & gnd);

\my_alu|Mult1|auto_generated|mac_mult5~0\ <= \my_alu|Mult1|auto_generated|mac_mult5_DATAOUT_bus\(0);
\my_alu|Mult1|auto_generated|mac_mult5~1\ <= \my_alu|Mult1|auto_generated|mac_mult5_DATAOUT_bus\(1);
\my_alu|Mult1|auto_generated|mac_mult5~2\ <= \my_alu|Mult1|auto_generated|mac_mult5_DATAOUT_bus\(2);
\my_alu|Mult1|auto_generated|mac_mult5~3\ <= \my_alu|Mult1|auto_generated|mac_mult5_DATAOUT_bus\(3);
\my_alu|Mult1|auto_generated|mac_mult5~dataout\ <= \my_alu|Mult1|auto_generated|mac_mult5_DATAOUT_bus\(4);
\my_alu|Mult1|auto_generated|mac_mult5~DATAOUT1\ <= \my_alu|Mult1|auto_generated|mac_mult5_DATAOUT_bus\(5);
\my_alu|Mult1|auto_generated|mac_mult5~DATAOUT2\ <= \my_alu|Mult1|auto_generated|mac_mult5_DATAOUT_bus\(6);
\my_alu|Mult1|auto_generated|mac_mult5~DATAOUT3\ <= \my_alu|Mult1|auto_generated|mac_mult5_DATAOUT_bus\(7);
\my_alu|Mult1|auto_generated|mac_mult5~DATAOUT4\ <= \my_alu|Mult1|auto_generated|mac_mult5_DATAOUT_bus\(8);
\my_alu|Mult1|auto_generated|mac_mult5~DATAOUT5\ <= \my_alu|Mult1|auto_generated|mac_mult5_DATAOUT_bus\(9);
\my_alu|Mult1|auto_generated|mac_mult5~DATAOUT6\ <= \my_alu|Mult1|auto_generated|mac_mult5_DATAOUT_bus\(10);
\my_alu|Mult1|auto_generated|mac_mult5~DATAOUT7\ <= \my_alu|Mult1|auto_generated|mac_mult5_DATAOUT_bus\(11);
\my_alu|Mult1|auto_generated|mac_mult5~DATAOUT8\ <= \my_alu|Mult1|auto_generated|mac_mult5_DATAOUT_bus\(12);
\my_alu|Mult1|auto_generated|mac_mult5~DATAOUT9\ <= \my_alu|Mult1|auto_generated|mac_mult5_DATAOUT_bus\(13);
\my_alu|Mult1|auto_generated|mac_mult5~DATAOUT10\ <= \my_alu|Mult1|auto_generated|mac_mult5_DATAOUT_bus\(14);
\my_alu|Mult1|auto_generated|mac_mult5~DATAOUT11\ <= \my_alu|Mult1|auto_generated|mac_mult5_DATAOUT_bus\(15);
\my_alu|Mult1|auto_generated|mac_mult5~DATAOUT12\ <= \my_alu|Mult1|auto_generated|mac_mult5_DATAOUT_bus\(16);
\my_alu|Mult1|auto_generated|mac_mult5~DATAOUT13\ <= \my_alu|Mult1|auto_generated|mac_mult5_DATAOUT_bus\(17);
\my_alu|Mult1|auto_generated|mac_mult5~DATAOUT14\ <= \my_alu|Mult1|auto_generated|mac_mult5_DATAOUT_bus\(18);
\my_alu|Mult1|auto_generated|mac_mult5~DATAOUT15\ <= \my_alu|Mult1|auto_generated|mac_mult5_DATAOUT_bus\(19);
\my_alu|Mult1|auto_generated|mac_mult5~DATAOUT16\ <= \my_alu|Mult1|auto_generated|mac_mult5_DATAOUT_bus\(20);
\my_alu|Mult1|auto_generated|mac_mult5~DATAOUT17\ <= \my_alu|Mult1|auto_generated|mac_mult5_DATAOUT_bus\(21);
\my_alu|Mult1|auto_generated|mac_mult5~DATAOUT18\ <= \my_alu|Mult1|auto_generated|mac_mult5_DATAOUT_bus\(22);
\my_alu|Mult1|auto_generated|mac_mult5~DATAOUT19\ <= \my_alu|Mult1|auto_generated|mac_mult5_DATAOUT_bus\(23);
\my_alu|Mult1|auto_generated|mac_mult5~DATAOUT20\ <= \my_alu|Mult1|auto_generated|mac_mult5_DATAOUT_bus\(24);
\my_alu|Mult1|auto_generated|mac_mult5~DATAOUT21\ <= \my_alu|Mult1|auto_generated|mac_mult5_DATAOUT_bus\(25);
\my_alu|Mult1|auto_generated|mac_mult5~DATAOUT22\ <= \my_alu|Mult1|auto_generated|mac_mult5_DATAOUT_bus\(26);
\my_alu|Mult1|auto_generated|mac_mult5~DATAOUT23\ <= \my_alu|Mult1|auto_generated|mac_mult5_DATAOUT_bus\(27);
\my_alu|Mult1|auto_generated|mac_mult5~DATAOUT24\ <= \my_alu|Mult1|auto_generated|mac_mult5_DATAOUT_bus\(28);
\my_alu|Mult1|auto_generated|mac_mult5~DATAOUT25\ <= \my_alu|Mult1|auto_generated|mac_mult5_DATAOUT_bus\(29);
\my_alu|Mult1|auto_generated|mac_mult5~DATAOUT26\ <= \my_alu|Mult1|auto_generated|mac_mult5_DATAOUT_bus\(30);
\my_alu|Mult1|auto_generated|mac_mult5~DATAOUT27\ <= \my_alu|Mult1|auto_generated|mac_mult5_DATAOUT_bus\(31);
\my_alu|Mult1|auto_generated|mac_mult5~DATAOUT28\ <= \my_alu|Mult1|auto_generated|mac_mult5_DATAOUT_bus\(32);
\my_alu|Mult1|auto_generated|mac_mult5~DATAOUT29\ <= \my_alu|Mult1|auto_generated|mac_mult5_DATAOUT_bus\(33);
\my_alu|Mult1|auto_generated|mac_mult5~DATAOUT30\ <= \my_alu|Mult1|auto_generated|mac_mult5_DATAOUT_bus\(34);
\my_alu|Mult1|auto_generated|mac_mult5~DATAOUT31\ <= \my_alu|Mult1|auto_generated|mac_mult5_DATAOUT_bus\(35);

\my_alu|Mult1|auto_generated|mac_mult1_DATAA_bus\ <= (\a[17]~input_o\ & \a[16]~input_o\ & \a[15]~input_o\ & \a[14]~input_o\ & \a[13]~input_o\ & \a[12]~input_o\ & \a[11]~input_o\ & \a[10]~input_o\ & \a[9]~input_o\ & \a[8]~input_o\ & \a[7]~input_o\ & 
\a[6]~input_o\ & \a[5]~input_o\ & \a[4]~input_o\ & \a[3]~input_o\ & \a[2]~input_o\ & \a[1]~input_o\ & \a[0]~input_o\);

\my_alu|Mult1|auto_generated|mac_mult1_DATAB_bus\ <= (\b[17]~input_o\ & \b[16]~input_o\ & \b[15]~input_o\ & \b[14]~input_o\ & \b[13]~input_o\ & \b[12]~input_o\ & \b[11]~input_o\ & \b[10]~input_o\ & \b[9]~input_o\ & \b[8]~input_o\ & \b[7]~input_o\ & 
\b[6]~input_o\ & \b[5]~input_o\ & \b[4]~input_o\ & \b[3]~input_o\ & \b[2]~input_o\ & \b[1]~input_o\ & \b[0]~input_o\);

\my_alu|Mult1|auto_generated|mac_mult1~dataout\ <= \my_alu|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(0);
\my_alu|Mult1|auto_generated|mac_mult1~DATAOUT1\ <= \my_alu|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(1);
\my_alu|Mult1|auto_generated|mac_mult1~DATAOUT2\ <= \my_alu|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(2);
\my_alu|Mult1|auto_generated|mac_mult1~DATAOUT3\ <= \my_alu|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(3);
\my_alu|Mult1|auto_generated|mac_mult1~DATAOUT4\ <= \my_alu|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(4);
\my_alu|Mult1|auto_generated|mac_mult1~DATAOUT5\ <= \my_alu|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(5);
\my_alu|Mult1|auto_generated|mac_mult1~DATAOUT6\ <= \my_alu|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(6);
\my_alu|Mult1|auto_generated|mac_mult1~DATAOUT7\ <= \my_alu|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(7);
\my_alu|Mult1|auto_generated|mac_mult1~DATAOUT8\ <= \my_alu|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(8);
\my_alu|Mult1|auto_generated|mac_mult1~DATAOUT9\ <= \my_alu|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(9);
\my_alu|Mult1|auto_generated|mac_mult1~DATAOUT10\ <= \my_alu|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(10);
\my_alu|Mult1|auto_generated|mac_mult1~DATAOUT11\ <= \my_alu|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(11);
\my_alu|Mult1|auto_generated|mac_mult1~DATAOUT12\ <= \my_alu|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(12);
\my_alu|Mult1|auto_generated|mac_mult1~DATAOUT13\ <= \my_alu|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(13);
\my_alu|Mult1|auto_generated|mac_mult1~DATAOUT14\ <= \my_alu|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(14);
\my_alu|Mult1|auto_generated|mac_mult1~DATAOUT15\ <= \my_alu|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(15);
\my_alu|Mult1|auto_generated|mac_mult1~DATAOUT16\ <= \my_alu|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(16);
\my_alu|Mult1|auto_generated|mac_mult1~DATAOUT17\ <= \my_alu|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(17);
\my_alu|Mult1|auto_generated|mac_mult1~DATAOUT18\ <= \my_alu|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(18);
\my_alu|Mult1|auto_generated|mac_mult1~DATAOUT19\ <= \my_alu|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(19);
\my_alu|Mult1|auto_generated|mac_mult1~DATAOUT20\ <= \my_alu|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(20);
\my_alu|Mult1|auto_generated|mac_mult1~DATAOUT21\ <= \my_alu|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(21);
\my_alu|Mult1|auto_generated|mac_mult1~DATAOUT22\ <= \my_alu|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(22);
\my_alu|Mult1|auto_generated|mac_mult1~DATAOUT23\ <= \my_alu|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(23);
\my_alu|Mult1|auto_generated|mac_mult1~DATAOUT24\ <= \my_alu|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(24);
\my_alu|Mult1|auto_generated|mac_mult1~DATAOUT25\ <= \my_alu|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(25);
\my_alu|Mult1|auto_generated|mac_mult1~DATAOUT26\ <= \my_alu|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(26);
\my_alu|Mult1|auto_generated|mac_mult1~DATAOUT27\ <= \my_alu|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(27);
\my_alu|Mult1|auto_generated|mac_mult1~DATAOUT28\ <= \my_alu|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(28);
\my_alu|Mult1|auto_generated|mac_mult1~DATAOUT29\ <= \my_alu|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(29);
\my_alu|Mult1|auto_generated|mac_mult1~DATAOUT30\ <= \my_alu|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(30);
\my_alu|Mult1|auto_generated|mac_mult1~DATAOUT31\ <= \my_alu|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(31);
\my_alu|Mult1|auto_generated|mac_mult1~DATAOUT32\ <= \my_alu|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(32);
\my_alu|Mult1|auto_generated|mac_mult1~DATAOUT33\ <= \my_alu|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(33);
\my_alu|Mult1|auto_generated|mac_mult1~DATAOUT34\ <= \my_alu|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(34);
\my_alu|Mult1|auto_generated|mac_mult1~DATAOUT35\ <= \my_alu|Mult1|auto_generated|mac_mult1_DATAOUT_bus\(35);

\my_alu|Mult0|auto_generated|mac_mult3_DATAA_bus\ <= (\a[17]~input_o\ & \a[16]~input_o\ & \a[15]~input_o\ & \a[14]~input_o\ & \a[13]~input_o\ & \a[12]~input_o\ & \a[11]~input_o\ & \a[10]~input_o\ & \a[9]~input_o\ & \a[8]~input_o\ & \a[7]~input_o\ & 
\a[6]~input_o\ & \a[5]~input_o\ & \a[4]~input_o\ & \a[3]~input_o\ & \a[2]~input_o\ & \a[1]~input_o\ & \a[0]~input_o\);

\my_alu|Mult0|auto_generated|mac_mult3_DATAB_bus\ <= (\b[31]~input_o\ & \b[30]~input_o\ & \b[29]~input_o\ & \b[28]~input_o\ & \b[27]~input_o\ & \b[26]~input_o\ & \b[25]~input_o\ & \b[24]~input_o\ & \b[23]~input_o\ & \b[22]~input_o\ & \b[21]~input_o\ & 
\b[20]~input_o\ & \b[19]~input_o\ & \b[18]~input_o\ & gnd & gnd & gnd & gnd);

\my_alu|Mult0|auto_generated|mac_mult3~0\ <= \my_alu|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(0);
\my_alu|Mult0|auto_generated|mac_mult3~1\ <= \my_alu|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(1);
\my_alu|Mult0|auto_generated|mac_mult3~2\ <= \my_alu|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(2);
\my_alu|Mult0|auto_generated|mac_mult3~3\ <= \my_alu|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(3);
\my_alu|Mult0|auto_generated|mac_mult3~dataout\ <= \my_alu|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(4);
\my_alu|Mult0|auto_generated|mac_mult3~DATAOUT1\ <= \my_alu|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(5);
\my_alu|Mult0|auto_generated|mac_mult3~DATAOUT2\ <= \my_alu|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(6);
\my_alu|Mult0|auto_generated|mac_mult3~DATAOUT3\ <= \my_alu|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(7);
\my_alu|Mult0|auto_generated|mac_mult3~DATAOUT4\ <= \my_alu|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(8);
\my_alu|Mult0|auto_generated|mac_mult3~DATAOUT5\ <= \my_alu|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(9);
\my_alu|Mult0|auto_generated|mac_mult3~DATAOUT6\ <= \my_alu|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(10);
\my_alu|Mult0|auto_generated|mac_mult3~DATAOUT7\ <= \my_alu|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(11);
\my_alu|Mult0|auto_generated|mac_mult3~DATAOUT8\ <= \my_alu|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(12);
\my_alu|Mult0|auto_generated|mac_mult3~DATAOUT9\ <= \my_alu|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(13);
\my_alu|Mult0|auto_generated|mac_mult3~DATAOUT10\ <= \my_alu|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(14);
\my_alu|Mult0|auto_generated|mac_mult3~DATAOUT11\ <= \my_alu|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(15);
\my_alu|Mult0|auto_generated|mac_mult3~DATAOUT12\ <= \my_alu|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(16);
\my_alu|Mult0|auto_generated|mac_mult3~DATAOUT13\ <= \my_alu|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(17);
\my_alu|Mult0|auto_generated|mac_mult3~DATAOUT14\ <= \my_alu|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(18);
\my_alu|Mult0|auto_generated|mac_mult3~DATAOUT15\ <= \my_alu|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(19);
\my_alu|Mult0|auto_generated|mac_mult3~DATAOUT16\ <= \my_alu|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(20);
\my_alu|Mult0|auto_generated|mac_mult3~DATAOUT17\ <= \my_alu|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(21);
\my_alu|Mult0|auto_generated|mac_mult3~DATAOUT18\ <= \my_alu|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(22);
\my_alu|Mult0|auto_generated|mac_mult3~DATAOUT19\ <= \my_alu|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(23);
\my_alu|Mult0|auto_generated|mac_mult3~DATAOUT20\ <= \my_alu|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(24);
\my_alu|Mult0|auto_generated|mac_mult3~DATAOUT21\ <= \my_alu|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(25);
\my_alu|Mult0|auto_generated|mac_mult3~DATAOUT22\ <= \my_alu|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(26);
\my_alu|Mult0|auto_generated|mac_mult3~DATAOUT23\ <= \my_alu|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(27);
\my_alu|Mult0|auto_generated|mac_mult3~DATAOUT24\ <= \my_alu|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(28);
\my_alu|Mult0|auto_generated|mac_mult3~DATAOUT25\ <= \my_alu|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(29);
\my_alu|Mult0|auto_generated|mac_mult3~DATAOUT26\ <= \my_alu|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(30);
\my_alu|Mult0|auto_generated|mac_mult3~DATAOUT27\ <= \my_alu|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(31);
\my_alu|Mult0|auto_generated|mac_mult3~DATAOUT28\ <= \my_alu|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(32);
\my_alu|Mult0|auto_generated|mac_mult3~DATAOUT29\ <= \my_alu|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(33);
\my_alu|Mult0|auto_generated|mac_mult3~DATAOUT30\ <= \my_alu|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(34);
\my_alu|Mult0|auto_generated|mac_mult3~DATAOUT31\ <= \my_alu|Mult0|auto_generated|mac_mult3_DATAOUT_bus\(35);

\my_alu|Mult0|auto_generated|mac_mult5_DATAA_bus\ <= (\b[17]~input_o\ & \b[16]~input_o\ & \b[15]~input_o\ & \b[14]~input_o\ & \b[13]~input_o\ & \b[12]~input_o\ & \b[11]~input_o\ & \b[10]~input_o\ & \b[9]~input_o\ & \b[8]~input_o\ & \b[7]~input_o\ & 
\b[6]~input_o\ & \b[5]~input_o\ & \b[4]~input_o\ & \b[3]~input_o\ & \b[2]~input_o\ & \b[1]~input_o\ & \b[0]~input_o\);

\my_alu|Mult0|auto_generated|mac_mult5_DATAB_bus\ <= (\a[31]~input_o\ & \a[30]~input_o\ & \a[29]~input_o\ & \a[28]~input_o\ & \a[27]~input_o\ & \a[26]~input_o\ & \a[25]~input_o\ & \a[24]~input_o\ & \a[23]~input_o\ & \a[22]~input_o\ & \a[21]~input_o\ & 
\a[20]~input_o\ & \a[19]~input_o\ & \a[18]~input_o\ & gnd & gnd & gnd & gnd);

\my_alu|Mult0|auto_generated|mac_mult5~0\ <= \my_alu|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(0);
\my_alu|Mult0|auto_generated|mac_mult5~1\ <= \my_alu|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(1);
\my_alu|Mult0|auto_generated|mac_mult5~2\ <= \my_alu|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(2);
\my_alu|Mult0|auto_generated|mac_mult5~3\ <= \my_alu|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(3);
\my_alu|Mult0|auto_generated|mac_mult5~dataout\ <= \my_alu|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(4);
\my_alu|Mult0|auto_generated|mac_mult5~DATAOUT1\ <= \my_alu|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(5);
\my_alu|Mult0|auto_generated|mac_mult5~DATAOUT2\ <= \my_alu|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(6);
\my_alu|Mult0|auto_generated|mac_mult5~DATAOUT3\ <= \my_alu|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(7);
\my_alu|Mult0|auto_generated|mac_mult5~DATAOUT4\ <= \my_alu|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(8);
\my_alu|Mult0|auto_generated|mac_mult5~DATAOUT5\ <= \my_alu|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(9);
\my_alu|Mult0|auto_generated|mac_mult5~DATAOUT6\ <= \my_alu|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(10);
\my_alu|Mult0|auto_generated|mac_mult5~DATAOUT7\ <= \my_alu|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(11);
\my_alu|Mult0|auto_generated|mac_mult5~DATAOUT8\ <= \my_alu|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(12);
\my_alu|Mult0|auto_generated|mac_mult5~DATAOUT9\ <= \my_alu|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(13);
\my_alu|Mult0|auto_generated|mac_mult5~DATAOUT10\ <= \my_alu|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(14);
\my_alu|Mult0|auto_generated|mac_mult5~DATAOUT11\ <= \my_alu|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(15);
\my_alu|Mult0|auto_generated|mac_mult5~DATAOUT12\ <= \my_alu|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(16);
\my_alu|Mult0|auto_generated|mac_mult5~DATAOUT13\ <= \my_alu|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(17);
\my_alu|Mult0|auto_generated|mac_mult5~DATAOUT14\ <= \my_alu|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(18);
\my_alu|Mult0|auto_generated|mac_mult5~DATAOUT15\ <= \my_alu|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(19);
\my_alu|Mult0|auto_generated|mac_mult5~DATAOUT16\ <= \my_alu|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(20);
\my_alu|Mult0|auto_generated|mac_mult5~DATAOUT17\ <= \my_alu|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(21);
\my_alu|Mult0|auto_generated|mac_mult5~DATAOUT18\ <= \my_alu|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(22);
\my_alu|Mult0|auto_generated|mac_mult5~DATAOUT19\ <= \my_alu|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(23);
\my_alu|Mult0|auto_generated|mac_mult5~DATAOUT20\ <= \my_alu|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(24);
\my_alu|Mult0|auto_generated|mac_mult5~DATAOUT21\ <= \my_alu|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(25);
\my_alu|Mult0|auto_generated|mac_mult5~DATAOUT22\ <= \my_alu|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(26);
\my_alu|Mult0|auto_generated|mac_mult5~DATAOUT23\ <= \my_alu|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(27);
\my_alu|Mult0|auto_generated|mac_mult5~DATAOUT24\ <= \my_alu|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(28);
\my_alu|Mult0|auto_generated|mac_mult5~DATAOUT25\ <= \my_alu|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(29);
\my_alu|Mult0|auto_generated|mac_mult5~DATAOUT26\ <= \my_alu|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(30);
\my_alu|Mult0|auto_generated|mac_mult5~DATAOUT27\ <= \my_alu|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(31);
\my_alu|Mult0|auto_generated|mac_mult5~DATAOUT28\ <= \my_alu|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(32);
\my_alu|Mult0|auto_generated|mac_mult5~DATAOUT29\ <= \my_alu|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(33);
\my_alu|Mult0|auto_generated|mac_mult5~DATAOUT30\ <= \my_alu|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(34);
\my_alu|Mult0|auto_generated|mac_mult5~DATAOUT31\ <= \my_alu|Mult0|auto_generated|mac_mult5_DATAOUT_bus\(35);

\my_alu|Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (\a[17]~input_o\ & \a[16]~input_o\ & \a[15]~input_o\ & \a[14]~input_o\ & \a[13]~input_o\ & \a[12]~input_o\ & \a[11]~input_o\ & \a[10]~input_o\ & \a[9]~input_o\ & \a[8]~input_o\ & \a[7]~input_o\ & 
\a[6]~input_o\ & \a[5]~input_o\ & \a[4]~input_o\ & \a[3]~input_o\ & \a[2]~input_o\ & \a[1]~input_o\ & \a[0]~input_o\);

\my_alu|Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (\b[17]~input_o\ & \b[16]~input_o\ & \b[15]~input_o\ & \b[14]~input_o\ & \b[13]~input_o\ & \b[12]~input_o\ & \b[11]~input_o\ & \b[10]~input_o\ & \b[9]~input_o\ & \b[8]~input_o\ & \b[7]~input_o\ & 
\b[6]~input_o\ & \b[5]~input_o\ & \b[4]~input_o\ & \b[3]~input_o\ & \b[2]~input_o\ & \b[1]~input_o\ & \b[0]~input_o\);

\my_alu|Mult0|auto_generated|mac_mult1~dataout\ <= \my_alu|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(0);
\my_alu|Mult0|auto_generated|mac_mult1~DATAOUT1\ <= \my_alu|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(1);
\my_alu|Mult0|auto_generated|mac_mult1~DATAOUT2\ <= \my_alu|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(2);
\my_alu|Mult0|auto_generated|mac_mult1~DATAOUT3\ <= \my_alu|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(3);
\my_alu|Mult0|auto_generated|mac_mult1~DATAOUT4\ <= \my_alu|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(4);
\my_alu|Mult0|auto_generated|mac_mult1~DATAOUT5\ <= \my_alu|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(5);
\my_alu|Mult0|auto_generated|mac_mult1~DATAOUT6\ <= \my_alu|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(6);
\my_alu|Mult0|auto_generated|mac_mult1~DATAOUT7\ <= \my_alu|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(7);
\my_alu|Mult0|auto_generated|mac_mult1~DATAOUT8\ <= \my_alu|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(8);
\my_alu|Mult0|auto_generated|mac_mult1~DATAOUT9\ <= \my_alu|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(9);
\my_alu|Mult0|auto_generated|mac_mult1~DATAOUT10\ <= \my_alu|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(10);
\my_alu|Mult0|auto_generated|mac_mult1~DATAOUT11\ <= \my_alu|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(11);
\my_alu|Mult0|auto_generated|mac_mult1~DATAOUT12\ <= \my_alu|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(12);
\my_alu|Mult0|auto_generated|mac_mult1~DATAOUT13\ <= \my_alu|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(13);
\my_alu|Mult0|auto_generated|mac_mult1~DATAOUT14\ <= \my_alu|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(14);
\my_alu|Mult0|auto_generated|mac_mult1~DATAOUT15\ <= \my_alu|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(15);
\my_alu|Mult0|auto_generated|mac_mult1~DATAOUT16\ <= \my_alu|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(16);
\my_alu|Mult0|auto_generated|mac_mult1~DATAOUT17\ <= \my_alu|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(17);
\my_alu|Mult0|auto_generated|mac_mult1~DATAOUT18\ <= \my_alu|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(18);
\my_alu|Mult0|auto_generated|mac_mult1~DATAOUT19\ <= \my_alu|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(19);
\my_alu|Mult0|auto_generated|mac_mult1~DATAOUT20\ <= \my_alu|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(20);
\my_alu|Mult0|auto_generated|mac_mult1~DATAOUT21\ <= \my_alu|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(21);
\my_alu|Mult0|auto_generated|mac_mult1~DATAOUT22\ <= \my_alu|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(22);
\my_alu|Mult0|auto_generated|mac_mult1~DATAOUT23\ <= \my_alu|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(23);
\my_alu|Mult0|auto_generated|mac_mult1~DATAOUT24\ <= \my_alu|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(24);
\my_alu|Mult0|auto_generated|mac_mult1~DATAOUT25\ <= \my_alu|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(25);
\my_alu|Mult0|auto_generated|mac_mult1~DATAOUT26\ <= \my_alu|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(26);
\my_alu|Mult0|auto_generated|mac_mult1~DATAOUT27\ <= \my_alu|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(27);
\my_alu|Mult0|auto_generated|mac_mult1~DATAOUT28\ <= \my_alu|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(28);
\my_alu|Mult0|auto_generated|mac_mult1~DATAOUT29\ <= \my_alu|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(29);
\my_alu|Mult0|auto_generated|mac_mult1~DATAOUT30\ <= \my_alu|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(30);
\my_alu|Mult0|auto_generated|mac_mult1~DATAOUT31\ <= \my_alu|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(31);
\my_alu|Mult0|auto_generated|mac_mult1~DATAOUT32\ <= \my_alu|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(32);
\my_alu|Mult0|auto_generated|mac_mult1~DATAOUT33\ <= \my_alu|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(33);
\my_alu|Mult0|auto_generated|mac_mult1~DATAOUT34\ <= \my_alu|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(34);
\my_alu|Mult0|auto_generated|mac_mult1~DATAOUT35\ <= \my_alu|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(35);

\my_alu|Mult1|auto_generated|mac_mult7_DATAA_bus\ <= (\a[31]~input_o\ & \a[30]~input_o\ & \a[29]~input_o\ & \a[28]~input_o\ & \a[27]~input_o\ & \a[26]~input_o\ & \a[25]~input_o\ & \a[24]~input_o\ & \a[23]~input_o\ & \a[22]~input_o\ & \a[21]~input_o\ & 
\a[20]~input_o\ & \a[19]~input_o\ & \a[18]~input_o\ & gnd & gnd & gnd & gnd);

\my_alu|Mult1|auto_generated|mac_mult7_DATAB_bus\ <= (\b[31]~input_o\ & \b[30]~input_o\ & \b[29]~input_o\ & \b[28]~input_o\ & \b[27]~input_o\ & \b[26]~input_o\ & \b[25]~input_o\ & \b[24]~input_o\ & \b[23]~input_o\ & \b[22]~input_o\ & \b[21]~input_o\ & 
\b[20]~input_o\ & \b[19]~input_o\ & \b[18]~input_o\ & gnd & gnd & gnd & gnd);

\my_alu|Mult1|auto_generated|mac_mult7~0\ <= \my_alu|Mult1|auto_generated|mac_mult7_DATAOUT_bus\(0);
\my_alu|Mult1|auto_generated|mac_mult7~1\ <= \my_alu|Mult1|auto_generated|mac_mult7_DATAOUT_bus\(1);
\my_alu|Mult1|auto_generated|mac_mult7~2\ <= \my_alu|Mult1|auto_generated|mac_mult7_DATAOUT_bus\(2);
\my_alu|Mult1|auto_generated|mac_mult7~3\ <= \my_alu|Mult1|auto_generated|mac_mult7_DATAOUT_bus\(3);
\my_alu|Mult1|auto_generated|mac_mult7~4\ <= \my_alu|Mult1|auto_generated|mac_mult7_DATAOUT_bus\(4);
\my_alu|Mult1|auto_generated|mac_mult7~5\ <= \my_alu|Mult1|auto_generated|mac_mult7_DATAOUT_bus\(5);
\my_alu|Mult1|auto_generated|mac_mult7~6\ <= \my_alu|Mult1|auto_generated|mac_mult7_DATAOUT_bus\(6);
\my_alu|Mult1|auto_generated|mac_mult7~7\ <= \my_alu|Mult1|auto_generated|mac_mult7_DATAOUT_bus\(7);
\my_alu|Mult1|auto_generated|mac_mult7~dataout\ <= \my_alu|Mult1|auto_generated|mac_mult7_DATAOUT_bus\(8);
\my_alu|Mult1|auto_generated|mac_mult7~DATAOUT1\ <= \my_alu|Mult1|auto_generated|mac_mult7_DATAOUT_bus\(9);
\my_alu|Mult1|auto_generated|mac_mult7~DATAOUT2\ <= \my_alu|Mult1|auto_generated|mac_mult7_DATAOUT_bus\(10);
\my_alu|Mult1|auto_generated|mac_mult7~DATAOUT3\ <= \my_alu|Mult1|auto_generated|mac_mult7_DATAOUT_bus\(11);
\my_alu|Mult1|auto_generated|mac_mult7~DATAOUT4\ <= \my_alu|Mult1|auto_generated|mac_mult7_DATAOUT_bus\(12);
\my_alu|Mult1|auto_generated|mac_mult7~DATAOUT5\ <= \my_alu|Mult1|auto_generated|mac_mult7_DATAOUT_bus\(13);
\my_alu|Mult1|auto_generated|mac_mult7~DATAOUT6\ <= \my_alu|Mult1|auto_generated|mac_mult7_DATAOUT_bus\(14);
\my_alu|Mult1|auto_generated|mac_mult7~DATAOUT7\ <= \my_alu|Mult1|auto_generated|mac_mult7_DATAOUT_bus\(15);
\my_alu|Mult1|auto_generated|mac_mult7~DATAOUT8\ <= \my_alu|Mult1|auto_generated|mac_mult7_DATAOUT_bus\(16);
\my_alu|Mult1|auto_generated|mac_mult7~DATAOUT9\ <= \my_alu|Mult1|auto_generated|mac_mult7_DATAOUT_bus\(17);
\my_alu|Mult1|auto_generated|mac_mult7~DATAOUT10\ <= \my_alu|Mult1|auto_generated|mac_mult7_DATAOUT_bus\(18);
\my_alu|Mult1|auto_generated|mac_mult7~DATAOUT11\ <= \my_alu|Mult1|auto_generated|mac_mult7_DATAOUT_bus\(19);
\my_alu|Mult1|auto_generated|mac_mult7~DATAOUT12\ <= \my_alu|Mult1|auto_generated|mac_mult7_DATAOUT_bus\(20);
\my_alu|Mult1|auto_generated|mac_mult7~DATAOUT13\ <= \my_alu|Mult1|auto_generated|mac_mult7_DATAOUT_bus\(21);
\my_alu|Mult1|auto_generated|mac_mult7~DATAOUT14\ <= \my_alu|Mult1|auto_generated|mac_mult7_DATAOUT_bus\(22);
\my_alu|Mult1|auto_generated|mac_mult7~DATAOUT15\ <= \my_alu|Mult1|auto_generated|mac_mult7_DATAOUT_bus\(23);
\my_alu|Mult1|auto_generated|mac_mult7~DATAOUT16\ <= \my_alu|Mult1|auto_generated|mac_mult7_DATAOUT_bus\(24);
\my_alu|Mult1|auto_generated|mac_mult7~DATAOUT17\ <= \my_alu|Mult1|auto_generated|mac_mult7_DATAOUT_bus\(25);
\my_alu|Mult1|auto_generated|mac_mult7~DATAOUT18\ <= \my_alu|Mult1|auto_generated|mac_mult7_DATAOUT_bus\(26);
\my_alu|Mult1|auto_generated|mac_mult7~DATAOUT19\ <= \my_alu|Mult1|auto_generated|mac_mult7_DATAOUT_bus\(27);
\my_alu|Mult1|auto_generated|mac_mult7~DATAOUT20\ <= \my_alu|Mult1|auto_generated|mac_mult7_DATAOUT_bus\(28);
\my_alu|Mult1|auto_generated|mac_mult7~DATAOUT21\ <= \my_alu|Mult1|auto_generated|mac_mult7_DATAOUT_bus\(29);
\my_alu|Mult1|auto_generated|mac_mult7~DATAOUT22\ <= \my_alu|Mult1|auto_generated|mac_mult7_DATAOUT_bus\(30);
\my_alu|Mult1|auto_generated|mac_mult7~DATAOUT23\ <= \my_alu|Mult1|auto_generated|mac_mult7_DATAOUT_bus\(31);
\my_alu|Mult1|auto_generated|mac_mult7~DATAOUT24\ <= \my_alu|Mult1|auto_generated|mac_mult7_DATAOUT_bus\(32);
\my_alu|Mult1|auto_generated|mac_mult7~DATAOUT25\ <= \my_alu|Mult1|auto_generated|mac_mult7_DATAOUT_bus\(33);
\my_alu|Mult1|auto_generated|mac_mult7~DATAOUT26\ <= \my_alu|Mult1|auto_generated|mac_mult7_DATAOUT_bus\(34);
\my_alu|Mult1|auto_generated|mac_mult7~DATAOUT27\ <= \my_alu|Mult1|auto_generated|mac_mult7_DATAOUT_bus\(35);

\my_alu|Mult0|auto_generated|mac_mult7_DATAA_bus\ <= (\a[31]~input_o\ & \a[30]~input_o\ & \a[29]~input_o\ & \a[28]~input_o\ & \a[27]~input_o\ & \a[26]~input_o\ & \a[25]~input_o\ & \a[24]~input_o\ & \a[23]~input_o\ & \a[22]~input_o\ & \a[21]~input_o\ & 
\a[20]~input_o\ & \a[19]~input_o\ & \a[18]~input_o\ & gnd & gnd & gnd & gnd);

\my_alu|Mult0|auto_generated|mac_mult7_DATAB_bus\ <= (\b[31]~input_o\ & \b[30]~input_o\ & \b[29]~input_o\ & \b[28]~input_o\ & \b[27]~input_o\ & \b[26]~input_o\ & \b[25]~input_o\ & \b[24]~input_o\ & \b[23]~input_o\ & \b[22]~input_o\ & \b[21]~input_o\ & 
\b[20]~input_o\ & \b[19]~input_o\ & \b[18]~input_o\ & gnd & gnd & gnd & gnd);

\my_alu|Mult0|auto_generated|mac_mult7~0\ <= \my_alu|Mult0|auto_generated|mac_mult7_DATAOUT_bus\(0);
\my_alu|Mult0|auto_generated|mac_mult7~1\ <= \my_alu|Mult0|auto_generated|mac_mult7_DATAOUT_bus\(1);
\my_alu|Mult0|auto_generated|mac_mult7~2\ <= \my_alu|Mult0|auto_generated|mac_mult7_DATAOUT_bus\(2);
\my_alu|Mult0|auto_generated|mac_mult7~3\ <= \my_alu|Mult0|auto_generated|mac_mult7_DATAOUT_bus\(3);
\my_alu|Mult0|auto_generated|mac_mult7~4\ <= \my_alu|Mult0|auto_generated|mac_mult7_DATAOUT_bus\(4);
\my_alu|Mult0|auto_generated|mac_mult7~5\ <= \my_alu|Mult0|auto_generated|mac_mult7_DATAOUT_bus\(5);
\my_alu|Mult0|auto_generated|mac_mult7~6\ <= \my_alu|Mult0|auto_generated|mac_mult7_DATAOUT_bus\(6);
\my_alu|Mult0|auto_generated|mac_mult7~7\ <= \my_alu|Mult0|auto_generated|mac_mult7_DATAOUT_bus\(7);
\my_alu|Mult0|auto_generated|mac_mult7~dataout\ <= \my_alu|Mult0|auto_generated|mac_mult7_DATAOUT_bus\(8);
\my_alu|Mult0|auto_generated|mac_mult7~DATAOUT1\ <= \my_alu|Mult0|auto_generated|mac_mult7_DATAOUT_bus\(9);
\my_alu|Mult0|auto_generated|mac_mult7~DATAOUT2\ <= \my_alu|Mult0|auto_generated|mac_mult7_DATAOUT_bus\(10);
\my_alu|Mult0|auto_generated|mac_mult7~DATAOUT3\ <= \my_alu|Mult0|auto_generated|mac_mult7_DATAOUT_bus\(11);
\my_alu|Mult0|auto_generated|mac_mult7~DATAOUT4\ <= \my_alu|Mult0|auto_generated|mac_mult7_DATAOUT_bus\(12);
\my_alu|Mult0|auto_generated|mac_mult7~DATAOUT5\ <= \my_alu|Mult0|auto_generated|mac_mult7_DATAOUT_bus\(13);
\my_alu|Mult0|auto_generated|mac_mult7~DATAOUT6\ <= \my_alu|Mult0|auto_generated|mac_mult7_DATAOUT_bus\(14);
\my_alu|Mult0|auto_generated|mac_mult7~DATAOUT7\ <= \my_alu|Mult0|auto_generated|mac_mult7_DATAOUT_bus\(15);
\my_alu|Mult0|auto_generated|mac_mult7~DATAOUT8\ <= \my_alu|Mult0|auto_generated|mac_mult7_DATAOUT_bus\(16);
\my_alu|Mult0|auto_generated|mac_mult7~DATAOUT9\ <= \my_alu|Mult0|auto_generated|mac_mult7_DATAOUT_bus\(17);
\my_alu|Mult0|auto_generated|mac_mult7~DATAOUT10\ <= \my_alu|Mult0|auto_generated|mac_mult7_DATAOUT_bus\(18);
\my_alu|Mult0|auto_generated|mac_mult7~DATAOUT11\ <= \my_alu|Mult0|auto_generated|mac_mult7_DATAOUT_bus\(19);
\my_alu|Mult0|auto_generated|mac_mult7~DATAOUT12\ <= \my_alu|Mult0|auto_generated|mac_mult7_DATAOUT_bus\(20);
\my_alu|Mult0|auto_generated|mac_mult7~DATAOUT13\ <= \my_alu|Mult0|auto_generated|mac_mult7_DATAOUT_bus\(21);
\my_alu|Mult0|auto_generated|mac_mult7~DATAOUT14\ <= \my_alu|Mult0|auto_generated|mac_mult7_DATAOUT_bus\(22);
\my_alu|Mult0|auto_generated|mac_mult7~DATAOUT15\ <= \my_alu|Mult0|auto_generated|mac_mult7_DATAOUT_bus\(23);
\my_alu|Mult0|auto_generated|mac_mult7~DATAOUT16\ <= \my_alu|Mult0|auto_generated|mac_mult7_DATAOUT_bus\(24);
\my_alu|Mult0|auto_generated|mac_mult7~DATAOUT17\ <= \my_alu|Mult0|auto_generated|mac_mult7_DATAOUT_bus\(25);
\my_alu|Mult0|auto_generated|mac_mult7~DATAOUT18\ <= \my_alu|Mult0|auto_generated|mac_mult7_DATAOUT_bus\(26);
\my_alu|Mult0|auto_generated|mac_mult7~DATAOUT19\ <= \my_alu|Mult0|auto_generated|mac_mult7_DATAOUT_bus\(27);
\my_alu|Mult0|auto_generated|mac_mult7~DATAOUT20\ <= \my_alu|Mult0|auto_generated|mac_mult7_DATAOUT_bus\(28);
\my_alu|Mult0|auto_generated|mac_mult7~DATAOUT21\ <= \my_alu|Mult0|auto_generated|mac_mult7_DATAOUT_bus\(29);
\my_alu|Mult0|auto_generated|mac_mult7~DATAOUT22\ <= \my_alu|Mult0|auto_generated|mac_mult7_DATAOUT_bus\(30);
\my_alu|Mult0|auto_generated|mac_mult7~DATAOUT23\ <= \my_alu|Mult0|auto_generated|mac_mult7_DATAOUT_bus\(31);
\my_alu|Mult0|auto_generated|mac_mult7~DATAOUT24\ <= \my_alu|Mult0|auto_generated|mac_mult7_DATAOUT_bus\(32);
\my_alu|Mult0|auto_generated|mac_mult7~DATAOUT25\ <= \my_alu|Mult0|auto_generated|mac_mult7_DATAOUT_bus\(33);
\my_alu|Mult0|auto_generated|mac_mult7~DATAOUT26\ <= \my_alu|Mult0|auto_generated|mac_mult7_DATAOUT_bus\(34);
\my_alu|Mult0|auto_generated|mac_mult7~DATAOUT27\ <= \my_alu|Mult0|auto_generated|mac_mult7_DATAOUT_bus\(35);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: DSPOUT_X22_Y20_N2
\my_alu|Mult1|auto_generated|mac_out4\ : cycloneive_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult1|auto_generated|mac_out4_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \my_alu|Mult1|auto_generated|mac_out4_DATAOUT_bus\);

-- Location: DSPOUT_X22_Y19_N2
\my_alu|Mult1|auto_generated|mac_out6\ : cycloneive_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult1|auto_generated|mac_out6_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \my_alu|Mult1|auto_generated|mac_out6_DATAOUT_bus\);

-- Location: LCCOMB_X23_Y20_N16
\my_alu|Mult1|auto_generated|add9_result[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult1|auto_generated|add9_result[0]~0_combout\ = (\my_alu|Mult1|auto_generated|mac_out6~dataout\ & (\my_alu|Mult1|auto_generated|mac_out4~dataout\ $ (VCC))) # (!\my_alu|Mult1|auto_generated|mac_out6~dataout\ & 
-- (\my_alu|Mult1|auto_generated|mac_out4~dataout\ & VCC))
-- \my_alu|Mult1|auto_generated|add9_result[0]~1\ = CARRY((\my_alu|Mult1|auto_generated|mac_out6~dataout\ & \my_alu|Mult1|auto_generated|mac_out4~dataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult1|auto_generated|mac_out6~dataout\,
	datab => \my_alu|Mult1|auto_generated|mac_out4~dataout\,
	datad => VCC,
	combout => \my_alu|Mult1|auto_generated|add9_result[0]~0_combout\,
	cout => \my_alu|Mult1|auto_generated|add9_result[0]~1\);

-- Location: LCCOMB_X23_Y20_N26
\my_alu|Mult1|auto_generated|add9_result[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult1|auto_generated|add9_result[5]~10_combout\ = (\my_alu|Mult1|auto_generated|mac_out6~DATAOUT5\ & ((\my_alu|Mult1|auto_generated|mac_out4~DATAOUT5\ & (\my_alu|Mult1|auto_generated|add9_result[4]~9\ & VCC)) # 
-- (!\my_alu|Mult1|auto_generated|mac_out4~DATAOUT5\ & (!\my_alu|Mult1|auto_generated|add9_result[4]~9\)))) # (!\my_alu|Mult1|auto_generated|mac_out6~DATAOUT5\ & ((\my_alu|Mult1|auto_generated|mac_out4~DATAOUT5\ & 
-- (!\my_alu|Mult1|auto_generated|add9_result[4]~9\)) # (!\my_alu|Mult1|auto_generated|mac_out4~DATAOUT5\ & ((\my_alu|Mult1|auto_generated|add9_result[4]~9\) # (GND)))))
-- \my_alu|Mult1|auto_generated|add9_result[5]~11\ = CARRY((\my_alu|Mult1|auto_generated|mac_out6~DATAOUT5\ & (!\my_alu|Mult1|auto_generated|mac_out4~DATAOUT5\ & !\my_alu|Mult1|auto_generated|add9_result[4]~9\)) # 
-- (!\my_alu|Mult1|auto_generated|mac_out6~DATAOUT5\ & ((!\my_alu|Mult1|auto_generated|add9_result[4]~9\) # (!\my_alu|Mult1|auto_generated|mac_out4~DATAOUT5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult1|auto_generated|mac_out6~DATAOUT5\,
	datab => \my_alu|Mult1|auto_generated|mac_out4~DATAOUT5\,
	datad => VCC,
	cin => \my_alu|Mult1|auto_generated|add9_result[4]~9\,
	combout => \my_alu|Mult1|auto_generated|add9_result[5]~10_combout\,
	cout => \my_alu|Mult1|auto_generated|add9_result[5]~11\);

-- Location: LCCOMB_X23_Y19_N0
\my_alu|Mult1|auto_generated|add9_result[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult1|auto_generated|add9_result[8]~16_combout\ = ((\my_alu|Mult1|auto_generated|mac_out4~DATAOUT8\ $ (\my_alu|Mult1|auto_generated|mac_out6~DATAOUT8\ $ (!\my_alu|Mult1|auto_generated|add9_result[7]~15\)))) # (GND)
-- \my_alu|Mult1|auto_generated|add9_result[8]~17\ = CARRY((\my_alu|Mult1|auto_generated|mac_out4~DATAOUT8\ & ((\my_alu|Mult1|auto_generated|mac_out6~DATAOUT8\) # (!\my_alu|Mult1|auto_generated|add9_result[7]~15\))) # 
-- (!\my_alu|Mult1|auto_generated|mac_out4~DATAOUT8\ & (\my_alu|Mult1|auto_generated|mac_out6~DATAOUT8\ & !\my_alu|Mult1|auto_generated|add9_result[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult1|auto_generated|mac_out4~DATAOUT8\,
	datab => \my_alu|Mult1|auto_generated|mac_out6~DATAOUT8\,
	datad => VCC,
	cin => \my_alu|Mult1|auto_generated|add9_result[7]~15\,
	combout => \my_alu|Mult1|auto_generated|add9_result[8]~16_combout\,
	cout => \my_alu|Mult1|auto_generated|add9_result[8]~17\);

-- Location: LCCOMB_X23_Y19_N2
\my_alu|Mult1|auto_generated|add9_result[9]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult1|auto_generated|add9_result[9]~18_combout\ = (\my_alu|Mult1|auto_generated|mac_out4~DATAOUT9\ & ((\my_alu|Mult1|auto_generated|mac_out6~DATAOUT9\ & (\my_alu|Mult1|auto_generated|add9_result[8]~17\ & VCC)) # 
-- (!\my_alu|Mult1|auto_generated|mac_out6~DATAOUT9\ & (!\my_alu|Mult1|auto_generated|add9_result[8]~17\)))) # (!\my_alu|Mult1|auto_generated|mac_out4~DATAOUT9\ & ((\my_alu|Mult1|auto_generated|mac_out6~DATAOUT9\ & 
-- (!\my_alu|Mult1|auto_generated|add9_result[8]~17\)) # (!\my_alu|Mult1|auto_generated|mac_out6~DATAOUT9\ & ((\my_alu|Mult1|auto_generated|add9_result[8]~17\) # (GND)))))
-- \my_alu|Mult1|auto_generated|add9_result[9]~19\ = CARRY((\my_alu|Mult1|auto_generated|mac_out4~DATAOUT9\ & (!\my_alu|Mult1|auto_generated|mac_out6~DATAOUT9\ & !\my_alu|Mult1|auto_generated|add9_result[8]~17\)) # 
-- (!\my_alu|Mult1|auto_generated|mac_out4~DATAOUT9\ & ((!\my_alu|Mult1|auto_generated|add9_result[8]~17\) # (!\my_alu|Mult1|auto_generated|mac_out6~DATAOUT9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult1|auto_generated|mac_out4~DATAOUT9\,
	datab => \my_alu|Mult1|auto_generated|mac_out6~DATAOUT9\,
	datad => VCC,
	cin => \my_alu|Mult1|auto_generated|add9_result[8]~17\,
	combout => \my_alu|Mult1|auto_generated|add9_result[9]~18_combout\,
	cout => \my_alu|Mult1|auto_generated|add9_result[9]~19\);

-- Location: LCCOMB_X23_Y19_N4
\my_alu|Mult1|auto_generated|add9_result[10]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult1|auto_generated|add9_result[10]~20_combout\ = ((\my_alu|Mult1|auto_generated|mac_out6~DATAOUT10\ $ (\my_alu|Mult1|auto_generated|mac_out4~DATAOUT10\ $ (!\my_alu|Mult1|auto_generated|add9_result[9]~19\)))) # (GND)
-- \my_alu|Mult1|auto_generated|add9_result[10]~21\ = CARRY((\my_alu|Mult1|auto_generated|mac_out6~DATAOUT10\ & ((\my_alu|Mult1|auto_generated|mac_out4~DATAOUT10\) # (!\my_alu|Mult1|auto_generated|add9_result[9]~19\))) # 
-- (!\my_alu|Mult1|auto_generated|mac_out6~DATAOUT10\ & (\my_alu|Mult1|auto_generated|mac_out4~DATAOUT10\ & !\my_alu|Mult1|auto_generated|add9_result[9]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult1|auto_generated|mac_out6~DATAOUT10\,
	datab => \my_alu|Mult1|auto_generated|mac_out4~DATAOUT10\,
	datad => VCC,
	cin => \my_alu|Mult1|auto_generated|add9_result[9]~19\,
	combout => \my_alu|Mult1|auto_generated|add9_result[10]~20_combout\,
	cout => \my_alu|Mult1|auto_generated|add9_result[10]~21\);

-- Location: LCCOMB_X23_Y19_N8
\my_alu|Mult1|auto_generated|add9_result[12]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult1|auto_generated|add9_result[12]~24_combout\ = ((\my_alu|Mult1|auto_generated|mac_out6~DATAOUT12\ $ (\my_alu|Mult1|auto_generated|mac_out4~DATAOUT12\ $ (!\my_alu|Mult1|auto_generated|add9_result[11]~23\)))) # (GND)
-- \my_alu|Mult1|auto_generated|add9_result[12]~25\ = CARRY((\my_alu|Mult1|auto_generated|mac_out6~DATAOUT12\ & ((\my_alu|Mult1|auto_generated|mac_out4~DATAOUT12\) # (!\my_alu|Mult1|auto_generated|add9_result[11]~23\))) # 
-- (!\my_alu|Mult1|auto_generated|mac_out6~DATAOUT12\ & (\my_alu|Mult1|auto_generated|mac_out4~DATAOUT12\ & !\my_alu|Mult1|auto_generated|add9_result[11]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult1|auto_generated|mac_out6~DATAOUT12\,
	datab => \my_alu|Mult1|auto_generated|mac_out4~DATAOUT12\,
	datad => VCC,
	cin => \my_alu|Mult1|auto_generated|add9_result[11]~23\,
	combout => \my_alu|Mult1|auto_generated|add9_result[12]~24_combout\,
	cout => \my_alu|Mult1|auto_generated|add9_result[12]~25\);

-- Location: LCCOMB_X23_Y19_N10
\my_alu|Mult1|auto_generated|add9_result[13]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult1|auto_generated|add9_result[13]~26_combout\ = (\my_alu|Mult1|auto_generated|mac_out4~DATAOUT13\ & ((\my_alu|Mult1|auto_generated|mac_out6~DATAOUT13\ & (\my_alu|Mult1|auto_generated|add9_result[12]~25\ & VCC)) # 
-- (!\my_alu|Mult1|auto_generated|mac_out6~DATAOUT13\ & (!\my_alu|Mult1|auto_generated|add9_result[12]~25\)))) # (!\my_alu|Mult1|auto_generated|mac_out4~DATAOUT13\ & ((\my_alu|Mult1|auto_generated|mac_out6~DATAOUT13\ & 
-- (!\my_alu|Mult1|auto_generated|add9_result[12]~25\)) # (!\my_alu|Mult1|auto_generated|mac_out6~DATAOUT13\ & ((\my_alu|Mult1|auto_generated|add9_result[12]~25\) # (GND)))))
-- \my_alu|Mult1|auto_generated|add9_result[13]~27\ = CARRY((\my_alu|Mult1|auto_generated|mac_out4~DATAOUT13\ & (!\my_alu|Mult1|auto_generated|mac_out6~DATAOUT13\ & !\my_alu|Mult1|auto_generated|add9_result[12]~25\)) # 
-- (!\my_alu|Mult1|auto_generated|mac_out4~DATAOUT13\ & ((!\my_alu|Mult1|auto_generated|add9_result[12]~25\) # (!\my_alu|Mult1|auto_generated|mac_out6~DATAOUT13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult1|auto_generated|mac_out4~DATAOUT13\,
	datab => \my_alu|Mult1|auto_generated|mac_out6~DATAOUT13\,
	datad => VCC,
	cin => \my_alu|Mult1|auto_generated|add9_result[12]~25\,
	combout => \my_alu|Mult1|auto_generated|add9_result[13]~26_combout\,
	cout => \my_alu|Mult1|auto_generated|add9_result[13]~27\);

-- Location: DSPOUT_X22_Y21_N2
\my_alu|Mult1|auto_generated|mac_out2\ : cycloneive_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult1|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \my_alu|Mult1|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: DSPOUT_X44_Y23_N2
\my_alu|Mult0|auto_generated|mac_out4\ : cycloneive_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult0|auto_generated|mac_out4_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \my_alu|Mult0|auto_generated|mac_out4_DATAOUT_bus\);

-- Location: DSPOUT_X44_Y22_N2
\my_alu|Mult0|auto_generated|mac_out6\ : cycloneive_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult0|auto_generated|mac_out6_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \my_alu|Mult0|auto_generated|mac_out6_DATAOUT_bus\);

-- Location: LCCOMB_X43_Y23_N2
\my_alu|Mult0|auto_generated|add9_result[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult0|auto_generated|add9_result[0]~0_combout\ = (\my_alu|Mult0|auto_generated|mac_out4~dataout\ & (\my_alu|Mult0|auto_generated|mac_out6~dataout\ $ (VCC))) # (!\my_alu|Mult0|auto_generated|mac_out4~dataout\ & 
-- (\my_alu|Mult0|auto_generated|mac_out6~dataout\ & VCC))
-- \my_alu|Mult0|auto_generated|add9_result[0]~1\ = CARRY((\my_alu|Mult0|auto_generated|mac_out4~dataout\ & \my_alu|Mult0|auto_generated|mac_out6~dataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult0|auto_generated|mac_out4~dataout\,
	datab => \my_alu|Mult0|auto_generated|mac_out6~dataout\,
	datad => VCC,
	combout => \my_alu|Mult0|auto_generated|add9_result[0]~0_combout\,
	cout => \my_alu|Mult0|auto_generated|add9_result[0]~1\);

-- Location: LCCOMB_X43_Y23_N4
\my_alu|Mult0|auto_generated|add9_result[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult0|auto_generated|add9_result[1]~2_combout\ = (\my_alu|Mult0|auto_generated|mac_out6~DATAOUT1\ & ((\my_alu|Mult0|auto_generated|mac_out4~DATAOUT1\ & (\my_alu|Mult0|auto_generated|add9_result[0]~1\ & VCC)) # 
-- (!\my_alu|Mult0|auto_generated|mac_out4~DATAOUT1\ & (!\my_alu|Mult0|auto_generated|add9_result[0]~1\)))) # (!\my_alu|Mult0|auto_generated|mac_out6~DATAOUT1\ & ((\my_alu|Mult0|auto_generated|mac_out4~DATAOUT1\ & 
-- (!\my_alu|Mult0|auto_generated|add9_result[0]~1\)) # (!\my_alu|Mult0|auto_generated|mac_out4~DATAOUT1\ & ((\my_alu|Mult0|auto_generated|add9_result[0]~1\) # (GND)))))
-- \my_alu|Mult0|auto_generated|add9_result[1]~3\ = CARRY((\my_alu|Mult0|auto_generated|mac_out6~DATAOUT1\ & (!\my_alu|Mult0|auto_generated|mac_out4~DATAOUT1\ & !\my_alu|Mult0|auto_generated|add9_result[0]~1\)) # 
-- (!\my_alu|Mult0|auto_generated|mac_out6~DATAOUT1\ & ((!\my_alu|Mult0|auto_generated|add9_result[0]~1\) # (!\my_alu|Mult0|auto_generated|mac_out4~DATAOUT1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult0|auto_generated|mac_out6~DATAOUT1\,
	datab => \my_alu|Mult0|auto_generated|mac_out4~DATAOUT1\,
	datad => VCC,
	cin => \my_alu|Mult0|auto_generated|add9_result[0]~1\,
	combout => \my_alu|Mult0|auto_generated|add9_result[1]~2_combout\,
	cout => \my_alu|Mult0|auto_generated|add9_result[1]~3\);

-- Location: LCCOMB_X43_Y23_N6
\my_alu|Mult0|auto_generated|add9_result[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult0|auto_generated|add9_result[2]~4_combout\ = ((\my_alu|Mult0|auto_generated|mac_out4~DATAOUT2\ $ (\my_alu|Mult0|auto_generated|mac_out6~DATAOUT2\ $ (!\my_alu|Mult0|auto_generated|add9_result[1]~3\)))) # (GND)
-- \my_alu|Mult0|auto_generated|add9_result[2]~5\ = CARRY((\my_alu|Mult0|auto_generated|mac_out4~DATAOUT2\ & ((\my_alu|Mult0|auto_generated|mac_out6~DATAOUT2\) # (!\my_alu|Mult0|auto_generated|add9_result[1]~3\))) # 
-- (!\my_alu|Mult0|auto_generated|mac_out4~DATAOUT2\ & (\my_alu|Mult0|auto_generated|mac_out6~DATAOUT2\ & !\my_alu|Mult0|auto_generated|add9_result[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult0|auto_generated|mac_out4~DATAOUT2\,
	datab => \my_alu|Mult0|auto_generated|mac_out6~DATAOUT2\,
	datad => VCC,
	cin => \my_alu|Mult0|auto_generated|add9_result[1]~3\,
	combout => \my_alu|Mult0|auto_generated|add9_result[2]~4_combout\,
	cout => \my_alu|Mult0|auto_generated|add9_result[2]~5\);

-- Location: LCCOMB_X43_Y23_N20
\my_alu|Mult0|auto_generated|add9_result[9]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult0|auto_generated|add9_result[9]~18_combout\ = (\my_alu|Mult0|auto_generated|mac_out4~DATAOUT9\ & ((\my_alu|Mult0|auto_generated|mac_out6~DATAOUT9\ & (\my_alu|Mult0|auto_generated|add9_result[8]~17\ & VCC)) # 
-- (!\my_alu|Mult0|auto_generated|mac_out6~DATAOUT9\ & (!\my_alu|Mult0|auto_generated|add9_result[8]~17\)))) # (!\my_alu|Mult0|auto_generated|mac_out4~DATAOUT9\ & ((\my_alu|Mult0|auto_generated|mac_out6~DATAOUT9\ & 
-- (!\my_alu|Mult0|auto_generated|add9_result[8]~17\)) # (!\my_alu|Mult0|auto_generated|mac_out6~DATAOUT9\ & ((\my_alu|Mult0|auto_generated|add9_result[8]~17\) # (GND)))))
-- \my_alu|Mult0|auto_generated|add9_result[9]~19\ = CARRY((\my_alu|Mult0|auto_generated|mac_out4~DATAOUT9\ & (!\my_alu|Mult0|auto_generated|mac_out6~DATAOUT9\ & !\my_alu|Mult0|auto_generated|add9_result[8]~17\)) # 
-- (!\my_alu|Mult0|auto_generated|mac_out4~DATAOUT9\ & ((!\my_alu|Mult0|auto_generated|add9_result[8]~17\) # (!\my_alu|Mult0|auto_generated|mac_out6~DATAOUT9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult0|auto_generated|mac_out4~DATAOUT9\,
	datab => \my_alu|Mult0|auto_generated|mac_out6~DATAOUT9\,
	datad => VCC,
	cin => \my_alu|Mult0|auto_generated|add9_result[8]~17\,
	combout => \my_alu|Mult0|auto_generated|add9_result[9]~18_combout\,
	cout => \my_alu|Mult0|auto_generated|add9_result[9]~19\);

-- Location: LCCOMB_X43_Y23_N24
\my_alu|Mult0|auto_generated|add9_result[11]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult0|auto_generated|add9_result[11]~22_combout\ = (\my_alu|Mult0|auto_generated|mac_out6~DATAOUT11\ & ((\my_alu|Mult0|auto_generated|mac_out4~DATAOUT11\ & (\my_alu|Mult0|auto_generated|add9_result[10]~21\ & VCC)) # 
-- (!\my_alu|Mult0|auto_generated|mac_out4~DATAOUT11\ & (!\my_alu|Mult0|auto_generated|add9_result[10]~21\)))) # (!\my_alu|Mult0|auto_generated|mac_out6~DATAOUT11\ & ((\my_alu|Mult0|auto_generated|mac_out4~DATAOUT11\ & 
-- (!\my_alu|Mult0|auto_generated|add9_result[10]~21\)) # (!\my_alu|Mult0|auto_generated|mac_out4~DATAOUT11\ & ((\my_alu|Mult0|auto_generated|add9_result[10]~21\) # (GND)))))
-- \my_alu|Mult0|auto_generated|add9_result[11]~23\ = CARRY((\my_alu|Mult0|auto_generated|mac_out6~DATAOUT11\ & (!\my_alu|Mult0|auto_generated|mac_out4~DATAOUT11\ & !\my_alu|Mult0|auto_generated|add9_result[10]~21\)) # 
-- (!\my_alu|Mult0|auto_generated|mac_out6~DATAOUT11\ & ((!\my_alu|Mult0|auto_generated|add9_result[10]~21\) # (!\my_alu|Mult0|auto_generated|mac_out4~DATAOUT11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult0|auto_generated|mac_out6~DATAOUT11\,
	datab => \my_alu|Mult0|auto_generated|mac_out4~DATAOUT11\,
	datad => VCC,
	cin => \my_alu|Mult0|auto_generated|add9_result[10]~21\,
	combout => \my_alu|Mult0|auto_generated|add9_result[11]~22_combout\,
	cout => \my_alu|Mult0|auto_generated|add9_result[11]~23\);

-- Location: LCCOMB_X43_Y23_N30
\my_alu|Mult0|auto_generated|add9_result[14]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult0|auto_generated|add9_result[14]~28_combout\ = ((\my_alu|Mult0|auto_generated|mac_out6~DATAOUT14\ $ (\my_alu|Mult0|auto_generated|mac_out4~DATAOUT14\ $ (!\my_alu|Mult0|auto_generated|add9_result[13]~27\)))) # (GND)
-- \my_alu|Mult0|auto_generated|add9_result[14]~29\ = CARRY((\my_alu|Mult0|auto_generated|mac_out6~DATAOUT14\ & ((\my_alu|Mult0|auto_generated|mac_out4~DATAOUT14\) # (!\my_alu|Mult0|auto_generated|add9_result[13]~27\))) # 
-- (!\my_alu|Mult0|auto_generated|mac_out6~DATAOUT14\ & (\my_alu|Mult0|auto_generated|mac_out4~DATAOUT14\ & !\my_alu|Mult0|auto_generated|add9_result[13]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult0|auto_generated|mac_out6~DATAOUT14\,
	datab => \my_alu|Mult0|auto_generated|mac_out4~DATAOUT14\,
	datad => VCC,
	cin => \my_alu|Mult0|auto_generated|add9_result[13]~27\,
	combout => \my_alu|Mult0|auto_generated|add9_result[14]~28_combout\,
	cout => \my_alu|Mult0|auto_generated|add9_result[14]~29\);

-- Location: DSPOUT_X44_Y20_N2
\my_alu|Mult0|auto_generated|mac_out2\ : cycloneive_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult0|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \my_alu|Mult0|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X42_Y23_N28
\my_alu|Mult0|auto_generated|op_1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult0|auto_generated|op_1~26_combout\ = (\my_alu|Mult0|auto_generated|mac_out2~DATAOUT31\ & ((\my_alu|Mult0|auto_generated|add9_result[13]~26_combout\ & (\my_alu|Mult0|auto_generated|op_1~25\ & VCC)) # 
-- (!\my_alu|Mult0|auto_generated|add9_result[13]~26_combout\ & (!\my_alu|Mult0|auto_generated|op_1~25\)))) # (!\my_alu|Mult0|auto_generated|mac_out2~DATAOUT31\ & ((\my_alu|Mult0|auto_generated|add9_result[13]~26_combout\ & 
-- (!\my_alu|Mult0|auto_generated|op_1~25\)) # (!\my_alu|Mult0|auto_generated|add9_result[13]~26_combout\ & ((\my_alu|Mult0|auto_generated|op_1~25\) # (GND)))))
-- \my_alu|Mult0|auto_generated|op_1~27\ = CARRY((\my_alu|Mult0|auto_generated|mac_out2~DATAOUT31\ & (!\my_alu|Mult0|auto_generated|add9_result[13]~26_combout\ & !\my_alu|Mult0|auto_generated|op_1~25\)) # (!\my_alu|Mult0|auto_generated|mac_out2~DATAOUT31\ & 
-- ((!\my_alu|Mult0|auto_generated|op_1~25\) # (!\my_alu|Mult0|auto_generated|add9_result[13]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult0|auto_generated|mac_out2~DATAOUT31\,
	datab => \my_alu|Mult0|auto_generated|add9_result[13]~26_combout\,
	datad => VCC,
	cin => \my_alu|Mult0|auto_generated|op_1~25\,
	combout => \my_alu|Mult0|auto_generated|op_1~26_combout\,
	cout => \my_alu|Mult0|auto_generated|op_1~27\);

-- Location: LCCOMB_X23_Y19_N14
\my_alu|Mult1|auto_generated|add9_result[15]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult1|auto_generated|add9_result[15]~30_combout\ = (\my_alu|Mult1|auto_generated|mac_out4~DATAOUT15\ & ((\my_alu|Mult1|auto_generated|mac_out6~DATAOUT15\ & (\my_alu|Mult1|auto_generated|add9_result[14]~29\ & VCC)) # 
-- (!\my_alu|Mult1|auto_generated|mac_out6~DATAOUT15\ & (!\my_alu|Mult1|auto_generated|add9_result[14]~29\)))) # (!\my_alu|Mult1|auto_generated|mac_out4~DATAOUT15\ & ((\my_alu|Mult1|auto_generated|mac_out6~DATAOUT15\ & 
-- (!\my_alu|Mult1|auto_generated|add9_result[14]~29\)) # (!\my_alu|Mult1|auto_generated|mac_out6~DATAOUT15\ & ((\my_alu|Mult1|auto_generated|add9_result[14]~29\) # (GND)))))
-- \my_alu|Mult1|auto_generated|add9_result[15]~31\ = CARRY((\my_alu|Mult1|auto_generated|mac_out4~DATAOUT15\ & (!\my_alu|Mult1|auto_generated|mac_out6~DATAOUT15\ & !\my_alu|Mult1|auto_generated|add9_result[14]~29\)) # 
-- (!\my_alu|Mult1|auto_generated|mac_out4~DATAOUT15\ & ((!\my_alu|Mult1|auto_generated|add9_result[14]~29\) # (!\my_alu|Mult1|auto_generated|mac_out6~DATAOUT15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult1|auto_generated|mac_out4~DATAOUT15\,
	datab => \my_alu|Mult1|auto_generated|mac_out6~DATAOUT15\,
	datad => VCC,
	cin => \my_alu|Mult1|auto_generated|add9_result[14]~29\,
	combout => \my_alu|Mult1|auto_generated|add9_result[15]~30_combout\,
	cout => \my_alu|Mult1|auto_generated|add9_result[15]~31\);

-- Location: LCCOMB_X23_Y19_N16
\my_alu|Mult1|auto_generated|add9_result[16]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult1|auto_generated|add9_result[16]~32_combout\ = ((\my_alu|Mult1|auto_generated|mac_out6~DATAOUT16\ $ (\my_alu|Mult1|auto_generated|mac_out4~DATAOUT16\ $ (!\my_alu|Mult1|auto_generated|add9_result[15]~31\)))) # (GND)
-- \my_alu|Mult1|auto_generated|add9_result[16]~33\ = CARRY((\my_alu|Mult1|auto_generated|mac_out6~DATAOUT16\ & ((\my_alu|Mult1|auto_generated|mac_out4~DATAOUT16\) # (!\my_alu|Mult1|auto_generated|add9_result[15]~31\))) # 
-- (!\my_alu|Mult1|auto_generated|mac_out6~DATAOUT16\ & (\my_alu|Mult1|auto_generated|mac_out4~DATAOUT16\ & !\my_alu|Mult1|auto_generated|add9_result[15]~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult1|auto_generated|mac_out6~DATAOUT16\,
	datab => \my_alu|Mult1|auto_generated|mac_out4~DATAOUT16\,
	datad => VCC,
	cin => \my_alu|Mult1|auto_generated|add9_result[15]~31\,
	combout => \my_alu|Mult1|auto_generated|add9_result[16]~32_combout\,
	cout => \my_alu|Mult1|auto_generated|add9_result[16]~33\);

-- Location: LCCOMB_X43_Y22_N2
\my_alu|Mult0|auto_generated|add9_result[16]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult0|auto_generated|add9_result[16]~32_combout\ = ((\my_alu|Mult0|auto_generated|mac_out6~DATAOUT16\ $ (\my_alu|Mult0|auto_generated|mac_out4~DATAOUT16\ $ (!\my_alu|Mult0|auto_generated|add9_result[15]~31\)))) # (GND)
-- \my_alu|Mult0|auto_generated|add9_result[16]~33\ = CARRY((\my_alu|Mult0|auto_generated|mac_out6~DATAOUT16\ & ((\my_alu|Mult0|auto_generated|mac_out4~DATAOUT16\) # (!\my_alu|Mult0|auto_generated|add9_result[15]~31\))) # 
-- (!\my_alu|Mult0|auto_generated|mac_out6~DATAOUT16\ & (\my_alu|Mult0|auto_generated|mac_out4~DATAOUT16\ & !\my_alu|Mult0|auto_generated|add9_result[15]~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult0|auto_generated|mac_out6~DATAOUT16\,
	datab => \my_alu|Mult0|auto_generated|mac_out4~DATAOUT16\,
	datad => VCC,
	cin => \my_alu|Mult0|auto_generated|add9_result[15]~31\,
	combout => \my_alu|Mult0|auto_generated|add9_result[16]~32_combout\,
	cout => \my_alu|Mult0|auto_generated|add9_result[16]~33\);

-- Location: LCCOMB_X43_Y22_N4
\my_alu|Mult0|auto_generated|add9_result[17]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult0|auto_generated|add9_result[17]~34_combout\ = (\my_alu|Mult0|auto_generated|mac_out6~DATAOUT17\ & ((\my_alu|Mult0|auto_generated|mac_out4~DATAOUT17\ & (\my_alu|Mult0|auto_generated|add9_result[16]~33\ & VCC)) # 
-- (!\my_alu|Mult0|auto_generated|mac_out4~DATAOUT17\ & (!\my_alu|Mult0|auto_generated|add9_result[16]~33\)))) # (!\my_alu|Mult0|auto_generated|mac_out6~DATAOUT17\ & ((\my_alu|Mult0|auto_generated|mac_out4~DATAOUT17\ & 
-- (!\my_alu|Mult0|auto_generated|add9_result[16]~33\)) # (!\my_alu|Mult0|auto_generated|mac_out4~DATAOUT17\ & ((\my_alu|Mult0|auto_generated|add9_result[16]~33\) # (GND)))))
-- \my_alu|Mult0|auto_generated|add9_result[17]~35\ = CARRY((\my_alu|Mult0|auto_generated|mac_out6~DATAOUT17\ & (!\my_alu|Mult0|auto_generated|mac_out4~DATAOUT17\ & !\my_alu|Mult0|auto_generated|add9_result[16]~33\)) # 
-- (!\my_alu|Mult0|auto_generated|mac_out6~DATAOUT17\ & ((!\my_alu|Mult0|auto_generated|add9_result[16]~33\) # (!\my_alu|Mult0|auto_generated|mac_out4~DATAOUT17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult0|auto_generated|mac_out6~DATAOUT17\,
	datab => \my_alu|Mult0|auto_generated|mac_out4~DATAOUT17\,
	datad => VCC,
	cin => \my_alu|Mult0|auto_generated|add9_result[16]~33\,
	combout => \my_alu|Mult0|auto_generated|add9_result[17]~34_combout\,
	cout => \my_alu|Mult0|auto_generated|add9_result[17]~35\);

-- Location: DSPOUT_X22_Y18_N2
\my_alu|Mult1|auto_generated|mac_out8\ : cycloneive_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult1|auto_generated|mac_out8_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \my_alu|Mult1|auto_generated|mac_out8_DATAOUT_bus\);

-- Location: LCCOMB_X23_Y19_N20
\my_alu|Mult1|auto_generated|add9_result[18]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult1|auto_generated|add9_result[18]~36_combout\ = ((\my_alu|Mult1|auto_generated|mac_out8~dataout\ $ (\my_alu|Mult1|auto_generated|mac_out6~DATAOUT18\ $ (!\my_alu|Mult1|auto_generated|add9_result[17]~35\)))) # (GND)
-- \my_alu|Mult1|auto_generated|add9_result[18]~37\ = CARRY((\my_alu|Mult1|auto_generated|mac_out8~dataout\ & ((\my_alu|Mult1|auto_generated|mac_out6~DATAOUT18\) # (!\my_alu|Mult1|auto_generated|add9_result[17]~35\))) # 
-- (!\my_alu|Mult1|auto_generated|mac_out8~dataout\ & (\my_alu|Mult1|auto_generated|mac_out6~DATAOUT18\ & !\my_alu|Mult1|auto_generated|add9_result[17]~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult1|auto_generated|mac_out8~dataout\,
	datab => \my_alu|Mult1|auto_generated|mac_out6~DATAOUT18\,
	datad => VCC,
	cin => \my_alu|Mult1|auto_generated|add9_result[17]~35\,
	combout => \my_alu|Mult1|auto_generated|add9_result[18]~36_combout\,
	cout => \my_alu|Mult1|auto_generated|add9_result[18]~37\);

-- Location: DSPOUT_X44_Y21_N2
\my_alu|Mult0|auto_generated|mac_out8\ : cycloneive_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 36,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult0|auto_generated|mac_out8_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \my_alu|Mult0|auto_generated|mac_out8_DATAOUT_bus\);

-- Location: LCCOMB_X43_Y22_N6
\my_alu|Mult0|auto_generated|add9_result[18]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult0|auto_generated|add9_result[18]~36_combout\ = ((\my_alu|Mult0|auto_generated|mac_out8~dataout\ $ (\my_alu|Mult0|auto_generated|mac_out6~DATAOUT18\ $ (!\my_alu|Mult0|auto_generated|add9_result[17]~35\)))) # (GND)
-- \my_alu|Mult0|auto_generated|add9_result[18]~37\ = CARRY((\my_alu|Mult0|auto_generated|mac_out8~dataout\ & ((\my_alu|Mult0|auto_generated|mac_out6~DATAOUT18\) # (!\my_alu|Mult0|auto_generated|add9_result[17]~35\))) # 
-- (!\my_alu|Mult0|auto_generated|mac_out8~dataout\ & (\my_alu|Mult0|auto_generated|mac_out6~DATAOUT18\ & !\my_alu|Mult0|auto_generated|add9_result[17]~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult0|auto_generated|mac_out8~dataout\,
	datab => \my_alu|Mult0|auto_generated|mac_out6~DATAOUT18\,
	datad => VCC,
	cin => \my_alu|Mult0|auto_generated|add9_result[17]~35\,
	combout => \my_alu|Mult0|auto_generated|add9_result[18]~36_combout\,
	cout => \my_alu|Mult0|auto_generated|add9_result[18]~37\);

-- Location: LCCOMB_X23_Y19_N26
\my_alu|Mult1|auto_generated|add9_result[21]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult1|auto_generated|add9_result[21]~42_combout\ = (\my_alu|Mult1|auto_generated|mac_out6~DATAOUT21\ & ((\my_alu|Mult1|auto_generated|mac_out8~DATAOUT3\ & (\my_alu|Mult1|auto_generated|add9_result[20]~41\ & VCC)) # 
-- (!\my_alu|Mult1|auto_generated|mac_out8~DATAOUT3\ & (!\my_alu|Mult1|auto_generated|add9_result[20]~41\)))) # (!\my_alu|Mult1|auto_generated|mac_out6~DATAOUT21\ & ((\my_alu|Mult1|auto_generated|mac_out8~DATAOUT3\ & 
-- (!\my_alu|Mult1|auto_generated|add9_result[20]~41\)) # (!\my_alu|Mult1|auto_generated|mac_out8~DATAOUT3\ & ((\my_alu|Mult1|auto_generated|add9_result[20]~41\) # (GND)))))
-- \my_alu|Mult1|auto_generated|add9_result[21]~43\ = CARRY((\my_alu|Mult1|auto_generated|mac_out6~DATAOUT21\ & (!\my_alu|Mult1|auto_generated|mac_out8~DATAOUT3\ & !\my_alu|Mult1|auto_generated|add9_result[20]~41\)) # 
-- (!\my_alu|Mult1|auto_generated|mac_out6~DATAOUT21\ & ((!\my_alu|Mult1|auto_generated|add9_result[20]~41\) # (!\my_alu|Mult1|auto_generated|mac_out8~DATAOUT3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult1|auto_generated|mac_out6~DATAOUT21\,
	datab => \my_alu|Mult1|auto_generated|mac_out8~DATAOUT3\,
	datad => VCC,
	cin => \my_alu|Mult1|auto_generated|add9_result[20]~41\,
	combout => \my_alu|Mult1|auto_generated|add9_result[21]~42_combout\,
	cout => \my_alu|Mult1|auto_generated|add9_result[21]~43\);

-- Location: LCCOMB_X23_Y18_N0
\my_alu|Mult1|auto_generated|add9_result[24]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult1|auto_generated|add9_result[24]~48_combout\ = ((\my_alu|Mult1|auto_generated|mac_out8~DATAOUT6\ $ (\my_alu|Mult1|auto_generated|mac_out6~DATAOUT24\ $ (!\my_alu|Mult1|auto_generated|add9_result[23]~47\)))) # (GND)
-- \my_alu|Mult1|auto_generated|add9_result[24]~49\ = CARRY((\my_alu|Mult1|auto_generated|mac_out8~DATAOUT6\ & ((\my_alu|Mult1|auto_generated|mac_out6~DATAOUT24\) # (!\my_alu|Mult1|auto_generated|add9_result[23]~47\))) # 
-- (!\my_alu|Mult1|auto_generated|mac_out8~DATAOUT6\ & (\my_alu|Mult1|auto_generated|mac_out6~DATAOUT24\ & !\my_alu|Mult1|auto_generated|add9_result[23]~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult1|auto_generated|mac_out8~DATAOUT6\,
	datab => \my_alu|Mult1|auto_generated|mac_out6~DATAOUT24\,
	datad => VCC,
	cin => \my_alu|Mult1|auto_generated|add9_result[23]~47\,
	combout => \my_alu|Mult1|auto_generated|add9_result[24]~48_combout\,
	cout => \my_alu|Mult1|auto_generated|add9_result[24]~49\);

-- Location: LCCOMB_X43_Y22_N20
\my_alu|Mult0|auto_generated|add9_result[25]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult0|auto_generated|add9_result[25]~50_combout\ = (\my_alu|Mult0|auto_generated|mac_out8~DATAOUT7\ & ((\my_alu|Mult0|auto_generated|mac_out6~DATAOUT25\ & (\my_alu|Mult0|auto_generated|add9_result[24]~49\ & VCC)) # 
-- (!\my_alu|Mult0|auto_generated|mac_out6~DATAOUT25\ & (!\my_alu|Mult0|auto_generated|add9_result[24]~49\)))) # (!\my_alu|Mult0|auto_generated|mac_out8~DATAOUT7\ & ((\my_alu|Mult0|auto_generated|mac_out6~DATAOUT25\ & 
-- (!\my_alu|Mult0|auto_generated|add9_result[24]~49\)) # (!\my_alu|Mult0|auto_generated|mac_out6~DATAOUT25\ & ((\my_alu|Mult0|auto_generated|add9_result[24]~49\) # (GND)))))
-- \my_alu|Mult0|auto_generated|add9_result[25]~51\ = CARRY((\my_alu|Mult0|auto_generated|mac_out8~DATAOUT7\ & (!\my_alu|Mult0|auto_generated|mac_out6~DATAOUT25\ & !\my_alu|Mult0|auto_generated|add9_result[24]~49\)) # 
-- (!\my_alu|Mult0|auto_generated|mac_out8~DATAOUT7\ & ((!\my_alu|Mult0|auto_generated|add9_result[24]~49\) # (!\my_alu|Mult0|auto_generated|mac_out6~DATAOUT25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult0|auto_generated|mac_out8~DATAOUT7\,
	datab => \my_alu|Mult0|auto_generated|mac_out6~DATAOUT25\,
	datad => VCC,
	cin => \my_alu|Mult0|auto_generated|add9_result[24]~49\,
	combout => \my_alu|Mult0|auto_generated|add9_result[25]~50_combout\,
	cout => \my_alu|Mult0|auto_generated|add9_result[25]~51\);

-- Location: LCCOMB_X23_Y18_N4
\my_alu|Mult1|auto_generated|add9_result[26]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult1|auto_generated|add9_result[26]~52_combout\ = ((\my_alu|Mult1|auto_generated|mac_out6~DATAOUT26\ $ (\my_alu|Mult1|auto_generated|mac_out8~DATAOUT8\ $ (!\my_alu|Mult1|auto_generated|add9_result[25]~51\)))) # (GND)
-- \my_alu|Mult1|auto_generated|add9_result[26]~53\ = CARRY((\my_alu|Mult1|auto_generated|mac_out6~DATAOUT26\ & ((\my_alu|Mult1|auto_generated|mac_out8~DATAOUT8\) # (!\my_alu|Mult1|auto_generated|add9_result[25]~51\))) # 
-- (!\my_alu|Mult1|auto_generated|mac_out6~DATAOUT26\ & (\my_alu|Mult1|auto_generated|mac_out8~DATAOUT8\ & !\my_alu|Mult1|auto_generated|add9_result[25]~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult1|auto_generated|mac_out6~DATAOUT26\,
	datab => \my_alu|Mult1|auto_generated|mac_out8~DATAOUT8\,
	datad => VCC,
	cin => \my_alu|Mult1|auto_generated|add9_result[25]~51\,
	combout => \my_alu|Mult1|auto_generated|add9_result[26]~52_combout\,
	cout => \my_alu|Mult1|auto_generated|add9_result[26]~53\);

-- Location: LCCOMB_X23_Y18_N8
\my_alu|Mult1|auto_generated|add9_result[28]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult1|auto_generated|add9_result[28]~56_combout\ = ((\my_alu|Mult1|auto_generated|mac_out6~DATAOUT28\ $ (\my_alu|Mult1|auto_generated|mac_out8~DATAOUT10\ $ (!\my_alu|Mult1|auto_generated|add9_result[27]~55\)))) # (GND)
-- \my_alu|Mult1|auto_generated|add9_result[28]~57\ = CARRY((\my_alu|Mult1|auto_generated|mac_out6~DATAOUT28\ & ((\my_alu|Mult1|auto_generated|mac_out8~DATAOUT10\) # (!\my_alu|Mult1|auto_generated|add9_result[27]~55\))) # 
-- (!\my_alu|Mult1|auto_generated|mac_out6~DATAOUT28\ & (\my_alu|Mult1|auto_generated|mac_out8~DATAOUT10\ & !\my_alu|Mult1|auto_generated|add9_result[27]~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult1|auto_generated|mac_out6~DATAOUT28\,
	datab => \my_alu|Mult1|auto_generated|mac_out8~DATAOUT10\,
	datad => VCC,
	cin => \my_alu|Mult1|auto_generated|add9_result[27]~55\,
	combout => \my_alu|Mult1|auto_generated|add9_result[28]~56_combout\,
	cout => \my_alu|Mult1|auto_generated|add9_result[28]~57\);

-- Location: LCCOMB_X23_Y18_N10
\my_alu|Mult1|auto_generated|add9_result[29]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult1|auto_generated|add9_result[29]~58_combout\ = (\my_alu|Mult1|auto_generated|mac_out6~DATAOUT29\ & ((\my_alu|Mult1|auto_generated|mac_out8~DATAOUT11\ & (\my_alu|Mult1|auto_generated|add9_result[28]~57\ & VCC)) # 
-- (!\my_alu|Mult1|auto_generated|mac_out8~DATAOUT11\ & (!\my_alu|Mult1|auto_generated|add9_result[28]~57\)))) # (!\my_alu|Mult1|auto_generated|mac_out6~DATAOUT29\ & ((\my_alu|Mult1|auto_generated|mac_out8~DATAOUT11\ & 
-- (!\my_alu|Mult1|auto_generated|add9_result[28]~57\)) # (!\my_alu|Mult1|auto_generated|mac_out8~DATAOUT11\ & ((\my_alu|Mult1|auto_generated|add9_result[28]~57\) # (GND)))))
-- \my_alu|Mult1|auto_generated|add9_result[29]~59\ = CARRY((\my_alu|Mult1|auto_generated|mac_out6~DATAOUT29\ & (!\my_alu|Mult1|auto_generated|mac_out8~DATAOUT11\ & !\my_alu|Mult1|auto_generated|add9_result[28]~57\)) # 
-- (!\my_alu|Mult1|auto_generated|mac_out6~DATAOUT29\ & ((!\my_alu|Mult1|auto_generated|add9_result[28]~57\) # (!\my_alu|Mult1|auto_generated|mac_out8~DATAOUT11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult1|auto_generated|mac_out6~DATAOUT29\,
	datab => \my_alu|Mult1|auto_generated|mac_out8~DATAOUT11\,
	datad => VCC,
	cin => \my_alu|Mult1|auto_generated|add9_result[28]~57\,
	combout => \my_alu|Mult1|auto_generated|add9_result[29]~58_combout\,
	cout => \my_alu|Mult1|auto_generated|add9_result[29]~59\);

-- Location: LCCOMB_X23_Y18_N12
\my_alu|Mult1|auto_generated|add9_result[30]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult1|auto_generated|add9_result[30]~60_combout\ = ((\my_alu|Mult1|auto_generated|mac_out8~DATAOUT12\ $ (\my_alu|Mult1|auto_generated|mac_out6~DATAOUT30\ $ (!\my_alu|Mult1|auto_generated|add9_result[29]~59\)))) # (GND)
-- \my_alu|Mult1|auto_generated|add9_result[30]~61\ = CARRY((\my_alu|Mult1|auto_generated|mac_out8~DATAOUT12\ & ((\my_alu|Mult1|auto_generated|mac_out6~DATAOUT30\) # (!\my_alu|Mult1|auto_generated|add9_result[29]~59\))) # 
-- (!\my_alu|Mult1|auto_generated|mac_out8~DATAOUT12\ & (\my_alu|Mult1|auto_generated|mac_out6~DATAOUT30\ & !\my_alu|Mult1|auto_generated|add9_result[29]~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult1|auto_generated|mac_out8~DATAOUT12\,
	datab => \my_alu|Mult1|auto_generated|mac_out6~DATAOUT30\,
	datad => VCC,
	cin => \my_alu|Mult1|auto_generated|add9_result[29]~59\,
	combout => \my_alu|Mult1|auto_generated|add9_result[30]~60_combout\,
	cout => \my_alu|Mult1|auto_generated|add9_result[30]~61\);

-- Location: LCCOMB_X43_Y22_N30
\my_alu|Mult0|auto_generated|add9_result[30]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult0|auto_generated|add9_result[30]~60_combout\ = ((\my_alu|Mult0|auto_generated|mac_out6~DATAOUT30\ $ (\my_alu|Mult0|auto_generated|mac_out8~DATAOUT12\ $ (!\my_alu|Mult0|auto_generated|add9_result[29]~59\)))) # (GND)
-- \my_alu|Mult0|auto_generated|add9_result[30]~61\ = CARRY((\my_alu|Mult0|auto_generated|mac_out6~DATAOUT30\ & ((\my_alu|Mult0|auto_generated|mac_out8~DATAOUT12\) # (!\my_alu|Mult0|auto_generated|add9_result[29]~59\))) # 
-- (!\my_alu|Mult0|auto_generated|mac_out6~DATAOUT30\ & (\my_alu|Mult0|auto_generated|mac_out8~DATAOUT12\ & !\my_alu|Mult0|auto_generated|add9_result[29]~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult0|auto_generated|mac_out6~DATAOUT30\,
	datab => \my_alu|Mult0|auto_generated|mac_out8~DATAOUT12\,
	datad => VCC,
	cin => \my_alu|Mult0|auto_generated|add9_result[29]~59\,
	combout => \my_alu|Mult0|auto_generated|add9_result[30]~60_combout\,
	cout => \my_alu|Mult0|auto_generated|add9_result[30]~61\);

-- Location: LCCOMB_X23_Y18_N14
\my_alu|Mult1|auto_generated|add9_result[31]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult1|auto_generated|add9_result[31]~62_combout\ = (\my_alu|Mult1|auto_generated|mac_out8~DATAOUT13\ & ((\my_alu|Mult1|auto_generated|mac_out6~DATAOUT31\ & (\my_alu|Mult1|auto_generated|add9_result[30]~61\ & VCC)) # 
-- (!\my_alu|Mult1|auto_generated|mac_out6~DATAOUT31\ & (!\my_alu|Mult1|auto_generated|add9_result[30]~61\)))) # (!\my_alu|Mult1|auto_generated|mac_out8~DATAOUT13\ & ((\my_alu|Mult1|auto_generated|mac_out6~DATAOUT31\ & 
-- (!\my_alu|Mult1|auto_generated|add9_result[30]~61\)) # (!\my_alu|Mult1|auto_generated|mac_out6~DATAOUT31\ & ((\my_alu|Mult1|auto_generated|add9_result[30]~61\) # (GND)))))
-- \my_alu|Mult1|auto_generated|add9_result[31]~63\ = CARRY((\my_alu|Mult1|auto_generated|mac_out8~DATAOUT13\ & (!\my_alu|Mult1|auto_generated|mac_out6~DATAOUT31\ & !\my_alu|Mult1|auto_generated|add9_result[30]~61\)) # 
-- (!\my_alu|Mult1|auto_generated|mac_out8~DATAOUT13\ & ((!\my_alu|Mult1|auto_generated|add9_result[30]~61\) # (!\my_alu|Mult1|auto_generated|mac_out6~DATAOUT31\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult1|auto_generated|mac_out8~DATAOUT13\,
	datab => \my_alu|Mult1|auto_generated|mac_out6~DATAOUT31\,
	datad => VCC,
	cin => \my_alu|Mult1|auto_generated|add9_result[30]~61\,
	combout => \my_alu|Mult1|auto_generated|add9_result[31]~62_combout\,
	cout => \my_alu|Mult1|auto_generated|add9_result[31]~63\);

-- Location: LCCOMB_X23_Y18_N16
\my_alu|Mult1|auto_generated|add9_result[32]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult1|auto_generated|add9_result[32]~64_combout\ = !\my_alu|Mult1|auto_generated|add9_result[31]~63\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \my_alu|Mult1|auto_generated|add9_result[31]~63\,
	combout => \my_alu|Mult1|auto_generated|add9_result[32]~64_combout\);

-- Location: LCCOMB_X43_Y21_N2
\my_alu|Mult0|auto_generated|add9_result[32]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult0|auto_generated|add9_result[32]~64_combout\ = (\my_alu|Mult0|auto_generated|mac_out8~DATAOUT14\ & (\my_alu|Mult0|auto_generated|add9_result[31]~63\ $ (GND))) # (!\my_alu|Mult0|auto_generated|mac_out8~DATAOUT14\ & 
-- (!\my_alu|Mult0|auto_generated|add9_result[31]~63\ & VCC))
-- \my_alu|Mult0|auto_generated|add9_result[32]~65\ = CARRY((\my_alu|Mult0|auto_generated|mac_out8~DATAOUT14\ & !\my_alu|Mult0|auto_generated|add9_result[31]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_alu|Mult0|auto_generated|mac_out8~DATAOUT14\,
	datad => VCC,
	cin => \my_alu|Mult0|auto_generated|add9_result[31]~63\,
	combout => \my_alu|Mult0|auto_generated|add9_result[32]~64_combout\,
	cout => \my_alu|Mult0|auto_generated|add9_result[32]~65\);

-- Location: LCCOMB_X43_Y21_N4
\my_alu|Mult0|auto_generated|add9_result[33]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult0|auto_generated|add9_result[33]~66_combout\ = (\my_alu|Mult0|auto_generated|mac_out8~DATAOUT15\ & (!\my_alu|Mult0|auto_generated|add9_result[32]~65\)) # (!\my_alu|Mult0|auto_generated|mac_out8~DATAOUT15\ & 
-- ((\my_alu|Mult0|auto_generated|add9_result[32]~65\) # (GND)))
-- \my_alu|Mult0|auto_generated|add9_result[33]~67\ = CARRY((!\my_alu|Mult0|auto_generated|add9_result[32]~65\) # (!\my_alu|Mult0|auto_generated|mac_out8~DATAOUT15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult0|auto_generated|mac_out8~DATAOUT15\,
	datad => VCC,
	cin => \my_alu|Mult0|auto_generated|add9_result[32]~65\,
	combout => \my_alu|Mult0|auto_generated|add9_result[33]~66_combout\,
	cout => \my_alu|Mult0|auto_generated|add9_result[33]~67\);

-- Location: LCCOMB_X24_Y18_N6
\my_alu|Mult1|auto_generated|op_1~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult1|auto_generated|op_1~68_combout\ = (\my_alu|Mult1|auto_generated|mac_out8~DATAOUT16\ & (\my_alu|Mult1|auto_generated|op_1~67\ $ (GND))) # (!\my_alu|Mult1|auto_generated|mac_out8~DATAOUT16\ & (!\my_alu|Mult1|auto_generated|op_1~67\ & VCC))
-- \my_alu|Mult1|auto_generated|op_1~69\ = CARRY((\my_alu|Mult1|auto_generated|mac_out8~DATAOUT16\ & !\my_alu|Mult1|auto_generated|op_1~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult1|auto_generated|mac_out8~DATAOUT16\,
	datad => VCC,
	cin => \my_alu|Mult1|auto_generated|op_1~67\,
	combout => \my_alu|Mult1|auto_generated|op_1~68_combout\,
	cout => \my_alu|Mult1|auto_generated|op_1~69\);

-- Location: LCCOMB_X43_Y21_N6
\my_alu|Mult0|auto_generated|add9_result[34]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult0|auto_generated|add9_result[34]~68_combout\ = (\my_alu|Mult0|auto_generated|mac_out8~DATAOUT16\ & (\my_alu|Mult0|auto_generated|add9_result[33]~67\ $ (GND))) # (!\my_alu|Mult0|auto_generated|mac_out8~DATAOUT16\ & 
-- (!\my_alu|Mult0|auto_generated|add9_result[33]~67\ & VCC))
-- \my_alu|Mult0|auto_generated|add9_result[34]~69\ = CARRY((\my_alu|Mult0|auto_generated|mac_out8~DATAOUT16\ & !\my_alu|Mult0|auto_generated|add9_result[33]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult0|auto_generated|mac_out8~DATAOUT16\,
	datad => VCC,
	cin => \my_alu|Mult0|auto_generated|add9_result[33]~67\,
	combout => \my_alu|Mult0|auto_generated|add9_result[34]~68_combout\,
	cout => \my_alu|Mult0|auto_generated|add9_result[34]~69\);

-- Location: LCCOMB_X24_Y18_N14
\my_alu|Mult1|auto_generated|op_1~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult1|auto_generated|op_1~76_combout\ = (\my_alu|Mult1|auto_generated|mac_out8~DATAOUT20\ & (\my_alu|Mult1|auto_generated|op_1~75\ $ (GND))) # (!\my_alu|Mult1|auto_generated|mac_out8~DATAOUT20\ & (!\my_alu|Mult1|auto_generated|op_1~75\ & VCC))
-- \my_alu|Mult1|auto_generated|op_1~77\ = CARRY((\my_alu|Mult1|auto_generated|mac_out8~DATAOUT20\ & !\my_alu|Mult1|auto_generated|op_1~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult1|auto_generated|mac_out8~DATAOUT20\,
	datad => VCC,
	cin => \my_alu|Mult1|auto_generated|op_1~75\,
	combout => \my_alu|Mult1|auto_generated|op_1~76_combout\,
	cout => \my_alu|Mult1|auto_generated|op_1~77\);

-- Location: LCCOMB_X43_Y21_N20
\my_alu|Mult0|auto_generated|add9_result[41]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult0|auto_generated|add9_result[41]~82_combout\ = (\my_alu|Mult0|auto_generated|mac_out8~DATAOUT23\ & (!\my_alu|Mult0|auto_generated|add9_result[40]~81\)) # (!\my_alu|Mult0|auto_generated|mac_out8~DATAOUT23\ & 
-- ((\my_alu|Mult0|auto_generated|add9_result[40]~81\) # (GND)))
-- \my_alu|Mult0|auto_generated|add9_result[41]~83\ = CARRY((!\my_alu|Mult0|auto_generated|add9_result[40]~81\) # (!\my_alu|Mult0|auto_generated|mac_out8~DATAOUT23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_alu|Mult0|auto_generated|mac_out8~DATAOUT23\,
	datad => VCC,
	cin => \my_alu|Mult0|auto_generated|add9_result[40]~81\,
	combout => \my_alu|Mult0|auto_generated|add9_result[41]~82_combout\,
	cout => \my_alu|Mult0|auto_generated|add9_result[41]~83\);

-- Location: LCCOMB_X30_Y22_N0
\my_alu|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add2~0_combout\ = (\input_reg_b|q[0]~_Duplicate_4_q\ & (\input_reg_a|q[0]~_Duplicate_4_q\ $ (VCC))) # (!\input_reg_b|q[0]~_Duplicate_4_q\ & (\input_reg_a|q[0]~_Duplicate_4_q\ & VCC))
-- \my_alu|Add2~1\ = CARRY((\input_reg_b|q[0]~_Duplicate_4_q\ & \input_reg_a|q[0]~_Duplicate_4_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[0]~_Duplicate_4_q\,
	datab => \input_reg_a|q[0]~_Duplicate_4_q\,
	datad => VCC,
	combout => \my_alu|Add2~0_combout\,
	cout => \my_alu|Add2~1\);

-- Location: LCCOMB_X33_Y21_N2
\my_alu|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add0~2_combout\ = (\input_reg_b|q[1]~_Duplicate_4_q\ & ((\my_alu|Add0~1_cout\) # (GND))) # (!\input_reg_b|q[1]~_Duplicate_4_q\ & (!\my_alu|Add0~1_cout\))
-- \my_alu|Add0~3\ = CARRY((\input_reg_b|q[1]~_Duplicate_4_q\) # (!\my_alu|Add0~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \input_reg_b|q[1]~_Duplicate_4_q\,
	datad => VCC,
	cin => \my_alu|Add0~1_cout\,
	combout => \my_alu|Add0~2_combout\,
	cout => \my_alu|Add0~3\);

-- Location: LCCOMB_X33_Y21_N4
\my_alu|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add0~4_combout\ = (\input_reg_b|q[2]~_Duplicate_4_q\ & (!\my_alu|Add0~3\ & VCC)) # (!\input_reg_b|q[2]~_Duplicate_4_q\ & (\my_alu|Add0~3\ $ (GND)))
-- \my_alu|Add0~5\ = CARRY((!\input_reg_b|q[2]~_Duplicate_4_q\ & !\my_alu|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[2]~_Duplicate_4_q\,
	datad => VCC,
	cin => \my_alu|Add0~3\,
	combout => \my_alu|Add0~4_combout\,
	cout => \my_alu|Add0~5\);

-- Location: LCCOMB_X33_Y21_N12
\my_alu|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add0~12_combout\ = (\input_reg_b|q[6]~_Duplicate_4_q\ & (!\my_alu|Add0~11\ & VCC)) # (!\input_reg_b|q[6]~_Duplicate_4_q\ & (\my_alu|Add0~11\ $ (GND)))
-- \my_alu|Add0~13\ = CARRY((!\input_reg_b|q[6]~_Duplicate_4_q\ & !\my_alu|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \input_reg_b|q[6]~_Duplicate_4_q\,
	datad => VCC,
	cin => \my_alu|Add0~11\,
	combout => \my_alu|Add0~12_combout\,
	cout => \my_alu|Add0~13\);

-- Location: LCCOMB_X33_Y21_N14
\my_alu|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add0~14_combout\ = (\input_reg_b|q[7]~_Duplicate_4_q\ & ((\my_alu|Add0~13\) # (GND))) # (!\input_reg_b|q[7]~_Duplicate_4_q\ & (!\my_alu|Add0~13\))
-- \my_alu|Add0~15\ = CARRY((\input_reg_b|q[7]~_Duplicate_4_q\) # (!\my_alu|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[7]~_Duplicate_4_q\,
	datad => VCC,
	cin => \my_alu|Add0~13\,
	combout => \my_alu|Add0~14_combout\,
	cout => \my_alu|Add0~15\);

-- Location: LCCOMB_X33_Y21_N16
\my_alu|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add0~16_combout\ = (\input_reg_b|q[8]~_Duplicate_4_q\ & (!\my_alu|Add0~15\ & VCC)) # (!\input_reg_b|q[8]~_Duplicate_4_q\ & (\my_alu|Add0~15\ $ (GND)))
-- \my_alu|Add0~17\ = CARRY((!\input_reg_b|q[8]~_Duplicate_4_q\ & !\my_alu|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \input_reg_b|q[8]~_Duplicate_4_q\,
	datad => VCC,
	cin => \my_alu|Add0~15\,
	combout => \my_alu|Add0~16_combout\,
	cout => \my_alu|Add0~17\);

-- Location: LCCOMB_X33_Y21_N26
\my_alu|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add0~26_combout\ = (\input_reg_b|q[13]~_Duplicate_4_q\ & ((\my_alu|Add0~25\) # (GND))) # (!\input_reg_b|q[13]~_Duplicate_4_q\ & (!\my_alu|Add0~25\))
-- \my_alu|Add0~27\ = CARRY((\input_reg_b|q[13]~_Duplicate_4_q\) # (!\my_alu|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[13]~_Duplicate_4_q\,
	datad => VCC,
	cin => \my_alu|Add0~25\,
	combout => \my_alu|Add0~26_combout\,
	cout => \my_alu|Add0~27\);

-- Location: LCCOMB_X33_Y20_N0
\my_alu|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add0~32_combout\ = (\input_reg_b|q[16]~_Duplicate_4_q\ & (!\my_alu|Add0~31\ & VCC)) # (!\input_reg_b|q[16]~_Duplicate_4_q\ & (\my_alu|Add0~31\ $ (GND)))
-- \my_alu|Add0~33\ = CARRY((!\input_reg_b|q[16]~_Duplicate_4_q\ & !\my_alu|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \input_reg_b|q[16]~_Duplicate_4_q\,
	datad => VCC,
	cin => \my_alu|Add0~31\,
	combout => \my_alu|Add0~32_combout\,
	cout => \my_alu|Add0~33\);

-- Location: LCCOMB_X33_Y20_N6
\my_alu|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add0~38_combout\ = (\input_reg_b|q[19]~_Duplicate_4_q\ & ((\my_alu|Add0~37\) # (GND))) # (!\input_reg_b|q[19]~_Duplicate_4_q\ & (!\my_alu|Add0~37\))
-- \my_alu|Add0~39\ = CARRY((\input_reg_b|q[19]~_Duplicate_4_q\) # (!\my_alu|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \input_reg_b|q[19]~_Duplicate_4_q\,
	datad => VCC,
	cin => \my_alu|Add0~37\,
	combout => \my_alu|Add0~38_combout\,
	cout => \my_alu|Add0~39\);

-- Location: LCCOMB_X33_Y20_N8
\my_alu|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add0~40_combout\ = (\input_reg_b|q[20]~_Duplicate_4_q\ & (!\my_alu|Add0~39\ & VCC)) # (!\input_reg_b|q[20]~_Duplicate_4_q\ & (\my_alu|Add0~39\ $ (GND)))
-- \my_alu|Add0~41\ = CARRY((!\input_reg_b|q[20]~_Duplicate_4_q\ & !\my_alu|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \input_reg_b|q[20]~_Duplicate_4_q\,
	datad => VCC,
	cin => \my_alu|Add0~39\,
	combout => \my_alu|Add0~40_combout\,
	cout => \my_alu|Add0~41\);

-- Location: LCCOMB_X33_Y20_N10
\my_alu|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add0~42_combout\ = (\input_reg_b|q[21]~_Duplicate_4_q\ & ((\my_alu|Add0~41\) # (GND))) # (!\input_reg_b|q[21]~_Duplicate_4_q\ & (!\my_alu|Add0~41\))
-- \my_alu|Add0~43\ = CARRY((\input_reg_b|q[21]~_Duplicate_4_q\) # (!\my_alu|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[21]~_Duplicate_4_q\,
	datad => VCC,
	cin => \my_alu|Add0~41\,
	combout => \my_alu|Add0~42_combout\,
	cout => \my_alu|Add0~43\);

-- Location: LCCOMB_X33_Y20_N12
\my_alu|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add0~44_combout\ = (\input_reg_b|q[22]~_Duplicate_4_q\ & (!\my_alu|Add0~43\ & VCC)) # (!\input_reg_b|q[22]~_Duplicate_4_q\ & (\my_alu|Add0~43\ $ (GND)))
-- \my_alu|Add0~45\ = CARRY((!\input_reg_b|q[22]~_Duplicate_4_q\ & !\my_alu|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[22]~_Duplicate_4_q\,
	datad => VCC,
	cin => \my_alu|Add0~43\,
	combout => \my_alu|Add0~44_combout\,
	cout => \my_alu|Add0~45\);

-- Location: LCCOMB_X33_Y20_N14
\my_alu|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add0~46_combout\ = (\input_reg_b|q[23]~_Duplicate_4_q\ & ((\my_alu|Add0~45\) # (GND))) # (!\input_reg_b|q[23]~_Duplicate_4_q\ & (!\my_alu|Add0~45\))
-- \my_alu|Add0~47\ = CARRY((\input_reg_b|q[23]~_Duplicate_4_q\) # (!\my_alu|Add0~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[23]~_Duplicate_4_q\,
	datad => VCC,
	cin => \my_alu|Add0~45\,
	combout => \my_alu|Add0~46_combout\,
	cout => \my_alu|Add0~47\);

-- Location: LCCOMB_X33_Y20_N16
\my_alu|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add0~48_combout\ = (\input_reg_b|q[24]~_Duplicate_4_q\ & (!\my_alu|Add0~47\ & VCC)) # (!\input_reg_b|q[24]~_Duplicate_4_q\ & (\my_alu|Add0~47\ $ (GND)))
-- \my_alu|Add0~49\ = CARRY((!\input_reg_b|q[24]~_Duplicate_4_q\ & !\my_alu|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[24]~_Duplicate_4_q\,
	datad => VCC,
	cin => \my_alu|Add0~47\,
	combout => \my_alu|Add0~48_combout\,
	cout => \my_alu|Add0~49\);

-- Location: LCCOMB_X33_Y20_N26
\my_alu|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add0~58_combout\ = (\input_reg_b|q[29]~_Duplicate_4_q\ & ((\my_alu|Add0~57\) # (GND))) # (!\input_reg_b|q[29]~_Duplicate_4_q\ & (!\my_alu|Add0~57\))
-- \my_alu|Add0~59\ = CARRY((\input_reg_b|q[29]~_Duplicate_4_q\) # (!\my_alu|Add0~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \input_reg_b|q[29]~_Duplicate_4_q\,
	datad => VCC,
	cin => \my_alu|Add0~57\,
	combout => \my_alu|Add0~58_combout\,
	cout => \my_alu|Add0~59\);

-- Location: LCCOMB_X34_Y20_N14
\my_alu|diff[31]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|diff[31]~0_combout\ = (\input_reg_a|q[31]~_Duplicate_4_q\ & ((\my_alu|Add0~62_combout\ & (\my_alu|Add1~61_cout\ & VCC)) # (!\my_alu|Add0~62_combout\ & (!\my_alu|Add1~61_cout\)))) # (!\input_reg_a|q[31]~_Duplicate_4_q\ & ((\my_alu|Add0~62_combout\ 
-- & (!\my_alu|Add1~61_cout\)) # (!\my_alu|Add0~62_combout\ & ((\my_alu|Add1~61_cout\) # (GND)))))
-- \my_alu|diff[31]~1\ = CARRY((\input_reg_a|q[31]~_Duplicate_4_q\ & (!\my_alu|Add0~62_combout\ & !\my_alu|Add1~61_cout\)) # (!\input_reg_a|q[31]~_Duplicate_4_q\ & ((!\my_alu|Add1~61_cout\) # (!\my_alu|Add0~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_a|q[31]~_Duplicate_4_q\,
	datab => \my_alu|Add0~62_combout\,
	datad => VCC,
	cin => \my_alu|Add1~61_cout\,
	combout => \my_alu|diff[31]~0_combout\,
	cout => \my_alu|diff[31]~1\);

-- Location: LCCOMB_X32_Y22_N0
\my_alu|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add3~0_combout\ = (\input_reg_b|q[0]~_Duplicate_4_q\ & (\input_reg_a|q[0]~_Duplicate_4_q\ $ (VCC))) # (!\input_reg_b|q[0]~_Duplicate_4_q\ & ((\input_reg_a|q[0]~_Duplicate_4_q\) # (GND)))
-- \my_alu|Add3~1\ = CARRY((\input_reg_a|q[0]~_Duplicate_4_q\) # (!\input_reg_b|q[0]~_Duplicate_4_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[0]~_Duplicate_4_q\,
	datab => \input_reg_a|q[0]~_Duplicate_4_q\,
	datad => VCC,
	combout => \my_alu|Add3~0_combout\,
	cout => \my_alu|Add3~1\);

-- Location: LCCOMB_X32_Y22_N10
\my_alu|Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add3~10_combout\ = (\input_reg_a|q[5]~_Duplicate_4_q\ & ((\input_reg_b|q[5]~_Duplicate_4_q\ & (!\my_alu|Add3~9\)) # (!\input_reg_b|q[5]~_Duplicate_4_q\ & (\my_alu|Add3~9\ & VCC)))) # (!\input_reg_a|q[5]~_Duplicate_4_q\ & 
-- ((\input_reg_b|q[5]~_Duplicate_4_q\ & ((\my_alu|Add3~9\) # (GND))) # (!\input_reg_b|q[5]~_Duplicate_4_q\ & (!\my_alu|Add3~9\))))
-- \my_alu|Add3~11\ = CARRY((\input_reg_a|q[5]~_Duplicate_4_q\ & (\input_reg_b|q[5]~_Duplicate_4_q\ & !\my_alu|Add3~9\)) # (!\input_reg_a|q[5]~_Duplicate_4_q\ & ((\input_reg_b|q[5]~_Duplicate_4_q\) # (!\my_alu|Add3~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_a|q[5]~_Duplicate_4_q\,
	datab => \input_reg_b|q[5]~_Duplicate_4_q\,
	datad => VCC,
	cin => \my_alu|Add3~9\,
	combout => \my_alu|Add3~10_combout\,
	cout => \my_alu|Add3~11\);

-- Location: LCCOMB_X32_Y22_N14
\my_alu|Add3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add3~14_combout\ = (\input_reg_b|q[7]~_Duplicate_4_q\ & ((\input_reg_a|q[7]~_Duplicate_4_q\ & (!\my_alu|Add3~13\)) # (!\input_reg_a|q[7]~_Duplicate_4_q\ & ((\my_alu|Add3~13\) # (GND))))) # (!\input_reg_b|q[7]~_Duplicate_4_q\ & 
-- ((\input_reg_a|q[7]~_Duplicate_4_q\ & (\my_alu|Add3~13\ & VCC)) # (!\input_reg_a|q[7]~_Duplicate_4_q\ & (!\my_alu|Add3~13\))))
-- \my_alu|Add3~15\ = CARRY((\input_reg_b|q[7]~_Duplicate_4_q\ & ((!\my_alu|Add3~13\) # (!\input_reg_a|q[7]~_Duplicate_4_q\))) # (!\input_reg_b|q[7]~_Duplicate_4_q\ & (!\input_reg_a|q[7]~_Duplicate_4_q\ & !\my_alu|Add3~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[7]~_Duplicate_4_q\,
	datab => \input_reg_a|q[7]~_Duplicate_4_q\,
	datad => VCC,
	cin => \my_alu|Add3~13\,
	combout => \my_alu|Add3~14_combout\,
	cout => \my_alu|Add3~15\);

-- Location: LCCOMB_X30_Y22_N14
\my_alu|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add2~14_combout\ = (\input_reg_a|q[7]~_Duplicate_4_q\ & ((\input_reg_b|q[7]~_Duplicate_4_q\ & (\my_alu|Add2~13\ & VCC)) # (!\input_reg_b|q[7]~_Duplicate_4_q\ & (!\my_alu|Add2~13\)))) # (!\input_reg_a|q[7]~_Duplicate_4_q\ & 
-- ((\input_reg_b|q[7]~_Duplicate_4_q\ & (!\my_alu|Add2~13\)) # (!\input_reg_b|q[7]~_Duplicate_4_q\ & ((\my_alu|Add2~13\) # (GND)))))
-- \my_alu|Add2~15\ = CARRY((\input_reg_a|q[7]~_Duplicate_4_q\ & (!\input_reg_b|q[7]~_Duplicate_4_q\ & !\my_alu|Add2~13\)) # (!\input_reg_a|q[7]~_Duplicate_4_q\ & ((!\my_alu|Add2~13\) # (!\input_reg_b|q[7]~_Duplicate_4_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_a|q[7]~_Duplicate_4_q\,
	datab => \input_reg_b|q[7]~_Duplicate_4_q\,
	datad => VCC,
	cin => \my_alu|Add2~13\,
	combout => \my_alu|Add2~14_combout\,
	cout => \my_alu|Add2~15\);

-- Location: LCCOMB_X32_Y22_N26
\my_alu|Add3~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add3~26_combout\ = (\input_reg_b|q[13]~_Duplicate_4_q\ & ((\input_reg_a|q[13]~_Duplicate_4_q\ & (!\my_alu|Add3~25\)) # (!\input_reg_a|q[13]~_Duplicate_4_q\ & ((\my_alu|Add3~25\) # (GND))))) # (!\input_reg_b|q[13]~_Duplicate_4_q\ & 
-- ((\input_reg_a|q[13]~_Duplicate_4_q\ & (\my_alu|Add3~25\ & VCC)) # (!\input_reg_a|q[13]~_Duplicate_4_q\ & (!\my_alu|Add3~25\))))
-- \my_alu|Add3~27\ = CARRY((\input_reg_b|q[13]~_Duplicate_4_q\ & ((!\my_alu|Add3~25\) # (!\input_reg_a|q[13]~_Duplicate_4_q\))) # (!\input_reg_b|q[13]~_Duplicate_4_q\ & (!\input_reg_a|q[13]~_Duplicate_4_q\ & !\my_alu|Add3~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[13]~_Duplicate_4_q\,
	datab => \input_reg_a|q[13]~_Duplicate_4_q\,
	datad => VCC,
	cin => \my_alu|Add3~25\,
	combout => \my_alu|Add3~26_combout\,
	cout => \my_alu|Add3~27\);

-- Location: LCCOMB_X30_Y22_N26
\my_alu|Add2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add2~26_combout\ = (\input_reg_b|q[13]~_Duplicate_4_q\ & ((\input_reg_a|q[13]~_Duplicate_4_q\ & (\my_alu|Add2~25\ & VCC)) # (!\input_reg_a|q[13]~_Duplicate_4_q\ & (!\my_alu|Add2~25\)))) # (!\input_reg_b|q[13]~_Duplicate_4_q\ & 
-- ((\input_reg_a|q[13]~_Duplicate_4_q\ & (!\my_alu|Add2~25\)) # (!\input_reg_a|q[13]~_Duplicate_4_q\ & ((\my_alu|Add2~25\) # (GND)))))
-- \my_alu|Add2~27\ = CARRY((\input_reg_b|q[13]~_Duplicate_4_q\ & (!\input_reg_a|q[13]~_Duplicate_4_q\ & !\my_alu|Add2~25\)) # (!\input_reg_b|q[13]~_Duplicate_4_q\ & ((!\my_alu|Add2~25\) # (!\input_reg_a|q[13]~_Duplicate_4_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[13]~_Duplicate_4_q\,
	datab => \input_reg_a|q[13]~_Duplicate_4_q\,
	datad => VCC,
	cin => \my_alu|Add2~25\,
	combout => \my_alu|Add2~26_combout\,
	cout => \my_alu|Add2~27\);

-- Location: LCCOMB_X32_Y21_N8
\my_alu|Add3~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add3~40_combout\ = ((\input_reg_a|q[20]~_Duplicate_4_q\ $ (\input_reg_b|q[20]~_Duplicate_4_q\ $ (\my_alu|Add3~39\)))) # (GND)
-- \my_alu|Add3~41\ = CARRY((\input_reg_a|q[20]~_Duplicate_4_q\ & ((!\my_alu|Add3~39\) # (!\input_reg_b|q[20]~_Duplicate_4_q\))) # (!\input_reg_a|q[20]~_Duplicate_4_q\ & (!\input_reg_b|q[20]~_Duplicate_4_q\ & !\my_alu|Add3~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_a|q[20]~_Duplicate_4_q\,
	datab => \input_reg_b|q[20]~_Duplicate_4_q\,
	datad => VCC,
	cin => \my_alu|Add3~39\,
	combout => \my_alu|Add3~40_combout\,
	cout => \my_alu|Add3~41\);

-- Location: LCCOMB_X32_Y21_N22
\my_alu|Add3~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add3~54_combout\ = (\input_reg_b|q[27]~_Duplicate_4_q\ & ((\input_reg_a|q[27]~_Duplicate_4_q\ & (!\my_alu|Add3~53\)) # (!\input_reg_a|q[27]~_Duplicate_4_q\ & ((\my_alu|Add3~53\) # (GND))))) # (!\input_reg_b|q[27]~_Duplicate_4_q\ & 
-- ((\input_reg_a|q[27]~_Duplicate_4_q\ & (\my_alu|Add3~53\ & VCC)) # (!\input_reg_a|q[27]~_Duplicate_4_q\ & (!\my_alu|Add3~53\))))
-- \my_alu|Add3~55\ = CARRY((\input_reg_b|q[27]~_Duplicate_4_q\ & ((!\my_alu|Add3~53\) # (!\input_reg_a|q[27]~_Duplicate_4_q\))) # (!\input_reg_b|q[27]~_Duplicate_4_q\ & (!\input_reg_a|q[27]~_Duplicate_4_q\ & !\my_alu|Add3~53\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[27]~_Duplicate_4_q\,
	datab => \input_reg_a|q[27]~_Duplicate_4_q\,
	datad => VCC,
	cin => \my_alu|Add3~53\,
	combout => \my_alu|Add3~54_combout\,
	cout => \my_alu|Add3~55\);

-- Location: LCCOMB_X30_Y21_N22
\my_alu|Add2~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add2~54_combout\ = (\input_reg_b|q[27]~_Duplicate_4_q\ & ((\input_reg_a|q[27]~_Duplicate_4_q\ & (\my_alu|Add2~53\ & VCC)) # (!\input_reg_a|q[27]~_Duplicate_4_q\ & (!\my_alu|Add2~53\)))) # (!\input_reg_b|q[27]~_Duplicate_4_q\ & 
-- ((\input_reg_a|q[27]~_Duplicate_4_q\ & (!\my_alu|Add2~53\)) # (!\input_reg_a|q[27]~_Duplicate_4_q\ & ((\my_alu|Add2~53\) # (GND)))))
-- \my_alu|Add2~55\ = CARRY((\input_reg_b|q[27]~_Duplicate_4_q\ & (!\input_reg_a|q[27]~_Duplicate_4_q\ & !\my_alu|Add2~53\)) # (!\input_reg_b|q[27]~_Duplicate_4_q\ & ((!\my_alu|Add2~53\) # (!\input_reg_a|q[27]~_Duplicate_4_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[27]~_Duplicate_4_q\,
	datab => \input_reg_a|q[27]~_Duplicate_4_q\,
	datad => VCC,
	cin => \my_alu|Add2~53\,
	combout => \my_alu|Add2~54_combout\,
	cout => \my_alu|Add2~55\);

-- Location: LCCOMB_X32_Y21_N24
\my_alu|Add3~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add3~56_combout\ = ((\input_reg_a|q[28]~_Duplicate_4_q\ $ (\input_reg_b|q[28]~_Duplicate_4_q\ $ (\my_alu|Add3~55\)))) # (GND)
-- \my_alu|Add3~57\ = CARRY((\input_reg_a|q[28]~_Duplicate_4_q\ & ((!\my_alu|Add3~55\) # (!\input_reg_b|q[28]~_Duplicate_4_q\))) # (!\input_reg_a|q[28]~_Duplicate_4_q\ & (!\input_reg_b|q[28]~_Duplicate_4_q\ & !\my_alu|Add3~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_a|q[28]~_Duplicate_4_q\,
	datab => \input_reg_b|q[28]~_Duplicate_4_q\,
	datad => VCC,
	cin => \my_alu|Add3~55\,
	combout => \my_alu|Add3~56_combout\,
	cout => \my_alu|Add3~57\);

-- Location: LCCOMB_X30_Y21_N24
\my_alu|Add2~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add2~56_combout\ = ((\input_reg_b|q[28]~_Duplicate_4_q\ $ (\input_reg_a|q[28]~_Duplicate_4_q\ $ (!\my_alu|Add2~55\)))) # (GND)
-- \my_alu|Add2~57\ = CARRY((\input_reg_b|q[28]~_Duplicate_4_q\ & ((\input_reg_a|q[28]~_Duplicate_4_q\) # (!\my_alu|Add2~55\))) # (!\input_reg_b|q[28]~_Duplicate_4_q\ & (\input_reg_a|q[28]~_Duplicate_4_q\ & !\my_alu|Add2~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[28]~_Duplicate_4_q\,
	datab => \input_reg_a|q[28]~_Duplicate_4_q\,
	datad => VCC,
	cin => \my_alu|Add2~55\,
	combout => \my_alu|Add2~56_combout\,
	cout => \my_alu|Add2~57\);

-- Location: LCCOMB_X32_Y21_N26
\my_alu|Add3~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add3~58_combout\ = (\input_reg_a|q[29]~_Duplicate_4_q\ & ((\input_reg_b|q[29]~_Duplicate_4_q\ & (!\my_alu|Add3~57\)) # (!\input_reg_b|q[29]~_Duplicate_4_q\ & (\my_alu|Add3~57\ & VCC)))) # (!\input_reg_a|q[29]~_Duplicate_4_q\ & 
-- ((\input_reg_b|q[29]~_Duplicate_4_q\ & ((\my_alu|Add3~57\) # (GND))) # (!\input_reg_b|q[29]~_Duplicate_4_q\ & (!\my_alu|Add3~57\))))
-- \my_alu|Add3~59\ = CARRY((\input_reg_a|q[29]~_Duplicate_4_q\ & (\input_reg_b|q[29]~_Duplicate_4_q\ & !\my_alu|Add3~57\)) # (!\input_reg_a|q[29]~_Duplicate_4_q\ & ((\input_reg_b|q[29]~_Duplicate_4_q\) # (!\my_alu|Add3~57\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_a|q[29]~_Duplicate_4_q\,
	datab => \input_reg_b|q[29]~_Duplicate_4_q\,
	datad => VCC,
	cin => \my_alu|Add3~57\,
	combout => \my_alu|Add3~58_combout\,
	cout => \my_alu|Add3~59\);

-- Location: LCCOMB_X30_Y21_N26
\my_alu|Add2~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add2~58_combout\ = (\input_reg_b|q[29]~_Duplicate_4_q\ & ((\input_reg_a|q[29]~_Duplicate_4_q\ & (\my_alu|Add2~57\ & VCC)) # (!\input_reg_a|q[29]~_Duplicate_4_q\ & (!\my_alu|Add2~57\)))) # (!\input_reg_b|q[29]~_Duplicate_4_q\ & 
-- ((\input_reg_a|q[29]~_Duplicate_4_q\ & (!\my_alu|Add2~57\)) # (!\input_reg_a|q[29]~_Duplicate_4_q\ & ((\my_alu|Add2~57\) # (GND)))))
-- \my_alu|Add2~59\ = CARRY((\input_reg_b|q[29]~_Duplicate_4_q\ & (!\input_reg_a|q[29]~_Duplicate_4_q\ & !\my_alu|Add2~57\)) # (!\input_reg_b|q[29]~_Duplicate_4_q\ & ((!\my_alu|Add2~57\) # (!\input_reg_a|q[29]~_Duplicate_4_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[29]~_Duplicate_4_q\,
	datab => \input_reg_a|q[29]~_Duplicate_4_q\,
	datad => VCC,
	cin => \my_alu|Add2~57\,
	combout => \my_alu|Add2~58_combout\,
	cout => \my_alu|Add2~59\);

-- Location: LCCOMB_X32_Y19_N20
\my_alu|ShiftRight0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight0~4_combout\ = (!\input_reg_shamt|q\(2) & (!\input_reg_shamt|q\(1) & (!\input_reg_shamt|q\(3) & !\input_reg_shamt|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(2),
	datab => \input_reg_shamt|q\(1),
	datac => \input_reg_shamt|q\(3),
	datad => \input_reg_shamt|q\(0),
	combout => \my_alu|ShiftRight0~4_combout\);

-- Location: LCCOMB_X30_Y18_N30
\my_alu|Mux31~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux31~4_combout\ = (\my_alu|ShiftRight0~4_combout\ & (!\input_reg_shamt|q\(4) & (\input_reg_b|q[0]~_Duplicate_4_q\ & \my_alu|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|ShiftRight0~4_combout\,
	datab => \input_reg_shamt|q\(4),
	datac => \input_reg_b|q[0]~_Duplicate_4_q\,
	datad => \my_alu|Mux0~0_combout\,
	combout => \my_alu|Mux31~4_combout\);

-- Location: LCCOMB_X35_Y22_N4
\my_alu|ShiftRight0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight0~18_combout\ = (\input_reg_shamt|q\(1) & ((\input_reg_shamt|q\(0) & (\input_reg_b|q[7]~_Duplicate_4_q\)) # (!\input_reg_shamt|q\(0) & ((\input_reg_b|q[6]~_Duplicate_4_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[7]~_Duplicate_4_q\,
	datab => \input_reg_shamt|q\(1),
	datac => \input_reg_b|q[6]~_Duplicate_4_q\,
	datad => \input_reg_shamt|q\(0),
	combout => \my_alu|ShiftRight0~18_combout\);

-- Location: LCCOMB_X32_Y20_N6
\my_alu|ShiftRight0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight0~25_combout\ = (\input_reg_shamt|q\(0) & (\my_alu|ShiftRight0~23_combout\)) # (!\input_reg_shamt|q\(0) & ((\my_alu|ShiftRight0~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_alu|ShiftRight0~23_combout\,
	datac => \my_alu|ShiftRight0~24_combout\,
	datad => \input_reg_shamt|q\(0),
	combout => \my_alu|ShiftRight0~25_combout\);

-- Location: FF_X34_Y20_N31
\input_reg_a|q[25]~_Duplicate_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a[25]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_reg_a|q[25]~_Duplicate_4_q\);

-- Location: FF_X28_Y21_N9
\input_reg_a|q[18]~_Duplicate_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a[18]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_reg_a|q[18]~_Duplicate_4_q\);

-- Location: LCCOMB_X25_Y20_N4
\my_alu|Mux31~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux31~12_combout\ = (\input_reg_op|q\(1) & (((\input_reg_op|q\(0))))) # (!\input_reg_op|q\(1) & ((\input_reg_op|q\(0) & (\my_alu|Add3~0_combout\)) # (!\input_reg_op|q\(0) & ((\my_alu|Add2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Add3~0_combout\,
	datab => \my_alu|Add2~0_combout\,
	datac => \input_reg_op|q\(1),
	datad => \input_reg_op|q\(0),
	combout => \my_alu|Mux31~12_combout\);

-- Location: LCCOMB_X25_Y20_N6
\my_alu|Mux31~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux31~13_combout\ = (\input_reg_op|q\(1) & ((\my_alu|Mux31~12_combout\ & ((\my_alu|Mult1|auto_generated|w513w\(0)))) # (!\my_alu|Mux31~12_combout\ & (\my_alu|Mult0|auto_generated|w569w\(0))))) # (!\input_reg_op|q\(1) & 
-- (((\my_alu|Mux31~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult0|auto_generated|w569w\(0),
	datab => \input_reg_op|q\(1),
	datac => \my_alu|Mux31~12_combout\,
	datad => \my_alu|Mult1|auto_generated|w513w\(0),
	combout => \my_alu|Mux31~13_combout\);

-- Location: LCCOMB_X25_Y20_N28
\my_alu|Mux31~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux31~14_combout\ = (\input_reg_op|q\(3) & (\input_reg_a|q[31]~_Duplicate_4_q\ $ ((!\input_reg_b|q[31]~_Duplicate_4_q\)))) # (!\input_reg_op|q\(3) & (((\my_alu|Mux31~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(3),
	datab => \input_reg_a|q[31]~_Duplicate_4_q\,
	datac => \input_reg_b|q[31]~_Duplicate_4_q\,
	datad => \my_alu|Mux31~13_combout\,
	combout => \my_alu|Mux31~14_combout\);

-- Location: LCCOMB_X25_Y20_N10
\my_alu|Mux31~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux31~15_combout\ = (\input_reg_op|q\(0) & (((\my_alu|Mult1|auto_generated|w513w\(0))) # (!\input_reg_op|q\(1)))) # (!\input_reg_op|q\(0) & (\input_reg_op|q\(1) & (\my_alu|Mult0|auto_generated|w569w\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(0),
	datab => \input_reg_op|q\(1),
	datac => \my_alu|Mult0|auto_generated|w569w\(0),
	datad => \my_alu|Mult1|auto_generated|w513w\(0),
	combout => \my_alu|Mux31~15_combout\);

-- Location: LCCOMB_X25_Y20_N12
\my_alu|Mux31~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux31~16_combout\ = (\input_reg_op|q\(1) & (((\my_alu|Mux31~15_combout\)))) # (!\input_reg_op|q\(1) & ((\my_alu|Mux31~15_combout\ & (\my_alu|Add3~0_combout\)) # (!\my_alu|Mux31~15_combout\ & ((\my_alu|Add2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Add3~0_combout\,
	datab => \my_alu|Add2~0_combout\,
	datac => \input_reg_op|q\(1),
	datad => \my_alu|Mux31~15_combout\,
	combout => \my_alu|Mux31~16_combout\);

-- Location: LCCOMB_X25_Y20_N2
\my_alu|Mux31~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux31~17_combout\ = (\input_reg_op|q\(3) & (!\my_alu|Mux31~21_combout\)) # (!\input_reg_op|q\(3) & ((\my_alu|Mux31~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_alu|Mux31~21_combout\,
	datac => \input_reg_op|q\(3),
	datad => \my_alu|Mux31~16_combout\,
	combout => \my_alu|Mux31~17_combout\);

-- Location: LCCOMB_X25_Y20_N20
\my_alu|Mux31~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux31~18_combout\ = (\my_alu|Mux31~17_combout\) # ((\my_alu|Mux31~14_combout\ & \my_alu|diff[31]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_alu|Mux31~14_combout\,
	datac => \my_alu|diff[31]~0_combout\,
	datad => \my_alu|Mux31~17_combout\,
	combout => \my_alu|Mux31~18_combout\);

-- Location: LCCOMB_X32_Y19_N10
\my_alu|ShiftRight0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight0~32_combout\ = (\input_reg_shamt|q\(3) & ((\my_alu|ShiftRight0~30_combout\) # ((\my_alu|ShiftRight0~31_combout\ & \input_reg_shamt|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(3),
	datab => \my_alu|ShiftRight0~31_combout\,
	datac => \my_alu|ShiftRight0~30_combout\,
	datad => \input_reg_shamt|q\(2),
	combout => \my_alu|ShiftRight0~32_combout\);

-- Location: LCCOMB_X32_Y19_N28
\my_alu|ShiftRight0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight0~33_combout\ = (\my_alu|ShiftRight0~32_combout\) # ((!\input_reg_shamt|q\(3) & \my_alu|ShiftRight0~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(3),
	datac => \my_alu|ShiftRight0~29_combout\,
	datad => \my_alu|ShiftRight0~32_combout\,
	combout => \my_alu|ShiftRight0~33_combout\);

-- Location: LCCOMB_X32_Y19_N6
\my_alu|Mux30~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux30~5_combout\ = (\my_alu|Mux0~0_combout\ & (!\input_reg_shamt|q\(1) & (\my_alu|ShiftLeft0~6_combout\ & \my_alu|ShiftRight0~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mux0~0_combout\,
	datab => \input_reg_shamt|q\(1),
	datac => \my_alu|ShiftLeft0~6_combout\,
	datad => \my_alu|ShiftRight0~34_combout\,
	combout => \my_alu|Mux30~5_combout\);

-- Location: LCCOMB_X34_Y19_N12
\my_alu|ShiftLeft0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftLeft0~7_combout\ = (!\input_reg_shamt|q\(0) & ((\input_reg_shamt|q\(1) & (\input_reg_b|q[0]~_Duplicate_4_q\)) # (!\input_reg_shamt|q\(1) & ((\input_reg_b|q[2]~_Duplicate_4_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(0),
	datab => \input_reg_shamt|q\(1),
	datac => \input_reg_b|q[0]~_Duplicate_4_q\,
	datad => \input_reg_b|q[2]~_Duplicate_4_q\,
	combout => \my_alu|ShiftLeft0~7_combout\);

-- Location: LCCOMB_X34_Y19_N10
\my_alu|Mux29~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux29~5_combout\ = (\input_reg_shamt|q\(3)) # ((!\input_reg_shamt|q\(2) & \input_reg_shamt|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(3),
	datab => \input_reg_shamt|q\(2),
	datad => \input_reg_shamt|q\(1),
	combout => \my_alu|Mux29~5_combout\);

-- Location: LCCOMB_X34_Y19_N20
\my_alu|Mux29~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux29~6_combout\ = (\my_alu|ShiftRight0~34_combout\ & (\my_alu|ShiftRight1~9_combout\ & (!\my_alu|Mux29~5_combout\))) # (!\my_alu|ShiftRight0~34_combout\ & (((\my_alu|Mux29~5_combout\) # (\my_alu|ShiftRight1~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|ShiftRight0~34_combout\,
	datab => \my_alu|ShiftRight1~9_combout\,
	datac => \my_alu|Mux29~5_combout\,
	datad => \my_alu|ShiftRight1~32_combout\,
	combout => \my_alu|Mux29~6_combout\);

-- Location: LCCOMB_X30_Y23_N4
\my_alu|ShiftRight0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight0~43_combout\ = (\input_reg_shamt|q\(2) & ((\my_alu|ShiftRight1~34_combout\))) # (!\input_reg_shamt|q\(2) & (\my_alu|ShiftRight1~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input_reg_shamt|q\(2),
	datac => \my_alu|ShiftRight1~36_combout\,
	datad => \my_alu|ShiftRight1~34_combout\,
	combout => \my_alu|ShiftRight0~43_combout\);

-- Location: LCCOMB_X29_Y19_N2
\my_alu|Mux29~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux29~7_combout\ = (\my_alu|Mux29~5_combout\ & ((\my_alu|Mux29~6_combout\ & ((\my_alu|ShiftRight0~43_combout\))) # (!\my_alu|Mux29~6_combout\ & (\my_alu|ShiftRight1~10_combout\)))) # (!\my_alu|Mux29~5_combout\ & (((\my_alu|Mux29~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mux29~5_combout\,
	datab => \my_alu|ShiftRight1~10_combout\,
	datac => \my_alu|Mux29~6_combout\,
	datad => \my_alu|ShiftRight0~43_combout\,
	combout => \my_alu|Mux29~7_combout\);

-- Location: LCCOMB_X30_Y19_N12
\my_alu|ShiftRight1~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight1~37_combout\ = (!\input_reg_shamt|q\(1) & ((\input_reg_shamt|q\(0) & (\input_reg_b|q[28]~_Duplicate_4_q\)) # (!\input_reg_shamt|q\(0) & ((\input_reg_b|q[27]~_Duplicate_4_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[28]~_Duplicate_4_q\,
	datab => \input_reg_b|q[27]~_Duplicate_4_q\,
	datac => \input_reg_shamt|q\(0),
	datad => \input_reg_shamt|q\(1),
	combout => \my_alu|ShiftRight1~37_combout\);

-- Location: LCCOMB_X30_Y23_N28
\my_alu|ShiftRight0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight0~44_combout\ = (\input_reg_shamt|q\(2) & (((\my_alu|ShiftLeft0~11_combout\ & \input_reg_b|q[31]~_Duplicate_4_q\)))) # (!\input_reg_shamt|q\(2) & (\my_alu|ShiftRight1~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|ShiftRight1~38_combout\,
	datab => \my_alu|ShiftLeft0~11_combout\,
	datac => \input_reg_b|q[31]~_Duplicate_4_q\,
	datad => \input_reg_shamt|q\(2),
	combout => \my_alu|ShiftRight0~44_combout\);

-- Location: LCCOMB_X30_Y23_N0
\my_alu|ShiftRight0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight0~46_combout\ = (\input_reg_shamt|q\(3) & (\my_alu|ShiftRight0~44_combout\)) # (!\input_reg_shamt|q\(3) & ((\my_alu|ShiftRight0~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(3),
	datab => \my_alu|ShiftRight0~44_combout\,
	datac => \my_alu|ShiftRight0~45_combout\,
	combout => \my_alu|ShiftRight0~46_combout\);

-- Location: LCCOMB_X31_Y23_N16
\my_alu|ShiftLeft0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftLeft0~16_combout\ = (!\input_reg_shamt|q\(3) & \my_alu|ShiftLeft0~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \input_reg_shamt|q\(3),
	datad => \my_alu|ShiftLeft0~15_combout\,
	combout => \my_alu|ShiftLeft0~16_combout\);

-- Location: LCCOMB_X31_Y23_N10
\my_alu|ShiftLeft0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftLeft0~20_combout\ = (!\input_reg_shamt|q\(3) & ((\input_reg_shamt|q\(2) & ((\my_alu|ShiftLeft0~17_combout\))) # (!\input_reg_shamt|q\(2) & (\my_alu|ShiftLeft0~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|ShiftLeft0~19_combout\,
	datab => \input_reg_shamt|q\(3),
	datac => \input_reg_shamt|q\(2),
	datad => \my_alu|ShiftLeft0~17_combout\,
	combout => \my_alu|ShiftLeft0~20_combout\);

-- Location: LCCOMB_X28_Y22_N2
\my_alu|Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux26~0_combout\ = (\input_reg_b|q[5]~_Duplicate_4_q\ & ((\input_reg_a|q[5]~_Duplicate_4_q\ & ((!\input_reg_op|q\(1)))) # (!\input_reg_a|q[5]~_Duplicate_4_q\ & (\input_reg_op|q\(0))))) # (!\input_reg_b|q[5]~_Duplicate_4_q\ & ((\input_reg_op|q\(0) 
-- & (\input_reg_a|q[5]~_Duplicate_4_q\)) # (!\input_reg_op|q\(0) & (!\input_reg_a|q[5]~_Duplicate_4_q\ & \input_reg_op|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(0),
	datab => \input_reg_b|q[5]~_Duplicate_4_q\,
	datac => \input_reg_a|q[5]~_Duplicate_4_q\,
	datad => \input_reg_op|q\(1),
	combout => \my_alu|Mux26~0_combout\);

-- Location: LCCOMB_X32_Y20_N14
\my_alu|Mux26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux26~1_combout\ = (\my_alu|Mux27~5_combout\ & (((\my_alu|ShiftRight0~38_combout\) # (\my_alu|Mux27~6_combout\)))) # (!\my_alu|Mux27~5_combout\ & (\my_alu|ShiftRight0~36_combout\ & ((!\my_alu|Mux27~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|ShiftRight0~36_combout\,
	datab => \my_alu|Mux27~5_combout\,
	datac => \my_alu|ShiftRight0~38_combout\,
	datad => \my_alu|Mux27~6_combout\,
	combout => \my_alu|Mux26~1_combout\);

-- Location: LCCOMB_X32_Y20_N2
\my_alu|Mux26~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux26~2_combout\ = (\my_alu|Mux27~6_combout\ & ((\my_alu|Mux26~1_combout\ & ((\my_alu|ShiftRight0~54_combout\))) # (!\my_alu|Mux26~1_combout\ & (\my_alu|ShiftRight1~49_combout\)))) # (!\my_alu|Mux27~6_combout\ & (((\my_alu|Mux26~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mux27~6_combout\,
	datab => \my_alu|ShiftRight1~49_combout\,
	datac => \my_alu|Mux26~1_combout\,
	datad => \my_alu|ShiftRight0~54_combout\,
	combout => \my_alu|Mux26~2_combout\);

-- Location: LCCOMB_X28_Y22_N4
\my_alu|Mux26~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux26~3_combout\ = (!\input_reg_op|q\(2) & \my_alu|Mux26~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \input_reg_op|q\(2),
	datad => \my_alu|Mux26~2_combout\,
	combout => \my_alu|Mux26~3_combout\);

-- Location: LCCOMB_X28_Y22_N26
\my_alu|Mux26~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux26~4_combout\ = (\my_alu|Mux27~1_combout\ & (((\my_alu|Mux26~3_combout\) # (\my_alu|Mux27~0_combout\)))) # (!\my_alu|Mux27~1_combout\ & (\my_alu|Mux26~0_combout\ & ((!\my_alu|Mux27~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mux27~1_combout\,
	datab => \my_alu|Mux26~0_combout\,
	datac => \my_alu|Mux26~3_combout\,
	datad => \my_alu|Mux27~0_combout\,
	combout => \my_alu|Mux26~4_combout\);

-- Location: LCCOMB_X28_Y23_N22
\my_alu|Mux26~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux26~5_combout\ = (\my_alu|Mux27~2_combout\ & ((\my_alu|Mux26~4_combout\ & ((\my_alu|ShiftRight0~53_combout\))) # (!\my_alu|Mux26~4_combout\ & (\my_alu|ShiftLeft0~20_combout\)))) # (!\my_alu|Mux27~2_combout\ & (((\my_alu|Mux26~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|ShiftLeft0~20_combout\,
	datab => \my_alu|Mux27~2_combout\,
	datac => \my_alu|ShiftRight0~53_combout\,
	datad => \my_alu|Mux26~4_combout\,
	combout => \my_alu|Mux26~5_combout\);

-- Location: LCCOMB_X29_Y19_N20
\my_alu|ShiftRight0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight0~57_combout\ = (\input_reg_shamt|q\(3) & (!\input_reg_shamt|q\(2) & (\my_alu|ShiftRight0~56_combout\))) # (!\input_reg_shamt|q\(3) & (((\my_alu|ShiftRight0~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(3),
	datab => \input_reg_shamt|q\(2),
	datac => \my_alu|ShiftRight0~56_combout\,
	datad => \my_alu|ShiftRight0~55_combout\,
	combout => \my_alu|ShiftRight0~57_combout\);

-- Location: LCCOMB_X35_Y22_N26
\my_alu|Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux24~0_combout\ = (\input_reg_a|q[7]~_Duplicate_4_q\ & ((\input_reg_b|q[7]~_Duplicate_4_q\ & (!\input_reg_op|q\(1))) # (!\input_reg_b|q[7]~_Duplicate_4_q\ & ((\input_reg_op|q\(0)))))) # (!\input_reg_a|q[7]~_Duplicate_4_q\ & ((\input_reg_op|q\(0) 
-- & ((\input_reg_b|q[7]~_Duplicate_4_q\))) # (!\input_reg_op|q\(0) & (\input_reg_op|q\(1) & !\input_reg_b|q[7]~_Duplicate_4_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_a|q[7]~_Duplicate_4_q\,
	datab => \input_reg_op|q\(1),
	datac => \input_reg_op|q\(0),
	datad => \input_reg_b|q[7]~_Duplicate_4_q\,
	combout => \my_alu|Mux24~0_combout\);

-- Location: LCCOMB_X28_Y22_N12
\my_alu|Mux24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux24~1_combout\ = (\my_alu|Mux27~6_combout\ & (((\my_alu|Mux27~5_combout\)))) # (!\my_alu|Mux27~6_combout\ & ((\my_alu|Mux27~5_combout\ & ((\my_alu|ShiftRight1~45_combout\))) # (!\my_alu|Mux27~5_combout\ & (\my_alu|ShiftRight1~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|ShiftRight1~43_combout\,
	datab => \my_alu|Mux27~6_combout\,
	datac => \my_alu|Mux27~5_combout\,
	datad => \my_alu|ShiftRight1~45_combout\,
	combout => \my_alu|Mux24~1_combout\);

-- Location: LCCOMB_X29_Y22_N26
\my_alu|ShiftRight0~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight0~61_combout\ = (\input_reg_shamt|q\(2) & (\my_alu|ShiftRight1~40_combout\)) # (!\input_reg_shamt|q\(2) & ((\my_alu|ShiftRight1~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_alu|ShiftRight1~40_combout\,
	datac => \input_reg_shamt|q\(2),
	datad => \my_alu|ShiftRight1~44_combout\,
	combout => \my_alu|ShiftRight0~61_combout\);

-- Location: LCCOMB_X29_Y22_N28
\my_alu|Mux24~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux24~2_combout\ = (\my_alu|Mux24~1_combout\ & (((\my_alu|ShiftRight0~61_combout\)) # (!\my_alu|Mux27~6_combout\))) # (!\my_alu|Mux24~1_combout\ & (\my_alu|Mux27~6_combout\ & ((\my_alu|ShiftRight1~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mux24~1_combout\,
	datab => \my_alu|Mux27~6_combout\,
	datac => \my_alu|ShiftRight0~61_combout\,
	datad => \my_alu|ShiftRight1~52_combout\,
	combout => \my_alu|Mux24~2_combout\);

-- Location: LCCOMB_X28_Y22_N22
\my_alu|Mux24~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux24~3_combout\ = (!\input_reg_op|q\(2) & \my_alu|Mux24~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \input_reg_op|q\(2),
	datad => \my_alu|Mux24~2_combout\,
	combout => \my_alu|Mux24~3_combout\);

-- Location: LCCOMB_X28_Y22_N8
\my_alu|Mux24~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux24~4_combout\ = (\my_alu|Mux27~1_combout\ & (((\my_alu|Mux24~3_combout\) # (\my_alu|Mux27~0_combout\)))) # (!\my_alu|Mux27~1_combout\ & (\my_alu|Mux24~0_combout\ & ((!\my_alu|Mux27~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mux27~1_combout\,
	datab => \my_alu|Mux24~0_combout\,
	datac => \my_alu|Mux24~3_combout\,
	datad => \my_alu|Mux27~0_combout\,
	combout => \my_alu|Mux24~4_combout\);

-- Location: LCCOMB_X29_Y22_N6
\my_alu|Mux24~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux24~6_combout\ = (\input_reg_op|q\(0) & ((\input_reg_op|q\(1)) # ((\my_alu|Add3~14_combout\)))) # (!\input_reg_op|q\(0) & (!\input_reg_op|q\(1) & (\my_alu|Add2~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(0),
	datab => \input_reg_op|q\(1),
	datac => \my_alu|Add2~14_combout\,
	datad => \my_alu|Add3~14_combout\,
	combout => \my_alu|Mux24~6_combout\);

-- Location: LCCOMB_X29_Y20_N10
\my_alu|Mux24~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux24~7_combout\ = (\input_reg_op|q\(1) & ((\my_alu|Mux24~6_combout\ & ((\my_alu|Mult1|auto_generated|w513w\(7)))) # (!\my_alu|Mux24~6_combout\ & (\my_alu|Mult0|auto_generated|w569w\(7))))) # (!\input_reg_op|q\(1) & (((\my_alu|Mux24~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(1),
	datab => \my_alu|Mult0|auto_generated|w569w\(7),
	datac => \my_alu|Mux24~6_combout\,
	datad => \my_alu|Mult1|auto_generated|w513w\(7),
	combout => \my_alu|Mux24~7_combout\);

-- Location: LCCOMB_X29_Y19_N6
\my_alu|Mux21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux21~2_combout\ = (\my_alu|Mux22~1_combout\ & ((\my_alu|Mux29~9_combout\ & ((\my_alu|ShiftRight0~43_combout\))) # (!\my_alu|Mux29~9_combout\ & (\my_alu|ShiftRight1~55_combout\)))) # (!\my_alu|Mux22~1_combout\ & (((\my_alu|Mux29~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mux22~1_combout\,
	datab => \my_alu|ShiftRight1~55_combout\,
	datac => \my_alu|Mux29~9_combout\,
	datad => \my_alu|ShiftRight0~43_combout\,
	combout => \my_alu|Mux21~2_combout\);

-- Location: LCCOMB_X30_Y23_N18
\my_alu|ShiftRight0~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight0~65_combout\ = (!\input_reg_shamt|q\(1) & (\input_reg_shamt|q\(2) & (!\input_reg_shamt|q\(0) & !\input_reg_shamt|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(1),
	datab => \input_reg_shamt|q\(2),
	datac => \input_reg_shamt|q\(0),
	datad => \input_reg_shamt|q\(3),
	combout => \my_alu|ShiftRight0~65_combout\);

-- Location: LCCOMB_X34_Y23_N26
\my_alu|ShiftLeft0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftLeft0~46_combout\ = (\input_reg_shamt|q\(0) & ((\my_alu|ShiftLeft0~41_combout\))) # (!\input_reg_shamt|q\(0) & (\my_alu|ShiftLeft0~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input_reg_shamt|q\(0),
	datac => \my_alu|ShiftLeft0~45_combout\,
	datad => \my_alu|ShiftLeft0~41_combout\,
	combout => \my_alu|ShiftLeft0~46_combout\);

-- Location: LCCOMB_X31_Y23_N12
\my_alu|ShiftLeft0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftLeft0~47_combout\ = (\input_reg_shamt|q\(2) & ((\my_alu|ShiftLeft0~30_combout\))) # (!\input_reg_shamt|q\(2) & (\my_alu|ShiftLeft0~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(2),
	datac => \my_alu|ShiftLeft0~46_combout\,
	datad => \my_alu|ShiftLeft0~30_combout\,
	combout => \my_alu|ShiftLeft0~47_combout\);

-- Location: LCCOMB_X30_Y20_N26
\my_alu|ShiftRight0~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight0~67_combout\ = (\my_alu|ShiftRight0~34_combout\ & ((\my_alu|ShiftRight0~5_combout\) # ((\input_reg_shamt|q\(1) & \my_alu|ShiftRight1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|ShiftRight0~34_combout\,
	datab => \my_alu|ShiftRight0~5_combout\,
	datac => \input_reg_shamt|q\(1),
	datad => \my_alu|ShiftRight1~8_combout\,
	combout => \my_alu|ShiftRight0~67_combout\);

-- Location: LCCOMB_X30_Y20_N16
\my_alu|Mux19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux19~2_combout\ = (\my_alu|Mux29~9_combout\ & (((\my_alu|ShiftRight0~50_combout\) # (!\my_alu|Mux22~1_combout\)))) # (!\my_alu|Mux29~9_combout\ & (\my_alu|ShiftRight1~60_combout\ & (\my_alu|Mux22~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|ShiftRight1~60_combout\,
	datab => \my_alu|Mux29~9_combout\,
	datac => \my_alu|Mux22~1_combout\,
	datad => \my_alu|ShiftRight0~50_combout\,
	combout => \my_alu|Mux19~2_combout\);

-- Location: LCCOMB_X30_Y20_N18
\my_alu|Mux19~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux19~3_combout\ = (\my_alu|Mux29~4_combout\ & ((\my_alu|Mux19~2_combout\ & ((\my_alu|ShiftRight0~67_combout\))) # (!\my_alu|Mux19~2_combout\ & (\my_alu|ShiftLeft0~48_combout\)))) # (!\my_alu|Mux29~4_combout\ & (((\my_alu|Mux19~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mux29~4_combout\,
	datab => \my_alu|ShiftLeft0~48_combout\,
	datac => \my_alu|ShiftRight0~67_combout\,
	datad => \my_alu|Mux19~2_combout\,
	combout => \my_alu|Mux19~3_combout\);

-- Location: LCCOMB_X29_Y21_N18
\my_alu|Mux19~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux19~4_combout\ = (\input_reg_b|q[12]~_Duplicate_4_q\ & ((\input_reg_a|q[12]~_Duplicate_4_q\ & ((!\input_reg_op|q\(1)))) # (!\input_reg_a|q[12]~_Duplicate_4_q\ & (\input_reg_op|q\(0))))) # (!\input_reg_b|q[12]~_Duplicate_4_q\ & 
-- ((\input_reg_op|q\(0) & (\input_reg_a|q[12]~_Duplicate_4_q\)) # (!\input_reg_op|q\(0) & (!\input_reg_a|q[12]~_Duplicate_4_q\ & \input_reg_op|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(0),
	datab => \input_reg_b|q[12]~_Duplicate_4_q\,
	datac => \input_reg_a|q[12]~_Duplicate_4_q\,
	datad => \input_reg_op|q\(1),
	combout => \my_alu|Mux19~4_combout\);

-- Location: LCCOMB_X29_Y18_N22
\my_alu|Mux19~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux19~5_combout\ = (\my_alu|Mux22~0_combout\ & (((\input_reg_op|q\(3))))) # (!\my_alu|Mux22~0_combout\ & ((\input_reg_op|q\(3) & (\my_alu|Mux19~3_combout\)) # (!\input_reg_op|q\(3) & ((\my_alu|Mux19~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mux19~3_combout\,
	datab => \my_alu|Mux22~0_combout\,
	datac => \input_reg_op|q\(3),
	datad => \my_alu|Mux19~4_combout\,
	combout => \my_alu|Mux19~5_combout\);

-- Location: LCCOMB_X29_Y22_N2
\my_alu|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux18~0_combout\ = (\input_reg_op|q\(0) & ((\input_reg_op|q\(1)) # ((\my_alu|Add3~26_combout\)))) # (!\input_reg_op|q\(0) & (!\input_reg_op|q\(1) & ((\my_alu|Add2~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(0),
	datab => \input_reg_op|q\(1),
	datac => \my_alu|Add3~26_combout\,
	datad => \my_alu|Add2~26_combout\,
	combout => \my_alu|Mux18~0_combout\);

-- Location: LCCOMB_X29_Y18_N10
\my_alu|Mux18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux18~1_combout\ = (\input_reg_op|q\(1) & ((\my_alu|Mux18~0_combout\ & (\my_alu|Mult1|auto_generated|w513w\(13))) # (!\my_alu|Mux18~0_combout\ & ((\my_alu|Mult0|auto_generated|w569w\(13)))))) # (!\input_reg_op|q\(1) & 
-- (((\my_alu|Mux18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult1|auto_generated|w513w\(13),
	datab => \input_reg_op|q\(1),
	datac => \my_alu|Mux18~0_combout\,
	datad => \my_alu|Mult0|auto_generated|w569w\(13),
	combout => \my_alu|Mux18~1_combout\);

-- Location: LCCOMB_X29_Y23_N28
\my_alu|ShiftRight1~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight1~58_combout\ = (\my_alu|ShiftLeft0~24_combout\ & (\input_reg_b|q[31]~_Duplicate_4_q\)) # (!\my_alu|ShiftLeft0~24_combout\ & ((\input_reg_shamt|q\(3) & (\input_reg_b|q[31]~_Duplicate_4_q\)) # (!\input_reg_shamt|q\(3) & 
-- ((\input_reg_b|q[30]~_Duplicate_4_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[31]~_Duplicate_4_q\,
	datab => \my_alu|ShiftLeft0~24_combout\,
	datac => \input_reg_shamt|q\(3),
	datad => \input_reg_b|q[30]~_Duplicate_4_q\,
	combout => \my_alu|ShiftRight1~58_combout\);

-- Location: LCCOMB_X29_Y23_N2
\my_alu|Mux17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux17~2_combout\ = (\my_alu|Mux22~1_combout\ & ((\my_alu|Mux29~9_combout\ & ((\my_alu|ShiftRight0~58_combout\))) # (!\my_alu|Mux29~9_combout\ & (\my_alu|ShiftRight1~58_combout\)))) # (!\my_alu|Mux22~1_combout\ & (((\my_alu|Mux29~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mux22~1_combout\,
	datab => \my_alu|ShiftRight1~58_combout\,
	datac => \my_alu|Mux29~9_combout\,
	datad => \my_alu|ShiftRight0~58_combout\,
	combout => \my_alu|Mux17~2_combout\);

-- Location: LCCOMB_X28_Y19_N12
\my_alu|Mux17~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux17~3_combout\ = (\my_alu|Mux17~2_combout\ & ((\my_alu|ShiftRight0~71_combout\) # ((!\my_alu|Mux29~4_combout\)))) # (!\my_alu|Mux17~2_combout\ & (((\my_alu|Mux29~4_combout\ & \my_alu|ShiftLeft0~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|ShiftRight0~71_combout\,
	datab => \my_alu|Mux17~2_combout\,
	datac => \my_alu|Mux29~4_combout\,
	datad => \my_alu|ShiftLeft0~58_combout\,
	combout => \my_alu|Mux17~3_combout\);

-- Location: LCCOMB_X29_Y22_N14
\my_alu|Mux17~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux17~4_combout\ = (\input_reg_a|q[14]~_Duplicate_4_q\ & ((\input_reg_b|q[14]~_Duplicate_4_q\ & ((!\input_reg_op|q\(1)))) # (!\input_reg_b|q[14]~_Duplicate_4_q\ & (\input_reg_op|q\(0))))) # (!\input_reg_a|q[14]~_Duplicate_4_q\ & 
-- ((\input_reg_op|q\(0) & (\input_reg_b|q[14]~_Duplicate_4_q\)) # (!\input_reg_op|q\(0) & (!\input_reg_b|q[14]~_Duplicate_4_q\ & \input_reg_op|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(0),
	datab => \input_reg_a|q[14]~_Duplicate_4_q\,
	datac => \input_reg_b|q[14]~_Duplicate_4_q\,
	datad => \input_reg_op|q\(1),
	combout => \my_alu|Mux17~4_combout\);

-- Location: LCCOMB_X28_Y19_N30
\my_alu|Mux17~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux17~5_combout\ = (\input_reg_op|q\(3) & (((\my_alu|Mux22~0_combout\) # (\my_alu|Mux17~3_combout\)))) # (!\input_reg_op|q\(3) & (\my_alu|Mux17~4_combout\ & (!\my_alu|Mux22~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(3),
	datab => \my_alu|Mux17~4_combout\,
	datac => \my_alu|Mux22~0_combout\,
	datad => \my_alu|Mux17~3_combout\,
	combout => \my_alu|Mux17~5_combout\);

-- Location: LCCOMB_X29_Y23_N22
\my_alu|Mux16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux16~2_combout\ = (\my_alu|Mux29~9_combout\ & ((\my_alu|ShiftRight0~61_combout\) # ((!\my_alu|Mux22~1_combout\)))) # (!\my_alu|Mux29~9_combout\ & (((\my_alu|Mux22~1_combout\ & \input_reg_b|q[31]~_Duplicate_4_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mux29~9_combout\,
	datab => \my_alu|ShiftRight0~61_combout\,
	datac => \my_alu|Mux22~1_combout\,
	datad => \input_reg_b|q[31]~_Duplicate_4_q\,
	combout => \my_alu|Mux16~2_combout\);

-- Location: LCCOMB_X30_Y18_N26
\my_alu|ShiftRight0~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight0~69_combout\ = (\my_alu|ShiftRight0~10_combout\) # ((!\input_reg_shamt|q\(3) & \my_alu|ShiftRight0~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(3),
	datac => \my_alu|ShiftRight0~10_combout\,
	datad => \my_alu|ShiftRight0~17_combout\,
	combout => \my_alu|ShiftRight0~69_combout\);

-- Location: LCCOMB_X33_Y22_N18
\my_alu|ShiftLeft0~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftLeft0~68_combout\ = (\input_reg_shamt|q\(0) & (\my_alu|ShiftLeft0~64_combout\)) # (!\input_reg_shamt|q\(0) & ((\my_alu|ShiftLeft0~67_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_alu|ShiftLeft0~64_combout\,
	datac => \my_alu|ShiftLeft0~67_combout\,
	datad => \input_reg_shamt|q\(0),
	combout => \my_alu|ShiftLeft0~68_combout\);

-- Location: LCCOMB_X33_Y22_N14
\my_alu|ShiftLeft0~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftLeft0~69_combout\ = (\input_reg_shamt|q\(2) & (\my_alu|ShiftLeft0~51_combout\)) # (!\input_reg_shamt|q\(2) & ((\my_alu|ShiftLeft0~68_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|ShiftLeft0~51_combout\,
	datab => \my_alu|ShiftLeft0~68_combout\,
	datad => \input_reg_shamt|q\(2),
	combout => \my_alu|ShiftLeft0~69_combout\);

-- Location: LCCOMB_X31_Y22_N30
\my_alu|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux14~0_combout\ = (\my_alu|Mux13~2_combout\ & (((!\my_alu|Mux13~3_combout\)))) # (!\my_alu|Mux13~2_combout\ & ((\my_alu|Mux13~3_combout\ & ((\my_alu|ShiftRight0~33_combout\))) # (!\my_alu|Mux13~3_combout\ & (\my_alu|ShiftLeft0~102_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|ShiftLeft0~102_combout\,
	datab => \my_alu|Mux13~2_combout\,
	datac => \my_alu|Mux13~3_combout\,
	datad => \my_alu|ShiftRight0~33_combout\,
	combout => \my_alu|Mux14~0_combout\);

-- Location: LCCOMB_X31_Y22_N24
\my_alu|Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux14~1_combout\ = (\my_alu|Mux13~1_combout\ & (((\my_alu|Mux14~0_combout\)))) # (!\my_alu|Mux13~1_combout\ & ((\my_alu|Mux14~0_combout\ & (\my_alu|ShiftLeft0~69_combout\)) # (!\my_alu|Mux14~0_combout\ & ((\my_alu|ShiftLeft0~35_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|ShiftLeft0~69_combout\,
	datab => \my_alu|Mux13~1_combout\,
	datac => \my_alu|Mux14~0_combout\,
	datad => \my_alu|ShiftLeft0~35_combout\,
	combout => \my_alu|Mux14~1_combout\);

-- Location: LCCOMB_X28_Y21_N24
\my_alu|Mux14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux14~2_combout\ = (\input_reg_b|q[17]~_Duplicate_4_q\ & ((\input_reg_a|q[17]~_Duplicate_4_q\ & (!\input_reg_op|q\(1))) # (!\input_reg_a|q[17]~_Duplicate_4_q\ & ((\input_reg_op|q\(0)))))) # (!\input_reg_b|q[17]~_Duplicate_4_q\ & 
-- ((\input_reg_op|q\(0) & ((\input_reg_a|q[17]~_Duplicate_4_q\))) # (!\input_reg_op|q\(0) & (\input_reg_op|q\(1) & !\input_reg_a|q[17]~_Duplicate_4_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(1),
	datab => \input_reg_op|q\(0),
	datac => \input_reg_b|q[17]~_Duplicate_4_q\,
	datad => \input_reg_a|q[17]~_Duplicate_4_q\,
	combout => \my_alu|Mux14~2_combout\);

-- Location: LCCOMB_X28_Y21_N10
\my_alu|Mux14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux14~3_combout\ = (\my_alu|Mux13~5_combout\ & (((\my_alu|Mux14~1_combout\ & \my_alu|Mux13~4_combout\)))) # (!\my_alu|Mux13~5_combout\ & ((\my_alu|Mux14~2_combout\) # ((!\my_alu|Mux13~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mux13~5_combout\,
	datab => \my_alu|Mux14~2_combout\,
	datac => \my_alu|Mux14~1_combout\,
	datad => \my_alu|Mux13~4_combout\,
	combout => \my_alu|Mux14~3_combout\);

-- Location: LCCOMB_X28_Y21_N28
\my_alu|Mux14~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux14~4_combout\ = (\my_alu|Mux13~0_combout\ & ((\my_alu|Mux14~3_combout\ & ((\my_alu|ShiftRight1~16_combout\))) # (!\my_alu|Mux14~3_combout\ & (\input_reg_b|q[31]~_Duplicate_4_q\)))) # (!\my_alu|Mux13~0_combout\ & (((\my_alu|Mux14~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[31]~_Duplicate_4_q\,
	datab => \my_alu|Mux13~0_combout\,
	datac => \my_alu|ShiftRight1~16_combout\,
	datad => \my_alu|Mux14~3_combout\,
	combout => \my_alu|Mux14~4_combout\);

-- Location: LCCOMB_X29_Y19_N24
\my_alu|Mux13~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux13~6_combout\ = (\my_alu|Mux13~2_combout\ & (((!\my_alu|Mux13~3_combout\)))) # (!\my_alu|Mux13~2_combout\ & ((\my_alu|Mux13~3_combout\ & (\my_alu|ShiftRight0~42_combout\)) # (!\my_alu|Mux13~3_combout\ & ((\my_alu|ShiftLeft0~100_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|ShiftRight0~42_combout\,
	datab => \my_alu|Mux13~2_combout\,
	datac => \my_alu|ShiftLeft0~100_combout\,
	datad => \my_alu|Mux13~3_combout\,
	combout => \my_alu|Mux13~6_combout\);

-- Location: LCCOMB_X28_Y21_N2
\my_alu|Mux13~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux13~7_combout\ = (\my_alu|Mux13~6_combout\ & ((\my_alu|ShiftLeft0~72_combout\) # ((\my_alu|Mux13~1_combout\)))) # (!\my_alu|Mux13~6_combout\ & (((!\my_alu|Mux13~1_combout\ & \my_alu|ShiftLeft0~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|ShiftLeft0~72_combout\,
	datab => \my_alu|Mux13~6_combout\,
	datac => \my_alu|Mux13~1_combout\,
	datad => \my_alu|ShiftLeft0~39_combout\,
	combout => \my_alu|Mux13~7_combout\);

-- Location: LCCOMB_X28_Y21_N4
\my_alu|Mux13~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux13~8_combout\ = (\input_reg_a|q[18]~_Duplicate_4_q\ & ((\input_reg_b|q[18]~_Duplicate_4_q\ & (!\input_reg_op|q\(1))) # (!\input_reg_b|q[18]~_Duplicate_4_q\ & ((\input_reg_op|q\(0)))))) # (!\input_reg_a|q[18]~_Duplicate_4_q\ & 
-- ((\input_reg_op|q\(0) & ((\input_reg_b|q[18]~_Duplicate_4_q\))) # (!\input_reg_op|q\(0) & (\input_reg_op|q\(1) & !\input_reg_b|q[18]~_Duplicate_4_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(1),
	datab => \input_reg_op|q\(0),
	datac => \input_reg_a|q[18]~_Duplicate_4_q\,
	datad => \input_reg_b|q[18]~_Duplicate_4_q\,
	combout => \my_alu|Mux13~8_combout\);

-- Location: LCCOMB_X28_Y21_N14
\my_alu|Mux13~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux13~9_combout\ = (\my_alu|Mux13~5_combout\ & (\my_alu|Mux13~4_combout\ & ((\my_alu|Mux13~7_combout\)))) # (!\my_alu|Mux13~5_combout\ & (((\my_alu|Mux13~8_combout\)) # (!\my_alu|Mux13~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mux13~5_combout\,
	datab => \my_alu|Mux13~4_combout\,
	datac => \my_alu|Mux13~8_combout\,
	datad => \my_alu|Mux13~7_combout\,
	combout => \my_alu|Mux13~9_combout\);

-- Location: LCCOMB_X28_Y21_N0
\my_alu|Mux13~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux13~10_combout\ = (\my_alu|Mux13~9_combout\ & (((\my_alu|ShiftRight1~29_combout\) # (!\my_alu|Mux13~0_combout\)))) # (!\my_alu|Mux13~9_combout\ & (\input_reg_b|q[31]~_Duplicate_4_q\ & ((\my_alu|Mux13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[31]~_Duplicate_4_q\,
	datab => \my_alu|ShiftRight1~29_combout\,
	datac => \my_alu|Mux13~9_combout\,
	datad => \my_alu|Mux13~0_combout\,
	combout => \my_alu|Mux13~10_combout\);

-- Location: LCCOMB_X33_Y23_N30
\my_alu|ShiftLeft0~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftLeft0~75_combout\ = (\input_reg_shamt|q\(2) & (\my_alu|ShiftLeft0~61_combout\)) # (!\input_reg_shamt|q\(2) & ((\my_alu|ShiftLeft0~74_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(2),
	datac => \my_alu|ShiftLeft0~61_combout\,
	datad => \my_alu|ShiftLeft0~74_combout\,
	combout => \my_alu|ShiftLeft0~75_combout\);

-- Location: LCCOMB_X30_Y23_N20
\my_alu|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux12~0_combout\ = (\my_alu|Mux13~3_combout\ & (((!\my_alu|Mux13~2_combout\ & \my_alu|ShiftRight0~46_combout\)))) # (!\my_alu|Mux13~3_combout\ & ((\my_alu|ShiftLeft0~10_combout\) # ((\my_alu|Mux13~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mux13~3_combout\,
	datab => \my_alu|ShiftLeft0~10_combout\,
	datac => \my_alu|Mux13~2_combout\,
	datad => \my_alu|ShiftRight0~46_combout\,
	combout => \my_alu|Mux12~0_combout\);

-- Location: LCCOMB_X30_Y23_N14
\my_alu|Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux12~1_combout\ = (\my_alu|Mux13~1_combout\ & (((\my_alu|Mux12~0_combout\)))) # (!\my_alu|Mux13~1_combout\ & ((\my_alu|Mux12~0_combout\ & ((\my_alu|ShiftLeft0~75_combout\))) # (!\my_alu|Mux12~0_combout\ & (\my_alu|ShiftLeft0~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|ShiftLeft0~43_combout\,
	datab => \my_alu|ShiftLeft0~75_combout\,
	datac => \my_alu|Mux13~1_combout\,
	datad => \my_alu|Mux12~0_combout\,
	combout => \my_alu|Mux12~1_combout\);

-- Location: LCCOMB_X31_Y21_N20
\my_alu|Mux12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux12~2_combout\ = (\input_reg_b|q[19]~_Duplicate_4_q\ & ((\input_reg_a|q[19]~_Duplicate_4_q\ & (!\input_reg_op|q\(1))) # (!\input_reg_a|q[19]~_Duplicate_4_q\ & ((\input_reg_op|q\(0)))))) # (!\input_reg_b|q[19]~_Duplicate_4_q\ & 
-- ((\input_reg_a|q[19]~_Duplicate_4_q\ & ((\input_reg_op|q\(0)))) # (!\input_reg_a|q[19]~_Duplicate_4_q\ & (\input_reg_op|q\(1) & !\input_reg_op|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[19]~_Duplicate_4_q\,
	datab => \input_reg_op|q\(1),
	datac => \input_reg_a|q[19]~_Duplicate_4_q\,
	datad => \input_reg_op|q\(0),
	combout => \my_alu|Mux12~2_combout\);

-- Location: LCCOMB_X28_Y21_N26
\my_alu|Mux12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux12~3_combout\ = (\my_alu|Mux13~5_combout\ & (\my_alu|Mux13~4_combout\ & ((\my_alu|Mux12~1_combout\)))) # (!\my_alu|Mux13~5_combout\ & (((\my_alu|Mux12~2_combout\)) # (!\my_alu|Mux13~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mux13~5_combout\,
	datab => \my_alu|Mux13~4_combout\,
	datac => \my_alu|Mux12~2_combout\,
	datad => \my_alu|Mux12~1_combout\,
	combout => \my_alu|Mux12~3_combout\);

-- Location: LCCOMB_X28_Y21_N20
\my_alu|Mux12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux12~4_combout\ = (\my_alu|Mux13~0_combout\ & ((\my_alu|Mux12~3_combout\ & ((\my_alu|ShiftRight1~42_combout\))) # (!\my_alu|Mux12~3_combout\ & (\input_reg_b|q[31]~_Duplicate_4_q\)))) # (!\my_alu|Mux13~0_combout\ & (((\my_alu|Mux12~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[31]~_Duplicate_4_q\,
	datab => \my_alu|Mux13~0_combout\,
	datac => \my_alu|Mux12~3_combout\,
	datad => \my_alu|ShiftRight1~42_combout\,
	combout => \my_alu|Mux12~4_combout\);

-- Location: LCCOMB_X31_Y23_N24
\my_alu|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux11~0_combout\ = (\my_alu|Mux13~3_combout\ & (!\my_alu|Mux13~2_combout\ & (\my_alu|ShiftRight0~49_combout\))) # (!\my_alu|Mux13~3_combout\ & ((\my_alu|Mux13~2_combout\) # ((\my_alu|ShiftLeft0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mux13~3_combout\,
	datab => \my_alu|Mux13~2_combout\,
	datac => \my_alu|ShiftRight0~49_combout\,
	datad => \my_alu|ShiftLeft0~16_combout\,
	combout => \my_alu|Mux11~0_combout\);

-- Location: LCCOMB_X31_Y23_N30
\my_alu|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux11~1_combout\ = (\my_alu|Mux13~1_combout\ & (((\my_alu|Mux11~0_combout\)))) # (!\my_alu|Mux13~1_combout\ & ((\my_alu|Mux11~0_combout\ & ((\my_alu|ShiftLeft0~78_combout\))) # (!\my_alu|Mux11~0_combout\ & (\my_alu|ShiftLeft0~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|ShiftLeft0~47_combout\,
	datab => \my_alu|Mux13~1_combout\,
	datac => \my_alu|ShiftLeft0~78_combout\,
	datad => \my_alu|Mux11~0_combout\,
	combout => \my_alu|Mux11~1_combout\);

-- Location: LCCOMB_X28_Y21_N18
\my_alu|Mux11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux11~2_combout\ = (\input_reg_b|q[20]~_Duplicate_4_q\ & ((\input_reg_a|q[20]~_Duplicate_4_q\ & (!\input_reg_op|q\(1))) # (!\input_reg_a|q[20]~_Duplicate_4_q\ & ((\input_reg_op|q\(0)))))) # (!\input_reg_b|q[20]~_Duplicate_4_q\ & 
-- ((\input_reg_op|q\(0) & ((\input_reg_a|q[20]~_Duplicate_4_q\))) # (!\input_reg_op|q\(0) & (\input_reg_op|q\(1) & !\input_reg_a|q[20]~_Duplicate_4_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(1),
	datab => \input_reg_op|q\(0),
	datac => \input_reg_b|q[20]~_Duplicate_4_q\,
	datad => \input_reg_a|q[20]~_Duplicate_4_q\,
	combout => \my_alu|Mux11~2_combout\);

-- Location: LCCOMB_X28_Y21_N12
\my_alu|Mux11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux11~3_combout\ = (\my_alu|Mux13~5_combout\ & (\my_alu|Mux13~4_combout\ & (\my_alu|Mux11~1_combout\))) # (!\my_alu|Mux13~5_combout\ & (((\my_alu|Mux11~2_combout\)) # (!\my_alu|Mux13~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mux13~5_combout\,
	datab => \my_alu|Mux13~4_combout\,
	datac => \my_alu|Mux11~1_combout\,
	datad => \my_alu|Mux11~2_combout\,
	combout => \my_alu|Mux11~3_combout\);

-- Location: LCCOMB_X28_Y21_N22
\my_alu|Mux11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux11~4_combout\ = (\my_alu|Mux13~0_combout\ & ((\my_alu|Mux11~3_combout\ & ((\my_alu|ShiftRight1~47_combout\))) # (!\my_alu|Mux11~3_combout\ & (\input_reg_b|q[31]~_Duplicate_4_q\)))) # (!\my_alu|Mux13~0_combout\ & (((\my_alu|Mux11~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[31]~_Duplicate_4_q\,
	datab => \my_alu|Mux13~0_combout\,
	datac => \my_alu|ShiftRight1~47_combout\,
	datad => \my_alu|Mux11~3_combout\,
	combout => \my_alu|Mux11~4_combout\);

-- Location: LCCOMB_X32_Y23_N2
\my_alu|ShiftLeft0~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftLeft0~79_combout\ = (\input_reg_shamt|q\(1) & (\input_reg_b|q[19]~_Duplicate_4_q\)) # (!\input_reg_shamt|q\(1) & ((\input_reg_b|q[21]~_Duplicate_4_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(1),
	datab => \input_reg_b|q[19]~_Duplicate_4_q\,
	datad => \input_reg_b|q[21]~_Duplicate_4_q\,
	combout => \my_alu|ShiftLeft0~79_combout\);

-- Location: LCCOMB_X32_Y23_N28
\my_alu|ShiftLeft0~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftLeft0~80_combout\ = (\input_reg_shamt|q\(0) & ((\my_alu|ShiftLeft0~76_combout\))) # (!\input_reg_shamt|q\(0) & (\my_alu|ShiftLeft0~79_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|ShiftLeft0~79_combout\,
	datab => \my_alu|ShiftLeft0~76_combout\,
	datad => \input_reg_shamt|q\(0),
	combout => \my_alu|ShiftLeft0~80_combout\);

-- Location: LCCOMB_X31_Y22_N18
\my_alu|ShiftLeft0~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftLeft0~81_combout\ = (\input_reg_shamt|q\(2) & (\my_alu|ShiftLeft0~68_combout\)) # (!\input_reg_shamt|q\(2) & ((\my_alu|ShiftLeft0~80_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(2),
	datab => \my_alu|ShiftLeft0~68_combout\,
	datad => \my_alu|ShiftLeft0~80_combout\,
	combout => \my_alu|ShiftLeft0~81_combout\);

-- Location: LCCOMB_X29_Y19_N14
\my_alu|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux9~0_combout\ = (\my_alu|Mux13~2_combout\ & (((!\my_alu|Mux13~3_combout\)))) # (!\my_alu|Mux13~2_combout\ & ((\my_alu|Mux13~3_combout\ & ((\my_alu|ShiftRight0~57_combout\))) # (!\my_alu|Mux13~3_combout\ & (\my_alu|ShiftLeft0~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|ShiftLeft0~23_combout\,
	datab => \my_alu|ShiftRight0~57_combout\,
	datac => \my_alu|Mux13~2_combout\,
	datad => \my_alu|Mux13~3_combout\,
	combout => \my_alu|Mux9~0_combout\);

-- Location: LCCOMB_X27_Y19_N6
\my_alu|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux9~1_combout\ = (\my_alu|Mux13~1_combout\ & (((\my_alu|Mux9~0_combout\)))) # (!\my_alu|Mux13~1_combout\ & ((\my_alu|Mux9~0_combout\ & (\my_alu|ShiftLeft0~84_combout\)) # (!\my_alu|Mux9~0_combout\ & ((\my_alu|ShiftLeft0~57_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mux13~1_combout\,
	datab => \my_alu|ShiftLeft0~84_combout\,
	datac => \my_alu|Mux9~0_combout\,
	datad => \my_alu|ShiftLeft0~57_combout\,
	combout => \my_alu|Mux9~1_combout\);

-- Location: LCCOMB_X26_Y21_N16
\my_alu|Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux9~2_combout\ = (\input_reg_a|q[22]~_Duplicate_4_q\ & ((\input_reg_b|q[22]~_Duplicate_4_q\ & ((!\input_reg_op|q\(1)))) # (!\input_reg_b|q[22]~_Duplicate_4_q\ & (\input_reg_op|q\(0))))) # (!\input_reg_a|q[22]~_Duplicate_4_q\ & 
-- ((\input_reg_op|q\(0) & ((\input_reg_b|q[22]~_Duplicate_4_q\))) # (!\input_reg_op|q\(0) & (\input_reg_op|q\(1) & !\input_reg_b|q[22]~_Duplicate_4_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(0),
	datab => \input_reg_a|q[22]~_Duplicate_4_q\,
	datac => \input_reg_op|q\(1),
	datad => \input_reg_b|q[22]~_Duplicate_4_q\,
	combout => \my_alu|Mux9~2_combout\);

-- Location: LCCOMB_X26_Y19_N4
\my_alu|Mux9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux9~3_combout\ = (\my_alu|Mux13~5_combout\ & (((\my_alu|Mux13~4_combout\ & \my_alu|Mux9~1_combout\)))) # (!\my_alu|Mux13~5_combout\ & ((\my_alu|Mux9~2_combout\) # ((!\my_alu|Mux13~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mux9~2_combout\,
	datab => \my_alu|Mux13~5_combout\,
	datac => \my_alu|Mux13~4_combout\,
	datad => \my_alu|Mux9~1_combout\,
	combout => \my_alu|Mux9~3_combout\);

-- Location: LCCOMB_X26_Y19_N14
\my_alu|Mux9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux9~4_combout\ = (\my_alu|Mux13~0_combout\ & ((\my_alu|Mux9~3_combout\ & ((\my_alu|ShiftRight1~51_combout\))) # (!\my_alu|Mux9~3_combout\ & (\input_reg_b|q[31]~_Duplicate_4_q\)))) # (!\my_alu|Mux13~0_combout\ & (((\my_alu|Mux9~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mux13~0_combout\,
	datab => \input_reg_b|q[31]~_Duplicate_4_q\,
	datac => \my_alu|Mux9~3_combout\,
	datad => \my_alu|ShiftRight1~51_combout\,
	combout => \my_alu|Mux9~4_combout\);

-- Location: LCCOMB_X29_Y23_N6
\my_alu|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux8~0_combout\ = (\my_alu|Mux13~3_combout\ & (\my_alu|ShiftRight0~60_combout\ & (!\my_alu|Mux13~2_combout\))) # (!\my_alu|Mux13~3_combout\ & (((\my_alu|Mux13~2_combout\) # (\my_alu|ShiftLeft0~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mux13~3_combout\,
	datab => \my_alu|ShiftRight0~60_combout\,
	datac => \my_alu|Mux13~2_combout\,
	datad => \my_alu|ShiftLeft0~28_combout\,
	combout => \my_alu|Mux8~0_combout\);

-- Location: LCCOMB_X32_Y20_N22
\my_alu|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux7~0_combout\ = (\my_alu|Mux6~1_combout\ & (((\my_alu|ShiftLeft0~77_combout\) # (\my_alu|Mux6~0_combout\)))) # (!\my_alu|Mux6~1_combout\ & (\my_alu|ShiftLeft0~89_combout\ & ((!\my_alu|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mux6~1_combout\,
	datab => \my_alu|ShiftLeft0~89_combout\,
	datac => \my_alu|ShiftLeft0~77_combout\,
	datad => \my_alu|Mux6~0_combout\,
	combout => \my_alu|Mux7~0_combout\);

-- Location: LCCOMB_X34_Y20_N24
\my_alu|Mux7~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux7~7_combout\ = (\input_reg_a|q[24]~_Duplicate_4_q\ & ((\input_reg_b|q[24]~_Duplicate_4_q\ & ((!\input_reg_op|q\(1)))) # (!\input_reg_b|q[24]~_Duplicate_4_q\ & (\input_reg_op|q\(0))))) # (!\input_reg_a|q[24]~_Duplicate_4_q\ & 
-- ((\input_reg_op|q\(0) & ((\input_reg_b|q[24]~_Duplicate_4_q\))) # (!\input_reg_op|q\(0) & (\input_reg_op|q\(1) & !\input_reg_b|q[24]~_Duplicate_4_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(0),
	datab => \input_reg_a|q[24]~_Duplicate_4_q\,
	datac => \input_reg_op|q\(1),
	datad => \input_reg_b|q[24]~_Duplicate_4_q\,
	combout => \my_alu|Mux7~7_combout\);

-- Location: LCCOMB_X33_Y19_N30
\my_alu|ShiftLeft0~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftLeft0~90_combout\ = (!\input_reg_shamt|q\(0) & ((\input_reg_shamt|q\(1) & (\input_reg_b|q[23]~_Duplicate_4_q\)) # (!\input_reg_shamt|q\(1) & ((\input_reg_b|q[25]~_Duplicate_4_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[23]~_Duplicate_4_q\,
	datab => \input_reg_b|q[25]~_Duplicate_4_q\,
	datac => \input_reg_shamt|q\(1),
	datad => \input_reg_shamt|q\(0),
	combout => \my_alu|ShiftLeft0~90_combout\);

-- Location: LCCOMB_X33_Y19_N4
\my_alu|ShiftLeft0~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftLeft0~91_combout\ = (\my_alu|ShiftLeft0~90_combout\) # ((\my_alu|ShiftLeft0~88_combout\ & \input_reg_shamt|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_alu|ShiftLeft0~88_combout\,
	datac => \my_alu|ShiftLeft0~90_combout\,
	datad => \input_reg_shamt|q\(0),
	combout => \my_alu|ShiftLeft0~91_combout\);

-- Location: LCCOMB_X31_Y22_N20
\my_alu|Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux6~4_combout\ = (\my_alu|Mux6~0_combout\ & ((\my_alu|ShiftLeft0~69_combout\) # ((\my_alu|Mux6~1_combout\)))) # (!\my_alu|Mux6~0_combout\ & (((!\my_alu|Mux6~1_combout\ & \my_alu|ShiftLeft0~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|ShiftLeft0~69_combout\,
	datab => \my_alu|Mux6~0_combout\,
	datac => \my_alu|Mux6~1_combout\,
	datad => \my_alu|ShiftLeft0~91_combout\,
	combout => \my_alu|Mux6~4_combout\);

-- Location: LCCOMB_X31_Y22_N22
\my_alu|Mux6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux6~5_combout\ = (\my_alu|Mux6~1_combout\ & ((\my_alu|Mux6~4_combout\ & ((\my_alu|ShiftLeft0~36_combout\))) # (!\my_alu|Mux6~4_combout\ & (\my_alu|ShiftLeft0~80_combout\)))) # (!\my_alu|Mux6~1_combout\ & (((\my_alu|Mux6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|ShiftLeft0~80_combout\,
	datab => \my_alu|ShiftLeft0~36_combout\,
	datac => \my_alu|Mux6~1_combout\,
	datad => \my_alu|Mux6~4_combout\,
	combout => \my_alu|Mux6~5_combout\);

-- Location: LCCOMB_X31_Y21_N8
\my_alu|Mux6~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux6~11_combout\ = (\input_reg_a|q[25]~_Duplicate_4_q\ & ((\input_reg_b|q[25]~_Duplicate_4_q\ & ((!\input_reg_op|q\(1)))) # (!\input_reg_b|q[25]~_Duplicate_4_q\ & (\input_reg_op|q\(0))))) # (!\input_reg_a|q[25]~_Duplicate_4_q\ & 
-- ((\input_reg_op|q\(0) & (\input_reg_b|q[25]~_Duplicate_4_q\)) # (!\input_reg_op|q\(0) & (!\input_reg_b|q[25]~_Duplicate_4_q\ & \input_reg_op|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(0),
	datab => \input_reg_a|q[25]~_Duplicate_4_q\,
	datac => \input_reg_b|q[25]~_Duplicate_4_q\,
	datad => \input_reg_op|q\(1),
	combout => \my_alu|Mux6~11_combout\);

-- Location: LCCOMB_X33_Y19_N26
\my_alu|ShiftLeft0~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftLeft0~95_combout\ = (\input_reg_shamt|q\(1) & ((\input_reg_shamt|q\(0) & ((\input_reg_b|q[24]~_Duplicate_4_q\))) # (!\input_reg_shamt|q\(0) & (\input_reg_b|q[25]~_Duplicate_4_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(1),
	datab => \input_reg_b|q[25]~_Duplicate_4_q\,
	datac => \input_reg_shamt|q\(0),
	datad => \input_reg_b|q[24]~_Duplicate_4_q\,
	combout => \my_alu|ShiftLeft0~95_combout\);

-- Location: LCCOMB_X33_Y23_N10
\my_alu|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux4~0_combout\ = (\my_alu|Mux6~0_combout\ & ((\my_alu|Mux6~1_combout\) # ((\my_alu|ShiftLeft0~75_combout\)))) # (!\my_alu|Mux6~0_combout\ & (!\my_alu|Mux6~1_combout\ & ((\my_alu|ShiftLeft0~97_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mux6~0_combout\,
	datab => \my_alu|Mux6~1_combout\,
	datac => \my_alu|ShiftLeft0~75_combout\,
	datad => \my_alu|ShiftLeft0~97_combout\,
	combout => \my_alu|Mux4~0_combout\);

-- Location: LCCOMB_X31_Y21_N0
\my_alu|Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux4~4_combout\ = (\input_reg_op|q\(0) & ((\input_reg_op|q\(1)) # ((\my_alu|Add3~54_combout\)))) # (!\input_reg_op|q\(0) & (!\input_reg_op|q\(1) & ((\my_alu|Add2~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(0),
	datab => \input_reg_op|q\(1),
	datac => \my_alu|Add3~54_combout\,
	datad => \my_alu|Add2~54_combout\,
	combout => \my_alu|Mux4~4_combout\);

-- Location: LCCOMB_X29_Y20_N20
\my_alu|Mux4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux4~7_combout\ = (\input_reg_b|q[27]~_Duplicate_4_q\ & ((\input_reg_a|q[27]~_Duplicate_4_q\ & (!\input_reg_op|q\(1))) # (!\input_reg_a|q[27]~_Duplicate_4_q\ & ((\input_reg_op|q\(0)))))) # (!\input_reg_b|q[27]~_Duplicate_4_q\ & 
-- ((\input_reg_a|q[27]~_Duplicate_4_q\ & ((\input_reg_op|q\(0)))) # (!\input_reg_a|q[27]~_Duplicate_4_q\ & (\input_reg_op|q\(1) & !\input_reg_op|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(1),
	datab => \input_reg_b|q[27]~_Duplicate_4_q\,
	datac => \input_reg_a|q[27]~_Duplicate_4_q\,
	datad => \input_reg_op|q\(0),
	combout => \my_alu|Mux4~7_combout\);

-- Location: LCCOMB_X31_Y21_N26
\my_alu|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux3~0_combout\ = (\input_reg_op|q\(0) & ((\input_reg_op|q\(1)) # ((\my_alu|Add3~56_combout\)))) # (!\input_reg_op|q\(0) & (!\input_reg_op|q\(1) & ((\my_alu|Add2~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(0),
	datab => \input_reg_op|q\(1),
	datac => \my_alu|Add3~56_combout\,
	datad => \my_alu|Add2~56_combout\,
	combout => \my_alu|Mux3~0_combout\);

-- Location: LCCOMB_X31_Y21_N24
\my_alu|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux2~0_combout\ = (\input_reg_op|q\(0) & ((\input_reg_op|q\(1)) # ((\my_alu|Add3~58_combout\)))) # (!\input_reg_op|q\(0) & (!\input_reg_op|q\(1) & (\my_alu|Add2~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(0),
	datab => \input_reg_op|q\(1),
	datac => \my_alu|Add2~58_combout\,
	datad => \my_alu|Add3~58_combout\,
	combout => \my_alu|Mux2~0_combout\);

-- Location: LCCOMB_X31_Y22_N2
\my_alu|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux2~2_combout\ = (\my_alu|Mux29~5_combout\ & (!\my_alu|ShiftRight0~34_combout\)) # (!\my_alu|Mux29~5_combout\ & ((\my_alu|ShiftRight0~34_combout\ & (\my_alu|ShiftLeft0~99_combout\)) # (!\my_alu|ShiftRight0~34_combout\ & 
-- ((\my_alu|ShiftLeft0~91_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mux29~5_combout\,
	datab => \my_alu|ShiftRight0~34_combout\,
	datac => \my_alu|ShiftLeft0~99_combout\,
	datad => \my_alu|ShiftLeft0~91_combout\,
	combout => \my_alu|Mux2~2_combout\);

-- Location: LCCOMB_X31_Y22_N28
\my_alu|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux2~3_combout\ = (\my_alu|Mux29~5_combout\ & ((\my_alu|Mux2~2_combout\ & (\my_alu|ShiftLeft0~81_combout\)) # (!\my_alu|Mux2~2_combout\ & ((\my_alu|ShiftLeft0~96_combout\))))) # (!\my_alu|Mux29~5_combout\ & (((\my_alu|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mux29~5_combout\,
	datab => \my_alu|ShiftLeft0~81_combout\,
	datac => \my_alu|ShiftLeft0~96_combout\,
	datad => \my_alu|Mux2~2_combout\,
	combout => \my_alu|Mux2~3_combout\);

-- Location: LCCOMB_X30_Y20_N12
\my_alu|Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux2~4_combout\ = (\my_alu|Mux22~1_combout\ & ((\my_alu|Mux3~5_combout\ & ((\my_alu|ShiftRight1~57_combout\))) # (!\my_alu|Mux3~5_combout\ & (\my_alu|ShiftRight0~70_combout\)))) # (!\my_alu|Mux22~1_combout\ & (\my_alu|Mux3~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mux22~1_combout\,
	datab => \my_alu|Mux3~5_combout\,
	datac => \my_alu|ShiftRight0~70_combout\,
	datad => \my_alu|ShiftRight1~57_combout\,
	combout => \my_alu|Mux2~4_combout\);

-- Location: LCCOMB_X30_Y20_N30
\my_alu|Mux2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux2~5_combout\ = (\my_alu|Mux0~0_combout\ & ((\my_alu|Mux2~4_combout\ & (\my_alu|ShiftLeft0~53_combout\)) # (!\my_alu|Mux2~4_combout\ & ((\my_alu|Mux2~3_combout\))))) # (!\my_alu|Mux0~0_combout\ & (((\my_alu|Mux2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mux0~0_combout\,
	datab => \my_alu|ShiftLeft0~53_combout\,
	datac => \my_alu|Mux2~3_combout\,
	datad => \my_alu|Mux2~4_combout\,
	combout => \my_alu|Mux2~5_combout\);

-- Location: LCCOMB_X29_Y20_N18
\my_alu|Mux2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux2~6_combout\ = (\input_reg_a|q[29]~_Duplicate_4_q\ & ((\input_reg_b|q[29]~_Duplicate_4_q\ & (!\input_reg_op|q\(1))) # (!\input_reg_b|q[29]~_Duplicate_4_q\ & ((\input_reg_op|q\(0)))))) # (!\input_reg_a|q[29]~_Duplicate_4_q\ & 
-- ((\input_reg_op|q\(0) & ((\input_reg_b|q[29]~_Duplicate_4_q\))) # (!\input_reg_op|q\(0) & (\input_reg_op|q\(1) & !\input_reg_b|q[29]~_Duplicate_4_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(1),
	datab => \input_reg_a|q[29]~_Duplicate_4_q\,
	datac => \input_reg_op|q\(0),
	datad => \input_reg_b|q[29]~_Duplicate_4_q\,
	combout => \my_alu|Mux2~6_combout\);

-- Location: LCCOMB_X28_Y20_N6
\my_alu|Mux2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux2~7_combout\ = (\input_reg_op|q\(3) & ((\my_alu|Mux2~5_combout\) # ((\my_alu|Mux3~2_combout\)))) # (!\input_reg_op|q\(3) & (((!\my_alu|Mux3~2_combout\ & \my_alu|Mux2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(3),
	datab => \my_alu|Mux2~5_combout\,
	datac => \my_alu|Mux3~2_combout\,
	datad => \my_alu|Mux2~6_combout\,
	combout => \my_alu|Mux2~7_combout\);

-- Location: LCCOMB_X30_Y23_N10
\my_alu|Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux0~5_combout\ = (\input_reg_op|q\(1)) # ((!\input_reg_shamt|q\(4) & (\my_alu|ShiftLeft0~11_combout\ & \my_alu|ShiftRight0~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(4),
	datab => \my_alu|ShiftLeft0~11_combout\,
	datac => \input_reg_op|q\(1),
	datad => \my_alu|ShiftRight0~34_combout\,
	combout => \my_alu|Mux0~5_combout\);

-- Location: LCCOMB_X25_Y20_N14
\my_alu|Mux0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux0~7_combout\ = (\input_reg_b|q[31]~_Duplicate_4_q\ & ((\input_reg_a|q[31]~_Duplicate_4_q\ & (!\input_reg_op|q\(1))) # (!\input_reg_a|q[31]~_Duplicate_4_q\ & ((\input_reg_op|q\(0)))))) # (!\input_reg_b|q[31]~_Duplicate_4_q\ & 
-- ((\input_reg_a|q[31]~_Duplicate_4_q\ & ((\input_reg_op|q\(0)))) # (!\input_reg_a|q[31]~_Duplicate_4_q\ & (\input_reg_op|q\(1) & !\input_reg_op|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[31]~_Duplicate_4_q\,
	datab => \input_reg_a|q[31]~_Duplicate_4_q\,
	datac => \input_reg_op|q\(1),
	datad => \input_reg_op|q\(0),
	combout => \my_alu|Mux0~7_combout\);

-- Location: LCCOMB_X29_Y18_N24
\my_alu|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Equal0~4_combout\ = (!\my_alu|Mux19~7_combout\ & (!\my_alu|Mux18~7_combout\ & (!\my_alu|Mux21~7_combout\ & !\my_alu|Mux20~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mux19~7_combout\,
	datab => \my_alu|Mux18~7_combout\,
	datac => \my_alu|Mux21~7_combout\,
	datad => \my_alu|Mux20~7_combout\,
	combout => \my_alu|Equal0~4_combout\);

-- Location: LCCOMB_X26_Y20_N22
\my_alu|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Equal0~5_combout\ = (!\my_alu|Mux1~9_combout\ & (!\my_alu|Mux28~8_combout\ & (!\my_alu|Mux29~12_combout\ & \my_alu|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mux1~9_combout\,
	datab => \my_alu|Mux28~8_combout\,
	datac => \my_alu|Mux29~12_combout\,
	datad => \my_alu|Equal0~4_combout\,
	combout => \my_alu|Equal0~5_combout\);

-- Location: LCCOMB_X27_Y20_N14
\my_alu|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Equal0~9_combout\ = (!\my_alu|Mux16~7_combout\ & (!\my_alu|Mux17~7_combout\ & (!\my_alu|Mux3~11_combout\ & !\my_alu|Mux2~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mux16~7_combout\,
	datab => \my_alu|Mux17~7_combout\,
	datac => \my_alu|Mux3~11_combout\,
	datad => \my_alu|Mux2~9_combout\,
	combout => \my_alu|Equal0~9_combout\);

-- Location: LCCOMB_X27_Y20_N24
\my_alu|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Equal0~10_combout\ = (\input_reg_op|q\(2) & (!\input_reg_op|q\(3) & \my_alu|Mux1~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input_reg_op|q\(2),
	datac => \input_reg_op|q\(3),
	datad => \my_alu|Mux1~11_combout\,
	combout => \my_alu|Equal0~10_combout\);

-- Location: LCCOMB_X27_Y20_N6
\my_alu|Equal0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Equal0~11_combout\ = (!\my_alu|Mux0~11_combout\ & (!\my_alu|Mux31~19_combout\ & (\my_alu|Equal0~9_combout\ & !\my_alu|Equal0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mux0~11_combout\,
	datab => \my_alu|Mux31~19_combout\,
	datac => \my_alu|Equal0~9_combout\,
	datad => \my_alu|Equal0~10_combout\,
	combout => \my_alu|Equal0~11_combout\);

-- Location: LCCOMB_X25_Y20_N16
\my_alu|Mux31~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux31~21_combout\ = (!\input_reg_op|q\(1) & (!\input_reg_op|q\(0) & ((\input_reg_b|q[31]~_Duplicate_4_q\) # (!\input_reg_a|q[31]~_Duplicate_4_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[31]~_Duplicate_4_q\,
	datab => \input_reg_a|q[31]~_Duplicate_4_q\,
	datac => \input_reg_op|q\(1),
	datad => \input_reg_op|q\(0),
	combout => \my_alu|Mux31~21_combout\);

-- Location: LCCOMB_X31_Y22_N26
\my_alu|ShiftLeft0~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftLeft0~102_combout\ = (!\input_reg_shamt|q\(2) & (!\input_reg_shamt|q\(3) & (\my_alu|ShiftLeft0~6_combout\ & !\input_reg_shamt|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(2),
	datab => \input_reg_shamt|q\(3),
	datac => \my_alu|ShiftLeft0~6_combout\,
	datad => \input_reg_shamt|q\(1),
	combout => \my_alu|ShiftLeft0~102_combout\);

-- Location: LCCOMB_X31_Y19_N14
\my_alu|ShiftRight1~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight1~60_combout\ = (\input_reg_shamt|q\(2) & (\input_reg_b|q[31]~_Duplicate_4_q\)) # (!\input_reg_shamt|q\(2) & ((\input_reg_shamt|q\(3) & (\input_reg_b|q[31]~_Duplicate_4_q\)) # (!\input_reg_shamt|q\(3) & 
-- ((\my_alu|ShiftRight0~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(2),
	datab => \input_reg_b|q[31]~_Duplicate_4_q\,
	datac => \input_reg_shamt|q\(3),
	datad => \my_alu|ShiftRight0~6_combout\,
	combout => \my_alu|ShiftRight1~60_combout\);

-- Location: IOOBUF_X20_Y73_N23
\hi[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_reg_hi|q\(0),
	devoe => ww_devoe,
	o => \hi[0]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\hi[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_reg_hi|q\(1),
	devoe => ww_devoe,
	o => \hi[1]~output_o\);

-- Location: IOOBUF_X23_Y73_N2
\hi[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_reg_hi|q\(2),
	devoe => ww_devoe,
	o => \hi[2]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\hi[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_reg_hi|q\(3),
	devoe => ww_devoe,
	o => \hi[3]~output_o\);

-- Location: IOOBUF_X20_Y73_N16
\hi[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_reg_hi|q\(4),
	devoe => ww_devoe,
	o => \hi[4]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\hi[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_reg_hi|q\(5),
	devoe => ww_devoe,
	o => \hi[5]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\hi[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_reg_hi|q\(6),
	devoe => ww_devoe,
	o => \hi[6]~output_o\);

-- Location: IOOBUF_X0_Y19_N9
\hi[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_reg_hi|q\(7),
	devoe => ww_devoe,
	o => \hi[7]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\hi[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_reg_hi|q\(8),
	devoe => ww_devoe,
	o => \hi[8]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\hi[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_reg_hi|q\(9),
	devoe => ww_devoe,
	o => \hi[9]~output_o\);

-- Location: IOOBUF_X56_Y0_N16
\hi[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_reg_hi|q\(10),
	devoe => ww_devoe,
	o => \hi[10]~output_o\);

-- Location: IOOBUF_X13_Y0_N23
\hi[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_reg_hi|q\(11),
	devoe => ww_devoe,
	o => \hi[11]~output_o\);

-- Location: IOOBUF_X9_Y0_N9
\hi[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_reg_hi|q\(12),
	devoe => ww_devoe,
	o => \hi[12]~output_o\);

-- Location: IOOBUF_X65_Y0_N16
\hi[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_reg_hi|q\(13),
	devoe => ww_devoe,
	o => \hi[13]~output_o\);

-- Location: IOOBUF_X23_Y73_N16
\hi[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_reg_hi|q\(14),
	devoe => ww_devoe,
	o => \hi[14]~output_o\);

-- Location: IOOBUF_X115_Y18_N9
\hi[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_reg_hi|q\(15),
	devoe => ww_devoe,
	o => \hi[15]~output_o\);

-- Location: IOOBUF_X0_Y19_N2
\hi[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_reg_hi|q\(16),
	devoe => ww_devoe,
	o => \hi[16]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\hi[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_reg_hi|q\(17),
	devoe => ww_devoe,
	o => \hi[17]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\hi[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_reg_hi|q\(18),
	devoe => ww_devoe,
	o => \hi[18]~output_o\);

-- Location: IOOBUF_X23_Y73_N9
\hi[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_reg_hi|q\(19),
	devoe => ww_devoe,
	o => \hi[19]~output_o\);

-- Location: IOOBUF_X0_Y15_N23
\hi[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_reg_hi|q\(20),
	devoe => ww_devoe,
	o => \hi[20]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\hi[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_reg_hi|q\(21),
	devoe => ww_devoe,
	o => \hi[21]~output_o\);

-- Location: IOOBUF_X20_Y73_N9
\hi[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_reg_hi|q\(22),
	devoe => ww_devoe,
	o => \hi[22]~output_o\);

-- Location: IOOBUF_X0_Y14_N9
\hi[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_reg_hi|q\(23),
	devoe => ww_devoe,
	o => \hi[23]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\hi[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_reg_hi|q\(24),
	devoe => ww_devoe,
	o => \hi[24]~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\hi[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_reg_hi|q\(25),
	devoe => ww_devoe,
	o => \hi[25]~output_o\);

-- Location: IOOBUF_X25_Y73_N23
\hi[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_reg_hi|q\(26),
	devoe => ww_devoe,
	o => \hi[26]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\hi[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_reg_hi|q\(27),
	devoe => ww_devoe,
	o => \hi[27]~output_o\);

-- Location: IOOBUF_X20_Y0_N16
\hi[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_reg_hi|q\(28),
	devoe => ww_devoe,
	o => \hi[28]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\hi[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_reg_hi|q\(29),
	devoe => ww_devoe,
	o => \hi[29]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\hi[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_reg_hi|q\(30),
	devoe => ww_devoe,
	o => \hi[30]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\hi[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_reg_hi|q\(31),
	devoe => ww_devoe,
	o => \hi[31]~output_o\);

-- Location: IOOBUF_X0_Y24_N2
\lo[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_reg_lo|q\(0),
	devoe => ww_devoe,
	o => \lo[0]~output_o\);

-- Location: IOOBUF_X65_Y0_N23
\lo[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_reg_lo|q\(1),
	devoe => ww_devoe,
	o => \lo[1]~output_o\);

-- Location: IOOBUF_X27_Y73_N23
\lo[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_reg_lo|q\(2),
	devoe => ww_devoe,
	o => \lo[2]~output_o\);

-- Location: IOOBUF_X29_Y73_N2
\lo[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_reg_lo|q\(3),
	devoe => ww_devoe,
	o => \lo[3]~output_o\);

-- Location: IOOBUF_X29_Y0_N23
\lo[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_reg_lo|q\(4),
	devoe => ww_devoe,
	o => \lo[4]~output_o\);

-- Location: IOOBUF_X56_Y0_N2
\lo[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_reg_lo|q\(5),
	devoe => ww_devoe,
	o => \lo[5]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\lo[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_reg_lo|q\(6),
	devoe => ww_devoe,
	o => \lo[6]~output_o\);

-- Location: IOOBUF_X29_Y73_N9
\lo[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_reg_lo|q\(7),
	devoe => ww_devoe,
	o => \lo[7]~output_o\);

-- Location: IOOBUF_X25_Y73_N16
\lo[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_reg_lo|q\(8),
	devoe => ww_devoe,
	o => \lo[8]~output_o\);

-- Location: IOOBUF_X20_Y0_N23
\lo[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_reg_lo|q\(9),
	devoe => ww_devoe,
	o => \lo[9]~output_o\);

-- Location: IOOBUF_X29_Y0_N16
\lo[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_reg_lo|q\(10),
	devoe => ww_devoe,
	o => \lo[10]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\lo[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_reg_lo|q\(11),
	devoe => ww_devoe,
	o => \lo[11]~output_o\);

-- Location: IOOBUF_X0_Y13_N2
\lo[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_reg_lo|q\(12),
	devoe => ww_devoe,
	o => \lo[12]~output_o\);

-- Location: IOOBUF_X0_Y14_N2
\lo[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_reg_lo|q\(13),
	devoe => ww_devoe,
	o => \lo[13]~output_o\);

-- Location: IOOBUF_X31_Y73_N9
\lo[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_reg_lo|q\(14),
	devoe => ww_devoe,
	o => \lo[14]~output_o\);

-- Location: IOOBUF_X27_Y73_N9
\lo[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_reg_lo|q\(15),
	devoe => ww_devoe,
	o => \lo[15]~output_o\);

-- Location: IOOBUF_X18_Y0_N2
\lo[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_reg_lo|q\(16),
	devoe => ww_devoe,
	o => \lo[16]~output_o\);

-- Location: IOOBUF_X0_Y13_N9
\lo[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_reg_lo|q\(17),
	devoe => ww_devoe,
	o => \lo[17]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\lo[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_reg_lo|q\(18),
	devoe => ww_devoe,
	o => \lo[18]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\lo[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_reg_lo|q\(19),
	devoe => ww_devoe,
	o => \lo[19]~output_o\);

-- Location: IOOBUF_X115_Y24_N9
\lo[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_reg_lo|q\(20),
	devoe => ww_devoe,
	o => \lo[20]~output_o\);

-- Location: IOOBUF_X23_Y0_N23
\lo[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_reg_lo|q\(21),
	devoe => ww_devoe,
	o => \lo[21]~output_o\);

-- Location: IOOBUF_X0_Y16_N23
\lo[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_reg_lo|q\(22),
	devoe => ww_devoe,
	o => \lo[22]~output_o\);

-- Location: IOOBUF_X23_Y73_N23
\lo[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_reg_lo|q\(23),
	devoe => ww_devoe,
	o => \lo[23]~output_o\);

-- Location: IOOBUF_X0_Y27_N23
\lo[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_reg_lo|q\(24),
	devoe => ww_devoe,
	o => \lo[24]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\lo[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_reg_lo|q\(25),
	devoe => ww_devoe,
	o => \lo[25]~output_o\);

-- Location: IOOBUF_X27_Y0_N9
\lo[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_reg_lo|q\(26),
	devoe => ww_devoe,
	o => \lo[26]~output_o\);

-- Location: IOOBUF_X33_Y73_N2
\lo[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_reg_lo|q\(27),
	devoe => ww_devoe,
	o => \lo[27]~output_o\);

-- Location: IOOBUF_X27_Y0_N23
\lo[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_reg_lo|q\(28),
	devoe => ww_devoe,
	o => \lo[28]~output_o\);

-- Location: IOOBUF_X0_Y20_N16
\lo[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_reg_lo|q\(29),
	devoe => ww_devoe,
	o => \lo[29]~output_o\);

-- Location: IOOBUF_X0_Y22_N23
\lo[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_reg_lo|q\(30),
	devoe => ww_devoe,
	o => \lo[30]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\lo[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_reg_lo|q\(31),
	devoe => ww_devoe,
	o => \lo[31]~output_o\);

-- Location: IOOBUF_X27_Y73_N16
\zero~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output_reg_zero|q\(0),
	devoe => ww_devoe,
	o => \zero~output_o\);

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

-- Location: IOIBUF_X31_Y0_N1
\op[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op(2),
	o => \op[2]~input_o\);

-- Location: FF_X29_Y18_N15
\input_reg_op|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \op[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_reg_op|q\(2));

-- Location: IOIBUF_X115_Y21_N15
\op[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op(1),
	o => \op[1]~input_o\);

-- Location: FF_X31_Y21_N17
\input_reg_op|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \op[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_reg_op|q\(1));

-- Location: LCCOMB_X25_Y20_N22
\output_reg_hi|q[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \output_reg_hi|q[0]~0_combout\ = (\input_reg_op|q\(3)) # ((!\input_reg_op|q\(1)) # (!\input_reg_op|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(3),
	datab => \input_reg_op|q\(2),
	datac => \input_reg_op|q\(1),
	combout => \output_reg_hi|q[0]~0_combout\);

-- Location: IOIBUF_X115_Y23_N1
\a[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: IOIBUF_X38_Y0_N8
\a[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: IOIBUF_X47_Y0_N1
\a[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: IOIBUF_X0_Y25_N22
\a[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: IOIBUF_X47_Y0_N8
\a[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(4),
	o => \a[4]~input_o\);

-- Location: IOIBUF_X49_Y0_N8
\a[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(5),
	o => \a[5]~input_o\);

-- Location: IOIBUF_X38_Y73_N1
\a[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(6),
	o => \a[6]~input_o\);

-- Location: IOIBUF_X60_Y0_N8
\a[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(7),
	o => \a[7]~input_o\);

-- Location: IOIBUF_X40_Y0_N15
\a[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(8),
	o => \a[8]~input_o\);

-- Location: IOIBUF_X42_Y73_N1
\a[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(9),
	o => \a[9]~input_o\);

-- Location: IOIBUF_X35_Y0_N15
\a[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(10),
	o => \a[10]~input_o\);

-- Location: IOIBUF_X115_Y23_N8
\a[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(11),
	o => \a[11]~input_o\);

-- Location: IOIBUF_X35_Y73_N22
\a[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(12),
	o => \a[12]~input_o\);

-- Location: IOIBUF_X0_Y23_N22
\a[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(13),
	o => \a[13]~input_o\);

-- Location: IOIBUF_X45_Y0_N22
\a[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(14),
	o => \a[14]~input_o\);

-- Location: IOIBUF_X45_Y0_N15
\a[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(15),
	o => \a[15]~input_o\);

-- Location: IOIBUF_X42_Y0_N22
\a[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(16),
	o => \a[16]~input_o\);

-- Location: IOIBUF_X54_Y0_N1
\a[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(17),
	o => \a[17]~input_o\);

-- Location: IOIBUF_X42_Y73_N8
\b[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(0),
	o => \b[0]~input_o\);

-- Location: IOIBUF_X54_Y0_N8
\b[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

-- Location: IOIBUF_X115_Y20_N8
\b[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(2),
	o => \b[2]~input_o\);

-- Location: IOIBUF_X38_Y0_N1
\b[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(3),
	o => \b[3]~input_o\);

-- Location: IOIBUF_X65_Y0_N1
\b[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(4),
	o => \b[4]~input_o\);

-- Location: IOIBUF_X0_Y18_N15
\b[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(5),
	o => \b[5]~input_o\);

-- Location: IOIBUF_X49_Y0_N22
\b[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(6),
	o => \b[6]~input_o\);

-- Location: IOIBUF_X0_Y21_N22
\b[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(7),
	o => \b[7]~input_o\);

-- Location: IOIBUF_X0_Y22_N15
\b[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(8),
	o => \b[8]~input_o\);

-- Location: IOIBUF_X42_Y0_N15
\b[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(9),
	o => \b[9]~input_o\);

-- Location: IOIBUF_X52_Y0_N8
\b[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(10),
	o => \b[10]~input_o\);

-- Location: IOIBUF_X0_Y25_N15
\b[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(11),
	o => \b[11]~input_o\);

-- Location: IOIBUF_X115_Y20_N1
\b[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(12),
	o => \b[12]~input_o\);

-- Location: IOIBUF_X38_Y73_N22
\b[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(13),
	o => \b[13]~input_o\);

-- Location: IOIBUF_X62_Y0_N22
\b[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(14),
	o => \b[14]~input_o\);

-- Location: IOIBUF_X54_Y0_N22
\b[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(15),
	o => \b[15]~input_o\);

-- Location: IOIBUF_X35_Y73_N15
\b[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(16),
	o => \b[16]~input_o\);

-- Location: IOIBUF_X60_Y0_N1
\b[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(17),
	o => \b[17]~input_o\);

-- Location: DSPMULT_X44_Y20_N0
\my_alu|Mult0|auto_generated|mac_mult1\ : cycloneive_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "0",
	dataa_width => 18,
	datab_clock => "0",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => GND,
	clk => \clk~inputclkctrl_outclk\,
	aclr => GND,
	ena => VCC,
	dataa => \my_alu|Mult0|auto_generated|mac_mult1_DATAA_bus\,
	datab => \my_alu|Mult0|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \my_alu|Mult0|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: IOIBUF_X60_Y0_N15
\a[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(18),
	o => \a[18]~input_o\);

-- Location: IOIBUF_X60_Y0_N22
\a[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(19),
	o => \a[19]~input_o\);

-- Location: IOIBUF_X35_Y0_N22
\a[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(20),
	o => \a[20]~input_o\);

-- Location: IOIBUF_X115_Y17_N1
\a[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(21),
	o => \a[21]~input_o\);

-- Location: IOIBUF_X52_Y0_N1
\a[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(22),
	o => \a[22]~input_o\);

-- Location: IOIBUF_X0_Y24_N15
\a[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(23),
	o => \a[23]~input_o\);

-- Location: IOIBUF_X56_Y0_N8
\a[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(24),
	o => \a[24]~input_o\);

-- Location: IOIBUF_X0_Y21_N15
\a[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(25),
	o => \a[25]~input_o\);

-- Location: IOIBUF_X54_Y0_N15
\a[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(26),
	o => \a[26]~input_o\);

-- Location: IOIBUF_X0_Y16_N15
\a[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(27),
	o => \a[27]~input_o\);

-- Location: IOIBUF_X49_Y0_N1
\a[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(28),
	o => \a[28]~input_o\);

-- Location: IOIBUF_X20_Y0_N1
\a[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(29),
	o => \a[29]~input_o\);

-- Location: IOIBUF_X52_Y0_N15
\a[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(30),
	o => \a[30]~input_o\);

-- Location: IOIBUF_X115_Y22_N22
\a[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(31),
	o => \a[31]~input_o\);

-- Location: DSPMULT_X44_Y22_N0
\my_alu|Mult0|auto_generated|mac_mult5\ : cycloneive_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "0",
	dataa_width => 18,
	datab_clock => "0",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => VCC,
	clk => \clk~inputclkctrl_outclk\,
	aclr => GND,
	ena => VCC,
	dataa => \my_alu|Mult0|auto_generated|mac_mult5_DATAA_bus\,
	datab => \my_alu|Mult0|auto_generated|mac_mult5_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \my_alu|Mult0|auto_generated|mac_mult5_DATAOUT_bus\);

-- Location: IOIBUF_X0_Y17_N15
\b[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(18),
	o => \b[18]~input_o\);

-- Location: IOIBUF_X49_Y0_N15
\b[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(19),
	o => \b[19]~input_o\);

-- Location: IOIBUF_X40_Y73_N8
\b[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(20),
	o => \b[20]~input_o\);

-- Location: IOIBUF_X115_Y22_N15
\b[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(21),
	o => \b[21]~input_o\);

-- Location: IOIBUF_X33_Y0_N8
\b[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(22),
	o => \b[22]~input_o\);

-- Location: IOIBUF_X33_Y0_N1
\b[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(23),
	o => \b[23]~input_o\);

-- Location: IOIBUF_X56_Y0_N22
\b[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(24),
	o => \b[24]~input_o\);

-- Location: IOIBUF_X38_Y73_N8
\b[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(25),
	o => \b[25]~input_o\);

-- Location: IOIBUF_X52_Y0_N22
\b[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(26),
	o => \b[26]~input_o\);

-- Location: IOIBUF_X0_Y18_N22
\b[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(27),
	o => \b[27]~input_o\);

-- Location: IOIBUF_X0_Y15_N15
\b[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(28),
	o => \b[28]~input_o\);

-- Location: IOIBUF_X0_Y24_N22
\b[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(29),
	o => \b[29]~input_o\);

-- Location: IOIBUF_X0_Y24_N8
\b[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(30),
	o => \b[30]~input_o\);

-- Location: IOIBUF_X40_Y0_N22
\b[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(31),
	o => \b[31]~input_o\);

-- Location: DSPMULT_X44_Y23_N0
\my_alu|Mult0|auto_generated|mac_mult3\ : cycloneive_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "0",
	dataa_width => 18,
	datab_clock => "0",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => VCC,
	clk => \clk~inputclkctrl_outclk\,
	aclr => GND,
	ena => VCC,
	dataa => \my_alu|Mult0|auto_generated|mac_mult3_DATAA_bus\,
	datab => \my_alu|Mult0|auto_generated|mac_mult3_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \my_alu|Mult0|auto_generated|mac_mult3_DATAOUT_bus\);

-- Location: LCCOMB_X43_Y23_N8
\my_alu|Mult0|auto_generated|add9_result[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult0|auto_generated|add9_result[3]~6_combout\ = (\my_alu|Mult0|auto_generated|mac_out4~DATAOUT3\ & ((\my_alu|Mult0|auto_generated|mac_out6~DATAOUT3\ & (\my_alu|Mult0|auto_generated|add9_result[2]~5\ & VCC)) # 
-- (!\my_alu|Mult0|auto_generated|mac_out6~DATAOUT3\ & (!\my_alu|Mult0|auto_generated|add9_result[2]~5\)))) # (!\my_alu|Mult0|auto_generated|mac_out4~DATAOUT3\ & ((\my_alu|Mult0|auto_generated|mac_out6~DATAOUT3\ & 
-- (!\my_alu|Mult0|auto_generated|add9_result[2]~5\)) # (!\my_alu|Mult0|auto_generated|mac_out6~DATAOUT3\ & ((\my_alu|Mult0|auto_generated|add9_result[2]~5\) # (GND)))))
-- \my_alu|Mult0|auto_generated|add9_result[3]~7\ = CARRY((\my_alu|Mult0|auto_generated|mac_out4~DATAOUT3\ & (!\my_alu|Mult0|auto_generated|mac_out6~DATAOUT3\ & !\my_alu|Mult0|auto_generated|add9_result[2]~5\)) # 
-- (!\my_alu|Mult0|auto_generated|mac_out4~DATAOUT3\ & ((!\my_alu|Mult0|auto_generated|add9_result[2]~5\) # (!\my_alu|Mult0|auto_generated|mac_out6~DATAOUT3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult0|auto_generated|mac_out4~DATAOUT3\,
	datab => \my_alu|Mult0|auto_generated|mac_out6~DATAOUT3\,
	datad => VCC,
	cin => \my_alu|Mult0|auto_generated|add9_result[2]~5\,
	combout => \my_alu|Mult0|auto_generated|add9_result[3]~6_combout\,
	cout => \my_alu|Mult0|auto_generated|add9_result[3]~7\);

-- Location: LCCOMB_X43_Y23_N10
\my_alu|Mult0|auto_generated|add9_result[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult0|auto_generated|add9_result[4]~8_combout\ = ((\my_alu|Mult0|auto_generated|mac_out6~DATAOUT4\ $ (\my_alu|Mult0|auto_generated|mac_out4~DATAOUT4\ $ (!\my_alu|Mult0|auto_generated|add9_result[3]~7\)))) # (GND)
-- \my_alu|Mult0|auto_generated|add9_result[4]~9\ = CARRY((\my_alu|Mult0|auto_generated|mac_out6~DATAOUT4\ & ((\my_alu|Mult0|auto_generated|mac_out4~DATAOUT4\) # (!\my_alu|Mult0|auto_generated|add9_result[3]~7\))) # 
-- (!\my_alu|Mult0|auto_generated|mac_out6~DATAOUT4\ & (\my_alu|Mult0|auto_generated|mac_out4~DATAOUT4\ & !\my_alu|Mult0|auto_generated|add9_result[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult0|auto_generated|mac_out6~DATAOUT4\,
	datab => \my_alu|Mult0|auto_generated|mac_out4~DATAOUT4\,
	datad => VCC,
	cin => \my_alu|Mult0|auto_generated|add9_result[3]~7\,
	combout => \my_alu|Mult0|auto_generated|add9_result[4]~8_combout\,
	cout => \my_alu|Mult0|auto_generated|add9_result[4]~9\);

-- Location: LCCOMB_X43_Y23_N12
\my_alu|Mult0|auto_generated|add9_result[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult0|auto_generated|add9_result[5]~10_combout\ = (\my_alu|Mult0|auto_generated|mac_out4~DATAOUT5\ & ((\my_alu|Mult0|auto_generated|mac_out6~DATAOUT5\ & (\my_alu|Mult0|auto_generated|add9_result[4]~9\ & VCC)) # 
-- (!\my_alu|Mult0|auto_generated|mac_out6~DATAOUT5\ & (!\my_alu|Mult0|auto_generated|add9_result[4]~9\)))) # (!\my_alu|Mult0|auto_generated|mac_out4~DATAOUT5\ & ((\my_alu|Mult0|auto_generated|mac_out6~DATAOUT5\ & 
-- (!\my_alu|Mult0|auto_generated|add9_result[4]~9\)) # (!\my_alu|Mult0|auto_generated|mac_out6~DATAOUT5\ & ((\my_alu|Mult0|auto_generated|add9_result[4]~9\) # (GND)))))
-- \my_alu|Mult0|auto_generated|add9_result[5]~11\ = CARRY((\my_alu|Mult0|auto_generated|mac_out4~DATAOUT5\ & (!\my_alu|Mult0|auto_generated|mac_out6~DATAOUT5\ & !\my_alu|Mult0|auto_generated|add9_result[4]~9\)) # 
-- (!\my_alu|Mult0|auto_generated|mac_out4~DATAOUT5\ & ((!\my_alu|Mult0|auto_generated|add9_result[4]~9\) # (!\my_alu|Mult0|auto_generated|mac_out6~DATAOUT5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult0|auto_generated|mac_out4~DATAOUT5\,
	datab => \my_alu|Mult0|auto_generated|mac_out6~DATAOUT5\,
	datad => VCC,
	cin => \my_alu|Mult0|auto_generated|add9_result[4]~9\,
	combout => \my_alu|Mult0|auto_generated|add9_result[5]~10_combout\,
	cout => \my_alu|Mult0|auto_generated|add9_result[5]~11\);

-- Location: LCCOMB_X43_Y23_N14
\my_alu|Mult0|auto_generated|add9_result[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult0|auto_generated|add9_result[6]~12_combout\ = ((\my_alu|Mult0|auto_generated|mac_out6~DATAOUT6\ $ (\my_alu|Mult0|auto_generated|mac_out4~DATAOUT6\ $ (!\my_alu|Mult0|auto_generated|add9_result[5]~11\)))) # (GND)
-- \my_alu|Mult0|auto_generated|add9_result[6]~13\ = CARRY((\my_alu|Mult0|auto_generated|mac_out6~DATAOUT6\ & ((\my_alu|Mult0|auto_generated|mac_out4~DATAOUT6\) # (!\my_alu|Mult0|auto_generated|add9_result[5]~11\))) # 
-- (!\my_alu|Mult0|auto_generated|mac_out6~DATAOUT6\ & (\my_alu|Mult0|auto_generated|mac_out4~DATAOUT6\ & !\my_alu|Mult0|auto_generated|add9_result[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult0|auto_generated|mac_out6~DATAOUT6\,
	datab => \my_alu|Mult0|auto_generated|mac_out4~DATAOUT6\,
	datad => VCC,
	cin => \my_alu|Mult0|auto_generated|add9_result[5]~11\,
	combout => \my_alu|Mult0|auto_generated|add9_result[6]~12_combout\,
	cout => \my_alu|Mult0|auto_generated|add9_result[6]~13\);

-- Location: LCCOMB_X43_Y23_N16
\my_alu|Mult0|auto_generated|add9_result[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult0|auto_generated|add9_result[7]~14_combout\ = (\my_alu|Mult0|auto_generated|mac_out4~DATAOUT7\ & ((\my_alu|Mult0|auto_generated|mac_out6~DATAOUT7\ & (\my_alu|Mult0|auto_generated|add9_result[6]~13\ & VCC)) # 
-- (!\my_alu|Mult0|auto_generated|mac_out6~DATAOUT7\ & (!\my_alu|Mult0|auto_generated|add9_result[6]~13\)))) # (!\my_alu|Mult0|auto_generated|mac_out4~DATAOUT7\ & ((\my_alu|Mult0|auto_generated|mac_out6~DATAOUT7\ & 
-- (!\my_alu|Mult0|auto_generated|add9_result[6]~13\)) # (!\my_alu|Mult0|auto_generated|mac_out6~DATAOUT7\ & ((\my_alu|Mult0|auto_generated|add9_result[6]~13\) # (GND)))))
-- \my_alu|Mult0|auto_generated|add9_result[7]~15\ = CARRY((\my_alu|Mult0|auto_generated|mac_out4~DATAOUT7\ & (!\my_alu|Mult0|auto_generated|mac_out6~DATAOUT7\ & !\my_alu|Mult0|auto_generated|add9_result[6]~13\)) # 
-- (!\my_alu|Mult0|auto_generated|mac_out4~DATAOUT7\ & ((!\my_alu|Mult0|auto_generated|add9_result[6]~13\) # (!\my_alu|Mult0|auto_generated|mac_out6~DATAOUT7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult0|auto_generated|mac_out4~DATAOUT7\,
	datab => \my_alu|Mult0|auto_generated|mac_out6~DATAOUT7\,
	datad => VCC,
	cin => \my_alu|Mult0|auto_generated|add9_result[6]~13\,
	combout => \my_alu|Mult0|auto_generated|add9_result[7]~14_combout\,
	cout => \my_alu|Mult0|auto_generated|add9_result[7]~15\);

-- Location: LCCOMB_X43_Y23_N18
\my_alu|Mult0|auto_generated|add9_result[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult0|auto_generated|add9_result[8]~16_combout\ = ((\my_alu|Mult0|auto_generated|mac_out6~DATAOUT8\ $ (\my_alu|Mult0|auto_generated|mac_out4~DATAOUT8\ $ (!\my_alu|Mult0|auto_generated|add9_result[7]~15\)))) # (GND)
-- \my_alu|Mult0|auto_generated|add9_result[8]~17\ = CARRY((\my_alu|Mult0|auto_generated|mac_out6~DATAOUT8\ & ((\my_alu|Mult0|auto_generated|mac_out4~DATAOUT8\) # (!\my_alu|Mult0|auto_generated|add9_result[7]~15\))) # 
-- (!\my_alu|Mult0|auto_generated|mac_out6~DATAOUT8\ & (\my_alu|Mult0|auto_generated|mac_out4~DATAOUT8\ & !\my_alu|Mult0|auto_generated|add9_result[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult0|auto_generated|mac_out6~DATAOUT8\,
	datab => \my_alu|Mult0|auto_generated|mac_out4~DATAOUT8\,
	datad => VCC,
	cin => \my_alu|Mult0|auto_generated|add9_result[7]~15\,
	combout => \my_alu|Mult0|auto_generated|add9_result[8]~16_combout\,
	cout => \my_alu|Mult0|auto_generated|add9_result[8]~17\);

-- Location: LCCOMB_X43_Y23_N22
\my_alu|Mult0|auto_generated|add9_result[10]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult0|auto_generated|add9_result[10]~20_combout\ = ((\my_alu|Mult0|auto_generated|mac_out4~DATAOUT10\ $ (\my_alu|Mult0|auto_generated|mac_out6~DATAOUT10\ $ (!\my_alu|Mult0|auto_generated|add9_result[9]~19\)))) # (GND)
-- \my_alu|Mult0|auto_generated|add9_result[10]~21\ = CARRY((\my_alu|Mult0|auto_generated|mac_out4~DATAOUT10\ & ((\my_alu|Mult0|auto_generated|mac_out6~DATAOUT10\) # (!\my_alu|Mult0|auto_generated|add9_result[9]~19\))) # 
-- (!\my_alu|Mult0|auto_generated|mac_out4~DATAOUT10\ & (\my_alu|Mult0|auto_generated|mac_out6~DATAOUT10\ & !\my_alu|Mult0|auto_generated|add9_result[9]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult0|auto_generated|mac_out4~DATAOUT10\,
	datab => \my_alu|Mult0|auto_generated|mac_out6~DATAOUT10\,
	datad => VCC,
	cin => \my_alu|Mult0|auto_generated|add9_result[9]~19\,
	combout => \my_alu|Mult0|auto_generated|add9_result[10]~20_combout\,
	cout => \my_alu|Mult0|auto_generated|add9_result[10]~21\);

-- Location: LCCOMB_X43_Y23_N26
\my_alu|Mult0|auto_generated|add9_result[12]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult0|auto_generated|add9_result[12]~24_combout\ = ((\my_alu|Mult0|auto_generated|mac_out6~DATAOUT12\ $ (\my_alu|Mult0|auto_generated|mac_out4~DATAOUT12\ $ (!\my_alu|Mult0|auto_generated|add9_result[11]~23\)))) # (GND)
-- \my_alu|Mult0|auto_generated|add9_result[12]~25\ = CARRY((\my_alu|Mult0|auto_generated|mac_out6~DATAOUT12\ & ((\my_alu|Mult0|auto_generated|mac_out4~DATAOUT12\) # (!\my_alu|Mult0|auto_generated|add9_result[11]~23\))) # 
-- (!\my_alu|Mult0|auto_generated|mac_out6~DATAOUT12\ & (\my_alu|Mult0|auto_generated|mac_out4~DATAOUT12\ & !\my_alu|Mult0|auto_generated|add9_result[11]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult0|auto_generated|mac_out6~DATAOUT12\,
	datab => \my_alu|Mult0|auto_generated|mac_out4~DATAOUT12\,
	datad => VCC,
	cin => \my_alu|Mult0|auto_generated|add9_result[11]~23\,
	combout => \my_alu|Mult0|auto_generated|add9_result[12]~24_combout\,
	cout => \my_alu|Mult0|auto_generated|add9_result[12]~25\);

-- Location: LCCOMB_X43_Y23_N28
\my_alu|Mult0|auto_generated|add9_result[13]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult0|auto_generated|add9_result[13]~26_combout\ = (\my_alu|Mult0|auto_generated|mac_out4~DATAOUT13\ & ((\my_alu|Mult0|auto_generated|mac_out6~DATAOUT13\ & (\my_alu|Mult0|auto_generated|add9_result[12]~25\ & VCC)) # 
-- (!\my_alu|Mult0|auto_generated|mac_out6~DATAOUT13\ & (!\my_alu|Mult0|auto_generated|add9_result[12]~25\)))) # (!\my_alu|Mult0|auto_generated|mac_out4~DATAOUT13\ & ((\my_alu|Mult0|auto_generated|mac_out6~DATAOUT13\ & 
-- (!\my_alu|Mult0|auto_generated|add9_result[12]~25\)) # (!\my_alu|Mult0|auto_generated|mac_out6~DATAOUT13\ & ((\my_alu|Mult0|auto_generated|add9_result[12]~25\) # (GND)))))
-- \my_alu|Mult0|auto_generated|add9_result[13]~27\ = CARRY((\my_alu|Mult0|auto_generated|mac_out4~DATAOUT13\ & (!\my_alu|Mult0|auto_generated|mac_out6~DATAOUT13\ & !\my_alu|Mult0|auto_generated|add9_result[12]~25\)) # 
-- (!\my_alu|Mult0|auto_generated|mac_out4~DATAOUT13\ & ((!\my_alu|Mult0|auto_generated|add9_result[12]~25\) # (!\my_alu|Mult0|auto_generated|mac_out6~DATAOUT13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult0|auto_generated|mac_out4~DATAOUT13\,
	datab => \my_alu|Mult0|auto_generated|mac_out6~DATAOUT13\,
	datad => VCC,
	cin => \my_alu|Mult0|auto_generated|add9_result[12]~25\,
	combout => \my_alu|Mult0|auto_generated|add9_result[13]~26_combout\,
	cout => \my_alu|Mult0|auto_generated|add9_result[13]~27\);

-- Location: LCCOMB_X42_Y23_N2
\my_alu|Mult0|auto_generated|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult0|auto_generated|op_1~0_combout\ = (\my_alu|Mult0|auto_generated|add9_result[0]~0_combout\ & (\my_alu|Mult0|auto_generated|mac_out2~DATAOUT18\ $ (VCC))) # (!\my_alu|Mult0|auto_generated|add9_result[0]~0_combout\ & 
-- (\my_alu|Mult0|auto_generated|mac_out2~DATAOUT18\ & VCC))
-- \my_alu|Mult0|auto_generated|op_1~1\ = CARRY((\my_alu|Mult0|auto_generated|add9_result[0]~0_combout\ & \my_alu|Mult0|auto_generated|mac_out2~DATAOUT18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult0|auto_generated|add9_result[0]~0_combout\,
	datab => \my_alu|Mult0|auto_generated|mac_out2~DATAOUT18\,
	datad => VCC,
	combout => \my_alu|Mult0|auto_generated|op_1~0_combout\,
	cout => \my_alu|Mult0|auto_generated|op_1~1\);

-- Location: LCCOMB_X42_Y23_N4
\my_alu|Mult0|auto_generated|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult0|auto_generated|op_1~2_combout\ = (\my_alu|Mult0|auto_generated|add9_result[1]~2_combout\ & ((\my_alu|Mult0|auto_generated|mac_out2~DATAOUT19\ & (\my_alu|Mult0|auto_generated|op_1~1\ & VCC)) # 
-- (!\my_alu|Mult0|auto_generated|mac_out2~DATAOUT19\ & (!\my_alu|Mult0|auto_generated|op_1~1\)))) # (!\my_alu|Mult0|auto_generated|add9_result[1]~2_combout\ & ((\my_alu|Mult0|auto_generated|mac_out2~DATAOUT19\ & (!\my_alu|Mult0|auto_generated|op_1~1\)) # 
-- (!\my_alu|Mult0|auto_generated|mac_out2~DATAOUT19\ & ((\my_alu|Mult0|auto_generated|op_1~1\) # (GND)))))
-- \my_alu|Mult0|auto_generated|op_1~3\ = CARRY((\my_alu|Mult0|auto_generated|add9_result[1]~2_combout\ & (!\my_alu|Mult0|auto_generated|mac_out2~DATAOUT19\ & !\my_alu|Mult0|auto_generated|op_1~1\)) # (!\my_alu|Mult0|auto_generated|add9_result[1]~2_combout\ 
-- & ((!\my_alu|Mult0|auto_generated|op_1~1\) # (!\my_alu|Mult0|auto_generated|mac_out2~DATAOUT19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult0|auto_generated|add9_result[1]~2_combout\,
	datab => \my_alu|Mult0|auto_generated|mac_out2~DATAOUT19\,
	datad => VCC,
	cin => \my_alu|Mult0|auto_generated|op_1~1\,
	combout => \my_alu|Mult0|auto_generated|op_1~2_combout\,
	cout => \my_alu|Mult0|auto_generated|op_1~3\);

-- Location: LCCOMB_X42_Y23_N6
\my_alu|Mult0|auto_generated|op_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult0|auto_generated|op_1~4_combout\ = ((\my_alu|Mult0|auto_generated|add9_result[2]~4_combout\ $ (\my_alu|Mult0|auto_generated|mac_out2~DATAOUT20\ $ (!\my_alu|Mult0|auto_generated|op_1~3\)))) # (GND)
-- \my_alu|Mult0|auto_generated|op_1~5\ = CARRY((\my_alu|Mult0|auto_generated|add9_result[2]~4_combout\ & ((\my_alu|Mult0|auto_generated|mac_out2~DATAOUT20\) # (!\my_alu|Mult0|auto_generated|op_1~3\))) # 
-- (!\my_alu|Mult0|auto_generated|add9_result[2]~4_combout\ & (\my_alu|Mult0|auto_generated|mac_out2~DATAOUT20\ & !\my_alu|Mult0|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult0|auto_generated|add9_result[2]~4_combout\,
	datab => \my_alu|Mult0|auto_generated|mac_out2~DATAOUT20\,
	datad => VCC,
	cin => \my_alu|Mult0|auto_generated|op_1~3\,
	combout => \my_alu|Mult0|auto_generated|op_1~4_combout\,
	cout => \my_alu|Mult0|auto_generated|op_1~5\);

-- Location: LCCOMB_X42_Y23_N8
\my_alu|Mult0|auto_generated|op_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult0|auto_generated|op_1~6_combout\ = (\my_alu|Mult0|auto_generated|mac_out2~DATAOUT21\ & ((\my_alu|Mult0|auto_generated|add9_result[3]~6_combout\ & (\my_alu|Mult0|auto_generated|op_1~5\ & VCC)) # 
-- (!\my_alu|Mult0|auto_generated|add9_result[3]~6_combout\ & (!\my_alu|Mult0|auto_generated|op_1~5\)))) # (!\my_alu|Mult0|auto_generated|mac_out2~DATAOUT21\ & ((\my_alu|Mult0|auto_generated|add9_result[3]~6_combout\ & 
-- (!\my_alu|Mult0|auto_generated|op_1~5\)) # (!\my_alu|Mult0|auto_generated|add9_result[3]~6_combout\ & ((\my_alu|Mult0|auto_generated|op_1~5\) # (GND)))))
-- \my_alu|Mult0|auto_generated|op_1~7\ = CARRY((\my_alu|Mult0|auto_generated|mac_out2~DATAOUT21\ & (!\my_alu|Mult0|auto_generated|add9_result[3]~6_combout\ & !\my_alu|Mult0|auto_generated|op_1~5\)) # (!\my_alu|Mult0|auto_generated|mac_out2~DATAOUT21\ & 
-- ((!\my_alu|Mult0|auto_generated|op_1~5\) # (!\my_alu|Mult0|auto_generated|add9_result[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult0|auto_generated|mac_out2~DATAOUT21\,
	datab => \my_alu|Mult0|auto_generated|add9_result[3]~6_combout\,
	datad => VCC,
	cin => \my_alu|Mult0|auto_generated|op_1~5\,
	combout => \my_alu|Mult0|auto_generated|op_1~6_combout\,
	cout => \my_alu|Mult0|auto_generated|op_1~7\);

-- Location: LCCOMB_X42_Y23_N10
\my_alu|Mult0|auto_generated|op_1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult0|auto_generated|op_1~8_combout\ = ((\my_alu|Mult0|auto_generated|mac_out2~DATAOUT22\ $ (\my_alu|Mult0|auto_generated|add9_result[4]~8_combout\ $ (!\my_alu|Mult0|auto_generated|op_1~7\)))) # (GND)
-- \my_alu|Mult0|auto_generated|op_1~9\ = CARRY((\my_alu|Mult0|auto_generated|mac_out2~DATAOUT22\ & ((\my_alu|Mult0|auto_generated|add9_result[4]~8_combout\) # (!\my_alu|Mult0|auto_generated|op_1~7\))) # (!\my_alu|Mult0|auto_generated|mac_out2~DATAOUT22\ & 
-- (\my_alu|Mult0|auto_generated|add9_result[4]~8_combout\ & !\my_alu|Mult0|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult0|auto_generated|mac_out2~DATAOUT22\,
	datab => \my_alu|Mult0|auto_generated|add9_result[4]~8_combout\,
	datad => VCC,
	cin => \my_alu|Mult0|auto_generated|op_1~7\,
	combout => \my_alu|Mult0|auto_generated|op_1~8_combout\,
	cout => \my_alu|Mult0|auto_generated|op_1~9\);

-- Location: LCCOMB_X42_Y23_N12
\my_alu|Mult0|auto_generated|op_1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult0|auto_generated|op_1~10_combout\ = (\my_alu|Mult0|auto_generated|mac_out2~DATAOUT23\ & ((\my_alu|Mult0|auto_generated|add9_result[5]~10_combout\ & (\my_alu|Mult0|auto_generated|op_1~9\ & VCC)) # 
-- (!\my_alu|Mult0|auto_generated|add9_result[5]~10_combout\ & (!\my_alu|Mult0|auto_generated|op_1~9\)))) # (!\my_alu|Mult0|auto_generated|mac_out2~DATAOUT23\ & ((\my_alu|Mult0|auto_generated|add9_result[5]~10_combout\ & 
-- (!\my_alu|Mult0|auto_generated|op_1~9\)) # (!\my_alu|Mult0|auto_generated|add9_result[5]~10_combout\ & ((\my_alu|Mult0|auto_generated|op_1~9\) # (GND)))))
-- \my_alu|Mult0|auto_generated|op_1~11\ = CARRY((\my_alu|Mult0|auto_generated|mac_out2~DATAOUT23\ & (!\my_alu|Mult0|auto_generated|add9_result[5]~10_combout\ & !\my_alu|Mult0|auto_generated|op_1~9\)) # (!\my_alu|Mult0|auto_generated|mac_out2~DATAOUT23\ & 
-- ((!\my_alu|Mult0|auto_generated|op_1~9\) # (!\my_alu|Mult0|auto_generated|add9_result[5]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult0|auto_generated|mac_out2~DATAOUT23\,
	datab => \my_alu|Mult0|auto_generated|add9_result[5]~10_combout\,
	datad => VCC,
	cin => \my_alu|Mult0|auto_generated|op_1~9\,
	combout => \my_alu|Mult0|auto_generated|op_1~10_combout\,
	cout => \my_alu|Mult0|auto_generated|op_1~11\);

-- Location: LCCOMB_X42_Y23_N14
\my_alu|Mult0|auto_generated|op_1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult0|auto_generated|op_1~12_combout\ = ((\my_alu|Mult0|auto_generated|mac_out2~DATAOUT24\ $ (\my_alu|Mult0|auto_generated|add9_result[6]~12_combout\ $ (!\my_alu|Mult0|auto_generated|op_1~11\)))) # (GND)
-- \my_alu|Mult0|auto_generated|op_1~13\ = CARRY((\my_alu|Mult0|auto_generated|mac_out2~DATAOUT24\ & ((\my_alu|Mult0|auto_generated|add9_result[6]~12_combout\) # (!\my_alu|Mult0|auto_generated|op_1~11\))) # (!\my_alu|Mult0|auto_generated|mac_out2~DATAOUT24\ 
-- & (\my_alu|Mult0|auto_generated|add9_result[6]~12_combout\ & !\my_alu|Mult0|auto_generated|op_1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult0|auto_generated|mac_out2~DATAOUT24\,
	datab => \my_alu|Mult0|auto_generated|add9_result[6]~12_combout\,
	datad => VCC,
	cin => \my_alu|Mult0|auto_generated|op_1~11\,
	combout => \my_alu|Mult0|auto_generated|op_1~12_combout\,
	cout => \my_alu|Mult0|auto_generated|op_1~13\);

-- Location: LCCOMB_X42_Y23_N16
\my_alu|Mult0|auto_generated|op_1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult0|auto_generated|op_1~14_combout\ = (\my_alu|Mult0|auto_generated|mac_out2~DATAOUT25\ & ((\my_alu|Mult0|auto_generated|add9_result[7]~14_combout\ & (\my_alu|Mult0|auto_generated|op_1~13\ & VCC)) # 
-- (!\my_alu|Mult0|auto_generated|add9_result[7]~14_combout\ & (!\my_alu|Mult0|auto_generated|op_1~13\)))) # (!\my_alu|Mult0|auto_generated|mac_out2~DATAOUT25\ & ((\my_alu|Mult0|auto_generated|add9_result[7]~14_combout\ & 
-- (!\my_alu|Mult0|auto_generated|op_1~13\)) # (!\my_alu|Mult0|auto_generated|add9_result[7]~14_combout\ & ((\my_alu|Mult0|auto_generated|op_1~13\) # (GND)))))
-- \my_alu|Mult0|auto_generated|op_1~15\ = CARRY((\my_alu|Mult0|auto_generated|mac_out2~DATAOUT25\ & (!\my_alu|Mult0|auto_generated|add9_result[7]~14_combout\ & !\my_alu|Mult0|auto_generated|op_1~13\)) # (!\my_alu|Mult0|auto_generated|mac_out2~DATAOUT25\ & 
-- ((!\my_alu|Mult0|auto_generated|op_1~13\) # (!\my_alu|Mult0|auto_generated|add9_result[7]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult0|auto_generated|mac_out2~DATAOUT25\,
	datab => \my_alu|Mult0|auto_generated|add9_result[7]~14_combout\,
	datad => VCC,
	cin => \my_alu|Mult0|auto_generated|op_1~13\,
	combout => \my_alu|Mult0|auto_generated|op_1~14_combout\,
	cout => \my_alu|Mult0|auto_generated|op_1~15\);

-- Location: LCCOMB_X42_Y23_N18
\my_alu|Mult0|auto_generated|op_1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult0|auto_generated|op_1~16_combout\ = ((\my_alu|Mult0|auto_generated|mac_out2~DATAOUT26\ $ (\my_alu|Mult0|auto_generated|add9_result[8]~16_combout\ $ (!\my_alu|Mult0|auto_generated|op_1~15\)))) # (GND)
-- \my_alu|Mult0|auto_generated|op_1~17\ = CARRY((\my_alu|Mult0|auto_generated|mac_out2~DATAOUT26\ & ((\my_alu|Mult0|auto_generated|add9_result[8]~16_combout\) # (!\my_alu|Mult0|auto_generated|op_1~15\))) # (!\my_alu|Mult0|auto_generated|mac_out2~DATAOUT26\ 
-- & (\my_alu|Mult0|auto_generated|add9_result[8]~16_combout\ & !\my_alu|Mult0|auto_generated|op_1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult0|auto_generated|mac_out2~DATAOUT26\,
	datab => \my_alu|Mult0|auto_generated|add9_result[8]~16_combout\,
	datad => VCC,
	cin => \my_alu|Mult0|auto_generated|op_1~15\,
	combout => \my_alu|Mult0|auto_generated|op_1~16_combout\,
	cout => \my_alu|Mult0|auto_generated|op_1~17\);

-- Location: LCCOMB_X42_Y23_N20
\my_alu|Mult0|auto_generated|op_1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult0|auto_generated|op_1~18_combout\ = (\my_alu|Mult0|auto_generated|add9_result[9]~18_combout\ & ((\my_alu|Mult0|auto_generated|mac_out2~DATAOUT27\ & (\my_alu|Mult0|auto_generated|op_1~17\ & VCC)) # 
-- (!\my_alu|Mult0|auto_generated|mac_out2~DATAOUT27\ & (!\my_alu|Mult0|auto_generated|op_1~17\)))) # (!\my_alu|Mult0|auto_generated|add9_result[9]~18_combout\ & ((\my_alu|Mult0|auto_generated|mac_out2~DATAOUT27\ & (!\my_alu|Mult0|auto_generated|op_1~17\)) # 
-- (!\my_alu|Mult0|auto_generated|mac_out2~DATAOUT27\ & ((\my_alu|Mult0|auto_generated|op_1~17\) # (GND)))))
-- \my_alu|Mult0|auto_generated|op_1~19\ = CARRY((\my_alu|Mult0|auto_generated|add9_result[9]~18_combout\ & (!\my_alu|Mult0|auto_generated|mac_out2~DATAOUT27\ & !\my_alu|Mult0|auto_generated|op_1~17\)) # 
-- (!\my_alu|Mult0|auto_generated|add9_result[9]~18_combout\ & ((!\my_alu|Mult0|auto_generated|op_1~17\) # (!\my_alu|Mult0|auto_generated|mac_out2~DATAOUT27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult0|auto_generated|add9_result[9]~18_combout\,
	datab => \my_alu|Mult0|auto_generated|mac_out2~DATAOUT27\,
	datad => VCC,
	cin => \my_alu|Mult0|auto_generated|op_1~17\,
	combout => \my_alu|Mult0|auto_generated|op_1~18_combout\,
	cout => \my_alu|Mult0|auto_generated|op_1~19\);

-- Location: LCCOMB_X42_Y23_N22
\my_alu|Mult0|auto_generated|op_1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult0|auto_generated|op_1~20_combout\ = ((\my_alu|Mult0|auto_generated|mac_out2~DATAOUT28\ $ (\my_alu|Mult0|auto_generated|add9_result[10]~20_combout\ $ (!\my_alu|Mult0|auto_generated|op_1~19\)))) # (GND)
-- \my_alu|Mult0|auto_generated|op_1~21\ = CARRY((\my_alu|Mult0|auto_generated|mac_out2~DATAOUT28\ & ((\my_alu|Mult0|auto_generated|add9_result[10]~20_combout\) # (!\my_alu|Mult0|auto_generated|op_1~19\))) # (!\my_alu|Mult0|auto_generated|mac_out2~DATAOUT28\ 
-- & (\my_alu|Mult0|auto_generated|add9_result[10]~20_combout\ & !\my_alu|Mult0|auto_generated|op_1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult0|auto_generated|mac_out2~DATAOUT28\,
	datab => \my_alu|Mult0|auto_generated|add9_result[10]~20_combout\,
	datad => VCC,
	cin => \my_alu|Mult0|auto_generated|op_1~19\,
	combout => \my_alu|Mult0|auto_generated|op_1~20_combout\,
	cout => \my_alu|Mult0|auto_generated|op_1~21\);

-- Location: LCCOMB_X42_Y23_N24
\my_alu|Mult0|auto_generated|op_1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult0|auto_generated|op_1~22_combout\ = (\my_alu|Mult0|auto_generated|add9_result[11]~22_combout\ & ((\my_alu|Mult0|auto_generated|mac_out2~DATAOUT29\ & (\my_alu|Mult0|auto_generated|op_1~21\ & VCC)) # 
-- (!\my_alu|Mult0|auto_generated|mac_out2~DATAOUT29\ & (!\my_alu|Mult0|auto_generated|op_1~21\)))) # (!\my_alu|Mult0|auto_generated|add9_result[11]~22_combout\ & ((\my_alu|Mult0|auto_generated|mac_out2~DATAOUT29\ & (!\my_alu|Mult0|auto_generated|op_1~21\)) 
-- # (!\my_alu|Mult0|auto_generated|mac_out2~DATAOUT29\ & ((\my_alu|Mult0|auto_generated|op_1~21\) # (GND)))))
-- \my_alu|Mult0|auto_generated|op_1~23\ = CARRY((\my_alu|Mult0|auto_generated|add9_result[11]~22_combout\ & (!\my_alu|Mult0|auto_generated|mac_out2~DATAOUT29\ & !\my_alu|Mult0|auto_generated|op_1~21\)) # 
-- (!\my_alu|Mult0|auto_generated|add9_result[11]~22_combout\ & ((!\my_alu|Mult0|auto_generated|op_1~21\) # (!\my_alu|Mult0|auto_generated|mac_out2~DATAOUT29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult0|auto_generated|add9_result[11]~22_combout\,
	datab => \my_alu|Mult0|auto_generated|mac_out2~DATAOUT29\,
	datad => VCC,
	cin => \my_alu|Mult0|auto_generated|op_1~21\,
	combout => \my_alu|Mult0|auto_generated|op_1~22_combout\,
	cout => \my_alu|Mult0|auto_generated|op_1~23\);

-- Location: LCCOMB_X42_Y23_N26
\my_alu|Mult0|auto_generated|op_1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult0|auto_generated|op_1~24_combout\ = ((\my_alu|Mult0|auto_generated|mac_out2~DATAOUT30\ $ (\my_alu|Mult0|auto_generated|add9_result[12]~24_combout\ $ (!\my_alu|Mult0|auto_generated|op_1~23\)))) # (GND)
-- \my_alu|Mult0|auto_generated|op_1~25\ = CARRY((\my_alu|Mult0|auto_generated|mac_out2~DATAOUT30\ & ((\my_alu|Mult0|auto_generated|add9_result[12]~24_combout\) # (!\my_alu|Mult0|auto_generated|op_1~23\))) # (!\my_alu|Mult0|auto_generated|mac_out2~DATAOUT30\ 
-- & (\my_alu|Mult0|auto_generated|add9_result[12]~24_combout\ & !\my_alu|Mult0|auto_generated|op_1~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult0|auto_generated|mac_out2~DATAOUT30\,
	datab => \my_alu|Mult0|auto_generated|add9_result[12]~24_combout\,
	datad => VCC,
	cin => \my_alu|Mult0|auto_generated|op_1~23\,
	combout => \my_alu|Mult0|auto_generated|op_1~24_combout\,
	cout => \my_alu|Mult0|auto_generated|op_1~25\);

-- Location: LCCOMB_X42_Y23_N30
\my_alu|Mult0|auto_generated|op_1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult0|auto_generated|op_1~28_combout\ = ((\my_alu|Mult0|auto_generated|add9_result[14]~28_combout\ $ (\my_alu|Mult0|auto_generated|mac_out2~DATAOUT32\ $ (!\my_alu|Mult0|auto_generated|op_1~27\)))) # (GND)
-- \my_alu|Mult0|auto_generated|op_1~29\ = CARRY((\my_alu|Mult0|auto_generated|add9_result[14]~28_combout\ & ((\my_alu|Mult0|auto_generated|mac_out2~DATAOUT32\) # (!\my_alu|Mult0|auto_generated|op_1~27\))) # 
-- (!\my_alu|Mult0|auto_generated|add9_result[14]~28_combout\ & (\my_alu|Mult0|auto_generated|mac_out2~DATAOUT32\ & !\my_alu|Mult0|auto_generated|op_1~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult0|auto_generated|add9_result[14]~28_combout\,
	datab => \my_alu|Mult0|auto_generated|mac_out2~DATAOUT32\,
	datad => VCC,
	cin => \my_alu|Mult0|auto_generated|op_1~27\,
	combout => \my_alu|Mult0|auto_generated|op_1~28_combout\,
	cout => \my_alu|Mult0|auto_generated|op_1~29\);

-- Location: DSPMULT_X22_Y19_N0
\my_alu|Mult1|auto_generated|mac_mult5\ : cycloneive_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "0",
	dataa_width => 18,
	datab_clock => "0",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => GND,
	clk => \clk~inputclkctrl_outclk\,
	aclr => GND,
	ena => VCC,
	dataa => \my_alu|Mult1|auto_generated|mac_mult5_DATAA_bus\,
	datab => \my_alu|Mult1|auto_generated|mac_mult5_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \my_alu|Mult1|auto_generated|mac_mult5_DATAOUT_bus\);

-- Location: DSPMULT_X22_Y20_N0
\my_alu|Mult1|auto_generated|mac_mult3\ : cycloneive_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "0",
	dataa_width => 18,
	datab_clock => "0",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => GND,
	clk => \clk~inputclkctrl_outclk\,
	aclr => GND,
	ena => VCC,
	dataa => \my_alu|Mult1|auto_generated|mac_mult3_DATAA_bus\,
	datab => \my_alu|Mult1|auto_generated|mac_mult3_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \my_alu|Mult1|auto_generated|mac_mult3_DATAOUT_bus\);

-- Location: LCCOMB_X23_Y20_N18
\my_alu|Mult1|auto_generated|add9_result[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult1|auto_generated|add9_result[1]~2_combout\ = (\my_alu|Mult1|auto_generated|mac_out6~DATAOUT1\ & ((\my_alu|Mult1|auto_generated|mac_out4~DATAOUT1\ & (\my_alu|Mult1|auto_generated|add9_result[0]~1\ & VCC)) # 
-- (!\my_alu|Mult1|auto_generated|mac_out4~DATAOUT1\ & (!\my_alu|Mult1|auto_generated|add9_result[0]~1\)))) # (!\my_alu|Mult1|auto_generated|mac_out6~DATAOUT1\ & ((\my_alu|Mult1|auto_generated|mac_out4~DATAOUT1\ & 
-- (!\my_alu|Mult1|auto_generated|add9_result[0]~1\)) # (!\my_alu|Mult1|auto_generated|mac_out4~DATAOUT1\ & ((\my_alu|Mult1|auto_generated|add9_result[0]~1\) # (GND)))))
-- \my_alu|Mult1|auto_generated|add9_result[1]~3\ = CARRY((\my_alu|Mult1|auto_generated|mac_out6~DATAOUT1\ & (!\my_alu|Mult1|auto_generated|mac_out4~DATAOUT1\ & !\my_alu|Mult1|auto_generated|add9_result[0]~1\)) # 
-- (!\my_alu|Mult1|auto_generated|mac_out6~DATAOUT1\ & ((!\my_alu|Mult1|auto_generated|add9_result[0]~1\) # (!\my_alu|Mult1|auto_generated|mac_out4~DATAOUT1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult1|auto_generated|mac_out6~DATAOUT1\,
	datab => \my_alu|Mult1|auto_generated|mac_out4~DATAOUT1\,
	datad => VCC,
	cin => \my_alu|Mult1|auto_generated|add9_result[0]~1\,
	combout => \my_alu|Mult1|auto_generated|add9_result[1]~2_combout\,
	cout => \my_alu|Mult1|auto_generated|add9_result[1]~3\);

-- Location: LCCOMB_X23_Y20_N20
\my_alu|Mult1|auto_generated|add9_result[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult1|auto_generated|add9_result[2]~4_combout\ = ((\my_alu|Mult1|auto_generated|mac_out6~DATAOUT2\ $ (\my_alu|Mult1|auto_generated|mac_out4~DATAOUT2\ $ (!\my_alu|Mult1|auto_generated|add9_result[1]~3\)))) # (GND)
-- \my_alu|Mult1|auto_generated|add9_result[2]~5\ = CARRY((\my_alu|Mult1|auto_generated|mac_out6~DATAOUT2\ & ((\my_alu|Mult1|auto_generated|mac_out4~DATAOUT2\) # (!\my_alu|Mult1|auto_generated|add9_result[1]~3\))) # 
-- (!\my_alu|Mult1|auto_generated|mac_out6~DATAOUT2\ & (\my_alu|Mult1|auto_generated|mac_out4~DATAOUT2\ & !\my_alu|Mult1|auto_generated|add9_result[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult1|auto_generated|mac_out6~DATAOUT2\,
	datab => \my_alu|Mult1|auto_generated|mac_out4~DATAOUT2\,
	datad => VCC,
	cin => \my_alu|Mult1|auto_generated|add9_result[1]~3\,
	combout => \my_alu|Mult1|auto_generated|add9_result[2]~4_combout\,
	cout => \my_alu|Mult1|auto_generated|add9_result[2]~5\);

-- Location: LCCOMB_X23_Y20_N22
\my_alu|Mult1|auto_generated|add9_result[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult1|auto_generated|add9_result[3]~6_combout\ = (\my_alu|Mult1|auto_generated|mac_out6~DATAOUT3\ & ((\my_alu|Mult1|auto_generated|mac_out4~DATAOUT3\ & (\my_alu|Mult1|auto_generated|add9_result[2]~5\ & VCC)) # 
-- (!\my_alu|Mult1|auto_generated|mac_out4~DATAOUT3\ & (!\my_alu|Mult1|auto_generated|add9_result[2]~5\)))) # (!\my_alu|Mult1|auto_generated|mac_out6~DATAOUT3\ & ((\my_alu|Mult1|auto_generated|mac_out4~DATAOUT3\ & 
-- (!\my_alu|Mult1|auto_generated|add9_result[2]~5\)) # (!\my_alu|Mult1|auto_generated|mac_out4~DATAOUT3\ & ((\my_alu|Mult1|auto_generated|add9_result[2]~5\) # (GND)))))
-- \my_alu|Mult1|auto_generated|add9_result[3]~7\ = CARRY((\my_alu|Mult1|auto_generated|mac_out6~DATAOUT3\ & (!\my_alu|Mult1|auto_generated|mac_out4~DATAOUT3\ & !\my_alu|Mult1|auto_generated|add9_result[2]~5\)) # 
-- (!\my_alu|Mult1|auto_generated|mac_out6~DATAOUT3\ & ((!\my_alu|Mult1|auto_generated|add9_result[2]~5\) # (!\my_alu|Mult1|auto_generated|mac_out4~DATAOUT3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult1|auto_generated|mac_out6~DATAOUT3\,
	datab => \my_alu|Mult1|auto_generated|mac_out4~DATAOUT3\,
	datad => VCC,
	cin => \my_alu|Mult1|auto_generated|add9_result[2]~5\,
	combout => \my_alu|Mult1|auto_generated|add9_result[3]~6_combout\,
	cout => \my_alu|Mult1|auto_generated|add9_result[3]~7\);

-- Location: LCCOMB_X23_Y20_N24
\my_alu|Mult1|auto_generated|add9_result[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult1|auto_generated|add9_result[4]~8_combout\ = ((\my_alu|Mult1|auto_generated|mac_out6~DATAOUT4\ $ (\my_alu|Mult1|auto_generated|mac_out4~DATAOUT4\ $ (!\my_alu|Mult1|auto_generated|add9_result[3]~7\)))) # (GND)
-- \my_alu|Mult1|auto_generated|add9_result[4]~9\ = CARRY((\my_alu|Mult1|auto_generated|mac_out6~DATAOUT4\ & ((\my_alu|Mult1|auto_generated|mac_out4~DATAOUT4\) # (!\my_alu|Mult1|auto_generated|add9_result[3]~7\))) # 
-- (!\my_alu|Mult1|auto_generated|mac_out6~DATAOUT4\ & (\my_alu|Mult1|auto_generated|mac_out4~DATAOUT4\ & !\my_alu|Mult1|auto_generated|add9_result[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult1|auto_generated|mac_out6~DATAOUT4\,
	datab => \my_alu|Mult1|auto_generated|mac_out4~DATAOUT4\,
	datad => VCC,
	cin => \my_alu|Mult1|auto_generated|add9_result[3]~7\,
	combout => \my_alu|Mult1|auto_generated|add9_result[4]~8_combout\,
	cout => \my_alu|Mult1|auto_generated|add9_result[4]~9\);

-- Location: LCCOMB_X23_Y20_N28
\my_alu|Mult1|auto_generated|add9_result[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult1|auto_generated|add9_result[6]~12_combout\ = ((\my_alu|Mult1|auto_generated|mac_out6~DATAOUT6\ $ (\my_alu|Mult1|auto_generated|mac_out4~DATAOUT6\ $ (!\my_alu|Mult1|auto_generated|add9_result[5]~11\)))) # (GND)
-- \my_alu|Mult1|auto_generated|add9_result[6]~13\ = CARRY((\my_alu|Mult1|auto_generated|mac_out6~DATAOUT6\ & ((\my_alu|Mult1|auto_generated|mac_out4~DATAOUT6\) # (!\my_alu|Mult1|auto_generated|add9_result[5]~11\))) # 
-- (!\my_alu|Mult1|auto_generated|mac_out6~DATAOUT6\ & (\my_alu|Mult1|auto_generated|mac_out4~DATAOUT6\ & !\my_alu|Mult1|auto_generated|add9_result[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult1|auto_generated|mac_out6~DATAOUT6\,
	datab => \my_alu|Mult1|auto_generated|mac_out4~DATAOUT6\,
	datad => VCC,
	cin => \my_alu|Mult1|auto_generated|add9_result[5]~11\,
	combout => \my_alu|Mult1|auto_generated|add9_result[6]~12_combout\,
	cout => \my_alu|Mult1|auto_generated|add9_result[6]~13\);

-- Location: LCCOMB_X23_Y20_N30
\my_alu|Mult1|auto_generated|add9_result[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult1|auto_generated|add9_result[7]~14_combout\ = (\my_alu|Mult1|auto_generated|mac_out4~DATAOUT7\ & ((\my_alu|Mult1|auto_generated|mac_out6~DATAOUT7\ & (\my_alu|Mult1|auto_generated|add9_result[6]~13\ & VCC)) # 
-- (!\my_alu|Mult1|auto_generated|mac_out6~DATAOUT7\ & (!\my_alu|Mult1|auto_generated|add9_result[6]~13\)))) # (!\my_alu|Mult1|auto_generated|mac_out4~DATAOUT7\ & ((\my_alu|Mult1|auto_generated|mac_out6~DATAOUT7\ & 
-- (!\my_alu|Mult1|auto_generated|add9_result[6]~13\)) # (!\my_alu|Mult1|auto_generated|mac_out6~DATAOUT7\ & ((\my_alu|Mult1|auto_generated|add9_result[6]~13\) # (GND)))))
-- \my_alu|Mult1|auto_generated|add9_result[7]~15\ = CARRY((\my_alu|Mult1|auto_generated|mac_out4~DATAOUT7\ & (!\my_alu|Mult1|auto_generated|mac_out6~DATAOUT7\ & !\my_alu|Mult1|auto_generated|add9_result[6]~13\)) # 
-- (!\my_alu|Mult1|auto_generated|mac_out4~DATAOUT7\ & ((!\my_alu|Mult1|auto_generated|add9_result[6]~13\) # (!\my_alu|Mult1|auto_generated|mac_out6~DATAOUT7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult1|auto_generated|mac_out4~DATAOUT7\,
	datab => \my_alu|Mult1|auto_generated|mac_out6~DATAOUT7\,
	datad => VCC,
	cin => \my_alu|Mult1|auto_generated|add9_result[6]~13\,
	combout => \my_alu|Mult1|auto_generated|add9_result[7]~14_combout\,
	cout => \my_alu|Mult1|auto_generated|add9_result[7]~15\);

-- Location: LCCOMB_X23_Y19_N6
\my_alu|Mult1|auto_generated|add9_result[11]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult1|auto_generated|add9_result[11]~22_combout\ = (\my_alu|Mult1|auto_generated|mac_out4~DATAOUT11\ & ((\my_alu|Mult1|auto_generated|mac_out6~DATAOUT11\ & (\my_alu|Mult1|auto_generated|add9_result[10]~21\ & VCC)) # 
-- (!\my_alu|Mult1|auto_generated|mac_out6~DATAOUT11\ & (!\my_alu|Mult1|auto_generated|add9_result[10]~21\)))) # (!\my_alu|Mult1|auto_generated|mac_out4~DATAOUT11\ & ((\my_alu|Mult1|auto_generated|mac_out6~DATAOUT11\ & 
-- (!\my_alu|Mult1|auto_generated|add9_result[10]~21\)) # (!\my_alu|Mult1|auto_generated|mac_out6~DATAOUT11\ & ((\my_alu|Mult1|auto_generated|add9_result[10]~21\) # (GND)))))
-- \my_alu|Mult1|auto_generated|add9_result[11]~23\ = CARRY((\my_alu|Mult1|auto_generated|mac_out4~DATAOUT11\ & (!\my_alu|Mult1|auto_generated|mac_out6~DATAOUT11\ & !\my_alu|Mult1|auto_generated|add9_result[10]~21\)) # 
-- (!\my_alu|Mult1|auto_generated|mac_out4~DATAOUT11\ & ((!\my_alu|Mult1|auto_generated|add9_result[10]~21\) # (!\my_alu|Mult1|auto_generated|mac_out6~DATAOUT11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult1|auto_generated|mac_out4~DATAOUT11\,
	datab => \my_alu|Mult1|auto_generated|mac_out6~DATAOUT11\,
	datad => VCC,
	cin => \my_alu|Mult1|auto_generated|add9_result[10]~21\,
	combout => \my_alu|Mult1|auto_generated|add9_result[11]~22_combout\,
	cout => \my_alu|Mult1|auto_generated|add9_result[11]~23\);

-- Location: LCCOMB_X23_Y19_N12
\my_alu|Mult1|auto_generated|add9_result[14]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult1|auto_generated|add9_result[14]~28_combout\ = ((\my_alu|Mult1|auto_generated|mac_out4~DATAOUT14\ $ (\my_alu|Mult1|auto_generated|mac_out6~DATAOUT14\ $ (!\my_alu|Mult1|auto_generated|add9_result[13]~27\)))) # (GND)
-- \my_alu|Mult1|auto_generated|add9_result[14]~29\ = CARRY((\my_alu|Mult1|auto_generated|mac_out4~DATAOUT14\ & ((\my_alu|Mult1|auto_generated|mac_out6~DATAOUT14\) # (!\my_alu|Mult1|auto_generated|add9_result[13]~27\))) # 
-- (!\my_alu|Mult1|auto_generated|mac_out4~DATAOUT14\ & (\my_alu|Mult1|auto_generated|mac_out6~DATAOUT14\ & !\my_alu|Mult1|auto_generated|add9_result[13]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult1|auto_generated|mac_out4~DATAOUT14\,
	datab => \my_alu|Mult1|auto_generated|mac_out6~DATAOUT14\,
	datad => VCC,
	cin => \my_alu|Mult1|auto_generated|add9_result[13]~27\,
	combout => \my_alu|Mult1|auto_generated|add9_result[14]~28_combout\,
	cout => \my_alu|Mult1|auto_generated|add9_result[14]~29\);

-- Location: DSPMULT_X22_Y21_N0
\my_alu|Mult1|auto_generated|mac_mult1\ : cycloneive_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "0",
	dataa_width => 18,
	datab_clock => "0",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => GND,
	clk => \clk~inputclkctrl_outclk\,
	aclr => GND,
	ena => VCC,
	dataa => \my_alu|Mult1|auto_generated|mac_mult1_DATAA_bus\,
	datab => \my_alu|Mult1|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \my_alu|Mult1|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: LCCOMB_X24_Y20_N2
\my_alu|Mult1|auto_generated|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult1|auto_generated|op_1~0_combout\ = (\my_alu|Mult1|auto_generated|add9_result[0]~0_combout\ & (\my_alu|Mult1|auto_generated|mac_out2~DATAOUT18\ $ (VCC))) # (!\my_alu|Mult1|auto_generated|add9_result[0]~0_combout\ & 
-- (\my_alu|Mult1|auto_generated|mac_out2~DATAOUT18\ & VCC))
-- \my_alu|Mult1|auto_generated|op_1~1\ = CARRY((\my_alu|Mult1|auto_generated|add9_result[0]~0_combout\ & \my_alu|Mult1|auto_generated|mac_out2~DATAOUT18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult1|auto_generated|add9_result[0]~0_combout\,
	datab => \my_alu|Mult1|auto_generated|mac_out2~DATAOUT18\,
	datad => VCC,
	combout => \my_alu|Mult1|auto_generated|op_1~0_combout\,
	cout => \my_alu|Mult1|auto_generated|op_1~1\);

-- Location: LCCOMB_X24_Y20_N4
\my_alu|Mult1|auto_generated|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult1|auto_generated|op_1~2_combout\ = (\my_alu|Mult1|auto_generated|mac_out2~DATAOUT19\ & ((\my_alu|Mult1|auto_generated|add9_result[1]~2_combout\ & (\my_alu|Mult1|auto_generated|op_1~1\ & VCC)) # 
-- (!\my_alu|Mult1|auto_generated|add9_result[1]~2_combout\ & (!\my_alu|Mult1|auto_generated|op_1~1\)))) # (!\my_alu|Mult1|auto_generated|mac_out2~DATAOUT19\ & ((\my_alu|Mult1|auto_generated|add9_result[1]~2_combout\ & 
-- (!\my_alu|Mult1|auto_generated|op_1~1\)) # (!\my_alu|Mult1|auto_generated|add9_result[1]~2_combout\ & ((\my_alu|Mult1|auto_generated|op_1~1\) # (GND)))))
-- \my_alu|Mult1|auto_generated|op_1~3\ = CARRY((\my_alu|Mult1|auto_generated|mac_out2~DATAOUT19\ & (!\my_alu|Mult1|auto_generated|add9_result[1]~2_combout\ & !\my_alu|Mult1|auto_generated|op_1~1\)) # (!\my_alu|Mult1|auto_generated|mac_out2~DATAOUT19\ & 
-- ((!\my_alu|Mult1|auto_generated|op_1~1\) # (!\my_alu|Mult1|auto_generated|add9_result[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult1|auto_generated|mac_out2~DATAOUT19\,
	datab => \my_alu|Mult1|auto_generated|add9_result[1]~2_combout\,
	datad => VCC,
	cin => \my_alu|Mult1|auto_generated|op_1~1\,
	combout => \my_alu|Mult1|auto_generated|op_1~2_combout\,
	cout => \my_alu|Mult1|auto_generated|op_1~3\);

-- Location: LCCOMB_X24_Y20_N6
\my_alu|Mult1|auto_generated|op_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult1|auto_generated|op_1~4_combout\ = ((\my_alu|Mult1|auto_generated|mac_out2~DATAOUT20\ $ (\my_alu|Mult1|auto_generated|add9_result[2]~4_combout\ $ (!\my_alu|Mult1|auto_generated|op_1~3\)))) # (GND)
-- \my_alu|Mult1|auto_generated|op_1~5\ = CARRY((\my_alu|Mult1|auto_generated|mac_out2~DATAOUT20\ & ((\my_alu|Mult1|auto_generated|add9_result[2]~4_combout\) # (!\my_alu|Mult1|auto_generated|op_1~3\))) # (!\my_alu|Mult1|auto_generated|mac_out2~DATAOUT20\ & 
-- (\my_alu|Mult1|auto_generated|add9_result[2]~4_combout\ & !\my_alu|Mult1|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult1|auto_generated|mac_out2~DATAOUT20\,
	datab => \my_alu|Mult1|auto_generated|add9_result[2]~4_combout\,
	datad => VCC,
	cin => \my_alu|Mult1|auto_generated|op_1~3\,
	combout => \my_alu|Mult1|auto_generated|op_1~4_combout\,
	cout => \my_alu|Mult1|auto_generated|op_1~5\);

-- Location: LCCOMB_X24_Y20_N8
\my_alu|Mult1|auto_generated|op_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult1|auto_generated|op_1~6_combout\ = (\my_alu|Mult1|auto_generated|mac_out2~DATAOUT21\ & ((\my_alu|Mult1|auto_generated|add9_result[3]~6_combout\ & (\my_alu|Mult1|auto_generated|op_1~5\ & VCC)) # 
-- (!\my_alu|Mult1|auto_generated|add9_result[3]~6_combout\ & (!\my_alu|Mult1|auto_generated|op_1~5\)))) # (!\my_alu|Mult1|auto_generated|mac_out2~DATAOUT21\ & ((\my_alu|Mult1|auto_generated|add9_result[3]~6_combout\ & 
-- (!\my_alu|Mult1|auto_generated|op_1~5\)) # (!\my_alu|Mult1|auto_generated|add9_result[3]~6_combout\ & ((\my_alu|Mult1|auto_generated|op_1~5\) # (GND)))))
-- \my_alu|Mult1|auto_generated|op_1~7\ = CARRY((\my_alu|Mult1|auto_generated|mac_out2~DATAOUT21\ & (!\my_alu|Mult1|auto_generated|add9_result[3]~6_combout\ & !\my_alu|Mult1|auto_generated|op_1~5\)) # (!\my_alu|Mult1|auto_generated|mac_out2~DATAOUT21\ & 
-- ((!\my_alu|Mult1|auto_generated|op_1~5\) # (!\my_alu|Mult1|auto_generated|add9_result[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult1|auto_generated|mac_out2~DATAOUT21\,
	datab => \my_alu|Mult1|auto_generated|add9_result[3]~6_combout\,
	datad => VCC,
	cin => \my_alu|Mult1|auto_generated|op_1~5\,
	combout => \my_alu|Mult1|auto_generated|op_1~6_combout\,
	cout => \my_alu|Mult1|auto_generated|op_1~7\);

-- Location: LCCOMB_X24_Y20_N10
\my_alu|Mult1|auto_generated|op_1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult1|auto_generated|op_1~8_combout\ = ((\my_alu|Mult1|auto_generated|mac_out2~DATAOUT22\ $ (\my_alu|Mult1|auto_generated|add9_result[4]~8_combout\ $ (!\my_alu|Mult1|auto_generated|op_1~7\)))) # (GND)
-- \my_alu|Mult1|auto_generated|op_1~9\ = CARRY((\my_alu|Mult1|auto_generated|mac_out2~DATAOUT22\ & ((\my_alu|Mult1|auto_generated|add9_result[4]~8_combout\) # (!\my_alu|Mult1|auto_generated|op_1~7\))) # (!\my_alu|Mult1|auto_generated|mac_out2~DATAOUT22\ & 
-- (\my_alu|Mult1|auto_generated|add9_result[4]~8_combout\ & !\my_alu|Mult1|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult1|auto_generated|mac_out2~DATAOUT22\,
	datab => \my_alu|Mult1|auto_generated|add9_result[4]~8_combout\,
	datad => VCC,
	cin => \my_alu|Mult1|auto_generated|op_1~7\,
	combout => \my_alu|Mult1|auto_generated|op_1~8_combout\,
	cout => \my_alu|Mult1|auto_generated|op_1~9\);

-- Location: LCCOMB_X24_Y20_N12
\my_alu|Mult1|auto_generated|op_1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult1|auto_generated|op_1~10_combout\ = (\my_alu|Mult1|auto_generated|add9_result[5]~10_combout\ & ((\my_alu|Mult1|auto_generated|mac_out2~DATAOUT23\ & (\my_alu|Mult1|auto_generated|op_1~9\ & VCC)) # 
-- (!\my_alu|Mult1|auto_generated|mac_out2~DATAOUT23\ & (!\my_alu|Mult1|auto_generated|op_1~9\)))) # (!\my_alu|Mult1|auto_generated|add9_result[5]~10_combout\ & ((\my_alu|Mult1|auto_generated|mac_out2~DATAOUT23\ & (!\my_alu|Mult1|auto_generated|op_1~9\)) # 
-- (!\my_alu|Mult1|auto_generated|mac_out2~DATAOUT23\ & ((\my_alu|Mult1|auto_generated|op_1~9\) # (GND)))))
-- \my_alu|Mult1|auto_generated|op_1~11\ = CARRY((\my_alu|Mult1|auto_generated|add9_result[5]~10_combout\ & (!\my_alu|Mult1|auto_generated|mac_out2~DATAOUT23\ & !\my_alu|Mult1|auto_generated|op_1~9\)) # 
-- (!\my_alu|Mult1|auto_generated|add9_result[5]~10_combout\ & ((!\my_alu|Mult1|auto_generated|op_1~9\) # (!\my_alu|Mult1|auto_generated|mac_out2~DATAOUT23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult1|auto_generated|add9_result[5]~10_combout\,
	datab => \my_alu|Mult1|auto_generated|mac_out2~DATAOUT23\,
	datad => VCC,
	cin => \my_alu|Mult1|auto_generated|op_1~9\,
	combout => \my_alu|Mult1|auto_generated|op_1~10_combout\,
	cout => \my_alu|Mult1|auto_generated|op_1~11\);

-- Location: LCCOMB_X24_Y20_N14
\my_alu|Mult1|auto_generated|op_1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult1|auto_generated|op_1~12_combout\ = ((\my_alu|Mult1|auto_generated|mac_out2~DATAOUT24\ $ (\my_alu|Mult1|auto_generated|add9_result[6]~12_combout\ $ (!\my_alu|Mult1|auto_generated|op_1~11\)))) # (GND)
-- \my_alu|Mult1|auto_generated|op_1~13\ = CARRY((\my_alu|Mult1|auto_generated|mac_out2~DATAOUT24\ & ((\my_alu|Mult1|auto_generated|add9_result[6]~12_combout\) # (!\my_alu|Mult1|auto_generated|op_1~11\))) # (!\my_alu|Mult1|auto_generated|mac_out2~DATAOUT24\ 
-- & (\my_alu|Mult1|auto_generated|add9_result[6]~12_combout\ & !\my_alu|Mult1|auto_generated|op_1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult1|auto_generated|mac_out2~DATAOUT24\,
	datab => \my_alu|Mult1|auto_generated|add9_result[6]~12_combout\,
	datad => VCC,
	cin => \my_alu|Mult1|auto_generated|op_1~11\,
	combout => \my_alu|Mult1|auto_generated|op_1~12_combout\,
	cout => \my_alu|Mult1|auto_generated|op_1~13\);

-- Location: LCCOMB_X24_Y20_N16
\my_alu|Mult1|auto_generated|op_1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult1|auto_generated|op_1~14_combout\ = (\my_alu|Mult1|auto_generated|mac_out2~DATAOUT25\ & ((\my_alu|Mult1|auto_generated|add9_result[7]~14_combout\ & (\my_alu|Mult1|auto_generated|op_1~13\ & VCC)) # 
-- (!\my_alu|Mult1|auto_generated|add9_result[7]~14_combout\ & (!\my_alu|Mult1|auto_generated|op_1~13\)))) # (!\my_alu|Mult1|auto_generated|mac_out2~DATAOUT25\ & ((\my_alu|Mult1|auto_generated|add9_result[7]~14_combout\ & 
-- (!\my_alu|Mult1|auto_generated|op_1~13\)) # (!\my_alu|Mult1|auto_generated|add9_result[7]~14_combout\ & ((\my_alu|Mult1|auto_generated|op_1~13\) # (GND)))))
-- \my_alu|Mult1|auto_generated|op_1~15\ = CARRY((\my_alu|Mult1|auto_generated|mac_out2~DATAOUT25\ & (!\my_alu|Mult1|auto_generated|add9_result[7]~14_combout\ & !\my_alu|Mult1|auto_generated|op_1~13\)) # (!\my_alu|Mult1|auto_generated|mac_out2~DATAOUT25\ & 
-- ((!\my_alu|Mult1|auto_generated|op_1~13\) # (!\my_alu|Mult1|auto_generated|add9_result[7]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult1|auto_generated|mac_out2~DATAOUT25\,
	datab => \my_alu|Mult1|auto_generated|add9_result[7]~14_combout\,
	datad => VCC,
	cin => \my_alu|Mult1|auto_generated|op_1~13\,
	combout => \my_alu|Mult1|auto_generated|op_1~14_combout\,
	cout => \my_alu|Mult1|auto_generated|op_1~15\);

-- Location: LCCOMB_X24_Y20_N18
\my_alu|Mult1|auto_generated|op_1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult1|auto_generated|op_1~16_combout\ = ((\my_alu|Mult1|auto_generated|add9_result[8]~16_combout\ $ (\my_alu|Mult1|auto_generated|mac_out2~DATAOUT26\ $ (!\my_alu|Mult1|auto_generated|op_1~15\)))) # (GND)
-- \my_alu|Mult1|auto_generated|op_1~17\ = CARRY((\my_alu|Mult1|auto_generated|add9_result[8]~16_combout\ & ((\my_alu|Mult1|auto_generated|mac_out2~DATAOUT26\) # (!\my_alu|Mult1|auto_generated|op_1~15\))) # 
-- (!\my_alu|Mult1|auto_generated|add9_result[8]~16_combout\ & (\my_alu|Mult1|auto_generated|mac_out2~DATAOUT26\ & !\my_alu|Mult1|auto_generated|op_1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult1|auto_generated|add9_result[8]~16_combout\,
	datab => \my_alu|Mult1|auto_generated|mac_out2~DATAOUT26\,
	datad => VCC,
	cin => \my_alu|Mult1|auto_generated|op_1~15\,
	combout => \my_alu|Mult1|auto_generated|op_1~16_combout\,
	cout => \my_alu|Mult1|auto_generated|op_1~17\);

-- Location: LCCOMB_X24_Y20_N20
\my_alu|Mult1|auto_generated|op_1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult1|auto_generated|op_1~18_combout\ = (\my_alu|Mult1|auto_generated|add9_result[9]~18_combout\ & ((\my_alu|Mult1|auto_generated|mac_out2~DATAOUT27\ & (\my_alu|Mult1|auto_generated|op_1~17\ & VCC)) # 
-- (!\my_alu|Mult1|auto_generated|mac_out2~DATAOUT27\ & (!\my_alu|Mult1|auto_generated|op_1~17\)))) # (!\my_alu|Mult1|auto_generated|add9_result[9]~18_combout\ & ((\my_alu|Mult1|auto_generated|mac_out2~DATAOUT27\ & (!\my_alu|Mult1|auto_generated|op_1~17\)) # 
-- (!\my_alu|Mult1|auto_generated|mac_out2~DATAOUT27\ & ((\my_alu|Mult1|auto_generated|op_1~17\) # (GND)))))
-- \my_alu|Mult1|auto_generated|op_1~19\ = CARRY((\my_alu|Mult1|auto_generated|add9_result[9]~18_combout\ & (!\my_alu|Mult1|auto_generated|mac_out2~DATAOUT27\ & !\my_alu|Mult1|auto_generated|op_1~17\)) # 
-- (!\my_alu|Mult1|auto_generated|add9_result[9]~18_combout\ & ((!\my_alu|Mult1|auto_generated|op_1~17\) # (!\my_alu|Mult1|auto_generated|mac_out2~DATAOUT27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult1|auto_generated|add9_result[9]~18_combout\,
	datab => \my_alu|Mult1|auto_generated|mac_out2~DATAOUT27\,
	datad => VCC,
	cin => \my_alu|Mult1|auto_generated|op_1~17\,
	combout => \my_alu|Mult1|auto_generated|op_1~18_combout\,
	cout => \my_alu|Mult1|auto_generated|op_1~19\);

-- Location: LCCOMB_X24_Y20_N22
\my_alu|Mult1|auto_generated|op_1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult1|auto_generated|op_1~20_combout\ = ((\my_alu|Mult1|auto_generated|add9_result[10]~20_combout\ $ (\my_alu|Mult1|auto_generated|mac_out2~DATAOUT28\ $ (!\my_alu|Mult1|auto_generated|op_1~19\)))) # (GND)
-- \my_alu|Mult1|auto_generated|op_1~21\ = CARRY((\my_alu|Mult1|auto_generated|add9_result[10]~20_combout\ & ((\my_alu|Mult1|auto_generated|mac_out2~DATAOUT28\) # (!\my_alu|Mult1|auto_generated|op_1~19\))) # 
-- (!\my_alu|Mult1|auto_generated|add9_result[10]~20_combout\ & (\my_alu|Mult1|auto_generated|mac_out2~DATAOUT28\ & !\my_alu|Mult1|auto_generated|op_1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult1|auto_generated|add9_result[10]~20_combout\,
	datab => \my_alu|Mult1|auto_generated|mac_out2~DATAOUT28\,
	datad => VCC,
	cin => \my_alu|Mult1|auto_generated|op_1~19\,
	combout => \my_alu|Mult1|auto_generated|op_1~20_combout\,
	cout => \my_alu|Mult1|auto_generated|op_1~21\);

-- Location: LCCOMB_X24_Y20_N24
\my_alu|Mult1|auto_generated|op_1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult1|auto_generated|op_1~22_combout\ = (\my_alu|Mult1|auto_generated|mac_out2~DATAOUT29\ & ((\my_alu|Mult1|auto_generated|add9_result[11]~22_combout\ & (\my_alu|Mult1|auto_generated|op_1~21\ & VCC)) # 
-- (!\my_alu|Mult1|auto_generated|add9_result[11]~22_combout\ & (!\my_alu|Mult1|auto_generated|op_1~21\)))) # (!\my_alu|Mult1|auto_generated|mac_out2~DATAOUT29\ & ((\my_alu|Mult1|auto_generated|add9_result[11]~22_combout\ & 
-- (!\my_alu|Mult1|auto_generated|op_1~21\)) # (!\my_alu|Mult1|auto_generated|add9_result[11]~22_combout\ & ((\my_alu|Mult1|auto_generated|op_1~21\) # (GND)))))
-- \my_alu|Mult1|auto_generated|op_1~23\ = CARRY((\my_alu|Mult1|auto_generated|mac_out2~DATAOUT29\ & (!\my_alu|Mult1|auto_generated|add9_result[11]~22_combout\ & !\my_alu|Mult1|auto_generated|op_1~21\)) # (!\my_alu|Mult1|auto_generated|mac_out2~DATAOUT29\ & 
-- ((!\my_alu|Mult1|auto_generated|op_1~21\) # (!\my_alu|Mult1|auto_generated|add9_result[11]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult1|auto_generated|mac_out2~DATAOUT29\,
	datab => \my_alu|Mult1|auto_generated|add9_result[11]~22_combout\,
	datad => VCC,
	cin => \my_alu|Mult1|auto_generated|op_1~21\,
	combout => \my_alu|Mult1|auto_generated|op_1~22_combout\,
	cout => \my_alu|Mult1|auto_generated|op_1~23\);

-- Location: LCCOMB_X24_Y20_N26
\my_alu|Mult1|auto_generated|op_1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult1|auto_generated|op_1~24_combout\ = ((\my_alu|Mult1|auto_generated|add9_result[12]~24_combout\ $ (\my_alu|Mult1|auto_generated|mac_out2~DATAOUT30\ $ (!\my_alu|Mult1|auto_generated|op_1~23\)))) # (GND)
-- \my_alu|Mult1|auto_generated|op_1~25\ = CARRY((\my_alu|Mult1|auto_generated|add9_result[12]~24_combout\ & ((\my_alu|Mult1|auto_generated|mac_out2~DATAOUT30\) # (!\my_alu|Mult1|auto_generated|op_1~23\))) # 
-- (!\my_alu|Mult1|auto_generated|add9_result[12]~24_combout\ & (\my_alu|Mult1|auto_generated|mac_out2~DATAOUT30\ & !\my_alu|Mult1|auto_generated|op_1~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult1|auto_generated|add9_result[12]~24_combout\,
	datab => \my_alu|Mult1|auto_generated|mac_out2~DATAOUT30\,
	datad => VCC,
	cin => \my_alu|Mult1|auto_generated|op_1~23\,
	combout => \my_alu|Mult1|auto_generated|op_1~24_combout\,
	cout => \my_alu|Mult1|auto_generated|op_1~25\);

-- Location: LCCOMB_X24_Y20_N28
\my_alu|Mult1|auto_generated|op_1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult1|auto_generated|op_1~26_combout\ = (\my_alu|Mult1|auto_generated|add9_result[13]~26_combout\ & ((\my_alu|Mult1|auto_generated|mac_out2~DATAOUT31\ & (\my_alu|Mult1|auto_generated|op_1~25\ & VCC)) # 
-- (!\my_alu|Mult1|auto_generated|mac_out2~DATAOUT31\ & (!\my_alu|Mult1|auto_generated|op_1~25\)))) # (!\my_alu|Mult1|auto_generated|add9_result[13]~26_combout\ & ((\my_alu|Mult1|auto_generated|mac_out2~DATAOUT31\ & (!\my_alu|Mult1|auto_generated|op_1~25\)) 
-- # (!\my_alu|Mult1|auto_generated|mac_out2~DATAOUT31\ & ((\my_alu|Mult1|auto_generated|op_1~25\) # (GND)))))
-- \my_alu|Mult1|auto_generated|op_1~27\ = CARRY((\my_alu|Mult1|auto_generated|add9_result[13]~26_combout\ & (!\my_alu|Mult1|auto_generated|mac_out2~DATAOUT31\ & !\my_alu|Mult1|auto_generated|op_1~25\)) # 
-- (!\my_alu|Mult1|auto_generated|add9_result[13]~26_combout\ & ((!\my_alu|Mult1|auto_generated|op_1~25\) # (!\my_alu|Mult1|auto_generated|mac_out2~DATAOUT31\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult1|auto_generated|add9_result[13]~26_combout\,
	datab => \my_alu|Mult1|auto_generated|mac_out2~DATAOUT31\,
	datad => VCC,
	cin => \my_alu|Mult1|auto_generated|op_1~25\,
	combout => \my_alu|Mult1|auto_generated|op_1~26_combout\,
	cout => \my_alu|Mult1|auto_generated|op_1~27\);

-- Location: LCCOMB_X24_Y20_N30
\my_alu|Mult1|auto_generated|op_1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult1|auto_generated|op_1~28_combout\ = ((\my_alu|Mult1|auto_generated|mac_out2~DATAOUT32\ $ (\my_alu|Mult1|auto_generated|add9_result[14]~28_combout\ $ (!\my_alu|Mult1|auto_generated|op_1~27\)))) # (GND)
-- \my_alu|Mult1|auto_generated|op_1~29\ = CARRY((\my_alu|Mult1|auto_generated|mac_out2~DATAOUT32\ & ((\my_alu|Mult1|auto_generated|add9_result[14]~28_combout\) # (!\my_alu|Mult1|auto_generated|op_1~27\))) # (!\my_alu|Mult1|auto_generated|mac_out2~DATAOUT32\ 
-- & (\my_alu|Mult1|auto_generated|add9_result[14]~28_combout\ & !\my_alu|Mult1|auto_generated|op_1~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult1|auto_generated|mac_out2~DATAOUT32\,
	datab => \my_alu|Mult1|auto_generated|add9_result[14]~28_combout\,
	datad => VCC,
	cin => \my_alu|Mult1|auto_generated|op_1~27\,
	combout => \my_alu|Mult1|auto_generated|op_1~28_combout\,
	cout => \my_alu|Mult1|auto_generated|op_1~29\);

-- Location: LCCOMB_X25_Y20_N0
\my_alu|Selector31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Selector31~0_combout\ = (!\output_reg_hi|q[0]~0_combout\ & ((\input_reg_op|q\(0) & ((\my_alu|Mult1|auto_generated|op_1~28_combout\))) # (!\input_reg_op|q\(0) & (\my_alu|Mult0|auto_generated|op_1~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(0),
	datab => \output_reg_hi|q[0]~0_combout\,
	datac => \my_alu|Mult0|auto_generated|op_1~28_combout\,
	datad => \my_alu|Mult1|auto_generated|op_1~28_combout\,
	combout => \my_alu|Selector31~0_combout\);

-- Location: FF_X25_Y20_N1
\output_reg_hi|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \my_alu|Selector31~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_reg_hi|q\(0));

-- Location: IOIBUF_X0_Y36_N15
\op[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op(0),
	o => \op[0]~input_o\);

-- Location: FF_X30_Y18_N5
\input_reg_op|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \op[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_reg_op|q\(0));

-- Location: LCCOMB_X24_Y19_N0
\my_alu|Mult1|auto_generated|op_1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult1|auto_generated|op_1~30_combout\ = (\my_alu|Mult1|auto_generated|add9_result[15]~30_combout\ & ((\my_alu|Mult1|auto_generated|mac_out2~DATAOUT33\ & (\my_alu|Mult1|auto_generated|op_1~29\ & VCC)) # 
-- (!\my_alu|Mult1|auto_generated|mac_out2~DATAOUT33\ & (!\my_alu|Mult1|auto_generated|op_1~29\)))) # (!\my_alu|Mult1|auto_generated|add9_result[15]~30_combout\ & ((\my_alu|Mult1|auto_generated|mac_out2~DATAOUT33\ & (!\my_alu|Mult1|auto_generated|op_1~29\)) 
-- # (!\my_alu|Mult1|auto_generated|mac_out2~DATAOUT33\ & ((\my_alu|Mult1|auto_generated|op_1~29\) # (GND)))))
-- \my_alu|Mult1|auto_generated|op_1~31\ = CARRY((\my_alu|Mult1|auto_generated|add9_result[15]~30_combout\ & (!\my_alu|Mult1|auto_generated|mac_out2~DATAOUT33\ & !\my_alu|Mult1|auto_generated|op_1~29\)) # 
-- (!\my_alu|Mult1|auto_generated|add9_result[15]~30_combout\ & ((!\my_alu|Mult1|auto_generated|op_1~29\) # (!\my_alu|Mult1|auto_generated|mac_out2~DATAOUT33\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult1|auto_generated|add9_result[15]~30_combout\,
	datab => \my_alu|Mult1|auto_generated|mac_out2~DATAOUT33\,
	datad => VCC,
	cin => \my_alu|Mult1|auto_generated|op_1~29\,
	combout => \my_alu|Mult1|auto_generated|op_1~30_combout\,
	cout => \my_alu|Mult1|auto_generated|op_1~31\);

-- Location: LCCOMB_X43_Y22_N0
\my_alu|Mult0|auto_generated|add9_result[15]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult0|auto_generated|add9_result[15]~30_combout\ = (\my_alu|Mult0|auto_generated|mac_out6~DATAOUT15\ & ((\my_alu|Mult0|auto_generated|mac_out4~DATAOUT15\ & (\my_alu|Mult0|auto_generated|add9_result[14]~29\ & VCC)) # 
-- (!\my_alu|Mult0|auto_generated|mac_out4~DATAOUT15\ & (!\my_alu|Mult0|auto_generated|add9_result[14]~29\)))) # (!\my_alu|Mult0|auto_generated|mac_out6~DATAOUT15\ & ((\my_alu|Mult0|auto_generated|mac_out4~DATAOUT15\ & 
-- (!\my_alu|Mult0|auto_generated|add9_result[14]~29\)) # (!\my_alu|Mult0|auto_generated|mac_out4~DATAOUT15\ & ((\my_alu|Mult0|auto_generated|add9_result[14]~29\) # (GND)))))
-- \my_alu|Mult0|auto_generated|add9_result[15]~31\ = CARRY((\my_alu|Mult0|auto_generated|mac_out6~DATAOUT15\ & (!\my_alu|Mult0|auto_generated|mac_out4~DATAOUT15\ & !\my_alu|Mult0|auto_generated|add9_result[14]~29\)) # 
-- (!\my_alu|Mult0|auto_generated|mac_out6~DATAOUT15\ & ((!\my_alu|Mult0|auto_generated|add9_result[14]~29\) # (!\my_alu|Mult0|auto_generated|mac_out4~DATAOUT15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult0|auto_generated|mac_out6~DATAOUT15\,
	datab => \my_alu|Mult0|auto_generated|mac_out4~DATAOUT15\,
	datad => VCC,
	cin => \my_alu|Mult0|auto_generated|add9_result[14]~29\,
	combout => \my_alu|Mult0|auto_generated|add9_result[15]~30_combout\,
	cout => \my_alu|Mult0|auto_generated|add9_result[15]~31\);

-- Location: LCCOMB_X42_Y22_N0
\my_alu|Mult0|auto_generated|op_1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult0|auto_generated|op_1~30_combout\ = (\my_alu|Mult0|auto_generated|mac_out2~DATAOUT33\ & ((\my_alu|Mult0|auto_generated|add9_result[15]~30_combout\ & (\my_alu|Mult0|auto_generated|op_1~29\ & VCC)) # 
-- (!\my_alu|Mult0|auto_generated|add9_result[15]~30_combout\ & (!\my_alu|Mult0|auto_generated|op_1~29\)))) # (!\my_alu|Mult0|auto_generated|mac_out2~DATAOUT33\ & ((\my_alu|Mult0|auto_generated|add9_result[15]~30_combout\ & 
-- (!\my_alu|Mult0|auto_generated|op_1~29\)) # (!\my_alu|Mult0|auto_generated|add9_result[15]~30_combout\ & ((\my_alu|Mult0|auto_generated|op_1~29\) # (GND)))))
-- \my_alu|Mult0|auto_generated|op_1~31\ = CARRY((\my_alu|Mult0|auto_generated|mac_out2~DATAOUT33\ & (!\my_alu|Mult0|auto_generated|add9_result[15]~30_combout\ & !\my_alu|Mult0|auto_generated|op_1~29\)) # (!\my_alu|Mult0|auto_generated|mac_out2~DATAOUT33\ & 
-- ((!\my_alu|Mult0|auto_generated|op_1~29\) # (!\my_alu|Mult0|auto_generated|add9_result[15]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult0|auto_generated|mac_out2~DATAOUT33\,
	datab => \my_alu|Mult0|auto_generated|add9_result[15]~30_combout\,
	datad => VCC,
	cin => \my_alu|Mult0|auto_generated|op_1~29\,
	combout => \my_alu|Mult0|auto_generated|op_1~30_combout\,
	cout => \my_alu|Mult0|auto_generated|op_1~31\);

-- Location: LCCOMB_X25_Y19_N4
\my_alu|Selector30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Selector30~0_combout\ = (!\output_reg_hi|q[0]~0_combout\ & ((\input_reg_op|q\(0) & (\my_alu|Mult1|auto_generated|op_1~30_combout\)) # (!\input_reg_op|q\(0) & ((\my_alu|Mult0|auto_generated|op_1~30_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \output_reg_hi|q[0]~0_combout\,
	datab => \input_reg_op|q\(0),
	datac => \my_alu|Mult1|auto_generated|op_1~30_combout\,
	datad => \my_alu|Mult0|auto_generated|op_1~30_combout\,
	combout => \my_alu|Selector30~0_combout\);

-- Location: FF_X25_Y19_N5
\output_reg_hi|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \my_alu|Selector30~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_reg_hi|q\(1));

-- Location: LCCOMB_X42_Y22_N2
\my_alu|Mult0|auto_generated|op_1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult0|auto_generated|op_1~32_combout\ = ((\my_alu|Mult0|auto_generated|add9_result[16]~32_combout\ $ (\my_alu|Mult0|auto_generated|mac_out2~DATAOUT34\ $ (!\my_alu|Mult0|auto_generated|op_1~31\)))) # (GND)
-- \my_alu|Mult0|auto_generated|op_1~33\ = CARRY((\my_alu|Mult0|auto_generated|add9_result[16]~32_combout\ & ((\my_alu|Mult0|auto_generated|mac_out2~DATAOUT34\) # (!\my_alu|Mult0|auto_generated|op_1~31\))) # 
-- (!\my_alu|Mult0|auto_generated|add9_result[16]~32_combout\ & (\my_alu|Mult0|auto_generated|mac_out2~DATAOUT34\ & !\my_alu|Mult0|auto_generated|op_1~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult0|auto_generated|add9_result[16]~32_combout\,
	datab => \my_alu|Mult0|auto_generated|mac_out2~DATAOUT34\,
	datad => VCC,
	cin => \my_alu|Mult0|auto_generated|op_1~31\,
	combout => \my_alu|Mult0|auto_generated|op_1~32_combout\,
	cout => \my_alu|Mult0|auto_generated|op_1~33\);

-- Location: LCCOMB_X24_Y19_N2
\my_alu|Mult1|auto_generated|op_1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult1|auto_generated|op_1~32_combout\ = ((\my_alu|Mult1|auto_generated|add9_result[16]~32_combout\ $ (\my_alu|Mult1|auto_generated|mac_out2~DATAOUT34\ $ (!\my_alu|Mult1|auto_generated|op_1~31\)))) # (GND)
-- \my_alu|Mult1|auto_generated|op_1~33\ = CARRY((\my_alu|Mult1|auto_generated|add9_result[16]~32_combout\ & ((\my_alu|Mult1|auto_generated|mac_out2~DATAOUT34\) # (!\my_alu|Mult1|auto_generated|op_1~31\))) # 
-- (!\my_alu|Mult1|auto_generated|add9_result[16]~32_combout\ & (\my_alu|Mult1|auto_generated|mac_out2~DATAOUT34\ & !\my_alu|Mult1|auto_generated|op_1~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult1|auto_generated|add9_result[16]~32_combout\,
	datab => \my_alu|Mult1|auto_generated|mac_out2~DATAOUT34\,
	datad => VCC,
	cin => \my_alu|Mult1|auto_generated|op_1~31\,
	combout => \my_alu|Mult1|auto_generated|op_1~32_combout\,
	cout => \my_alu|Mult1|auto_generated|op_1~33\);

-- Location: LCCOMB_X25_Y19_N26
\my_alu|Selector29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Selector29~0_combout\ = (!\output_reg_hi|q[0]~0_combout\ & ((\input_reg_op|q\(0) & ((\my_alu|Mult1|auto_generated|op_1~32_combout\))) # (!\input_reg_op|q\(0) & (\my_alu|Mult0|auto_generated|op_1~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \output_reg_hi|q[0]~0_combout\,
	datab => \input_reg_op|q\(0),
	datac => \my_alu|Mult0|auto_generated|op_1~32_combout\,
	datad => \my_alu|Mult1|auto_generated|op_1~32_combout\,
	combout => \my_alu|Selector29~0_combout\);

-- Location: FF_X25_Y19_N27
\output_reg_hi|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \my_alu|Selector29~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_reg_hi|q\(2));

-- Location: LCCOMB_X23_Y19_N18
\my_alu|Mult1|auto_generated|add9_result[17]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult1|auto_generated|add9_result[17]~34_combout\ = (\my_alu|Mult1|auto_generated|mac_out6~DATAOUT17\ & ((\my_alu|Mult1|auto_generated|mac_out4~DATAOUT17\ & (\my_alu|Mult1|auto_generated|add9_result[16]~33\ & VCC)) # 
-- (!\my_alu|Mult1|auto_generated|mac_out4~DATAOUT17\ & (!\my_alu|Mult1|auto_generated|add9_result[16]~33\)))) # (!\my_alu|Mult1|auto_generated|mac_out6~DATAOUT17\ & ((\my_alu|Mult1|auto_generated|mac_out4~DATAOUT17\ & 
-- (!\my_alu|Mult1|auto_generated|add9_result[16]~33\)) # (!\my_alu|Mult1|auto_generated|mac_out4~DATAOUT17\ & ((\my_alu|Mult1|auto_generated|add9_result[16]~33\) # (GND)))))
-- \my_alu|Mult1|auto_generated|add9_result[17]~35\ = CARRY((\my_alu|Mult1|auto_generated|mac_out6~DATAOUT17\ & (!\my_alu|Mult1|auto_generated|mac_out4~DATAOUT17\ & !\my_alu|Mult1|auto_generated|add9_result[16]~33\)) # 
-- (!\my_alu|Mult1|auto_generated|mac_out6~DATAOUT17\ & ((!\my_alu|Mult1|auto_generated|add9_result[16]~33\) # (!\my_alu|Mult1|auto_generated|mac_out4~DATAOUT17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult1|auto_generated|mac_out6~DATAOUT17\,
	datab => \my_alu|Mult1|auto_generated|mac_out4~DATAOUT17\,
	datad => VCC,
	cin => \my_alu|Mult1|auto_generated|add9_result[16]~33\,
	combout => \my_alu|Mult1|auto_generated|add9_result[17]~34_combout\,
	cout => \my_alu|Mult1|auto_generated|add9_result[17]~35\);

-- Location: LCCOMB_X24_Y19_N4
\my_alu|Mult1|auto_generated|op_1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult1|auto_generated|op_1~34_combout\ = (\my_alu|Mult1|auto_generated|mac_out2~DATAOUT35\ & ((\my_alu|Mult1|auto_generated|add9_result[17]~34_combout\ & (\my_alu|Mult1|auto_generated|op_1~33\ & VCC)) # 
-- (!\my_alu|Mult1|auto_generated|add9_result[17]~34_combout\ & (!\my_alu|Mult1|auto_generated|op_1~33\)))) # (!\my_alu|Mult1|auto_generated|mac_out2~DATAOUT35\ & ((\my_alu|Mult1|auto_generated|add9_result[17]~34_combout\ & 
-- (!\my_alu|Mult1|auto_generated|op_1~33\)) # (!\my_alu|Mult1|auto_generated|add9_result[17]~34_combout\ & ((\my_alu|Mult1|auto_generated|op_1~33\) # (GND)))))
-- \my_alu|Mult1|auto_generated|op_1~35\ = CARRY((\my_alu|Mult1|auto_generated|mac_out2~DATAOUT35\ & (!\my_alu|Mult1|auto_generated|add9_result[17]~34_combout\ & !\my_alu|Mult1|auto_generated|op_1~33\)) # (!\my_alu|Mult1|auto_generated|mac_out2~DATAOUT35\ & 
-- ((!\my_alu|Mult1|auto_generated|op_1~33\) # (!\my_alu|Mult1|auto_generated|add9_result[17]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult1|auto_generated|mac_out2~DATAOUT35\,
	datab => \my_alu|Mult1|auto_generated|add9_result[17]~34_combout\,
	datad => VCC,
	cin => \my_alu|Mult1|auto_generated|op_1~33\,
	combout => \my_alu|Mult1|auto_generated|op_1~34_combout\,
	cout => \my_alu|Mult1|auto_generated|op_1~35\);

-- Location: LCCOMB_X42_Y22_N4
\my_alu|Mult0|auto_generated|op_1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult0|auto_generated|op_1~34_combout\ = (\my_alu|Mult0|auto_generated|add9_result[17]~34_combout\ & ((\my_alu|Mult0|auto_generated|mac_out2~DATAOUT35\ & (\my_alu|Mult0|auto_generated|op_1~33\ & VCC)) # 
-- (!\my_alu|Mult0|auto_generated|mac_out2~DATAOUT35\ & (!\my_alu|Mult0|auto_generated|op_1~33\)))) # (!\my_alu|Mult0|auto_generated|add9_result[17]~34_combout\ & ((\my_alu|Mult0|auto_generated|mac_out2~DATAOUT35\ & (!\my_alu|Mult0|auto_generated|op_1~33\)) 
-- # (!\my_alu|Mult0|auto_generated|mac_out2~DATAOUT35\ & ((\my_alu|Mult0|auto_generated|op_1~33\) # (GND)))))
-- \my_alu|Mult0|auto_generated|op_1~35\ = CARRY((\my_alu|Mult0|auto_generated|add9_result[17]~34_combout\ & (!\my_alu|Mult0|auto_generated|mac_out2~DATAOUT35\ & !\my_alu|Mult0|auto_generated|op_1~33\)) # 
-- (!\my_alu|Mult0|auto_generated|add9_result[17]~34_combout\ & ((!\my_alu|Mult0|auto_generated|op_1~33\) # (!\my_alu|Mult0|auto_generated|mac_out2~DATAOUT35\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult0|auto_generated|add9_result[17]~34_combout\,
	datab => \my_alu|Mult0|auto_generated|mac_out2~DATAOUT35\,
	datad => VCC,
	cin => \my_alu|Mult0|auto_generated|op_1~33\,
	combout => \my_alu|Mult0|auto_generated|op_1~34_combout\,
	cout => \my_alu|Mult0|auto_generated|op_1~35\);

-- Location: LCCOMB_X25_Y19_N28
\my_alu|Selector28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Selector28~0_combout\ = (!\output_reg_hi|q[0]~0_combout\ & ((\input_reg_op|q\(0) & (\my_alu|Mult1|auto_generated|op_1~34_combout\)) # (!\input_reg_op|q\(0) & ((\my_alu|Mult0|auto_generated|op_1~34_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \output_reg_hi|q[0]~0_combout\,
	datab => \input_reg_op|q\(0),
	datac => \my_alu|Mult1|auto_generated|op_1~34_combout\,
	datad => \my_alu|Mult0|auto_generated|op_1~34_combout\,
	combout => \my_alu|Selector28~0_combout\);

-- Location: FF_X25_Y19_N29
\output_reg_hi|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \my_alu|Selector28~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_reg_hi|q\(3));

-- Location: LCCOMB_X24_Y19_N6
\my_alu|Mult1|auto_generated|op_1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult1|auto_generated|op_1~36_combout\ = ((\my_alu|Mult1|auto_generated|add9_result[18]~36_combout\ $ (\my_alu|Mult1|auto_generated|mac_out4~DATAOUT18\ $ (!\my_alu|Mult1|auto_generated|op_1~35\)))) # (GND)
-- \my_alu|Mult1|auto_generated|op_1~37\ = CARRY((\my_alu|Mult1|auto_generated|add9_result[18]~36_combout\ & ((\my_alu|Mult1|auto_generated|mac_out4~DATAOUT18\) # (!\my_alu|Mult1|auto_generated|op_1~35\))) # 
-- (!\my_alu|Mult1|auto_generated|add9_result[18]~36_combout\ & (\my_alu|Mult1|auto_generated|mac_out4~DATAOUT18\ & !\my_alu|Mult1|auto_generated|op_1~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult1|auto_generated|add9_result[18]~36_combout\,
	datab => \my_alu|Mult1|auto_generated|mac_out4~DATAOUT18\,
	datad => VCC,
	cin => \my_alu|Mult1|auto_generated|op_1~35\,
	combout => \my_alu|Mult1|auto_generated|op_1~36_combout\,
	cout => \my_alu|Mult1|auto_generated|op_1~37\);

-- Location: LCCOMB_X42_Y22_N6
\my_alu|Mult0|auto_generated|op_1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult0|auto_generated|op_1~36_combout\ = ((\my_alu|Mult0|auto_generated|add9_result[18]~36_combout\ $ (\my_alu|Mult0|auto_generated|mac_out4~DATAOUT18\ $ (!\my_alu|Mult0|auto_generated|op_1~35\)))) # (GND)
-- \my_alu|Mult0|auto_generated|op_1~37\ = CARRY((\my_alu|Mult0|auto_generated|add9_result[18]~36_combout\ & ((\my_alu|Mult0|auto_generated|mac_out4~DATAOUT18\) # (!\my_alu|Mult0|auto_generated|op_1~35\))) # 
-- (!\my_alu|Mult0|auto_generated|add9_result[18]~36_combout\ & (\my_alu|Mult0|auto_generated|mac_out4~DATAOUT18\ & !\my_alu|Mult0|auto_generated|op_1~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult0|auto_generated|add9_result[18]~36_combout\,
	datab => \my_alu|Mult0|auto_generated|mac_out4~DATAOUT18\,
	datad => VCC,
	cin => \my_alu|Mult0|auto_generated|op_1~35\,
	combout => \my_alu|Mult0|auto_generated|op_1~36_combout\,
	cout => \my_alu|Mult0|auto_generated|op_1~37\);

-- Location: LCCOMB_X25_Y19_N14
\my_alu|Selector27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Selector27~0_combout\ = (!\output_reg_hi|q[0]~0_combout\ & ((\input_reg_op|q\(0) & (\my_alu|Mult1|auto_generated|op_1~36_combout\)) # (!\input_reg_op|q\(0) & ((\my_alu|Mult0|auto_generated|op_1~36_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \output_reg_hi|q[0]~0_combout\,
	datab => \input_reg_op|q\(0),
	datac => \my_alu|Mult1|auto_generated|op_1~36_combout\,
	datad => \my_alu|Mult0|auto_generated|op_1~36_combout\,
	combout => \my_alu|Selector27~0_combout\);

-- Location: FF_X25_Y19_N15
\output_reg_hi|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \my_alu|Selector27~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_reg_hi|q\(4));

-- Location: LCCOMB_X43_Y22_N8
\my_alu|Mult0|auto_generated|add9_result[19]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult0|auto_generated|add9_result[19]~38_combout\ = (\my_alu|Mult0|auto_generated|mac_out8~DATAOUT1\ & ((\my_alu|Mult0|auto_generated|mac_out6~DATAOUT19\ & (\my_alu|Mult0|auto_generated|add9_result[18]~37\ & VCC)) # 
-- (!\my_alu|Mult0|auto_generated|mac_out6~DATAOUT19\ & (!\my_alu|Mult0|auto_generated|add9_result[18]~37\)))) # (!\my_alu|Mult0|auto_generated|mac_out8~DATAOUT1\ & ((\my_alu|Mult0|auto_generated|mac_out6~DATAOUT19\ & 
-- (!\my_alu|Mult0|auto_generated|add9_result[18]~37\)) # (!\my_alu|Mult0|auto_generated|mac_out6~DATAOUT19\ & ((\my_alu|Mult0|auto_generated|add9_result[18]~37\) # (GND)))))
-- \my_alu|Mult0|auto_generated|add9_result[19]~39\ = CARRY((\my_alu|Mult0|auto_generated|mac_out8~DATAOUT1\ & (!\my_alu|Mult0|auto_generated|mac_out6~DATAOUT19\ & !\my_alu|Mult0|auto_generated|add9_result[18]~37\)) # 
-- (!\my_alu|Mult0|auto_generated|mac_out8~DATAOUT1\ & ((!\my_alu|Mult0|auto_generated|add9_result[18]~37\) # (!\my_alu|Mult0|auto_generated|mac_out6~DATAOUT19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult0|auto_generated|mac_out8~DATAOUT1\,
	datab => \my_alu|Mult0|auto_generated|mac_out6~DATAOUT19\,
	datad => VCC,
	cin => \my_alu|Mult0|auto_generated|add9_result[18]~37\,
	combout => \my_alu|Mult0|auto_generated|add9_result[19]~38_combout\,
	cout => \my_alu|Mult0|auto_generated|add9_result[19]~39\);

-- Location: LCCOMB_X42_Y22_N8
\my_alu|Mult0|auto_generated|op_1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult0|auto_generated|op_1~38_combout\ = (\my_alu|Mult0|auto_generated|mac_out4~DATAOUT19\ & ((\my_alu|Mult0|auto_generated|add9_result[19]~38_combout\ & (\my_alu|Mult0|auto_generated|op_1~37\ & VCC)) # 
-- (!\my_alu|Mult0|auto_generated|add9_result[19]~38_combout\ & (!\my_alu|Mult0|auto_generated|op_1~37\)))) # (!\my_alu|Mult0|auto_generated|mac_out4~DATAOUT19\ & ((\my_alu|Mult0|auto_generated|add9_result[19]~38_combout\ & 
-- (!\my_alu|Mult0|auto_generated|op_1~37\)) # (!\my_alu|Mult0|auto_generated|add9_result[19]~38_combout\ & ((\my_alu|Mult0|auto_generated|op_1~37\) # (GND)))))
-- \my_alu|Mult0|auto_generated|op_1~39\ = CARRY((\my_alu|Mult0|auto_generated|mac_out4~DATAOUT19\ & (!\my_alu|Mult0|auto_generated|add9_result[19]~38_combout\ & !\my_alu|Mult0|auto_generated|op_1~37\)) # (!\my_alu|Mult0|auto_generated|mac_out4~DATAOUT19\ & 
-- ((!\my_alu|Mult0|auto_generated|op_1~37\) # (!\my_alu|Mult0|auto_generated|add9_result[19]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult0|auto_generated|mac_out4~DATAOUT19\,
	datab => \my_alu|Mult0|auto_generated|add9_result[19]~38_combout\,
	datad => VCC,
	cin => \my_alu|Mult0|auto_generated|op_1~37\,
	combout => \my_alu|Mult0|auto_generated|op_1~38_combout\,
	cout => \my_alu|Mult0|auto_generated|op_1~39\);

-- Location: DSPMULT_X22_Y18_N0
\my_alu|Mult1|auto_generated|mac_mult7\ : cycloneive_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "0",
	dataa_width => 18,
	datab_clock => "0",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => GND,
	clk => \clk~inputclkctrl_outclk\,
	aclr => GND,
	ena => VCC,
	dataa => \my_alu|Mult1|auto_generated|mac_mult7_DATAA_bus\,
	datab => \my_alu|Mult1|auto_generated|mac_mult7_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \my_alu|Mult1|auto_generated|mac_mult7_DATAOUT_bus\);

-- Location: LCCOMB_X23_Y19_N22
\my_alu|Mult1|auto_generated|add9_result[19]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult1|auto_generated|add9_result[19]~38_combout\ = (\my_alu|Mult1|auto_generated|mac_out6~DATAOUT19\ & ((\my_alu|Mult1|auto_generated|mac_out8~DATAOUT1\ & (\my_alu|Mult1|auto_generated|add9_result[18]~37\ & VCC)) # 
-- (!\my_alu|Mult1|auto_generated|mac_out8~DATAOUT1\ & (!\my_alu|Mult1|auto_generated|add9_result[18]~37\)))) # (!\my_alu|Mult1|auto_generated|mac_out6~DATAOUT19\ & ((\my_alu|Mult1|auto_generated|mac_out8~DATAOUT1\ & 
-- (!\my_alu|Mult1|auto_generated|add9_result[18]~37\)) # (!\my_alu|Mult1|auto_generated|mac_out8~DATAOUT1\ & ((\my_alu|Mult1|auto_generated|add9_result[18]~37\) # (GND)))))
-- \my_alu|Mult1|auto_generated|add9_result[19]~39\ = CARRY((\my_alu|Mult1|auto_generated|mac_out6~DATAOUT19\ & (!\my_alu|Mult1|auto_generated|mac_out8~DATAOUT1\ & !\my_alu|Mult1|auto_generated|add9_result[18]~37\)) # 
-- (!\my_alu|Mult1|auto_generated|mac_out6~DATAOUT19\ & ((!\my_alu|Mult1|auto_generated|add9_result[18]~37\) # (!\my_alu|Mult1|auto_generated|mac_out8~DATAOUT1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult1|auto_generated|mac_out6~DATAOUT19\,
	datab => \my_alu|Mult1|auto_generated|mac_out8~DATAOUT1\,
	datad => VCC,
	cin => \my_alu|Mult1|auto_generated|add9_result[18]~37\,
	combout => \my_alu|Mult1|auto_generated|add9_result[19]~38_combout\,
	cout => \my_alu|Mult1|auto_generated|add9_result[19]~39\);

-- Location: LCCOMB_X24_Y19_N8
\my_alu|Mult1|auto_generated|op_1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult1|auto_generated|op_1~38_combout\ = (\my_alu|Mult1|auto_generated|mac_out4~DATAOUT19\ & ((\my_alu|Mult1|auto_generated|add9_result[19]~38_combout\ & (\my_alu|Mult1|auto_generated|op_1~37\ & VCC)) # 
-- (!\my_alu|Mult1|auto_generated|add9_result[19]~38_combout\ & (!\my_alu|Mult1|auto_generated|op_1~37\)))) # (!\my_alu|Mult1|auto_generated|mac_out4~DATAOUT19\ & ((\my_alu|Mult1|auto_generated|add9_result[19]~38_combout\ & 
-- (!\my_alu|Mult1|auto_generated|op_1~37\)) # (!\my_alu|Mult1|auto_generated|add9_result[19]~38_combout\ & ((\my_alu|Mult1|auto_generated|op_1~37\) # (GND)))))
-- \my_alu|Mult1|auto_generated|op_1~39\ = CARRY((\my_alu|Mult1|auto_generated|mac_out4~DATAOUT19\ & (!\my_alu|Mult1|auto_generated|add9_result[19]~38_combout\ & !\my_alu|Mult1|auto_generated|op_1~37\)) # (!\my_alu|Mult1|auto_generated|mac_out4~DATAOUT19\ & 
-- ((!\my_alu|Mult1|auto_generated|op_1~37\) # (!\my_alu|Mult1|auto_generated|add9_result[19]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult1|auto_generated|mac_out4~DATAOUT19\,
	datab => \my_alu|Mult1|auto_generated|add9_result[19]~38_combout\,
	datad => VCC,
	cin => \my_alu|Mult1|auto_generated|op_1~37\,
	combout => \my_alu|Mult1|auto_generated|op_1~38_combout\,
	cout => \my_alu|Mult1|auto_generated|op_1~39\);

-- Location: LCCOMB_X25_Y19_N24
\my_alu|Selector26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Selector26~0_combout\ = (!\output_reg_hi|q[0]~0_combout\ & ((\input_reg_op|q\(0) & ((\my_alu|Mult1|auto_generated|op_1~38_combout\))) # (!\input_reg_op|q\(0) & (\my_alu|Mult0|auto_generated|op_1~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \output_reg_hi|q[0]~0_combout\,
	datab => \input_reg_op|q\(0),
	datac => \my_alu|Mult0|auto_generated|op_1~38_combout\,
	datad => \my_alu|Mult1|auto_generated|op_1~38_combout\,
	combout => \my_alu|Selector26~0_combout\);

-- Location: FF_X25_Y19_N25
\output_reg_hi|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \my_alu|Selector26~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_reg_hi|q\(5));

-- Location: LCCOMB_X43_Y22_N10
\my_alu|Mult0|auto_generated|add9_result[20]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult0|auto_generated|add9_result[20]~40_combout\ = ((\my_alu|Mult0|auto_generated|mac_out8~DATAOUT2\ $ (\my_alu|Mult0|auto_generated|mac_out6~DATAOUT20\ $ (!\my_alu|Mult0|auto_generated|add9_result[19]~39\)))) # (GND)
-- \my_alu|Mult0|auto_generated|add9_result[20]~41\ = CARRY((\my_alu|Mult0|auto_generated|mac_out8~DATAOUT2\ & ((\my_alu|Mult0|auto_generated|mac_out6~DATAOUT20\) # (!\my_alu|Mult0|auto_generated|add9_result[19]~39\))) # 
-- (!\my_alu|Mult0|auto_generated|mac_out8~DATAOUT2\ & (\my_alu|Mult0|auto_generated|mac_out6~DATAOUT20\ & !\my_alu|Mult0|auto_generated|add9_result[19]~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult0|auto_generated|mac_out8~DATAOUT2\,
	datab => \my_alu|Mult0|auto_generated|mac_out6~DATAOUT20\,
	datad => VCC,
	cin => \my_alu|Mult0|auto_generated|add9_result[19]~39\,
	combout => \my_alu|Mult0|auto_generated|add9_result[20]~40_combout\,
	cout => \my_alu|Mult0|auto_generated|add9_result[20]~41\);

-- Location: LCCOMB_X42_Y22_N10
\my_alu|Mult0|auto_generated|op_1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult0|auto_generated|op_1~40_combout\ = ((\my_alu|Mult0|auto_generated|mac_out4~DATAOUT20\ $ (\my_alu|Mult0|auto_generated|add9_result[20]~40_combout\ $ (!\my_alu|Mult0|auto_generated|op_1~39\)))) # (GND)
-- \my_alu|Mult0|auto_generated|op_1~41\ = CARRY((\my_alu|Mult0|auto_generated|mac_out4~DATAOUT20\ & ((\my_alu|Mult0|auto_generated|add9_result[20]~40_combout\) # (!\my_alu|Mult0|auto_generated|op_1~39\))) # (!\my_alu|Mult0|auto_generated|mac_out4~DATAOUT20\ 
-- & (\my_alu|Mult0|auto_generated|add9_result[20]~40_combout\ & !\my_alu|Mult0|auto_generated|op_1~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult0|auto_generated|mac_out4~DATAOUT20\,
	datab => \my_alu|Mult0|auto_generated|add9_result[20]~40_combout\,
	datad => VCC,
	cin => \my_alu|Mult0|auto_generated|op_1~39\,
	combout => \my_alu|Mult0|auto_generated|op_1~40_combout\,
	cout => \my_alu|Mult0|auto_generated|op_1~41\);

-- Location: LCCOMB_X23_Y19_N24
\my_alu|Mult1|auto_generated|add9_result[20]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult1|auto_generated|add9_result[20]~40_combout\ = ((\my_alu|Mult1|auto_generated|mac_out8~DATAOUT2\ $ (\my_alu|Mult1|auto_generated|mac_out6~DATAOUT20\ $ (!\my_alu|Mult1|auto_generated|add9_result[19]~39\)))) # (GND)
-- \my_alu|Mult1|auto_generated|add9_result[20]~41\ = CARRY((\my_alu|Mult1|auto_generated|mac_out8~DATAOUT2\ & ((\my_alu|Mult1|auto_generated|mac_out6~DATAOUT20\) # (!\my_alu|Mult1|auto_generated|add9_result[19]~39\))) # 
-- (!\my_alu|Mult1|auto_generated|mac_out8~DATAOUT2\ & (\my_alu|Mult1|auto_generated|mac_out6~DATAOUT20\ & !\my_alu|Mult1|auto_generated|add9_result[19]~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult1|auto_generated|mac_out8~DATAOUT2\,
	datab => \my_alu|Mult1|auto_generated|mac_out6~DATAOUT20\,
	datad => VCC,
	cin => \my_alu|Mult1|auto_generated|add9_result[19]~39\,
	combout => \my_alu|Mult1|auto_generated|add9_result[20]~40_combout\,
	cout => \my_alu|Mult1|auto_generated|add9_result[20]~41\);

-- Location: LCCOMB_X24_Y19_N10
\my_alu|Mult1|auto_generated|op_1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult1|auto_generated|op_1~40_combout\ = ((\my_alu|Mult1|auto_generated|mac_out4~DATAOUT20\ $ (\my_alu|Mult1|auto_generated|add9_result[20]~40_combout\ $ (!\my_alu|Mult1|auto_generated|op_1~39\)))) # (GND)
-- \my_alu|Mult1|auto_generated|op_1~41\ = CARRY((\my_alu|Mult1|auto_generated|mac_out4~DATAOUT20\ & ((\my_alu|Mult1|auto_generated|add9_result[20]~40_combout\) # (!\my_alu|Mult1|auto_generated|op_1~39\))) # (!\my_alu|Mult1|auto_generated|mac_out4~DATAOUT20\ 
-- & (\my_alu|Mult1|auto_generated|add9_result[20]~40_combout\ & !\my_alu|Mult1|auto_generated|op_1~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult1|auto_generated|mac_out4~DATAOUT20\,
	datab => \my_alu|Mult1|auto_generated|add9_result[20]~40_combout\,
	datad => VCC,
	cin => \my_alu|Mult1|auto_generated|op_1~39\,
	combout => \my_alu|Mult1|auto_generated|op_1~40_combout\,
	cout => \my_alu|Mult1|auto_generated|op_1~41\);

-- Location: LCCOMB_X25_Y19_N18
\my_alu|Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Selector25~0_combout\ = (!\output_reg_hi|q[0]~0_combout\ & ((\input_reg_op|q\(0) & ((\my_alu|Mult1|auto_generated|op_1~40_combout\))) # (!\input_reg_op|q\(0) & (\my_alu|Mult0|auto_generated|op_1~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \output_reg_hi|q[0]~0_combout\,
	datab => \input_reg_op|q\(0),
	datac => \my_alu|Mult0|auto_generated|op_1~40_combout\,
	datad => \my_alu|Mult1|auto_generated|op_1~40_combout\,
	combout => \my_alu|Selector25~0_combout\);

-- Location: FF_X25_Y19_N19
\output_reg_hi|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \my_alu|Selector25~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_reg_hi|q\(6));

-- Location: DSPMULT_X44_Y21_N0
\my_alu|Mult0|auto_generated|mac_mult7\ : cycloneive_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "0",
	dataa_width => 18,
	datab_clock => "0",
	datab_width => 18,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => VCC,
	signb => VCC,
	clk => \clk~inputclkctrl_outclk\,
	aclr => GND,
	ena => VCC,
	dataa => \my_alu|Mult0|auto_generated|mac_mult7_DATAA_bus\,
	datab => \my_alu|Mult0|auto_generated|mac_mult7_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \my_alu|Mult0|auto_generated|mac_mult7_DATAOUT_bus\);

-- Location: LCCOMB_X43_Y22_N12
\my_alu|Mult0|auto_generated|add9_result[21]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult0|auto_generated|add9_result[21]~42_combout\ = (\my_alu|Mult0|auto_generated|mac_out6~DATAOUT21\ & ((\my_alu|Mult0|auto_generated|mac_out8~DATAOUT3\ & (\my_alu|Mult0|auto_generated|add9_result[20]~41\ & VCC)) # 
-- (!\my_alu|Mult0|auto_generated|mac_out8~DATAOUT3\ & (!\my_alu|Mult0|auto_generated|add9_result[20]~41\)))) # (!\my_alu|Mult0|auto_generated|mac_out6~DATAOUT21\ & ((\my_alu|Mult0|auto_generated|mac_out8~DATAOUT3\ & 
-- (!\my_alu|Mult0|auto_generated|add9_result[20]~41\)) # (!\my_alu|Mult0|auto_generated|mac_out8~DATAOUT3\ & ((\my_alu|Mult0|auto_generated|add9_result[20]~41\) # (GND)))))
-- \my_alu|Mult0|auto_generated|add9_result[21]~43\ = CARRY((\my_alu|Mult0|auto_generated|mac_out6~DATAOUT21\ & (!\my_alu|Mult0|auto_generated|mac_out8~DATAOUT3\ & !\my_alu|Mult0|auto_generated|add9_result[20]~41\)) # 
-- (!\my_alu|Mult0|auto_generated|mac_out6~DATAOUT21\ & ((!\my_alu|Mult0|auto_generated|add9_result[20]~41\) # (!\my_alu|Mult0|auto_generated|mac_out8~DATAOUT3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult0|auto_generated|mac_out6~DATAOUT21\,
	datab => \my_alu|Mult0|auto_generated|mac_out8~DATAOUT3\,
	datad => VCC,
	cin => \my_alu|Mult0|auto_generated|add9_result[20]~41\,
	combout => \my_alu|Mult0|auto_generated|add9_result[21]~42_combout\,
	cout => \my_alu|Mult0|auto_generated|add9_result[21]~43\);

-- Location: LCCOMB_X42_Y22_N12
\my_alu|Mult0|auto_generated|op_1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult0|auto_generated|op_1~42_combout\ = (\my_alu|Mult0|auto_generated|mac_out4~DATAOUT21\ & ((\my_alu|Mult0|auto_generated|add9_result[21]~42_combout\ & (\my_alu|Mult0|auto_generated|op_1~41\ & VCC)) # 
-- (!\my_alu|Mult0|auto_generated|add9_result[21]~42_combout\ & (!\my_alu|Mult0|auto_generated|op_1~41\)))) # (!\my_alu|Mult0|auto_generated|mac_out4~DATAOUT21\ & ((\my_alu|Mult0|auto_generated|add9_result[21]~42_combout\ & 
-- (!\my_alu|Mult0|auto_generated|op_1~41\)) # (!\my_alu|Mult0|auto_generated|add9_result[21]~42_combout\ & ((\my_alu|Mult0|auto_generated|op_1~41\) # (GND)))))
-- \my_alu|Mult0|auto_generated|op_1~43\ = CARRY((\my_alu|Mult0|auto_generated|mac_out4~DATAOUT21\ & (!\my_alu|Mult0|auto_generated|add9_result[21]~42_combout\ & !\my_alu|Mult0|auto_generated|op_1~41\)) # (!\my_alu|Mult0|auto_generated|mac_out4~DATAOUT21\ & 
-- ((!\my_alu|Mult0|auto_generated|op_1~41\) # (!\my_alu|Mult0|auto_generated|add9_result[21]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult0|auto_generated|mac_out4~DATAOUT21\,
	datab => \my_alu|Mult0|auto_generated|add9_result[21]~42_combout\,
	datad => VCC,
	cin => \my_alu|Mult0|auto_generated|op_1~41\,
	combout => \my_alu|Mult0|auto_generated|op_1~42_combout\,
	cout => \my_alu|Mult0|auto_generated|op_1~43\);

-- Location: LCCOMB_X24_Y19_N12
\my_alu|Mult1|auto_generated|op_1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult1|auto_generated|op_1~42_combout\ = (\my_alu|Mult1|auto_generated|add9_result[21]~42_combout\ & ((\my_alu|Mult1|auto_generated|mac_out4~DATAOUT21\ & (\my_alu|Mult1|auto_generated|op_1~41\ & VCC)) # 
-- (!\my_alu|Mult1|auto_generated|mac_out4~DATAOUT21\ & (!\my_alu|Mult1|auto_generated|op_1~41\)))) # (!\my_alu|Mult1|auto_generated|add9_result[21]~42_combout\ & ((\my_alu|Mult1|auto_generated|mac_out4~DATAOUT21\ & (!\my_alu|Mult1|auto_generated|op_1~41\)) 
-- # (!\my_alu|Mult1|auto_generated|mac_out4~DATAOUT21\ & ((\my_alu|Mult1|auto_generated|op_1~41\) # (GND)))))
-- \my_alu|Mult1|auto_generated|op_1~43\ = CARRY((\my_alu|Mult1|auto_generated|add9_result[21]~42_combout\ & (!\my_alu|Mult1|auto_generated|mac_out4~DATAOUT21\ & !\my_alu|Mult1|auto_generated|op_1~41\)) # 
-- (!\my_alu|Mult1|auto_generated|add9_result[21]~42_combout\ & ((!\my_alu|Mult1|auto_generated|op_1~41\) # (!\my_alu|Mult1|auto_generated|mac_out4~DATAOUT21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult1|auto_generated|add9_result[21]~42_combout\,
	datab => \my_alu|Mult1|auto_generated|mac_out4~DATAOUT21\,
	datad => VCC,
	cin => \my_alu|Mult1|auto_generated|op_1~41\,
	combout => \my_alu|Mult1|auto_generated|op_1~42_combout\,
	cout => \my_alu|Mult1|auto_generated|op_1~43\);

-- Location: LCCOMB_X25_Y19_N20
\my_alu|Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Selector24~0_combout\ = (!\output_reg_hi|q[0]~0_combout\ & ((\input_reg_op|q\(0) & ((\my_alu|Mult1|auto_generated|op_1~42_combout\))) # (!\input_reg_op|q\(0) & (\my_alu|Mult0|auto_generated|op_1~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \output_reg_hi|q[0]~0_combout\,
	datab => \my_alu|Mult0|auto_generated|op_1~42_combout\,
	datac => \input_reg_op|q\(0),
	datad => \my_alu|Mult1|auto_generated|op_1~42_combout\,
	combout => \my_alu|Selector24~0_combout\);

-- Location: FF_X25_Y19_N21
\output_reg_hi|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \my_alu|Selector24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_reg_hi|q\(7));

-- Location: LCCOMB_X43_Y22_N14
\my_alu|Mult0|auto_generated|add9_result[22]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult0|auto_generated|add9_result[22]~44_combout\ = ((\my_alu|Mult0|auto_generated|mac_out8~DATAOUT4\ $ (\my_alu|Mult0|auto_generated|mac_out6~DATAOUT22\ $ (!\my_alu|Mult0|auto_generated|add9_result[21]~43\)))) # (GND)
-- \my_alu|Mult0|auto_generated|add9_result[22]~45\ = CARRY((\my_alu|Mult0|auto_generated|mac_out8~DATAOUT4\ & ((\my_alu|Mult0|auto_generated|mac_out6~DATAOUT22\) # (!\my_alu|Mult0|auto_generated|add9_result[21]~43\))) # 
-- (!\my_alu|Mult0|auto_generated|mac_out8~DATAOUT4\ & (\my_alu|Mult0|auto_generated|mac_out6~DATAOUT22\ & !\my_alu|Mult0|auto_generated|add9_result[21]~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult0|auto_generated|mac_out8~DATAOUT4\,
	datab => \my_alu|Mult0|auto_generated|mac_out6~DATAOUT22\,
	datad => VCC,
	cin => \my_alu|Mult0|auto_generated|add9_result[21]~43\,
	combout => \my_alu|Mult0|auto_generated|add9_result[22]~44_combout\,
	cout => \my_alu|Mult0|auto_generated|add9_result[22]~45\);

-- Location: LCCOMB_X42_Y22_N14
\my_alu|Mult0|auto_generated|op_1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult0|auto_generated|op_1~44_combout\ = ((\my_alu|Mult0|auto_generated|mac_out4~DATAOUT22\ $ (\my_alu|Mult0|auto_generated|add9_result[22]~44_combout\ $ (!\my_alu|Mult0|auto_generated|op_1~43\)))) # (GND)
-- \my_alu|Mult0|auto_generated|op_1~45\ = CARRY((\my_alu|Mult0|auto_generated|mac_out4~DATAOUT22\ & ((\my_alu|Mult0|auto_generated|add9_result[22]~44_combout\) # (!\my_alu|Mult0|auto_generated|op_1~43\))) # (!\my_alu|Mult0|auto_generated|mac_out4~DATAOUT22\ 
-- & (\my_alu|Mult0|auto_generated|add9_result[22]~44_combout\ & !\my_alu|Mult0|auto_generated|op_1~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult0|auto_generated|mac_out4~DATAOUT22\,
	datab => \my_alu|Mult0|auto_generated|add9_result[22]~44_combout\,
	datad => VCC,
	cin => \my_alu|Mult0|auto_generated|op_1~43\,
	combout => \my_alu|Mult0|auto_generated|op_1~44_combout\,
	cout => \my_alu|Mult0|auto_generated|op_1~45\);

-- Location: LCCOMB_X23_Y19_N28
\my_alu|Mult1|auto_generated|add9_result[22]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult1|auto_generated|add9_result[22]~44_combout\ = ((\my_alu|Mult1|auto_generated|mac_out8~DATAOUT4\ $ (\my_alu|Mult1|auto_generated|mac_out6~DATAOUT22\ $ (!\my_alu|Mult1|auto_generated|add9_result[21]~43\)))) # (GND)
-- \my_alu|Mult1|auto_generated|add9_result[22]~45\ = CARRY((\my_alu|Mult1|auto_generated|mac_out8~DATAOUT4\ & ((\my_alu|Mult1|auto_generated|mac_out6~DATAOUT22\) # (!\my_alu|Mult1|auto_generated|add9_result[21]~43\))) # 
-- (!\my_alu|Mult1|auto_generated|mac_out8~DATAOUT4\ & (\my_alu|Mult1|auto_generated|mac_out6~DATAOUT22\ & !\my_alu|Mult1|auto_generated|add9_result[21]~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult1|auto_generated|mac_out8~DATAOUT4\,
	datab => \my_alu|Mult1|auto_generated|mac_out6~DATAOUT22\,
	datad => VCC,
	cin => \my_alu|Mult1|auto_generated|add9_result[21]~43\,
	combout => \my_alu|Mult1|auto_generated|add9_result[22]~44_combout\,
	cout => \my_alu|Mult1|auto_generated|add9_result[22]~45\);

-- Location: LCCOMB_X24_Y19_N14
\my_alu|Mult1|auto_generated|op_1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult1|auto_generated|op_1~44_combout\ = ((\my_alu|Mult1|auto_generated|mac_out4~DATAOUT22\ $ (\my_alu|Mult1|auto_generated|add9_result[22]~44_combout\ $ (!\my_alu|Mult1|auto_generated|op_1~43\)))) # (GND)
-- \my_alu|Mult1|auto_generated|op_1~45\ = CARRY((\my_alu|Mult1|auto_generated|mac_out4~DATAOUT22\ & ((\my_alu|Mult1|auto_generated|add9_result[22]~44_combout\) # (!\my_alu|Mult1|auto_generated|op_1~43\))) # (!\my_alu|Mult1|auto_generated|mac_out4~DATAOUT22\ 
-- & (\my_alu|Mult1|auto_generated|add9_result[22]~44_combout\ & !\my_alu|Mult1|auto_generated|op_1~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult1|auto_generated|mac_out4~DATAOUT22\,
	datab => \my_alu|Mult1|auto_generated|add9_result[22]~44_combout\,
	datad => VCC,
	cin => \my_alu|Mult1|auto_generated|op_1~43\,
	combout => \my_alu|Mult1|auto_generated|op_1~44_combout\,
	cout => \my_alu|Mult1|auto_generated|op_1~45\);

-- Location: LCCOMB_X25_Y19_N6
\my_alu|Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Selector23~0_combout\ = (!\output_reg_hi|q[0]~0_combout\ & ((\input_reg_op|q\(0) & ((\my_alu|Mult1|auto_generated|op_1~44_combout\))) # (!\input_reg_op|q\(0) & (\my_alu|Mult0|auto_generated|op_1~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \output_reg_hi|q[0]~0_combout\,
	datab => \input_reg_op|q\(0),
	datac => \my_alu|Mult0|auto_generated|op_1~44_combout\,
	datad => \my_alu|Mult1|auto_generated|op_1~44_combout\,
	combout => \my_alu|Selector23~0_combout\);

-- Location: FF_X25_Y19_N7
\output_reg_hi|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \my_alu|Selector23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_reg_hi|q\(8));

-- Location: LCCOMB_X43_Y22_N16
\my_alu|Mult0|auto_generated|add9_result[23]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult0|auto_generated|add9_result[23]~46_combout\ = (\my_alu|Mult0|auto_generated|mac_out8~DATAOUT5\ & ((\my_alu|Mult0|auto_generated|mac_out6~DATAOUT23\ & (\my_alu|Mult0|auto_generated|add9_result[22]~45\ & VCC)) # 
-- (!\my_alu|Mult0|auto_generated|mac_out6~DATAOUT23\ & (!\my_alu|Mult0|auto_generated|add9_result[22]~45\)))) # (!\my_alu|Mult0|auto_generated|mac_out8~DATAOUT5\ & ((\my_alu|Mult0|auto_generated|mac_out6~DATAOUT23\ & 
-- (!\my_alu|Mult0|auto_generated|add9_result[22]~45\)) # (!\my_alu|Mult0|auto_generated|mac_out6~DATAOUT23\ & ((\my_alu|Mult0|auto_generated|add9_result[22]~45\) # (GND)))))
-- \my_alu|Mult0|auto_generated|add9_result[23]~47\ = CARRY((\my_alu|Mult0|auto_generated|mac_out8~DATAOUT5\ & (!\my_alu|Mult0|auto_generated|mac_out6~DATAOUT23\ & !\my_alu|Mult0|auto_generated|add9_result[22]~45\)) # 
-- (!\my_alu|Mult0|auto_generated|mac_out8~DATAOUT5\ & ((!\my_alu|Mult0|auto_generated|add9_result[22]~45\) # (!\my_alu|Mult0|auto_generated|mac_out6~DATAOUT23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult0|auto_generated|mac_out8~DATAOUT5\,
	datab => \my_alu|Mult0|auto_generated|mac_out6~DATAOUT23\,
	datad => VCC,
	cin => \my_alu|Mult0|auto_generated|add9_result[22]~45\,
	combout => \my_alu|Mult0|auto_generated|add9_result[23]~46_combout\,
	cout => \my_alu|Mult0|auto_generated|add9_result[23]~47\);

-- Location: LCCOMB_X42_Y22_N16
\my_alu|Mult0|auto_generated|op_1~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult0|auto_generated|op_1~46_combout\ = (\my_alu|Mult0|auto_generated|mac_out4~DATAOUT23\ & ((\my_alu|Mult0|auto_generated|add9_result[23]~46_combout\ & (\my_alu|Mult0|auto_generated|op_1~45\ & VCC)) # 
-- (!\my_alu|Mult0|auto_generated|add9_result[23]~46_combout\ & (!\my_alu|Mult0|auto_generated|op_1~45\)))) # (!\my_alu|Mult0|auto_generated|mac_out4~DATAOUT23\ & ((\my_alu|Mult0|auto_generated|add9_result[23]~46_combout\ & 
-- (!\my_alu|Mult0|auto_generated|op_1~45\)) # (!\my_alu|Mult0|auto_generated|add9_result[23]~46_combout\ & ((\my_alu|Mult0|auto_generated|op_1~45\) # (GND)))))
-- \my_alu|Mult0|auto_generated|op_1~47\ = CARRY((\my_alu|Mult0|auto_generated|mac_out4~DATAOUT23\ & (!\my_alu|Mult0|auto_generated|add9_result[23]~46_combout\ & !\my_alu|Mult0|auto_generated|op_1~45\)) # (!\my_alu|Mult0|auto_generated|mac_out4~DATAOUT23\ & 
-- ((!\my_alu|Mult0|auto_generated|op_1~45\) # (!\my_alu|Mult0|auto_generated|add9_result[23]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult0|auto_generated|mac_out4~DATAOUT23\,
	datab => \my_alu|Mult0|auto_generated|add9_result[23]~46_combout\,
	datad => VCC,
	cin => \my_alu|Mult0|auto_generated|op_1~45\,
	combout => \my_alu|Mult0|auto_generated|op_1~46_combout\,
	cout => \my_alu|Mult0|auto_generated|op_1~47\);

-- Location: LCCOMB_X23_Y19_N30
\my_alu|Mult1|auto_generated|add9_result[23]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult1|auto_generated|add9_result[23]~46_combout\ = (\my_alu|Mult1|auto_generated|mac_out8~DATAOUT5\ & ((\my_alu|Mult1|auto_generated|mac_out6~DATAOUT23\ & (\my_alu|Mult1|auto_generated|add9_result[22]~45\ & VCC)) # 
-- (!\my_alu|Mult1|auto_generated|mac_out6~DATAOUT23\ & (!\my_alu|Mult1|auto_generated|add9_result[22]~45\)))) # (!\my_alu|Mult1|auto_generated|mac_out8~DATAOUT5\ & ((\my_alu|Mult1|auto_generated|mac_out6~DATAOUT23\ & 
-- (!\my_alu|Mult1|auto_generated|add9_result[22]~45\)) # (!\my_alu|Mult1|auto_generated|mac_out6~DATAOUT23\ & ((\my_alu|Mult1|auto_generated|add9_result[22]~45\) # (GND)))))
-- \my_alu|Mult1|auto_generated|add9_result[23]~47\ = CARRY((\my_alu|Mult1|auto_generated|mac_out8~DATAOUT5\ & (!\my_alu|Mult1|auto_generated|mac_out6~DATAOUT23\ & !\my_alu|Mult1|auto_generated|add9_result[22]~45\)) # 
-- (!\my_alu|Mult1|auto_generated|mac_out8~DATAOUT5\ & ((!\my_alu|Mult1|auto_generated|add9_result[22]~45\) # (!\my_alu|Mult1|auto_generated|mac_out6~DATAOUT23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult1|auto_generated|mac_out8~DATAOUT5\,
	datab => \my_alu|Mult1|auto_generated|mac_out6~DATAOUT23\,
	datad => VCC,
	cin => \my_alu|Mult1|auto_generated|add9_result[22]~45\,
	combout => \my_alu|Mult1|auto_generated|add9_result[23]~46_combout\,
	cout => \my_alu|Mult1|auto_generated|add9_result[23]~47\);

-- Location: LCCOMB_X24_Y19_N16
\my_alu|Mult1|auto_generated|op_1~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult1|auto_generated|op_1~46_combout\ = (\my_alu|Mult1|auto_generated|mac_out4~DATAOUT23\ & ((\my_alu|Mult1|auto_generated|add9_result[23]~46_combout\ & (\my_alu|Mult1|auto_generated|op_1~45\ & VCC)) # 
-- (!\my_alu|Mult1|auto_generated|add9_result[23]~46_combout\ & (!\my_alu|Mult1|auto_generated|op_1~45\)))) # (!\my_alu|Mult1|auto_generated|mac_out4~DATAOUT23\ & ((\my_alu|Mult1|auto_generated|add9_result[23]~46_combout\ & 
-- (!\my_alu|Mult1|auto_generated|op_1~45\)) # (!\my_alu|Mult1|auto_generated|add9_result[23]~46_combout\ & ((\my_alu|Mult1|auto_generated|op_1~45\) # (GND)))))
-- \my_alu|Mult1|auto_generated|op_1~47\ = CARRY((\my_alu|Mult1|auto_generated|mac_out4~DATAOUT23\ & (!\my_alu|Mult1|auto_generated|add9_result[23]~46_combout\ & !\my_alu|Mult1|auto_generated|op_1~45\)) # (!\my_alu|Mult1|auto_generated|mac_out4~DATAOUT23\ & 
-- ((!\my_alu|Mult1|auto_generated|op_1~45\) # (!\my_alu|Mult1|auto_generated|add9_result[23]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult1|auto_generated|mac_out4~DATAOUT23\,
	datab => \my_alu|Mult1|auto_generated|add9_result[23]~46_combout\,
	datad => VCC,
	cin => \my_alu|Mult1|auto_generated|op_1~45\,
	combout => \my_alu|Mult1|auto_generated|op_1~46_combout\,
	cout => \my_alu|Mult1|auto_generated|op_1~47\);

-- Location: LCCOMB_X24_Y22_N0
\my_alu|Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Selector22~0_combout\ = (!\output_reg_hi|q[0]~0_combout\ & ((\input_reg_op|q\(0) & ((\my_alu|Mult1|auto_generated|op_1~46_combout\))) # (!\input_reg_op|q\(0) & (\my_alu|Mult0|auto_generated|op_1~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(0),
	datab => \output_reg_hi|q[0]~0_combout\,
	datac => \my_alu|Mult0|auto_generated|op_1~46_combout\,
	datad => \my_alu|Mult1|auto_generated|op_1~46_combout\,
	combout => \my_alu|Selector22~0_combout\);

-- Location: FF_X24_Y22_N1
\output_reg_hi|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \my_alu|Selector22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_reg_hi|q\(9));

-- Location: LCCOMB_X24_Y19_N18
\my_alu|Mult1|auto_generated|op_1~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult1|auto_generated|op_1~48_combout\ = ((\my_alu|Mult1|auto_generated|add9_result[24]~48_combout\ $ (\my_alu|Mult1|auto_generated|mac_out4~DATAOUT24\ $ (!\my_alu|Mult1|auto_generated|op_1~47\)))) # (GND)
-- \my_alu|Mult1|auto_generated|op_1~49\ = CARRY((\my_alu|Mult1|auto_generated|add9_result[24]~48_combout\ & ((\my_alu|Mult1|auto_generated|mac_out4~DATAOUT24\) # (!\my_alu|Mult1|auto_generated|op_1~47\))) # 
-- (!\my_alu|Mult1|auto_generated|add9_result[24]~48_combout\ & (\my_alu|Mult1|auto_generated|mac_out4~DATAOUT24\ & !\my_alu|Mult1|auto_generated|op_1~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult1|auto_generated|add9_result[24]~48_combout\,
	datab => \my_alu|Mult1|auto_generated|mac_out4~DATAOUT24\,
	datad => VCC,
	cin => \my_alu|Mult1|auto_generated|op_1~47\,
	combout => \my_alu|Mult1|auto_generated|op_1~48_combout\,
	cout => \my_alu|Mult1|auto_generated|op_1~49\);

-- Location: LCCOMB_X43_Y22_N18
\my_alu|Mult0|auto_generated|add9_result[24]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult0|auto_generated|add9_result[24]~48_combout\ = ((\my_alu|Mult0|auto_generated|mac_out8~DATAOUT6\ $ (\my_alu|Mult0|auto_generated|mac_out6~DATAOUT24\ $ (!\my_alu|Mult0|auto_generated|add9_result[23]~47\)))) # (GND)
-- \my_alu|Mult0|auto_generated|add9_result[24]~49\ = CARRY((\my_alu|Mult0|auto_generated|mac_out8~DATAOUT6\ & ((\my_alu|Mult0|auto_generated|mac_out6~DATAOUT24\) # (!\my_alu|Mult0|auto_generated|add9_result[23]~47\))) # 
-- (!\my_alu|Mult0|auto_generated|mac_out8~DATAOUT6\ & (\my_alu|Mult0|auto_generated|mac_out6~DATAOUT24\ & !\my_alu|Mult0|auto_generated|add9_result[23]~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult0|auto_generated|mac_out8~DATAOUT6\,
	datab => \my_alu|Mult0|auto_generated|mac_out6~DATAOUT24\,
	datad => VCC,
	cin => \my_alu|Mult0|auto_generated|add9_result[23]~47\,
	combout => \my_alu|Mult0|auto_generated|add9_result[24]~48_combout\,
	cout => \my_alu|Mult0|auto_generated|add9_result[24]~49\);

-- Location: LCCOMB_X42_Y22_N18
\my_alu|Mult0|auto_generated|op_1~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult0|auto_generated|op_1~48_combout\ = ((\my_alu|Mult0|auto_generated|mac_out4~DATAOUT24\ $ (\my_alu|Mult0|auto_generated|add9_result[24]~48_combout\ $ (!\my_alu|Mult0|auto_generated|op_1~47\)))) # (GND)
-- \my_alu|Mult0|auto_generated|op_1~49\ = CARRY((\my_alu|Mult0|auto_generated|mac_out4~DATAOUT24\ & ((\my_alu|Mult0|auto_generated|add9_result[24]~48_combout\) # (!\my_alu|Mult0|auto_generated|op_1~47\))) # (!\my_alu|Mult0|auto_generated|mac_out4~DATAOUT24\ 
-- & (\my_alu|Mult0|auto_generated|add9_result[24]~48_combout\ & !\my_alu|Mult0|auto_generated|op_1~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult0|auto_generated|mac_out4~DATAOUT24\,
	datab => \my_alu|Mult0|auto_generated|add9_result[24]~48_combout\,
	datad => VCC,
	cin => \my_alu|Mult0|auto_generated|op_1~47\,
	combout => \my_alu|Mult0|auto_generated|op_1~48_combout\,
	cout => \my_alu|Mult0|auto_generated|op_1~49\);

-- Location: LCCOMB_X25_Y19_N0
\my_alu|Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Selector21~0_combout\ = (!\output_reg_hi|q[0]~0_combout\ & ((\input_reg_op|q\(0) & (\my_alu|Mult1|auto_generated|op_1~48_combout\)) # (!\input_reg_op|q\(0) & ((\my_alu|Mult0|auto_generated|op_1~48_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \output_reg_hi|q[0]~0_combout\,
	datab => \my_alu|Mult1|auto_generated|op_1~48_combout\,
	datac => \input_reg_op|q\(0),
	datad => \my_alu|Mult0|auto_generated|op_1~48_combout\,
	combout => \my_alu|Selector21~0_combout\);

-- Location: FF_X25_Y19_N1
\output_reg_hi|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \my_alu|Selector21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_reg_hi|q\(10));

-- Location: LCCOMB_X42_Y22_N20
\my_alu|Mult0|auto_generated|op_1~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult0|auto_generated|op_1~50_combout\ = (\my_alu|Mult0|auto_generated|add9_result[25]~50_combout\ & ((\my_alu|Mult0|auto_generated|mac_out4~DATAOUT25\ & (\my_alu|Mult0|auto_generated|op_1~49\ & VCC)) # 
-- (!\my_alu|Mult0|auto_generated|mac_out4~DATAOUT25\ & (!\my_alu|Mult0|auto_generated|op_1~49\)))) # (!\my_alu|Mult0|auto_generated|add9_result[25]~50_combout\ & ((\my_alu|Mult0|auto_generated|mac_out4~DATAOUT25\ & (!\my_alu|Mult0|auto_generated|op_1~49\)) 
-- # (!\my_alu|Mult0|auto_generated|mac_out4~DATAOUT25\ & ((\my_alu|Mult0|auto_generated|op_1~49\) # (GND)))))
-- \my_alu|Mult0|auto_generated|op_1~51\ = CARRY((\my_alu|Mult0|auto_generated|add9_result[25]~50_combout\ & (!\my_alu|Mult0|auto_generated|mac_out4~DATAOUT25\ & !\my_alu|Mult0|auto_generated|op_1~49\)) # 
-- (!\my_alu|Mult0|auto_generated|add9_result[25]~50_combout\ & ((!\my_alu|Mult0|auto_generated|op_1~49\) # (!\my_alu|Mult0|auto_generated|mac_out4~DATAOUT25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult0|auto_generated|add9_result[25]~50_combout\,
	datab => \my_alu|Mult0|auto_generated|mac_out4~DATAOUT25\,
	datad => VCC,
	cin => \my_alu|Mult0|auto_generated|op_1~49\,
	combout => \my_alu|Mult0|auto_generated|op_1~50_combout\,
	cout => \my_alu|Mult0|auto_generated|op_1~51\);

-- Location: LCCOMB_X23_Y18_N2
\my_alu|Mult1|auto_generated|add9_result[25]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult1|auto_generated|add9_result[25]~50_combout\ = (\my_alu|Mult1|auto_generated|mac_out6~DATAOUT25\ & ((\my_alu|Mult1|auto_generated|mac_out8~DATAOUT7\ & (\my_alu|Mult1|auto_generated|add9_result[24]~49\ & VCC)) # 
-- (!\my_alu|Mult1|auto_generated|mac_out8~DATAOUT7\ & (!\my_alu|Mult1|auto_generated|add9_result[24]~49\)))) # (!\my_alu|Mult1|auto_generated|mac_out6~DATAOUT25\ & ((\my_alu|Mult1|auto_generated|mac_out8~DATAOUT7\ & 
-- (!\my_alu|Mult1|auto_generated|add9_result[24]~49\)) # (!\my_alu|Mult1|auto_generated|mac_out8~DATAOUT7\ & ((\my_alu|Mult1|auto_generated|add9_result[24]~49\) # (GND)))))
-- \my_alu|Mult1|auto_generated|add9_result[25]~51\ = CARRY((\my_alu|Mult1|auto_generated|mac_out6~DATAOUT25\ & (!\my_alu|Mult1|auto_generated|mac_out8~DATAOUT7\ & !\my_alu|Mult1|auto_generated|add9_result[24]~49\)) # 
-- (!\my_alu|Mult1|auto_generated|mac_out6~DATAOUT25\ & ((!\my_alu|Mult1|auto_generated|add9_result[24]~49\) # (!\my_alu|Mult1|auto_generated|mac_out8~DATAOUT7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult1|auto_generated|mac_out6~DATAOUT25\,
	datab => \my_alu|Mult1|auto_generated|mac_out8~DATAOUT7\,
	datad => VCC,
	cin => \my_alu|Mult1|auto_generated|add9_result[24]~49\,
	combout => \my_alu|Mult1|auto_generated|add9_result[25]~50_combout\,
	cout => \my_alu|Mult1|auto_generated|add9_result[25]~51\);

-- Location: LCCOMB_X24_Y19_N20
\my_alu|Mult1|auto_generated|op_1~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult1|auto_generated|op_1~50_combout\ = (\my_alu|Mult1|auto_generated|mac_out4~DATAOUT25\ & ((\my_alu|Mult1|auto_generated|add9_result[25]~50_combout\ & (\my_alu|Mult1|auto_generated|op_1~49\ & VCC)) # 
-- (!\my_alu|Mult1|auto_generated|add9_result[25]~50_combout\ & (!\my_alu|Mult1|auto_generated|op_1~49\)))) # (!\my_alu|Mult1|auto_generated|mac_out4~DATAOUT25\ & ((\my_alu|Mult1|auto_generated|add9_result[25]~50_combout\ & 
-- (!\my_alu|Mult1|auto_generated|op_1~49\)) # (!\my_alu|Mult1|auto_generated|add9_result[25]~50_combout\ & ((\my_alu|Mult1|auto_generated|op_1~49\) # (GND)))))
-- \my_alu|Mult1|auto_generated|op_1~51\ = CARRY((\my_alu|Mult1|auto_generated|mac_out4~DATAOUT25\ & (!\my_alu|Mult1|auto_generated|add9_result[25]~50_combout\ & !\my_alu|Mult1|auto_generated|op_1~49\)) # (!\my_alu|Mult1|auto_generated|mac_out4~DATAOUT25\ & 
-- ((!\my_alu|Mult1|auto_generated|op_1~49\) # (!\my_alu|Mult1|auto_generated|add9_result[25]~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult1|auto_generated|mac_out4~DATAOUT25\,
	datab => \my_alu|Mult1|auto_generated|add9_result[25]~50_combout\,
	datad => VCC,
	cin => \my_alu|Mult1|auto_generated|op_1~49\,
	combout => \my_alu|Mult1|auto_generated|op_1~50_combout\,
	cout => \my_alu|Mult1|auto_generated|op_1~51\);

-- Location: LCCOMB_X25_Y19_N22
\my_alu|Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Selector20~0_combout\ = (!\output_reg_hi|q[0]~0_combout\ & ((\input_reg_op|q\(0) & ((\my_alu|Mult1|auto_generated|op_1~50_combout\))) # (!\input_reg_op|q\(0) & (\my_alu|Mult0|auto_generated|op_1~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \output_reg_hi|q[0]~0_combout\,
	datab => \input_reg_op|q\(0),
	datac => \my_alu|Mult0|auto_generated|op_1~50_combout\,
	datad => \my_alu|Mult1|auto_generated|op_1~50_combout\,
	combout => \my_alu|Selector20~0_combout\);

-- Location: FF_X25_Y19_N23
\output_reg_hi|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \my_alu|Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_reg_hi|q\(11));

-- Location: LCCOMB_X43_Y22_N22
\my_alu|Mult0|auto_generated|add9_result[26]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult0|auto_generated|add9_result[26]~52_combout\ = ((\my_alu|Mult0|auto_generated|mac_out8~DATAOUT8\ $ (\my_alu|Mult0|auto_generated|mac_out6~DATAOUT26\ $ (!\my_alu|Mult0|auto_generated|add9_result[25]~51\)))) # (GND)
-- \my_alu|Mult0|auto_generated|add9_result[26]~53\ = CARRY((\my_alu|Mult0|auto_generated|mac_out8~DATAOUT8\ & ((\my_alu|Mult0|auto_generated|mac_out6~DATAOUT26\) # (!\my_alu|Mult0|auto_generated|add9_result[25]~51\))) # 
-- (!\my_alu|Mult0|auto_generated|mac_out8~DATAOUT8\ & (\my_alu|Mult0|auto_generated|mac_out6~DATAOUT26\ & !\my_alu|Mult0|auto_generated|add9_result[25]~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult0|auto_generated|mac_out8~DATAOUT8\,
	datab => \my_alu|Mult0|auto_generated|mac_out6~DATAOUT26\,
	datad => VCC,
	cin => \my_alu|Mult0|auto_generated|add9_result[25]~51\,
	combout => \my_alu|Mult0|auto_generated|add9_result[26]~52_combout\,
	cout => \my_alu|Mult0|auto_generated|add9_result[26]~53\);

-- Location: LCCOMB_X42_Y22_N22
\my_alu|Mult0|auto_generated|op_1~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult0|auto_generated|op_1~52_combout\ = ((\my_alu|Mult0|auto_generated|mac_out4~DATAOUT26\ $ (\my_alu|Mult0|auto_generated|add9_result[26]~52_combout\ $ (!\my_alu|Mult0|auto_generated|op_1~51\)))) # (GND)
-- \my_alu|Mult0|auto_generated|op_1~53\ = CARRY((\my_alu|Mult0|auto_generated|mac_out4~DATAOUT26\ & ((\my_alu|Mult0|auto_generated|add9_result[26]~52_combout\) # (!\my_alu|Mult0|auto_generated|op_1~51\))) # (!\my_alu|Mult0|auto_generated|mac_out4~DATAOUT26\ 
-- & (\my_alu|Mult0|auto_generated|add9_result[26]~52_combout\ & !\my_alu|Mult0|auto_generated|op_1~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult0|auto_generated|mac_out4~DATAOUT26\,
	datab => \my_alu|Mult0|auto_generated|add9_result[26]~52_combout\,
	datad => VCC,
	cin => \my_alu|Mult0|auto_generated|op_1~51\,
	combout => \my_alu|Mult0|auto_generated|op_1~52_combout\,
	cout => \my_alu|Mult0|auto_generated|op_1~53\);

-- Location: LCCOMB_X24_Y19_N22
\my_alu|Mult1|auto_generated|op_1~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult1|auto_generated|op_1~52_combout\ = ((\my_alu|Mult1|auto_generated|add9_result[26]~52_combout\ $ (\my_alu|Mult1|auto_generated|mac_out4~DATAOUT26\ $ (!\my_alu|Mult1|auto_generated|op_1~51\)))) # (GND)
-- \my_alu|Mult1|auto_generated|op_1~53\ = CARRY((\my_alu|Mult1|auto_generated|add9_result[26]~52_combout\ & ((\my_alu|Mult1|auto_generated|mac_out4~DATAOUT26\) # (!\my_alu|Mult1|auto_generated|op_1~51\))) # 
-- (!\my_alu|Mult1|auto_generated|add9_result[26]~52_combout\ & (\my_alu|Mult1|auto_generated|mac_out4~DATAOUT26\ & !\my_alu|Mult1|auto_generated|op_1~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult1|auto_generated|add9_result[26]~52_combout\,
	datab => \my_alu|Mult1|auto_generated|mac_out4~DATAOUT26\,
	datad => VCC,
	cin => \my_alu|Mult1|auto_generated|op_1~51\,
	combout => \my_alu|Mult1|auto_generated|op_1~52_combout\,
	cout => \my_alu|Mult1|auto_generated|op_1~53\);

-- Location: LCCOMB_X25_Y19_N16
\my_alu|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Selector19~0_combout\ = (!\output_reg_hi|q[0]~0_combout\ & ((\input_reg_op|q\(0) & ((\my_alu|Mult1|auto_generated|op_1~52_combout\))) # (!\input_reg_op|q\(0) & (\my_alu|Mult0|auto_generated|op_1~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \output_reg_hi|q[0]~0_combout\,
	datab => \input_reg_op|q\(0),
	datac => \my_alu|Mult0|auto_generated|op_1~52_combout\,
	datad => \my_alu|Mult1|auto_generated|op_1~52_combout\,
	combout => \my_alu|Selector19~0_combout\);

-- Location: FF_X25_Y19_N17
\output_reg_hi|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \my_alu|Selector19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_reg_hi|q\(12));

-- Location: LCCOMB_X43_Y22_N24
\my_alu|Mult0|auto_generated|add9_result[27]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult0|auto_generated|add9_result[27]~54_combout\ = (\my_alu|Mult0|auto_generated|mac_out8~DATAOUT9\ & ((\my_alu|Mult0|auto_generated|mac_out6~DATAOUT27\ & (\my_alu|Mult0|auto_generated|add9_result[26]~53\ & VCC)) # 
-- (!\my_alu|Mult0|auto_generated|mac_out6~DATAOUT27\ & (!\my_alu|Mult0|auto_generated|add9_result[26]~53\)))) # (!\my_alu|Mult0|auto_generated|mac_out8~DATAOUT9\ & ((\my_alu|Mult0|auto_generated|mac_out6~DATAOUT27\ & 
-- (!\my_alu|Mult0|auto_generated|add9_result[26]~53\)) # (!\my_alu|Mult0|auto_generated|mac_out6~DATAOUT27\ & ((\my_alu|Mult0|auto_generated|add9_result[26]~53\) # (GND)))))
-- \my_alu|Mult0|auto_generated|add9_result[27]~55\ = CARRY((\my_alu|Mult0|auto_generated|mac_out8~DATAOUT9\ & (!\my_alu|Mult0|auto_generated|mac_out6~DATAOUT27\ & !\my_alu|Mult0|auto_generated|add9_result[26]~53\)) # 
-- (!\my_alu|Mult0|auto_generated|mac_out8~DATAOUT9\ & ((!\my_alu|Mult0|auto_generated|add9_result[26]~53\) # (!\my_alu|Mult0|auto_generated|mac_out6~DATAOUT27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult0|auto_generated|mac_out8~DATAOUT9\,
	datab => \my_alu|Mult0|auto_generated|mac_out6~DATAOUT27\,
	datad => VCC,
	cin => \my_alu|Mult0|auto_generated|add9_result[26]~53\,
	combout => \my_alu|Mult0|auto_generated|add9_result[27]~54_combout\,
	cout => \my_alu|Mult0|auto_generated|add9_result[27]~55\);

-- Location: LCCOMB_X42_Y22_N24
\my_alu|Mult0|auto_generated|op_1~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult0|auto_generated|op_1~54_combout\ = (\my_alu|Mult0|auto_generated|mac_out4~DATAOUT27\ & ((\my_alu|Mult0|auto_generated|add9_result[27]~54_combout\ & (\my_alu|Mult0|auto_generated|op_1~53\ & VCC)) # 
-- (!\my_alu|Mult0|auto_generated|add9_result[27]~54_combout\ & (!\my_alu|Mult0|auto_generated|op_1~53\)))) # (!\my_alu|Mult0|auto_generated|mac_out4~DATAOUT27\ & ((\my_alu|Mult0|auto_generated|add9_result[27]~54_combout\ & 
-- (!\my_alu|Mult0|auto_generated|op_1~53\)) # (!\my_alu|Mult0|auto_generated|add9_result[27]~54_combout\ & ((\my_alu|Mult0|auto_generated|op_1~53\) # (GND)))))
-- \my_alu|Mult0|auto_generated|op_1~55\ = CARRY((\my_alu|Mult0|auto_generated|mac_out4~DATAOUT27\ & (!\my_alu|Mult0|auto_generated|add9_result[27]~54_combout\ & !\my_alu|Mult0|auto_generated|op_1~53\)) # (!\my_alu|Mult0|auto_generated|mac_out4~DATAOUT27\ & 
-- ((!\my_alu|Mult0|auto_generated|op_1~53\) # (!\my_alu|Mult0|auto_generated|add9_result[27]~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult0|auto_generated|mac_out4~DATAOUT27\,
	datab => \my_alu|Mult0|auto_generated|add9_result[27]~54_combout\,
	datad => VCC,
	cin => \my_alu|Mult0|auto_generated|op_1~53\,
	combout => \my_alu|Mult0|auto_generated|op_1~54_combout\,
	cout => \my_alu|Mult0|auto_generated|op_1~55\);

-- Location: LCCOMB_X23_Y18_N6
\my_alu|Mult1|auto_generated|add9_result[27]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult1|auto_generated|add9_result[27]~54_combout\ = (\my_alu|Mult1|auto_generated|mac_out6~DATAOUT27\ & ((\my_alu|Mult1|auto_generated|mac_out8~DATAOUT9\ & (\my_alu|Mult1|auto_generated|add9_result[26]~53\ & VCC)) # 
-- (!\my_alu|Mult1|auto_generated|mac_out8~DATAOUT9\ & (!\my_alu|Mult1|auto_generated|add9_result[26]~53\)))) # (!\my_alu|Mult1|auto_generated|mac_out6~DATAOUT27\ & ((\my_alu|Mult1|auto_generated|mac_out8~DATAOUT9\ & 
-- (!\my_alu|Mult1|auto_generated|add9_result[26]~53\)) # (!\my_alu|Mult1|auto_generated|mac_out8~DATAOUT9\ & ((\my_alu|Mult1|auto_generated|add9_result[26]~53\) # (GND)))))
-- \my_alu|Mult1|auto_generated|add9_result[27]~55\ = CARRY((\my_alu|Mult1|auto_generated|mac_out6~DATAOUT27\ & (!\my_alu|Mult1|auto_generated|mac_out8~DATAOUT9\ & !\my_alu|Mult1|auto_generated|add9_result[26]~53\)) # 
-- (!\my_alu|Mult1|auto_generated|mac_out6~DATAOUT27\ & ((!\my_alu|Mult1|auto_generated|add9_result[26]~53\) # (!\my_alu|Mult1|auto_generated|mac_out8~DATAOUT9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult1|auto_generated|mac_out6~DATAOUT27\,
	datab => \my_alu|Mult1|auto_generated|mac_out8~DATAOUT9\,
	datad => VCC,
	cin => \my_alu|Mult1|auto_generated|add9_result[26]~53\,
	combout => \my_alu|Mult1|auto_generated|add9_result[27]~54_combout\,
	cout => \my_alu|Mult1|auto_generated|add9_result[27]~55\);

-- Location: LCCOMB_X24_Y19_N24
\my_alu|Mult1|auto_generated|op_1~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult1|auto_generated|op_1~54_combout\ = (\my_alu|Mult1|auto_generated|mac_out4~DATAOUT27\ & ((\my_alu|Mult1|auto_generated|add9_result[27]~54_combout\ & (\my_alu|Mult1|auto_generated|op_1~53\ & VCC)) # 
-- (!\my_alu|Mult1|auto_generated|add9_result[27]~54_combout\ & (!\my_alu|Mult1|auto_generated|op_1~53\)))) # (!\my_alu|Mult1|auto_generated|mac_out4~DATAOUT27\ & ((\my_alu|Mult1|auto_generated|add9_result[27]~54_combout\ & 
-- (!\my_alu|Mult1|auto_generated|op_1~53\)) # (!\my_alu|Mult1|auto_generated|add9_result[27]~54_combout\ & ((\my_alu|Mult1|auto_generated|op_1~53\) # (GND)))))
-- \my_alu|Mult1|auto_generated|op_1~55\ = CARRY((\my_alu|Mult1|auto_generated|mac_out4~DATAOUT27\ & (!\my_alu|Mult1|auto_generated|add9_result[27]~54_combout\ & !\my_alu|Mult1|auto_generated|op_1~53\)) # (!\my_alu|Mult1|auto_generated|mac_out4~DATAOUT27\ & 
-- ((!\my_alu|Mult1|auto_generated|op_1~53\) # (!\my_alu|Mult1|auto_generated|add9_result[27]~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult1|auto_generated|mac_out4~DATAOUT27\,
	datab => \my_alu|Mult1|auto_generated|add9_result[27]~54_combout\,
	datad => VCC,
	cin => \my_alu|Mult1|auto_generated|op_1~53\,
	combout => \my_alu|Mult1|auto_generated|op_1~54_combout\,
	cout => \my_alu|Mult1|auto_generated|op_1~55\);

-- Location: LCCOMB_X25_Y19_N10
\my_alu|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Selector18~0_combout\ = (!\output_reg_hi|q[0]~0_combout\ & ((\input_reg_op|q\(0) & ((\my_alu|Mult1|auto_generated|op_1~54_combout\))) # (!\input_reg_op|q\(0) & (\my_alu|Mult0|auto_generated|op_1~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \output_reg_hi|q[0]~0_combout\,
	datab => \input_reg_op|q\(0),
	datac => \my_alu|Mult0|auto_generated|op_1~54_combout\,
	datad => \my_alu|Mult1|auto_generated|op_1~54_combout\,
	combout => \my_alu|Selector18~0_combout\);

-- Location: FF_X25_Y19_N11
\output_reg_hi|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \my_alu|Selector18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_reg_hi|q\(13));

-- Location: LCCOMB_X24_Y19_N26
\my_alu|Mult1|auto_generated|op_1~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult1|auto_generated|op_1~56_combout\ = ((\my_alu|Mult1|auto_generated|add9_result[28]~56_combout\ $ (\my_alu|Mult1|auto_generated|mac_out4~DATAOUT28\ $ (!\my_alu|Mult1|auto_generated|op_1~55\)))) # (GND)
-- \my_alu|Mult1|auto_generated|op_1~57\ = CARRY((\my_alu|Mult1|auto_generated|add9_result[28]~56_combout\ & ((\my_alu|Mult1|auto_generated|mac_out4~DATAOUT28\) # (!\my_alu|Mult1|auto_generated|op_1~55\))) # 
-- (!\my_alu|Mult1|auto_generated|add9_result[28]~56_combout\ & (\my_alu|Mult1|auto_generated|mac_out4~DATAOUT28\ & !\my_alu|Mult1|auto_generated|op_1~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult1|auto_generated|add9_result[28]~56_combout\,
	datab => \my_alu|Mult1|auto_generated|mac_out4~DATAOUT28\,
	datad => VCC,
	cin => \my_alu|Mult1|auto_generated|op_1~55\,
	combout => \my_alu|Mult1|auto_generated|op_1~56_combout\,
	cout => \my_alu|Mult1|auto_generated|op_1~57\);

-- Location: LCCOMB_X43_Y22_N26
\my_alu|Mult0|auto_generated|add9_result[28]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult0|auto_generated|add9_result[28]~56_combout\ = ((\my_alu|Mult0|auto_generated|mac_out6~DATAOUT28\ $ (\my_alu|Mult0|auto_generated|mac_out8~DATAOUT10\ $ (!\my_alu|Mult0|auto_generated|add9_result[27]~55\)))) # (GND)
-- \my_alu|Mult0|auto_generated|add9_result[28]~57\ = CARRY((\my_alu|Mult0|auto_generated|mac_out6~DATAOUT28\ & ((\my_alu|Mult0|auto_generated|mac_out8~DATAOUT10\) # (!\my_alu|Mult0|auto_generated|add9_result[27]~55\))) # 
-- (!\my_alu|Mult0|auto_generated|mac_out6~DATAOUT28\ & (\my_alu|Mult0|auto_generated|mac_out8~DATAOUT10\ & !\my_alu|Mult0|auto_generated|add9_result[27]~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult0|auto_generated|mac_out6~DATAOUT28\,
	datab => \my_alu|Mult0|auto_generated|mac_out8~DATAOUT10\,
	datad => VCC,
	cin => \my_alu|Mult0|auto_generated|add9_result[27]~55\,
	combout => \my_alu|Mult0|auto_generated|add9_result[28]~56_combout\,
	cout => \my_alu|Mult0|auto_generated|add9_result[28]~57\);

-- Location: LCCOMB_X42_Y22_N26
\my_alu|Mult0|auto_generated|op_1~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult0|auto_generated|op_1~56_combout\ = ((\my_alu|Mult0|auto_generated|mac_out4~DATAOUT28\ $ (\my_alu|Mult0|auto_generated|add9_result[28]~56_combout\ $ (!\my_alu|Mult0|auto_generated|op_1~55\)))) # (GND)
-- \my_alu|Mult0|auto_generated|op_1~57\ = CARRY((\my_alu|Mult0|auto_generated|mac_out4~DATAOUT28\ & ((\my_alu|Mult0|auto_generated|add9_result[28]~56_combout\) # (!\my_alu|Mult0|auto_generated|op_1~55\))) # (!\my_alu|Mult0|auto_generated|mac_out4~DATAOUT28\ 
-- & (\my_alu|Mult0|auto_generated|add9_result[28]~56_combout\ & !\my_alu|Mult0|auto_generated|op_1~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult0|auto_generated|mac_out4~DATAOUT28\,
	datab => \my_alu|Mult0|auto_generated|add9_result[28]~56_combout\,
	datad => VCC,
	cin => \my_alu|Mult0|auto_generated|op_1~55\,
	combout => \my_alu|Mult0|auto_generated|op_1~56_combout\,
	cout => \my_alu|Mult0|auto_generated|op_1~57\);

-- Location: LCCOMB_X25_Y19_N12
\my_alu|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Selector17~0_combout\ = (!\output_reg_hi|q[0]~0_combout\ & ((\input_reg_op|q\(0) & (\my_alu|Mult1|auto_generated|op_1~56_combout\)) # (!\input_reg_op|q\(0) & ((\my_alu|Mult0|auto_generated|op_1~56_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \output_reg_hi|q[0]~0_combout\,
	datab => \input_reg_op|q\(0),
	datac => \my_alu|Mult1|auto_generated|op_1~56_combout\,
	datad => \my_alu|Mult0|auto_generated|op_1~56_combout\,
	combout => \my_alu|Selector17~0_combout\);

-- Location: FF_X25_Y19_N13
\output_reg_hi|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \my_alu|Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_reg_hi|q\(14));

-- Location: LCCOMB_X24_Y19_N28
\my_alu|Mult1|auto_generated|op_1~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult1|auto_generated|op_1~58_combout\ = (\my_alu|Mult1|auto_generated|mac_out4~DATAOUT29\ & ((\my_alu|Mult1|auto_generated|add9_result[29]~58_combout\ & (\my_alu|Mult1|auto_generated|op_1~57\ & VCC)) # 
-- (!\my_alu|Mult1|auto_generated|add9_result[29]~58_combout\ & (!\my_alu|Mult1|auto_generated|op_1~57\)))) # (!\my_alu|Mult1|auto_generated|mac_out4~DATAOUT29\ & ((\my_alu|Mult1|auto_generated|add9_result[29]~58_combout\ & 
-- (!\my_alu|Mult1|auto_generated|op_1~57\)) # (!\my_alu|Mult1|auto_generated|add9_result[29]~58_combout\ & ((\my_alu|Mult1|auto_generated|op_1~57\) # (GND)))))
-- \my_alu|Mult1|auto_generated|op_1~59\ = CARRY((\my_alu|Mult1|auto_generated|mac_out4~DATAOUT29\ & (!\my_alu|Mult1|auto_generated|add9_result[29]~58_combout\ & !\my_alu|Mult1|auto_generated|op_1~57\)) # (!\my_alu|Mult1|auto_generated|mac_out4~DATAOUT29\ & 
-- ((!\my_alu|Mult1|auto_generated|op_1~57\) # (!\my_alu|Mult1|auto_generated|add9_result[29]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult1|auto_generated|mac_out4~DATAOUT29\,
	datab => \my_alu|Mult1|auto_generated|add9_result[29]~58_combout\,
	datad => VCC,
	cin => \my_alu|Mult1|auto_generated|op_1~57\,
	combout => \my_alu|Mult1|auto_generated|op_1~58_combout\,
	cout => \my_alu|Mult1|auto_generated|op_1~59\);

-- Location: LCCOMB_X43_Y22_N28
\my_alu|Mult0|auto_generated|add9_result[29]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult0|auto_generated|add9_result[29]~58_combout\ = (\my_alu|Mult0|auto_generated|mac_out8~DATAOUT11\ & ((\my_alu|Mult0|auto_generated|mac_out6~DATAOUT29\ & (\my_alu|Mult0|auto_generated|add9_result[28]~57\ & VCC)) # 
-- (!\my_alu|Mult0|auto_generated|mac_out6~DATAOUT29\ & (!\my_alu|Mult0|auto_generated|add9_result[28]~57\)))) # (!\my_alu|Mult0|auto_generated|mac_out8~DATAOUT11\ & ((\my_alu|Mult0|auto_generated|mac_out6~DATAOUT29\ & 
-- (!\my_alu|Mult0|auto_generated|add9_result[28]~57\)) # (!\my_alu|Mult0|auto_generated|mac_out6~DATAOUT29\ & ((\my_alu|Mult0|auto_generated|add9_result[28]~57\) # (GND)))))
-- \my_alu|Mult0|auto_generated|add9_result[29]~59\ = CARRY((\my_alu|Mult0|auto_generated|mac_out8~DATAOUT11\ & (!\my_alu|Mult0|auto_generated|mac_out6~DATAOUT29\ & !\my_alu|Mult0|auto_generated|add9_result[28]~57\)) # 
-- (!\my_alu|Mult0|auto_generated|mac_out8~DATAOUT11\ & ((!\my_alu|Mult0|auto_generated|add9_result[28]~57\) # (!\my_alu|Mult0|auto_generated|mac_out6~DATAOUT29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult0|auto_generated|mac_out8~DATAOUT11\,
	datab => \my_alu|Mult0|auto_generated|mac_out6~DATAOUT29\,
	datad => VCC,
	cin => \my_alu|Mult0|auto_generated|add9_result[28]~57\,
	combout => \my_alu|Mult0|auto_generated|add9_result[29]~58_combout\,
	cout => \my_alu|Mult0|auto_generated|add9_result[29]~59\);

-- Location: LCCOMB_X42_Y22_N28
\my_alu|Mult0|auto_generated|op_1~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult0|auto_generated|op_1~58_combout\ = (\my_alu|Mult0|auto_generated|mac_out4~DATAOUT29\ & ((\my_alu|Mult0|auto_generated|add9_result[29]~58_combout\ & (\my_alu|Mult0|auto_generated|op_1~57\ & VCC)) # 
-- (!\my_alu|Mult0|auto_generated|add9_result[29]~58_combout\ & (!\my_alu|Mult0|auto_generated|op_1~57\)))) # (!\my_alu|Mult0|auto_generated|mac_out4~DATAOUT29\ & ((\my_alu|Mult0|auto_generated|add9_result[29]~58_combout\ & 
-- (!\my_alu|Mult0|auto_generated|op_1~57\)) # (!\my_alu|Mult0|auto_generated|add9_result[29]~58_combout\ & ((\my_alu|Mult0|auto_generated|op_1~57\) # (GND)))))
-- \my_alu|Mult0|auto_generated|op_1~59\ = CARRY((\my_alu|Mult0|auto_generated|mac_out4~DATAOUT29\ & (!\my_alu|Mult0|auto_generated|add9_result[29]~58_combout\ & !\my_alu|Mult0|auto_generated|op_1~57\)) # (!\my_alu|Mult0|auto_generated|mac_out4~DATAOUT29\ & 
-- ((!\my_alu|Mult0|auto_generated|op_1~57\) # (!\my_alu|Mult0|auto_generated|add9_result[29]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult0|auto_generated|mac_out4~DATAOUT29\,
	datab => \my_alu|Mult0|auto_generated|add9_result[29]~58_combout\,
	datad => VCC,
	cin => \my_alu|Mult0|auto_generated|op_1~57\,
	combout => \my_alu|Mult0|auto_generated|op_1~58_combout\,
	cout => \my_alu|Mult0|auto_generated|op_1~59\);

-- Location: LCCOMB_X25_Y19_N30
\my_alu|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Selector16~0_combout\ = (!\output_reg_hi|q[0]~0_combout\ & ((\input_reg_op|q\(0) & (\my_alu|Mult1|auto_generated|op_1~58_combout\)) # (!\input_reg_op|q\(0) & ((\my_alu|Mult0|auto_generated|op_1~58_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \output_reg_hi|q[0]~0_combout\,
	datab => \input_reg_op|q\(0),
	datac => \my_alu|Mult1|auto_generated|op_1~58_combout\,
	datad => \my_alu|Mult0|auto_generated|op_1~58_combout\,
	combout => \my_alu|Selector16~0_combout\);

-- Location: FF_X25_Y19_N31
\output_reg_hi|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \my_alu|Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_reg_hi|q\(15));

-- Location: LCCOMB_X42_Y22_N30
\my_alu|Mult0|auto_generated|op_1~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult0|auto_generated|op_1~60_combout\ = ((\my_alu|Mult0|auto_generated|add9_result[30]~60_combout\ $ (\my_alu|Mult0|auto_generated|mac_out4~DATAOUT30\ $ (!\my_alu|Mult0|auto_generated|op_1~59\)))) # (GND)
-- \my_alu|Mult0|auto_generated|op_1~61\ = CARRY((\my_alu|Mult0|auto_generated|add9_result[30]~60_combout\ & ((\my_alu|Mult0|auto_generated|mac_out4~DATAOUT30\) # (!\my_alu|Mult0|auto_generated|op_1~59\))) # 
-- (!\my_alu|Mult0|auto_generated|add9_result[30]~60_combout\ & (\my_alu|Mult0|auto_generated|mac_out4~DATAOUT30\ & !\my_alu|Mult0|auto_generated|op_1~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult0|auto_generated|add9_result[30]~60_combout\,
	datab => \my_alu|Mult0|auto_generated|mac_out4~DATAOUT30\,
	datad => VCC,
	cin => \my_alu|Mult0|auto_generated|op_1~59\,
	combout => \my_alu|Mult0|auto_generated|op_1~60_combout\,
	cout => \my_alu|Mult0|auto_generated|op_1~61\);

-- Location: LCCOMB_X24_Y19_N30
\my_alu|Mult1|auto_generated|op_1~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult1|auto_generated|op_1~60_combout\ = ((\my_alu|Mult1|auto_generated|add9_result[30]~60_combout\ $ (\my_alu|Mult1|auto_generated|mac_out4~DATAOUT30\ $ (!\my_alu|Mult1|auto_generated|op_1~59\)))) # (GND)
-- \my_alu|Mult1|auto_generated|op_1~61\ = CARRY((\my_alu|Mult1|auto_generated|add9_result[30]~60_combout\ & ((\my_alu|Mult1|auto_generated|mac_out4~DATAOUT30\) # (!\my_alu|Mult1|auto_generated|op_1~59\))) # 
-- (!\my_alu|Mult1|auto_generated|add9_result[30]~60_combout\ & (\my_alu|Mult1|auto_generated|mac_out4~DATAOUT30\ & !\my_alu|Mult1|auto_generated|op_1~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult1|auto_generated|add9_result[30]~60_combout\,
	datab => \my_alu|Mult1|auto_generated|mac_out4~DATAOUT30\,
	datad => VCC,
	cin => \my_alu|Mult1|auto_generated|op_1~59\,
	combout => \my_alu|Mult1|auto_generated|op_1~60_combout\,
	cout => \my_alu|Mult1|auto_generated|op_1~61\);

-- Location: LCCOMB_X25_Y19_N8
\my_alu|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Selector15~0_combout\ = (!\output_reg_hi|q[0]~0_combout\ & ((\input_reg_op|q\(0) & ((\my_alu|Mult1|auto_generated|op_1~60_combout\))) # (!\input_reg_op|q\(0) & (\my_alu|Mult0|auto_generated|op_1~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \output_reg_hi|q[0]~0_combout\,
	datab => \input_reg_op|q\(0),
	datac => \my_alu|Mult0|auto_generated|op_1~60_combout\,
	datad => \my_alu|Mult1|auto_generated|op_1~60_combout\,
	combout => \my_alu|Selector15~0_combout\);

-- Location: FF_X25_Y19_N9
\output_reg_hi|q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \my_alu|Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_reg_hi|q\(16));

-- Location: LCCOMB_X24_Y18_N0
\my_alu|Mult1|auto_generated|op_1~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult1|auto_generated|op_1~62_combout\ = (\my_alu|Mult1|auto_generated|add9_result[31]~62_combout\ & ((\my_alu|Mult1|auto_generated|mac_out4~DATAOUT31\ & (\my_alu|Mult1|auto_generated|op_1~61\ & VCC)) # 
-- (!\my_alu|Mult1|auto_generated|mac_out4~DATAOUT31\ & (!\my_alu|Mult1|auto_generated|op_1~61\)))) # (!\my_alu|Mult1|auto_generated|add9_result[31]~62_combout\ & ((\my_alu|Mult1|auto_generated|mac_out4~DATAOUT31\ & (!\my_alu|Mult1|auto_generated|op_1~61\)) 
-- # (!\my_alu|Mult1|auto_generated|mac_out4~DATAOUT31\ & ((\my_alu|Mult1|auto_generated|op_1~61\) # (GND)))))
-- \my_alu|Mult1|auto_generated|op_1~63\ = CARRY((\my_alu|Mult1|auto_generated|add9_result[31]~62_combout\ & (!\my_alu|Mult1|auto_generated|mac_out4~DATAOUT31\ & !\my_alu|Mult1|auto_generated|op_1~61\)) # 
-- (!\my_alu|Mult1|auto_generated|add9_result[31]~62_combout\ & ((!\my_alu|Mult1|auto_generated|op_1~61\) # (!\my_alu|Mult1|auto_generated|mac_out4~DATAOUT31\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult1|auto_generated|add9_result[31]~62_combout\,
	datab => \my_alu|Mult1|auto_generated|mac_out4~DATAOUT31\,
	datad => VCC,
	cin => \my_alu|Mult1|auto_generated|op_1~61\,
	combout => \my_alu|Mult1|auto_generated|op_1~62_combout\,
	cout => \my_alu|Mult1|auto_generated|op_1~63\);

-- Location: LCCOMB_X43_Y21_N0
\my_alu|Mult0|auto_generated|add9_result[31]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult0|auto_generated|add9_result[31]~62_combout\ = (\my_alu|Mult0|auto_generated|mac_out8~DATAOUT13\ & ((\my_alu|Mult0|auto_generated|mac_out6~DATAOUT31\ & (!\my_alu|Mult0|auto_generated|add9_result[30]~61\)) # 
-- (!\my_alu|Mult0|auto_generated|mac_out6~DATAOUT31\ & (\my_alu|Mult0|auto_generated|add9_result[30]~61\ & VCC)))) # (!\my_alu|Mult0|auto_generated|mac_out8~DATAOUT13\ & ((\my_alu|Mult0|auto_generated|mac_out6~DATAOUT31\ & 
-- ((\my_alu|Mult0|auto_generated|add9_result[30]~61\) # (GND))) # (!\my_alu|Mult0|auto_generated|mac_out6~DATAOUT31\ & (!\my_alu|Mult0|auto_generated|add9_result[30]~61\))))
-- \my_alu|Mult0|auto_generated|add9_result[31]~63\ = CARRY((\my_alu|Mult0|auto_generated|mac_out8~DATAOUT13\ & (\my_alu|Mult0|auto_generated|mac_out6~DATAOUT31\ & !\my_alu|Mult0|auto_generated|add9_result[30]~61\)) # 
-- (!\my_alu|Mult0|auto_generated|mac_out8~DATAOUT13\ & ((\my_alu|Mult0|auto_generated|mac_out6~DATAOUT31\) # (!\my_alu|Mult0|auto_generated|add9_result[30]~61\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult0|auto_generated|mac_out8~DATAOUT13\,
	datab => \my_alu|Mult0|auto_generated|mac_out6~DATAOUT31\,
	datad => VCC,
	cin => \my_alu|Mult0|auto_generated|add9_result[30]~61\,
	combout => \my_alu|Mult0|auto_generated|add9_result[31]~62_combout\,
	cout => \my_alu|Mult0|auto_generated|add9_result[31]~63\);

-- Location: LCCOMB_X42_Y21_N0
\my_alu|Mult0|auto_generated|op_1~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult0|auto_generated|op_1~62_combout\ = (\my_alu|Mult0|auto_generated|mac_out4~DATAOUT31\ & ((\my_alu|Mult0|auto_generated|add9_result[31]~62_combout\ & (!\my_alu|Mult0|auto_generated|op_1~61\)) # 
-- (!\my_alu|Mult0|auto_generated|add9_result[31]~62_combout\ & ((\my_alu|Mult0|auto_generated|op_1~61\) # (GND))))) # (!\my_alu|Mult0|auto_generated|mac_out4~DATAOUT31\ & ((\my_alu|Mult0|auto_generated|add9_result[31]~62_combout\ & 
-- (\my_alu|Mult0|auto_generated|op_1~61\ & VCC)) # (!\my_alu|Mult0|auto_generated|add9_result[31]~62_combout\ & (!\my_alu|Mult0|auto_generated|op_1~61\))))
-- \my_alu|Mult0|auto_generated|op_1~63\ = CARRY((\my_alu|Mult0|auto_generated|mac_out4~DATAOUT31\ & ((!\my_alu|Mult0|auto_generated|op_1~61\) # (!\my_alu|Mult0|auto_generated|add9_result[31]~62_combout\))) # 
-- (!\my_alu|Mult0|auto_generated|mac_out4~DATAOUT31\ & (!\my_alu|Mult0|auto_generated|add9_result[31]~62_combout\ & !\my_alu|Mult0|auto_generated|op_1~61\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult0|auto_generated|mac_out4~DATAOUT31\,
	datab => \my_alu|Mult0|auto_generated|add9_result[31]~62_combout\,
	datad => VCC,
	cin => \my_alu|Mult0|auto_generated|op_1~61\,
	combout => \my_alu|Mult0|auto_generated|op_1~62_combout\,
	cout => \my_alu|Mult0|auto_generated|op_1~63\);

-- Location: LCCOMB_X25_Y18_N8
\my_alu|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Selector14~0_combout\ = (!\output_reg_hi|q[0]~0_combout\ & ((\input_reg_op|q\(0) & (\my_alu|Mult1|auto_generated|op_1~62_combout\)) # (!\input_reg_op|q\(0) & ((\my_alu|Mult0|auto_generated|op_1~62_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(0),
	datab => \output_reg_hi|q[0]~0_combout\,
	datac => \my_alu|Mult1|auto_generated|op_1~62_combout\,
	datad => \my_alu|Mult0|auto_generated|op_1~62_combout\,
	combout => \my_alu|Selector14~0_combout\);

-- Location: FF_X25_Y18_N9
\output_reg_hi|q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \my_alu|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_reg_hi|q\(17));

-- Location: LCCOMB_X42_Y21_N2
\my_alu|Mult0|auto_generated|op_1~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult0|auto_generated|op_1~64_combout\ = (\my_alu|Mult0|auto_generated|add9_result[32]~64_combout\ & ((GND) # (!\my_alu|Mult0|auto_generated|op_1~63\))) # (!\my_alu|Mult0|auto_generated|add9_result[32]~64_combout\ & 
-- (\my_alu|Mult0|auto_generated|op_1~63\ $ (GND)))
-- \my_alu|Mult0|auto_generated|op_1~65\ = CARRY((\my_alu|Mult0|auto_generated|add9_result[32]~64_combout\) # (!\my_alu|Mult0|auto_generated|op_1~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult0|auto_generated|add9_result[32]~64_combout\,
	datad => VCC,
	cin => \my_alu|Mult0|auto_generated|op_1~63\,
	combout => \my_alu|Mult0|auto_generated|op_1~64_combout\,
	cout => \my_alu|Mult0|auto_generated|op_1~65\);

-- Location: LCCOMB_X24_Y18_N2
\my_alu|Mult1|auto_generated|op_1~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult1|auto_generated|op_1~64_combout\ = ((\my_alu|Mult1|auto_generated|add9_result[32]~64_combout\ $ (\my_alu|Mult1|auto_generated|mac_out8~DATAOUT14\ $ (!\my_alu|Mult1|auto_generated|op_1~63\)))) # (GND)
-- \my_alu|Mult1|auto_generated|op_1~65\ = CARRY((\my_alu|Mult1|auto_generated|add9_result[32]~64_combout\ & ((\my_alu|Mult1|auto_generated|mac_out8~DATAOUT14\) # (!\my_alu|Mult1|auto_generated|op_1~63\))) # 
-- (!\my_alu|Mult1|auto_generated|add9_result[32]~64_combout\ & (\my_alu|Mult1|auto_generated|mac_out8~DATAOUT14\ & !\my_alu|Mult1|auto_generated|op_1~63\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult1|auto_generated|add9_result[32]~64_combout\,
	datab => \my_alu|Mult1|auto_generated|mac_out8~DATAOUT14\,
	datad => VCC,
	cin => \my_alu|Mult1|auto_generated|op_1~63\,
	combout => \my_alu|Mult1|auto_generated|op_1~64_combout\,
	cout => \my_alu|Mult1|auto_generated|op_1~65\);

-- Location: LCCOMB_X25_Y18_N22
\my_alu|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Selector13~0_combout\ = (!\output_reg_hi|q[0]~0_combout\ & ((\input_reg_op|q\(0) & ((\my_alu|Mult1|auto_generated|op_1~64_combout\))) # (!\input_reg_op|q\(0) & (\my_alu|Mult0|auto_generated|op_1~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(0),
	datab => \output_reg_hi|q[0]~0_combout\,
	datac => \my_alu|Mult0|auto_generated|op_1~64_combout\,
	datad => \my_alu|Mult1|auto_generated|op_1~64_combout\,
	combout => \my_alu|Selector13~0_combout\);

-- Location: FF_X25_Y18_N23
\output_reg_hi|q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \my_alu|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_reg_hi|q\(18));

-- Location: LCCOMB_X24_Y18_N4
\my_alu|Mult1|auto_generated|op_1~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult1|auto_generated|op_1~66_combout\ = (\my_alu|Mult1|auto_generated|mac_out8~DATAOUT15\ & (!\my_alu|Mult1|auto_generated|op_1~65\)) # (!\my_alu|Mult1|auto_generated|mac_out8~DATAOUT15\ & ((\my_alu|Mult1|auto_generated|op_1~65\) # (GND)))
-- \my_alu|Mult1|auto_generated|op_1~67\ = CARRY((!\my_alu|Mult1|auto_generated|op_1~65\) # (!\my_alu|Mult1|auto_generated|mac_out8~DATAOUT15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_alu|Mult1|auto_generated|mac_out8~DATAOUT15\,
	datad => VCC,
	cin => \my_alu|Mult1|auto_generated|op_1~65\,
	combout => \my_alu|Mult1|auto_generated|op_1~66_combout\,
	cout => \my_alu|Mult1|auto_generated|op_1~67\);

-- Location: LCCOMB_X42_Y21_N4
\my_alu|Mult0|auto_generated|op_1~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult0|auto_generated|op_1~66_combout\ = (\my_alu|Mult0|auto_generated|add9_result[33]~66_combout\ & (\my_alu|Mult0|auto_generated|op_1~65\ & VCC)) # (!\my_alu|Mult0|auto_generated|add9_result[33]~66_combout\ & 
-- (!\my_alu|Mult0|auto_generated|op_1~65\))
-- \my_alu|Mult0|auto_generated|op_1~67\ = CARRY((!\my_alu|Mult0|auto_generated|add9_result[33]~66_combout\ & !\my_alu|Mult0|auto_generated|op_1~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult0|auto_generated|add9_result[33]~66_combout\,
	datad => VCC,
	cin => \my_alu|Mult0|auto_generated|op_1~65\,
	combout => \my_alu|Mult0|auto_generated|op_1~66_combout\,
	cout => \my_alu|Mult0|auto_generated|op_1~67\);

-- Location: LCCOMB_X25_Y18_N12
\my_alu|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Selector12~0_combout\ = (!\output_reg_hi|q[0]~0_combout\ & ((\input_reg_op|q\(0) & (\my_alu|Mult1|auto_generated|op_1~66_combout\)) # (!\input_reg_op|q\(0) & ((\my_alu|Mult0|auto_generated|op_1~66_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(0),
	datab => \output_reg_hi|q[0]~0_combout\,
	datac => \my_alu|Mult1|auto_generated|op_1~66_combout\,
	datad => \my_alu|Mult0|auto_generated|op_1~66_combout\,
	combout => \my_alu|Selector12~0_combout\);

-- Location: FF_X25_Y18_N13
\output_reg_hi|q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \my_alu|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_reg_hi|q\(19));

-- Location: LCCOMB_X42_Y21_N6
\my_alu|Mult0|auto_generated|op_1~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult0|auto_generated|op_1~68_combout\ = (\my_alu|Mult0|auto_generated|add9_result[34]~68_combout\ & ((GND) # (!\my_alu|Mult0|auto_generated|op_1~67\))) # (!\my_alu|Mult0|auto_generated|add9_result[34]~68_combout\ & 
-- (\my_alu|Mult0|auto_generated|op_1~67\ $ (GND)))
-- \my_alu|Mult0|auto_generated|op_1~69\ = CARRY((\my_alu|Mult0|auto_generated|add9_result[34]~68_combout\) # (!\my_alu|Mult0|auto_generated|op_1~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult0|auto_generated|add9_result[34]~68_combout\,
	datad => VCC,
	cin => \my_alu|Mult0|auto_generated|op_1~67\,
	combout => \my_alu|Mult0|auto_generated|op_1~68_combout\,
	cout => \my_alu|Mult0|auto_generated|op_1~69\);

-- Location: LCCOMB_X25_Y18_N30
\my_alu|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Selector11~0_combout\ = (!\output_reg_hi|q[0]~0_combout\ & ((\input_reg_op|q\(0) & (\my_alu|Mult1|auto_generated|op_1~68_combout\)) # (!\input_reg_op|q\(0) & ((\my_alu|Mult0|auto_generated|op_1~68_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult1|auto_generated|op_1~68_combout\,
	datab => \output_reg_hi|q[0]~0_combout\,
	datac => \input_reg_op|q\(0),
	datad => \my_alu|Mult0|auto_generated|op_1~68_combout\,
	combout => \my_alu|Selector11~0_combout\);

-- Location: FF_X25_Y18_N31
\output_reg_hi|q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \my_alu|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_reg_hi|q\(20));

-- Location: LCCOMB_X43_Y21_N8
\my_alu|Mult0|auto_generated|add9_result[35]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult0|auto_generated|add9_result[35]~70_combout\ = (\my_alu|Mult0|auto_generated|mac_out8~DATAOUT17\ & (!\my_alu|Mult0|auto_generated|add9_result[34]~69\)) # (!\my_alu|Mult0|auto_generated|mac_out8~DATAOUT17\ & 
-- ((\my_alu|Mult0|auto_generated|add9_result[34]~69\) # (GND)))
-- \my_alu|Mult0|auto_generated|add9_result[35]~71\ = CARRY((!\my_alu|Mult0|auto_generated|add9_result[34]~69\) # (!\my_alu|Mult0|auto_generated|mac_out8~DATAOUT17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult0|auto_generated|mac_out8~DATAOUT17\,
	datad => VCC,
	cin => \my_alu|Mult0|auto_generated|add9_result[34]~69\,
	combout => \my_alu|Mult0|auto_generated|add9_result[35]~70_combout\,
	cout => \my_alu|Mult0|auto_generated|add9_result[35]~71\);

-- Location: LCCOMB_X42_Y21_N8
\my_alu|Mult0|auto_generated|op_1~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult0|auto_generated|op_1~70_combout\ = (\my_alu|Mult0|auto_generated|add9_result[35]~70_combout\ & (\my_alu|Mult0|auto_generated|op_1~69\ & VCC)) # (!\my_alu|Mult0|auto_generated|add9_result[35]~70_combout\ & 
-- (!\my_alu|Mult0|auto_generated|op_1~69\))
-- \my_alu|Mult0|auto_generated|op_1~71\ = CARRY((!\my_alu|Mult0|auto_generated|add9_result[35]~70_combout\ & !\my_alu|Mult0|auto_generated|op_1~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_alu|Mult0|auto_generated|add9_result[35]~70_combout\,
	datad => VCC,
	cin => \my_alu|Mult0|auto_generated|op_1~69\,
	combout => \my_alu|Mult0|auto_generated|op_1~70_combout\,
	cout => \my_alu|Mult0|auto_generated|op_1~71\);

-- Location: LCCOMB_X24_Y18_N8
\my_alu|Mult1|auto_generated|op_1~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult1|auto_generated|op_1~70_combout\ = (\my_alu|Mult1|auto_generated|mac_out8~DATAOUT17\ & (!\my_alu|Mult1|auto_generated|op_1~69\)) # (!\my_alu|Mult1|auto_generated|mac_out8~DATAOUT17\ & ((\my_alu|Mult1|auto_generated|op_1~69\) # (GND)))
-- \my_alu|Mult1|auto_generated|op_1~71\ = CARRY((!\my_alu|Mult1|auto_generated|op_1~69\) # (!\my_alu|Mult1|auto_generated|mac_out8~DATAOUT17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_alu|Mult1|auto_generated|mac_out8~DATAOUT17\,
	datad => VCC,
	cin => \my_alu|Mult1|auto_generated|op_1~69\,
	combout => \my_alu|Mult1|auto_generated|op_1~70_combout\,
	cout => \my_alu|Mult1|auto_generated|op_1~71\);

-- Location: LCCOMB_X25_Y18_N24
\my_alu|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Selector10~0_combout\ = (!\output_reg_hi|q[0]~0_combout\ & ((\input_reg_op|q\(0) & ((\my_alu|Mult1|auto_generated|op_1~70_combout\))) # (!\input_reg_op|q\(0) & (\my_alu|Mult0|auto_generated|op_1~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(0),
	datab => \output_reg_hi|q[0]~0_combout\,
	datac => \my_alu|Mult0|auto_generated|op_1~70_combout\,
	datad => \my_alu|Mult1|auto_generated|op_1~70_combout\,
	combout => \my_alu|Selector10~0_combout\);

-- Location: FF_X25_Y18_N25
\output_reg_hi|q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \my_alu|Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_reg_hi|q\(21));

-- Location: LCCOMB_X24_Y18_N10
\my_alu|Mult1|auto_generated|op_1~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult1|auto_generated|op_1~72_combout\ = (\my_alu|Mult1|auto_generated|mac_out8~DATAOUT18\ & (\my_alu|Mult1|auto_generated|op_1~71\ $ (GND))) # (!\my_alu|Mult1|auto_generated|mac_out8~DATAOUT18\ & (!\my_alu|Mult1|auto_generated|op_1~71\ & VCC))
-- \my_alu|Mult1|auto_generated|op_1~73\ = CARRY((\my_alu|Mult1|auto_generated|mac_out8~DATAOUT18\ & !\my_alu|Mult1|auto_generated|op_1~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_alu|Mult1|auto_generated|mac_out8~DATAOUT18\,
	datad => VCC,
	cin => \my_alu|Mult1|auto_generated|op_1~71\,
	combout => \my_alu|Mult1|auto_generated|op_1~72_combout\,
	cout => \my_alu|Mult1|auto_generated|op_1~73\);

-- Location: LCCOMB_X43_Y21_N10
\my_alu|Mult0|auto_generated|add9_result[36]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult0|auto_generated|add9_result[36]~72_combout\ = (\my_alu|Mult0|auto_generated|mac_out8~DATAOUT18\ & (\my_alu|Mult0|auto_generated|add9_result[35]~71\ $ (GND))) # (!\my_alu|Mult0|auto_generated|mac_out8~DATAOUT18\ & 
-- (!\my_alu|Mult0|auto_generated|add9_result[35]~71\ & VCC))
-- \my_alu|Mult0|auto_generated|add9_result[36]~73\ = CARRY((\my_alu|Mult0|auto_generated|mac_out8~DATAOUT18\ & !\my_alu|Mult0|auto_generated|add9_result[35]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_alu|Mult0|auto_generated|mac_out8~DATAOUT18\,
	datad => VCC,
	cin => \my_alu|Mult0|auto_generated|add9_result[35]~71\,
	combout => \my_alu|Mult0|auto_generated|add9_result[36]~72_combout\,
	cout => \my_alu|Mult0|auto_generated|add9_result[36]~73\);

-- Location: LCCOMB_X42_Y21_N10
\my_alu|Mult0|auto_generated|op_1~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult0|auto_generated|op_1~72_combout\ = (\my_alu|Mult0|auto_generated|add9_result[36]~72_combout\ & ((GND) # (!\my_alu|Mult0|auto_generated|op_1~71\))) # (!\my_alu|Mult0|auto_generated|add9_result[36]~72_combout\ & 
-- (\my_alu|Mult0|auto_generated|op_1~71\ $ (GND)))
-- \my_alu|Mult0|auto_generated|op_1~73\ = CARRY((\my_alu|Mult0|auto_generated|add9_result[36]~72_combout\) # (!\my_alu|Mult0|auto_generated|op_1~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_alu|Mult0|auto_generated|add9_result[36]~72_combout\,
	datad => VCC,
	cin => \my_alu|Mult0|auto_generated|op_1~71\,
	combout => \my_alu|Mult0|auto_generated|op_1~72_combout\,
	cout => \my_alu|Mult0|auto_generated|op_1~73\);

-- Location: LCCOMB_X25_Y18_N14
\my_alu|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Selector9~0_combout\ = (!\output_reg_hi|q[0]~0_combout\ & ((\input_reg_op|q\(0) & (\my_alu|Mult1|auto_generated|op_1~72_combout\)) # (!\input_reg_op|q\(0) & ((\my_alu|Mult0|auto_generated|op_1~72_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(0),
	datab => \output_reg_hi|q[0]~0_combout\,
	datac => \my_alu|Mult1|auto_generated|op_1~72_combout\,
	datad => \my_alu|Mult0|auto_generated|op_1~72_combout\,
	combout => \my_alu|Selector9~0_combout\);

-- Location: FF_X25_Y18_N15
\output_reg_hi|q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \my_alu|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_reg_hi|q\(22));

-- Location: LCCOMB_X43_Y21_N12
\my_alu|Mult0|auto_generated|add9_result[37]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult0|auto_generated|add9_result[37]~74_combout\ = (\my_alu|Mult0|auto_generated|mac_out8~DATAOUT19\ & (!\my_alu|Mult0|auto_generated|add9_result[36]~73\)) # (!\my_alu|Mult0|auto_generated|mac_out8~DATAOUT19\ & 
-- ((\my_alu|Mult0|auto_generated|add9_result[36]~73\) # (GND)))
-- \my_alu|Mult0|auto_generated|add9_result[37]~75\ = CARRY((!\my_alu|Mult0|auto_generated|add9_result[36]~73\) # (!\my_alu|Mult0|auto_generated|mac_out8~DATAOUT19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_alu|Mult0|auto_generated|mac_out8~DATAOUT19\,
	datad => VCC,
	cin => \my_alu|Mult0|auto_generated|add9_result[36]~73\,
	combout => \my_alu|Mult0|auto_generated|add9_result[37]~74_combout\,
	cout => \my_alu|Mult0|auto_generated|add9_result[37]~75\);

-- Location: LCCOMB_X42_Y21_N12
\my_alu|Mult0|auto_generated|op_1~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult0|auto_generated|op_1~74_combout\ = (\my_alu|Mult0|auto_generated|add9_result[37]~74_combout\ & (\my_alu|Mult0|auto_generated|op_1~73\ & VCC)) # (!\my_alu|Mult0|auto_generated|add9_result[37]~74_combout\ & 
-- (!\my_alu|Mult0|auto_generated|op_1~73\))
-- \my_alu|Mult0|auto_generated|op_1~75\ = CARRY((!\my_alu|Mult0|auto_generated|add9_result[37]~74_combout\ & !\my_alu|Mult0|auto_generated|op_1~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_alu|Mult0|auto_generated|add9_result[37]~74_combout\,
	datad => VCC,
	cin => \my_alu|Mult0|auto_generated|op_1~73\,
	combout => \my_alu|Mult0|auto_generated|op_1~74_combout\,
	cout => \my_alu|Mult0|auto_generated|op_1~75\);

-- Location: LCCOMB_X24_Y18_N12
\my_alu|Mult1|auto_generated|op_1~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult1|auto_generated|op_1~74_combout\ = (\my_alu|Mult1|auto_generated|mac_out8~DATAOUT19\ & (!\my_alu|Mult1|auto_generated|op_1~73\)) # (!\my_alu|Mult1|auto_generated|mac_out8~DATAOUT19\ & ((\my_alu|Mult1|auto_generated|op_1~73\) # (GND)))
-- \my_alu|Mult1|auto_generated|op_1~75\ = CARRY((!\my_alu|Mult1|auto_generated|op_1~73\) # (!\my_alu|Mult1|auto_generated|mac_out8~DATAOUT19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_alu|Mult1|auto_generated|mac_out8~DATAOUT19\,
	datad => VCC,
	cin => \my_alu|Mult1|auto_generated|op_1~73\,
	combout => \my_alu|Mult1|auto_generated|op_1~74_combout\,
	cout => \my_alu|Mult1|auto_generated|op_1~75\);

-- Location: LCCOMB_X25_Y18_N28
\my_alu|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Selector8~0_combout\ = (!\output_reg_hi|q[0]~0_combout\ & ((\input_reg_op|q\(0) & ((\my_alu|Mult1|auto_generated|op_1~74_combout\))) # (!\input_reg_op|q\(0) & (\my_alu|Mult0|auto_generated|op_1~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(0),
	datab => \output_reg_hi|q[0]~0_combout\,
	datac => \my_alu|Mult0|auto_generated|op_1~74_combout\,
	datad => \my_alu|Mult1|auto_generated|op_1~74_combout\,
	combout => \my_alu|Selector8~0_combout\);

-- Location: FF_X25_Y18_N29
\output_reg_hi|q[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \my_alu|Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_reg_hi|q\(23));

-- Location: LCCOMB_X43_Y21_N14
\my_alu|Mult0|auto_generated|add9_result[38]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult0|auto_generated|add9_result[38]~76_combout\ = (\my_alu|Mult0|auto_generated|mac_out8~DATAOUT20\ & (\my_alu|Mult0|auto_generated|add9_result[37]~75\ $ (GND))) # (!\my_alu|Mult0|auto_generated|mac_out8~DATAOUT20\ & 
-- (!\my_alu|Mult0|auto_generated|add9_result[37]~75\ & VCC))
-- \my_alu|Mult0|auto_generated|add9_result[38]~77\ = CARRY((\my_alu|Mult0|auto_generated|mac_out8~DATAOUT20\ & !\my_alu|Mult0|auto_generated|add9_result[37]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_alu|Mult0|auto_generated|mac_out8~DATAOUT20\,
	datad => VCC,
	cin => \my_alu|Mult0|auto_generated|add9_result[37]~75\,
	combout => \my_alu|Mult0|auto_generated|add9_result[38]~76_combout\,
	cout => \my_alu|Mult0|auto_generated|add9_result[38]~77\);

-- Location: LCCOMB_X42_Y21_N14
\my_alu|Mult0|auto_generated|op_1~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult0|auto_generated|op_1~76_combout\ = (\my_alu|Mult0|auto_generated|add9_result[38]~76_combout\ & ((GND) # (!\my_alu|Mult0|auto_generated|op_1~75\))) # (!\my_alu|Mult0|auto_generated|add9_result[38]~76_combout\ & 
-- (\my_alu|Mult0|auto_generated|op_1~75\ $ (GND)))
-- \my_alu|Mult0|auto_generated|op_1~77\ = CARRY((\my_alu|Mult0|auto_generated|add9_result[38]~76_combout\) # (!\my_alu|Mult0|auto_generated|op_1~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_alu|Mult0|auto_generated|add9_result[38]~76_combout\,
	datad => VCC,
	cin => \my_alu|Mult0|auto_generated|op_1~75\,
	combout => \my_alu|Mult0|auto_generated|op_1~76_combout\,
	cout => \my_alu|Mult0|auto_generated|op_1~77\);

-- Location: LCCOMB_X25_Y18_N18
\my_alu|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Selector7~0_combout\ = (!\output_reg_hi|q[0]~0_combout\ & ((\input_reg_op|q\(0) & (\my_alu|Mult1|auto_generated|op_1~76_combout\)) # (!\input_reg_op|q\(0) & ((\my_alu|Mult0|auto_generated|op_1~76_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult1|auto_generated|op_1~76_combout\,
	datab => \output_reg_hi|q[0]~0_combout\,
	datac => \input_reg_op|q\(0),
	datad => \my_alu|Mult0|auto_generated|op_1~76_combout\,
	combout => \my_alu|Selector7~0_combout\);

-- Location: FF_X25_Y18_N19
\output_reg_hi|q[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \my_alu|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_reg_hi|q\(24));

-- Location: LCCOMB_X24_Y18_N16
\my_alu|Mult1|auto_generated|op_1~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult1|auto_generated|op_1~78_combout\ = (\my_alu|Mult1|auto_generated|mac_out8~DATAOUT21\ & (!\my_alu|Mult1|auto_generated|op_1~77\)) # (!\my_alu|Mult1|auto_generated|mac_out8~DATAOUT21\ & ((\my_alu|Mult1|auto_generated|op_1~77\) # (GND)))
-- \my_alu|Mult1|auto_generated|op_1~79\ = CARRY((!\my_alu|Mult1|auto_generated|op_1~77\) # (!\my_alu|Mult1|auto_generated|mac_out8~DATAOUT21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult1|auto_generated|mac_out8~DATAOUT21\,
	datad => VCC,
	cin => \my_alu|Mult1|auto_generated|op_1~77\,
	combout => \my_alu|Mult1|auto_generated|op_1~78_combout\,
	cout => \my_alu|Mult1|auto_generated|op_1~79\);

-- Location: LCCOMB_X43_Y21_N16
\my_alu|Mult0|auto_generated|add9_result[39]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult0|auto_generated|add9_result[39]~78_combout\ = (\my_alu|Mult0|auto_generated|mac_out8~DATAOUT21\ & (!\my_alu|Mult0|auto_generated|add9_result[38]~77\)) # (!\my_alu|Mult0|auto_generated|mac_out8~DATAOUT21\ & 
-- ((\my_alu|Mult0|auto_generated|add9_result[38]~77\) # (GND)))
-- \my_alu|Mult0|auto_generated|add9_result[39]~79\ = CARRY((!\my_alu|Mult0|auto_generated|add9_result[38]~77\) # (!\my_alu|Mult0|auto_generated|mac_out8~DATAOUT21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_alu|Mult0|auto_generated|mac_out8~DATAOUT21\,
	datad => VCC,
	cin => \my_alu|Mult0|auto_generated|add9_result[38]~77\,
	combout => \my_alu|Mult0|auto_generated|add9_result[39]~78_combout\,
	cout => \my_alu|Mult0|auto_generated|add9_result[39]~79\);

-- Location: LCCOMB_X42_Y21_N16
\my_alu|Mult0|auto_generated|op_1~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult0|auto_generated|op_1~78_combout\ = (\my_alu|Mult0|auto_generated|add9_result[39]~78_combout\ & (\my_alu|Mult0|auto_generated|op_1~77\ & VCC)) # (!\my_alu|Mult0|auto_generated|add9_result[39]~78_combout\ & 
-- (!\my_alu|Mult0|auto_generated|op_1~77\))
-- \my_alu|Mult0|auto_generated|op_1~79\ = CARRY((!\my_alu|Mult0|auto_generated|add9_result[39]~78_combout\ & !\my_alu|Mult0|auto_generated|op_1~77\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_alu|Mult0|auto_generated|add9_result[39]~78_combout\,
	datad => VCC,
	cin => \my_alu|Mult0|auto_generated|op_1~77\,
	combout => \my_alu|Mult0|auto_generated|op_1~78_combout\,
	cout => \my_alu|Mult0|auto_generated|op_1~79\);

-- Location: LCCOMB_X25_Y18_N16
\my_alu|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Selector6~0_combout\ = (!\output_reg_hi|q[0]~0_combout\ & ((\input_reg_op|q\(0) & (\my_alu|Mult1|auto_generated|op_1~78_combout\)) # (!\input_reg_op|q\(0) & ((\my_alu|Mult0|auto_generated|op_1~78_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(0),
	datab => \output_reg_hi|q[0]~0_combout\,
	datac => \my_alu|Mult1|auto_generated|op_1~78_combout\,
	datad => \my_alu|Mult0|auto_generated|op_1~78_combout\,
	combout => \my_alu|Selector6~0_combout\);

-- Location: FF_X25_Y18_N17
\output_reg_hi|q[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \my_alu|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_reg_hi|q\(25));

-- Location: LCCOMB_X24_Y18_N18
\my_alu|Mult1|auto_generated|op_1~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult1|auto_generated|op_1~80_combout\ = (\my_alu|Mult1|auto_generated|mac_out8~DATAOUT22\ & (\my_alu|Mult1|auto_generated|op_1~79\ $ (GND))) # (!\my_alu|Mult1|auto_generated|mac_out8~DATAOUT22\ & (!\my_alu|Mult1|auto_generated|op_1~79\ & VCC))
-- \my_alu|Mult1|auto_generated|op_1~81\ = CARRY((\my_alu|Mult1|auto_generated|mac_out8~DATAOUT22\ & !\my_alu|Mult1|auto_generated|op_1~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult1|auto_generated|mac_out8~DATAOUT22\,
	datad => VCC,
	cin => \my_alu|Mult1|auto_generated|op_1~79\,
	combout => \my_alu|Mult1|auto_generated|op_1~80_combout\,
	cout => \my_alu|Mult1|auto_generated|op_1~81\);

-- Location: LCCOMB_X43_Y21_N18
\my_alu|Mult0|auto_generated|add9_result[40]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult0|auto_generated|add9_result[40]~80_combout\ = (\my_alu|Mult0|auto_generated|mac_out8~DATAOUT22\ & (\my_alu|Mult0|auto_generated|add9_result[39]~79\ $ (GND))) # (!\my_alu|Mult0|auto_generated|mac_out8~DATAOUT22\ & 
-- (!\my_alu|Mult0|auto_generated|add9_result[39]~79\ & VCC))
-- \my_alu|Mult0|auto_generated|add9_result[40]~81\ = CARRY((\my_alu|Mult0|auto_generated|mac_out8~DATAOUT22\ & !\my_alu|Mult0|auto_generated|add9_result[39]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_alu|Mult0|auto_generated|mac_out8~DATAOUT22\,
	datad => VCC,
	cin => \my_alu|Mult0|auto_generated|add9_result[39]~79\,
	combout => \my_alu|Mult0|auto_generated|add9_result[40]~80_combout\,
	cout => \my_alu|Mult0|auto_generated|add9_result[40]~81\);

-- Location: LCCOMB_X42_Y21_N18
\my_alu|Mult0|auto_generated|op_1~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult0|auto_generated|op_1~80_combout\ = (\my_alu|Mult0|auto_generated|add9_result[40]~80_combout\ & ((GND) # (!\my_alu|Mult0|auto_generated|op_1~79\))) # (!\my_alu|Mult0|auto_generated|add9_result[40]~80_combout\ & 
-- (\my_alu|Mult0|auto_generated|op_1~79\ $ (GND)))
-- \my_alu|Mult0|auto_generated|op_1~81\ = CARRY((\my_alu|Mult0|auto_generated|add9_result[40]~80_combout\) # (!\my_alu|Mult0|auto_generated|op_1~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_alu|Mult0|auto_generated|add9_result[40]~80_combout\,
	datad => VCC,
	cin => \my_alu|Mult0|auto_generated|op_1~79\,
	combout => \my_alu|Mult0|auto_generated|op_1~80_combout\,
	cout => \my_alu|Mult0|auto_generated|op_1~81\);

-- Location: LCCOMB_X25_Y18_N10
\my_alu|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Selector5~0_combout\ = (!\output_reg_hi|q[0]~0_combout\ & ((\input_reg_op|q\(0) & (\my_alu|Mult1|auto_generated|op_1~80_combout\)) # (!\input_reg_op|q\(0) & ((\my_alu|Mult0|auto_generated|op_1~80_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \output_reg_hi|q[0]~0_combout\,
	datab => \my_alu|Mult1|auto_generated|op_1~80_combout\,
	datac => \input_reg_op|q\(0),
	datad => \my_alu|Mult0|auto_generated|op_1~80_combout\,
	combout => \my_alu|Selector5~0_combout\);

-- Location: FF_X25_Y18_N11
\output_reg_hi|q[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \my_alu|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_reg_hi|q\(26));

-- Location: LCCOMB_X24_Y18_N20
\my_alu|Mult1|auto_generated|op_1~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult1|auto_generated|op_1~82_combout\ = (\my_alu|Mult1|auto_generated|mac_out8~DATAOUT23\ & (!\my_alu|Mult1|auto_generated|op_1~81\)) # (!\my_alu|Mult1|auto_generated|mac_out8~DATAOUT23\ & ((\my_alu|Mult1|auto_generated|op_1~81\) # (GND)))
-- \my_alu|Mult1|auto_generated|op_1~83\ = CARRY((!\my_alu|Mult1|auto_generated|op_1~81\) # (!\my_alu|Mult1|auto_generated|mac_out8~DATAOUT23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult1|auto_generated|mac_out8~DATAOUT23\,
	datad => VCC,
	cin => \my_alu|Mult1|auto_generated|op_1~81\,
	combout => \my_alu|Mult1|auto_generated|op_1~82_combout\,
	cout => \my_alu|Mult1|auto_generated|op_1~83\);

-- Location: LCCOMB_X42_Y21_N20
\my_alu|Mult0|auto_generated|op_1~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult0|auto_generated|op_1~82_combout\ = (\my_alu|Mult0|auto_generated|add9_result[41]~82_combout\ & (\my_alu|Mult0|auto_generated|op_1~81\ & VCC)) # (!\my_alu|Mult0|auto_generated|add9_result[41]~82_combout\ & 
-- (!\my_alu|Mult0|auto_generated|op_1~81\))
-- \my_alu|Mult0|auto_generated|op_1~83\ = CARRY((!\my_alu|Mult0|auto_generated|add9_result[41]~82_combout\ & !\my_alu|Mult0|auto_generated|op_1~81\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult0|auto_generated|add9_result[41]~82_combout\,
	datad => VCC,
	cin => \my_alu|Mult0|auto_generated|op_1~81\,
	combout => \my_alu|Mult0|auto_generated|op_1~82_combout\,
	cout => \my_alu|Mult0|auto_generated|op_1~83\);

-- Location: LCCOMB_X25_Y18_N20
\my_alu|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Selector4~0_combout\ = (!\output_reg_hi|q[0]~0_combout\ & ((\input_reg_op|q\(0) & (\my_alu|Mult1|auto_generated|op_1~82_combout\)) # (!\input_reg_op|q\(0) & ((\my_alu|Mult0|auto_generated|op_1~82_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \output_reg_hi|q[0]~0_combout\,
	datab => \my_alu|Mult1|auto_generated|op_1~82_combout\,
	datac => \input_reg_op|q\(0),
	datad => \my_alu|Mult0|auto_generated|op_1~82_combout\,
	combout => \my_alu|Selector4~0_combout\);

-- Location: FF_X25_Y18_N21
\output_reg_hi|q[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \my_alu|Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_reg_hi|q\(27));

-- Location: LCCOMB_X24_Y18_N22
\my_alu|Mult1|auto_generated|op_1~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult1|auto_generated|op_1~84_combout\ = (\my_alu|Mult1|auto_generated|mac_out8~DATAOUT24\ & (\my_alu|Mult1|auto_generated|op_1~83\ $ (GND))) # (!\my_alu|Mult1|auto_generated|mac_out8~DATAOUT24\ & (!\my_alu|Mult1|auto_generated|op_1~83\ & VCC))
-- \my_alu|Mult1|auto_generated|op_1~85\ = CARRY((\my_alu|Mult1|auto_generated|mac_out8~DATAOUT24\ & !\my_alu|Mult1|auto_generated|op_1~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult1|auto_generated|mac_out8~DATAOUT24\,
	datad => VCC,
	cin => \my_alu|Mult1|auto_generated|op_1~83\,
	combout => \my_alu|Mult1|auto_generated|op_1~84_combout\,
	cout => \my_alu|Mult1|auto_generated|op_1~85\);

-- Location: LCCOMB_X43_Y21_N22
\my_alu|Mult0|auto_generated|add9_result[42]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult0|auto_generated|add9_result[42]~84_combout\ = (\my_alu|Mult0|auto_generated|mac_out8~DATAOUT24\ & (\my_alu|Mult0|auto_generated|add9_result[41]~83\ $ (GND))) # (!\my_alu|Mult0|auto_generated|mac_out8~DATAOUT24\ & 
-- (!\my_alu|Mult0|auto_generated|add9_result[41]~83\ & VCC))
-- \my_alu|Mult0|auto_generated|add9_result[42]~85\ = CARRY((\my_alu|Mult0|auto_generated|mac_out8~DATAOUT24\ & !\my_alu|Mult0|auto_generated|add9_result[41]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult0|auto_generated|mac_out8~DATAOUT24\,
	datad => VCC,
	cin => \my_alu|Mult0|auto_generated|add9_result[41]~83\,
	combout => \my_alu|Mult0|auto_generated|add9_result[42]~84_combout\,
	cout => \my_alu|Mult0|auto_generated|add9_result[42]~85\);

-- Location: LCCOMB_X42_Y21_N22
\my_alu|Mult0|auto_generated|op_1~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult0|auto_generated|op_1~84_combout\ = (\my_alu|Mult0|auto_generated|add9_result[42]~84_combout\ & ((GND) # (!\my_alu|Mult0|auto_generated|op_1~83\))) # (!\my_alu|Mult0|auto_generated|add9_result[42]~84_combout\ & 
-- (\my_alu|Mult0|auto_generated|op_1~83\ $ (GND)))
-- \my_alu|Mult0|auto_generated|op_1~85\ = CARRY((\my_alu|Mult0|auto_generated|add9_result[42]~84_combout\) # (!\my_alu|Mult0|auto_generated|op_1~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_alu|Mult0|auto_generated|add9_result[42]~84_combout\,
	datad => VCC,
	cin => \my_alu|Mult0|auto_generated|op_1~83\,
	combout => \my_alu|Mult0|auto_generated|op_1~84_combout\,
	cout => \my_alu|Mult0|auto_generated|op_1~85\);

-- Location: LCCOMB_X25_Y18_N2
\my_alu|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Selector3~0_combout\ = (!\output_reg_hi|q[0]~0_combout\ & ((\input_reg_op|q\(0) & (\my_alu|Mult1|auto_generated|op_1~84_combout\)) # (!\input_reg_op|q\(0) & ((\my_alu|Mult0|auto_generated|op_1~84_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \output_reg_hi|q[0]~0_combout\,
	datab => \my_alu|Mult1|auto_generated|op_1~84_combout\,
	datac => \input_reg_op|q\(0),
	datad => \my_alu|Mult0|auto_generated|op_1~84_combout\,
	combout => \my_alu|Selector3~0_combout\);

-- Location: FF_X25_Y18_N3
\output_reg_hi|q[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \my_alu|Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_reg_hi|q\(28));

-- Location: LCCOMB_X43_Y21_N24
\my_alu|Mult0|auto_generated|add9_result[43]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult0|auto_generated|add9_result[43]~86_combout\ = (\my_alu|Mult0|auto_generated|mac_out8~DATAOUT25\ & (!\my_alu|Mult0|auto_generated|add9_result[42]~85\)) # (!\my_alu|Mult0|auto_generated|mac_out8~DATAOUT25\ & 
-- ((\my_alu|Mult0|auto_generated|add9_result[42]~85\) # (GND)))
-- \my_alu|Mult0|auto_generated|add9_result[43]~87\ = CARRY((!\my_alu|Mult0|auto_generated|add9_result[42]~85\) # (!\my_alu|Mult0|auto_generated|mac_out8~DATAOUT25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult0|auto_generated|mac_out8~DATAOUT25\,
	datad => VCC,
	cin => \my_alu|Mult0|auto_generated|add9_result[42]~85\,
	combout => \my_alu|Mult0|auto_generated|add9_result[43]~86_combout\,
	cout => \my_alu|Mult0|auto_generated|add9_result[43]~87\);

-- Location: LCCOMB_X42_Y21_N24
\my_alu|Mult0|auto_generated|op_1~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult0|auto_generated|op_1~86_combout\ = (\my_alu|Mult0|auto_generated|add9_result[43]~86_combout\ & (\my_alu|Mult0|auto_generated|op_1~85\ & VCC)) # (!\my_alu|Mult0|auto_generated|add9_result[43]~86_combout\ & 
-- (!\my_alu|Mult0|auto_generated|op_1~85\))
-- \my_alu|Mult0|auto_generated|op_1~87\ = CARRY((!\my_alu|Mult0|auto_generated|add9_result[43]~86_combout\ & !\my_alu|Mult0|auto_generated|op_1~85\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_alu|Mult0|auto_generated|add9_result[43]~86_combout\,
	datad => VCC,
	cin => \my_alu|Mult0|auto_generated|op_1~85\,
	combout => \my_alu|Mult0|auto_generated|op_1~86_combout\,
	cout => \my_alu|Mult0|auto_generated|op_1~87\);

-- Location: LCCOMB_X24_Y18_N24
\my_alu|Mult1|auto_generated|op_1~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult1|auto_generated|op_1~86_combout\ = (\my_alu|Mult1|auto_generated|mac_out8~DATAOUT25\ & (!\my_alu|Mult1|auto_generated|op_1~85\)) # (!\my_alu|Mult1|auto_generated|mac_out8~DATAOUT25\ & ((\my_alu|Mult1|auto_generated|op_1~85\) # (GND)))
-- \my_alu|Mult1|auto_generated|op_1~87\ = CARRY((!\my_alu|Mult1|auto_generated|op_1~85\) # (!\my_alu|Mult1|auto_generated|mac_out8~DATAOUT25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult1|auto_generated|mac_out8~DATAOUT25\,
	datad => VCC,
	cin => \my_alu|Mult1|auto_generated|op_1~85\,
	combout => \my_alu|Mult1|auto_generated|op_1~86_combout\,
	cout => \my_alu|Mult1|auto_generated|op_1~87\);

-- Location: LCCOMB_X25_Y18_N4
\my_alu|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Selector2~0_combout\ = (!\output_reg_hi|q[0]~0_combout\ & ((\input_reg_op|q\(0) & ((\my_alu|Mult1|auto_generated|op_1~86_combout\))) # (!\input_reg_op|q\(0) & (\my_alu|Mult0|auto_generated|op_1~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(0),
	datab => \output_reg_hi|q[0]~0_combout\,
	datac => \my_alu|Mult0|auto_generated|op_1~86_combout\,
	datad => \my_alu|Mult1|auto_generated|op_1~86_combout\,
	combout => \my_alu|Selector2~0_combout\);

-- Location: FF_X25_Y18_N5
\output_reg_hi|q[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \my_alu|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_reg_hi|q\(29));

-- Location: LCCOMB_X43_Y21_N26
\my_alu|Mult0|auto_generated|add9_result[44]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult0|auto_generated|add9_result[44]~88_combout\ = (\my_alu|Mult0|auto_generated|mac_out8~DATAOUT26\ & (\my_alu|Mult0|auto_generated|add9_result[43]~87\ $ (GND))) # (!\my_alu|Mult0|auto_generated|mac_out8~DATAOUT26\ & 
-- (!\my_alu|Mult0|auto_generated|add9_result[43]~87\ & VCC))
-- \my_alu|Mult0|auto_generated|add9_result[44]~89\ = CARRY((\my_alu|Mult0|auto_generated|mac_out8~DATAOUT26\ & !\my_alu|Mult0|auto_generated|add9_result[43]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_alu|Mult0|auto_generated|mac_out8~DATAOUT26\,
	datad => VCC,
	cin => \my_alu|Mult0|auto_generated|add9_result[43]~87\,
	combout => \my_alu|Mult0|auto_generated|add9_result[44]~88_combout\,
	cout => \my_alu|Mult0|auto_generated|add9_result[44]~89\);

-- Location: LCCOMB_X42_Y21_N26
\my_alu|Mult0|auto_generated|op_1~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult0|auto_generated|op_1~88_combout\ = (\my_alu|Mult0|auto_generated|add9_result[44]~88_combout\ & ((GND) # (!\my_alu|Mult0|auto_generated|op_1~87\))) # (!\my_alu|Mult0|auto_generated|add9_result[44]~88_combout\ & 
-- (\my_alu|Mult0|auto_generated|op_1~87\ $ (GND)))
-- \my_alu|Mult0|auto_generated|op_1~89\ = CARRY((\my_alu|Mult0|auto_generated|add9_result[44]~88_combout\) # (!\my_alu|Mult0|auto_generated|op_1~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_alu|Mult0|auto_generated|add9_result[44]~88_combout\,
	datad => VCC,
	cin => \my_alu|Mult0|auto_generated|op_1~87\,
	combout => \my_alu|Mult0|auto_generated|op_1~88_combout\,
	cout => \my_alu|Mult0|auto_generated|op_1~89\);

-- Location: LCCOMB_X24_Y18_N26
\my_alu|Mult1|auto_generated|op_1~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult1|auto_generated|op_1~88_combout\ = (\my_alu|Mult1|auto_generated|mac_out8~DATAOUT26\ & (\my_alu|Mult1|auto_generated|op_1~87\ $ (GND))) # (!\my_alu|Mult1|auto_generated|mac_out8~DATAOUT26\ & (!\my_alu|Mult1|auto_generated|op_1~87\ & VCC))
-- \my_alu|Mult1|auto_generated|op_1~89\ = CARRY((\my_alu|Mult1|auto_generated|mac_out8~DATAOUT26\ & !\my_alu|Mult1|auto_generated|op_1~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \my_alu|Mult1|auto_generated|mac_out8~DATAOUT26\,
	datad => VCC,
	cin => \my_alu|Mult1|auto_generated|op_1~87\,
	combout => \my_alu|Mult1|auto_generated|op_1~88_combout\,
	cout => \my_alu|Mult1|auto_generated|op_1~89\);

-- Location: LCCOMB_X42_Y21_N30
\my_alu|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Selector1~0_combout\ = (!\output_reg_hi|q[0]~0_combout\ & ((\input_reg_op|q\(0) & ((\my_alu|Mult1|auto_generated|op_1~88_combout\))) # (!\input_reg_op|q\(0) & (\my_alu|Mult0|auto_generated|op_1~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \output_reg_hi|q[0]~0_combout\,
	datab => \input_reg_op|q\(0),
	datac => \my_alu|Mult0|auto_generated|op_1~88_combout\,
	datad => \my_alu|Mult1|auto_generated|op_1~88_combout\,
	combout => \my_alu|Selector1~0_combout\);

-- Location: FF_X42_Y21_N31
\output_reg_hi|q[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \my_alu|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_reg_hi|q\(30));

-- Location: LCCOMB_X43_Y21_N28
\my_alu|Mult0|auto_generated|add9_result[45]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult0|auto_generated|add9_result[45]~90_combout\ = \my_alu|Mult0|auto_generated|add9_result[44]~89\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \my_alu|Mult0|auto_generated|add9_result[44]~89\,
	combout => \my_alu|Mult0|auto_generated|add9_result[45]~90_combout\);

-- Location: LCCOMB_X42_Y21_N28
\my_alu|Mult0|auto_generated|op_1~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult0|auto_generated|op_1~90_combout\ = \my_alu|Mult0|auto_generated|mac_out8~DATAOUT27\ $ (\my_alu|Mult0|auto_generated|op_1~89\ $ (!\my_alu|Mult0|auto_generated|add9_result[45]~90_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult0|auto_generated|mac_out8~DATAOUT27\,
	datad => \my_alu|Mult0|auto_generated|add9_result[45]~90_combout\,
	cin => \my_alu|Mult0|auto_generated|op_1~89\,
	combout => \my_alu|Mult0|auto_generated|op_1~90_combout\);

-- Location: LCCOMB_X24_Y18_N28
\my_alu|Mult1|auto_generated|op_1~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mult1|auto_generated|op_1~90_combout\ = \my_alu|Mult1|auto_generated|mac_out8~DATAOUT27\ $ (\my_alu|Mult1|auto_generated|op_1~89\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult1|auto_generated|mac_out8~DATAOUT27\,
	cin => \my_alu|Mult1|auto_generated|op_1~89\,
	combout => \my_alu|Mult1|auto_generated|op_1~90_combout\);

-- Location: LCCOMB_X24_Y18_N30
\my_alu|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Selector0~0_combout\ = (!\output_reg_hi|q[0]~0_combout\ & ((\input_reg_op|q\(0) & ((\my_alu|Mult1|auto_generated|op_1~90_combout\))) # (!\input_reg_op|q\(0) & (\my_alu|Mult0|auto_generated|op_1~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(0),
	datab => \output_reg_hi|q[0]~0_combout\,
	datac => \my_alu|Mult0|auto_generated|op_1~90_combout\,
	datad => \my_alu|Mult1|auto_generated|op_1~90_combout\,
	combout => \my_alu|Selector0~0_combout\);

-- Location: FF_X24_Y18_N31
\output_reg_hi|q[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \my_alu|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_reg_hi|q\(31));

-- Location: IOIBUF_X0_Y36_N22
\op[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op(3),
	o => \op[3]~input_o\);

-- Location: LCCOMB_X28_Y20_N24
\input_reg_op|q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \input_reg_op|q[3]~feeder_combout\ = \op[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \op[3]~input_o\,
	combout => \input_reg_op|q[3]~feeder_combout\);

-- Location: FF_X28_Y20_N25
\input_reg_op|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \input_reg_op|q[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_reg_op|q\(3));

-- Location: FF_X32_Y20_N5
\input_reg_b|q[0]~_Duplicate_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_reg_b|q[0]~_Duplicate_4_q\);

-- Location: LCCOMB_X31_Y21_N2
\my_alu|Mux31~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux31~22_combout\ = (\input_reg_a|q[0]~_Duplicate_4_q\ & ((\input_reg_op|q\(0)) # ((!\input_reg_op|q\(1) & \input_reg_b|q[0]~_Duplicate_4_q\)))) # (!\input_reg_a|q[0]~_Duplicate_4_q\ & ((\input_reg_b|q[0]~_Duplicate_4_q\ & ((\input_reg_op|q\(0)))) 
-- # (!\input_reg_b|q[0]~_Duplicate_4_q\ & (\input_reg_op|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_a|q[0]~_Duplicate_4_q\,
	datab => \input_reg_op|q\(1),
	datac => \input_reg_b|q[0]~_Duplicate_4_q\,
	datad => \input_reg_op|q\(0),
	combout => \my_alu|Mux31~22_combout\);

-- Location: LCCOMB_X29_Y21_N30
\my_alu|Mux31~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux31~23_combout\ = (\my_alu|Mux31~22_combout\ & ((\my_alu|Add2~0_combout\) # ((!\input_reg_op|q\(0)) # (!\input_reg_op|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Add2~0_combout\,
	datab => \input_reg_op|q\(1),
	datac => \my_alu|Mux31~22_combout\,
	datad => \input_reg_op|q\(0),
	combout => \my_alu|Mux31~23_combout\);

-- Location: LCCOMB_X31_Y23_N4
\my_alu|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux0~0_combout\ = (!\input_reg_op|q\(1) & !\input_reg_op|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input_reg_op|q\(1),
	datad => \input_reg_op|q\(0),
	combout => \my_alu|Mux0~0_combout\);

-- Location: IOIBUF_X115_Y24_N1
\shamt[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_shamt(4),
	o => \shamt[4]~input_o\);

-- Location: FF_X31_Y21_N31
\input_reg_shamt|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \shamt[4]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_reg_shamt|q\(4));

-- Location: IOIBUF_X33_Y73_N8
\shamt[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_shamt(1),
	o => \shamt[1]~input_o\);

-- Location: FF_X33_Y19_N25
\input_reg_shamt|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \shamt[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_reg_shamt|q\(1));

-- Location: IOIBUF_X65_Y0_N8
\shamt[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_shamt(0),
	o => \shamt[0]~input_o\);

-- Location: FF_X31_Y20_N9
\input_reg_shamt|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \shamt[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_reg_shamt|q\(0));

-- Location: FF_X30_Y19_N11
\input_reg_b|q[28]~_Duplicate_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b[28]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_reg_b|q[28]~_Duplicate_4_q\);

-- Location: LCCOMB_X30_Y19_N16
\my_alu|ShiftRight0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight0~5_combout\ = (!\input_reg_shamt|q\(1) & ((\input_reg_shamt|q\(0) & (\input_reg_b|q[29]~_Duplicate_4_q\)) # (!\input_reg_shamt|q\(0) & ((\input_reg_b|q[28]~_Duplicate_4_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[29]~_Duplicate_4_q\,
	datab => \input_reg_shamt|q\(1),
	datac => \input_reg_shamt|q\(0),
	datad => \input_reg_b|q[28]~_Duplicate_4_q\,
	combout => \my_alu|ShiftRight0~5_combout\);

-- Location: FF_X31_Y19_N9
\input_reg_b|q[31]~_Duplicate_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b[31]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_reg_b|q[31]~_Duplicate_4_q\);

-- Location: LCCOMB_X31_Y20_N4
\my_alu|ShiftRight1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight1~8_combout\ = (\input_reg_shamt|q\(0) & ((\input_reg_b|q[31]~_Duplicate_4_q\))) # (!\input_reg_shamt|q\(0) & (\input_reg_b|q[30]~_Duplicate_4_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[30]~_Duplicate_4_q\,
	datac => \input_reg_shamt|q\(0),
	datad => \input_reg_b|q[31]~_Duplicate_4_q\,
	combout => \my_alu|ShiftRight1~8_combout\);

-- Location: LCCOMB_X31_Y19_N18
\my_alu|ShiftRight0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight0~6_combout\ = (\my_alu|ShiftRight0~5_combout\) # ((\input_reg_shamt|q\(1) & \my_alu|ShiftRight1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(1),
	datac => \my_alu|ShiftRight0~5_combout\,
	datad => \my_alu|ShiftRight1~8_combout\,
	combout => \my_alu|ShiftRight0~6_combout\);

-- Location: IOIBUF_X31_Y73_N1
\shamt[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_shamt(2),
	o => \shamt[2]~input_o\);

-- Location: FF_X31_Y19_N31
\input_reg_shamt|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \shamt[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_reg_shamt|q\(2));

-- Location: FF_X30_Y19_N19
\input_reg_b|q[27]~_Duplicate_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b[27]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_reg_b|q[27]~_Duplicate_4_q\);

-- Location: FF_X31_Y19_N17
\input_reg_b|q[25]~_Duplicate_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b[25]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_reg_b|q[25]~_Duplicate_4_q\);

-- Location: LCCOMB_X31_Y19_N2
\my_alu|ShiftRight0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight0~7_combout\ = (\input_reg_shamt|q\(1) & (\input_reg_b|q[27]~_Duplicate_4_q\)) # (!\input_reg_shamt|q\(1) & ((\input_reg_b|q[25]~_Duplicate_4_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input_reg_b|q[27]~_Duplicate_4_q\,
	datac => \input_reg_shamt|q\(1),
	datad => \input_reg_b|q[25]~_Duplicate_4_q\,
	combout => \my_alu|ShiftRight0~7_combout\);

-- Location: FF_X30_Y19_N25
\input_reg_b|q[26]~_Duplicate_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b[26]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_reg_b|q[26]~_Duplicate_4_q\);

-- Location: FF_X33_Y19_N3
\input_reg_b|q[24]~_Duplicate_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b[24]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_reg_b|q[24]~_Duplicate_4_q\);

-- Location: LCCOMB_X33_Y19_N0
\my_alu|ShiftRight0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight0~8_combout\ = (\input_reg_shamt|q\(1) & (\input_reg_b|q[26]~_Duplicate_4_q\)) # (!\input_reg_shamt|q\(1) & ((\input_reg_b|q[24]~_Duplicate_4_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input_reg_b|q[26]~_Duplicate_4_q\,
	datac => \input_reg_shamt|q\(1),
	datad => \input_reg_b|q[24]~_Duplicate_4_q\,
	combout => \my_alu|ShiftRight0~8_combout\);

-- Location: LCCOMB_X31_Y19_N12
\my_alu|ShiftRight0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight0~9_combout\ = (\input_reg_shamt|q\(0) & (\my_alu|ShiftRight0~7_combout\)) # (!\input_reg_shamt|q\(0) & ((\my_alu|ShiftRight0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(0),
	datab => \my_alu|ShiftRight0~7_combout\,
	datac => \my_alu|ShiftRight0~8_combout\,
	combout => \my_alu|ShiftRight0~9_combout\);

-- Location: LCCOMB_X31_Y19_N30
\my_alu|ShiftRight0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight0~10_combout\ = (\input_reg_shamt|q\(3) & ((\input_reg_shamt|q\(2) & (\my_alu|ShiftRight0~6_combout\)) # (!\input_reg_shamt|q\(2) & ((\my_alu|ShiftRight0~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(3),
	datab => \my_alu|ShiftRight0~6_combout\,
	datac => \input_reg_shamt|q\(2),
	datad => \my_alu|ShiftRight0~9_combout\,
	combout => \my_alu|ShiftRight0~10_combout\);

-- Location: FF_X32_Y23_N21
\input_reg_b|q[19]~_Duplicate_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b[19]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_reg_b|q[19]~_Duplicate_4_q\);

-- Location: LCCOMB_X32_Y23_N12
\my_alu|ShiftRight0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight0~14_combout\ = (\input_reg_shamt|q\(1) & ((\input_reg_b|q[19]~_Duplicate_4_q\))) # (!\input_reg_shamt|q\(1) & (\input_reg_b|q[17]~_Duplicate_4_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[17]~_Duplicate_4_q\,
	datac => \input_reg_b|q[19]~_Duplicate_4_q\,
	datad => \input_reg_shamt|q\(1),
	combout => \my_alu|ShiftRight0~14_combout\);

-- Location: LCCOMB_X33_Y22_N24
\input_reg_b|q[16]~_Duplicate_4feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \input_reg_b|q[16]~_Duplicate_4feeder_combout\ = \b[16]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b[16]~input_o\,
	combout => \input_reg_b|q[16]~_Duplicate_4feeder_combout\);

-- Location: FF_X33_Y22_N25
\input_reg_b|q[16]~_Duplicate_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \input_reg_b|q[16]~_Duplicate_4feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_reg_b|q[16]~_Duplicate_4_q\);

-- Location: FF_X32_Y23_N3
\input_reg_b|q[18]~_Duplicate_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b[18]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_reg_b|q[18]~_Duplicate_4_q\);

-- Location: LCCOMB_X33_Y22_N6
\my_alu|ShiftRight0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight0~15_combout\ = (\input_reg_shamt|q\(1) & ((\input_reg_b|q[18]~_Duplicate_4_q\))) # (!\input_reg_shamt|q\(1) & (\input_reg_b|q[16]~_Duplicate_4_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(1),
	datab => \input_reg_b|q[16]~_Duplicate_4_q\,
	datad => \input_reg_b|q[18]~_Duplicate_4_q\,
	combout => \my_alu|ShiftRight0~15_combout\);

-- Location: LCCOMB_X33_Y22_N28
\my_alu|ShiftRight0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight0~16_combout\ = (\input_reg_shamt|q\(0) & (\my_alu|ShiftRight0~14_combout\)) # (!\input_reg_shamt|q\(0) & ((\my_alu|ShiftRight0~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(0),
	datac => \my_alu|ShiftRight0~14_combout\,
	datad => \my_alu|ShiftRight0~15_combout\,
	combout => \my_alu|ShiftRight0~16_combout\);

-- Location: FF_X33_Y19_N23
\input_reg_b|q[23]~_Duplicate_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b[23]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_reg_b|q[23]~_Duplicate_4_q\);

-- Location: LCCOMB_X33_Y19_N10
\my_alu|ShiftRight0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight0~11_combout\ = (\input_reg_shamt|q\(1) & ((\input_reg_b|q[23]~_Duplicate_4_q\))) # (!\input_reg_shamt|q\(1) & (\input_reg_b|q[21]~_Duplicate_4_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[21]~_Duplicate_4_q\,
	datac => \input_reg_b|q[23]~_Duplicate_4_q\,
	datad => \input_reg_shamt|q\(1),
	combout => \my_alu|ShiftRight0~11_combout\);

-- Location: FF_X33_Y19_N17
\input_reg_b|q[22]~_Duplicate_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b[22]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_reg_b|q[22]~_Duplicate_4_q\);

-- Location: FF_X32_Y23_N9
\input_reg_b|q[20]~_Duplicate_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b[20]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_reg_b|q[20]~_Duplicate_4_q\);

-- Location: LCCOMB_X32_Y23_N30
\my_alu|ShiftRight0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight0~12_combout\ = (\input_reg_shamt|q\(1) & (\input_reg_b|q[22]~_Duplicate_4_q\)) # (!\input_reg_shamt|q\(1) & ((\input_reg_b|q[20]~_Duplicate_4_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input_reg_b|q[22]~_Duplicate_4_q\,
	datac => \input_reg_b|q[20]~_Duplicate_4_q\,
	datad => \input_reg_shamt|q\(1),
	combout => \my_alu|ShiftRight0~12_combout\);

-- Location: LCCOMB_X32_Y19_N18
\my_alu|ShiftRight0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight0~13_combout\ = (\input_reg_shamt|q\(0) & (\my_alu|ShiftRight0~11_combout\)) # (!\input_reg_shamt|q\(0) & ((\my_alu|ShiftRight0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input_reg_shamt|q\(0),
	datac => \my_alu|ShiftRight0~11_combout\,
	datad => \my_alu|ShiftRight0~12_combout\,
	combout => \my_alu|ShiftRight0~13_combout\);

-- Location: LCCOMB_X30_Y18_N12
\my_alu|ShiftRight0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight0~17_combout\ = (\input_reg_shamt|q\(2) & ((\my_alu|ShiftRight0~13_combout\))) # (!\input_reg_shamt|q\(2) & (\my_alu|ShiftRight0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input_reg_shamt|q\(2),
	datac => \my_alu|ShiftRight0~16_combout\,
	datad => \my_alu|ShiftRight0~13_combout\,
	combout => \my_alu|ShiftRight0~17_combout\);

-- Location: LCCOMB_X30_Y18_N14
\my_alu|Mux31~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux31~5_combout\ = (\input_reg_shamt|q\(4) & ((\my_alu|ShiftRight0~10_combout\) # ((!\input_reg_shamt|q\(3) & \my_alu|ShiftRight0~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(3),
	datab => \input_reg_shamt|q\(4),
	datac => \my_alu|ShiftRight0~10_combout\,
	datad => \my_alu|ShiftRight0~17_combout\,
	combout => \my_alu|Mux31~5_combout\);

-- Location: FF_X33_Y22_N27
\input_reg_b|q[15]~_Duplicate_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b[15]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_reg_b|q[15]~_Duplicate_4_q\);

-- Location: LCCOMB_X34_Y23_N14
\my_alu|ShiftRight0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight0~20_combout\ = (\input_reg_shamt|q\(1) & ((\input_reg_b|q[15]~_Duplicate_4_q\))) # (!\input_reg_shamt|q\(1) & (\input_reg_b|q[13]~_Duplicate_4_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[13]~_Duplicate_4_q\,
	datac => \input_reg_shamt|q\(1),
	datad => \input_reg_b|q[15]~_Duplicate_4_q\,
	combout => \my_alu|ShiftRight0~20_combout\);

-- Location: FF_X33_Y22_N13
\input_reg_b|q[14]~_Duplicate_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b[14]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_reg_b|q[14]~_Duplicate_4_q\);

-- Location: FF_X34_Y23_N25
\input_reg_b|q[12]~_Duplicate_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b[12]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_reg_b|q[12]~_Duplicate_4_q\);

-- Location: LCCOMB_X34_Y23_N30
\my_alu|ShiftRight0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight0~21_combout\ = (\input_reg_shamt|q\(1) & (\input_reg_b|q[14]~_Duplicate_4_q\)) # (!\input_reg_shamt|q\(1) & ((\input_reg_b|q[12]~_Duplicate_4_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input_reg_b|q[14]~_Duplicate_4_q\,
	datac => \input_reg_shamt|q\(1),
	datad => \input_reg_b|q[12]~_Duplicate_4_q\,
	combout => \my_alu|ShiftRight0~21_combout\);

-- Location: LCCOMB_X31_Y20_N2
\my_alu|ShiftRight0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight0~22_combout\ = (\input_reg_shamt|q\(0) & (\my_alu|ShiftRight0~20_combout\)) # (!\input_reg_shamt|q\(0) & ((\my_alu|ShiftRight0~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input_reg_shamt|q\(0),
	datac => \my_alu|ShiftRight0~20_combout\,
	datad => \my_alu|ShiftRight0~21_combout\,
	combout => \my_alu|ShiftRight0~22_combout\);

-- Location: LCCOMB_X31_Y20_N16
\my_alu|ShiftRight0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight0~26_combout\ = (\input_reg_shamt|q\(2) & ((\my_alu|ShiftRight0~22_combout\))) # (!\input_reg_shamt|q\(2) & (\my_alu|ShiftRight0~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|ShiftRight0~25_combout\,
	datac => \input_reg_shamt|q\(2),
	datad => \my_alu|ShiftRight0~22_combout\,
	combout => \my_alu|ShiftRight0~26_combout\);

-- Location: FF_X34_Y19_N3
\input_reg_b|q[3]~_Duplicate_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_reg_b|q[3]~_Duplicate_4_q\);

-- Location: LCCOMB_X34_Y19_N2
\my_alu|ShiftRight1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight1~9_combout\ = (\input_reg_shamt|q\(0) & ((\input_reg_b|q[3]~_Duplicate_4_q\))) # (!\input_reg_shamt|q\(0) & (\input_reg_b|q[2]~_Duplicate_4_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[2]~_Duplicate_4_q\,
	datac => \input_reg_b|q[3]~_Duplicate_4_q\,
	datad => \input_reg_shamt|q\(0),
	combout => \my_alu|ShiftRight1~9_combout\);

-- Location: FF_X34_Y19_N25
\input_reg_b|q[1]~_Duplicate_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_reg_b|q[1]~_Duplicate_4_q\);

-- Location: LCCOMB_X34_Y19_N24
\my_alu|Mux31~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux31~6_combout\ = (!\input_reg_shamt|q\(1) & ((\input_reg_shamt|q\(0) & ((\input_reg_b|q[1]~_Duplicate_4_q\))) # (!\input_reg_shamt|q\(0) & (\input_reg_b|q[0]~_Duplicate_4_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[0]~_Duplicate_4_q\,
	datab => \input_reg_shamt|q\(1),
	datac => \input_reg_b|q[1]~_Duplicate_4_q\,
	datad => \input_reg_shamt|q\(0),
	combout => \my_alu|Mux31~6_combout\);

-- Location: LCCOMB_X34_Y19_N30
\my_alu|Mux31~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux31~7_combout\ = (!\input_reg_shamt|q\(2) & ((\my_alu|Mux31~6_combout\) # ((\input_reg_shamt|q\(1) & \my_alu|ShiftRight1~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(1),
	datab => \my_alu|ShiftRight1~9_combout\,
	datac => \input_reg_shamt|q\(2),
	datad => \my_alu|Mux31~6_combout\,
	combout => \my_alu|Mux31~7_combout\);

-- Location: FF_X34_Y19_N11
\input_reg_b|q[4]~_Duplicate_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b[4]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_reg_b|q[4]~_Duplicate_4_q\);

-- Location: LCCOMB_X33_Y22_N26
\my_alu|ShiftRight1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight1~10_combout\ = (\input_reg_shamt|q\(0) & (\input_reg_b|q[5]~_Duplicate_4_q\)) # (!\input_reg_shamt|q\(0) & ((\input_reg_b|q[4]~_Duplicate_4_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[5]~_Duplicate_4_q\,
	datab => \input_reg_b|q[4]~_Duplicate_4_q\,
	datad => \input_reg_shamt|q\(0),
	combout => \my_alu|ShiftRight1~10_combout\);

-- Location: LCCOMB_X31_Y20_N8
\my_alu|ShiftRight0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight0~19_combout\ = (\my_alu|ShiftRight0~18_combout\) # ((!\input_reg_shamt|q\(1) & \my_alu|ShiftRight1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|ShiftRight0~18_combout\,
	datab => \input_reg_shamt|q\(1),
	datad => \my_alu|ShiftRight1~10_combout\,
	combout => \my_alu|ShiftRight0~19_combout\);

-- Location: LCCOMB_X30_Y18_N28
\my_alu|Mux31~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux31~8_combout\ = (!\input_reg_shamt|q\(3) & ((\my_alu|Mux31~7_combout\) # ((\input_reg_shamt|q\(2) & \my_alu|ShiftRight0~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(3),
	datab => \input_reg_shamt|q\(2),
	datac => \my_alu|Mux31~7_combout\,
	datad => \my_alu|ShiftRight0~19_combout\,
	combout => \my_alu|Mux31~8_combout\);

-- Location: LCCOMB_X30_Y18_N6
\my_alu|Mux31~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux31~9_combout\ = (!\input_reg_shamt|q\(4) & ((\my_alu|Mux31~8_combout\) # ((\input_reg_shamt|q\(3) & \my_alu|ShiftRight0~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(3),
	datab => \input_reg_shamt|q\(4),
	datac => \my_alu|ShiftRight0~26_combout\,
	datad => \my_alu|Mux31~8_combout\,
	combout => \my_alu|Mux31~9_combout\);

-- Location: LCCOMB_X30_Y18_N20
\my_alu|Mux31~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux31~10_combout\ = (\my_alu|Mux31~4_combout\) # ((!\my_alu|Mux0~0_combout\ & ((\my_alu|Mux31~5_combout\) # (\my_alu|Mux31~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mux31~4_combout\,
	datab => \my_alu|Mux0~0_combout\,
	datac => \my_alu|Mux31~5_combout\,
	datad => \my_alu|Mux31~9_combout\,
	combout => \my_alu|Mux31~10_combout\);

-- Location: LCCOMB_X29_Y20_N8
\my_alu|Mux31~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux31~11_combout\ = (\input_reg_op|q\(3) & ((\my_alu|Mux31~10_combout\))) # (!\input_reg_op|q\(3) & (\my_alu|Mux31~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input_reg_op|q\(3),
	datac => \my_alu|Mux31~23_combout\,
	datad => \my_alu|Mux31~10_combout\,
	combout => \my_alu|Mux31~11_combout\);

-- Location: FF_X30_Y19_N1
\input_reg_b|q[29]~_Duplicate_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b[29]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_reg_b|q[29]~_Duplicate_4_q\);

-- Location: FF_X33_Y23_N9
\input_reg_b|q[11]~_Duplicate_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b[11]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_reg_b|q[11]~_Duplicate_4_q\);

-- Location: FF_X34_Y22_N15
\input_reg_b|q[8]~_Duplicate_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b[8]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_reg_b|q[8]~_Duplicate_4_q\);

-- Location: FF_X34_Y22_N3
\input_reg_b|q[6]~_Duplicate_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b[6]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_reg_b|q[6]~_Duplicate_4_q\);

-- Location: FF_X34_Y19_N1
\input_reg_b|q[5]~_Duplicate_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b[5]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_reg_b|q[5]~_Duplicate_4_q\);

-- Location: LCCOMB_X33_Y21_N0
\my_alu|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add0~1_cout\ = CARRY(!\input_reg_b|q[0]~_Duplicate_4_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[0]~_Duplicate_4_q\,
	datad => VCC,
	cout => \my_alu|Add0~1_cout\);

-- Location: LCCOMB_X33_Y21_N6
\my_alu|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add0~6_combout\ = (\input_reg_b|q[3]~_Duplicate_4_q\ & ((\my_alu|Add0~5\) # (GND))) # (!\input_reg_b|q[3]~_Duplicate_4_q\ & (!\my_alu|Add0~5\))
-- \my_alu|Add0~7\ = CARRY((\input_reg_b|q[3]~_Duplicate_4_q\) # (!\my_alu|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \input_reg_b|q[3]~_Duplicate_4_q\,
	datad => VCC,
	cin => \my_alu|Add0~5\,
	combout => \my_alu|Add0~6_combout\,
	cout => \my_alu|Add0~7\);

-- Location: LCCOMB_X33_Y21_N8
\my_alu|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add0~8_combout\ = (\input_reg_b|q[4]~_Duplicate_4_q\ & (!\my_alu|Add0~7\ & VCC)) # (!\input_reg_b|q[4]~_Duplicate_4_q\ & (\my_alu|Add0~7\ $ (GND)))
-- \my_alu|Add0~9\ = CARRY((!\input_reg_b|q[4]~_Duplicate_4_q\ & !\my_alu|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[4]~_Duplicate_4_q\,
	datad => VCC,
	cin => \my_alu|Add0~7\,
	combout => \my_alu|Add0~8_combout\,
	cout => \my_alu|Add0~9\);

-- Location: LCCOMB_X33_Y21_N10
\my_alu|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add0~10_combout\ = (\input_reg_b|q[5]~_Duplicate_4_q\ & ((\my_alu|Add0~9\) # (GND))) # (!\input_reg_b|q[5]~_Duplicate_4_q\ & (!\my_alu|Add0~9\))
-- \my_alu|Add0~11\ = CARRY((\input_reg_b|q[5]~_Duplicate_4_q\) # (!\my_alu|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \input_reg_b|q[5]~_Duplicate_4_q\,
	datad => VCC,
	cin => \my_alu|Add0~9\,
	combout => \my_alu|Add0~10_combout\,
	cout => \my_alu|Add0~11\);

-- Location: LCCOMB_X33_Y21_N18
\my_alu|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add0~18_combout\ = (\input_reg_b|q[9]~_Duplicate_4_q\ & ((\my_alu|Add0~17\) # (GND))) # (!\input_reg_b|q[9]~_Duplicate_4_q\ & (!\my_alu|Add0~17\))
-- \my_alu|Add0~19\ = CARRY((\input_reg_b|q[9]~_Duplicate_4_q\) # (!\my_alu|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[9]~_Duplicate_4_q\,
	datad => VCC,
	cin => \my_alu|Add0~17\,
	combout => \my_alu|Add0~18_combout\,
	cout => \my_alu|Add0~19\);

-- Location: LCCOMB_X33_Y21_N20
\my_alu|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add0~20_combout\ = (\input_reg_b|q[10]~_Duplicate_4_q\ & (!\my_alu|Add0~19\ & VCC)) # (!\input_reg_b|q[10]~_Duplicate_4_q\ & (\my_alu|Add0~19\ $ (GND)))
-- \my_alu|Add0~21\ = CARRY((!\input_reg_b|q[10]~_Duplicate_4_q\ & !\my_alu|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[10]~_Duplicate_4_q\,
	datad => VCC,
	cin => \my_alu|Add0~19\,
	combout => \my_alu|Add0~20_combout\,
	cout => \my_alu|Add0~21\);

-- Location: LCCOMB_X33_Y21_N22
\my_alu|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add0~22_combout\ = (\input_reg_b|q[11]~_Duplicate_4_q\ & ((\my_alu|Add0~21\) # (GND))) # (!\input_reg_b|q[11]~_Duplicate_4_q\ & (!\my_alu|Add0~21\))
-- \my_alu|Add0~23\ = CARRY((\input_reg_b|q[11]~_Duplicate_4_q\) # (!\my_alu|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \input_reg_b|q[11]~_Duplicate_4_q\,
	datad => VCC,
	cin => \my_alu|Add0~21\,
	combout => \my_alu|Add0~22_combout\,
	cout => \my_alu|Add0~23\);

-- Location: LCCOMB_X33_Y21_N24
\my_alu|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add0~24_combout\ = (\input_reg_b|q[12]~_Duplicate_4_q\ & (!\my_alu|Add0~23\ & VCC)) # (!\input_reg_b|q[12]~_Duplicate_4_q\ & (\my_alu|Add0~23\ $ (GND)))
-- \my_alu|Add0~25\ = CARRY((!\input_reg_b|q[12]~_Duplicate_4_q\ & !\my_alu|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \input_reg_b|q[12]~_Duplicate_4_q\,
	datad => VCC,
	cin => \my_alu|Add0~23\,
	combout => \my_alu|Add0~24_combout\,
	cout => \my_alu|Add0~25\);

-- Location: LCCOMB_X33_Y21_N28
\my_alu|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add0~28_combout\ = (\input_reg_b|q[14]~_Duplicate_4_q\ & (!\my_alu|Add0~27\ & VCC)) # (!\input_reg_b|q[14]~_Duplicate_4_q\ & (\my_alu|Add0~27\ $ (GND)))
-- \my_alu|Add0~29\ = CARRY((!\input_reg_b|q[14]~_Duplicate_4_q\ & !\my_alu|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \input_reg_b|q[14]~_Duplicate_4_q\,
	datad => VCC,
	cin => \my_alu|Add0~27\,
	combout => \my_alu|Add0~28_combout\,
	cout => \my_alu|Add0~29\);

-- Location: LCCOMB_X33_Y21_N30
\my_alu|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add0~30_combout\ = (\input_reg_b|q[15]~_Duplicate_4_q\ & ((\my_alu|Add0~29\) # (GND))) # (!\input_reg_b|q[15]~_Duplicate_4_q\ & (!\my_alu|Add0~29\))
-- \my_alu|Add0~31\ = CARRY((\input_reg_b|q[15]~_Duplicate_4_q\) # (!\my_alu|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[15]~_Duplicate_4_q\,
	datad => VCC,
	cin => \my_alu|Add0~29\,
	combout => \my_alu|Add0~30_combout\,
	cout => \my_alu|Add0~31\);

-- Location: LCCOMB_X33_Y20_N2
\my_alu|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add0~34_combout\ = (\input_reg_b|q[17]~_Duplicate_4_q\ & ((\my_alu|Add0~33\) # (GND))) # (!\input_reg_b|q[17]~_Duplicate_4_q\ & (!\my_alu|Add0~33\))
-- \my_alu|Add0~35\ = CARRY((\input_reg_b|q[17]~_Duplicate_4_q\) # (!\my_alu|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[17]~_Duplicate_4_q\,
	datad => VCC,
	cin => \my_alu|Add0~33\,
	combout => \my_alu|Add0~34_combout\,
	cout => \my_alu|Add0~35\);

-- Location: LCCOMB_X33_Y20_N4
\my_alu|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add0~36_combout\ = (\input_reg_b|q[18]~_Duplicate_4_q\ & (!\my_alu|Add0~35\ & VCC)) # (!\input_reg_b|q[18]~_Duplicate_4_q\ & (\my_alu|Add0~35\ $ (GND)))
-- \my_alu|Add0~37\ = CARRY((!\input_reg_b|q[18]~_Duplicate_4_q\ & !\my_alu|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[18]~_Duplicate_4_q\,
	datad => VCC,
	cin => \my_alu|Add0~35\,
	combout => \my_alu|Add0~36_combout\,
	cout => \my_alu|Add0~37\);

-- Location: LCCOMB_X33_Y20_N18
\my_alu|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add0~50_combout\ = (\input_reg_b|q[25]~_Duplicate_4_q\ & ((\my_alu|Add0~49\) # (GND))) # (!\input_reg_b|q[25]~_Duplicate_4_q\ & (!\my_alu|Add0~49\))
-- \my_alu|Add0~51\ = CARRY((\input_reg_b|q[25]~_Duplicate_4_q\) # (!\my_alu|Add0~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[25]~_Duplicate_4_q\,
	datad => VCC,
	cin => \my_alu|Add0~49\,
	combout => \my_alu|Add0~50_combout\,
	cout => \my_alu|Add0~51\);

-- Location: LCCOMB_X33_Y20_N20
\my_alu|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add0~52_combout\ = (\input_reg_b|q[26]~_Duplicate_4_q\ & (!\my_alu|Add0~51\ & VCC)) # (!\input_reg_b|q[26]~_Duplicate_4_q\ & (\my_alu|Add0~51\ $ (GND)))
-- \my_alu|Add0~53\ = CARRY((!\input_reg_b|q[26]~_Duplicate_4_q\ & !\my_alu|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \input_reg_b|q[26]~_Duplicate_4_q\,
	datad => VCC,
	cin => \my_alu|Add0~51\,
	combout => \my_alu|Add0~52_combout\,
	cout => \my_alu|Add0~53\);

-- Location: LCCOMB_X33_Y20_N22
\my_alu|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add0~54_combout\ = (\input_reg_b|q[27]~_Duplicate_4_q\ & ((\my_alu|Add0~53\) # (GND))) # (!\input_reg_b|q[27]~_Duplicate_4_q\ & (!\my_alu|Add0~53\))
-- \my_alu|Add0~55\ = CARRY((\input_reg_b|q[27]~_Duplicate_4_q\) # (!\my_alu|Add0~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[27]~_Duplicate_4_q\,
	datad => VCC,
	cin => \my_alu|Add0~53\,
	combout => \my_alu|Add0~54_combout\,
	cout => \my_alu|Add0~55\);

-- Location: LCCOMB_X33_Y20_N24
\my_alu|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add0~56_combout\ = (\input_reg_b|q[28]~_Duplicate_4_q\ & (!\my_alu|Add0~55\ & VCC)) # (!\input_reg_b|q[28]~_Duplicate_4_q\ & (\my_alu|Add0~55\ $ (GND)))
-- \my_alu|Add0~57\ = CARRY((!\input_reg_b|q[28]~_Duplicate_4_q\ & !\my_alu|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[28]~_Duplicate_4_q\,
	datad => VCC,
	cin => \my_alu|Add0~55\,
	combout => \my_alu|Add0~56_combout\,
	cout => \my_alu|Add0~57\);

-- Location: LCCOMB_X33_Y20_N28
\my_alu|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add0~60_combout\ = (\input_reg_b|q[30]~_Duplicate_4_q\ & (!\my_alu|Add0~59\ & VCC)) # (!\input_reg_b|q[30]~_Duplicate_4_q\ & (\my_alu|Add0~59\ $ (GND)))
-- \my_alu|Add0~61\ = CARRY((!\input_reg_b|q[30]~_Duplicate_4_q\ & !\my_alu|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[30]~_Duplicate_4_q\,
	datad => VCC,
	cin => \my_alu|Add0~59\,
	combout => \my_alu|Add0~60_combout\,
	cout => \my_alu|Add0~61\);

-- Location: LCCOMB_X33_Y20_N30
\my_alu|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add0~62_combout\ = \my_alu|Add0~61\ $ (!\input_reg_b|q[31]~_Duplicate_4_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \input_reg_b|q[31]~_Duplicate_4_q\,
	cin => \my_alu|Add0~61\,
	combout => \my_alu|Add0~62_combout\);

-- Location: LCCOMB_X32_Y20_N16
\input_reg_a|q[29]~_Duplicate_4feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \input_reg_a|q[29]~_Duplicate_4feeder_combout\ = \a[29]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a[29]~input_o\,
	combout => \input_reg_a|q[29]~_Duplicate_4feeder_combout\);

-- Location: FF_X32_Y20_N17
\input_reg_a|q[29]~_Duplicate_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \input_reg_a|q[29]~_Duplicate_4feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_reg_a|q[29]~_Duplicate_4_q\);

-- Location: FF_X34_Y20_N21
\input_reg_a|q[24]~_Duplicate_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a[24]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_reg_a|q[24]~_Duplicate_4_q\);

-- Location: LCCOMB_X29_Y21_N24
\input_reg_a|q[23]~_Duplicate_4feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \input_reg_a|q[23]~_Duplicate_4feeder_combout\ = \a[23]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a[23]~input_o\,
	combout => \input_reg_a|q[23]~_Duplicate_4feeder_combout\);

-- Location: FF_X29_Y21_N25
\input_reg_a|q[23]~_Duplicate_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \input_reg_a|q[23]~_Duplicate_4feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_reg_a|q[23]~_Duplicate_4_q\);

-- Location: FF_X26_Y21_N13
\input_reg_a|q[22]~_Duplicate_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a[22]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_reg_a|q[22]~_Duplicate_4_q\);

-- Location: FF_X33_Y20_N19
\input_reg_a|q[21]~_Duplicate_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a[21]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_reg_a|q[21]~_Duplicate_4_q\);

-- Location: LCCOMB_X34_Y20_N22
\input_reg_a|q[20]~_Duplicate_4feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \input_reg_a|q[20]~_Duplicate_4feeder_combout\ = \a[20]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a[20]~input_o\,
	combout => \input_reg_a|q[20]~_Duplicate_4feeder_combout\);

-- Location: FF_X34_Y20_N23
\input_reg_a|q[20]~_Duplicate_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \input_reg_a|q[20]~_Duplicate_4feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_reg_a|q[20]~_Duplicate_4_q\);

-- Location: FF_X31_Y21_N5
\input_reg_a|q[19]~_Duplicate_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a[19]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_reg_a|q[19]~_Duplicate_4_q\);

-- Location: LCCOMB_X29_Y21_N26
\input_reg_a|q[16]~_Duplicate_4feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \input_reg_a|q[16]~_Duplicate_4feeder_combout\ = \a[16]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a[16]~input_o\,
	combout => \input_reg_a|q[16]~_Duplicate_4feeder_combout\);

-- Location: FF_X29_Y21_N27
\input_reg_a|q[16]~_Duplicate_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \input_reg_a|q[16]~_Duplicate_4feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_reg_a|q[16]~_Duplicate_4_q\);

-- Location: FF_X35_Y22_N25
\input_reg_a|q[13]~_Duplicate_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a[13]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_reg_a|q[13]~_Duplicate_4_q\);

-- Location: FF_X33_Y22_N7
\input_reg_a|q[8]~_Duplicate_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a[8]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_reg_a|q[8]~_Duplicate_4_q\);

-- Location: FF_X32_Y22_N1
\input_reg_a|q[7]~_Duplicate_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a[7]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_reg_a|q[7]~_Duplicate_4_q\);

-- Location: FF_X34_Y22_N13
\input_reg_a|q[6]~_Duplicate_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a[6]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_reg_a|q[6]~_Duplicate_4_q\);

-- Location: FF_X32_Y22_N3
\input_reg_a|q[2]~_Duplicate_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_reg_a|q[2]~_Duplicate_4_q\);

-- Location: FF_X32_Y22_N19
\input_reg_a|q[1]~_Duplicate_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_reg_a|q[1]~_Duplicate_4_q\);

-- Location: LCCOMB_X34_Y22_N16
\my_alu|Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add1~1_cout\ = CARRY((\input_reg_a|q[0]~_Duplicate_4_q\ & \input_reg_b|q[0]~_Duplicate_4_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_a|q[0]~_Duplicate_4_q\,
	datab => \input_reg_b|q[0]~_Duplicate_4_q\,
	datad => VCC,
	cout => \my_alu|Add1~1_cout\);

-- Location: LCCOMB_X34_Y22_N18
\my_alu|Add1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add1~3_cout\ = CARRY((\my_alu|Add0~2_combout\ & (!\input_reg_a|q[1]~_Duplicate_4_q\ & !\my_alu|Add1~1_cout\)) # (!\my_alu|Add0~2_combout\ & ((!\my_alu|Add1~1_cout\) # (!\input_reg_a|q[1]~_Duplicate_4_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Add0~2_combout\,
	datab => \input_reg_a|q[1]~_Duplicate_4_q\,
	datad => VCC,
	cin => \my_alu|Add1~1_cout\,
	cout => \my_alu|Add1~3_cout\);

-- Location: LCCOMB_X34_Y22_N20
\my_alu|Add1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add1~5_cout\ = CARRY((\my_alu|Add0~4_combout\ & ((\input_reg_a|q[2]~_Duplicate_4_q\) # (!\my_alu|Add1~3_cout\))) # (!\my_alu|Add0~4_combout\ & (\input_reg_a|q[2]~_Duplicate_4_q\ & !\my_alu|Add1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Add0~4_combout\,
	datab => \input_reg_a|q[2]~_Duplicate_4_q\,
	datad => VCC,
	cin => \my_alu|Add1~3_cout\,
	cout => \my_alu|Add1~5_cout\);

-- Location: LCCOMB_X34_Y22_N22
\my_alu|Add1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add1~7_cout\ = CARRY((\input_reg_a|q[3]~_Duplicate_4_q\ & (!\my_alu|Add0~6_combout\ & !\my_alu|Add1~5_cout\)) # (!\input_reg_a|q[3]~_Duplicate_4_q\ & ((!\my_alu|Add1~5_cout\) # (!\my_alu|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_a|q[3]~_Duplicate_4_q\,
	datab => \my_alu|Add0~6_combout\,
	datad => VCC,
	cin => \my_alu|Add1~5_cout\,
	cout => \my_alu|Add1~7_cout\);

-- Location: LCCOMB_X34_Y22_N24
\my_alu|Add1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add1~9_cout\ = CARRY((\input_reg_a|q[4]~_Duplicate_4_q\ & ((\my_alu|Add0~8_combout\) # (!\my_alu|Add1~7_cout\))) # (!\input_reg_a|q[4]~_Duplicate_4_q\ & (\my_alu|Add0~8_combout\ & !\my_alu|Add1~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_a|q[4]~_Duplicate_4_q\,
	datab => \my_alu|Add0~8_combout\,
	datad => VCC,
	cin => \my_alu|Add1~7_cout\,
	cout => \my_alu|Add1~9_cout\);

-- Location: LCCOMB_X34_Y22_N26
\my_alu|Add1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add1~11_cout\ = CARRY((\input_reg_a|q[5]~_Duplicate_4_q\ & (!\my_alu|Add0~10_combout\ & !\my_alu|Add1~9_cout\)) # (!\input_reg_a|q[5]~_Duplicate_4_q\ & ((!\my_alu|Add1~9_cout\) # (!\my_alu|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_a|q[5]~_Duplicate_4_q\,
	datab => \my_alu|Add0~10_combout\,
	datad => VCC,
	cin => \my_alu|Add1~9_cout\,
	cout => \my_alu|Add1~11_cout\);

-- Location: LCCOMB_X34_Y22_N28
\my_alu|Add1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add1~13_cout\ = CARRY((\my_alu|Add0~12_combout\ & ((\input_reg_a|q[6]~_Duplicate_4_q\) # (!\my_alu|Add1~11_cout\))) # (!\my_alu|Add0~12_combout\ & (\input_reg_a|q[6]~_Duplicate_4_q\ & !\my_alu|Add1~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Add0~12_combout\,
	datab => \input_reg_a|q[6]~_Duplicate_4_q\,
	datad => VCC,
	cin => \my_alu|Add1~11_cout\,
	cout => \my_alu|Add1~13_cout\);

-- Location: LCCOMB_X34_Y22_N30
\my_alu|Add1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add1~15_cout\ = CARRY((\my_alu|Add0~14_combout\ & (!\input_reg_a|q[7]~_Duplicate_4_q\ & !\my_alu|Add1~13_cout\)) # (!\my_alu|Add0~14_combout\ & ((!\my_alu|Add1~13_cout\) # (!\input_reg_a|q[7]~_Duplicate_4_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Add0~14_combout\,
	datab => \input_reg_a|q[7]~_Duplicate_4_q\,
	datad => VCC,
	cin => \my_alu|Add1~13_cout\,
	cout => \my_alu|Add1~15_cout\);

-- Location: LCCOMB_X34_Y21_N0
\my_alu|Add1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add1~17_cout\ = CARRY((\my_alu|Add0~16_combout\ & ((\input_reg_a|q[8]~_Duplicate_4_q\) # (!\my_alu|Add1~15_cout\))) # (!\my_alu|Add0~16_combout\ & (\input_reg_a|q[8]~_Duplicate_4_q\ & !\my_alu|Add1~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Add0~16_combout\,
	datab => \input_reg_a|q[8]~_Duplicate_4_q\,
	datad => VCC,
	cin => \my_alu|Add1~15_cout\,
	cout => \my_alu|Add1~17_cout\);

-- Location: LCCOMB_X34_Y21_N2
\my_alu|Add1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add1~19_cout\ = CARRY((\input_reg_a|q[9]~_Duplicate_4_q\ & (!\my_alu|Add0~18_combout\ & !\my_alu|Add1~17_cout\)) # (!\input_reg_a|q[9]~_Duplicate_4_q\ & ((!\my_alu|Add1~17_cout\) # (!\my_alu|Add0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_a|q[9]~_Duplicate_4_q\,
	datab => \my_alu|Add0~18_combout\,
	datad => VCC,
	cin => \my_alu|Add1~17_cout\,
	cout => \my_alu|Add1~19_cout\);

-- Location: LCCOMB_X34_Y21_N4
\my_alu|Add1~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add1~21_cout\ = CARRY((\input_reg_a|q[10]~_Duplicate_4_q\ & ((\my_alu|Add0~20_combout\) # (!\my_alu|Add1~19_cout\))) # (!\input_reg_a|q[10]~_Duplicate_4_q\ & (\my_alu|Add0~20_combout\ & !\my_alu|Add1~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_a|q[10]~_Duplicate_4_q\,
	datab => \my_alu|Add0~20_combout\,
	datad => VCC,
	cin => \my_alu|Add1~19_cout\,
	cout => \my_alu|Add1~21_cout\);

-- Location: LCCOMB_X34_Y21_N6
\my_alu|Add1~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add1~23_cout\ = CARRY((\input_reg_a|q[11]~_Duplicate_4_q\ & (!\my_alu|Add0~22_combout\ & !\my_alu|Add1~21_cout\)) # (!\input_reg_a|q[11]~_Duplicate_4_q\ & ((!\my_alu|Add1~21_cout\) # (!\my_alu|Add0~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_a|q[11]~_Duplicate_4_q\,
	datab => \my_alu|Add0~22_combout\,
	datad => VCC,
	cin => \my_alu|Add1~21_cout\,
	cout => \my_alu|Add1~23_cout\);

-- Location: LCCOMB_X34_Y21_N8
\my_alu|Add1~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add1~25_cout\ = CARRY((\input_reg_a|q[12]~_Duplicate_4_q\ & ((\my_alu|Add0~24_combout\) # (!\my_alu|Add1~23_cout\))) # (!\input_reg_a|q[12]~_Duplicate_4_q\ & (\my_alu|Add0~24_combout\ & !\my_alu|Add1~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_a|q[12]~_Duplicate_4_q\,
	datab => \my_alu|Add0~24_combout\,
	datad => VCC,
	cin => \my_alu|Add1~23_cout\,
	cout => \my_alu|Add1~25_cout\);

-- Location: LCCOMB_X34_Y21_N10
\my_alu|Add1~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add1~27_cout\ = CARRY((\my_alu|Add0~26_combout\ & (!\input_reg_a|q[13]~_Duplicate_4_q\ & !\my_alu|Add1~25_cout\)) # (!\my_alu|Add0~26_combout\ & ((!\my_alu|Add1~25_cout\) # (!\input_reg_a|q[13]~_Duplicate_4_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Add0~26_combout\,
	datab => \input_reg_a|q[13]~_Duplicate_4_q\,
	datad => VCC,
	cin => \my_alu|Add1~25_cout\,
	cout => \my_alu|Add1~27_cout\);

-- Location: LCCOMB_X34_Y21_N12
\my_alu|Add1~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add1~29_cout\ = CARRY((\input_reg_a|q[14]~_Duplicate_4_q\ & ((\my_alu|Add0~28_combout\) # (!\my_alu|Add1~27_cout\))) # (!\input_reg_a|q[14]~_Duplicate_4_q\ & (\my_alu|Add0~28_combout\ & !\my_alu|Add1~27_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_a|q[14]~_Duplicate_4_q\,
	datab => \my_alu|Add0~28_combout\,
	datad => VCC,
	cin => \my_alu|Add1~27_cout\,
	cout => \my_alu|Add1~29_cout\);

-- Location: LCCOMB_X34_Y21_N14
\my_alu|Add1~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add1~31_cout\ = CARRY((\input_reg_a|q[15]~_Duplicate_4_q\ & (!\my_alu|Add0~30_combout\ & !\my_alu|Add1~29_cout\)) # (!\input_reg_a|q[15]~_Duplicate_4_q\ & ((!\my_alu|Add1~29_cout\) # (!\my_alu|Add0~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_a|q[15]~_Duplicate_4_q\,
	datab => \my_alu|Add0~30_combout\,
	datad => VCC,
	cin => \my_alu|Add1~29_cout\,
	cout => \my_alu|Add1~31_cout\);

-- Location: LCCOMB_X34_Y21_N16
\my_alu|Add1~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add1~33_cout\ = CARRY((\my_alu|Add0~32_combout\ & ((\input_reg_a|q[16]~_Duplicate_4_q\) # (!\my_alu|Add1~31_cout\))) # (!\my_alu|Add0~32_combout\ & (\input_reg_a|q[16]~_Duplicate_4_q\ & !\my_alu|Add1~31_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Add0~32_combout\,
	datab => \input_reg_a|q[16]~_Duplicate_4_q\,
	datad => VCC,
	cin => \my_alu|Add1~31_cout\,
	cout => \my_alu|Add1~33_cout\);

-- Location: LCCOMB_X34_Y21_N18
\my_alu|Add1~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add1~35_cout\ = CARRY((\input_reg_a|q[17]~_Duplicate_4_q\ & (!\my_alu|Add0~34_combout\ & !\my_alu|Add1~33_cout\)) # (!\input_reg_a|q[17]~_Duplicate_4_q\ & ((!\my_alu|Add1~33_cout\) # (!\my_alu|Add0~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_a|q[17]~_Duplicate_4_q\,
	datab => \my_alu|Add0~34_combout\,
	datad => VCC,
	cin => \my_alu|Add1~33_cout\,
	cout => \my_alu|Add1~35_cout\);

-- Location: LCCOMB_X34_Y21_N20
\my_alu|Add1~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add1~37_cout\ = CARRY((\input_reg_a|q[18]~_Duplicate_4_q\ & ((\my_alu|Add0~36_combout\) # (!\my_alu|Add1~35_cout\))) # (!\input_reg_a|q[18]~_Duplicate_4_q\ & (\my_alu|Add0~36_combout\ & !\my_alu|Add1~35_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_a|q[18]~_Duplicate_4_q\,
	datab => \my_alu|Add0~36_combout\,
	datad => VCC,
	cin => \my_alu|Add1~35_cout\,
	cout => \my_alu|Add1~37_cout\);

-- Location: LCCOMB_X34_Y21_N22
\my_alu|Add1~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add1~39_cout\ = CARRY((\my_alu|Add0~38_combout\ & (!\input_reg_a|q[19]~_Duplicate_4_q\ & !\my_alu|Add1~37_cout\)) # (!\my_alu|Add0~38_combout\ & ((!\my_alu|Add1~37_cout\) # (!\input_reg_a|q[19]~_Duplicate_4_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Add0~38_combout\,
	datab => \input_reg_a|q[19]~_Duplicate_4_q\,
	datad => VCC,
	cin => \my_alu|Add1~37_cout\,
	cout => \my_alu|Add1~39_cout\);

-- Location: LCCOMB_X34_Y21_N24
\my_alu|Add1~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add1~41_cout\ = CARRY((\my_alu|Add0~40_combout\ & ((\input_reg_a|q[20]~_Duplicate_4_q\) # (!\my_alu|Add1~39_cout\))) # (!\my_alu|Add0~40_combout\ & (\input_reg_a|q[20]~_Duplicate_4_q\ & !\my_alu|Add1~39_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Add0~40_combout\,
	datab => \input_reg_a|q[20]~_Duplicate_4_q\,
	datad => VCC,
	cin => \my_alu|Add1~39_cout\,
	cout => \my_alu|Add1~41_cout\);

-- Location: LCCOMB_X34_Y21_N26
\my_alu|Add1~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add1~43_cout\ = CARRY((\my_alu|Add0~42_combout\ & (!\input_reg_a|q[21]~_Duplicate_4_q\ & !\my_alu|Add1~41_cout\)) # (!\my_alu|Add0~42_combout\ & ((!\my_alu|Add1~41_cout\) # (!\input_reg_a|q[21]~_Duplicate_4_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Add0~42_combout\,
	datab => \input_reg_a|q[21]~_Duplicate_4_q\,
	datad => VCC,
	cin => \my_alu|Add1~41_cout\,
	cout => \my_alu|Add1~43_cout\);

-- Location: LCCOMB_X34_Y21_N28
\my_alu|Add1~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add1~45_cout\ = CARRY((\my_alu|Add0~44_combout\ & ((\input_reg_a|q[22]~_Duplicate_4_q\) # (!\my_alu|Add1~43_cout\))) # (!\my_alu|Add0~44_combout\ & (\input_reg_a|q[22]~_Duplicate_4_q\ & !\my_alu|Add1~43_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Add0~44_combout\,
	datab => \input_reg_a|q[22]~_Duplicate_4_q\,
	datad => VCC,
	cin => \my_alu|Add1~43_cout\,
	cout => \my_alu|Add1~45_cout\);

-- Location: LCCOMB_X34_Y21_N30
\my_alu|Add1~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add1~47_cout\ = CARRY((\my_alu|Add0~46_combout\ & (!\input_reg_a|q[23]~_Duplicate_4_q\ & !\my_alu|Add1~45_cout\)) # (!\my_alu|Add0~46_combout\ & ((!\my_alu|Add1~45_cout\) # (!\input_reg_a|q[23]~_Duplicate_4_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Add0~46_combout\,
	datab => \input_reg_a|q[23]~_Duplicate_4_q\,
	datad => VCC,
	cin => \my_alu|Add1~45_cout\,
	cout => \my_alu|Add1~47_cout\);

-- Location: LCCOMB_X34_Y20_N0
\my_alu|Add1~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add1~49_cout\ = CARRY((\my_alu|Add0~48_combout\ & ((\input_reg_a|q[24]~_Duplicate_4_q\) # (!\my_alu|Add1~47_cout\))) # (!\my_alu|Add0~48_combout\ & (\input_reg_a|q[24]~_Duplicate_4_q\ & !\my_alu|Add1~47_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Add0~48_combout\,
	datab => \input_reg_a|q[24]~_Duplicate_4_q\,
	datad => VCC,
	cin => \my_alu|Add1~47_cout\,
	cout => \my_alu|Add1~49_cout\);

-- Location: LCCOMB_X34_Y20_N2
\my_alu|Add1~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add1~51_cout\ = CARRY((\input_reg_a|q[25]~_Duplicate_4_q\ & (!\my_alu|Add0~50_combout\ & !\my_alu|Add1~49_cout\)) # (!\input_reg_a|q[25]~_Duplicate_4_q\ & ((!\my_alu|Add1~49_cout\) # (!\my_alu|Add0~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_a|q[25]~_Duplicate_4_q\,
	datab => \my_alu|Add0~50_combout\,
	datad => VCC,
	cin => \my_alu|Add1~49_cout\,
	cout => \my_alu|Add1~51_cout\);

-- Location: LCCOMB_X34_Y20_N4
\my_alu|Add1~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add1~53_cout\ = CARRY((\input_reg_a|q[26]~_Duplicate_4_q\ & ((\my_alu|Add0~52_combout\) # (!\my_alu|Add1~51_cout\))) # (!\input_reg_a|q[26]~_Duplicate_4_q\ & (\my_alu|Add0~52_combout\ & !\my_alu|Add1~51_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_a|q[26]~_Duplicate_4_q\,
	datab => \my_alu|Add0~52_combout\,
	datad => VCC,
	cin => \my_alu|Add1~51_cout\,
	cout => \my_alu|Add1~53_cout\);

-- Location: LCCOMB_X34_Y20_N6
\my_alu|Add1~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add1~55_cout\ = CARRY((\input_reg_a|q[27]~_Duplicate_4_q\ & (!\my_alu|Add0~54_combout\ & !\my_alu|Add1~53_cout\)) # (!\input_reg_a|q[27]~_Duplicate_4_q\ & ((!\my_alu|Add1~53_cout\) # (!\my_alu|Add0~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_a|q[27]~_Duplicate_4_q\,
	datab => \my_alu|Add0~54_combout\,
	datad => VCC,
	cin => \my_alu|Add1~53_cout\,
	cout => \my_alu|Add1~55_cout\);

-- Location: LCCOMB_X34_Y20_N8
\my_alu|Add1~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add1~57_cout\ = CARRY((\input_reg_a|q[28]~_Duplicate_4_q\ & ((\my_alu|Add0~56_combout\) # (!\my_alu|Add1~55_cout\))) # (!\input_reg_a|q[28]~_Duplicate_4_q\ & (\my_alu|Add0~56_combout\ & !\my_alu|Add1~55_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_a|q[28]~_Duplicate_4_q\,
	datab => \my_alu|Add0~56_combout\,
	datad => VCC,
	cin => \my_alu|Add1~55_cout\,
	cout => \my_alu|Add1~57_cout\);

-- Location: LCCOMB_X34_Y20_N10
\my_alu|Add1~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add1~59_cout\ = CARRY((\my_alu|Add0~58_combout\ & (!\input_reg_a|q[29]~_Duplicate_4_q\ & !\my_alu|Add1~57_cout\)) # (!\my_alu|Add0~58_combout\ & ((!\my_alu|Add1~57_cout\) # (!\input_reg_a|q[29]~_Duplicate_4_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Add0~58_combout\,
	datab => \input_reg_a|q[29]~_Duplicate_4_q\,
	datad => VCC,
	cin => \my_alu|Add1~57_cout\,
	cout => \my_alu|Add1~59_cout\);

-- Location: LCCOMB_X34_Y20_N12
\my_alu|Add1~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add1~61_cout\ = CARRY((\input_reg_a|q[30]~_Duplicate_4_q\ & ((\my_alu|Add0~60_combout\) # (!\my_alu|Add1~59_cout\))) # (!\input_reg_a|q[30]~_Duplicate_4_q\ & (\my_alu|Add0~60_combout\ & !\my_alu|Add1~59_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_a|q[30]~_Duplicate_4_q\,
	datab => \my_alu|Add0~60_combout\,
	datad => VCC,
	cin => \my_alu|Add1~59_cout\,
	cout => \my_alu|Add1~61_cout\);

-- Location: LCCOMB_X34_Y20_N16
\my_alu|Add1~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add1~62_combout\ = !\my_alu|diff[31]~1\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \my_alu|diff[31]~1\,
	combout => \my_alu|Add1~62_combout\);

-- Location: LCCOMB_X28_Y20_N10
\my_alu|Mux31~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux31~20_combout\ = (((!\input_reg_op|q\(1) & !\input_reg_op|q\(0))) # (!\my_alu|Add1~62_combout\)) # (!\input_reg_op|q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(3),
	datab => \input_reg_op|q\(1),
	datac => \my_alu|Add1~62_combout\,
	datad => \input_reg_op|q\(0),
	combout => \my_alu|Mux31~20_combout\);

-- Location: LCCOMB_X28_Y20_N28
\my_alu|Mux31~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux31~19_combout\ = (\input_reg_op|q\(2) & (\my_alu|Mux31~18_combout\ & ((\my_alu|Mux31~20_combout\)))) # (!\input_reg_op|q\(2) & (((\my_alu|Mux31~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mux31~18_combout\,
	datab => \input_reg_op|q\(2),
	datac => \my_alu|Mux31~11_combout\,
	datad => \my_alu|Mux31~20_combout\,
	combout => \my_alu|Mux31~19_combout\);

-- Location: FF_X28_Y20_N29
\output_reg_lo|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \my_alu|Mux31~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_reg_lo|q\(0));

-- Location: LCCOMB_X33_Y19_N18
\my_alu|ShiftRight1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight1~11_combout\ = (\input_reg_shamt|q\(1) & ((\input_reg_b|q[24]~_Duplicate_4_q\))) # (!\input_reg_shamt|q\(1) & (\input_reg_b|q[22]~_Duplicate_4_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input_reg_b|q[22]~_Duplicate_4_q\,
	datac => \input_reg_shamt|q\(1),
	datad => \input_reg_b|q[24]~_Duplicate_4_q\,
	combout => \my_alu|ShiftRight1~11_combout\);

-- Location: LCCOMB_X32_Y19_N4
\my_alu|ShiftRight0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight0~27_combout\ = (\input_reg_shamt|q\(0) & ((\my_alu|ShiftRight1~11_combout\))) # (!\input_reg_shamt|q\(0) & (\my_alu|ShiftRight0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input_reg_shamt|q\(0),
	datac => \my_alu|ShiftRight0~11_combout\,
	datad => \my_alu|ShiftRight1~11_combout\,
	combout => \my_alu|ShiftRight0~27_combout\);

-- Location: LCCOMB_X32_Y23_N22
\my_alu|ShiftRight1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight1~12_combout\ = (\input_reg_shamt|q\(1) & ((\input_reg_b|q[20]~_Duplicate_4_q\))) # (!\input_reg_shamt|q\(1) & (\input_reg_b|q[18]~_Duplicate_4_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input_reg_b|q[18]~_Duplicate_4_q\,
	datac => \input_reg_b|q[20]~_Duplicate_4_q\,
	datad => \input_reg_shamt|q\(1),
	combout => \my_alu|ShiftRight1~12_combout\);

-- Location: LCCOMB_X32_Y23_N0
\my_alu|ShiftRight0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight0~28_combout\ = (\input_reg_shamt|q\(0) & (\my_alu|ShiftRight1~12_combout\)) # (!\input_reg_shamt|q\(0) & ((\my_alu|ShiftRight0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(0),
	datac => \my_alu|ShiftRight1~12_combout\,
	datad => \my_alu|ShiftRight0~14_combout\,
	combout => \my_alu|ShiftRight0~28_combout\);

-- Location: LCCOMB_X32_Y19_N22
\my_alu|ShiftRight0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight0~29_combout\ = (\input_reg_shamt|q\(2) & (\my_alu|ShiftRight0~27_combout\)) # (!\input_reg_shamt|q\(2) & ((\my_alu|ShiftRight0~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input_reg_shamt|q\(2),
	datac => \my_alu|ShiftRight0~27_combout\,
	datad => \my_alu|ShiftRight0~28_combout\,
	combout => \my_alu|ShiftRight0~29_combout\);

-- Location: LCCOMB_X30_Y19_N14
\my_alu|ShiftRight1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight1~13_combout\ = (\input_reg_shamt|q\(1) & (\input_reg_b|q[28]~_Duplicate_4_q\)) # (!\input_reg_shamt|q\(1) & ((\input_reg_b|q[26]~_Duplicate_4_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[28]~_Duplicate_4_q\,
	datac => \input_reg_b|q[26]~_Duplicate_4_q\,
	datad => \input_reg_shamt|q\(1),
	combout => \my_alu|ShiftRight1~13_combout\);

-- Location: LCCOMB_X31_Y19_N26
\my_alu|ShiftRight0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight0~30_combout\ = (!\input_reg_shamt|q\(2) & ((\input_reg_shamt|q\(0) & ((\my_alu|ShiftRight1~13_combout\))) # (!\input_reg_shamt|q\(0) & (\my_alu|ShiftRight0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(2),
	datab => \my_alu|ShiftRight0~7_combout\,
	datac => \input_reg_shamt|q\(0),
	datad => \my_alu|ShiftRight1~13_combout\,
	combout => \my_alu|ShiftRight0~30_combout\);

-- Location: FF_X31_Y20_N31
\input_reg_b|q[30]~_Duplicate_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b[30]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_reg_b|q[30]~_Duplicate_4_q\);

-- Location: LCCOMB_X30_Y19_N28
\my_alu|ShiftRight1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight1~14_combout\ = (\input_reg_shamt|q\(0) & ((\input_reg_b|q[30]~_Duplicate_4_q\))) # (!\input_reg_shamt|q\(0) & (\input_reg_b|q[29]~_Duplicate_4_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[29]~_Duplicate_4_q\,
	datac => \input_reg_b|q[30]~_Duplicate_4_q\,
	datad => \input_reg_shamt|q\(0),
	combout => \my_alu|ShiftRight1~14_combout\);

-- Location: LCCOMB_X31_Y19_N24
\my_alu|ShiftRight1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight1~15_combout\ = (\input_reg_shamt|q\(2) & ((\input_reg_shamt|q\(1) & (\input_reg_b|q[31]~_Duplicate_4_q\)) # (!\input_reg_shamt|q\(1) & ((\my_alu|ShiftRight1~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(2),
	datab => \input_reg_b|q[31]~_Duplicate_4_q\,
	datac => \input_reg_shamt|q\(1),
	datad => \my_alu|ShiftRight1~14_combout\,
	combout => \my_alu|ShiftRight1~15_combout\);

-- Location: LCCOMB_X32_Y19_N12
\my_alu|ShiftRight1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight1~16_combout\ = (\input_reg_shamt|q\(3) & (((\my_alu|ShiftRight0~30_combout\) # (\my_alu|ShiftRight1~15_combout\)))) # (!\input_reg_shamt|q\(3) & (\my_alu|ShiftRight0~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(3),
	datab => \my_alu|ShiftRight0~29_combout\,
	datac => \my_alu|ShiftRight0~30_combout\,
	datad => \my_alu|ShiftRight1~15_combout\,
	combout => \my_alu|ShiftRight1~16_combout\);

-- Location: LCCOMB_X32_Y19_N30
\my_alu|Mux30~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux30~4_combout\ = (\input_reg_op|q\(1) & (((\my_alu|ShiftRight1~16_combout\)))) # (!\input_reg_op|q\(1) & (\my_alu|ShiftRight0~33_combout\ & (\input_reg_op|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|ShiftRight0~33_combout\,
	datab => \input_reg_op|q\(0),
	datac => \input_reg_op|q\(1),
	datad => \my_alu|ShiftRight1~16_combout\,
	combout => \my_alu|Mux30~4_combout\);

-- Location: FF_X34_Y19_N9
\input_reg_b|q[2]~_Duplicate_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_reg_b|q[2]~_Duplicate_4_q\);

-- Location: LCCOMB_X34_Y19_N8
\my_alu|Mux30~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux30~6_combout\ = (!\input_reg_shamt|q\(1) & ((\input_reg_shamt|q\(0) & ((\input_reg_b|q[2]~_Duplicate_4_q\))) # (!\input_reg_shamt|q\(0) & (\input_reg_b|q[1]~_Duplicate_4_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(0),
	datab => \input_reg_b|q[1]~_Duplicate_4_q\,
	datac => \input_reg_b|q[2]~_Duplicate_4_q\,
	datad => \input_reg_shamt|q\(1),
	combout => \my_alu|Mux30~6_combout\);

-- Location: LCCOMB_X34_Y19_N0
\my_alu|ShiftRight1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight1~17_combout\ = (\input_reg_shamt|q\(0) & ((\input_reg_b|q[4]~_Duplicate_4_q\))) # (!\input_reg_shamt|q\(0) & (\input_reg_b|q[3]~_Duplicate_4_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(0),
	datab => \input_reg_b|q[3]~_Duplicate_4_q\,
	datad => \input_reg_b|q[4]~_Duplicate_4_q\,
	combout => \my_alu|ShiftRight1~17_combout\);

-- Location: LCCOMB_X34_Y19_N16
\my_alu|Mux30~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux30~7_combout\ = (!\input_reg_shamt|q\(2) & ((\my_alu|Mux30~6_combout\) # ((\input_reg_shamt|q\(1) & \my_alu|ShiftRight1~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(2),
	datab => \input_reg_shamt|q\(1),
	datac => \my_alu|Mux30~6_combout\,
	datad => \my_alu|ShiftRight1~17_combout\,
	combout => \my_alu|Mux30~7_combout\);

-- Location: IOIBUF_X62_Y0_N15
\shamt[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_shamt(3),
	o => \shamt[3]~input_o\);

-- Location: FF_X31_Y19_N5
\input_reg_shamt|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \shamt[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_reg_shamt|q\(3));

-- Location: FF_X34_Y22_N9
\input_reg_b|q[7]~_Duplicate_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b[7]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_reg_b|q[7]~_Duplicate_4_q\);

-- Location: LCCOMB_X34_Y22_N8
\my_alu|ShiftRight0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight0~35_combout\ = (\input_reg_shamt|q\(1) & ((\input_reg_shamt|q\(0) & ((\input_reg_b|q[8]~_Duplicate_4_q\))) # (!\input_reg_shamt|q\(0) & (\input_reg_b|q[7]~_Duplicate_4_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(1),
	datab => \input_reg_shamt|q\(0),
	datac => \input_reg_b|q[7]~_Duplicate_4_q\,
	datad => \input_reg_b|q[8]~_Duplicate_4_q\,
	combout => \my_alu|ShiftRight0~35_combout\);

-- Location: LCCOMB_X34_Y22_N2
\my_alu|ShiftRight1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight1~18_combout\ = (\input_reg_shamt|q\(0) & (\input_reg_b|q[6]~_Duplicate_4_q\)) # (!\input_reg_shamt|q\(0) & ((\input_reg_b|q[5]~_Duplicate_4_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(0),
	datac => \input_reg_b|q[6]~_Duplicate_4_q\,
	datad => \input_reg_b|q[5]~_Duplicate_4_q\,
	combout => \my_alu|ShiftRight1~18_combout\);

-- Location: LCCOMB_X34_Y22_N4
\my_alu|ShiftRight0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight0~36_combout\ = (\my_alu|ShiftRight0~35_combout\) # ((!\input_reg_shamt|q\(1) & \my_alu|ShiftRight1~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(1),
	datab => \my_alu|ShiftRight0~35_combout\,
	datad => \my_alu|ShiftRight1~18_combout\,
	combout => \my_alu|ShiftRight0~36_combout\);

-- Location: LCCOMB_X34_Y19_N14
\my_alu|Mux30~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux30~8_combout\ = (!\input_reg_shamt|q\(3) & ((\my_alu|Mux30~7_combout\) # ((\input_reg_shamt|q\(2) & \my_alu|ShiftRight0~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(2),
	datab => \my_alu|Mux30~7_combout\,
	datac => \input_reg_shamt|q\(3),
	datad => \my_alu|ShiftRight0~36_combout\,
	combout => \my_alu|Mux30~8_combout\);

-- Location: FF_X34_Y22_N5
\input_reg_b|q[9]~_Duplicate_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b[9]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_reg_b|q[9]~_Duplicate_4_q\);

-- Location: LCCOMB_X33_Y23_N14
\my_alu|ShiftRight0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight0~23_combout\ = (\input_reg_shamt|q\(1) & (\input_reg_b|q[11]~_Duplicate_4_q\)) # (!\input_reg_shamt|q\(1) & ((\input_reg_b|q[9]~_Duplicate_4_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input_reg_b|q[11]~_Duplicate_4_q\,
	datac => \input_reg_b|q[9]~_Duplicate_4_q\,
	datad => \input_reg_shamt|q\(1),
	combout => \my_alu|ShiftRight0~23_combout\);

-- Location: LCCOMB_X34_Y23_N12
\my_alu|ShiftRight1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight1~20_combout\ = (\input_reg_shamt|q\(1) & ((\input_reg_b|q[12]~_Duplicate_4_q\))) # (!\input_reg_shamt|q\(1) & (\input_reg_b|q[10]~_Duplicate_4_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[10]~_Duplicate_4_q\,
	datac => \input_reg_shamt|q\(1),
	datad => \input_reg_b|q[12]~_Duplicate_4_q\,
	combout => \my_alu|ShiftRight1~20_combout\);

-- Location: LCCOMB_X32_Y20_N26
\my_alu|ShiftRight0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight0~38_combout\ = (\input_reg_shamt|q\(0) & ((\my_alu|ShiftRight1~20_combout\))) # (!\input_reg_shamt|q\(0) & (\my_alu|ShiftRight0~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(0),
	datac => \my_alu|ShiftRight0~23_combout\,
	datad => \my_alu|ShiftRight1~20_combout\,
	combout => \my_alu|ShiftRight0~38_combout\);

-- Location: LCCOMB_X33_Y22_N16
\my_alu|ShiftRight1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight1~19_combout\ = (\input_reg_shamt|q\(1) & ((\input_reg_b|q[16]~_Duplicate_4_q\))) # (!\input_reg_shamt|q\(1) & (\input_reg_b|q[14]~_Duplicate_4_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input_reg_b|q[14]~_Duplicate_4_q\,
	datac => \input_reg_shamt|q\(1),
	datad => \input_reg_b|q[16]~_Duplicate_4_q\,
	combout => \my_alu|ShiftRight1~19_combout\);

-- Location: LCCOMB_X32_Y20_N20
\my_alu|ShiftRight0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight0~37_combout\ = (\input_reg_shamt|q\(0) & ((\my_alu|ShiftRight1~19_combout\))) # (!\input_reg_shamt|q\(0) & (\my_alu|ShiftRight0~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(0),
	datac => \my_alu|ShiftRight0~20_combout\,
	datad => \my_alu|ShiftRight1~19_combout\,
	combout => \my_alu|ShiftRight0~37_combout\);

-- Location: LCCOMB_X32_Y20_N24
\my_alu|ShiftRight0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight0~39_combout\ = (\input_reg_shamt|q\(2) & ((\my_alu|ShiftRight0~37_combout\))) # (!\input_reg_shamt|q\(2) & (\my_alu|ShiftRight0~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input_reg_shamt|q\(2),
	datac => \my_alu|ShiftRight0~38_combout\,
	datad => \my_alu|ShiftRight0~37_combout\,
	combout => \my_alu|ShiftRight0~39_combout\);

-- Location: LCCOMB_X32_Y19_N24
\my_alu|Mux30~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux30~9_combout\ = (!\my_alu|Mux0~0_combout\ & ((\my_alu|Mux30~8_combout\) # ((\input_reg_shamt|q\(3) & \my_alu|ShiftRight0~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(3),
	datab => \my_alu|Mux30~8_combout\,
	datac => \my_alu|ShiftRight0~39_combout\,
	datad => \my_alu|Mux0~0_combout\,
	combout => \my_alu|Mux30~9_combout\);

-- Location: LCCOMB_X32_Y19_N14
\my_alu|Mux30~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux30~10_combout\ = (\input_reg_shamt|q\(4) & (((\my_alu|Mux30~4_combout\)))) # (!\input_reg_shamt|q\(4) & ((\my_alu|Mux30~5_combout\) # ((\my_alu|Mux30~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mux30~5_combout\,
	datab => \input_reg_shamt|q\(4),
	datac => \my_alu|Mux30~4_combout\,
	datad => \my_alu|Mux30~9_combout\,
	combout => \my_alu|Mux30~10_combout\);

-- Location: FF_X32_Y22_N21
\input_reg_a|q[0]~_Duplicate_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_reg_a|q[0]~_Duplicate_4_q\);

-- Location: LCCOMB_X32_Y22_N2
\my_alu|Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add3~2_combout\ = (\input_reg_b|q[1]~_Duplicate_4_q\ & ((\input_reg_a|q[1]~_Duplicate_4_q\ & (!\my_alu|Add3~1\)) # (!\input_reg_a|q[1]~_Duplicate_4_q\ & ((\my_alu|Add3~1\) # (GND))))) # (!\input_reg_b|q[1]~_Duplicate_4_q\ & 
-- ((\input_reg_a|q[1]~_Duplicate_4_q\ & (\my_alu|Add3~1\ & VCC)) # (!\input_reg_a|q[1]~_Duplicate_4_q\ & (!\my_alu|Add3~1\))))
-- \my_alu|Add3~3\ = CARRY((\input_reg_b|q[1]~_Duplicate_4_q\ & ((!\my_alu|Add3~1\) # (!\input_reg_a|q[1]~_Duplicate_4_q\))) # (!\input_reg_b|q[1]~_Duplicate_4_q\ & (!\input_reg_a|q[1]~_Duplicate_4_q\ & !\my_alu|Add3~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[1]~_Duplicate_4_q\,
	datab => \input_reg_a|q[1]~_Duplicate_4_q\,
	datad => VCC,
	cin => \my_alu|Add3~1\,
	combout => \my_alu|Add3~2_combout\,
	cout => \my_alu|Add3~3\);

-- Location: LCCOMB_X30_Y22_N2
\my_alu|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add2~2_combout\ = (\input_reg_b|q[1]~_Duplicate_4_q\ & ((\input_reg_a|q[1]~_Duplicate_4_q\ & (\my_alu|Add2~1\ & VCC)) # (!\input_reg_a|q[1]~_Duplicate_4_q\ & (!\my_alu|Add2~1\)))) # (!\input_reg_b|q[1]~_Duplicate_4_q\ & 
-- ((\input_reg_a|q[1]~_Duplicate_4_q\ & (!\my_alu|Add2~1\)) # (!\input_reg_a|q[1]~_Duplicate_4_q\ & ((\my_alu|Add2~1\) # (GND)))))
-- \my_alu|Add2~3\ = CARRY((\input_reg_b|q[1]~_Duplicate_4_q\ & (!\input_reg_a|q[1]~_Duplicate_4_q\ & !\my_alu|Add2~1\)) # (!\input_reg_b|q[1]~_Duplicate_4_q\ & ((!\my_alu|Add2~1\) # (!\input_reg_a|q[1]~_Duplicate_4_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[1]~_Duplicate_4_q\,
	datab => \input_reg_a|q[1]~_Duplicate_4_q\,
	datad => VCC,
	cin => \my_alu|Add2~1\,
	combout => \my_alu|Add2~2_combout\,
	cout => \my_alu|Add2~3\);

-- Location: LCCOMB_X29_Y20_N24
\my_alu|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux30~0_combout\ = (\input_reg_op|q\(1) & ((\my_alu|Mult0|auto_generated|w569w\(1)) # ((\input_reg_op|q\(0))))) # (!\input_reg_op|q\(1) & (((\my_alu|Add2~2_combout\ & !\input_reg_op|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(1),
	datab => \my_alu|Mult0|auto_generated|w569w\(1),
	datac => \my_alu|Add2~2_combout\,
	datad => \input_reg_op|q\(0),
	combout => \my_alu|Mux30~0_combout\);

-- Location: LCCOMB_X29_Y20_N30
\my_alu|Mux30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux30~1_combout\ = (\input_reg_op|q\(0) & ((\my_alu|Mux30~0_combout\ & ((\my_alu|Mult1|auto_generated|w513w\(1)))) # (!\my_alu|Mux30~0_combout\ & (\my_alu|Add3~2_combout\)))) # (!\input_reg_op|q\(0) & (((\my_alu|Mux30~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(0),
	datab => \my_alu|Add3~2_combout\,
	datac => \my_alu|Mult1|auto_generated|w513w\(1),
	datad => \my_alu|Mux30~0_combout\,
	combout => \my_alu|Mux30~1_combout\);

-- Location: LCCOMB_X30_Y20_N4
\my_alu|Mux30~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux30~2_combout\ = (\input_reg_b|q[1]~_Duplicate_4_q\ & ((\input_reg_a|q[1]~_Duplicate_4_q\ & ((!\input_reg_op|q\(1)))) # (!\input_reg_a|q[1]~_Duplicate_4_q\ & (\input_reg_op|q\(0))))) # (!\input_reg_b|q[1]~_Duplicate_4_q\ & ((\input_reg_op|q\(0) 
-- & (\input_reg_a|q[1]~_Duplicate_4_q\)) # (!\input_reg_op|q\(0) & (!\input_reg_a|q[1]~_Duplicate_4_q\ & \input_reg_op|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(0),
	datab => \input_reg_b|q[1]~_Duplicate_4_q\,
	datac => \input_reg_a|q[1]~_Duplicate_4_q\,
	datad => \input_reg_op|q\(1),
	combout => \my_alu|Mux30~2_combout\);

-- Location: LCCOMB_X29_Y20_N28
\my_alu|Mux30~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux30~3_combout\ = (!\input_reg_op|q\(3) & ((\input_reg_op|q\(2) & (\my_alu|Mux30~1_combout\)) # (!\input_reg_op|q\(2) & ((\my_alu|Mux30~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(2),
	datab => \input_reg_op|q\(3),
	datac => \my_alu|Mux30~1_combout\,
	datad => \my_alu|Mux30~2_combout\,
	combout => \my_alu|Mux30~3_combout\);

-- Location: LCCOMB_X29_Y20_N4
\my_alu|Mux30~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux30~11_combout\ = (\my_alu|Mux30~3_combout\) # ((!\input_reg_op|q\(2) & (\input_reg_op|q\(3) & \my_alu|Mux30~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(2),
	datab => \input_reg_op|q\(3),
	datac => \my_alu|Mux30~10_combout\,
	datad => \my_alu|Mux30~3_combout\,
	combout => \my_alu|Mux30~11_combout\);

-- Location: FF_X29_Y20_N5
\output_reg_lo|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \my_alu|Mux30~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_reg_lo|q\(1));

-- Location: LCCOMB_X30_Y22_N4
\my_alu|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add2~4_combout\ = ((\input_reg_b|q[2]~_Duplicate_4_q\ $ (\input_reg_a|q[2]~_Duplicate_4_q\ $ (!\my_alu|Add2~3\)))) # (GND)
-- \my_alu|Add2~5\ = CARRY((\input_reg_b|q[2]~_Duplicate_4_q\ & ((\input_reg_a|q[2]~_Duplicate_4_q\) # (!\my_alu|Add2~3\))) # (!\input_reg_b|q[2]~_Duplicate_4_q\ & (\input_reg_a|q[2]~_Duplicate_4_q\ & !\my_alu|Add2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[2]~_Duplicate_4_q\,
	datab => \input_reg_a|q[2]~_Duplicate_4_q\,
	datad => VCC,
	cin => \my_alu|Add2~3\,
	combout => \my_alu|Add2~4_combout\,
	cout => \my_alu|Add2~5\);

-- Location: LCCOMB_X32_Y22_N4
\my_alu|Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add3~4_combout\ = ((\input_reg_b|q[2]~_Duplicate_4_q\ $ (\input_reg_a|q[2]~_Duplicate_4_q\ $ (\my_alu|Add3~3\)))) # (GND)
-- \my_alu|Add3~5\ = CARRY((\input_reg_b|q[2]~_Duplicate_4_q\ & (\input_reg_a|q[2]~_Duplicate_4_q\ & !\my_alu|Add3~3\)) # (!\input_reg_b|q[2]~_Duplicate_4_q\ & ((\input_reg_a|q[2]~_Duplicate_4_q\) # (!\my_alu|Add3~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[2]~_Duplicate_4_q\,
	datab => \input_reg_a|q[2]~_Duplicate_4_q\,
	datad => VCC,
	cin => \my_alu|Add3~3\,
	combout => \my_alu|Add3~4_combout\,
	cout => \my_alu|Add3~5\);

-- Location: LCCOMB_X26_Y22_N0
\my_alu|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux29~0_combout\ = (\input_reg_op|q\(1) & (((\input_reg_op|q\(0))))) # (!\input_reg_op|q\(1) & ((\input_reg_op|q\(0) & ((\my_alu|Add3~4_combout\))) # (!\input_reg_op|q\(0) & (\my_alu|Add2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(1),
	datab => \my_alu|Add2~4_combout\,
	datac => \input_reg_op|q\(0),
	datad => \my_alu|Add3~4_combout\,
	combout => \my_alu|Mux29~0_combout\);

-- Location: LCCOMB_X26_Y22_N26
\my_alu|Mux29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux29~1_combout\ = (\input_reg_op|q\(1) & ((\my_alu|Mux29~0_combout\ & (\my_alu|Mult1|auto_generated|w513w\(2))) # (!\my_alu|Mux29~0_combout\ & ((\my_alu|Mult0|auto_generated|w569w\(2)))))) # (!\input_reg_op|q\(1) & (\my_alu|Mux29~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(1),
	datab => \my_alu|Mux29~0_combout\,
	datac => \my_alu|Mult1|auto_generated|w513w\(2),
	datad => \my_alu|Mult0|auto_generated|w569w\(2),
	combout => \my_alu|Mux29~1_combout\);

-- Location: LCCOMB_X27_Y22_N12
\my_alu|Mux29~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux29~2_combout\ = (\input_reg_a|q[2]~_Duplicate_4_q\ & ((\input_reg_b|q[2]~_Duplicate_4_q\ & ((!\input_reg_op|q\(1)))) # (!\input_reg_b|q[2]~_Duplicate_4_q\ & (\input_reg_op|q\(0))))) # (!\input_reg_a|q[2]~_Duplicate_4_q\ & ((\input_reg_op|q\(0) 
-- & ((\input_reg_b|q[2]~_Duplicate_4_q\))) # (!\input_reg_op|q\(0) & (\input_reg_op|q\(1) & !\input_reg_b|q[2]~_Duplicate_4_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_a|q[2]~_Duplicate_4_q\,
	datab => \input_reg_op|q\(0),
	datac => \input_reg_op|q\(1),
	datad => \input_reg_b|q[2]~_Duplicate_4_q\,
	combout => \my_alu|Mux29~2_combout\);

-- Location: LCCOMB_X27_Y22_N22
\my_alu|Mux29~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux29~3_combout\ = (!\input_reg_op|q\(3) & ((\input_reg_op|q\(2) & (\my_alu|Mux29~1_combout\)) # (!\input_reg_op|q\(2) & ((\my_alu|Mux29~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(2),
	datab => \input_reg_op|q\(3),
	datac => \my_alu|Mux29~1_combout\,
	datad => \my_alu|Mux29~2_combout\,
	combout => \my_alu|Mux29~3_combout\);

-- Location: LCCOMB_X34_Y19_N26
\my_alu|ShiftLeft0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftLeft0~8_combout\ = (\my_alu|ShiftLeft0~7_combout\) # ((!\input_reg_shamt|q\(1) & (\input_reg_shamt|q\(0) & \input_reg_b|q[1]~_Duplicate_4_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|ShiftLeft0~7_combout\,
	datab => \input_reg_shamt|q\(1),
	datac => \input_reg_shamt|q\(0),
	datad => \input_reg_b|q[1]~_Duplicate_4_q\,
	combout => \my_alu|ShiftLeft0~8_combout\);

-- Location: LCCOMB_X29_Y19_N26
\my_alu|ShiftLeft0~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftLeft0~100_combout\ = (!\input_reg_shamt|q\(3) & (!\input_reg_shamt|q\(2) & \my_alu|ShiftLeft0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(3),
	datab => \input_reg_shamt|q\(2),
	datac => \my_alu|ShiftLeft0~8_combout\,
	combout => \my_alu|ShiftLeft0~100_combout\);

-- Location: LCCOMB_X30_Y19_N0
\my_alu|ShiftRight1~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight1~21_combout\ = (\input_reg_shamt|q\(0) & ((\input_reg_shamt|q\(1) & ((\input_reg_b|q[29]~_Duplicate_4_q\))) # (!\input_reg_shamt|q\(1) & (\input_reg_b|q[27]~_Duplicate_4_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(0),
	datab => \input_reg_b|q[27]~_Duplicate_4_q\,
	datac => \input_reg_b|q[29]~_Duplicate_4_q\,
	datad => \input_reg_shamt|q\(1),
	combout => \my_alu|ShiftRight1~21_combout\);

-- Location: LCCOMB_X30_Y19_N22
\my_alu|ShiftRight1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight1~22_combout\ = (\my_alu|ShiftRight1~21_combout\) # ((!\input_reg_shamt|q\(0) & \my_alu|ShiftRight1~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(0),
	datac => \my_alu|ShiftRight1~13_combout\,
	datad => \my_alu|ShiftRight1~21_combout\,
	combout => \my_alu|ShiftRight1~22_combout\);

-- Location: LCCOMB_X31_Y20_N26
\my_alu|ShiftRight1~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight1~27_combout\ = (\input_reg_shamt|q\(1) & (((\input_reg_b|q[31]~_Duplicate_4_q\)))) # (!\input_reg_shamt|q\(1) & ((\input_reg_shamt|q\(0) & ((\input_reg_b|q[31]~_Duplicate_4_q\))) # (!\input_reg_shamt|q\(0) & 
-- (\input_reg_b|q[30]~_Duplicate_4_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(1),
	datab => \input_reg_shamt|q\(0),
	datac => \input_reg_b|q[30]~_Duplicate_4_q\,
	datad => \input_reg_b|q[31]~_Duplicate_4_q\,
	combout => \my_alu|ShiftRight1~27_combout\);

-- Location: LCCOMB_X30_Y19_N30
\my_alu|ShiftRight1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight1~28_combout\ = (\input_reg_shamt|q\(2) & ((\my_alu|ShiftRight1~27_combout\))) # (!\input_reg_shamt|q\(2) & (\my_alu|ShiftRight1~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input_reg_shamt|q\(2),
	datac => \my_alu|ShiftRight1~22_combout\,
	datad => \my_alu|ShiftRight1~27_combout\,
	combout => \my_alu|ShiftRight1~28_combout\);

-- Location: LCCOMB_X33_Y19_N8
\my_alu|ShiftRight1~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight1~23_combout\ = (\input_reg_shamt|q\(1) & ((\input_reg_b|q[25]~_Duplicate_4_q\))) # (!\input_reg_shamt|q\(1) & (\input_reg_b|q[23]~_Duplicate_4_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[23]~_Duplicate_4_q\,
	datac => \input_reg_shamt|q\(1),
	datad => \input_reg_b|q[25]~_Duplicate_4_q\,
	combout => \my_alu|ShiftRight1~23_combout\);

-- Location: LCCOMB_X33_Y19_N14
\my_alu|ShiftRight1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight1~24_combout\ = (\input_reg_shamt|q\(0) & ((\my_alu|ShiftRight1~23_combout\))) # (!\input_reg_shamt|q\(0) & (\my_alu|ShiftRight1~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_alu|ShiftRight1~11_combout\,
	datac => \my_alu|ShiftRight1~23_combout\,
	datad => \input_reg_shamt|q\(0),
	combout => \my_alu|ShiftRight1~24_combout\);

-- Location: FF_X33_Y19_N21
\input_reg_b|q[21]~_Duplicate_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b[21]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_reg_b|q[21]~_Duplicate_4_q\);

-- Location: LCCOMB_X32_Y23_N6
\my_alu|ShiftRight1~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight1~25_combout\ = (\input_reg_shamt|q\(1) & ((\input_reg_b|q[21]~_Duplicate_4_q\))) # (!\input_reg_shamt|q\(1) & (\input_reg_b|q[19]~_Duplicate_4_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[19]~_Duplicate_4_q\,
	datac => \input_reg_shamt|q\(1),
	datad => \input_reg_b|q[21]~_Duplicate_4_q\,
	combout => \my_alu|ShiftRight1~25_combout\);

-- Location: LCCOMB_X32_Y23_N24
\my_alu|ShiftRight1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight1~26_combout\ = (\input_reg_shamt|q\(0) & ((\my_alu|ShiftRight1~25_combout\))) # (!\input_reg_shamt|q\(0) & (\my_alu|ShiftRight1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(0),
	datac => \my_alu|ShiftRight1~12_combout\,
	datad => \my_alu|ShiftRight1~25_combout\,
	combout => \my_alu|ShiftRight1~26_combout\);

-- Location: LCCOMB_X29_Y19_N12
\my_alu|ShiftRight0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight0~41_combout\ = (\input_reg_shamt|q\(2) & (\my_alu|ShiftRight1~24_combout\)) # (!\input_reg_shamt|q\(2) & ((\my_alu|ShiftRight1~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input_reg_shamt|q\(2),
	datac => \my_alu|ShiftRight1~24_combout\,
	datad => \my_alu|ShiftRight1~26_combout\,
	combout => \my_alu|ShiftRight0~41_combout\);

-- Location: LCCOMB_X29_Y19_N4
\my_alu|ShiftRight1~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight1~29_combout\ = (\input_reg_shamt|q\(3) & (\my_alu|ShiftRight1~28_combout\)) # (!\input_reg_shamt|q\(3) & ((\my_alu|ShiftRight0~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(3),
	datac => \my_alu|ShiftRight1~28_combout\,
	datad => \my_alu|ShiftRight0~41_combout\,
	combout => \my_alu|ShiftRight1~29_combout\);

-- Location: LCCOMB_X31_Y21_N4
\my_alu|Mux29~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux29~9_combout\ = (\input_reg_op|q\(1) & (!\input_reg_shamt|q\(4))) # (!\input_reg_op|q\(1) & ((\input_reg_op|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(4),
	datab => \input_reg_op|q\(1),
	datad => \input_reg_op|q\(0),
	combout => \my_alu|Mux29~9_combout\);

-- Location: LCCOMB_X29_Y20_N14
\my_alu|Mux29~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux29~8_combout\ = (!\input_reg_op|q\(1) & ((\input_reg_shamt|q\(4)) # (!\input_reg_op|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(0),
	datac => \input_reg_shamt|q\(4),
	datad => \input_reg_op|q\(1),
	combout => \my_alu|Mux29~8_combout\);

-- Location: LCCOMB_X29_Y19_N0
\my_alu|Mux29~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux29~10_combout\ = (\my_alu|Mux29~9_combout\ & ((\my_alu|Mux29~7_combout\) # ((\my_alu|Mux29~8_combout\)))) # (!\my_alu|Mux29~9_combout\ & (((\my_alu|ShiftRight1~29_combout\ & !\my_alu|Mux29~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mux29~7_combout\,
	datab => \my_alu|ShiftRight1~29_combout\,
	datac => \my_alu|Mux29~9_combout\,
	datad => \my_alu|Mux29~8_combout\,
	combout => \my_alu|Mux29~10_combout\);

-- Location: LCCOMB_X30_Y19_N20
\my_alu|ShiftRight0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight0~40_combout\ = (\input_reg_shamt|q\(2) & (((!\input_reg_shamt|q\(1) & \my_alu|ShiftRight1~8_combout\)))) # (!\input_reg_shamt|q\(2) & (\my_alu|ShiftRight1~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|ShiftRight1~22_combout\,
	datab => \input_reg_shamt|q\(2),
	datac => \input_reg_shamt|q\(1),
	datad => \my_alu|ShiftRight1~8_combout\,
	combout => \my_alu|ShiftRight0~40_combout\);

-- Location: LCCOMB_X29_Y19_N22
\my_alu|ShiftRight0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight0~42_combout\ = (\input_reg_shamt|q\(3) & (\my_alu|ShiftRight0~40_combout\)) # (!\input_reg_shamt|q\(3) & ((\my_alu|ShiftRight0~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(3),
	datac => \my_alu|ShiftRight0~40_combout\,
	datad => \my_alu|ShiftRight0~41_combout\,
	combout => \my_alu|ShiftRight0~42_combout\);

-- Location: LCCOMB_X28_Y19_N26
\my_alu|Mux29~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux29~11_combout\ = (\my_alu|Mux29~4_combout\ & ((\my_alu|Mux29~10_combout\ & ((\my_alu|ShiftRight0~42_combout\))) # (!\my_alu|Mux29~10_combout\ & (\my_alu|ShiftLeft0~100_combout\)))) # (!\my_alu|Mux29~4_combout\ & (((\my_alu|Mux29~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mux29~4_combout\,
	datab => \my_alu|ShiftLeft0~100_combout\,
	datac => \my_alu|Mux29~10_combout\,
	datad => \my_alu|ShiftRight0~42_combout\,
	combout => \my_alu|Mux29~11_combout\);

-- Location: LCCOMB_X27_Y22_N24
\my_alu|Mux29~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux29~12_combout\ = (\my_alu|Mux29~3_combout\) # ((!\input_reg_op|q\(2) & (\input_reg_op|q\(3) & \my_alu|Mux29~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(2),
	datab => \input_reg_op|q\(3),
	datac => \my_alu|Mux29~3_combout\,
	datad => \my_alu|Mux29~11_combout\,
	combout => \my_alu|Mux29~12_combout\);

-- Location: FF_X27_Y22_N25
\output_reg_lo|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \my_alu|Mux29~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_reg_lo|q\(2));

-- Location: LCCOMB_X32_Y19_N16
\my_alu|ShiftRight0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight0~34_combout\ = (!\input_reg_shamt|q\(2) & !\input_reg_shamt|q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input_reg_shamt|q\(2),
	datac => \input_reg_shamt|q\(3),
	combout => \my_alu|ShiftRight0~34_combout\);

-- Location: LCCOMB_X33_Y19_N28
\my_alu|ShiftLeft0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftLeft0~9_combout\ = (!\input_reg_shamt|q\(1) & ((\input_reg_shamt|q\(0) & ((\input_reg_b|q[2]~_Duplicate_4_q\))) # (!\input_reg_shamt|q\(0) & (\input_reg_b|q[3]~_Duplicate_4_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[3]~_Duplicate_4_q\,
	datab => \input_reg_shamt|q\(1),
	datac => \input_reg_b|q[2]~_Duplicate_4_q\,
	datad => \input_reg_shamt|q\(0),
	combout => \my_alu|ShiftLeft0~9_combout\);

-- Location: LCCOMB_X33_Y19_N6
\my_alu|ShiftLeft0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftLeft0~10_combout\ = (\my_alu|ShiftRight0~34_combout\ & ((\my_alu|ShiftLeft0~9_combout\) # ((\my_alu|ShiftLeft0~6_combout\ & \input_reg_shamt|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|ShiftLeft0~6_combout\,
	datab => \my_alu|ShiftRight0~34_combout\,
	datac => \my_alu|ShiftLeft0~9_combout\,
	datad => \input_reg_shamt|q\(1),
	combout => \my_alu|ShiftLeft0~10_combout\);

-- Location: LCCOMB_X30_Y20_N10
\my_alu|Mux29~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux29~4_combout\ = (!\input_reg_op|q\(1) & (\input_reg_op|q\(0) $ (!\input_reg_shamt|q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(0),
	datab => \input_reg_shamt|q\(4),
	datad => \input_reg_op|q\(1),
	combout => \my_alu|Mux29~4_combout\);

-- Location: LCCOMB_X30_Y19_N26
\my_alu|ShiftRight1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight1~38_combout\ = (\my_alu|ShiftRight1~37_combout\) # ((\input_reg_shamt|q\(1) & \my_alu|ShiftRight1~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|ShiftRight1~37_combout\,
	datab => \input_reg_shamt|q\(1),
	datad => \my_alu|ShiftRight1~14_combout\,
	combout => \my_alu|ShiftRight1~38_combout\);

-- Location: LCCOMB_X29_Y22_N4
\my_alu|ShiftRight1~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight1~41_combout\ = (\input_reg_shamt|q\(3) & ((\input_reg_shamt|q\(2) & (\input_reg_b|q[31]~_Duplicate_4_q\)) # (!\input_reg_shamt|q\(2) & ((\my_alu|ShiftRight1~38_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[31]~_Duplicate_4_q\,
	datab => \input_reg_shamt|q\(3),
	datac => \input_reg_shamt|q\(2),
	datad => \my_alu|ShiftRight1~38_combout\,
	combout => \my_alu|ShiftRight1~41_combout\);

-- Location: LCCOMB_X33_Y19_N12
\my_alu|ShiftRight1~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight1~39_combout\ = (\input_reg_shamt|q\(0) & ((\my_alu|ShiftRight0~8_combout\))) # (!\input_reg_shamt|q\(0) & (\my_alu|ShiftRight1~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(0),
	datac => \my_alu|ShiftRight1~23_combout\,
	datad => \my_alu|ShiftRight0~8_combout\,
	combout => \my_alu|ShiftRight1~39_combout\);

-- Location: LCCOMB_X32_Y23_N14
\my_alu|ShiftRight1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight1~40_combout\ = (\input_reg_shamt|q\(0) & (\my_alu|ShiftRight0~12_combout\)) # (!\input_reg_shamt|q\(0) & ((\my_alu|ShiftRight1~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(0),
	datac => \my_alu|ShiftRight0~12_combout\,
	datad => \my_alu|ShiftRight1~25_combout\,
	combout => \my_alu|ShiftRight1~40_combout\);

-- Location: LCCOMB_X30_Y23_N26
\my_alu|ShiftRight0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight0~45_combout\ = (\input_reg_shamt|q\(2) & (\my_alu|ShiftRight1~39_combout\)) # (!\input_reg_shamt|q\(2) & ((\my_alu|ShiftRight1~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input_reg_shamt|q\(2),
	datac => \my_alu|ShiftRight1~39_combout\,
	datad => \my_alu|ShiftRight1~40_combout\,
	combout => \my_alu|ShiftRight0~45_combout\);

-- Location: LCCOMB_X29_Y22_N22
\my_alu|ShiftRight1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight1~42_combout\ = (\my_alu|ShiftRight1~41_combout\) # ((!\input_reg_shamt|q\(3) & \my_alu|ShiftRight0~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input_reg_shamt|q\(3),
	datac => \my_alu|ShiftRight1~41_combout\,
	datad => \my_alu|ShiftRight0~45_combout\,
	combout => \my_alu|ShiftRight1~42_combout\);

-- Location: FF_X32_Y23_N11
\input_reg_b|q[17]~_Duplicate_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b[17]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_reg_b|q[17]~_Duplicate_4_q\);

-- Location: LCCOMB_X33_Y22_N22
\my_alu|ShiftRight1~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight1~33_combout\ = (\input_reg_shamt|q\(1) & ((\input_reg_b|q[17]~_Duplicate_4_q\))) # (!\input_reg_shamt|q\(1) & (\input_reg_b|q[15]~_Duplicate_4_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[15]~_Duplicate_4_q\,
	datac => \input_reg_shamt|q\(1),
	datad => \input_reg_b|q[17]~_Duplicate_4_q\,
	combout => \my_alu|ShiftRight1~33_combout\);

-- Location: LCCOMB_X33_Y22_N30
\my_alu|ShiftRight1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight1~44_combout\ = (\input_reg_shamt|q\(0) & ((\my_alu|ShiftRight0~15_combout\))) # (!\input_reg_shamt|q\(0) & (\my_alu|ShiftRight1~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(0),
	datac => \my_alu|ShiftRight1~33_combout\,
	datad => \my_alu|ShiftRight0~15_combout\,
	combout => \my_alu|ShiftRight1~44_combout\);

-- Location: LCCOMB_X34_Y23_N10
\my_alu|ShiftRight1~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight1~35_combout\ = (\input_reg_shamt|q\(1) & (\input_reg_b|q[13]~_Duplicate_4_q\)) # (!\input_reg_shamt|q\(1) & ((\input_reg_b|q[11]~_Duplicate_4_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[13]~_Duplicate_4_q\,
	datac => \input_reg_shamt|q\(1),
	datad => \input_reg_b|q[11]~_Duplicate_4_q\,
	combout => \my_alu|ShiftRight1~35_combout\);

-- Location: LCCOMB_X33_Y22_N4
\my_alu|ShiftRight1~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight1~45_combout\ = (\input_reg_shamt|q\(0) & (\my_alu|ShiftRight0~21_combout\)) # (!\input_reg_shamt|q\(0) & ((\my_alu|ShiftRight1~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(0),
	datac => \my_alu|ShiftRight0~21_combout\,
	datad => \my_alu|ShiftRight1~35_combout\,
	combout => \my_alu|ShiftRight1~45_combout\);

-- Location: LCCOMB_X28_Y22_N16
\my_alu|ShiftRight0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight0~47_combout\ = (\input_reg_shamt|q\(2) & (\my_alu|ShiftRight1~44_combout\)) # (!\input_reg_shamt|q\(2) & ((\my_alu|ShiftRight1~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_alu|ShiftRight1~44_combout\,
	datac => \input_reg_shamt|q\(2),
	datad => \my_alu|ShiftRight1~45_combout\,
	combout => \my_alu|ShiftRight0~47_combout\);

-- Location: LCCOMB_X35_Y22_N30
\my_alu|ShiftRight1~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight1~31_combout\ = (\input_reg_shamt|q\(1) & ((\input_reg_b|q[9]~_Duplicate_4_q\))) # (!\input_reg_shamt|q\(1) & (\input_reg_b|q[7]~_Duplicate_4_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[7]~_Duplicate_4_q\,
	datac => \input_reg_b|q[9]~_Duplicate_4_q\,
	datad => \input_reg_shamt|q\(1),
	combout => \my_alu|ShiftRight1~31_combout\);

-- Location: LCCOMB_X35_Y22_N14
\input_reg_b|q[10]~_Duplicate_4feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \input_reg_b|q[10]~_Duplicate_4feeder_combout\ = \b[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b[10]~input_o\,
	combout => \input_reg_b|q[10]~_Duplicate_4feeder_combout\);

-- Location: FF_X35_Y22_N15
\input_reg_b|q[10]~_Duplicate_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \input_reg_b|q[10]~_Duplicate_4feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_reg_b|q[10]~_Duplicate_4_q\);

-- Location: LCCOMB_X35_Y22_N28
\my_alu|ShiftRight0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight0~24_combout\ = (\input_reg_shamt|q\(1) & ((\input_reg_b|q[10]~_Duplicate_4_q\))) # (!\input_reg_shamt|q\(1) & (\input_reg_b|q[8]~_Duplicate_4_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[8]~_Duplicate_4_q\,
	datab => \input_reg_b|q[10]~_Duplicate_4_q\,
	datad => \input_reg_shamt|q\(1),
	combout => \my_alu|ShiftRight0~24_combout\);

-- Location: LCCOMB_X35_Y22_N6
\my_alu|ShiftRight1~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight1~43_combout\ = (\input_reg_shamt|q\(0) & ((\my_alu|ShiftRight0~24_combout\))) # (!\input_reg_shamt|q\(0) & (\my_alu|ShiftRight1~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(0),
	datac => \my_alu|ShiftRight1~31_combout\,
	datad => \my_alu|ShiftRight0~24_combout\,
	combout => \my_alu|ShiftRight1~43_combout\);

-- Location: LCCOMB_X31_Y22_N16
\my_alu|Mux28~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux28~4_combout\ = (\my_alu|Mux29~5_combout\ & (!\my_alu|ShiftRight0~34_combout\)) # (!\my_alu|Mux29~5_combout\ & ((\my_alu|ShiftRight0~34_combout\ & ((\my_alu|ShiftRight1~17_combout\))) # (!\my_alu|ShiftRight0~34_combout\ & 
-- (\my_alu|ShiftRight1~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mux29~5_combout\,
	datab => \my_alu|ShiftRight0~34_combout\,
	datac => \my_alu|ShiftRight1~43_combout\,
	datad => \my_alu|ShiftRight1~17_combout\,
	combout => \my_alu|Mux28~4_combout\);

-- Location: LCCOMB_X28_Y22_N10
\my_alu|Mux28~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux28~5_combout\ = (\my_alu|Mux29~5_combout\ & ((\my_alu|Mux28~4_combout\ & (\my_alu|ShiftRight0~47_combout\)) # (!\my_alu|Mux28~4_combout\ & ((\my_alu|ShiftRight1~18_combout\))))) # (!\my_alu|Mux29~5_combout\ & (((\my_alu|Mux28~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mux29~5_combout\,
	datab => \my_alu|ShiftRight0~47_combout\,
	datac => \my_alu|Mux28~4_combout\,
	datad => \my_alu|ShiftRight1~18_combout\,
	combout => \my_alu|Mux28~5_combout\);

-- Location: LCCOMB_X29_Y22_N12
\my_alu|Mux28~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux28~6_combout\ = (\my_alu|Mux29~8_combout\ & (\my_alu|Mux29~9_combout\)) # (!\my_alu|Mux29~8_combout\ & ((\my_alu|Mux29~9_combout\ & ((\my_alu|Mux28~5_combout\))) # (!\my_alu|Mux29~9_combout\ & (\my_alu|ShiftRight1~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mux29~8_combout\,
	datab => \my_alu|Mux29~9_combout\,
	datac => \my_alu|ShiftRight1~42_combout\,
	datad => \my_alu|Mux28~5_combout\,
	combout => \my_alu|Mux28~6_combout\);

-- Location: LCCOMB_X29_Y22_N10
\my_alu|Mux28~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux28~7_combout\ = (\my_alu|Mux29~4_combout\ & ((\my_alu|Mux28~6_combout\ & (\my_alu|ShiftRight0~46_combout\)) # (!\my_alu|Mux28~6_combout\ & ((\my_alu|ShiftLeft0~10_combout\))))) # (!\my_alu|Mux29~4_combout\ & (((\my_alu|Mux28~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|ShiftRight0~46_combout\,
	datab => \my_alu|ShiftLeft0~10_combout\,
	datac => \my_alu|Mux29~4_combout\,
	datad => \my_alu|Mux28~6_combout\,
	combout => \my_alu|Mux28~7_combout\);

-- Location: LCCOMB_X27_Y22_N14
\my_alu|Mux28~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux28~2_combout\ = (\input_reg_a|q[3]~_Duplicate_4_q\ & ((\input_reg_b|q[3]~_Duplicate_4_q\ & ((!\input_reg_op|q\(1)))) # (!\input_reg_b|q[3]~_Duplicate_4_q\ & (\input_reg_op|q\(0))))) # (!\input_reg_a|q[3]~_Duplicate_4_q\ & ((\input_reg_op|q\(0) 
-- & ((\input_reg_b|q[3]~_Duplicate_4_q\))) # (!\input_reg_op|q\(0) & (\input_reg_op|q\(1) & !\input_reg_b|q[3]~_Duplicate_4_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_a|q[3]~_Duplicate_4_q\,
	datab => \input_reg_op|q\(0),
	datac => \input_reg_op|q\(1),
	datad => \input_reg_b|q[3]~_Duplicate_4_q\,
	combout => \my_alu|Mux28~2_combout\);

-- Location: FF_X34_Y22_N7
\input_reg_a|q[3]~_Duplicate_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_reg_a|q[3]~_Duplicate_4_q\);

-- Location: LCCOMB_X32_Y22_N6
\my_alu|Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add3~6_combout\ = (\input_reg_b|q[3]~_Duplicate_4_q\ & ((\input_reg_a|q[3]~_Duplicate_4_q\ & (!\my_alu|Add3~5\)) # (!\input_reg_a|q[3]~_Duplicate_4_q\ & ((\my_alu|Add3~5\) # (GND))))) # (!\input_reg_b|q[3]~_Duplicate_4_q\ & 
-- ((\input_reg_a|q[3]~_Duplicate_4_q\ & (\my_alu|Add3~5\ & VCC)) # (!\input_reg_a|q[3]~_Duplicate_4_q\ & (!\my_alu|Add3~5\))))
-- \my_alu|Add3~7\ = CARRY((\input_reg_b|q[3]~_Duplicate_4_q\ & ((!\my_alu|Add3~5\) # (!\input_reg_a|q[3]~_Duplicate_4_q\))) # (!\input_reg_b|q[3]~_Duplicate_4_q\ & (!\input_reg_a|q[3]~_Duplicate_4_q\ & !\my_alu|Add3~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[3]~_Duplicate_4_q\,
	datab => \input_reg_a|q[3]~_Duplicate_4_q\,
	datad => VCC,
	cin => \my_alu|Add3~5\,
	combout => \my_alu|Add3~6_combout\,
	cout => \my_alu|Add3~7\);

-- Location: LCCOMB_X30_Y22_N6
\my_alu|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add2~6_combout\ = (\input_reg_a|q[3]~_Duplicate_4_q\ & ((\input_reg_b|q[3]~_Duplicate_4_q\ & (\my_alu|Add2~5\ & VCC)) # (!\input_reg_b|q[3]~_Duplicate_4_q\ & (!\my_alu|Add2~5\)))) # (!\input_reg_a|q[3]~_Duplicate_4_q\ & 
-- ((\input_reg_b|q[3]~_Duplicate_4_q\ & (!\my_alu|Add2~5\)) # (!\input_reg_b|q[3]~_Duplicate_4_q\ & ((\my_alu|Add2~5\) # (GND)))))
-- \my_alu|Add2~7\ = CARRY((\input_reg_a|q[3]~_Duplicate_4_q\ & (!\input_reg_b|q[3]~_Duplicate_4_q\ & !\my_alu|Add2~5\)) # (!\input_reg_a|q[3]~_Duplicate_4_q\ & ((!\my_alu|Add2~5\) # (!\input_reg_b|q[3]~_Duplicate_4_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_a|q[3]~_Duplicate_4_q\,
	datab => \input_reg_b|q[3]~_Duplicate_4_q\,
	datad => VCC,
	cin => \my_alu|Add2~5\,
	combout => \my_alu|Add2~6_combout\,
	cout => \my_alu|Add2~7\);

-- Location: LCCOMB_X27_Y22_N4
\my_alu|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux28~0_combout\ = (\input_reg_op|q\(1) & (((\input_reg_op|q\(0))))) # (!\input_reg_op|q\(1) & ((\input_reg_op|q\(0) & (\my_alu|Add3~6_combout\)) # (!\input_reg_op|q\(0) & ((\my_alu|Add2~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(1),
	datab => \my_alu|Add3~6_combout\,
	datac => \input_reg_op|q\(0),
	datad => \my_alu|Add2~6_combout\,
	combout => \my_alu|Mux28~0_combout\);

-- Location: LCCOMB_X26_Y22_N24
\my_alu|Mux28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux28~1_combout\ = (\input_reg_op|q\(1) & ((\my_alu|Mux28~0_combout\ & ((\my_alu|Mult1|auto_generated|w513w\(3)))) # (!\my_alu|Mux28~0_combout\ & (\my_alu|Mult0|auto_generated|w569w\(3))))) # (!\input_reg_op|q\(1) & (((\my_alu|Mux28~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(1),
	datab => \my_alu|Mult0|auto_generated|w569w\(3),
	datac => \my_alu|Mult1|auto_generated|w513w\(3),
	datad => \my_alu|Mux28~0_combout\,
	combout => \my_alu|Mux28~1_combout\);

-- Location: LCCOMB_X27_Y22_N20
\my_alu|Mux28~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux28~3_combout\ = (!\input_reg_op|q\(3) & ((\input_reg_op|q\(2) & ((\my_alu|Mux28~1_combout\))) # (!\input_reg_op|q\(2) & (\my_alu|Mux28~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(2),
	datab => \input_reg_op|q\(3),
	datac => \my_alu|Mux28~2_combout\,
	datad => \my_alu|Mux28~1_combout\,
	combout => \my_alu|Mux28~3_combout\);

-- Location: LCCOMB_X27_Y22_N26
\my_alu|Mux28~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux28~8_combout\ = (\my_alu|Mux28~3_combout\) # ((!\input_reg_op|q\(2) & (\input_reg_op|q\(3) & \my_alu|Mux28~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(2),
	datab => \input_reg_op|q\(3),
	datac => \my_alu|Mux28~7_combout\,
	datad => \my_alu|Mux28~3_combout\,
	combout => \my_alu|Mux28~8_combout\);

-- Location: FF_X27_Y22_N27
\output_reg_lo|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \my_alu|Mux28~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_reg_lo|q\(3));

-- Location: FF_X32_Y22_N25
\input_reg_a|q[4]~_Duplicate_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a[4]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_reg_a|q[4]~_Duplicate_4_q\);

-- Location: LCCOMB_X32_Y22_N8
\my_alu|Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add3~8_combout\ = ((\input_reg_b|q[4]~_Duplicate_4_q\ $ (\input_reg_a|q[4]~_Duplicate_4_q\ $ (\my_alu|Add3~7\)))) # (GND)
-- \my_alu|Add3~9\ = CARRY((\input_reg_b|q[4]~_Duplicate_4_q\ & (\input_reg_a|q[4]~_Duplicate_4_q\ & !\my_alu|Add3~7\)) # (!\input_reg_b|q[4]~_Duplicate_4_q\ & ((\input_reg_a|q[4]~_Duplicate_4_q\) # (!\my_alu|Add3~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[4]~_Duplicate_4_q\,
	datab => \input_reg_a|q[4]~_Duplicate_4_q\,
	datad => VCC,
	cin => \my_alu|Add3~7\,
	combout => \my_alu|Add3~8_combout\,
	cout => \my_alu|Add3~9\);

-- Location: LCCOMB_X30_Y22_N8
\my_alu|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add2~8_combout\ = ((\input_reg_a|q[4]~_Duplicate_4_q\ $ (\input_reg_b|q[4]~_Duplicate_4_q\ $ (!\my_alu|Add2~7\)))) # (GND)
-- \my_alu|Add2~9\ = CARRY((\input_reg_a|q[4]~_Duplicate_4_q\ & ((\input_reg_b|q[4]~_Duplicate_4_q\) # (!\my_alu|Add2~7\))) # (!\input_reg_a|q[4]~_Duplicate_4_q\ & (\input_reg_b|q[4]~_Duplicate_4_q\ & !\my_alu|Add2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_a|q[4]~_Duplicate_4_q\,
	datab => \input_reg_b|q[4]~_Duplicate_4_q\,
	datad => VCC,
	cin => \my_alu|Add2~7\,
	combout => \my_alu|Add2~8_combout\,
	cout => \my_alu|Add2~9\);

-- Location: LCCOMB_X28_Y22_N0
\my_alu|Mux27~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux27~12_combout\ = (\input_reg_op|q\(0) & ((\input_reg_op|q\(1)) # ((\my_alu|Add3~8_combout\)))) # (!\input_reg_op|q\(0) & (!\input_reg_op|q\(1) & ((\my_alu|Add2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(0),
	datab => \input_reg_op|q\(1),
	datac => \my_alu|Add3~8_combout\,
	datad => \my_alu|Add2~8_combout\,
	combout => \my_alu|Mux27~12_combout\);

-- Location: LCCOMB_X28_Y23_N8
\my_alu|Mux27~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux27~13_combout\ = (\input_reg_op|q\(1) & ((\my_alu|Mux27~12_combout\ & ((\my_alu|Mult1|auto_generated|w513w\(4)))) # (!\my_alu|Mux27~12_combout\ & (\my_alu|Mult0|auto_generated|w569w\(4))))) # (!\input_reg_op|q\(1) & (\my_alu|Mux27~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(1),
	datab => \my_alu|Mux27~12_combout\,
	datac => \my_alu|Mult0|auto_generated|w569w\(4),
	datad => \my_alu|Mult1|auto_generated|w513w\(4),
	combout => \my_alu|Mux27~13_combout\);

-- Location: LCCOMB_X29_Y20_N12
\my_alu|Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux27~0_combout\ = (!\input_reg_op|q\(2) & (\my_alu|Mux29~8_combout\ & \input_reg_op|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(2),
	datac => \my_alu|Mux29~8_combout\,
	datad => \input_reg_op|q\(3),
	combout => \my_alu|Mux27~0_combout\);

-- Location: LCCOMB_X27_Y22_N2
\my_alu|Mux27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux27~1_combout\ = (\input_reg_op|q\(3) & ((\input_reg_op|q\(2)) # ((\input_reg_op|q\(0)) # (\input_reg_op|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(2),
	datab => \input_reg_op|q\(0),
	datac => \input_reg_op|q\(1),
	datad => \input_reg_op|q\(3),
	combout => \my_alu|Mux27~1_combout\);

-- Location: LCCOMB_X28_Y23_N16
\my_alu|Mux27~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux27~2_combout\ = (\my_alu|Mux27~0_combout\ & ((\my_alu|Mux27~1_combout\) # (!\input_reg_shamt|q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input_reg_shamt|q\(4),
	datac => \my_alu|Mux27~0_combout\,
	datad => \my_alu|Mux27~1_combout\,
	combout => \my_alu|Mux27~2_combout\);

-- Location: LCCOMB_X31_Y19_N28
\my_alu|ShiftRight0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight0~48_combout\ = (\input_reg_shamt|q\(2) & ((\my_alu|ShiftRight0~9_combout\))) # (!\input_reg_shamt|q\(2) & (\my_alu|ShiftRight0~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(2),
	datab => \my_alu|ShiftRight0~13_combout\,
	datad => \my_alu|ShiftRight0~9_combout\,
	combout => \my_alu|ShiftRight0~48_combout\);

-- Location: LCCOMB_X31_Y19_N10
\my_alu|ShiftRight0~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight0~49_combout\ = (\input_reg_shamt|q\(3) & (!\input_reg_shamt|q\(2) & (\my_alu|ShiftRight0~6_combout\))) # (!\input_reg_shamt|q\(3) & (((\my_alu|ShiftRight0~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(2),
	datab => \my_alu|ShiftRight0~6_combout\,
	datac => \input_reg_shamt|q\(3),
	datad => \my_alu|ShiftRight0~48_combout\,
	combout => \my_alu|ShiftRight0~49_combout\);

-- Location: LCCOMB_X35_Y22_N8
\my_alu|Mux27~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux27~3_combout\ = (\input_reg_a|q[4]~_Duplicate_4_q\ & ((\input_reg_b|q[4]~_Duplicate_4_q\ & (!\input_reg_op|q\(1))) # (!\input_reg_b|q[4]~_Duplicate_4_q\ & ((\input_reg_op|q\(0)))))) # (!\input_reg_a|q[4]~_Duplicate_4_q\ & ((\input_reg_op|q\(0) 
-- & ((\input_reg_b|q[4]~_Duplicate_4_q\))) # (!\input_reg_op|q\(0) & (\input_reg_op|q\(1) & !\input_reg_b|q[4]~_Duplicate_4_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_a|q[4]~_Duplicate_4_q\,
	datab => \input_reg_op|q\(1),
	datac => \input_reg_op|q\(0),
	datad => \input_reg_b|q[4]~_Duplicate_4_q\,
	combout => \my_alu|Mux27~3_combout\);

-- Location: LCCOMB_X31_Y20_N18
\my_alu|ShiftRight0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight0~50_combout\ = (\input_reg_shamt|q\(2) & (\my_alu|ShiftRight0~16_combout\)) # (!\input_reg_shamt|q\(2) & ((\my_alu|ShiftRight0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(2),
	datab => \my_alu|ShiftRight0~16_combout\,
	datad => \my_alu|ShiftRight0~22_combout\,
	combout => \my_alu|ShiftRight0~50_combout\);

-- Location: LCCOMB_X30_Y18_N18
\my_alu|Mux27~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux27~4_combout\ = (!\input_reg_shamt|q\(4) & ((\input_reg_op|q\(0)) # (\input_reg_op|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input_reg_shamt|q\(4),
	datac => \input_reg_op|q\(0),
	datad => \input_reg_op|q\(1),
	combout => \my_alu|Mux27~4_combout\);

-- Location: LCCOMB_X30_Y18_N24
\my_alu|Mux27~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux27~5_combout\ = (\my_alu|Mux27~4_combout\ & ((\input_reg_shamt|q\(2)) # (\input_reg_shamt|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input_reg_shamt|q\(2),
	datac => \input_reg_shamt|q\(3),
	datad => \my_alu|Mux27~4_combout\,
	combout => \my_alu|Mux27~5_combout\);

-- Location: LCCOMB_X31_Y19_N20
\my_alu|ShiftRight1~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight1~46_combout\ = (\input_reg_shamt|q\(3) & ((\input_reg_shamt|q\(2) & (\input_reg_b|q[31]~_Duplicate_4_q\)) # (!\input_reg_shamt|q\(2) & ((\my_alu|ShiftRight0~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(2),
	datab => \input_reg_b|q[31]~_Duplicate_4_q\,
	datac => \input_reg_shamt|q\(3),
	datad => \my_alu|ShiftRight0~6_combout\,
	combout => \my_alu|ShiftRight1~46_combout\);

-- Location: LCCOMB_X31_Y19_N16
\my_alu|ShiftRight1~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight1~47_combout\ = (\my_alu|ShiftRight1~46_combout\) # ((!\input_reg_shamt|q\(3) & \my_alu|ShiftRight0~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(3),
	datab => \my_alu|ShiftRight0~48_combout\,
	datad => \my_alu|ShiftRight1~46_combout\,
	combout => \my_alu|ShiftRight1~47_combout\);

-- Location: LCCOMB_X31_Y20_N24
\my_alu|Mux27~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux27~7_combout\ = (\my_alu|Mux27~6_combout\ & ((\my_alu|Mux27~5_combout\) # ((\my_alu|ShiftRight1~47_combout\)))) # (!\my_alu|Mux27~6_combout\ & (!\my_alu|Mux27~5_combout\ & ((\my_alu|ShiftRight0~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mux27~6_combout\,
	datab => \my_alu|Mux27~5_combout\,
	datac => \my_alu|ShiftRight1~47_combout\,
	datad => \my_alu|ShiftRight0~19_combout\,
	combout => \my_alu|Mux27~7_combout\);

-- Location: LCCOMB_X31_Y20_N20
\my_alu|Mux27~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux27~8_combout\ = (\my_alu|Mux27~5_combout\ & ((\my_alu|Mux27~7_combout\ & ((\my_alu|ShiftRight0~50_combout\))) # (!\my_alu|Mux27~7_combout\ & (\my_alu|ShiftRight0~25_combout\)))) # (!\my_alu|Mux27~5_combout\ & (((\my_alu|Mux27~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|ShiftRight0~25_combout\,
	datab => \my_alu|ShiftRight0~50_combout\,
	datac => \my_alu|Mux27~5_combout\,
	datad => \my_alu|Mux27~7_combout\,
	combout => \my_alu|Mux27~8_combout\);

-- Location: LCCOMB_X28_Y23_N18
\my_alu|Mux27~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux27~9_combout\ = (!\input_reg_op|q\(2) & \my_alu|Mux27~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \input_reg_op|q\(2),
	datad => \my_alu|Mux27~8_combout\,
	combout => \my_alu|Mux27~9_combout\);

-- Location: LCCOMB_X28_Y23_N24
\my_alu|Mux27~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux27~10_combout\ = (\my_alu|Mux27~1_combout\ & (((\my_alu|Mux27~0_combout\) # (\my_alu|Mux27~9_combout\)))) # (!\my_alu|Mux27~1_combout\ & (\my_alu|Mux27~3_combout\ & (!\my_alu|Mux27~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mux27~1_combout\,
	datab => \my_alu|Mux27~3_combout\,
	datac => \my_alu|Mux27~0_combout\,
	datad => \my_alu|Mux27~9_combout\,
	combout => \my_alu|Mux27~10_combout\);

-- Location: LCCOMB_X28_Y23_N2
\my_alu|Mux27~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux27~11_combout\ = (\my_alu|Mux27~2_combout\ & ((\my_alu|Mux27~10_combout\ & ((\my_alu|ShiftRight0~49_combout\))) # (!\my_alu|Mux27~10_combout\ & (\my_alu|ShiftLeft0~16_combout\)))) # (!\my_alu|Mux27~2_combout\ & (((\my_alu|Mux27~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|ShiftLeft0~16_combout\,
	datab => \my_alu|Mux27~2_combout\,
	datac => \my_alu|ShiftRight0~49_combout\,
	datad => \my_alu|Mux27~10_combout\,
	combout => \my_alu|Mux27~11_combout\);

-- Location: LCCOMB_X28_Y23_N0
\my_alu|Mux27~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux27~14_combout\ = (\input_reg_op|q\(3) & (((\my_alu|Mux27~11_combout\)))) # (!\input_reg_op|q\(3) & ((\input_reg_op|q\(2) & (\my_alu|Mux27~13_combout\)) # (!\input_reg_op|q\(2) & ((\my_alu|Mux27~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(3),
	datab => \input_reg_op|q\(2),
	datac => \my_alu|Mux27~13_combout\,
	datad => \my_alu|Mux27~11_combout\,
	combout => \my_alu|Mux27~14_combout\);

-- Location: FF_X28_Y23_N1
\output_reg_lo|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \my_alu|Mux27~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_reg_lo|q\(4));

-- Location: FF_X32_Y22_N13
\input_reg_a|q[5]~_Duplicate_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a[5]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_reg_a|q[5]~_Duplicate_4_q\);

-- Location: LCCOMB_X30_Y22_N10
\my_alu|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add2~10_combout\ = (\input_reg_b|q[5]~_Duplicate_4_q\ & ((\input_reg_a|q[5]~_Duplicate_4_q\ & (\my_alu|Add2~9\ & VCC)) # (!\input_reg_a|q[5]~_Duplicate_4_q\ & (!\my_alu|Add2~9\)))) # (!\input_reg_b|q[5]~_Duplicate_4_q\ & 
-- ((\input_reg_a|q[5]~_Duplicate_4_q\ & (!\my_alu|Add2~9\)) # (!\input_reg_a|q[5]~_Duplicate_4_q\ & ((\my_alu|Add2~9\) # (GND)))))
-- \my_alu|Add2~11\ = CARRY((\input_reg_b|q[5]~_Duplicate_4_q\ & (!\input_reg_a|q[5]~_Duplicate_4_q\ & !\my_alu|Add2~9\)) # (!\input_reg_b|q[5]~_Duplicate_4_q\ & ((!\my_alu|Add2~9\) # (!\input_reg_a|q[5]~_Duplicate_4_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[5]~_Duplicate_4_q\,
	datab => \input_reg_a|q[5]~_Duplicate_4_q\,
	datad => VCC,
	cin => \my_alu|Add2~9\,
	combout => \my_alu|Add2~10_combout\,
	cout => \my_alu|Add2~11\);

-- Location: LCCOMB_X27_Y22_N16
\my_alu|Mux26~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux26~6_combout\ = (\input_reg_op|q\(0) & ((\my_alu|Add3~10_combout\) # ((\input_reg_op|q\(1))))) # (!\input_reg_op|q\(0) & (((!\input_reg_op|q\(1) & \my_alu|Add2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Add3~10_combout\,
	datab => \input_reg_op|q\(0),
	datac => \input_reg_op|q\(1),
	datad => \my_alu|Add2~10_combout\,
	combout => \my_alu|Mux26~6_combout\);

-- Location: LCCOMB_X28_Y23_N4
\my_alu|Mux26~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux26~7_combout\ = (\input_reg_op|q\(1) & ((\my_alu|Mux26~6_combout\ & (\my_alu|Mult1|auto_generated|w513w\(5))) # (!\my_alu|Mux26~6_combout\ & ((\my_alu|Mult0|auto_generated|w569w\(5)))))) # (!\input_reg_op|q\(1) & (\my_alu|Mux26~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(1),
	datab => \my_alu|Mux26~6_combout\,
	datac => \my_alu|Mult1|auto_generated|w513w\(5),
	datad => \my_alu|Mult0|auto_generated|w569w\(5),
	combout => \my_alu|Mux26~7_combout\);

-- Location: LCCOMB_X28_Y23_N30
\my_alu|Mux26~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux26~8_combout\ = (\input_reg_op|q\(2) & ((\input_reg_op|q\(3) & (\my_alu|Mux26~5_combout\)) # (!\input_reg_op|q\(3) & ((\my_alu|Mux26~7_combout\))))) # (!\input_reg_op|q\(2) & (\my_alu|Mux26~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mux26~5_combout\,
	datab => \input_reg_op|q\(2),
	datac => \my_alu|Mux26~7_combout\,
	datad => \input_reg_op|q\(3),
	combout => \my_alu|Mux26~8_combout\);

-- Location: FF_X28_Y23_N31
\output_reg_lo|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \my_alu|Mux26~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_reg_lo|q\(5));

-- Location: LCCOMB_X30_Y22_N12
\my_alu|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add2~12_combout\ = ((\input_reg_a|q[6]~_Duplicate_4_q\ $ (\input_reg_b|q[6]~_Duplicate_4_q\ $ (!\my_alu|Add2~11\)))) # (GND)
-- \my_alu|Add2~13\ = CARRY((\input_reg_a|q[6]~_Duplicate_4_q\ & ((\input_reg_b|q[6]~_Duplicate_4_q\) # (!\my_alu|Add2~11\))) # (!\input_reg_a|q[6]~_Duplicate_4_q\ & (\input_reg_b|q[6]~_Duplicate_4_q\ & !\my_alu|Add2~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_a|q[6]~_Duplicate_4_q\,
	datab => \input_reg_b|q[6]~_Duplicate_4_q\,
	datad => VCC,
	cin => \my_alu|Add2~11\,
	combout => \my_alu|Add2~12_combout\,
	cout => \my_alu|Add2~13\);

-- Location: LCCOMB_X32_Y22_N12
\my_alu|Add3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add3~12_combout\ = ((\input_reg_a|q[6]~_Duplicate_4_q\ $ (\input_reg_b|q[6]~_Duplicate_4_q\ $ (\my_alu|Add3~11\)))) # (GND)
-- \my_alu|Add3~13\ = CARRY((\input_reg_a|q[6]~_Duplicate_4_q\ & ((!\my_alu|Add3~11\) # (!\input_reg_b|q[6]~_Duplicate_4_q\))) # (!\input_reg_a|q[6]~_Duplicate_4_q\ & (!\input_reg_b|q[6]~_Duplicate_4_q\ & !\my_alu|Add3~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_a|q[6]~_Duplicate_4_q\,
	datab => \input_reg_b|q[6]~_Duplicate_4_q\,
	datad => VCC,
	cin => \my_alu|Add3~11\,
	combout => \my_alu|Add3~12_combout\,
	cout => \my_alu|Add3~13\);

-- Location: LCCOMB_X26_Y22_N2
\my_alu|Mux25~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux25~6_combout\ = (\input_reg_op|q\(0) & (((\my_alu|Add3~12_combout\) # (\input_reg_op|q\(1))))) # (!\input_reg_op|q\(0) & (\my_alu|Add2~12_combout\ & ((!\input_reg_op|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(0),
	datab => \my_alu|Add2~12_combout\,
	datac => \my_alu|Add3~12_combout\,
	datad => \input_reg_op|q\(1),
	combout => \my_alu|Mux25~6_combout\);

-- Location: LCCOMB_X26_Y22_N16
\my_alu|Mux25~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux25~7_combout\ = (\input_reg_op|q\(1) & ((\my_alu|Mux25~6_combout\ & ((\my_alu|Mult1|auto_generated|w513w\(6)))) # (!\my_alu|Mux25~6_combout\ & (\my_alu|Mult0|auto_generated|w569w\(6))))) # (!\input_reg_op|q\(1) & (((\my_alu|Mux25~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(1),
	datab => \my_alu|Mult0|auto_generated|w569w\(6),
	datac => \my_alu|Mult1|auto_generated|w513w\(6),
	datad => \my_alu|Mux25~6_combout\,
	combout => \my_alu|Mux25~7_combout\);

-- Location: LCCOMB_X29_Y19_N10
\my_alu|ShiftLeft0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftLeft0~23_combout\ = (!\input_reg_shamt|q\(3) & ((\input_reg_shamt|q\(2) & ((\my_alu|ShiftLeft0~8_combout\))) # (!\input_reg_shamt|q\(2) & (\my_alu|ShiftLeft0~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|ShiftLeft0~22_combout\,
	datab => \input_reg_shamt|q\(2),
	datac => \my_alu|ShiftLeft0~8_combout\,
	datad => \input_reg_shamt|q\(3),
	combout => \my_alu|ShiftLeft0~23_combout\);

-- Location: LCCOMB_X28_Y22_N20
\my_alu|Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux25~0_combout\ = (\input_reg_b|q[6]~_Duplicate_4_q\ & ((\input_reg_a|q[6]~_Duplicate_4_q\ & ((!\input_reg_op|q\(1)))) # (!\input_reg_a|q[6]~_Duplicate_4_q\ & (\input_reg_op|q\(0))))) # (!\input_reg_b|q[6]~_Duplicate_4_q\ & ((\input_reg_op|q\(0) 
-- & (\input_reg_a|q[6]~_Duplicate_4_q\)) # (!\input_reg_op|q\(0) & (!\input_reg_a|q[6]~_Duplicate_4_q\ & \input_reg_op|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(0),
	datab => \input_reg_b|q[6]~_Duplicate_4_q\,
	datac => \input_reg_a|q[6]~_Duplicate_4_q\,
	datad => \input_reg_op|q\(1),
	combout => \my_alu|Mux25~0_combout\);

-- Location: LCCOMB_X34_Y23_N20
\my_alu|ShiftRight1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight1~36_combout\ = (\input_reg_shamt|q\(0) & ((\my_alu|ShiftRight1~35_combout\))) # (!\input_reg_shamt|q\(0) & (\my_alu|ShiftRight1~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|ShiftRight1~20_combout\,
	datab => \input_reg_shamt|q\(0),
	datad => \my_alu|ShiftRight1~35_combout\,
	combout => \my_alu|ShiftRight1~36_combout\);

-- Location: LCCOMB_X33_Y22_N0
\my_alu|ShiftRight1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight1~34_combout\ = (\input_reg_shamt|q\(0) & (\my_alu|ShiftRight1~33_combout\)) # (!\input_reg_shamt|q\(0) & ((\my_alu|ShiftRight1~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(0),
	datac => \my_alu|ShiftRight1~33_combout\,
	datad => \my_alu|ShiftRight1~19_combout\,
	combout => \my_alu|ShiftRight1~34_combout\);

-- Location: LCCOMB_X29_Y23_N10
\my_alu|ShiftRight0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight0~58_combout\ = (\input_reg_shamt|q\(2) & (\my_alu|ShiftRight1~26_combout\)) # (!\input_reg_shamt|q\(2) & ((\my_alu|ShiftRight1~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_alu|ShiftRight1~26_combout\,
	datac => \my_alu|ShiftRight1~34_combout\,
	datad => \input_reg_shamt|q\(2),
	combout => \my_alu|ShiftRight0~58_combout\);

-- Location: LCCOMB_X29_Y22_N16
\my_alu|Mux27~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux27~6_combout\ = (\input_reg_shamt|q\(3)) # ((\input_reg_shamt|q\(4)) # ((!\input_reg_op|q\(0) & !\input_reg_op|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(0),
	datab => \input_reg_shamt|q\(3),
	datac => \input_reg_shamt|q\(4),
	datad => \input_reg_op|q\(1),
	combout => \my_alu|Mux27~6_combout\);

-- Location: LCCOMB_X29_Y23_N4
\my_alu|ShiftLeft0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftLeft0~24_combout\ = (\input_reg_shamt|q\(1)) # ((\input_reg_shamt|q\(0)) # (\input_reg_shamt|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input_reg_shamt|q\(1),
	datac => \input_reg_shamt|q\(0),
	datad => \input_reg_shamt|q\(2),
	combout => \my_alu|ShiftLeft0~24_combout\);

-- Location: LCCOMB_X29_Y23_N18
\my_alu|ShiftRight1~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight1~50_combout\ = (\input_reg_shamt|q\(3) & ((\my_alu|ShiftLeft0~24_combout\ & (\input_reg_b|q[31]~_Duplicate_4_q\)) # (!\my_alu|ShiftLeft0~24_combout\ & ((\input_reg_b|q[30]~_Duplicate_4_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[31]~_Duplicate_4_q\,
	datab => \my_alu|ShiftLeft0~24_combout\,
	datac => \input_reg_shamt|q\(3),
	datad => \input_reg_b|q[30]~_Duplicate_4_q\,
	combout => \my_alu|ShiftRight1~50_combout\);

-- Location: LCCOMB_X29_Y23_N20
\my_alu|ShiftRight1~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight1~51_combout\ = (\my_alu|ShiftRight1~50_combout\) # ((\my_alu|ShiftRight0~55_combout\ & !\input_reg_shamt|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|ShiftRight0~55_combout\,
	datab => \my_alu|ShiftRight1~50_combout\,
	datac => \input_reg_shamt|q\(3),
	combout => \my_alu|ShiftRight1~51_combout\);

-- Location: LCCOMB_X35_Y22_N16
\my_alu|ShiftRight1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight1~30_combout\ = (!\input_reg_shamt|q\(0) & ((\input_reg_shamt|q\(1) & (\input_reg_b|q[8]~_Duplicate_4_q\)) # (!\input_reg_shamt|q\(1) & ((\input_reg_b|q[6]~_Duplicate_4_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[8]~_Duplicate_4_q\,
	datab => \input_reg_shamt|q\(0),
	datac => \input_reg_b|q[6]~_Duplicate_4_q\,
	datad => \input_reg_shamt|q\(1),
	combout => \my_alu|ShiftRight1~30_combout\);

-- Location: LCCOMB_X35_Y22_N20
\my_alu|ShiftRight1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight1~32_combout\ = (\my_alu|ShiftRight1~30_combout\) # ((\input_reg_shamt|q\(0) & \my_alu|ShiftRight1~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(0),
	datac => \my_alu|ShiftRight1~31_combout\,
	datad => \my_alu|ShiftRight1~30_combout\,
	combout => \my_alu|ShiftRight1~32_combout\);

-- Location: LCCOMB_X28_Y22_N18
\my_alu|Mux25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux25~1_combout\ = (\my_alu|Mux27~5_combout\ & (\my_alu|Mux27~6_combout\)) # (!\my_alu|Mux27~5_combout\ & ((\my_alu|Mux27~6_combout\ & (\my_alu|ShiftRight1~51_combout\)) # (!\my_alu|Mux27~6_combout\ & ((\my_alu|ShiftRight1~32_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mux27~5_combout\,
	datab => \my_alu|Mux27~6_combout\,
	datac => \my_alu|ShiftRight1~51_combout\,
	datad => \my_alu|ShiftRight1~32_combout\,
	combout => \my_alu|Mux25~1_combout\);

-- Location: LCCOMB_X28_Y22_N28
\my_alu|Mux25~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux25~2_combout\ = (\my_alu|Mux27~5_combout\ & ((\my_alu|Mux25~1_combout\ & ((\my_alu|ShiftRight0~58_combout\))) # (!\my_alu|Mux25~1_combout\ & (\my_alu|ShiftRight1~36_combout\)))) # (!\my_alu|Mux27~5_combout\ & (((\my_alu|Mux25~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mux27~5_combout\,
	datab => \my_alu|ShiftRight1~36_combout\,
	datac => \my_alu|ShiftRight0~58_combout\,
	datad => \my_alu|Mux25~1_combout\,
	combout => \my_alu|Mux25~2_combout\);

-- Location: LCCOMB_X28_Y22_N14
\my_alu|Mux25~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux25~3_combout\ = (!\input_reg_op|q\(2) & \my_alu|Mux25~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \input_reg_op|q\(2),
	datad => \my_alu|Mux25~2_combout\,
	combout => \my_alu|Mux25~3_combout\);

-- Location: LCCOMB_X28_Y22_N24
\my_alu|Mux25~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux25~4_combout\ = (\my_alu|Mux27~1_combout\ & (((\my_alu|Mux25~3_combout\) # (\my_alu|Mux27~0_combout\)))) # (!\my_alu|Mux27~1_combout\ & (\my_alu|Mux25~0_combout\ & ((!\my_alu|Mux27~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mux27~1_combout\,
	datab => \my_alu|Mux25~0_combout\,
	datac => \my_alu|Mux25~3_combout\,
	datad => \my_alu|Mux27~0_combout\,
	combout => \my_alu|Mux25~4_combout\);

-- Location: LCCOMB_X28_Y22_N6
\my_alu|Mux25~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux25~5_combout\ = (\my_alu|Mux27~2_combout\ & ((\my_alu|Mux25~4_combout\ & (\my_alu|ShiftRight0~57_combout\)) # (!\my_alu|Mux25~4_combout\ & ((\my_alu|ShiftLeft0~23_combout\))))) # (!\my_alu|Mux27~2_combout\ & (((\my_alu|Mux25~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|ShiftRight0~57_combout\,
	datab => \my_alu|Mux27~2_combout\,
	datac => \my_alu|ShiftLeft0~23_combout\,
	datad => \my_alu|Mux25~4_combout\,
	combout => \my_alu|Mux25~5_combout\);

-- Location: LCCOMB_X27_Y22_N8
\my_alu|Mux25~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux25~8_combout\ = (\input_reg_op|q\(2) & ((\input_reg_op|q\(3) & ((\my_alu|Mux25~5_combout\))) # (!\input_reg_op|q\(3) & (\my_alu|Mux25~7_combout\)))) # (!\input_reg_op|q\(2) & (((\my_alu|Mux25~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(2),
	datab => \input_reg_op|q\(3),
	datac => \my_alu|Mux25~7_combout\,
	datad => \my_alu|Mux25~5_combout\,
	combout => \my_alu|Mux25~8_combout\);

-- Location: FF_X27_Y22_N9
\output_reg_lo|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \my_alu|Mux25~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_reg_lo|q\(6));

-- Location: LCCOMB_X33_Y23_N24
\my_alu|ShiftLeft0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftLeft0~25_combout\ = (\my_alu|ShiftLeft0~9_combout\) # ((\my_alu|ShiftLeft0~6_combout\ & \input_reg_shamt|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|ShiftLeft0~6_combout\,
	datab => \input_reg_shamt|q\(1),
	datac => \my_alu|ShiftLeft0~9_combout\,
	combout => \my_alu|ShiftLeft0~25_combout\);

-- Location: LCCOMB_X35_Y19_N0
\my_alu|ShiftLeft0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftLeft0~21_combout\ = (\input_reg_shamt|q\(1) & ((\input_reg_b|q[4]~_Duplicate_4_q\))) # (!\input_reg_shamt|q\(1) & (\input_reg_b|q[6]~_Duplicate_4_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[6]~_Duplicate_4_q\,
	datac => \input_reg_shamt|q\(1),
	datad => \input_reg_b|q[4]~_Duplicate_4_q\,
	combout => \my_alu|ShiftLeft0~21_combout\);

-- Location: LCCOMB_X34_Y22_N12
\my_alu|ShiftLeft0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftLeft0~26_combout\ = (\input_reg_shamt|q\(1) & ((\input_reg_b|q[5]~_Duplicate_4_q\))) # (!\input_reg_shamt|q\(1) & (\input_reg_b|q[7]~_Duplicate_4_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(1),
	datab => \input_reg_b|q[7]~_Duplicate_4_q\,
	datad => \input_reg_b|q[5]~_Duplicate_4_q\,
	combout => \my_alu|ShiftLeft0~26_combout\);

-- Location: LCCOMB_X34_Y23_N22
\my_alu|ShiftLeft0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftLeft0~27_combout\ = (\input_reg_shamt|q\(0) & (\my_alu|ShiftLeft0~21_combout\)) # (!\input_reg_shamt|q\(0) & ((\my_alu|ShiftLeft0~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input_reg_shamt|q\(0),
	datac => \my_alu|ShiftLeft0~21_combout\,
	datad => \my_alu|ShiftLeft0~26_combout\,
	combout => \my_alu|ShiftLeft0~27_combout\);

-- Location: LCCOMB_X33_Y23_N26
\my_alu|ShiftLeft0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftLeft0~28_combout\ = (!\input_reg_shamt|q\(3) & ((\input_reg_shamt|q\(2) & (\my_alu|ShiftLeft0~25_combout\)) # (!\input_reg_shamt|q\(2) & ((\my_alu|ShiftLeft0~27_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(2),
	datab => \my_alu|ShiftLeft0~25_combout\,
	datac => \input_reg_shamt|q\(3),
	datad => \my_alu|ShiftLeft0~27_combout\,
	combout => \my_alu|ShiftLeft0~28_combout\);

-- Location: LCCOMB_X29_Y22_N18
\my_alu|ShiftRight0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight0~59_combout\ = (\input_reg_shamt|q\(2) & ((\my_alu|ShiftRight1~38_combout\))) # (!\input_reg_shamt|q\(2) & (\my_alu|ShiftRight1~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(2),
	datab => \my_alu|ShiftRight1~39_combout\,
	datad => \my_alu|ShiftRight1~38_combout\,
	combout => \my_alu|ShiftRight0~59_combout\);

-- Location: LCCOMB_X29_Y23_N0
\my_alu|ShiftRight0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight0~60_combout\ = (\input_reg_shamt|q\(3) & (\input_reg_b|q[31]~_Duplicate_4_q\ & (!\my_alu|ShiftLeft0~24_combout\))) # (!\input_reg_shamt|q\(3) & (((\my_alu|ShiftRight0~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[31]~_Duplicate_4_q\,
	datab => \my_alu|ShiftLeft0~24_combout\,
	datac => \input_reg_shamt|q\(3),
	datad => \my_alu|ShiftRight0~59_combout\,
	combout => \my_alu|ShiftRight0~60_combout\);

-- Location: LCCOMB_X29_Y23_N26
\my_alu|Mux24~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux24~5_combout\ = (\my_alu|Mux24~4_combout\ & (((\my_alu|ShiftRight0~60_combout\) # (!\my_alu|Mux27~2_combout\)))) # (!\my_alu|Mux24~4_combout\ & (\my_alu|ShiftLeft0~28_combout\ & (\my_alu|Mux27~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mux24~4_combout\,
	datab => \my_alu|ShiftLeft0~28_combout\,
	datac => \my_alu|Mux27~2_combout\,
	datad => \my_alu|ShiftRight0~60_combout\,
	combout => \my_alu|Mux24~5_combout\);

-- Location: LCCOMB_X29_Y20_N2
\my_alu|Mux24~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux24~8_combout\ = (\input_reg_op|q\(3) & (((\my_alu|Mux24~5_combout\)))) # (!\input_reg_op|q\(3) & ((\input_reg_op|q\(2) & (\my_alu|Mux24~7_combout\)) # (!\input_reg_op|q\(2) & ((\my_alu|Mux24~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mux24~7_combout\,
	datab => \input_reg_op|q\(3),
	datac => \input_reg_op|q\(2),
	datad => \my_alu|Mux24~5_combout\,
	combout => \my_alu|Mux24~8_combout\);

-- Location: FF_X29_Y20_N3
\output_reg_lo|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \my_alu|Mux24~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_reg_lo|q\(7));

-- Location: LCCOMB_X29_Y21_N22
\my_alu|Mux23~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux23~4_combout\ = (\input_reg_b|q[8]~_Duplicate_4_q\ & ((\input_reg_a|q[8]~_Duplicate_4_q\ & ((!\input_reg_op|q\(1)))) # (!\input_reg_a|q[8]~_Duplicate_4_q\ & (\input_reg_op|q\(0))))) # (!\input_reg_b|q[8]~_Duplicate_4_q\ & ((\input_reg_op|q\(0) 
-- & ((\input_reg_a|q[8]~_Duplicate_4_q\))) # (!\input_reg_op|q\(0) & (\input_reg_op|q\(1) & !\input_reg_a|q[8]~_Duplicate_4_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(0),
	datab => \input_reg_b|q[8]~_Duplicate_4_q\,
	datac => \input_reg_op|q\(1),
	datad => \input_reg_a|q[8]~_Duplicate_4_q\,
	combout => \my_alu|Mux23~4_combout\);

-- Location: LCCOMB_X32_Y20_N4
\my_alu|ShiftLeft0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftLeft0~31_combout\ = (!\input_reg_shamt|q\(0) & (!\input_reg_shamt|q\(2) & (\input_reg_b|q[0]~_Duplicate_4_q\ & !\input_reg_shamt|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(0),
	datab => \input_reg_shamt|q\(2),
	datac => \input_reg_b|q[0]~_Duplicate_4_q\,
	datad => \input_reg_shamt|q\(1),
	combout => \my_alu|ShiftLeft0~31_combout\);

-- Location: LCCOMB_X32_Y20_N30
\my_alu|ShiftLeft0~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftLeft0~101_combout\ = (\input_reg_shamt|q\(3) & (((\my_alu|ShiftLeft0~31_combout\)))) # (!\input_reg_shamt|q\(3) & (\my_alu|ShiftLeft0~30_combout\ & (!\input_reg_shamt|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|ShiftLeft0~30_combout\,
	datab => \input_reg_shamt|q\(2),
	datac => \my_alu|ShiftLeft0~31_combout\,
	datad => \input_reg_shamt|q\(3),
	combout => \my_alu|ShiftLeft0~101_combout\);

-- Location: LCCOMB_X34_Y19_N4
\my_alu|ShiftLeft0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftLeft0~13_combout\ = (\input_reg_shamt|q\(1) & (\input_reg_b|q[2]~_Duplicate_4_q\)) # (!\input_reg_shamt|q\(1) & ((\input_reg_b|q[4]~_Duplicate_4_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[2]~_Duplicate_4_q\,
	datac => \input_reg_shamt|q\(1),
	datad => \input_reg_b|q[4]~_Duplicate_4_q\,
	combout => \my_alu|ShiftLeft0~13_combout\);

-- Location: LCCOMB_X34_Y19_N18
\my_alu|ShiftLeft0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftLeft0~12_combout\ = (\input_reg_shamt|q\(0) & ((\input_reg_shamt|q\(1) & ((\input_reg_b|q[1]~_Duplicate_4_q\))) # (!\input_reg_shamt|q\(1) & (\input_reg_b|q[3]~_Duplicate_4_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(0),
	datab => \input_reg_b|q[3]~_Duplicate_4_q\,
	datac => \input_reg_b|q[1]~_Duplicate_4_q\,
	datad => \input_reg_shamt|q\(1),
	combout => \my_alu|ShiftLeft0~12_combout\);

-- Location: LCCOMB_X34_Y19_N6
\my_alu|ShiftLeft0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftLeft0~14_combout\ = (\my_alu|ShiftLeft0~12_combout\) # ((!\input_reg_shamt|q\(0) & \my_alu|ShiftLeft0~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(0),
	datac => \my_alu|ShiftLeft0~13_combout\,
	datad => \my_alu|ShiftLeft0~12_combout\,
	combout => \my_alu|ShiftLeft0~14_combout\);

-- Location: LCCOMB_X32_Y20_N8
\my_alu|ShiftLeft0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftLeft0~32_combout\ = (\my_alu|ShiftLeft0~101_combout\) # ((\input_reg_shamt|q\(2) & (!\input_reg_shamt|q\(3) & \my_alu|ShiftLeft0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(2),
	datab => \input_reg_shamt|q\(3),
	datac => \my_alu|ShiftLeft0~101_combout\,
	datad => \my_alu|ShiftLeft0~14_combout\,
	combout => \my_alu|ShiftLeft0~32_combout\);

-- Location: LCCOMB_X31_Y19_N4
\my_alu|ShiftRight0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight0~62_combout\ = (!\input_reg_shamt|q\(3) & ((\input_reg_shamt|q\(2) & (\my_alu|ShiftRight0~6_combout\)) # (!\input_reg_shamt|q\(2) & ((\my_alu|ShiftRight0~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(2),
	datab => \my_alu|ShiftRight0~6_combout\,
	datac => \input_reg_shamt|q\(3),
	datad => \my_alu|ShiftRight0~9_combout\,
	combout => \my_alu|ShiftRight0~62_combout\);

-- Location: LCCOMB_X31_Y20_N28
\my_alu|ShiftRight1~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight1~53_combout\ = (\my_alu|ShiftRight0~62_combout\) # ((\input_reg_b|q[31]~_Duplicate_4_q\ & \input_reg_shamt|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[31]~_Duplicate_4_q\,
	datac => \input_reg_shamt|q\(3),
	datad => \my_alu|ShiftRight0~62_combout\,
	combout => \my_alu|ShiftRight1~53_combout\);

-- Location: LCCOMB_X31_Y20_N14
\my_alu|Mux23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux23~2_combout\ = (\my_alu|Mux22~1_combout\ & ((\my_alu|Mux29~9_combout\ & ((\my_alu|ShiftRight0~26_combout\))) # (!\my_alu|Mux29~9_combout\ & (\my_alu|ShiftRight1~53_combout\)))) # (!\my_alu|Mux22~1_combout\ & (((\my_alu|Mux29~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mux22~1_combout\,
	datab => \my_alu|ShiftRight1~53_combout\,
	datac => \my_alu|Mux29~9_combout\,
	datad => \my_alu|ShiftRight0~26_combout\,
	combout => \my_alu|Mux23~2_combout\);

-- Location: LCCOMB_X31_Y20_N0
\my_alu|Mux23~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux23~3_combout\ = (\my_alu|Mux29~4_combout\ & ((\my_alu|Mux23~2_combout\ & ((\my_alu|ShiftRight0~62_combout\))) # (!\my_alu|Mux23~2_combout\ & (\my_alu|ShiftLeft0~32_combout\)))) # (!\my_alu|Mux29~4_combout\ & (((\my_alu|Mux23~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mux29~4_combout\,
	datab => \my_alu|ShiftLeft0~32_combout\,
	datac => \my_alu|Mux23~2_combout\,
	datad => \my_alu|ShiftRight0~62_combout\,
	combout => \my_alu|Mux23~3_combout\);

-- Location: LCCOMB_X29_Y21_N8
\my_alu|Mux23~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux23~5_combout\ = (\my_alu|Mux22~0_combout\ & (\input_reg_op|q\(3))) # (!\my_alu|Mux22~0_combout\ & ((\input_reg_op|q\(3) & ((\my_alu|Mux23~3_combout\))) # (!\input_reg_op|q\(3) & (\my_alu|Mux23~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mux22~0_combout\,
	datab => \input_reg_op|q\(3),
	datac => \my_alu|Mux23~4_combout\,
	datad => \my_alu|Mux23~3_combout\,
	combout => \my_alu|Mux23~5_combout\);

-- Location: LCCOMB_X32_Y22_N16
\my_alu|Add3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add3~16_combout\ = ((\input_reg_b|q[8]~_Duplicate_4_q\ $ (\input_reg_a|q[8]~_Duplicate_4_q\ $ (\my_alu|Add3~15\)))) # (GND)
-- \my_alu|Add3~17\ = CARRY((\input_reg_b|q[8]~_Duplicate_4_q\ & (\input_reg_a|q[8]~_Duplicate_4_q\ & !\my_alu|Add3~15\)) # (!\input_reg_b|q[8]~_Duplicate_4_q\ & ((\input_reg_a|q[8]~_Duplicate_4_q\) # (!\my_alu|Add3~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[8]~_Duplicate_4_q\,
	datab => \input_reg_a|q[8]~_Duplicate_4_q\,
	datad => VCC,
	cin => \my_alu|Add3~15\,
	combout => \my_alu|Add3~16_combout\,
	cout => \my_alu|Add3~17\);

-- Location: LCCOMB_X30_Y22_N16
\my_alu|Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add2~16_combout\ = ((\input_reg_b|q[8]~_Duplicate_4_q\ $ (\input_reg_a|q[8]~_Duplicate_4_q\ $ (!\my_alu|Add2~15\)))) # (GND)
-- \my_alu|Add2~17\ = CARRY((\input_reg_b|q[8]~_Duplicate_4_q\ & ((\input_reg_a|q[8]~_Duplicate_4_q\) # (!\my_alu|Add2~15\))) # (!\input_reg_b|q[8]~_Duplicate_4_q\ & (\input_reg_a|q[8]~_Duplicate_4_q\ & !\my_alu|Add2~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[8]~_Duplicate_4_q\,
	datab => \input_reg_a|q[8]~_Duplicate_4_q\,
	datad => VCC,
	cin => \my_alu|Add2~15\,
	combout => \my_alu|Add2~16_combout\,
	cout => \my_alu|Add2~17\);

-- Location: LCCOMB_X29_Y22_N8
\my_alu|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux23~0_combout\ = (\input_reg_op|q\(0) & ((\input_reg_op|q\(1)) # ((\my_alu|Add3~16_combout\)))) # (!\input_reg_op|q\(0) & (!\input_reg_op|q\(1) & ((\my_alu|Add2~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(0),
	datab => \input_reg_op|q\(1),
	datac => \my_alu|Add3~16_combout\,
	datad => \my_alu|Add2~16_combout\,
	combout => \my_alu|Mux23~0_combout\);

-- Location: LCCOMB_X29_Y21_N16
\my_alu|Mux23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux23~1_combout\ = (\input_reg_op|q\(1) & ((\my_alu|Mux23~0_combout\ & ((\my_alu|Mult1|auto_generated|w513w\(8)))) # (!\my_alu|Mux23~0_combout\ & (\my_alu|Mult0|auto_generated|w569w\(8))))) # (!\input_reg_op|q\(1) & (((\my_alu|Mux23~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(1),
	datab => \my_alu|Mult0|auto_generated|w569w\(8),
	datac => \my_alu|Mux23~0_combout\,
	datad => \my_alu|Mult1|auto_generated|w513w\(8),
	combout => \my_alu|Mux23~1_combout\);

-- Location: LCCOMB_X29_Y21_N14
\my_alu|Mux23~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux23~6_combout\ = (\my_alu|Mux22~0_combout\ & ((\my_alu|Mux23~5_combout\ & (\my_alu|ShiftRight0~17_combout\)) # (!\my_alu|Mux23~5_combout\ & ((\my_alu|Mux23~1_combout\))))) # (!\my_alu|Mux22~0_combout\ & (((\my_alu|Mux23~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mux22~0_combout\,
	datab => \my_alu|ShiftRight0~17_combout\,
	datac => \my_alu|Mux23~5_combout\,
	datad => \my_alu|Mux23~1_combout\,
	combout => \my_alu|Mux23~6_combout\);

-- Location: LCCOMB_X25_Y21_N12
\my_alu|Mux23~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux23~7_combout\ = (\my_alu|Mux23~6_combout\ & ((!\input_reg_op|q\(2)) # (!\input_reg_op|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input_reg_op|q\(3),
	datac => \input_reg_op|q\(2),
	datad => \my_alu|Mux23~6_combout\,
	combout => \my_alu|Mux23~7_combout\);

-- Location: FF_X25_Y21_N13
\output_reg_lo|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \my_alu|Mux23~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_reg_lo|q\(8));

-- Location: FF_X32_Y22_N29
\input_reg_a|q[9]~_Duplicate_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a[9]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_reg_a|q[9]~_Duplicate_4_q\);

-- Location: LCCOMB_X31_Y21_N22
\my_alu|Mux22~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux22~6_combout\ = (\input_reg_a|q[9]~_Duplicate_4_q\ & ((\input_reg_b|q[9]~_Duplicate_4_q\ & ((!\input_reg_op|q\(1)))) # (!\input_reg_b|q[9]~_Duplicate_4_q\ & (\input_reg_op|q\(0))))) # (!\input_reg_a|q[9]~_Duplicate_4_q\ & ((\input_reg_op|q\(0) 
-- & ((\input_reg_b|q[9]~_Duplicate_4_q\))) # (!\input_reg_op|q\(0) & (\input_reg_op|q\(1) & !\input_reg_b|q[9]~_Duplicate_4_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(0),
	datab => \input_reg_op|q\(1),
	datac => \input_reg_a|q[9]~_Duplicate_4_q\,
	datad => \input_reg_b|q[9]~_Duplicate_4_q\,
	combout => \my_alu|Mux22~6_combout\);

-- Location: LCCOMB_X31_Y19_N8
\my_alu|ShiftRight0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight0~51_combout\ = (\input_reg_shamt|q\(0) & ((\my_alu|ShiftRight1~13_combout\))) # (!\input_reg_shamt|q\(0) & (\my_alu|ShiftRight0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(0),
	datab => \my_alu|ShiftRight0~7_combout\,
	datad => \my_alu|ShiftRight1~13_combout\,
	combout => \my_alu|ShiftRight0~51_combout\);

-- Location: LCCOMB_X31_Y19_N22
\my_alu|ShiftRight0~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight0~63_combout\ = (!\input_reg_shamt|q\(3) & ((\input_reg_shamt|q\(2) & (\my_alu|ShiftRight0~31_combout\)) # (!\input_reg_shamt|q\(2) & ((\my_alu|ShiftRight0~51_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|ShiftRight0~31_combout\,
	datab => \input_reg_shamt|q\(3),
	datac => \input_reg_shamt|q\(2),
	datad => \my_alu|ShiftRight0~51_combout\,
	combout => \my_alu|ShiftRight0~63_combout\);

-- Location: LCCOMB_X31_Y21_N30
\my_alu|Mux22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux22~1_combout\ = (\input_reg_op|q\(1)) # ((!\input_reg_shamt|q\(4) & \input_reg_op|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input_reg_op|q\(1),
	datac => \input_reg_shamt|q\(4),
	datad => \input_reg_op|q\(0),
	combout => \my_alu|Mux22~1_combout\);

-- Location: LCCOMB_X31_Y19_N0
\my_alu|ShiftRight1~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight1~54_combout\ = (\input_reg_shamt|q\(3) & (\input_reg_b|q[31]~_Duplicate_4_q\)) # (!\input_reg_shamt|q\(3) & (((\my_alu|ShiftRight0~30_combout\) # (\my_alu|ShiftRight1~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[31]~_Duplicate_4_q\,
	datab => \input_reg_shamt|q\(3),
	datac => \my_alu|ShiftRight0~30_combout\,
	datad => \my_alu|ShiftRight1~15_combout\,
	combout => \my_alu|ShiftRight1~54_combout\);

-- Location: LCCOMB_X31_Y20_N10
\my_alu|Mux22~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux22~4_combout\ = (\my_alu|Mux29~9_combout\ & ((\my_alu|ShiftRight0~39_combout\) # ((!\my_alu|Mux22~1_combout\)))) # (!\my_alu|Mux29~9_combout\ & (((\my_alu|Mux22~1_combout\ & \my_alu|ShiftRight1~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mux29~9_combout\,
	datab => \my_alu|ShiftRight0~39_combout\,
	datac => \my_alu|Mux22~1_combout\,
	datad => \my_alu|ShiftRight1~54_combout\,
	combout => \my_alu|Mux22~4_combout\);

-- Location: LCCOMB_X32_Y20_N10
\my_alu|ShiftLeft0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftLeft0~17_combout\ = (!\input_reg_shamt|q\(1) & ((\input_reg_shamt|q\(0) & ((\input_reg_b|q[0]~_Duplicate_4_q\))) # (!\input_reg_shamt|q\(0) & (\input_reg_b|q[1]~_Duplicate_4_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[1]~_Duplicate_4_q\,
	datab => \input_reg_shamt|q\(1),
	datac => \input_reg_b|q[0]~_Duplicate_4_q\,
	datad => \input_reg_shamt|q\(0),
	combout => \my_alu|ShiftLeft0~17_combout\);

-- Location: LCCOMB_X34_Y19_N28
\my_alu|ShiftLeft0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftLeft0~18_combout\ = (\input_reg_shamt|q\(1) & ((\input_reg_b|q[3]~_Duplicate_4_q\))) # (!\input_reg_shamt|q\(1) & (\input_reg_b|q[5]~_Duplicate_4_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input_reg_b|q[5]~_Duplicate_4_q\,
	datac => \input_reg_b|q[3]~_Duplicate_4_q\,
	datad => \input_reg_shamt|q\(1),
	combout => \my_alu|ShiftLeft0~18_combout\);

-- Location: LCCOMB_X34_Y19_N22
\my_alu|ShiftLeft0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftLeft0~19_combout\ = (\input_reg_shamt|q\(0) & (\my_alu|ShiftLeft0~13_combout\)) # (!\input_reg_shamt|q\(0) & ((\my_alu|ShiftLeft0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(0),
	datac => \my_alu|ShiftLeft0~13_combout\,
	datad => \my_alu|ShiftLeft0~18_combout\,
	combout => \my_alu|ShiftLeft0~19_combout\);

-- Location: LCCOMB_X34_Y22_N14
\my_alu|ShiftLeft0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftLeft0~29_combout\ = (\input_reg_shamt|q\(1) & (\input_reg_b|q[6]~_Duplicate_4_q\)) # (!\input_reg_shamt|q\(1) & ((\input_reg_b|q[8]~_Duplicate_4_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(1),
	datab => \input_reg_b|q[6]~_Duplicate_4_q\,
	datac => \input_reg_b|q[8]~_Duplicate_4_q\,
	combout => \my_alu|ShiftLeft0~29_combout\);

-- Location: LCCOMB_X34_Y22_N6
\my_alu|ShiftLeft0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftLeft0~33_combout\ = (\input_reg_shamt|q\(1) & ((\input_reg_b|q[7]~_Duplicate_4_q\))) # (!\input_reg_shamt|q\(1) & (\input_reg_b|q[9]~_Duplicate_4_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(1),
	datab => \input_reg_b|q[9]~_Duplicate_4_q\,
	datad => \input_reg_b|q[7]~_Duplicate_4_q\,
	combout => \my_alu|ShiftLeft0~33_combout\);

-- Location: LCCOMB_X34_Y22_N10
\my_alu|ShiftLeft0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftLeft0~34_combout\ = (\input_reg_shamt|q\(0) & (\my_alu|ShiftLeft0~29_combout\)) # (!\input_reg_shamt|q\(0) & ((\my_alu|ShiftLeft0~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_alu|ShiftLeft0~29_combout\,
	datac => \input_reg_shamt|q\(0),
	datad => \my_alu|ShiftLeft0~33_combout\,
	combout => \my_alu|ShiftLeft0~34_combout\);

-- Location: LCCOMB_X31_Y22_N6
\my_alu|ShiftLeft0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftLeft0~35_combout\ = (\input_reg_shamt|q\(2) & (\my_alu|ShiftLeft0~19_combout\)) # (!\input_reg_shamt|q\(2) & ((\my_alu|ShiftLeft0~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(2),
	datac => \my_alu|ShiftLeft0~19_combout\,
	datad => \my_alu|ShiftLeft0~34_combout\,
	combout => \my_alu|ShiftLeft0~35_combout\);

-- Location: LCCOMB_X31_Y22_N8
\my_alu|ShiftLeft0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftLeft0~36_combout\ = (\input_reg_shamt|q\(3) & (!\input_reg_shamt|q\(2) & (\my_alu|ShiftLeft0~17_combout\))) # (!\input_reg_shamt|q\(3) & (((\my_alu|ShiftLeft0~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(2),
	datab => \input_reg_shamt|q\(3),
	datac => \my_alu|ShiftLeft0~17_combout\,
	datad => \my_alu|ShiftLeft0~35_combout\,
	combout => \my_alu|ShiftLeft0~36_combout\);

-- Location: LCCOMB_X30_Y20_N0
\my_alu|Mux22~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux22~5_combout\ = (\my_alu|Mux29~4_combout\ & ((\my_alu|Mux22~4_combout\ & (\my_alu|ShiftRight0~63_combout\)) # (!\my_alu|Mux22~4_combout\ & ((\my_alu|ShiftLeft0~36_combout\))))) # (!\my_alu|Mux29~4_combout\ & (((\my_alu|Mux22~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mux29~4_combout\,
	datab => \my_alu|ShiftRight0~63_combout\,
	datac => \my_alu|Mux22~4_combout\,
	datad => \my_alu|ShiftLeft0~36_combout\,
	combout => \my_alu|Mux22~5_combout\);

-- Location: LCCOMB_X29_Y21_N2
\my_alu|Mux22~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux22~7_combout\ = (\my_alu|Mux22~0_combout\ & (\input_reg_op|q\(3))) # (!\my_alu|Mux22~0_combout\ & ((\input_reg_op|q\(3) & ((\my_alu|Mux22~5_combout\))) # (!\input_reg_op|q\(3) & (\my_alu|Mux22~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mux22~0_combout\,
	datab => \input_reg_op|q\(3),
	datac => \my_alu|Mux22~6_combout\,
	datad => \my_alu|Mux22~5_combout\,
	combout => \my_alu|Mux22~7_combout\);

-- Location: LCCOMB_X30_Y22_N18
\my_alu|Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add2~18_combout\ = (\input_reg_a|q[9]~_Duplicate_4_q\ & ((\input_reg_b|q[9]~_Duplicate_4_q\ & (\my_alu|Add2~17\ & VCC)) # (!\input_reg_b|q[9]~_Duplicate_4_q\ & (!\my_alu|Add2~17\)))) # (!\input_reg_a|q[9]~_Duplicate_4_q\ & 
-- ((\input_reg_b|q[9]~_Duplicate_4_q\ & (!\my_alu|Add2~17\)) # (!\input_reg_b|q[9]~_Duplicate_4_q\ & ((\my_alu|Add2~17\) # (GND)))))
-- \my_alu|Add2~19\ = CARRY((\input_reg_a|q[9]~_Duplicate_4_q\ & (!\input_reg_b|q[9]~_Duplicate_4_q\ & !\my_alu|Add2~17\)) # (!\input_reg_a|q[9]~_Duplicate_4_q\ & ((!\my_alu|Add2~17\) # (!\input_reg_b|q[9]~_Duplicate_4_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_a|q[9]~_Duplicate_4_q\,
	datab => \input_reg_b|q[9]~_Duplicate_4_q\,
	datad => VCC,
	cin => \my_alu|Add2~17\,
	combout => \my_alu|Add2~18_combout\,
	cout => \my_alu|Add2~19\);

-- Location: LCCOMB_X32_Y22_N18
\my_alu|Add3~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add3~18_combout\ = (\input_reg_b|q[9]~_Duplicate_4_q\ & ((\input_reg_a|q[9]~_Duplicate_4_q\ & (!\my_alu|Add3~17\)) # (!\input_reg_a|q[9]~_Duplicate_4_q\ & ((\my_alu|Add3~17\) # (GND))))) # (!\input_reg_b|q[9]~_Duplicate_4_q\ & 
-- ((\input_reg_a|q[9]~_Duplicate_4_q\ & (\my_alu|Add3~17\ & VCC)) # (!\input_reg_a|q[9]~_Duplicate_4_q\ & (!\my_alu|Add3~17\))))
-- \my_alu|Add3~19\ = CARRY((\input_reg_b|q[9]~_Duplicate_4_q\ & ((!\my_alu|Add3~17\) # (!\input_reg_a|q[9]~_Duplicate_4_q\))) # (!\input_reg_b|q[9]~_Duplicate_4_q\ & (!\input_reg_a|q[9]~_Duplicate_4_q\ & !\my_alu|Add3~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[9]~_Duplicate_4_q\,
	datab => \input_reg_a|q[9]~_Duplicate_4_q\,
	datad => VCC,
	cin => \my_alu|Add3~17\,
	combout => \my_alu|Add3~18_combout\,
	cout => \my_alu|Add3~19\);

-- Location: LCCOMB_X29_Y22_N30
\my_alu|Mux22~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux22~2_combout\ = (\input_reg_op|q\(0) & (((\input_reg_op|q\(1)) # (\my_alu|Add3~18_combout\)))) # (!\input_reg_op|q\(0) & (\my_alu|Add2~18_combout\ & (!\input_reg_op|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(0),
	datab => \my_alu|Add2~18_combout\,
	datac => \input_reg_op|q\(1),
	datad => \my_alu|Add3~18_combout\,
	combout => \my_alu|Mux22~2_combout\);

-- Location: LCCOMB_X29_Y21_N28
\my_alu|Mux22~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux22~3_combout\ = (\input_reg_op|q\(1) & ((\my_alu|Mux22~2_combout\ & ((\my_alu|Mult1|auto_generated|w513w\(9)))) # (!\my_alu|Mux22~2_combout\ & (\my_alu|Mult0|auto_generated|w569w\(9))))) # (!\input_reg_op|q\(1) & (((\my_alu|Mux22~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult0|auto_generated|w569w\(9),
	datab => \input_reg_op|q\(1),
	datac => \my_alu|Mux22~2_combout\,
	datad => \my_alu|Mult1|auto_generated|w513w\(9),
	combout => \my_alu|Mux22~3_combout\);

-- Location: LCCOMB_X29_Y21_N12
\my_alu|Mux22~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux22~8_combout\ = (\my_alu|Mux22~0_combout\ & ((\my_alu|Mux22~7_combout\ & (\my_alu|ShiftRight0~29_combout\)) # (!\my_alu|Mux22~7_combout\ & ((\my_alu|Mux22~3_combout\))))) # (!\my_alu|Mux22~0_combout\ & (\my_alu|Mux22~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mux22~0_combout\,
	datab => \my_alu|Mux22~7_combout\,
	datac => \my_alu|ShiftRight0~29_combout\,
	datad => \my_alu|Mux22~3_combout\,
	combout => \my_alu|Mux22~8_combout\);

-- Location: LCCOMB_X25_Y21_N22
\my_alu|Mux22~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux22~9_combout\ = (\my_alu|Mux22~8_combout\ & ((!\input_reg_op|q\(3)) # (!\input_reg_op|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input_reg_op|q\(2),
	datac => \my_alu|Mux22~8_combout\,
	datad => \input_reg_op|q\(3),
	combout => \my_alu|Mux22~9_combout\);

-- Location: FF_X25_Y21_N23
\output_reg_lo|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \my_alu|Mux22~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_reg_lo|q\(9));

-- Location: LCCOMB_X30_Y22_N20
\my_alu|Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add2~20_combout\ = ((\input_reg_a|q[10]~_Duplicate_4_q\ $ (\input_reg_b|q[10]~_Duplicate_4_q\ $ (!\my_alu|Add2~19\)))) # (GND)
-- \my_alu|Add2~21\ = CARRY((\input_reg_a|q[10]~_Duplicate_4_q\ & ((\input_reg_b|q[10]~_Duplicate_4_q\) # (!\my_alu|Add2~19\))) # (!\input_reg_a|q[10]~_Duplicate_4_q\ & (\input_reg_b|q[10]~_Duplicate_4_q\ & !\my_alu|Add2~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_a|q[10]~_Duplicate_4_q\,
	datab => \input_reg_b|q[10]~_Duplicate_4_q\,
	datad => VCC,
	cin => \my_alu|Add2~19\,
	combout => \my_alu|Add2~20_combout\,
	cout => \my_alu|Add2~21\);

-- Location: LCCOMB_X35_Y22_N18
\input_reg_a|q[10]~_Duplicate_4feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \input_reg_a|q[10]~_Duplicate_4feeder_combout\ = \a[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a[10]~input_o\,
	combout => \input_reg_a|q[10]~_Duplicate_4feeder_combout\);

-- Location: FF_X35_Y22_N19
\input_reg_a|q[10]~_Duplicate_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \input_reg_a|q[10]~_Duplicate_4feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_reg_a|q[10]~_Duplicate_4_q\);

-- Location: LCCOMB_X32_Y22_N20
\my_alu|Add3~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add3~20_combout\ = ((\input_reg_b|q[10]~_Duplicate_4_q\ $ (\input_reg_a|q[10]~_Duplicate_4_q\ $ (\my_alu|Add3~19\)))) # (GND)
-- \my_alu|Add3~21\ = CARRY((\input_reg_b|q[10]~_Duplicate_4_q\ & (\input_reg_a|q[10]~_Duplicate_4_q\ & !\my_alu|Add3~19\)) # (!\input_reg_b|q[10]~_Duplicate_4_q\ & ((\input_reg_a|q[10]~_Duplicate_4_q\) # (!\my_alu|Add3~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[10]~_Duplicate_4_q\,
	datab => \input_reg_a|q[10]~_Duplicate_4_q\,
	datad => VCC,
	cin => \my_alu|Add3~19\,
	combout => \my_alu|Add3~20_combout\,
	cout => \my_alu|Add3~21\);

-- Location: LCCOMB_X29_Y22_N0
\my_alu|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux21~0_combout\ = (\input_reg_op|q\(0) & ((\input_reg_op|q\(1)) # ((\my_alu|Add3~20_combout\)))) # (!\input_reg_op|q\(0) & (!\input_reg_op|q\(1) & (\my_alu|Add2~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(0),
	datab => \input_reg_op|q\(1),
	datac => \my_alu|Add2~20_combout\,
	datad => \my_alu|Add3~20_combout\,
	combout => \my_alu|Mux21~0_combout\);

-- Location: LCCOMB_X28_Y19_N4
\my_alu|Mux21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux21~1_combout\ = (\input_reg_op|q\(1) & ((\my_alu|Mux21~0_combout\ & (\my_alu|Mult1|auto_generated|w513w\(10))) # (!\my_alu|Mux21~0_combout\ & ((\my_alu|Mult0|auto_generated|w569w\(10)))))) # (!\input_reg_op|q\(1) & 
-- (((\my_alu|Mux21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(1),
	datab => \my_alu|Mult1|auto_generated|w513w\(10),
	datac => \my_alu|Mux21~0_combout\,
	datad => \my_alu|Mult0|auto_generated|w569w\(10),
	combout => \my_alu|Mux21~1_combout\);

-- Location: LCCOMB_X31_Y21_N12
\my_alu|Mux21~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux21~4_combout\ = (\input_reg_a|q[10]~_Duplicate_4_q\ & ((\input_reg_b|q[10]~_Duplicate_4_q\ & ((!\input_reg_op|q\(1)))) # (!\input_reg_b|q[10]~_Duplicate_4_q\ & (\input_reg_op|q\(0))))) # (!\input_reg_a|q[10]~_Duplicate_4_q\ & 
-- ((\input_reg_op|q\(0) & ((\input_reg_b|q[10]~_Duplicate_4_q\))) # (!\input_reg_op|q\(0) & (\input_reg_op|q\(1) & !\input_reg_b|q[10]~_Duplicate_4_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(0),
	datab => \input_reg_op|q\(1),
	datac => \input_reg_a|q[10]~_Duplicate_4_q\,
	datad => \input_reg_b|q[10]~_Duplicate_4_q\,
	combout => \my_alu|Mux21~4_combout\);

-- Location: LCCOMB_X29_Y18_N8
\my_alu|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux22~0_combout\ = (\input_reg_op|q\(3) & (\input_reg_shamt|q\(3) & (\my_alu|Mux27~4_combout\))) # (!\input_reg_op|q\(3) & (((\input_reg_op|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(3),
	datab => \my_alu|Mux27~4_combout\,
	datac => \input_reg_op|q\(3),
	datad => \input_reg_op|q\(2),
	combout => \my_alu|Mux22~0_combout\);

-- Location: LCCOMB_X29_Y19_N30
\my_alu|ShiftRight0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight0~56_combout\ = (!\input_reg_shamt|q\(1) & ((\input_reg_shamt|q\(0) & ((\input_reg_b|q[31]~_Duplicate_4_q\))) # (!\input_reg_shamt|q\(0) & (\input_reg_b|q[30]~_Duplicate_4_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(0),
	datab => \input_reg_shamt|q\(1),
	datac => \input_reg_b|q[30]~_Duplicate_4_q\,
	datad => \input_reg_b|q[31]~_Duplicate_4_q\,
	combout => \my_alu|ShiftRight0~56_combout\);

-- Location: LCCOMB_X29_Y19_N18
\my_alu|ShiftRight0~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight0~64_combout\ = (!\input_reg_shamt|q\(3) & ((\input_reg_shamt|q\(2) & (\my_alu|ShiftRight0~56_combout\)) # (!\input_reg_shamt|q\(2) & ((\my_alu|ShiftRight1~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(3),
	datab => \input_reg_shamt|q\(2),
	datac => \my_alu|ShiftRight0~56_combout\,
	datad => \my_alu|ShiftRight1~22_combout\,
	combout => \my_alu|ShiftRight0~64_combout\);

-- Location: LCCOMB_X35_Y19_N26
\my_alu|ShiftLeft0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftLeft0~22_combout\ = (\input_reg_shamt|q\(0) & (\my_alu|ShiftLeft0~18_combout\)) # (!\input_reg_shamt|q\(0) & ((\my_alu|ShiftLeft0~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_alu|ShiftLeft0~18_combout\,
	datac => \input_reg_shamt|q\(0),
	datad => \my_alu|ShiftLeft0~21_combout\,
	combout => \my_alu|ShiftLeft0~22_combout\);

-- Location: LCCOMB_X27_Y19_N0
\my_alu|ShiftLeft0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftLeft0~39_combout\ = (\input_reg_shamt|q\(2) & ((\my_alu|ShiftLeft0~22_combout\))) # (!\input_reg_shamt|q\(2) & (\my_alu|ShiftLeft0~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|ShiftLeft0~38_combout\,
	datac => \input_reg_shamt|q\(2),
	datad => \my_alu|ShiftLeft0~22_combout\,
	combout => \my_alu|ShiftLeft0~39_combout\);

-- Location: LCCOMB_X27_Y19_N10
\my_alu|ShiftLeft0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftLeft0~40_combout\ = (\input_reg_shamt|q\(3) & (((!\input_reg_shamt|q\(2) & \my_alu|ShiftLeft0~8_combout\)))) # (!\input_reg_shamt|q\(3) & (\my_alu|ShiftLeft0~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(3),
	datab => \my_alu|ShiftLeft0~39_combout\,
	datac => \input_reg_shamt|q\(2),
	datad => \my_alu|ShiftLeft0~8_combout\,
	combout => \my_alu|ShiftLeft0~40_combout\);

-- Location: LCCOMB_X28_Y19_N2
\my_alu|Mux21~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux21~3_combout\ = (\my_alu|Mux21~2_combout\ & ((\my_alu|ShiftRight0~64_combout\) # ((!\my_alu|Mux29~4_combout\)))) # (!\my_alu|Mux21~2_combout\ & (((\my_alu|Mux29~4_combout\ & \my_alu|ShiftLeft0~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mux21~2_combout\,
	datab => \my_alu|ShiftRight0~64_combout\,
	datac => \my_alu|Mux29~4_combout\,
	datad => \my_alu|ShiftLeft0~40_combout\,
	combout => \my_alu|Mux21~3_combout\);

-- Location: LCCOMB_X28_Y19_N20
\my_alu|Mux21~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux21~5_combout\ = (\input_reg_op|q\(3) & (((\my_alu|Mux22~0_combout\) # (\my_alu|Mux21~3_combout\)))) # (!\input_reg_op|q\(3) & (\my_alu|Mux21~4_combout\ & (!\my_alu|Mux22~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(3),
	datab => \my_alu|Mux21~4_combout\,
	datac => \my_alu|Mux22~0_combout\,
	datad => \my_alu|Mux21~3_combout\,
	combout => \my_alu|Mux21~5_combout\);

-- Location: LCCOMB_X28_Y19_N18
\my_alu|Mux21~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux21~6_combout\ = (\my_alu|Mux22~0_combout\ & ((\my_alu|Mux21~5_combout\ & (\my_alu|ShiftRight0~41_combout\)) # (!\my_alu|Mux21~5_combout\ & ((\my_alu|Mux21~1_combout\))))) # (!\my_alu|Mux22~0_combout\ & (((\my_alu|Mux21~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mux22~0_combout\,
	datab => \my_alu|ShiftRight0~41_combout\,
	datac => \my_alu|Mux21~1_combout\,
	datad => \my_alu|Mux21~5_combout\,
	combout => \my_alu|Mux21~6_combout\);

-- Location: LCCOMB_X28_Y19_N8
\my_alu|Mux21~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux21~7_combout\ = (\my_alu|Mux21~6_combout\ & ((!\input_reg_op|q\(2)) # (!\input_reg_op|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(3),
	datac => \input_reg_op|q\(2),
	datad => \my_alu|Mux21~6_combout\,
	combout => \my_alu|Mux21~7_combout\);

-- Location: FF_X28_Y19_N9
\output_reg_lo|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \my_alu|Mux21~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_reg_lo|q\(10));

-- Location: LCCOMB_X30_Y23_N16
\my_alu|ShiftRight0~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight0~66_combout\ = (\my_alu|ShiftRight0~65_combout\ & ((\input_reg_b|q[31]~_Duplicate_4_q\) # ((\my_alu|ShiftRight1~38_combout\ & \my_alu|ShiftRight0~34_combout\)))) # (!\my_alu|ShiftRight0~65_combout\ & (((\my_alu|ShiftRight1~38_combout\ & 
-- \my_alu|ShiftRight0~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|ShiftRight0~65_combout\,
	datab => \input_reg_b|q[31]~_Duplicate_4_q\,
	datac => \my_alu|ShiftRight1~38_combout\,
	datad => \my_alu|ShiftRight0~34_combout\,
	combout => \my_alu|ShiftRight0~66_combout\);

-- Location: LCCOMB_X30_Y23_N6
\my_alu|ShiftRight1~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight1~59_combout\ = (\input_reg_shamt|q\(3) & (\input_reg_b|q[31]~_Duplicate_4_q\)) # (!\input_reg_shamt|q\(3) & ((\input_reg_shamt|q\(2) & (\input_reg_b|q[31]~_Duplicate_4_q\)) # (!\input_reg_shamt|q\(2) & 
-- ((\my_alu|ShiftRight1~38_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(3),
	datab => \input_reg_b|q[31]~_Duplicate_4_q\,
	datac => \my_alu|ShiftRight1~38_combout\,
	datad => \input_reg_shamt|q\(2),
	combout => \my_alu|ShiftRight1~59_combout\);

-- Location: LCCOMB_X29_Y23_N12
\my_alu|Mux20~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux20~2_combout\ = (\my_alu|Mux22~1_combout\ & ((\my_alu|Mux29~9_combout\ & (\my_alu|ShiftRight0~47_combout\)) # (!\my_alu|Mux29~9_combout\ & ((\my_alu|ShiftRight1~59_combout\))))) # (!\my_alu|Mux22~1_combout\ & (((\my_alu|Mux29~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mux22~1_combout\,
	datab => \my_alu|ShiftRight0~47_combout\,
	datac => \my_alu|Mux29~9_combout\,
	datad => \my_alu|ShiftRight1~59_combout\,
	combout => \my_alu|Mux20~2_combout\);

-- Location: LCCOMB_X29_Y23_N14
\my_alu|Mux20~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux20~3_combout\ = (\my_alu|Mux29~4_combout\ & ((\my_alu|Mux20~2_combout\ & ((\my_alu|ShiftRight0~66_combout\))) # (!\my_alu|Mux20~2_combout\ & (\my_alu|ShiftLeft0~44_combout\)))) # (!\my_alu|Mux29~4_combout\ & (((\my_alu|Mux20~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|ShiftLeft0~44_combout\,
	datab => \my_alu|ShiftRight0~66_combout\,
	datac => \my_alu|Mux29~4_combout\,
	datad => \my_alu|Mux20~2_combout\,
	combout => \my_alu|Mux20~3_combout\);

-- Location: FF_X32_Y23_N29
\input_reg_a|q[11]~_Duplicate_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a[11]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_reg_a|q[11]~_Duplicate_4_q\);

-- Location: LCCOMB_X30_Y18_N16
\my_alu|Mux20~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux20~4_combout\ = (\input_reg_b|q[11]~_Duplicate_4_q\ & ((\input_reg_a|q[11]~_Duplicate_4_q\ & (!\input_reg_op|q\(1))) # (!\input_reg_a|q[11]~_Duplicate_4_q\ & ((\input_reg_op|q\(0)))))) # (!\input_reg_b|q[11]~_Duplicate_4_q\ & 
-- ((\input_reg_op|q\(0) & ((\input_reg_a|q[11]~_Duplicate_4_q\))) # (!\input_reg_op|q\(0) & (\input_reg_op|q\(1) & !\input_reg_a|q[11]~_Duplicate_4_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(1),
	datab => \input_reg_b|q[11]~_Duplicate_4_q\,
	datac => \input_reg_op|q\(0),
	datad => \input_reg_a|q[11]~_Duplicate_4_q\,
	combout => \my_alu|Mux20~4_combout\);

-- Location: LCCOMB_X29_Y18_N4
\my_alu|Mux20~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux20~5_combout\ = (\input_reg_op|q\(3) & ((\my_alu|Mux22~0_combout\) # ((\my_alu|Mux20~3_combout\)))) # (!\input_reg_op|q\(3) & (!\my_alu|Mux22~0_combout\ & ((\my_alu|Mux20~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(3),
	datab => \my_alu|Mux22~0_combout\,
	datac => \my_alu|Mux20~3_combout\,
	datad => \my_alu|Mux20~4_combout\,
	combout => \my_alu|Mux20~5_combout\);

-- Location: LCCOMB_X32_Y22_N22
\my_alu|Add3~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add3~22_combout\ = (\input_reg_b|q[11]~_Duplicate_4_q\ & ((\input_reg_a|q[11]~_Duplicate_4_q\ & (!\my_alu|Add3~21\)) # (!\input_reg_a|q[11]~_Duplicate_4_q\ & ((\my_alu|Add3~21\) # (GND))))) # (!\input_reg_b|q[11]~_Duplicate_4_q\ & 
-- ((\input_reg_a|q[11]~_Duplicate_4_q\ & (\my_alu|Add3~21\ & VCC)) # (!\input_reg_a|q[11]~_Duplicate_4_q\ & (!\my_alu|Add3~21\))))
-- \my_alu|Add3~23\ = CARRY((\input_reg_b|q[11]~_Duplicate_4_q\ & ((!\my_alu|Add3~21\) # (!\input_reg_a|q[11]~_Duplicate_4_q\))) # (!\input_reg_b|q[11]~_Duplicate_4_q\ & (!\input_reg_a|q[11]~_Duplicate_4_q\ & !\my_alu|Add3~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[11]~_Duplicate_4_q\,
	datab => \input_reg_a|q[11]~_Duplicate_4_q\,
	datad => VCC,
	cin => \my_alu|Add3~21\,
	combout => \my_alu|Add3~22_combout\,
	cout => \my_alu|Add3~23\);

-- Location: LCCOMB_X30_Y22_N22
\my_alu|Add2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add2~22_combout\ = (\input_reg_a|q[11]~_Duplicate_4_q\ & ((\input_reg_b|q[11]~_Duplicate_4_q\ & (\my_alu|Add2~21\ & VCC)) # (!\input_reg_b|q[11]~_Duplicate_4_q\ & (!\my_alu|Add2~21\)))) # (!\input_reg_a|q[11]~_Duplicate_4_q\ & 
-- ((\input_reg_b|q[11]~_Duplicate_4_q\ & (!\my_alu|Add2~21\)) # (!\input_reg_b|q[11]~_Duplicate_4_q\ & ((\my_alu|Add2~21\) # (GND)))))
-- \my_alu|Add2~23\ = CARRY((\input_reg_a|q[11]~_Duplicate_4_q\ & (!\input_reg_b|q[11]~_Duplicate_4_q\ & !\my_alu|Add2~21\)) # (!\input_reg_a|q[11]~_Duplicate_4_q\ & ((!\my_alu|Add2~21\) # (!\input_reg_b|q[11]~_Duplicate_4_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_a|q[11]~_Duplicate_4_q\,
	datab => \input_reg_b|q[11]~_Duplicate_4_q\,
	datad => VCC,
	cin => \my_alu|Add2~21\,
	combout => \my_alu|Add2~22_combout\,
	cout => \my_alu|Add2~23\);

-- Location: LCCOMB_X30_Y18_N22
\my_alu|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux20~0_combout\ = (\input_reg_op|q\(1) & (\input_reg_op|q\(0))) # (!\input_reg_op|q\(1) & ((\input_reg_op|q\(0) & (\my_alu|Add3~22_combout\)) # (!\input_reg_op|q\(0) & ((\my_alu|Add2~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(1),
	datab => \input_reg_op|q\(0),
	datac => \my_alu|Add3~22_combout\,
	datad => \my_alu|Add2~22_combout\,
	combout => \my_alu|Mux20~0_combout\);

-- Location: LCCOMB_X29_Y18_N18
\my_alu|Mux20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux20~1_combout\ = (\input_reg_op|q\(1) & ((\my_alu|Mux20~0_combout\ & ((\my_alu|Mult1|auto_generated|w513w\(11)))) # (!\my_alu|Mux20~0_combout\ & (\my_alu|Mult0|auto_generated|w569w\(11))))) # (!\input_reg_op|q\(1) & 
-- (((\my_alu|Mux20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult0|auto_generated|w569w\(11),
	datab => \input_reg_op|q\(1),
	datac => \my_alu|Mult1|auto_generated|w513w\(11),
	datad => \my_alu|Mux20~0_combout\,
	combout => \my_alu|Mux20~1_combout\);

-- Location: LCCOMB_X29_Y18_N2
\my_alu|Mux20~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux20~6_combout\ = (\my_alu|Mux22~0_combout\ & ((\my_alu|Mux20~5_combout\ & (\my_alu|ShiftRight0~45_combout\)) # (!\my_alu|Mux20~5_combout\ & ((\my_alu|Mux20~1_combout\))))) # (!\my_alu|Mux22~0_combout\ & (((\my_alu|Mux20~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|ShiftRight0~45_combout\,
	datab => \my_alu|Mux22~0_combout\,
	datac => \my_alu|Mux20~5_combout\,
	datad => \my_alu|Mux20~1_combout\,
	combout => \my_alu|Mux20~6_combout\);

-- Location: LCCOMB_X29_Y18_N12
\my_alu|Mux20~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux20~7_combout\ = (\my_alu|Mux20~6_combout\ & ((!\input_reg_op|q\(3)) # (!\input_reg_op|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input_reg_op|q\(2),
	datac => \input_reg_op|q\(3),
	datad => \my_alu|Mux20~6_combout\,
	combout => \my_alu|Mux20~7_combout\);

-- Location: FF_X29_Y18_N13
\output_reg_lo|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \my_alu|Mux20~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_reg_lo|q\(11));

-- Location: FF_X33_Y22_N15
\input_reg_a|q[12]~_Duplicate_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a[12]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_reg_a|q[12]~_Duplicate_4_q\);

-- Location: LCCOMB_X32_Y22_N24
\my_alu|Add3~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add3~24_combout\ = ((\input_reg_b|q[12]~_Duplicate_4_q\ $ (\input_reg_a|q[12]~_Duplicate_4_q\ $ (\my_alu|Add3~23\)))) # (GND)
-- \my_alu|Add3~25\ = CARRY((\input_reg_b|q[12]~_Duplicate_4_q\ & (\input_reg_a|q[12]~_Duplicate_4_q\ & !\my_alu|Add3~23\)) # (!\input_reg_b|q[12]~_Duplicate_4_q\ & ((\input_reg_a|q[12]~_Duplicate_4_q\) # (!\my_alu|Add3~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[12]~_Duplicate_4_q\,
	datab => \input_reg_a|q[12]~_Duplicate_4_q\,
	datad => VCC,
	cin => \my_alu|Add3~23\,
	combout => \my_alu|Add3~24_combout\,
	cout => \my_alu|Add3~25\);

-- Location: LCCOMB_X30_Y22_N24
\my_alu|Add2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add2~24_combout\ = ((\input_reg_a|q[12]~_Duplicate_4_q\ $ (\input_reg_b|q[12]~_Duplicate_4_q\ $ (!\my_alu|Add2~23\)))) # (GND)
-- \my_alu|Add2~25\ = CARRY((\input_reg_a|q[12]~_Duplicate_4_q\ & ((\input_reg_b|q[12]~_Duplicate_4_q\) # (!\my_alu|Add2~23\))) # (!\input_reg_a|q[12]~_Duplicate_4_q\ & (\input_reg_b|q[12]~_Duplicate_4_q\ & !\my_alu|Add2~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_a|q[12]~_Duplicate_4_q\,
	datab => \input_reg_b|q[12]~_Duplicate_4_q\,
	datad => VCC,
	cin => \my_alu|Add2~23\,
	combout => \my_alu|Add2~24_combout\,
	cout => \my_alu|Add2~25\);

-- Location: LCCOMB_X31_Y22_N10
\my_alu|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux19~0_combout\ = (\input_reg_op|q\(1) & (((\input_reg_op|q\(0))))) # (!\input_reg_op|q\(1) & ((\input_reg_op|q\(0) & (\my_alu|Add3~24_combout\)) # (!\input_reg_op|q\(0) & ((\my_alu|Add2~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(1),
	datab => \my_alu|Add3~24_combout\,
	datac => \input_reg_op|q\(0),
	datad => \my_alu|Add2~24_combout\,
	combout => \my_alu|Mux19~0_combout\);

-- Location: LCCOMB_X29_Y18_N28
\my_alu|Mux19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux19~1_combout\ = (\input_reg_op|q\(1) & ((\my_alu|Mux19~0_combout\ & (\my_alu|Mult1|auto_generated|w513w\(12))) # (!\my_alu|Mux19~0_combout\ & ((\my_alu|Mult0|auto_generated|w569w\(12)))))) # (!\input_reg_op|q\(1) & 
-- (((\my_alu|Mux19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult1|auto_generated|w513w\(12),
	datab => \input_reg_op|q\(1),
	datac => \my_alu|Mux19~0_combout\,
	datad => \my_alu|Mult0|auto_generated|w569w\(12),
	combout => \my_alu|Mux19~1_combout\);

-- Location: LCCOMB_X29_Y18_N20
\my_alu|Mux19~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux19~6_combout\ = (\my_alu|Mux19~5_combout\ & (((\my_alu|ShiftRight0~48_combout\)) # (!\my_alu|Mux22~0_combout\))) # (!\my_alu|Mux19~5_combout\ & (\my_alu|Mux22~0_combout\ & ((\my_alu|Mux19~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mux19~5_combout\,
	datab => \my_alu|Mux22~0_combout\,
	datac => \my_alu|ShiftRight0~48_combout\,
	datad => \my_alu|Mux19~1_combout\,
	combout => \my_alu|Mux19~6_combout\);

-- Location: LCCOMB_X29_Y18_N30
\my_alu|Mux19~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux19~7_combout\ = (\my_alu|Mux19~6_combout\ & ((!\input_reg_op|q\(3)) # (!\input_reg_op|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input_reg_op|q\(2),
	datac => \input_reg_op|q\(3),
	datad => \my_alu|Mux19~6_combout\,
	combout => \my_alu|Mux19~7_combout\);

-- Location: FF_X29_Y18_N31
\output_reg_lo|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \my_alu|Mux19~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_reg_lo|q\(12));

-- Location: LCCOMB_X32_Y19_N0
\my_alu|ShiftRight0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight0~52_combout\ = (\input_reg_shamt|q\(2) & (\my_alu|ShiftRight0~51_combout\)) # (!\input_reg_shamt|q\(2) & ((\my_alu|ShiftRight0~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|ShiftRight0~51_combout\,
	datab => \my_alu|ShiftRight0~27_combout\,
	datad => \input_reg_shamt|q\(2),
	combout => \my_alu|ShiftRight0~52_combout\);

-- Location: FF_X34_Y23_N17
\input_reg_b|q[13]~_Duplicate_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b[13]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_reg_b|q[13]~_Duplicate_4_q\);

-- Location: LCCOMB_X29_Y21_N0
\my_alu|Mux18~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux18~4_combout\ = (\input_reg_b|q[13]~_Duplicate_4_q\ & ((\input_reg_a|q[13]~_Duplicate_4_q\ & ((!\input_reg_op|q\(1)))) # (!\input_reg_a|q[13]~_Duplicate_4_q\ & (\input_reg_op|q\(0))))) # (!\input_reg_b|q[13]~_Duplicate_4_q\ & 
-- ((\input_reg_op|q\(0) & ((\input_reg_a|q[13]~_Duplicate_4_q\))) # (!\input_reg_op|q\(0) & (\input_reg_op|q\(1) & !\input_reg_a|q[13]~_Duplicate_4_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(0),
	datab => \input_reg_op|q\(1),
	datac => \input_reg_b|q[13]~_Duplicate_4_q\,
	datad => \input_reg_a|q[13]~_Duplicate_4_q\,
	combout => \my_alu|Mux18~4_combout\);

-- Location: LCCOMB_X34_Y23_N4
\my_alu|ShiftLeft0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftLeft0~45_combout\ = (\input_reg_shamt|q\(1) & (\input_reg_b|q[10]~_Duplicate_4_q\)) # (!\input_reg_shamt|q\(1) & ((\input_reg_b|q[12]~_Duplicate_4_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[10]~_Duplicate_4_q\,
	datac => \input_reg_shamt|q\(1),
	datad => \input_reg_b|q[12]~_Duplicate_4_q\,
	combout => \my_alu|ShiftLeft0~45_combout\);

-- Location: LCCOMB_X34_Y23_N0
\my_alu|ShiftLeft0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftLeft0~50_combout\ = (\input_reg_shamt|q\(1) & ((\input_reg_b|q[11]~_Duplicate_4_q\))) # (!\input_reg_shamt|q\(1) & (\input_reg_b|q[13]~_Duplicate_4_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[13]~_Duplicate_4_q\,
	datac => \input_reg_shamt|q\(1),
	datad => \input_reg_b|q[11]~_Duplicate_4_q\,
	combout => \my_alu|ShiftLeft0~50_combout\);

-- Location: LCCOMB_X34_Y23_N2
\my_alu|ShiftLeft0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftLeft0~51_combout\ = (\input_reg_shamt|q\(0) & (\my_alu|ShiftLeft0~45_combout\)) # (!\input_reg_shamt|q\(0) & ((\my_alu|ShiftLeft0~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input_reg_shamt|q\(0),
	datac => \my_alu|ShiftLeft0~45_combout\,
	datad => \my_alu|ShiftLeft0~50_combout\,
	combout => \my_alu|ShiftLeft0~51_combout\);

-- Location: LCCOMB_X31_Y22_N14
\my_alu|ShiftLeft0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftLeft0~52_combout\ = (\input_reg_shamt|q\(2) & (\my_alu|ShiftLeft0~34_combout\)) # (!\input_reg_shamt|q\(2) & ((\my_alu|ShiftLeft0~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|ShiftLeft0~34_combout\,
	datac => \input_reg_shamt|q\(2),
	datad => \my_alu|ShiftLeft0~51_combout\,
	combout => \my_alu|ShiftLeft0~52_combout\);

-- Location: LCCOMB_X32_Y20_N18
\my_alu|ShiftLeft0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftLeft0~6_combout\ = (\input_reg_shamt|q\(0) & ((\input_reg_b|q[0]~_Duplicate_4_q\))) # (!\input_reg_shamt|q\(0) & (\input_reg_b|q[1]~_Duplicate_4_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[1]~_Duplicate_4_q\,
	datac => \input_reg_b|q[0]~_Duplicate_4_q\,
	datad => \input_reg_shamt|q\(0),
	combout => \my_alu|ShiftLeft0~6_combout\);

-- Location: LCCOMB_X31_Y22_N0
\my_alu|ShiftLeft0~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftLeft0~49_combout\ = (\input_reg_shamt|q\(2) & (\my_alu|ShiftLeft0~6_combout\ & ((!\input_reg_shamt|q\(1))))) # (!\input_reg_shamt|q\(2) & (((\my_alu|ShiftLeft0~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(2),
	datab => \my_alu|ShiftLeft0~6_combout\,
	datac => \my_alu|ShiftLeft0~19_combout\,
	datad => \input_reg_shamt|q\(1),
	combout => \my_alu|ShiftLeft0~49_combout\);

-- Location: LCCOMB_X31_Y22_N12
\my_alu|ShiftLeft0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftLeft0~53_combout\ = (\input_reg_shamt|q\(3) & ((\my_alu|ShiftLeft0~49_combout\))) # (!\input_reg_shamt|q\(3) & (\my_alu|ShiftLeft0~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input_reg_shamt|q\(3),
	datac => \my_alu|ShiftLeft0~52_combout\,
	datad => \my_alu|ShiftLeft0~49_combout\,
	combout => \my_alu|ShiftLeft0~53_combout\);

-- Location: LCCOMB_X31_Y19_N6
\my_alu|ShiftRight0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight0~31_combout\ = (\input_reg_shamt|q\(1) & (\input_reg_b|q[31]~_Duplicate_4_q\ & (!\input_reg_shamt|q\(0)))) # (!\input_reg_shamt|q\(1) & (((\my_alu|ShiftRight1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(1),
	datab => \input_reg_b|q[31]~_Duplicate_4_q\,
	datac => \input_reg_shamt|q\(0),
	datad => \my_alu|ShiftRight1~14_combout\,
	combout => \my_alu|ShiftRight0~31_combout\);

-- Location: LCCOMB_X32_Y19_N26
\my_alu|ShiftRight0~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight0~70_combout\ = (!\input_reg_shamt|q\(3) & (\my_alu|ShiftRight0~31_combout\ & !\input_reg_shamt|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(3),
	datac => \my_alu|ShiftRight0~31_combout\,
	datad => \input_reg_shamt|q\(2),
	combout => \my_alu|ShiftRight0~70_combout\);

-- Location: LCCOMB_X32_Y20_N0
\my_alu|ShiftRight0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight0~54_combout\ = (\input_reg_shamt|q\(2) & (\my_alu|ShiftRight0~28_combout\)) # (!\input_reg_shamt|q\(2) & ((\my_alu|ShiftRight0~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|ShiftRight0~28_combout\,
	datab => \input_reg_shamt|q\(2),
	datad => \my_alu|ShiftRight0~37_combout\,
	combout => \my_alu|ShiftRight0~54_combout\);

-- Location: LCCOMB_X30_Y20_N24
\my_alu|ShiftRight1~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight1~57_combout\ = (\input_reg_shamt|q\(1) & (\input_reg_b|q[31]~_Duplicate_4_q\)) # (!\input_reg_shamt|q\(1) & ((\my_alu|ShiftRight0~34_combout\ & ((\my_alu|ShiftRight1~14_combout\))) # (!\my_alu|ShiftRight0~34_combout\ & 
-- (\input_reg_b|q[31]~_Duplicate_4_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(1),
	datab => \input_reg_b|q[31]~_Duplicate_4_q\,
	datac => \my_alu|ShiftRight1~14_combout\,
	datad => \my_alu|ShiftRight0~34_combout\,
	combout => \my_alu|ShiftRight1~57_combout\);

-- Location: LCCOMB_X30_Y20_N2
\my_alu|Mux18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux18~2_combout\ = (\my_alu|Mux22~1_combout\ & ((\my_alu|Mux29~9_combout\ & (\my_alu|ShiftRight0~54_combout\)) # (!\my_alu|Mux29~9_combout\ & ((\my_alu|ShiftRight1~57_combout\))))) # (!\my_alu|Mux22~1_combout\ & (\my_alu|Mux29~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mux22~1_combout\,
	datab => \my_alu|Mux29~9_combout\,
	datac => \my_alu|ShiftRight0~54_combout\,
	datad => \my_alu|ShiftRight1~57_combout\,
	combout => \my_alu|Mux18~2_combout\);

-- Location: LCCOMB_X30_Y20_N28
\my_alu|Mux18~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux18~3_combout\ = (\my_alu|Mux29~4_combout\ & ((\my_alu|Mux18~2_combout\ & ((\my_alu|ShiftRight0~70_combout\))) # (!\my_alu|Mux18~2_combout\ & (\my_alu|ShiftLeft0~53_combout\)))) # (!\my_alu|Mux29~4_combout\ & (((\my_alu|Mux18~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mux29~4_combout\,
	datab => \my_alu|ShiftLeft0~53_combout\,
	datac => \my_alu|ShiftRight0~70_combout\,
	datad => \my_alu|Mux18~2_combout\,
	combout => \my_alu|Mux18~3_combout\);

-- Location: LCCOMB_X29_Y18_N0
\my_alu|Mux18~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux18~5_combout\ = (\input_reg_op|q\(3) & ((\my_alu|Mux22~0_combout\) # ((\my_alu|Mux18~3_combout\)))) # (!\input_reg_op|q\(3) & (!\my_alu|Mux22~0_combout\ & (\my_alu|Mux18~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(3),
	datab => \my_alu|Mux22~0_combout\,
	datac => \my_alu|Mux18~4_combout\,
	datad => \my_alu|Mux18~3_combout\,
	combout => \my_alu|Mux18~5_combout\);

-- Location: LCCOMB_X29_Y18_N6
\my_alu|Mux18~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux18~6_combout\ = (\my_alu|Mux22~0_combout\ & ((\my_alu|Mux18~5_combout\ & ((\my_alu|ShiftRight0~52_combout\))) # (!\my_alu|Mux18~5_combout\ & (\my_alu|Mux18~1_combout\)))) # (!\my_alu|Mux22~0_combout\ & (((\my_alu|Mux18~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mux18~1_combout\,
	datab => \my_alu|Mux22~0_combout\,
	datac => \my_alu|ShiftRight0~52_combout\,
	datad => \my_alu|Mux18~5_combout\,
	combout => \my_alu|Mux18~6_combout\);

-- Location: LCCOMB_X29_Y18_N16
\my_alu|Mux18~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux18~7_combout\ = (\my_alu|Mux18~6_combout\ & ((!\input_reg_op|q\(3)) # (!\input_reg_op|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input_reg_op|q\(2),
	datac => \input_reg_op|q\(3),
	datad => \my_alu|Mux18~6_combout\,
	combout => \my_alu|Mux18~7_combout\);

-- Location: FF_X29_Y18_N17
\output_reg_lo|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \my_alu|Mux18~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_reg_lo|q\(13));

-- Location: LCCOMB_X29_Y19_N28
\my_alu|ShiftRight0~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight0~55_combout\ = (\input_reg_shamt|q\(2) & ((\my_alu|ShiftRight1~22_combout\))) # (!\input_reg_shamt|q\(2) & (\my_alu|ShiftRight1~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input_reg_shamt|q\(2),
	datac => \my_alu|ShiftRight1~24_combout\,
	datad => \my_alu|ShiftRight1~22_combout\,
	combout => \my_alu|ShiftRight0~55_combout\);

-- Location: LCCOMB_X32_Y22_N28
\my_alu|Add3~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add3~28_combout\ = ((\input_reg_a|q[14]~_Duplicate_4_q\ $ (\input_reg_b|q[14]~_Duplicate_4_q\ $ (\my_alu|Add3~27\)))) # (GND)
-- \my_alu|Add3~29\ = CARRY((\input_reg_a|q[14]~_Duplicate_4_q\ & ((!\my_alu|Add3~27\) # (!\input_reg_b|q[14]~_Duplicate_4_q\))) # (!\input_reg_a|q[14]~_Duplicate_4_q\ & (!\input_reg_b|q[14]~_Duplicate_4_q\ & !\my_alu|Add3~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_a|q[14]~_Duplicate_4_q\,
	datab => \input_reg_b|q[14]~_Duplicate_4_q\,
	datad => VCC,
	cin => \my_alu|Add3~27\,
	combout => \my_alu|Add3~28_combout\,
	cout => \my_alu|Add3~29\);

-- Location: LCCOMB_X35_Y22_N22
\input_reg_a|q[14]~_Duplicate_4feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \input_reg_a|q[14]~_Duplicate_4feeder_combout\ = \a[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a[14]~input_o\,
	combout => \input_reg_a|q[14]~_Duplicate_4feeder_combout\);

-- Location: FF_X35_Y22_N23
\input_reg_a|q[14]~_Duplicate_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \input_reg_a|q[14]~_Duplicate_4feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_reg_a|q[14]~_Duplicate_4_q\);

-- Location: LCCOMB_X30_Y22_N28
\my_alu|Add2~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add2~28_combout\ = ((\input_reg_b|q[14]~_Duplicate_4_q\ $ (\input_reg_a|q[14]~_Duplicate_4_q\ $ (!\my_alu|Add2~27\)))) # (GND)
-- \my_alu|Add2~29\ = CARRY((\input_reg_b|q[14]~_Duplicate_4_q\ & ((\input_reg_a|q[14]~_Duplicate_4_q\) # (!\my_alu|Add2~27\))) # (!\input_reg_b|q[14]~_Duplicate_4_q\ & (\input_reg_a|q[14]~_Duplicate_4_q\ & !\my_alu|Add2~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[14]~_Duplicate_4_q\,
	datab => \input_reg_a|q[14]~_Duplicate_4_q\,
	datad => VCC,
	cin => \my_alu|Add2~27\,
	combout => \my_alu|Add2~28_combout\,
	cout => \my_alu|Add2~29\);

-- Location: LCCOMB_X29_Y22_N20
\my_alu|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux17~0_combout\ = (\input_reg_op|q\(0) & ((\input_reg_op|q\(1)) # ((\my_alu|Add3~28_combout\)))) # (!\input_reg_op|q\(0) & (!\input_reg_op|q\(1) & ((\my_alu|Add2~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(0),
	datab => \input_reg_op|q\(1),
	datac => \my_alu|Add3~28_combout\,
	datad => \my_alu|Add2~28_combout\,
	combout => \my_alu|Mux17~0_combout\);

-- Location: LCCOMB_X29_Y20_N16
\my_alu|Mux17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux17~1_combout\ = (\input_reg_op|q\(1) & ((\my_alu|Mux17~0_combout\ & ((\my_alu|Mult1|auto_generated|w513w\(14)))) # (!\my_alu|Mux17~0_combout\ & (\my_alu|Mult0|auto_generated|w569w\(14))))) # (!\input_reg_op|q\(1) & 
-- (((\my_alu|Mux17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(1),
	datab => \my_alu|Mult0|auto_generated|w569w\(14),
	datac => \my_alu|Mux17~0_combout\,
	datad => \my_alu|Mult1|auto_generated|w513w\(14),
	combout => \my_alu|Mux17~1_combout\);

-- Location: LCCOMB_X28_Y19_N0
\my_alu|Mux17~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux17~6_combout\ = (\my_alu|Mux17~5_combout\ & ((\my_alu|ShiftRight0~55_combout\) # ((!\my_alu|Mux22~0_combout\)))) # (!\my_alu|Mux17~5_combout\ & (((\my_alu|Mux22~0_combout\ & \my_alu|Mux17~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mux17~5_combout\,
	datab => \my_alu|ShiftRight0~55_combout\,
	datac => \my_alu|Mux22~0_combout\,
	datad => \my_alu|Mux17~1_combout\,
	combout => \my_alu|Mux17~6_combout\);

-- Location: LCCOMB_X28_Y19_N14
\my_alu|Mux17~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux17~7_combout\ = (\my_alu|Mux17~6_combout\ & ((!\input_reg_op|q\(2)) # (!\input_reg_op|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(3),
	datac => \input_reg_op|q\(2),
	datad => \my_alu|Mux17~6_combout\,
	combout => \my_alu|Mux17~7_combout\);

-- Location: FF_X28_Y19_N15
\output_reg_lo|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \my_alu|Mux17~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_reg_lo|q\(14));

-- Location: LCCOMB_X29_Y23_N16
\my_alu|ShiftRight0~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight0~68_combout\ = (\input_reg_b|q[31]~_Duplicate_4_q\ & (!\input_reg_shamt|q\(3) & !\my_alu|ShiftLeft0~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[31]~_Duplicate_4_q\,
	datab => \input_reg_shamt|q\(3),
	datac => \my_alu|ShiftLeft0~24_combout\,
	combout => \my_alu|ShiftRight0~68_combout\);

-- Location: LCCOMB_X33_Y23_N12
\my_alu|ShiftLeft0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftLeft0~59_combout\ = (\input_reg_shamt|q\(3) & ((\input_reg_shamt|q\(2) & (\my_alu|ShiftLeft0~25_combout\)) # (!\input_reg_shamt|q\(2) & ((\my_alu|ShiftLeft0~27_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(2),
	datab => \my_alu|ShiftLeft0~25_combout\,
	datac => \input_reg_shamt|q\(3),
	datad => \my_alu|ShiftLeft0~27_combout\,
	combout => \my_alu|ShiftLeft0~59_combout\);

-- Location: LCCOMB_X33_Y23_N4
\my_alu|ShiftLeft0~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftLeft0~63_combout\ = (\my_alu|ShiftLeft0~59_combout\) # ((\my_alu|ShiftLeft0~62_combout\ & !\input_reg_shamt|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|ShiftLeft0~62_combout\,
	datac => \input_reg_shamt|q\(3),
	datad => \my_alu|ShiftLeft0~59_combout\,
	combout => \my_alu|ShiftLeft0~63_combout\);

-- Location: LCCOMB_X29_Y23_N8
\my_alu|Mux16~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux16~3_combout\ = (\my_alu|Mux16~2_combout\ & ((\my_alu|ShiftRight0~68_combout\) # ((!\my_alu|Mux29~4_combout\)))) # (!\my_alu|Mux16~2_combout\ & (((\my_alu|Mux29~4_combout\ & \my_alu|ShiftLeft0~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mux16~2_combout\,
	datab => \my_alu|ShiftRight0~68_combout\,
	datac => \my_alu|Mux29~4_combout\,
	datad => \my_alu|ShiftLeft0~63_combout\,
	combout => \my_alu|Mux16~3_combout\);

-- Location: LCCOMB_X32_Y19_N8
\my_alu|Mux16~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux16~4_combout\ = (\input_reg_a|q[15]~_Duplicate_4_q\ & ((\input_reg_b|q[15]~_Duplicate_4_q\ & (!\input_reg_op|q\(1))) # (!\input_reg_b|q[15]~_Duplicate_4_q\ & ((\input_reg_op|q\(0)))))) # (!\input_reg_a|q[15]~_Duplicate_4_q\ & 
-- ((\input_reg_b|q[15]~_Duplicate_4_q\ & ((\input_reg_op|q\(0)))) # (!\input_reg_b|q[15]~_Duplicate_4_q\ & (\input_reg_op|q\(1) & !\input_reg_op|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_a|q[15]~_Duplicate_4_q\,
	datab => \input_reg_op|q\(1),
	datac => \input_reg_b|q[15]~_Duplicate_4_q\,
	datad => \input_reg_op|q\(0),
	combout => \my_alu|Mux16~4_combout\);

-- Location: LCCOMB_X28_Y19_N28
\my_alu|Mux16~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux16~5_combout\ = (\input_reg_op|q\(3) & ((\my_alu|Mux22~0_combout\) # ((\my_alu|Mux16~3_combout\)))) # (!\input_reg_op|q\(3) & (!\my_alu|Mux22~0_combout\ & ((\my_alu|Mux16~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(3),
	datab => \my_alu|Mux22~0_combout\,
	datac => \my_alu|Mux16~3_combout\,
	datad => \my_alu|Mux16~4_combout\,
	combout => \my_alu|Mux16~5_combout\);

-- Location: FF_X32_Y22_N7
\input_reg_a|q[15]~_Duplicate_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a[15]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_reg_a|q[15]~_Duplicate_4_q\);

-- Location: LCCOMB_X30_Y22_N30
\my_alu|Add2~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add2~30_combout\ = (\input_reg_b|q[15]~_Duplicate_4_q\ & ((\input_reg_a|q[15]~_Duplicate_4_q\ & (\my_alu|Add2~29\ & VCC)) # (!\input_reg_a|q[15]~_Duplicate_4_q\ & (!\my_alu|Add2~29\)))) # (!\input_reg_b|q[15]~_Duplicate_4_q\ & 
-- ((\input_reg_a|q[15]~_Duplicate_4_q\ & (!\my_alu|Add2~29\)) # (!\input_reg_a|q[15]~_Duplicate_4_q\ & ((\my_alu|Add2~29\) # (GND)))))
-- \my_alu|Add2~31\ = CARRY((\input_reg_b|q[15]~_Duplicate_4_q\ & (!\input_reg_a|q[15]~_Duplicate_4_q\ & !\my_alu|Add2~29\)) # (!\input_reg_b|q[15]~_Duplicate_4_q\ & ((!\my_alu|Add2~29\) # (!\input_reg_a|q[15]~_Duplicate_4_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[15]~_Duplicate_4_q\,
	datab => \input_reg_a|q[15]~_Duplicate_4_q\,
	datad => VCC,
	cin => \my_alu|Add2~29\,
	combout => \my_alu|Add2~30_combout\,
	cout => \my_alu|Add2~31\);

-- Location: LCCOMB_X32_Y22_N30
\my_alu|Add3~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add3~30_combout\ = (\input_reg_a|q[15]~_Duplicate_4_q\ & ((\input_reg_b|q[15]~_Duplicate_4_q\ & (!\my_alu|Add3~29\)) # (!\input_reg_b|q[15]~_Duplicate_4_q\ & (\my_alu|Add3~29\ & VCC)))) # (!\input_reg_a|q[15]~_Duplicate_4_q\ & 
-- ((\input_reg_b|q[15]~_Duplicate_4_q\ & ((\my_alu|Add3~29\) # (GND))) # (!\input_reg_b|q[15]~_Duplicate_4_q\ & (!\my_alu|Add3~29\))))
-- \my_alu|Add3~31\ = CARRY((\input_reg_a|q[15]~_Duplicate_4_q\ & (\input_reg_b|q[15]~_Duplicate_4_q\ & !\my_alu|Add3~29\)) # (!\input_reg_a|q[15]~_Duplicate_4_q\ & ((\input_reg_b|q[15]~_Duplicate_4_q\) # (!\my_alu|Add3~29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_a|q[15]~_Duplicate_4_q\,
	datab => \input_reg_b|q[15]~_Duplicate_4_q\,
	datad => VCC,
	cin => \my_alu|Add3~29\,
	combout => \my_alu|Add3~30_combout\,
	cout => \my_alu|Add3~31\);

-- Location: LCCOMB_X28_Y22_N30
\my_alu|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux16~0_combout\ = (\input_reg_op|q\(0) & ((\input_reg_op|q\(1)) # ((\my_alu|Add3~30_combout\)))) # (!\input_reg_op|q\(0) & (!\input_reg_op|q\(1) & (\my_alu|Add2~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(0),
	datab => \input_reg_op|q\(1),
	datac => \my_alu|Add2~30_combout\,
	datad => \my_alu|Add3~30_combout\,
	combout => \my_alu|Mux16~0_combout\);

-- Location: LCCOMB_X28_Y19_N10
\my_alu|Mux16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux16~1_combout\ = (\input_reg_op|q\(1) & ((\my_alu|Mux16~0_combout\ & ((\my_alu|Mult1|auto_generated|w513w\(15)))) # (!\my_alu|Mux16~0_combout\ & (\my_alu|Mult0|auto_generated|w569w\(15))))) # (!\input_reg_op|q\(1) & 
-- (((\my_alu|Mux16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(1),
	datab => \my_alu|Mult0|auto_generated|w569w\(15),
	datac => \my_alu|Mult1|auto_generated|w513w\(15),
	datad => \my_alu|Mux16~0_combout\,
	combout => \my_alu|Mux16~1_combout\);

-- Location: LCCOMB_X28_Y19_N6
\my_alu|Mux16~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux16~6_combout\ = (\my_alu|Mux16~5_combout\ & ((\my_alu|ShiftRight0~59_combout\) # ((!\my_alu|Mux22~0_combout\)))) # (!\my_alu|Mux16~5_combout\ & (((\my_alu|Mux22~0_combout\ & \my_alu|Mux16~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|ShiftRight0~59_combout\,
	datab => \my_alu|Mux16~5_combout\,
	datac => \my_alu|Mux22~0_combout\,
	datad => \my_alu|Mux16~1_combout\,
	combout => \my_alu|Mux16~6_combout\);

-- Location: LCCOMB_X28_Y19_N16
\my_alu|Mux16~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux16~7_combout\ = (\my_alu|Mux16~6_combout\ & ((!\input_reg_op|q\(2)) # (!\input_reg_op|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(3),
	datac => \input_reg_op|q\(2),
	datad => \my_alu|Mux16~6_combout\,
	combout => \my_alu|Mux16~7_combout\);

-- Location: FF_X28_Y19_N17
\output_reg_lo|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \my_alu|Mux16~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_reg_lo|q\(15));

-- Location: LCCOMB_X30_Y18_N8
\my_alu|Mux15~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux15~8_combout\ = (\input_reg_shamt|q\(4) & (\input_reg_b|q[31]~_Duplicate_4_q\ & \input_reg_op|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input_reg_shamt|q\(4),
	datac => \input_reg_b|q[31]~_Duplicate_4_q\,
	datad => \input_reg_op|q\(1),
	combout => \my_alu|Mux15~8_combout\);

-- Location: LCCOMB_X30_Y18_N4
\my_alu|Mux15~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux15~6_combout\ = (\input_reg_b|q[0]~_Duplicate_4_q\ & \input_reg_shamt|q\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[0]~_Duplicate_4_q\,
	datad => \input_reg_shamt|q\(4),
	combout => \my_alu|Mux15~6_combout\);

-- Location: LCCOMB_X34_Y22_N0
\my_alu|ShiftLeft0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftLeft0~30_combout\ = (\input_reg_shamt|q\(0) & ((\my_alu|ShiftLeft0~26_combout\))) # (!\input_reg_shamt|q\(0) & (\my_alu|ShiftLeft0~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_alu|ShiftLeft0~29_combout\,
	datac => \input_reg_shamt|q\(0),
	datad => \my_alu|ShiftLeft0~26_combout\,
	combout => \my_alu|ShiftLeft0~30_combout\);

-- Location: LCCOMB_X31_Y23_N8
\my_alu|Mux15~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux15~4_combout\ = (\input_reg_shamt|q\(3) & ((\input_reg_shamt|q\(2) & (\my_alu|ShiftLeft0~14_combout\)) # (!\input_reg_shamt|q\(2) & ((\my_alu|ShiftLeft0~30_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(2),
	datab => \input_reg_shamt|q\(3),
	datac => \my_alu|ShiftLeft0~14_combout\,
	datad => \my_alu|ShiftLeft0~30_combout\,
	combout => \my_alu|Mux15~4_combout\);

-- Location: LCCOMB_X31_Y23_N20
\my_alu|Mux15~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux15~5_combout\ = (!\input_reg_shamt|q\(4) & ((\my_alu|Mux15~4_combout\) # ((\my_alu|ShiftLeft0~66_combout\ & !\input_reg_shamt|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|ShiftLeft0~66_combout\,
	datab => \input_reg_shamt|q\(4),
	datac => \my_alu|Mux15~4_combout\,
	datad => \input_reg_shamt|q\(3),
	combout => \my_alu|Mux15~5_combout\);

-- Location: LCCOMB_X30_Y18_N10
\my_alu|Mux15~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux15~7_combout\ = (\my_alu|Mux0~0_combout\ & ((\my_alu|Mux15~5_combout\) # ((\my_alu|ShiftRight0~4_combout\ & \my_alu|Mux15~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|ShiftRight0~4_combout\,
	datab => \my_alu|Mux0~0_combout\,
	datac => \my_alu|Mux15~6_combout\,
	datad => \my_alu|Mux15~5_combout\,
	combout => \my_alu|Mux15~7_combout\);

-- Location: LCCOMB_X30_Y18_N0
\my_alu|Mux15~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux15~9_combout\ = (\my_alu|Mux15~8_combout\) # ((\my_alu|Mux15~7_combout\) # ((\my_alu|ShiftRight0~69_combout\ & \my_alu|Mux27~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|ShiftRight0~69_combout\,
	datab => \my_alu|Mux27~4_combout\,
	datac => \my_alu|Mux15~8_combout\,
	datad => \my_alu|Mux15~7_combout\,
	combout => \my_alu|Mux15~9_combout\);

-- Location: LCCOMB_X29_Y21_N6
\my_alu|Mux15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux15~2_combout\ = (\input_reg_b|q[16]~_Duplicate_4_q\ & ((\input_reg_a|q[16]~_Duplicate_4_q\ & ((!\input_reg_op|q\(1)))) # (!\input_reg_a|q[16]~_Duplicate_4_q\ & (\input_reg_op|q\(0))))) # (!\input_reg_b|q[16]~_Duplicate_4_q\ & 
-- ((\input_reg_op|q\(0) & (\input_reg_a|q[16]~_Duplicate_4_q\)) # (!\input_reg_op|q\(0) & (!\input_reg_a|q[16]~_Duplicate_4_q\ & \input_reg_op|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(0),
	datab => \input_reg_b|q[16]~_Duplicate_4_q\,
	datac => \input_reg_a|q[16]~_Duplicate_4_q\,
	datad => \input_reg_op|q\(1),
	combout => \my_alu|Mux15~2_combout\);

-- Location: LCCOMB_X32_Y21_N0
\my_alu|Add3~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add3~32_combout\ = ((\input_reg_b|q[16]~_Duplicate_4_q\ $ (\input_reg_a|q[16]~_Duplicate_4_q\ $ (\my_alu|Add3~31\)))) # (GND)
-- \my_alu|Add3~33\ = CARRY((\input_reg_b|q[16]~_Duplicate_4_q\ & (\input_reg_a|q[16]~_Duplicate_4_q\ & !\my_alu|Add3~31\)) # (!\input_reg_b|q[16]~_Duplicate_4_q\ & ((\input_reg_a|q[16]~_Duplicate_4_q\) # (!\my_alu|Add3~31\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[16]~_Duplicate_4_q\,
	datab => \input_reg_a|q[16]~_Duplicate_4_q\,
	datad => VCC,
	cin => \my_alu|Add3~31\,
	combout => \my_alu|Add3~32_combout\,
	cout => \my_alu|Add3~33\);

-- Location: LCCOMB_X30_Y21_N0
\my_alu|Add2~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add2~32_combout\ = ((\input_reg_b|q[16]~_Duplicate_4_q\ $ (\input_reg_a|q[16]~_Duplicate_4_q\ $ (!\my_alu|Add2~31\)))) # (GND)
-- \my_alu|Add2~33\ = CARRY((\input_reg_b|q[16]~_Duplicate_4_q\ & ((\input_reg_a|q[16]~_Duplicate_4_q\) # (!\my_alu|Add2~31\))) # (!\input_reg_b|q[16]~_Duplicate_4_q\ & (\input_reg_a|q[16]~_Duplicate_4_q\ & !\my_alu|Add2~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[16]~_Duplicate_4_q\,
	datab => \input_reg_a|q[16]~_Duplicate_4_q\,
	datad => VCC,
	cin => \my_alu|Add2~31\,
	combout => \my_alu|Add2~32_combout\,
	cout => \my_alu|Add2~33\);

-- Location: LCCOMB_X31_Y21_N18
\my_alu|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux15~0_combout\ = (\input_reg_op|q\(0) & ((\my_alu|Add3~32_combout\) # ((\input_reg_op|q\(1))))) # (!\input_reg_op|q\(0) & (((\my_alu|Add2~32_combout\ & !\input_reg_op|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(0),
	datab => \my_alu|Add3~32_combout\,
	datac => \my_alu|Add2~32_combout\,
	datad => \input_reg_op|q\(1),
	combout => \my_alu|Mux15~0_combout\);

-- Location: LCCOMB_X26_Y20_N20
\my_alu|Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux15~1_combout\ = (\input_reg_op|q\(1) & ((\my_alu|Mux15~0_combout\ & (\my_alu|Mult1|auto_generated|w513w\(16))) # (!\my_alu|Mux15~0_combout\ & ((\my_alu|Mult0|auto_generated|w569w\(16)))))) # (!\input_reg_op|q\(1) & 
-- (((\my_alu|Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(1),
	datab => \my_alu|Mult1|auto_generated|w513w\(16),
	datac => \my_alu|Mult0|auto_generated|w569w\(16),
	datad => \my_alu|Mux15~0_combout\,
	combout => \my_alu|Mux15~1_combout\);

-- Location: LCCOMB_X26_Y20_N6
\my_alu|Mux15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux15~3_combout\ = (!\input_reg_op|q\(3) & ((\input_reg_op|q\(2) & ((\my_alu|Mux15~1_combout\))) # (!\input_reg_op|q\(2) & (\my_alu|Mux15~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(3),
	datab => \input_reg_op|q\(2),
	datac => \my_alu|Mux15~2_combout\,
	datad => \my_alu|Mux15~1_combout\,
	combout => \my_alu|Mux15~3_combout\);

-- Location: LCCOMB_X26_Y20_N8
\my_alu|Mux15~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux15~10_combout\ = (\my_alu|Mux15~3_combout\) # ((\input_reg_op|q\(3) & (!\input_reg_op|q\(2) & \my_alu|Mux15~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(3),
	datab => \input_reg_op|q\(2),
	datac => \my_alu|Mux15~9_combout\,
	datad => \my_alu|Mux15~3_combout\,
	combout => \my_alu|Mux15~10_combout\);

-- Location: FF_X26_Y20_N9
\output_reg_lo|q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \my_alu|Mux15~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_reg_lo|q\(16));

-- Location: LCCOMB_X32_Y21_N2
\my_alu|Add3~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add3~34_combout\ = (\input_reg_a|q[17]~_Duplicate_4_q\ & ((\input_reg_b|q[17]~_Duplicate_4_q\ & (!\my_alu|Add3~33\)) # (!\input_reg_b|q[17]~_Duplicate_4_q\ & (\my_alu|Add3~33\ & VCC)))) # (!\input_reg_a|q[17]~_Duplicate_4_q\ & 
-- ((\input_reg_b|q[17]~_Duplicate_4_q\ & ((\my_alu|Add3~33\) # (GND))) # (!\input_reg_b|q[17]~_Duplicate_4_q\ & (!\my_alu|Add3~33\))))
-- \my_alu|Add3~35\ = CARRY((\input_reg_a|q[17]~_Duplicate_4_q\ & (\input_reg_b|q[17]~_Duplicate_4_q\ & !\my_alu|Add3~33\)) # (!\input_reg_a|q[17]~_Duplicate_4_q\ & ((\input_reg_b|q[17]~_Duplicate_4_q\) # (!\my_alu|Add3~33\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_a|q[17]~_Duplicate_4_q\,
	datab => \input_reg_b|q[17]~_Duplicate_4_q\,
	datad => VCC,
	cin => \my_alu|Add3~33\,
	combout => \my_alu|Add3~34_combout\,
	cout => \my_alu|Add3~35\);

-- Location: FF_X28_Y21_N7
\input_reg_a|q[17]~_Duplicate_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a[17]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_reg_a|q[17]~_Duplicate_4_q\);

-- Location: LCCOMB_X30_Y21_N2
\my_alu|Add2~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add2~34_combout\ = (\input_reg_b|q[17]~_Duplicate_4_q\ & ((\input_reg_a|q[17]~_Duplicate_4_q\ & (\my_alu|Add2~33\ & VCC)) # (!\input_reg_a|q[17]~_Duplicate_4_q\ & (!\my_alu|Add2~33\)))) # (!\input_reg_b|q[17]~_Duplicate_4_q\ & 
-- ((\input_reg_a|q[17]~_Duplicate_4_q\ & (!\my_alu|Add2~33\)) # (!\input_reg_a|q[17]~_Duplicate_4_q\ & ((\my_alu|Add2~33\) # (GND)))))
-- \my_alu|Add2~35\ = CARRY((\input_reg_b|q[17]~_Duplicate_4_q\ & (!\input_reg_a|q[17]~_Duplicate_4_q\ & !\my_alu|Add2~33\)) # (!\input_reg_b|q[17]~_Duplicate_4_q\ & ((!\my_alu|Add2~33\) # (!\input_reg_a|q[17]~_Duplicate_4_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[17]~_Duplicate_4_q\,
	datab => \input_reg_a|q[17]~_Duplicate_4_q\,
	datad => VCC,
	cin => \my_alu|Add2~33\,
	combout => \my_alu|Add2~34_combout\,
	cout => \my_alu|Add2~35\);

-- Location: LCCOMB_X29_Y21_N4
\my_alu|Mux14~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux14~5_combout\ = (\input_reg_op|q\(0) & ((\input_reg_op|q\(1)) # ((\my_alu|Add3~34_combout\)))) # (!\input_reg_op|q\(0) & (!\input_reg_op|q\(1) & ((\my_alu|Add2~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(0),
	datab => \input_reg_op|q\(1),
	datac => \my_alu|Add3~34_combout\,
	datad => \my_alu|Add2~34_combout\,
	combout => \my_alu|Mux14~5_combout\);

-- Location: LCCOMB_X25_Y21_N16
\my_alu|Mux14~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux14~6_combout\ = (\input_reg_op|q\(1) & ((\my_alu|Mux14~5_combout\ & (\my_alu|Mult1|auto_generated|w513w\(17))) # (!\my_alu|Mux14~5_combout\ & ((\my_alu|Mult0|auto_generated|w569w\(17)))))) # (!\input_reg_op|q\(1) & 
-- (((\my_alu|Mux14~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(1),
	datab => \my_alu|Mult1|auto_generated|w513w\(17),
	datac => \my_alu|Mux14~5_combout\,
	datad => \my_alu|Mult0|auto_generated|w569w\(17),
	combout => \my_alu|Mux14~6_combout\);

-- Location: LCCOMB_X25_Y21_N24
\my_alu|Mux14~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux14~7_combout\ = (\input_reg_op|q\(3) & (\my_alu|Mux14~4_combout\)) # (!\input_reg_op|q\(3) & ((\input_reg_op|q\(2) & ((\my_alu|Mux14~6_combout\))) # (!\input_reg_op|q\(2) & (\my_alu|Mux14~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mux14~4_combout\,
	datab => \input_reg_op|q\(3),
	datac => \input_reg_op|q\(2),
	datad => \my_alu|Mux14~6_combout\,
	combout => \my_alu|Mux14~7_combout\);

-- Location: FF_X25_Y21_N25
\output_reg_lo|q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \my_alu|Mux14~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_reg_lo|q\(17));

-- Location: LCCOMB_X32_Y21_N4
\my_alu|Add3~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add3~36_combout\ = ((\input_reg_a|q[18]~_Duplicate_4_q\ $ (\input_reg_b|q[18]~_Duplicate_4_q\ $ (\my_alu|Add3~35\)))) # (GND)
-- \my_alu|Add3~37\ = CARRY((\input_reg_a|q[18]~_Duplicate_4_q\ & ((!\my_alu|Add3~35\) # (!\input_reg_b|q[18]~_Duplicate_4_q\))) # (!\input_reg_a|q[18]~_Duplicate_4_q\ & (!\input_reg_b|q[18]~_Duplicate_4_q\ & !\my_alu|Add3~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_a|q[18]~_Duplicate_4_q\,
	datab => \input_reg_b|q[18]~_Duplicate_4_q\,
	datad => VCC,
	cin => \my_alu|Add3~35\,
	combout => \my_alu|Add3~36_combout\,
	cout => \my_alu|Add3~37\);

-- Location: LCCOMB_X30_Y21_N4
\my_alu|Add2~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add2~36_combout\ = ((\input_reg_a|q[18]~_Duplicate_4_q\ $ (\input_reg_b|q[18]~_Duplicate_4_q\ $ (!\my_alu|Add2~35\)))) # (GND)
-- \my_alu|Add2~37\ = CARRY((\input_reg_a|q[18]~_Duplicate_4_q\ & ((\input_reg_b|q[18]~_Duplicate_4_q\) # (!\my_alu|Add2~35\))) # (!\input_reg_a|q[18]~_Duplicate_4_q\ & (\input_reg_b|q[18]~_Duplicate_4_q\ & !\my_alu|Add2~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_a|q[18]~_Duplicate_4_q\,
	datab => \input_reg_b|q[18]~_Duplicate_4_q\,
	datad => VCC,
	cin => \my_alu|Add2~35\,
	combout => \my_alu|Add2~36_combout\,
	cout => \my_alu|Add2~37\);

-- Location: LCCOMB_X29_Y21_N10
\my_alu|Mux13~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux13~11_combout\ = (\input_reg_op|q\(0) & ((\input_reg_op|q\(1)) # ((\my_alu|Add3~36_combout\)))) # (!\input_reg_op|q\(0) & (!\input_reg_op|q\(1) & ((\my_alu|Add2~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(0),
	datab => \input_reg_op|q\(1),
	datac => \my_alu|Add3~36_combout\,
	datad => \my_alu|Add2~36_combout\,
	combout => \my_alu|Mux13~11_combout\);

-- Location: LCCOMB_X25_Y21_N10
\my_alu|Mux13~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux13~12_combout\ = (\input_reg_op|q\(1) & ((\my_alu|Mux13~11_combout\ & ((\my_alu|Mult1|auto_generated|op_1~0_combout\))) # (!\my_alu|Mux13~11_combout\ & (\my_alu|Mult0|auto_generated|op_1~0_combout\)))) # (!\input_reg_op|q\(1) & 
-- (((\my_alu|Mux13~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(1),
	datab => \my_alu|Mult0|auto_generated|op_1~0_combout\,
	datac => \my_alu|Mult1|auto_generated|op_1~0_combout\,
	datad => \my_alu|Mux13~11_combout\,
	combout => \my_alu|Mux13~12_combout\);

-- Location: LCCOMB_X25_Y21_N26
\my_alu|Mux13~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux13~13_combout\ = (\input_reg_op|q\(3) & (\my_alu|Mux13~10_combout\)) # (!\input_reg_op|q\(3) & ((\input_reg_op|q\(2) & ((\my_alu|Mux13~12_combout\))) # (!\input_reg_op|q\(2) & (\my_alu|Mux13~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mux13~10_combout\,
	datab => \input_reg_op|q\(3),
	datac => \input_reg_op|q\(2),
	datad => \my_alu|Mux13~12_combout\,
	combout => \my_alu|Mux13~13_combout\);

-- Location: FF_X25_Y21_N27
\output_reg_lo|q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \my_alu|Mux13~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_reg_lo|q\(18));

-- Location: LCCOMB_X32_Y21_N6
\my_alu|Add3~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add3~38_combout\ = (\input_reg_b|q[19]~_Duplicate_4_q\ & ((\input_reg_a|q[19]~_Duplicate_4_q\ & (!\my_alu|Add3~37\)) # (!\input_reg_a|q[19]~_Duplicate_4_q\ & ((\my_alu|Add3~37\) # (GND))))) # (!\input_reg_b|q[19]~_Duplicate_4_q\ & 
-- ((\input_reg_a|q[19]~_Duplicate_4_q\ & (\my_alu|Add3~37\ & VCC)) # (!\input_reg_a|q[19]~_Duplicate_4_q\ & (!\my_alu|Add3~37\))))
-- \my_alu|Add3~39\ = CARRY((\input_reg_b|q[19]~_Duplicate_4_q\ & ((!\my_alu|Add3~37\) # (!\input_reg_a|q[19]~_Duplicate_4_q\))) # (!\input_reg_b|q[19]~_Duplicate_4_q\ & (!\input_reg_a|q[19]~_Duplicate_4_q\ & !\my_alu|Add3~37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[19]~_Duplicate_4_q\,
	datab => \input_reg_a|q[19]~_Duplicate_4_q\,
	datad => VCC,
	cin => \my_alu|Add3~37\,
	combout => \my_alu|Add3~38_combout\,
	cout => \my_alu|Add3~39\);

-- Location: LCCOMB_X30_Y21_N6
\my_alu|Add2~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add2~38_combout\ = (\input_reg_a|q[19]~_Duplicate_4_q\ & ((\input_reg_b|q[19]~_Duplicate_4_q\ & (\my_alu|Add2~37\ & VCC)) # (!\input_reg_b|q[19]~_Duplicate_4_q\ & (!\my_alu|Add2~37\)))) # (!\input_reg_a|q[19]~_Duplicate_4_q\ & 
-- ((\input_reg_b|q[19]~_Duplicate_4_q\ & (!\my_alu|Add2~37\)) # (!\input_reg_b|q[19]~_Duplicate_4_q\ & ((\my_alu|Add2~37\) # (GND)))))
-- \my_alu|Add2~39\ = CARRY((\input_reg_a|q[19]~_Duplicate_4_q\ & (!\input_reg_b|q[19]~_Duplicate_4_q\ & !\my_alu|Add2~37\)) # (!\input_reg_a|q[19]~_Duplicate_4_q\ & ((!\my_alu|Add2~37\) # (!\input_reg_b|q[19]~_Duplicate_4_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_a|q[19]~_Duplicate_4_q\,
	datab => \input_reg_b|q[19]~_Duplicate_4_q\,
	datad => VCC,
	cin => \my_alu|Add2~37\,
	combout => \my_alu|Add2~38_combout\,
	cout => \my_alu|Add2~39\);

-- Location: LCCOMB_X26_Y21_N26
\my_alu|Mux12~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux12~5_combout\ = (\input_reg_op|q\(0) & ((\input_reg_op|q\(1)) # ((\my_alu|Add3~38_combout\)))) # (!\input_reg_op|q\(0) & (!\input_reg_op|q\(1) & ((\my_alu|Add2~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(0),
	datab => \input_reg_op|q\(1),
	datac => \my_alu|Add3~38_combout\,
	datad => \my_alu|Add2~38_combout\,
	combout => \my_alu|Mux12~5_combout\);

-- Location: LCCOMB_X25_Y21_N28
\my_alu|Mux12~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux12~6_combout\ = (\input_reg_op|q\(1) & ((\my_alu|Mux12~5_combout\ & ((\my_alu|Mult1|auto_generated|op_1~2_combout\))) # (!\my_alu|Mux12~5_combout\ & (\my_alu|Mult0|auto_generated|op_1~2_combout\)))) # (!\input_reg_op|q\(1) & 
-- (\my_alu|Mux12~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(1),
	datab => \my_alu|Mux12~5_combout\,
	datac => \my_alu|Mult0|auto_generated|op_1~2_combout\,
	datad => \my_alu|Mult1|auto_generated|op_1~2_combout\,
	combout => \my_alu|Mux12~6_combout\);

-- Location: LCCOMB_X25_Y21_N4
\my_alu|Mux12~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux12~7_combout\ = (\input_reg_op|q\(3) & (\my_alu|Mux12~4_combout\)) # (!\input_reg_op|q\(3) & ((\input_reg_op|q\(2) & ((\my_alu|Mux12~6_combout\))) # (!\input_reg_op|q\(2) & (\my_alu|Mux12~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mux12~4_combout\,
	datab => \input_reg_op|q\(3),
	datac => \input_reg_op|q\(2),
	datad => \my_alu|Mux12~6_combout\,
	combout => \my_alu|Mux12~7_combout\);

-- Location: FF_X25_Y21_N5
\output_reg_lo|q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \my_alu|Mux12~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_reg_lo|q\(19));

-- Location: LCCOMB_X30_Y21_N8
\my_alu|Add2~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add2~40_combout\ = ((\input_reg_a|q[20]~_Duplicate_4_q\ $ (\input_reg_b|q[20]~_Duplicate_4_q\ $ (!\my_alu|Add2~39\)))) # (GND)
-- \my_alu|Add2~41\ = CARRY((\input_reg_a|q[20]~_Duplicate_4_q\ & ((\input_reg_b|q[20]~_Duplicate_4_q\) # (!\my_alu|Add2~39\))) # (!\input_reg_a|q[20]~_Duplicate_4_q\ & (\input_reg_b|q[20]~_Duplicate_4_q\ & !\my_alu|Add2~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_a|q[20]~_Duplicate_4_q\,
	datab => \input_reg_b|q[20]~_Duplicate_4_q\,
	datad => VCC,
	cin => \my_alu|Add2~39\,
	combout => \my_alu|Add2~40_combout\,
	cout => \my_alu|Add2~41\);

-- Location: LCCOMB_X26_Y21_N28
\my_alu|Mux11~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux11~5_combout\ = (\input_reg_op|q\(1) & (((\input_reg_op|q\(0))))) # (!\input_reg_op|q\(1) & ((\input_reg_op|q\(0) & (\my_alu|Add3~40_combout\)) # (!\input_reg_op|q\(0) & ((\my_alu|Add2~40_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Add3~40_combout\,
	datab => \my_alu|Add2~40_combout\,
	datac => \input_reg_op|q\(1),
	datad => \input_reg_op|q\(0),
	combout => \my_alu|Mux11~5_combout\);

-- Location: LCCOMB_X25_Y21_N18
\my_alu|Mux11~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux11~6_combout\ = (\input_reg_op|q\(1) & ((\my_alu|Mux11~5_combout\ & (\my_alu|Mult1|auto_generated|op_1~4_combout\)) # (!\my_alu|Mux11~5_combout\ & ((\my_alu|Mult0|auto_generated|op_1~4_combout\))))) # (!\input_reg_op|q\(1) & 
-- (\my_alu|Mux11~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(1),
	datab => \my_alu|Mux11~5_combout\,
	datac => \my_alu|Mult1|auto_generated|op_1~4_combout\,
	datad => \my_alu|Mult0|auto_generated|op_1~4_combout\,
	combout => \my_alu|Mux11~6_combout\);

-- Location: LCCOMB_X25_Y21_N2
\my_alu|Mux11~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux11~7_combout\ = (\input_reg_op|q\(3) & (\my_alu|Mux11~4_combout\)) # (!\input_reg_op|q\(3) & ((\input_reg_op|q\(2) & ((\my_alu|Mux11~6_combout\))) # (!\input_reg_op|q\(2) & (\my_alu|Mux11~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mux11~4_combout\,
	datab => \input_reg_op|q\(3),
	datac => \input_reg_op|q\(2),
	datad => \my_alu|Mux11~6_combout\,
	combout => \my_alu|Mux11~7_combout\);

-- Location: FF_X25_Y21_N3
\output_reg_lo|q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \my_alu|Mux11~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_reg_lo|q\(20));

-- Location: LCCOMB_X29_Y20_N22
\my_alu|Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux10~2_combout\ = (\input_reg_b|q[21]~_Duplicate_4_q\ & ((\input_reg_a|q[21]~_Duplicate_4_q\ & (!\input_reg_op|q\(1))) # (!\input_reg_a|q[21]~_Duplicate_4_q\ & ((\input_reg_op|q\(0)))))) # (!\input_reg_b|q[21]~_Duplicate_4_q\ & 
-- ((\input_reg_a|q[21]~_Duplicate_4_q\ & ((\input_reg_op|q\(0)))) # (!\input_reg_a|q[21]~_Duplicate_4_q\ & (\input_reg_op|q\(1) & !\input_reg_op|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(1),
	datab => \input_reg_b|q[21]~_Duplicate_4_q\,
	datac => \input_reg_a|q[21]~_Duplicate_4_q\,
	datad => \input_reg_op|q\(0),
	combout => \my_alu|Mux10~2_combout\);

-- Location: LCCOMB_X28_Y20_N14
\my_alu|Mux13~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux13~5_combout\ = (\input_reg_op|q\(3) & ((\input_reg_op|q\(2)) # ((\input_reg_shamt|q\(4)) # (!\input_reg_op|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(3),
	datab => \input_reg_op|q\(2),
	datac => \input_reg_op|q\(1),
	datad => \input_reg_shamt|q\(4),
	combout => \my_alu|Mux13~5_combout\);

-- Location: LCCOMB_X30_Y23_N8
\my_alu|Mux13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux13~2_combout\ = \input_reg_op|q\(0) $ (!\input_reg_shamt|q\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(0),
	datad => \input_reg_shamt|q\(4),
	combout => \my_alu|Mux13~2_combout\);

-- Location: LCCOMB_X30_Y23_N30
\my_alu|Mux13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux13~3_combout\ = (\input_reg_op|q\(0)) # ((\input_reg_shamt|q\(3) & !\input_reg_shamt|q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(3),
	datac => \input_reg_op|q\(0),
	datad => \input_reg_shamt|q\(4),
	combout => \my_alu|Mux13~3_combout\);

-- Location: LCCOMB_X32_Y19_N2
\my_alu|ShiftRight0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight0~53_combout\ = (\input_reg_shamt|q\(3) & (!\input_reg_shamt|q\(2) & (\my_alu|ShiftRight0~31_combout\))) # (!\input_reg_shamt|q\(3) & (((\my_alu|ShiftRight0~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(3),
	datab => \input_reg_shamt|q\(2),
	datac => \my_alu|ShiftRight0~31_combout\,
	datad => \my_alu|ShiftRight0~52_combout\,
	combout => \my_alu|ShiftRight0~53_combout\);

-- Location: LCCOMB_X31_Y23_N0
\my_alu|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux10~0_combout\ = (\my_alu|Mux13~2_combout\ & (((!\my_alu|Mux13~3_combout\)))) # (!\my_alu|Mux13~2_combout\ & ((\my_alu|Mux13~3_combout\ & ((\my_alu|ShiftRight0~53_combout\))) # (!\my_alu|Mux13~3_combout\ & (\my_alu|ShiftLeft0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|ShiftLeft0~20_combout\,
	datab => \my_alu|Mux13~2_combout\,
	datac => \my_alu|Mux13~3_combout\,
	datad => \my_alu|ShiftRight0~53_combout\,
	combout => \my_alu|Mux10~0_combout\);

-- Location: LCCOMB_X30_Y23_N22
\my_alu|Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux13~1_combout\ = (\input_reg_shamt|q\(4)) # (\input_reg_op|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(4),
	datad => \input_reg_op|q\(0),
	combout => \my_alu|Mux13~1_combout\);

-- Location: LCCOMB_X31_Y23_N14
\my_alu|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux10~1_combout\ = (\my_alu|Mux10~0_combout\ & ((\my_alu|ShiftLeft0~81_combout\) # ((\my_alu|Mux13~1_combout\)))) # (!\my_alu|Mux10~0_combout\ & (((!\my_alu|Mux13~1_combout\ & \my_alu|ShiftLeft0~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|ShiftLeft0~81_combout\,
	datab => \my_alu|Mux10~0_combout\,
	datac => \my_alu|Mux13~1_combout\,
	datad => \my_alu|ShiftLeft0~52_combout\,
	combout => \my_alu|Mux10~1_combout\);

-- Location: LCCOMB_X28_Y20_N4
\my_alu|Mux10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux10~3_combout\ = (\my_alu|Mux13~4_combout\ & ((\my_alu|Mux13~5_combout\ & ((\my_alu|Mux10~1_combout\))) # (!\my_alu|Mux13~5_combout\ & (\my_alu|Mux10~2_combout\)))) # (!\my_alu|Mux13~4_combout\ & (((!\my_alu|Mux13~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mux13~4_combout\,
	datab => \my_alu|Mux10~2_combout\,
	datac => \my_alu|Mux13~5_combout\,
	datad => \my_alu|Mux10~1_combout\,
	combout => \my_alu|Mux10~3_combout\);

-- Location: LCCOMB_X31_Y20_N6
\my_alu|ShiftRight1~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight1~48_combout\ = (\input_reg_shamt|q\(1) & (\input_reg_b|q[31]~_Duplicate_4_q\)) # (!\input_reg_shamt|q\(1) & ((\input_reg_shamt|q\(2) & (\input_reg_b|q[31]~_Duplicate_4_q\)) # (!\input_reg_shamt|q\(2) & 
-- ((\my_alu|ShiftRight1~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[31]~_Duplicate_4_q\,
	datab => \input_reg_shamt|q\(1),
	datac => \input_reg_shamt|q\(2),
	datad => \my_alu|ShiftRight1~14_combout\,
	combout => \my_alu|ShiftRight1~48_combout\);

-- Location: LCCOMB_X32_Y20_N28
\my_alu|ShiftRight1~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight1~49_combout\ = (\input_reg_shamt|q\(3) & (\my_alu|ShiftRight1~48_combout\)) # (!\input_reg_shamt|q\(3) & ((\my_alu|ShiftRight0~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input_reg_shamt|q\(3),
	datac => \my_alu|ShiftRight1~48_combout\,
	datad => \my_alu|ShiftRight0~52_combout\,
	combout => \my_alu|ShiftRight1~49_combout\);

-- Location: LCCOMB_X28_Y20_N26
\my_alu|Mux10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux10~4_combout\ = (\my_alu|Mux13~0_combout\ & ((\my_alu|Mux10~3_combout\ & ((\my_alu|ShiftRight1~49_combout\))) # (!\my_alu|Mux10~3_combout\ & (\input_reg_b|q[31]~_Duplicate_4_q\)))) # (!\my_alu|Mux13~0_combout\ & (((\my_alu|Mux10~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mux13~0_combout\,
	datab => \input_reg_b|q[31]~_Duplicate_4_q\,
	datac => \my_alu|Mux10~3_combout\,
	datad => \my_alu|ShiftRight1~49_combout\,
	combout => \my_alu|Mux10~4_combout\);

-- Location: LCCOMB_X30_Y21_N10
\my_alu|Add2~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add2~42_combout\ = (\input_reg_b|q[21]~_Duplicate_4_q\ & ((\input_reg_a|q[21]~_Duplicate_4_q\ & (\my_alu|Add2~41\ & VCC)) # (!\input_reg_a|q[21]~_Duplicate_4_q\ & (!\my_alu|Add2~41\)))) # (!\input_reg_b|q[21]~_Duplicate_4_q\ & 
-- ((\input_reg_a|q[21]~_Duplicate_4_q\ & (!\my_alu|Add2~41\)) # (!\input_reg_a|q[21]~_Duplicate_4_q\ & ((\my_alu|Add2~41\) # (GND)))))
-- \my_alu|Add2~43\ = CARRY((\input_reg_b|q[21]~_Duplicate_4_q\ & (!\input_reg_a|q[21]~_Duplicate_4_q\ & !\my_alu|Add2~41\)) # (!\input_reg_b|q[21]~_Duplicate_4_q\ & ((!\my_alu|Add2~41\) # (!\input_reg_a|q[21]~_Duplicate_4_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[21]~_Duplicate_4_q\,
	datab => \input_reg_a|q[21]~_Duplicate_4_q\,
	datad => VCC,
	cin => \my_alu|Add2~41\,
	combout => \my_alu|Add2~42_combout\,
	cout => \my_alu|Add2~43\);

-- Location: LCCOMB_X32_Y21_N10
\my_alu|Add3~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add3~42_combout\ = (\input_reg_a|q[21]~_Duplicate_4_q\ & ((\input_reg_b|q[21]~_Duplicate_4_q\ & (!\my_alu|Add3~41\)) # (!\input_reg_b|q[21]~_Duplicate_4_q\ & (\my_alu|Add3~41\ & VCC)))) # (!\input_reg_a|q[21]~_Duplicate_4_q\ & 
-- ((\input_reg_b|q[21]~_Duplicate_4_q\ & ((\my_alu|Add3~41\) # (GND))) # (!\input_reg_b|q[21]~_Duplicate_4_q\ & (!\my_alu|Add3~41\))))
-- \my_alu|Add3~43\ = CARRY((\input_reg_a|q[21]~_Duplicate_4_q\ & (\input_reg_b|q[21]~_Duplicate_4_q\ & !\my_alu|Add3~41\)) # (!\input_reg_a|q[21]~_Duplicate_4_q\ & ((\input_reg_b|q[21]~_Duplicate_4_q\) # (!\my_alu|Add3~41\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_a|q[21]~_Duplicate_4_q\,
	datab => \input_reg_b|q[21]~_Duplicate_4_q\,
	datad => VCC,
	cin => \my_alu|Add3~41\,
	combout => \my_alu|Add3~42_combout\,
	cout => \my_alu|Add3~43\);

-- Location: LCCOMB_X26_Y21_N30
\my_alu|Mux10~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux10~5_combout\ = (\input_reg_op|q\(0) & ((\input_reg_op|q\(1)) # ((\my_alu|Add3~42_combout\)))) # (!\input_reg_op|q\(0) & (!\input_reg_op|q\(1) & (\my_alu|Add2~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(0),
	datab => \input_reg_op|q\(1),
	datac => \my_alu|Add2~42_combout\,
	datad => \my_alu|Add3~42_combout\,
	combout => \my_alu|Mux10~5_combout\);

-- Location: LCCOMB_X26_Y20_N12
\my_alu|Mux10~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux10~6_combout\ = (\input_reg_op|q\(1) & ((\my_alu|Mux10~5_combout\ & (\my_alu|Mult1|auto_generated|op_1~6_combout\)) # (!\my_alu|Mux10~5_combout\ & ((\my_alu|Mult0|auto_generated|op_1~6_combout\))))) # (!\input_reg_op|q\(1) & 
-- (\my_alu|Mux10~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(1),
	datab => \my_alu|Mux10~5_combout\,
	datac => \my_alu|Mult1|auto_generated|op_1~6_combout\,
	datad => \my_alu|Mult0|auto_generated|op_1~6_combout\,
	combout => \my_alu|Mux10~6_combout\);

-- Location: LCCOMB_X26_Y20_N26
\my_alu|Mux10~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux10~7_combout\ = (\input_reg_op|q\(3) & (((\my_alu|Mux10~4_combout\)))) # (!\input_reg_op|q\(3) & ((\input_reg_op|q\(2) & ((\my_alu|Mux10~6_combout\))) # (!\input_reg_op|q\(2) & (\my_alu|Mux10~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(3),
	datab => \input_reg_op|q\(2),
	datac => \my_alu|Mux10~4_combout\,
	datad => \my_alu|Mux10~6_combout\,
	combout => \my_alu|Mux10~7_combout\);

-- Location: FF_X26_Y20_N27
\output_reg_lo|q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \my_alu|Mux10~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_reg_lo|q\(21));

-- Location: LCCOMB_X32_Y21_N12
\my_alu|Add3~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add3~44_combout\ = ((\input_reg_b|q[22]~_Duplicate_4_q\ $ (\input_reg_a|q[22]~_Duplicate_4_q\ $ (\my_alu|Add3~43\)))) # (GND)
-- \my_alu|Add3~45\ = CARRY((\input_reg_b|q[22]~_Duplicate_4_q\ & (\input_reg_a|q[22]~_Duplicate_4_q\ & !\my_alu|Add3~43\)) # (!\input_reg_b|q[22]~_Duplicate_4_q\ & ((\input_reg_a|q[22]~_Duplicate_4_q\) # (!\my_alu|Add3~43\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[22]~_Duplicate_4_q\,
	datab => \input_reg_a|q[22]~_Duplicate_4_q\,
	datad => VCC,
	cin => \my_alu|Add3~43\,
	combout => \my_alu|Add3~44_combout\,
	cout => \my_alu|Add3~45\);

-- Location: LCCOMB_X30_Y21_N12
\my_alu|Add2~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add2~44_combout\ = ((\input_reg_b|q[22]~_Duplicate_4_q\ $ (\input_reg_a|q[22]~_Duplicate_4_q\ $ (!\my_alu|Add2~43\)))) # (GND)
-- \my_alu|Add2~45\ = CARRY((\input_reg_b|q[22]~_Duplicate_4_q\ & ((\input_reg_a|q[22]~_Duplicate_4_q\) # (!\my_alu|Add2~43\))) # (!\input_reg_b|q[22]~_Duplicate_4_q\ & (\input_reg_a|q[22]~_Duplicate_4_q\ & !\my_alu|Add2~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[22]~_Duplicate_4_q\,
	datab => \input_reg_a|q[22]~_Duplicate_4_q\,
	datad => VCC,
	cin => \my_alu|Add2~43\,
	combout => \my_alu|Add2~44_combout\,
	cout => \my_alu|Add2~45\);

-- Location: LCCOMB_X31_Y21_N14
\my_alu|Mux9~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux9~5_combout\ = (\input_reg_op|q\(0) & ((\input_reg_op|q\(1)) # ((\my_alu|Add3~44_combout\)))) # (!\input_reg_op|q\(0) & (!\input_reg_op|q\(1) & ((\my_alu|Add2~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(0),
	datab => \input_reg_op|q\(1),
	datac => \my_alu|Add3~44_combout\,
	datad => \my_alu|Add2~44_combout\,
	combout => \my_alu|Mux9~5_combout\);

-- Location: LCCOMB_X26_Y20_N18
\my_alu|Mux9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux9~6_combout\ = (\input_reg_op|q\(1) & ((\my_alu|Mux9~5_combout\ & ((\my_alu|Mult1|auto_generated|op_1~8_combout\))) # (!\my_alu|Mux9~5_combout\ & (\my_alu|Mult0|auto_generated|op_1~8_combout\)))) # (!\input_reg_op|q\(1) & 
-- (\my_alu|Mux9~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(1),
	datab => \my_alu|Mux9~5_combout\,
	datac => \my_alu|Mult0|auto_generated|op_1~8_combout\,
	datad => \my_alu|Mult1|auto_generated|op_1~8_combout\,
	combout => \my_alu|Mux9~6_combout\);

-- Location: LCCOMB_X26_Y20_N4
\my_alu|Mux9~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux9~7_combout\ = (\input_reg_op|q\(2) & ((\input_reg_op|q\(3) & (\my_alu|Mux9~4_combout\)) # (!\input_reg_op|q\(3) & ((\my_alu|Mux9~6_combout\))))) # (!\input_reg_op|q\(2) & (\my_alu|Mux9~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mux9~4_combout\,
	datab => \input_reg_op|q\(2),
	datac => \input_reg_op|q\(3),
	datad => \my_alu|Mux9~6_combout\,
	combout => \my_alu|Mux9~7_combout\);

-- Location: FF_X26_Y20_N5
\output_reg_lo|q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \my_alu|Mux9~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_reg_lo|q\(22));

-- Location: LCCOMB_X28_Y19_N24
\my_alu|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux13~0_combout\ = (\input_reg_op|q\(1) & (!\input_reg_op|q\(2) & \input_reg_op|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(1),
	datab => \input_reg_op|q\(2),
	datac => \input_reg_op|q\(3),
	combout => \my_alu|Mux13~0_combout\);

-- Location: LCCOMB_X29_Y22_N24
\my_alu|ShiftRight1~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight1~52_combout\ = (\input_reg_shamt|q\(3) & (\input_reg_b|q[31]~_Duplicate_4_q\)) # (!\input_reg_shamt|q\(3) & ((\my_alu|ShiftRight0~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[31]~_Duplicate_4_q\,
	datab => \input_reg_shamt|q\(3),
	datad => \my_alu|ShiftRight0~59_combout\,
	combout => \my_alu|ShiftRight1~52_combout\);

-- Location: LCCOMB_X28_Y20_N0
\my_alu|Mux13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux13~4_combout\ = ((!\input_reg_op|q\(2) & !\input_reg_op|q\(1))) # (!\input_reg_op|q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input_reg_op|q\(2),
	datac => \input_reg_op|q\(1),
	datad => \input_reg_op|q\(3),
	combout => \my_alu|Mux13~4_combout\);

-- Location: LCCOMB_X29_Y21_N20
\my_alu|Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux8~2_combout\ = (\input_reg_b|q[23]~_Duplicate_4_q\ & ((\input_reg_a|q[23]~_Duplicate_4_q\ & (!\input_reg_op|q\(1))) # (!\input_reg_a|q[23]~_Duplicate_4_q\ & ((\input_reg_op|q\(0)))))) # (!\input_reg_b|q[23]~_Duplicate_4_q\ & 
-- ((\input_reg_a|q[23]~_Duplicate_4_q\ & ((\input_reg_op|q\(0)))) # (!\input_reg_a|q[23]~_Duplicate_4_q\ & (\input_reg_op|q\(1) & !\input_reg_op|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[23]~_Duplicate_4_q\,
	datab => \input_reg_a|q[23]~_Duplicate_4_q\,
	datac => \input_reg_op|q\(1),
	datad => \input_reg_op|q\(0),
	combout => \my_alu|Mux8~2_combout\);

-- Location: LCCOMB_X32_Y23_N16
\my_alu|ShiftLeft0~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftLeft0~73_combout\ = (\input_reg_shamt|q\(1) & (\input_reg_b|q[17]~_Duplicate_4_q\)) # (!\input_reg_shamt|q\(1) & ((\input_reg_b|q[19]~_Duplicate_4_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[17]~_Duplicate_4_q\,
	datac => \input_reg_b|q[19]~_Duplicate_4_q\,
	datad => \input_reg_shamt|q\(1),
	combout => \my_alu|ShiftLeft0~73_combout\);

-- Location: LCCOMB_X33_Y22_N20
\my_alu|ShiftLeft0~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftLeft0~70_combout\ = (\input_reg_shamt|q\(1) & (\input_reg_b|q[16]~_Duplicate_4_q\)) # (!\input_reg_shamt|q\(1) & ((\input_reg_b|q[18]~_Duplicate_4_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input_reg_b|q[16]~_Duplicate_4_q\,
	datac => \input_reg_shamt|q\(1),
	datad => \input_reg_b|q[18]~_Duplicate_4_q\,
	combout => \my_alu|ShiftLeft0~70_combout\);

-- Location: LCCOMB_X33_Y23_N16
\my_alu|ShiftLeft0~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftLeft0~74_combout\ = (\input_reg_shamt|q\(0) & ((\my_alu|ShiftLeft0~70_combout\))) # (!\input_reg_shamt|q\(0) & (\my_alu|ShiftLeft0~73_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input_reg_shamt|q\(0),
	datac => \my_alu|ShiftLeft0~73_combout\,
	datad => \my_alu|ShiftLeft0~70_combout\,
	combout => \my_alu|ShiftLeft0~74_combout\);

-- Location: LCCOMB_X33_Y19_N2
\my_alu|ShiftLeft0~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftLeft0~85_combout\ = (\input_reg_shamt|q\(1) & ((\input_reg_b|q[21]~_Duplicate_4_q\))) # (!\input_reg_shamt|q\(1) & (\input_reg_b|q[23]~_Duplicate_4_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[23]~_Duplicate_4_q\,
	datab => \input_reg_shamt|q\(1),
	datad => \input_reg_b|q[21]~_Duplicate_4_q\,
	combout => \my_alu|ShiftLeft0~85_combout\);

-- Location: LCCOMB_X32_Y23_N18
\my_alu|ShiftLeft0~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftLeft0~82_combout\ = (\input_reg_shamt|q\(1) & ((\input_reg_b|q[20]~_Duplicate_4_q\))) # (!\input_reg_shamt|q\(1) & (\input_reg_b|q[22]~_Duplicate_4_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input_reg_b|q[22]~_Duplicate_4_q\,
	datac => \input_reg_b|q[20]~_Duplicate_4_q\,
	datad => \input_reg_shamt|q\(1),
	combout => \my_alu|ShiftLeft0~82_combout\);

-- Location: LCCOMB_X33_Y23_N20
\my_alu|ShiftLeft0~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftLeft0~86_combout\ = (\input_reg_shamt|q\(0) & ((\my_alu|ShiftLeft0~82_combout\))) # (!\input_reg_shamt|q\(0) & (\my_alu|ShiftLeft0~85_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input_reg_shamt|q\(0),
	datac => \my_alu|ShiftLeft0~85_combout\,
	datad => \my_alu|ShiftLeft0~82_combout\,
	combout => \my_alu|ShiftLeft0~86_combout\);

-- Location: LCCOMB_X33_Y23_N8
\my_alu|ShiftLeft0~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftLeft0~87_combout\ = (\input_reg_shamt|q\(2) & (\my_alu|ShiftLeft0~74_combout\)) # (!\input_reg_shamt|q\(2) & ((\my_alu|ShiftLeft0~86_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(2),
	datab => \my_alu|ShiftLeft0~74_combout\,
	datad => \my_alu|ShiftLeft0~86_combout\,
	combout => \my_alu|ShiftLeft0~87_combout\);

-- Location: LCCOMB_X34_Y23_N8
\my_alu|ShiftLeft0~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftLeft0~55_combout\ = (\input_reg_shamt|q\(1) & ((\input_reg_b|q[12]~_Duplicate_4_q\))) # (!\input_reg_shamt|q\(1) & (\input_reg_b|q[14]~_Duplicate_4_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input_reg_b|q[14]~_Duplicate_4_q\,
	datac => \input_reg_shamt|q\(1),
	datad => \input_reg_b|q[12]~_Duplicate_4_q\,
	combout => \my_alu|ShiftLeft0~55_combout\);

-- Location: LCCOMB_X34_Y23_N16
\my_alu|ShiftLeft0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftLeft0~60_combout\ = (\input_reg_shamt|q\(1) & (\input_reg_b|q[13]~_Duplicate_4_q\)) # (!\input_reg_shamt|q\(1) & ((\input_reg_b|q[15]~_Duplicate_4_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(1),
	datac => \input_reg_b|q[13]~_Duplicate_4_q\,
	datad => \input_reg_b|q[15]~_Duplicate_4_q\,
	combout => \my_alu|ShiftLeft0~60_combout\);

-- Location: LCCOMB_X34_Y23_N24
\my_alu|ShiftLeft0~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftLeft0~61_combout\ = (\input_reg_shamt|q\(0) & (\my_alu|ShiftLeft0~55_combout\)) # (!\input_reg_shamt|q\(0) & ((\my_alu|ShiftLeft0~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(0),
	datab => \my_alu|ShiftLeft0~55_combout\,
	datad => \my_alu|ShiftLeft0~60_combout\,
	combout => \my_alu|ShiftLeft0~61_combout\);

-- Location: LCCOMB_X35_Y22_N12
\my_alu|ShiftLeft0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftLeft0~37_combout\ = (\input_reg_shamt|q\(1) & (\input_reg_b|q[8]~_Duplicate_4_q\)) # (!\input_reg_shamt|q\(1) & ((\input_reg_b|q[10]~_Duplicate_4_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[8]~_Duplicate_4_q\,
	datac => \input_reg_b|q[10]~_Duplicate_4_q\,
	datad => \input_reg_shamt|q\(1),
	combout => \my_alu|ShiftLeft0~37_combout\);

-- Location: LCCOMB_X34_Y23_N28
\my_alu|ShiftLeft0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftLeft0~41_combout\ = (\input_reg_shamt|q\(1) & ((\input_reg_b|q[9]~_Duplicate_4_q\))) # (!\input_reg_shamt|q\(1) & (\input_reg_b|q[11]~_Duplicate_4_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[11]~_Duplicate_4_q\,
	datab => \input_reg_b|q[9]~_Duplicate_4_q\,
	datac => \input_reg_shamt|q\(1),
	combout => \my_alu|ShiftLeft0~41_combout\);

-- Location: LCCOMB_X34_Y23_N18
\my_alu|ShiftLeft0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftLeft0~42_combout\ = (\input_reg_shamt|q\(0) & (\my_alu|ShiftLeft0~37_combout\)) # (!\input_reg_shamt|q\(0) & ((\my_alu|ShiftLeft0~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input_reg_shamt|q\(0),
	datac => \my_alu|ShiftLeft0~37_combout\,
	datad => \my_alu|ShiftLeft0~41_combout\,
	combout => \my_alu|ShiftLeft0~42_combout\);

-- Location: LCCOMB_X33_Y23_N6
\my_alu|ShiftLeft0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftLeft0~62_combout\ = (\input_reg_shamt|q\(2) & ((\my_alu|ShiftLeft0~42_combout\))) # (!\input_reg_shamt|q\(2) & (\my_alu|ShiftLeft0~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(2),
	datac => \my_alu|ShiftLeft0~61_combout\,
	datad => \my_alu|ShiftLeft0~42_combout\,
	combout => \my_alu|ShiftLeft0~62_combout\);

-- Location: LCCOMB_X29_Y23_N24
\my_alu|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux8~1_combout\ = (\my_alu|Mux8~0_combout\ & ((\my_alu|Mux13~1_combout\) # ((\my_alu|ShiftLeft0~87_combout\)))) # (!\my_alu|Mux8~0_combout\ & (!\my_alu|Mux13~1_combout\ & ((\my_alu|ShiftLeft0~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mux8~0_combout\,
	datab => \my_alu|Mux13~1_combout\,
	datac => \my_alu|ShiftLeft0~87_combout\,
	datad => \my_alu|ShiftLeft0~62_combout\,
	combout => \my_alu|Mux8~1_combout\);

-- Location: LCCOMB_X28_Y21_N16
\my_alu|Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux8~3_combout\ = (\my_alu|Mux13~5_combout\ & (\my_alu|Mux13~4_combout\ & ((\my_alu|Mux8~1_combout\)))) # (!\my_alu|Mux13~5_combout\ & (((\my_alu|Mux8~2_combout\)) # (!\my_alu|Mux13~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mux13~5_combout\,
	datab => \my_alu|Mux13~4_combout\,
	datac => \my_alu|Mux8~2_combout\,
	datad => \my_alu|Mux8~1_combout\,
	combout => \my_alu|Mux8~3_combout\);

-- Location: LCCOMB_X28_Y21_N30
\my_alu|Mux8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux8~4_combout\ = (\my_alu|Mux13~0_combout\ & ((\my_alu|Mux8~3_combout\ & ((\my_alu|ShiftRight1~52_combout\))) # (!\my_alu|Mux8~3_combout\ & (\input_reg_b|q[31]~_Duplicate_4_q\)))) # (!\my_alu|Mux13~0_combout\ & (((\my_alu|Mux8~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[31]~_Duplicate_4_q\,
	datab => \my_alu|Mux13~0_combout\,
	datac => \my_alu|ShiftRight1~52_combout\,
	datad => \my_alu|Mux8~3_combout\,
	combout => \my_alu|Mux8~4_combout\);

-- Location: LCCOMB_X30_Y21_N14
\my_alu|Add2~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add2~46_combout\ = (\input_reg_a|q[23]~_Duplicate_4_q\ & ((\input_reg_b|q[23]~_Duplicate_4_q\ & (\my_alu|Add2~45\ & VCC)) # (!\input_reg_b|q[23]~_Duplicate_4_q\ & (!\my_alu|Add2~45\)))) # (!\input_reg_a|q[23]~_Duplicate_4_q\ & 
-- ((\input_reg_b|q[23]~_Duplicate_4_q\ & (!\my_alu|Add2~45\)) # (!\input_reg_b|q[23]~_Duplicate_4_q\ & ((\my_alu|Add2~45\) # (GND)))))
-- \my_alu|Add2~47\ = CARRY((\input_reg_a|q[23]~_Duplicate_4_q\ & (!\input_reg_b|q[23]~_Duplicate_4_q\ & !\my_alu|Add2~45\)) # (!\input_reg_a|q[23]~_Duplicate_4_q\ & ((!\my_alu|Add2~45\) # (!\input_reg_b|q[23]~_Duplicate_4_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_a|q[23]~_Duplicate_4_q\,
	datab => \input_reg_b|q[23]~_Duplicate_4_q\,
	datad => VCC,
	cin => \my_alu|Add2~45\,
	combout => \my_alu|Add2~46_combout\,
	cout => \my_alu|Add2~47\);

-- Location: LCCOMB_X32_Y21_N14
\my_alu|Add3~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add3~46_combout\ = (\input_reg_b|q[23]~_Duplicate_4_q\ & ((\input_reg_a|q[23]~_Duplicate_4_q\ & (!\my_alu|Add3~45\)) # (!\input_reg_a|q[23]~_Duplicate_4_q\ & ((\my_alu|Add3~45\) # (GND))))) # (!\input_reg_b|q[23]~_Duplicate_4_q\ & 
-- ((\input_reg_a|q[23]~_Duplicate_4_q\ & (\my_alu|Add3~45\ & VCC)) # (!\input_reg_a|q[23]~_Duplicate_4_q\ & (!\my_alu|Add3~45\))))
-- \my_alu|Add3~47\ = CARRY((\input_reg_b|q[23]~_Duplicate_4_q\ & ((!\my_alu|Add3~45\) # (!\input_reg_a|q[23]~_Duplicate_4_q\))) # (!\input_reg_b|q[23]~_Duplicate_4_q\ & (!\input_reg_a|q[23]~_Duplicate_4_q\ & !\my_alu|Add3~45\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[23]~_Duplicate_4_q\,
	datab => \input_reg_a|q[23]~_Duplicate_4_q\,
	datad => VCC,
	cin => \my_alu|Add3~45\,
	combout => \my_alu|Add3~46_combout\,
	cout => \my_alu|Add3~47\);

-- Location: LCCOMB_X26_Y21_N18
\my_alu|Mux8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux8~5_combout\ = (\input_reg_op|q\(0) & ((\input_reg_op|q\(1)) # ((\my_alu|Add3~46_combout\)))) # (!\input_reg_op|q\(0) & (!\input_reg_op|q\(1) & (\my_alu|Add2~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(0),
	datab => \input_reg_op|q\(1),
	datac => \my_alu|Add2~46_combout\,
	datad => \my_alu|Add3~46_combout\,
	combout => \my_alu|Mux8~5_combout\);

-- Location: LCCOMB_X26_Y20_N16
\my_alu|Mux8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux8~6_combout\ = (\input_reg_op|q\(1) & ((\my_alu|Mux8~5_combout\ & (\my_alu|Mult1|auto_generated|op_1~10_combout\)) # (!\my_alu|Mux8~5_combout\ & ((\my_alu|Mult0|auto_generated|op_1~10_combout\))))) # (!\input_reg_op|q\(1) & 
-- (\my_alu|Mux8~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(1),
	datab => \my_alu|Mux8~5_combout\,
	datac => \my_alu|Mult1|auto_generated|op_1~10_combout\,
	datad => \my_alu|Mult0|auto_generated|op_1~10_combout\,
	combout => \my_alu|Mux8~6_combout\);

-- Location: LCCOMB_X26_Y20_N30
\my_alu|Mux8~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux8~7_combout\ = (\input_reg_op|q\(3) & (((\my_alu|Mux8~4_combout\)))) # (!\input_reg_op|q\(3) & ((\input_reg_op|q\(2) & ((\my_alu|Mux8~6_combout\))) # (!\input_reg_op|q\(2) & (\my_alu|Mux8~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(3),
	datab => \input_reg_op|q\(2),
	datac => \my_alu|Mux8~4_combout\,
	datad => \my_alu|Mux8~6_combout\,
	combout => \my_alu|Mux8~7_combout\);

-- Location: FF_X26_Y20_N31
\output_reg_lo|q[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \my_alu|Mux8~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_reg_lo|q\(23));

-- Location: LCCOMB_X31_Y23_N28
\my_alu|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux6~2_combout\ = (!\input_reg_op|q\(1) & ((!\input_reg_op|q\(0)) # (!\input_reg_shamt|q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input_reg_shamt|q\(4),
	datac => \input_reg_op|q\(1),
	datad => \input_reg_op|q\(0),
	combout => \my_alu|Mux6~2_combout\);

-- Location: LCCOMB_X33_Y22_N2
\my_alu|ShiftLeft0~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftLeft0~64_combout\ = (\input_reg_shamt|q\(1) & (\input_reg_b|q[14]~_Duplicate_4_q\)) # (!\input_reg_shamt|q\(1) & ((\input_reg_b|q[16]~_Duplicate_4_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[14]~_Duplicate_4_q\,
	datac => \input_reg_shamt|q\(1),
	datad => \input_reg_b|q[16]~_Duplicate_4_q\,
	combout => \my_alu|ShiftLeft0~64_combout\);

-- Location: LCCOMB_X33_Y23_N18
\my_alu|ShiftLeft0~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftLeft0~65_combout\ = (\input_reg_shamt|q\(0) & (\my_alu|ShiftLeft0~60_combout\)) # (!\input_reg_shamt|q\(0) & ((\my_alu|ShiftLeft0~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input_reg_shamt|q\(0),
	datac => \my_alu|ShiftLeft0~60_combout\,
	datad => \my_alu|ShiftLeft0~64_combout\,
	combout => \my_alu|ShiftLeft0~65_combout\);

-- Location: LCCOMB_X31_Y23_N6
\my_alu|ShiftLeft0~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftLeft0~66_combout\ = (\input_reg_shamt|q\(2) & (\my_alu|ShiftLeft0~46_combout\)) # (!\input_reg_shamt|q\(2) & ((\my_alu|ShiftLeft0~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|ShiftLeft0~46_combout\,
	datac => \input_reg_shamt|q\(2),
	datad => \my_alu|ShiftLeft0~65_combout\,
	combout => \my_alu|ShiftLeft0~66_combout\);

-- Location: LCCOMB_X27_Y22_N10
\my_alu|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux6~0_combout\ = (\input_reg_shamt|q\(3)) # (\input_reg_shamt|q\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \input_reg_shamt|q\(3),
	datad => \input_reg_shamt|q\(4),
	combout => \my_alu|Mux6~0_combout\);

-- Location: LCCOMB_X32_Y20_N12
\my_alu|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux7~1_combout\ = (\my_alu|Mux7~0_combout\ & ((\my_alu|ShiftLeft0~32_combout\) # ((!\my_alu|Mux6~0_combout\)))) # (!\my_alu|Mux7~0_combout\ & (((\my_alu|ShiftLeft0~66_combout\ & \my_alu|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mux7~0_combout\,
	datab => \my_alu|ShiftLeft0~32_combout\,
	datac => \my_alu|ShiftLeft0~66_combout\,
	datad => \my_alu|Mux6~0_combout\,
	combout => \my_alu|Mux7~1_combout\);

-- Location: LCCOMB_X31_Y20_N12
\my_alu|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux7~2_combout\ = (\my_alu|Mux6~3_combout\ & (\my_alu|Mux6~2_combout\ & ((\my_alu|ShiftRight0~62_combout\)))) # (!\my_alu|Mux6~3_combout\ & (((\my_alu|Mux7~1_combout\)) # (!\my_alu|Mux6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mux6~3_combout\,
	datab => \my_alu|Mux6~2_combout\,
	datac => \my_alu|Mux7~1_combout\,
	datad => \my_alu|ShiftRight0~62_combout\,
	combout => \my_alu|Mux7~2_combout\);

-- Location: LCCOMB_X31_Y20_N22
\my_alu|Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux7~3_combout\ = (\input_reg_op|q\(1) & ((\my_alu|Mux7~2_combout\ & (\my_alu|ShiftRight1~53_combout\)) # (!\my_alu|Mux7~2_combout\ & ((\input_reg_b|q[31]~_Duplicate_4_q\))))) # (!\input_reg_op|q\(1) & (((\my_alu|Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(1),
	datab => \my_alu|ShiftRight1~53_combout\,
	datac => \my_alu|Mux7~2_combout\,
	datad => \input_reg_b|q[31]~_Duplicate_4_q\,
	combout => \my_alu|Mux7~3_combout\);

-- Location: LCCOMB_X30_Y21_N16
\my_alu|Add2~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add2~48_combout\ = ((\input_reg_a|q[24]~_Duplicate_4_q\ $ (\input_reg_b|q[24]~_Duplicate_4_q\ $ (!\my_alu|Add2~47\)))) # (GND)
-- \my_alu|Add2~49\ = CARRY((\input_reg_a|q[24]~_Duplicate_4_q\ & ((\input_reg_b|q[24]~_Duplicate_4_q\) # (!\my_alu|Add2~47\))) # (!\input_reg_a|q[24]~_Duplicate_4_q\ & (\input_reg_b|q[24]~_Duplicate_4_q\ & !\my_alu|Add2~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_a|q[24]~_Duplicate_4_q\,
	datab => \input_reg_b|q[24]~_Duplicate_4_q\,
	datad => VCC,
	cin => \my_alu|Add2~47\,
	combout => \my_alu|Add2~48_combout\,
	cout => \my_alu|Add2~49\);

-- Location: LCCOMB_X32_Y21_N16
\my_alu|Add3~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add3~48_combout\ = ((\input_reg_b|q[24]~_Duplicate_4_q\ $ (\input_reg_a|q[24]~_Duplicate_4_q\ $ (\my_alu|Add3~47\)))) # (GND)
-- \my_alu|Add3~49\ = CARRY((\input_reg_b|q[24]~_Duplicate_4_q\ & (\input_reg_a|q[24]~_Duplicate_4_q\ & !\my_alu|Add3~47\)) # (!\input_reg_b|q[24]~_Duplicate_4_q\ & ((\input_reg_a|q[24]~_Duplicate_4_q\) # (!\my_alu|Add3~47\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[24]~_Duplicate_4_q\,
	datab => \input_reg_a|q[24]~_Duplicate_4_q\,
	datad => VCC,
	cin => \my_alu|Add3~47\,
	combout => \my_alu|Add3~48_combout\,
	cout => \my_alu|Add3~49\);

-- Location: LCCOMB_X31_Y21_N28
\my_alu|Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux7~4_combout\ = (\input_reg_op|q\(0) & ((\input_reg_op|q\(1)) # ((\my_alu|Add3~48_combout\)))) # (!\input_reg_op|q\(0) & (!\input_reg_op|q\(1) & (\my_alu|Add2~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(0),
	datab => \input_reg_op|q\(1),
	datac => \my_alu|Add2~48_combout\,
	datad => \my_alu|Add3~48_combout\,
	combout => \my_alu|Mux7~4_combout\);

-- Location: LCCOMB_X28_Y23_N10
\my_alu|Mux7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux7~5_combout\ = (\input_reg_op|q\(1) & ((\my_alu|Mux7~4_combout\ & (\my_alu|Mult1|auto_generated|op_1~12_combout\)) # (!\my_alu|Mux7~4_combout\ & ((\my_alu|Mult0|auto_generated|op_1~12_combout\))))) # (!\input_reg_op|q\(1) & 
-- (((\my_alu|Mux7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(1),
	datab => \my_alu|Mult1|auto_generated|op_1~12_combout\,
	datac => \my_alu|Mux7~4_combout\,
	datad => \my_alu|Mult0|auto_generated|op_1~12_combout\,
	combout => \my_alu|Mux7~5_combout\);

-- Location: LCCOMB_X28_Y23_N20
\my_alu|Mux7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux7~6_combout\ = (\input_reg_op|q\(3) & (!\input_reg_op|q\(2) & (\my_alu|Mux7~3_combout\))) # (!\input_reg_op|q\(3) & (\input_reg_op|q\(2) & ((\my_alu|Mux7~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(3),
	datab => \input_reg_op|q\(2),
	datac => \my_alu|Mux7~3_combout\,
	datad => \my_alu|Mux7~5_combout\,
	combout => \my_alu|Mux7~6_combout\);

-- Location: LCCOMB_X28_Y23_N28
\my_alu|Mux7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux7~8_combout\ = (\my_alu|Mux7~6_combout\) # ((\my_alu|Mux7~7_combout\ & (!\input_reg_op|q\(3) & !\input_reg_op|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mux7~7_combout\,
	datab => \input_reg_op|q\(3),
	datac => \input_reg_op|q\(2),
	datad => \my_alu|Mux7~6_combout\,
	combout => \my_alu|Mux7~8_combout\);

-- Location: FF_X28_Y23_N29
\output_reg_lo|q[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \my_alu|Mux7~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_reg_lo|q\(24));

-- Location: LCCOMB_X28_Y20_N16
\my_alu|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux6~3_combout\ = (\input_reg_op|q\(1) & ((\input_reg_shamt|q\(4)))) # (!\input_reg_op|q\(1) & (\input_reg_op|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(0),
	datac => \input_reg_op|q\(1),
	datad => \input_reg_shamt|q\(4),
	combout => \my_alu|Mux6~3_combout\);

-- Location: LCCOMB_X31_Y22_N4
\my_alu|Mux6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux6~6_combout\ = (\my_alu|Mux6~2_combout\ & ((\my_alu|Mux6~3_combout\ & ((\my_alu|ShiftRight0~63_combout\))) # (!\my_alu|Mux6~3_combout\ & (\my_alu|Mux6~5_combout\)))) # (!\my_alu|Mux6~2_combout\ & (((!\my_alu|Mux6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mux6~5_combout\,
	datab => \my_alu|ShiftRight0~63_combout\,
	datac => \my_alu|Mux6~2_combout\,
	datad => \my_alu|Mux6~3_combout\,
	combout => \my_alu|Mux6~6_combout\);

-- Location: LCCOMB_X30_Y19_N8
\my_alu|Mux6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux6~7_combout\ = (\input_reg_op|q\(1) & ((\my_alu|Mux6~6_combout\ & (\my_alu|ShiftRight1~54_combout\)) # (!\my_alu|Mux6~6_combout\ & ((\input_reg_b|q[31]~_Duplicate_4_q\))))) # (!\input_reg_op|q\(1) & (((\my_alu|Mux6~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(1),
	datab => \my_alu|ShiftRight1~54_combout\,
	datac => \input_reg_b|q[31]~_Duplicate_4_q\,
	datad => \my_alu|Mux6~6_combout\,
	combout => \my_alu|Mux6~7_combout\);

-- Location: LCCOMB_X30_Y21_N18
\my_alu|Add2~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add2~50_combout\ = (\input_reg_a|q[25]~_Duplicate_4_q\ & ((\input_reg_b|q[25]~_Duplicate_4_q\ & (\my_alu|Add2~49\ & VCC)) # (!\input_reg_b|q[25]~_Duplicate_4_q\ & (!\my_alu|Add2~49\)))) # (!\input_reg_a|q[25]~_Duplicate_4_q\ & 
-- ((\input_reg_b|q[25]~_Duplicate_4_q\ & (!\my_alu|Add2~49\)) # (!\input_reg_b|q[25]~_Duplicate_4_q\ & ((\my_alu|Add2~49\) # (GND)))))
-- \my_alu|Add2~51\ = CARRY((\input_reg_a|q[25]~_Duplicate_4_q\ & (!\input_reg_b|q[25]~_Duplicate_4_q\ & !\my_alu|Add2~49\)) # (!\input_reg_a|q[25]~_Duplicate_4_q\ & ((!\my_alu|Add2~49\) # (!\input_reg_b|q[25]~_Duplicate_4_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_a|q[25]~_Duplicate_4_q\,
	datab => \input_reg_b|q[25]~_Duplicate_4_q\,
	datad => VCC,
	cin => \my_alu|Add2~49\,
	combout => \my_alu|Add2~50_combout\,
	cout => \my_alu|Add2~51\);

-- Location: LCCOMB_X32_Y21_N18
\my_alu|Add3~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add3~50_combout\ = (\input_reg_a|q[25]~_Duplicate_4_q\ & ((\input_reg_b|q[25]~_Duplicate_4_q\ & (!\my_alu|Add3~49\)) # (!\input_reg_b|q[25]~_Duplicate_4_q\ & (\my_alu|Add3~49\ & VCC)))) # (!\input_reg_a|q[25]~_Duplicate_4_q\ & 
-- ((\input_reg_b|q[25]~_Duplicate_4_q\ & ((\my_alu|Add3~49\) # (GND))) # (!\input_reg_b|q[25]~_Duplicate_4_q\ & (!\my_alu|Add3~49\))))
-- \my_alu|Add3~51\ = CARRY((\input_reg_a|q[25]~_Duplicate_4_q\ & (\input_reg_b|q[25]~_Duplicate_4_q\ & !\my_alu|Add3~49\)) # (!\input_reg_a|q[25]~_Duplicate_4_q\ & ((\input_reg_b|q[25]~_Duplicate_4_q\) # (!\my_alu|Add3~49\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_a|q[25]~_Duplicate_4_q\,
	datab => \input_reg_b|q[25]~_Duplicate_4_q\,
	datad => VCC,
	cin => \my_alu|Add3~49\,
	combout => \my_alu|Add3~50_combout\,
	cout => \my_alu|Add3~51\);

-- Location: LCCOMB_X31_Y21_N6
\my_alu|Mux6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux6~8_combout\ = (\input_reg_op|q\(0) & ((\input_reg_op|q\(1)) # ((\my_alu|Add3~50_combout\)))) # (!\input_reg_op|q\(0) & (!\input_reg_op|q\(1) & (\my_alu|Add2~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(0),
	datab => \input_reg_op|q\(1),
	datac => \my_alu|Add2~50_combout\,
	datad => \my_alu|Add3~50_combout\,
	combout => \my_alu|Mux6~8_combout\);

-- Location: LCCOMB_X28_Y23_N6
\my_alu|Mux6~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux6~9_combout\ = (\input_reg_op|q\(1) & ((\my_alu|Mux6~8_combout\ & (\my_alu|Mult1|auto_generated|op_1~14_combout\)) # (!\my_alu|Mux6~8_combout\ & ((\my_alu|Mult0|auto_generated|op_1~14_combout\))))) # (!\input_reg_op|q\(1) & 
-- (\my_alu|Mux6~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(1),
	datab => \my_alu|Mux6~8_combout\,
	datac => \my_alu|Mult1|auto_generated|op_1~14_combout\,
	datad => \my_alu|Mult0|auto_generated|op_1~14_combout\,
	combout => \my_alu|Mux6~9_combout\);

-- Location: LCCOMB_X28_Y23_N12
\my_alu|Mux6~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux6~10_combout\ = (\input_reg_op|q\(3) & (!\input_reg_op|q\(2) & (\my_alu|Mux6~7_combout\))) # (!\input_reg_op|q\(3) & (\input_reg_op|q\(2) & ((\my_alu|Mux6~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(3),
	datab => \input_reg_op|q\(2),
	datac => \my_alu|Mux6~7_combout\,
	datad => \my_alu|Mux6~9_combout\,
	combout => \my_alu|Mux6~10_combout\);

-- Location: LCCOMB_X28_Y23_N26
\my_alu|Mux6~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux6~12_combout\ = (\my_alu|Mux6~10_combout\) # ((\my_alu|Mux6~11_combout\ & (!\input_reg_op|q\(3) & !\input_reg_op|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mux6~11_combout\,
	datab => \input_reg_op|q\(3),
	datac => \input_reg_op|q\(2),
	datad => \my_alu|Mux6~10_combout\,
	combout => \my_alu|Mux6~12_combout\);

-- Location: FF_X28_Y23_N27
\output_reg_lo|q[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \my_alu|Mux6~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_reg_lo|q\(25));

-- Location: FF_X34_Y20_N29
\input_reg_a|q[26]~_Duplicate_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a[26]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_reg_a|q[26]~_Duplicate_4_q\);

-- Location: LCCOMB_X34_Y20_N26
\my_alu|Mux5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux5~7_combout\ = (\input_reg_b|q[26]~_Duplicate_4_q\ & ((\input_reg_a|q[26]~_Duplicate_4_q\ & (!\input_reg_op|q\(1))) # (!\input_reg_a|q[26]~_Duplicate_4_q\ & ((\input_reg_op|q\(0)))))) # (!\input_reg_b|q[26]~_Duplicate_4_q\ & 
-- ((\input_reg_a|q[26]~_Duplicate_4_q\ & ((\input_reg_op|q\(0)))) # (!\input_reg_a|q[26]~_Duplicate_4_q\ & (\input_reg_op|q\(1) & !\input_reg_op|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[26]~_Duplicate_4_q\,
	datab => \input_reg_a|q[26]~_Duplicate_4_q\,
	datac => \input_reg_op|q\(1),
	datad => \input_reg_op|q\(0),
	combout => \my_alu|Mux5~7_combout\);

-- Location: LCCOMB_X33_Y22_N8
\my_alu|ShiftLeft0~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftLeft0~67_combout\ = (\input_reg_shamt|q\(1) & (\input_reg_b|q[15]~_Duplicate_4_q\)) # (!\input_reg_shamt|q\(1) & ((\input_reg_b|q[17]~_Duplicate_4_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[15]~_Duplicate_4_q\,
	datac => \input_reg_shamt|q\(1),
	datad => \input_reg_b|q[17]~_Duplicate_4_q\,
	combout => \my_alu|ShiftLeft0~67_combout\);

-- Location: LCCOMB_X33_Y22_N10
\my_alu|ShiftLeft0~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftLeft0~71_combout\ = (\input_reg_shamt|q\(0) & (\my_alu|ShiftLeft0~67_combout\)) # (!\input_reg_shamt|q\(0) & ((\my_alu|ShiftLeft0~70_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(0),
	datac => \my_alu|ShiftLeft0~67_combout\,
	datad => \my_alu|ShiftLeft0~70_combout\,
	combout => \my_alu|ShiftLeft0~71_combout\);

-- Location: LCCOMB_X34_Y23_N6
\my_alu|ShiftLeft0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftLeft0~56_combout\ = (\input_reg_shamt|q\(0) & ((\my_alu|ShiftLeft0~50_combout\))) # (!\input_reg_shamt|q\(0) & (\my_alu|ShiftLeft0~55_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input_reg_shamt|q\(0),
	datac => \my_alu|ShiftLeft0~55_combout\,
	datad => \my_alu|ShiftLeft0~50_combout\,
	combout => \my_alu|ShiftLeft0~56_combout\);

-- Location: LCCOMB_X27_Y19_N22
\my_alu|ShiftLeft0~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftLeft0~72_combout\ = (\input_reg_shamt|q\(2) & ((\my_alu|ShiftLeft0~56_combout\))) # (!\input_reg_shamt|q\(2) & (\my_alu|ShiftLeft0~71_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(2),
	datab => \my_alu|ShiftLeft0~71_combout\,
	datad => \my_alu|ShiftLeft0~56_combout\,
	combout => \my_alu|ShiftLeft0~72_combout\);

-- Location: LCCOMB_X32_Y23_N4
\my_alu|ShiftLeft0~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftLeft0~83_combout\ = (\input_reg_shamt|q\(0) & (\my_alu|ShiftLeft0~79_combout\)) # (!\input_reg_shamt|q\(0) & ((\my_alu|ShiftLeft0~82_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|ShiftLeft0~79_combout\,
	datac => \input_reg_shamt|q\(0),
	datad => \my_alu|ShiftLeft0~82_combout\,
	combout => \my_alu|ShiftLeft0~83_combout\);

-- Location: LCCOMB_X30_Y19_N10
\my_alu|ShiftLeft0~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftLeft0~93_combout\ = (\input_reg_shamt|q\(0) & ((\input_reg_b|q[25]~_Duplicate_4_q\))) # (!\input_reg_shamt|q\(0) & (\input_reg_b|q[26]~_Duplicate_4_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[26]~_Duplicate_4_q\,
	datab => \input_reg_b|q[25]~_Duplicate_4_q\,
	datad => \input_reg_shamt|q\(0),
	combout => \my_alu|ShiftLeft0~93_combout\);

-- Location: LCCOMB_X30_Y19_N2
\my_alu|ShiftLeft0~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftLeft0~92_combout\ = (\input_reg_shamt|q\(1) & ((\input_reg_shamt|q\(0) & ((\input_reg_b|q[23]~_Duplicate_4_q\))) # (!\input_reg_shamt|q\(0) & (\input_reg_b|q[24]~_Duplicate_4_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(0),
	datab => \input_reg_shamt|q\(1),
	datac => \input_reg_b|q[24]~_Duplicate_4_q\,
	datad => \input_reg_b|q[23]~_Duplicate_4_q\,
	combout => \my_alu|ShiftLeft0~92_combout\);

-- Location: LCCOMB_X30_Y19_N18
\my_alu|ShiftLeft0~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftLeft0~94_combout\ = (\my_alu|ShiftLeft0~92_combout\) # ((!\input_reg_shamt|q\(1) & \my_alu|ShiftLeft0~93_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(1),
	datab => \my_alu|ShiftLeft0~93_combout\,
	datad => \my_alu|ShiftLeft0~92_combout\,
	combout => \my_alu|ShiftLeft0~94_combout\);

-- Location: LCCOMB_X27_Y19_N2
\my_alu|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux5~0_combout\ = (\my_alu|Mux6~1_combout\ & ((\my_alu|ShiftLeft0~83_combout\) # ((\my_alu|Mux6~0_combout\)))) # (!\my_alu|Mux6~1_combout\ & (((!\my_alu|Mux6~0_combout\ & \my_alu|ShiftLeft0~94_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mux6~1_combout\,
	datab => \my_alu|ShiftLeft0~83_combout\,
	datac => \my_alu|Mux6~0_combout\,
	datad => \my_alu|ShiftLeft0~94_combout\,
	combout => \my_alu|Mux5~0_combout\);

-- Location: LCCOMB_X27_Y19_N12
\my_alu|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux5~1_combout\ = (\my_alu|Mux6~0_combout\ & ((\my_alu|Mux5~0_combout\ & (\my_alu|ShiftLeft0~40_combout\)) # (!\my_alu|Mux5~0_combout\ & ((\my_alu|ShiftLeft0~72_combout\))))) # (!\my_alu|Mux6~0_combout\ & (((\my_alu|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|ShiftLeft0~40_combout\,
	datab => \my_alu|Mux6~0_combout\,
	datac => \my_alu|ShiftLeft0~72_combout\,
	datad => \my_alu|Mux5~0_combout\,
	combout => \my_alu|Mux5~1_combout\);

-- Location: LCCOMB_X27_Y19_N30
\my_alu|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux5~2_combout\ = (\my_alu|Mux6~3_combout\ & (\my_alu|ShiftRight0~64_combout\ & (\my_alu|Mux6~2_combout\))) # (!\my_alu|Mux6~3_combout\ & (((\my_alu|Mux5~1_combout\) # (!\my_alu|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mux6~3_combout\,
	datab => \my_alu|ShiftRight0~64_combout\,
	datac => \my_alu|Mux6~2_combout\,
	datad => \my_alu|Mux5~1_combout\,
	combout => \my_alu|Mux5~2_combout\);

-- Location: LCCOMB_X29_Y19_N8
\my_alu|ShiftRight1~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight1~55_combout\ = (\input_reg_shamt|q\(3) & ((\input_reg_b|q[31]~_Duplicate_4_q\))) # (!\input_reg_shamt|q\(3) & (\my_alu|ShiftRight1~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(3),
	datac => \my_alu|ShiftRight1~28_combout\,
	datad => \input_reg_b|q[31]~_Duplicate_4_q\,
	combout => \my_alu|ShiftRight1~55_combout\);

-- Location: LCCOMB_X26_Y19_N0
\my_alu|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux5~3_combout\ = (\input_reg_op|q\(1) & ((\my_alu|Mux5~2_combout\ & ((\my_alu|ShiftRight1~55_combout\))) # (!\my_alu|Mux5~2_combout\ & (\input_reg_b|q[31]~_Duplicate_4_q\)))) # (!\input_reg_op|q\(1) & (((\my_alu|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(1),
	datab => \input_reg_b|q[31]~_Duplicate_4_q\,
	datac => \my_alu|Mux5~2_combout\,
	datad => \my_alu|ShiftRight1~55_combout\,
	combout => \my_alu|Mux5~3_combout\);

-- Location: LCCOMB_X32_Y21_N20
\my_alu|Add3~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add3~52_combout\ = ((\input_reg_a|q[26]~_Duplicate_4_q\ $ (\input_reg_b|q[26]~_Duplicate_4_q\ $ (\my_alu|Add3~51\)))) # (GND)
-- \my_alu|Add3~53\ = CARRY((\input_reg_a|q[26]~_Duplicate_4_q\ & ((!\my_alu|Add3~51\) # (!\input_reg_b|q[26]~_Duplicate_4_q\))) # (!\input_reg_a|q[26]~_Duplicate_4_q\ & (!\input_reg_b|q[26]~_Duplicate_4_q\ & !\my_alu|Add3~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_a|q[26]~_Duplicate_4_q\,
	datab => \input_reg_b|q[26]~_Duplicate_4_q\,
	datad => VCC,
	cin => \my_alu|Add3~51\,
	combout => \my_alu|Add3~52_combout\,
	cout => \my_alu|Add3~53\);

-- Location: LCCOMB_X30_Y21_N20
\my_alu|Add2~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add2~52_combout\ = ((\input_reg_a|q[26]~_Duplicate_4_q\ $ (\input_reg_b|q[26]~_Duplicate_4_q\ $ (!\my_alu|Add2~51\)))) # (GND)
-- \my_alu|Add2~53\ = CARRY((\input_reg_a|q[26]~_Duplicate_4_q\ & ((\input_reg_b|q[26]~_Duplicate_4_q\) # (!\my_alu|Add2~51\))) # (!\input_reg_a|q[26]~_Duplicate_4_q\ & (\input_reg_b|q[26]~_Duplicate_4_q\ & !\my_alu|Add2~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_a|q[26]~_Duplicate_4_q\,
	datab => \input_reg_b|q[26]~_Duplicate_4_q\,
	datad => VCC,
	cin => \my_alu|Add2~51\,
	combout => \my_alu|Add2~52_combout\,
	cout => \my_alu|Add2~53\);

-- Location: LCCOMB_X31_Y21_N10
\my_alu|Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux5~4_combout\ = (\input_reg_op|q\(0) & ((\input_reg_op|q\(1)) # ((\my_alu|Add3~52_combout\)))) # (!\input_reg_op|q\(0) & (!\input_reg_op|q\(1) & ((\my_alu|Add2~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(0),
	datab => \input_reg_op|q\(1),
	datac => \my_alu|Add3~52_combout\,
	datad => \my_alu|Add2~52_combout\,
	combout => \my_alu|Mux5~4_combout\);

-- Location: LCCOMB_X26_Y20_N2
\my_alu|Mux5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux5~5_combout\ = (\input_reg_op|q\(1) & ((\my_alu|Mux5~4_combout\ & ((\my_alu|Mult1|auto_generated|op_1~16_combout\))) # (!\my_alu|Mux5~4_combout\ & (\my_alu|Mult0|auto_generated|op_1~16_combout\)))) # (!\input_reg_op|q\(1) & 
-- (\my_alu|Mux5~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(1),
	datab => \my_alu|Mux5~4_combout\,
	datac => \my_alu|Mult0|auto_generated|op_1~16_combout\,
	datad => \my_alu|Mult1|auto_generated|op_1~16_combout\,
	combout => \my_alu|Mux5~5_combout\);

-- Location: LCCOMB_X26_Y20_N24
\my_alu|Mux5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux5~6_combout\ = (\input_reg_op|q\(3) & (\my_alu|Mux5~3_combout\ & (!\input_reg_op|q\(2)))) # (!\input_reg_op|q\(3) & (((\input_reg_op|q\(2) & \my_alu|Mux5~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(3),
	datab => \my_alu|Mux5~3_combout\,
	datac => \input_reg_op|q\(2),
	datad => \my_alu|Mux5~5_combout\,
	combout => \my_alu|Mux5~6_combout\);

-- Location: LCCOMB_X27_Y20_N16
\my_alu|Mux5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux5~8_combout\ = (\my_alu|Mux5~6_combout\) # ((!\input_reg_op|q\(3) & (\my_alu|Mux5~7_combout\ & !\input_reg_op|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(3),
	datab => \my_alu|Mux5~7_combout\,
	datac => \input_reg_op|q\(2),
	datad => \my_alu|Mux5~6_combout\,
	combout => \my_alu|Mux5~8_combout\);

-- Location: FF_X27_Y20_N17
\output_reg_lo|q[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \my_alu|Mux5~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_reg_lo|q\(26));

-- Location: LCCOMB_X27_Y19_N16
\my_alu|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux6~1_combout\ = (\input_reg_shamt|q\(4)) # ((\input_reg_shamt|q\(2) & !\input_reg_shamt|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(2),
	datac => \input_reg_shamt|q\(4),
	datad => \input_reg_shamt|q\(3),
	combout => \my_alu|Mux6~1_combout\);

-- Location: LCCOMB_X33_Y23_N28
\my_alu|ShiftLeft0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftLeft0~43_combout\ = (\input_reg_shamt|q\(2) & ((\my_alu|ShiftLeft0~27_combout\))) # (!\input_reg_shamt|q\(2) & (\my_alu|ShiftLeft0~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_alu|ShiftLeft0~42_combout\,
	datac => \input_reg_shamt|q\(2),
	datad => \my_alu|ShiftLeft0~27_combout\,
	combout => \my_alu|ShiftLeft0~43_combout\);

-- Location: LCCOMB_X33_Y23_N22
\my_alu|ShiftLeft0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftLeft0~44_combout\ = (\input_reg_shamt|q\(3) & (!\input_reg_shamt|q\(2) & (\my_alu|ShiftLeft0~25_combout\))) # (!\input_reg_shamt|q\(3) & (((\my_alu|ShiftLeft0~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(2),
	datab => \my_alu|ShiftLeft0~25_combout\,
	datac => \input_reg_shamt|q\(3),
	datad => \my_alu|ShiftLeft0~43_combout\,
	combout => \my_alu|ShiftLeft0~44_combout\);

-- Location: LCCOMB_X33_Y23_N0
\my_alu|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux4~1_combout\ = (\my_alu|Mux4~0_combout\ & (((\my_alu|ShiftLeft0~44_combout\)) # (!\my_alu|Mux6~1_combout\))) # (!\my_alu|Mux4~0_combout\ & (\my_alu|Mux6~1_combout\ & ((\my_alu|ShiftLeft0~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mux4~0_combout\,
	datab => \my_alu|Mux6~1_combout\,
	datac => \my_alu|ShiftLeft0~44_combout\,
	datad => \my_alu|ShiftLeft0~86_combout\,
	combout => \my_alu|Mux4~1_combout\);

-- Location: LCCOMB_X30_Y23_N12
\my_alu|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux4~2_combout\ = (\my_alu|Mux6~3_combout\ & (\my_alu|Mux6~2_combout\ & ((\my_alu|ShiftRight0~66_combout\)))) # (!\my_alu|Mux6~3_combout\ & (((\my_alu|Mux4~1_combout\)) # (!\my_alu|Mux6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mux6~3_combout\,
	datab => \my_alu|Mux6~2_combout\,
	datac => \my_alu|Mux4~1_combout\,
	datad => \my_alu|ShiftRight0~66_combout\,
	combout => \my_alu|Mux4~2_combout\);

-- Location: LCCOMB_X29_Y23_N30
\my_alu|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux4~3_combout\ = (\my_alu|Mux4~2_combout\ & (((\my_alu|ShiftRight1~59_combout\) # (!\input_reg_op|q\(1))))) # (!\my_alu|Mux4~2_combout\ & (\input_reg_b|q[31]~_Duplicate_4_q\ & (\input_reg_op|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[31]~_Duplicate_4_q\,
	datab => \my_alu|Mux4~2_combout\,
	datac => \input_reg_op|q\(1),
	datad => \my_alu|ShiftRight1~59_combout\,
	combout => \my_alu|Mux4~3_combout\);

-- Location: LCCOMB_X28_Y20_N2
\my_alu|Mux4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux4~5_combout\ = (\my_alu|Mux4~4_combout\ & (((\my_alu|Mult1|auto_generated|op_1~18_combout\)) # (!\input_reg_op|q\(1)))) # (!\my_alu|Mux4~4_combout\ & (\input_reg_op|q\(1) & (\my_alu|Mult0|auto_generated|op_1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mux4~4_combout\,
	datab => \input_reg_op|q\(1),
	datac => \my_alu|Mult0|auto_generated|op_1~18_combout\,
	datad => \my_alu|Mult1|auto_generated|op_1~18_combout\,
	combout => \my_alu|Mux4~5_combout\);

-- Location: LCCOMB_X28_Y20_N20
\my_alu|Mux4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux4~6_combout\ = (\input_reg_op|q\(3) & (!\input_reg_op|q\(2) & (\my_alu|Mux4~3_combout\))) # (!\input_reg_op|q\(3) & (\input_reg_op|q\(2) & ((\my_alu|Mux4~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(3),
	datab => \input_reg_op|q\(2),
	datac => \my_alu|Mux4~3_combout\,
	datad => \my_alu|Mux4~5_combout\,
	combout => \my_alu|Mux4~6_combout\);

-- Location: LCCOMB_X28_Y20_N22
\my_alu|Mux4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux4~8_combout\ = (\my_alu|Mux4~6_combout\) # ((\my_alu|Mux4~7_combout\ & (!\input_reg_op|q\(3) & !\input_reg_op|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mux4~7_combout\,
	datab => \input_reg_op|q\(3),
	datac => \input_reg_op|q\(2),
	datad => \my_alu|Mux4~6_combout\,
	combout => \my_alu|Mux4~8_combout\);

-- Location: FF_X28_Y20_N23
\output_reg_lo|q[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \my_alu|Mux4~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_reg_lo|q\(27));

-- Location: LCCOMB_X34_Y20_N18
\input_reg_a|q[28]~_Duplicate_4feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \input_reg_a|q[28]~_Duplicate_4feeder_combout\ = \a[28]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a[28]~input_o\,
	combout => \input_reg_a|q[28]~_Duplicate_4feeder_combout\);

-- Location: FF_X34_Y20_N19
\input_reg_a|q[28]~_Duplicate_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \input_reg_a|q[28]~_Duplicate_4feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_reg_a|q[28]~_Duplicate_4_q\);

-- Location: LCCOMB_X29_Y20_N0
\my_alu|Mux3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux3~8_combout\ = (\input_reg_a|q[28]~_Duplicate_4_q\ & ((\input_reg_b|q[28]~_Duplicate_4_q\ & (!\input_reg_op|q\(1))) # (!\input_reg_b|q[28]~_Duplicate_4_q\ & ((\input_reg_op|q\(0)))))) # (!\input_reg_a|q[28]~_Duplicate_4_q\ & 
-- ((\input_reg_b|q[28]~_Duplicate_4_q\ & ((\input_reg_op|q\(0)))) # (!\input_reg_b|q[28]~_Duplicate_4_q\ & (\input_reg_op|q\(1) & !\input_reg_op|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(1),
	datab => \input_reg_a|q[28]~_Duplicate_4_q\,
	datac => \input_reg_b|q[28]~_Duplicate_4_q\,
	datad => \input_reg_op|q\(0),
	combout => \my_alu|Mux3~8_combout\);

-- Location: LCCOMB_X30_Y20_N14
\my_alu|Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux3~5_combout\ = (\input_reg_op|q\(1)) # ((\input_reg_shamt|q\(4) & !\input_reg_op|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(1),
	datab => \input_reg_shamt|q\(4),
	datad => \input_reg_op|q\(0),
	combout => \my_alu|Mux3~5_combout\);

-- Location: LCCOMB_X31_Y20_N30
\my_alu|ShiftRight1~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight1~56_combout\ = (\input_reg_b|q[31]~_Duplicate_4_q\ & ((\input_reg_shamt|q\(2)) # (\input_reg_shamt|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(2),
	datab => \input_reg_shamt|q\(3),
	datad => \input_reg_b|q[31]~_Duplicate_4_q\,
	combout => \my_alu|ShiftRight1~56_combout\);

-- Location: LCCOMB_X30_Y20_N20
\my_alu|Mux3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux3~6_combout\ = (\my_alu|Mux22~1_combout\ & ((\my_alu|ShiftRight0~67_combout\) # ((\my_alu|Mux3~5_combout\ & \my_alu|ShiftRight1~56_combout\)))) # (!\my_alu|Mux22~1_combout\ & (((\my_alu|Mux3~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|ShiftRight0~67_combout\,
	datab => \my_alu|Mux3~5_combout\,
	datac => \my_alu|ShiftRight1~56_combout\,
	datad => \my_alu|Mux22~1_combout\,
	combout => \my_alu|Mux3~6_combout\);

-- Location: LCCOMB_X33_Y19_N24
\my_alu|ShiftLeft0~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftLeft0~88_combout\ = (\input_reg_shamt|q\(1) & (\input_reg_b|q[22]~_Duplicate_4_q\)) # (!\input_reg_shamt|q\(1) & ((\input_reg_b|q[24]~_Duplicate_4_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input_reg_b|q[22]~_Duplicate_4_q\,
	datac => \input_reg_shamt|q\(1),
	datad => \input_reg_b|q[24]~_Duplicate_4_q\,
	combout => \my_alu|ShiftLeft0~88_combout\);

-- Location: LCCOMB_X33_Y19_N22
\my_alu|ShiftLeft0~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftLeft0~89_combout\ = (\input_reg_shamt|q\(0) & (\my_alu|ShiftLeft0~85_combout\)) # (!\input_reg_shamt|q\(0) & ((\my_alu|ShiftLeft0~88_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|ShiftLeft0~85_combout\,
	datab => \my_alu|ShiftLeft0~88_combout\,
	datad => \input_reg_shamt|q\(0),
	combout => \my_alu|ShiftLeft0~89_combout\);

-- Location: LCCOMB_X29_Y20_N26
\my_alu|ShiftLeft0~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftLeft0~98_combout\ = (\input_reg_shamt|q\(0) & (\input_reg_b|q[27]~_Duplicate_4_q\)) # (!\input_reg_shamt|q\(0) & ((\input_reg_b|q[28]~_Duplicate_4_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input_reg_b|q[27]~_Duplicate_4_q\,
	datac => \input_reg_b|q[28]~_Duplicate_4_q\,
	datad => \input_reg_shamt|q\(0),
	combout => \my_alu|ShiftLeft0~98_combout\);

-- Location: LCCOMB_X30_Y20_N22
\my_alu|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux3~3_combout\ = (\my_alu|Mux29~5_combout\ & (((!\my_alu|ShiftRight0~34_combout\)))) # (!\my_alu|Mux29~5_combout\ & ((\my_alu|ShiftRight0~34_combout\ & ((\my_alu|ShiftLeft0~98_combout\))) # (!\my_alu|ShiftRight0~34_combout\ & 
-- (\my_alu|ShiftLeft0~89_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mux29~5_combout\,
	datab => \my_alu|ShiftLeft0~89_combout\,
	datac => \my_alu|ShiftLeft0~98_combout\,
	datad => \my_alu|ShiftRight0~34_combout\,
	combout => \my_alu|Mux3~3_combout\);

-- Location: LCCOMB_X32_Y23_N20
\my_alu|ShiftLeft0~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftLeft0~76_combout\ = (\input_reg_shamt|q\(1) & ((\input_reg_b|q[18]~_Duplicate_4_q\))) # (!\input_reg_shamt|q\(1) & (\input_reg_b|q[20]~_Duplicate_4_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(1),
	datab => \input_reg_b|q[20]~_Duplicate_4_q\,
	datad => \input_reg_b|q[18]~_Duplicate_4_q\,
	combout => \my_alu|ShiftLeft0~76_combout\);

-- Location: LCCOMB_X32_Y23_N8
\my_alu|ShiftLeft0~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftLeft0~77_combout\ = (\input_reg_shamt|q\(0) & ((\my_alu|ShiftLeft0~73_combout\))) # (!\input_reg_shamt|q\(0) & (\my_alu|ShiftLeft0~76_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(0),
	datab => \my_alu|ShiftLeft0~76_combout\,
	datad => \my_alu|ShiftLeft0~73_combout\,
	combout => \my_alu|ShiftLeft0~77_combout\);

-- Location: LCCOMB_X31_Y23_N26
\my_alu|ShiftLeft0~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftLeft0~78_combout\ = (\input_reg_shamt|q\(2) & ((\my_alu|ShiftLeft0~65_combout\))) # (!\input_reg_shamt|q\(2) & (\my_alu|ShiftLeft0~77_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_alu|ShiftLeft0~77_combout\,
	datac => \input_reg_shamt|q\(2),
	datad => \my_alu|ShiftLeft0~65_combout\,
	combout => \my_alu|ShiftLeft0~78_combout\);

-- Location: LCCOMB_X30_Y20_N8
\my_alu|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux3~4_combout\ = (\my_alu|Mux29~5_combout\ & ((\my_alu|Mux3~3_combout\ & ((\my_alu|ShiftLeft0~78_combout\))) # (!\my_alu|Mux3~3_combout\ & (\my_alu|ShiftLeft0~93_combout\)))) # (!\my_alu|Mux29~5_combout\ & (((\my_alu|Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mux29~5_combout\,
	datab => \my_alu|ShiftLeft0~93_combout\,
	datac => \my_alu|Mux3~3_combout\,
	datad => \my_alu|ShiftLeft0~78_combout\,
	combout => \my_alu|Mux3~4_combout\);

-- Location: LCCOMB_X30_Y23_N2
\my_alu|ShiftLeft0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftLeft0~11_combout\ = (!\input_reg_shamt|q\(1) & !\input_reg_shamt|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \input_reg_shamt|q\(1),
	datad => \input_reg_shamt|q\(0),
	combout => \my_alu|ShiftLeft0~11_combout\);

-- Location: LCCOMB_X31_Y23_N2
\my_alu|ShiftLeft0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftLeft0~15_combout\ = (\input_reg_shamt|q\(2) & (\my_alu|ShiftLeft0~11_combout\ & ((\input_reg_b|q[0]~_Duplicate_4_q\)))) # (!\input_reg_shamt|q\(2) & (((\my_alu|ShiftLeft0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(2),
	datab => \my_alu|ShiftLeft0~11_combout\,
	datac => \my_alu|ShiftLeft0~14_combout\,
	datad => \input_reg_b|q[0]~_Duplicate_4_q\,
	combout => \my_alu|ShiftLeft0~15_combout\);

-- Location: LCCOMB_X31_Y23_N18
\my_alu|ShiftLeft0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftLeft0~48_combout\ = (\input_reg_shamt|q\(3) & ((\my_alu|ShiftLeft0~15_combout\))) # (!\input_reg_shamt|q\(3) & (\my_alu|ShiftLeft0~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|ShiftLeft0~47_combout\,
	datac => \input_reg_shamt|q\(3),
	datad => \my_alu|ShiftLeft0~15_combout\,
	combout => \my_alu|ShiftLeft0~48_combout\);

-- Location: LCCOMB_X30_Y20_N6
\my_alu|Mux3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux3~7_combout\ = (\my_alu|Mux0~0_combout\ & ((\my_alu|Mux3~6_combout\ & ((\my_alu|ShiftLeft0~48_combout\))) # (!\my_alu|Mux3~6_combout\ & (\my_alu|Mux3~4_combout\)))) # (!\my_alu|Mux0~0_combout\ & (\my_alu|Mux3~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mux0~0_combout\,
	datab => \my_alu|Mux3~6_combout\,
	datac => \my_alu|Mux3~4_combout\,
	datad => \my_alu|ShiftLeft0~48_combout\,
	combout => \my_alu|Mux3~7_combout\);

-- Location: LCCOMB_X28_Y20_N8
\my_alu|Mux3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux3~9_combout\ = (\my_alu|Mux3~2_combout\ & (\input_reg_op|q\(3))) # (!\my_alu|Mux3~2_combout\ & ((\input_reg_op|q\(3) & ((\my_alu|Mux3~7_combout\))) # (!\input_reg_op|q\(3) & (\my_alu|Mux3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mux3~2_combout\,
	datab => \input_reg_op|q\(3),
	datac => \my_alu|Mux3~8_combout\,
	datad => \my_alu|Mux3~7_combout\,
	combout => \my_alu|Mux3~9_combout\);

-- Location: LCCOMB_X27_Y20_N2
\my_alu|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux3~1_combout\ = (\my_alu|Mux3~0_combout\ & (((\my_alu|Mult1|auto_generated|op_1~20_combout\)) # (!\input_reg_op|q\(1)))) # (!\my_alu|Mux3~0_combout\ & (\input_reg_op|q\(1) & ((\my_alu|Mult0|auto_generated|op_1~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mux3~0_combout\,
	datab => \input_reg_op|q\(1),
	datac => \my_alu|Mult1|auto_generated|op_1~20_combout\,
	datad => \my_alu|Mult0|auto_generated|op_1~20_combout\,
	combout => \my_alu|Mux3~1_combout\);

-- Location: LCCOMB_X27_Y20_N20
\my_alu|Mux3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux3~10_combout\ = (\my_alu|Mux3~2_combout\ & ((\my_alu|Mux3~9_combout\ & (\input_reg_b|q[31]~_Duplicate_4_q\)) # (!\my_alu|Mux3~9_combout\ & ((\my_alu|Mux3~1_combout\))))) # (!\my_alu|Mux3~2_combout\ & (((\my_alu|Mux3~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mux3~2_combout\,
	datab => \input_reg_b|q[31]~_Duplicate_4_q\,
	datac => \my_alu|Mux3~9_combout\,
	datad => \my_alu|Mux3~1_combout\,
	combout => \my_alu|Mux3~10_combout\);

-- Location: LCCOMB_X27_Y20_N30
\my_alu|Mux3~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux3~11_combout\ = (\my_alu|Mux3~10_combout\ & ((!\input_reg_op|q\(3)) # (!\input_reg_op|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input_reg_op|q\(2),
	datac => \input_reg_op|q\(3),
	datad => \my_alu|Mux3~10_combout\,
	combout => \my_alu|Mux3~11_combout\);

-- Location: FF_X27_Y20_N31
\output_reg_lo|q[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \my_alu|Mux3~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_reg_lo|q\(28));

-- Location: LCCOMB_X28_Y20_N30
\my_alu|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux3~2_combout\ = (\input_reg_op|q\(3) & (((\input_reg_op|q\(1) & \input_reg_shamt|q\(4))))) # (!\input_reg_op|q\(3) & (\input_reg_op|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(3),
	datab => \input_reg_op|q\(2),
	datac => \input_reg_op|q\(1),
	datad => \input_reg_shamt|q\(4),
	combout => \my_alu|Mux3~2_combout\);

-- Location: LCCOMB_X27_Y20_N10
\my_alu|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux2~1_combout\ = (\my_alu|Mux2~0_combout\ & (((\my_alu|Mult1|auto_generated|op_1~22_combout\)) # (!\input_reg_op|q\(1)))) # (!\my_alu|Mux2~0_combout\ & (\input_reg_op|q\(1) & ((\my_alu|Mult0|auto_generated|op_1~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mux2~0_combout\,
	datab => \input_reg_op|q\(1),
	datac => \my_alu|Mult1|auto_generated|op_1~22_combout\,
	datad => \my_alu|Mult0|auto_generated|op_1~22_combout\,
	combout => \my_alu|Mux2~1_combout\);

-- Location: LCCOMB_X27_Y20_N0
\my_alu|Mux2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux2~8_combout\ = (\my_alu|Mux2~7_combout\ & ((\input_reg_b|q[31]~_Duplicate_4_q\) # ((!\my_alu|Mux3~2_combout\)))) # (!\my_alu|Mux2~7_combout\ & (((\my_alu|Mux3~2_combout\ & \my_alu|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mux2~7_combout\,
	datab => \input_reg_b|q[31]~_Duplicate_4_q\,
	datac => \my_alu|Mux3~2_combout\,
	datad => \my_alu|Mux2~1_combout\,
	combout => \my_alu|Mux2~8_combout\);

-- Location: LCCOMB_X27_Y20_N28
\my_alu|Mux2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux2~9_combout\ = (\my_alu|Mux2~8_combout\ & ((!\input_reg_op|q\(3)) # (!\input_reg_op|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input_reg_op|q\(2),
	datac => \input_reg_op|q\(3),
	datad => \my_alu|Mux2~8_combout\,
	combout => \my_alu|Mux2~9_combout\);

-- Location: FF_X27_Y20_N29
\output_reg_lo|q[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \my_alu|Mux2~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_reg_lo|q\(29));

-- Location: FF_X35_Y22_N29
\input_reg_a|q[30]~_Duplicate_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a[30]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_reg_a|q[30]~_Duplicate_4_q\);

-- Location: LCCOMB_X27_Y22_N28
\my_alu|Mux1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux1~8_combout\ = (\input_reg_b|q[30]~_Duplicate_4_q\ & ((\input_reg_a|q[30]~_Duplicate_4_q\ & (!\input_reg_op|q\(1))) # (!\input_reg_a|q[30]~_Duplicate_4_q\ & ((\input_reg_op|q\(0)))))) # (!\input_reg_b|q[30]~_Duplicate_4_q\ & 
-- ((\input_reg_op|q\(0) & ((\input_reg_a|q[30]~_Duplicate_4_q\))) # (!\input_reg_op|q\(0) & (\input_reg_op|q\(1) & !\input_reg_a|q[30]~_Duplicate_4_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(1),
	datab => \input_reg_b|q[30]~_Duplicate_4_q\,
	datac => \input_reg_op|q\(0),
	datad => \input_reg_a|q[30]~_Duplicate_4_q\,
	combout => \my_alu|Mux1~8_combout\);

-- Location: LCCOMB_X27_Y19_N24
\my_alu|ShiftLeft0~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftLeft0~84_combout\ = (\input_reg_shamt|q\(2) & ((\my_alu|ShiftLeft0~71_combout\))) # (!\input_reg_shamt|q\(2) & (\my_alu|ShiftLeft0~83_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(2),
	datac => \my_alu|ShiftLeft0~83_combout\,
	datad => \my_alu|ShiftLeft0~71_combout\,
	combout => \my_alu|ShiftLeft0~84_combout\);

-- Location: LCCOMB_X29_Y19_N16
\my_alu|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux1~2_combout\ = (!\input_reg_shamt|q\(1) & ((\input_reg_shamt|q\(0) & (\input_reg_b|q[29]~_Duplicate_4_q\)) # (!\input_reg_shamt|q\(0) & ((\input_reg_b|q[30]~_Duplicate_4_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(0),
	datab => \input_reg_b|q[29]~_Duplicate_4_q\,
	datac => \input_reg_b|q[30]~_Duplicate_4_q\,
	datad => \input_reg_shamt|q\(1),
	combout => \my_alu|Mux1~2_combout\);

-- Location: LCCOMB_X30_Y19_N4
\my_alu|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux1~1_combout\ = (\input_reg_shamt|q\(1) & ((\input_reg_shamt|q\(0) & ((\input_reg_b|q[27]~_Duplicate_4_q\))) # (!\input_reg_shamt|q\(0) & (\input_reg_b|q[28]~_Duplicate_4_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[28]~_Duplicate_4_q\,
	datab => \input_reg_shamt|q\(1),
	datac => \input_reg_shamt|q\(0),
	datad => \input_reg_b|q[27]~_Duplicate_4_q\,
	combout => \my_alu|Mux1~1_combout\);

-- Location: LCCOMB_X27_Y19_N8
\my_alu|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux1~3_combout\ = (\input_reg_shamt|q\(2) & (((\my_alu|ShiftLeft0~94_combout\)))) # (!\input_reg_shamt|q\(2) & ((\my_alu|Mux1~2_combout\) # ((\my_alu|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(2),
	datab => \my_alu|Mux1~2_combout\,
	datac => \my_alu|Mux1~1_combout\,
	datad => \my_alu|ShiftLeft0~94_combout\,
	combout => \my_alu|Mux1~3_combout\);

-- Location: LCCOMB_X27_Y19_N14
\my_alu|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux1~4_combout\ = (!\input_reg_shamt|q\(4) & ((\input_reg_shamt|q\(3) & (\my_alu|ShiftLeft0~84_combout\)) # (!\input_reg_shamt|q\(3) & ((\my_alu|Mux1~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(4),
	datab => \my_alu|ShiftLeft0~84_combout\,
	datac => \my_alu|Mux1~3_combout\,
	datad => \input_reg_shamt|q\(3),
	combout => \my_alu|Mux1~4_combout\);

-- Location: LCCOMB_X27_Y19_N28
\my_alu|ShiftLeft0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftLeft0~54_combout\ = (\input_reg_shamt|q\(3) & ((\input_reg_shamt|q\(2) & ((\my_alu|ShiftLeft0~8_combout\))) # (!\input_reg_shamt|q\(2) & (\my_alu|ShiftLeft0~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(3),
	datab => \my_alu|ShiftLeft0~22_combout\,
	datac => \input_reg_shamt|q\(2),
	datad => \my_alu|ShiftLeft0~8_combout\,
	combout => \my_alu|ShiftLeft0~54_combout\);

-- Location: LCCOMB_X35_Y22_N10
\my_alu|ShiftLeft0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftLeft0~38_combout\ = (\input_reg_shamt|q\(0) & (\my_alu|ShiftLeft0~33_combout\)) # (!\input_reg_shamt|q\(0) & ((\my_alu|ShiftLeft0~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(0),
	datac => \my_alu|ShiftLeft0~33_combout\,
	datad => \my_alu|ShiftLeft0~37_combout\,
	combout => \my_alu|ShiftLeft0~38_combout\);

-- Location: LCCOMB_X27_Y19_N18
\my_alu|ShiftLeft0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftLeft0~57_combout\ = (\input_reg_shamt|q\(2) & (\my_alu|ShiftLeft0~38_combout\)) # (!\input_reg_shamt|q\(2) & ((\my_alu|ShiftLeft0~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(2),
	datac => \my_alu|ShiftLeft0~38_combout\,
	datad => \my_alu|ShiftLeft0~56_combout\,
	combout => \my_alu|ShiftLeft0~57_combout\);

-- Location: LCCOMB_X27_Y19_N20
\my_alu|ShiftLeft0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftLeft0~58_combout\ = (\my_alu|ShiftLeft0~54_combout\) # ((!\input_reg_shamt|q\(3) & \my_alu|ShiftLeft0~57_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(3),
	datab => \my_alu|ShiftLeft0~54_combout\,
	datad => \my_alu|ShiftLeft0~57_combout\,
	combout => \my_alu|ShiftLeft0~58_combout\);

-- Location: LCCOMB_X27_Y19_N4
\my_alu|Mux1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux1~5_combout\ = (!\input_reg_op|q\(0) & ((\my_alu|Mux1~4_combout\) # ((\input_reg_shamt|q\(4) & \my_alu|ShiftLeft0~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(0),
	datab => \my_alu|Mux1~4_combout\,
	datac => \input_reg_shamt|q\(4),
	datad => \my_alu|ShiftLeft0~58_combout\,
	combout => \my_alu|Mux1~5_combout\);

-- Location: LCCOMB_X28_Y19_N22
\my_alu|ShiftRight0~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftRight0~71_combout\ = (\my_alu|ShiftRight1~8_combout\ & (!\input_reg_shamt|q\(3) & (!\input_reg_shamt|q\(1) & !\input_reg_shamt|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|ShiftRight1~8_combout\,
	datab => \input_reg_shamt|q\(3),
	datac => \input_reg_shamt|q\(1),
	datad => \input_reg_shamt|q\(2),
	combout => \my_alu|ShiftRight0~71_combout\);

-- Location: LCCOMB_X27_Y19_N26
\my_alu|Mux1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux1~6_combout\ = (\my_alu|Mux1~5_combout\) # ((\input_reg_op|q\(0) & (!\input_reg_shamt|q\(4) & \my_alu|ShiftRight0~71_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(0),
	datab => \my_alu|Mux1~5_combout\,
	datac => \input_reg_shamt|q\(4),
	datad => \my_alu|ShiftRight0~71_combout\,
	combout => \my_alu|Mux1~6_combout\);

-- Location: LCCOMB_X27_Y22_N0
\my_alu|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux1~0_combout\ = (\my_alu|ShiftRight0~4_combout\ & ((\input_reg_shamt|q\(4) & ((\input_reg_b|q[31]~_Duplicate_4_q\))) # (!\input_reg_shamt|q\(4) & (\input_reg_b|q[30]~_Duplicate_4_q\)))) # (!\my_alu|ShiftRight0~4_combout\ & 
-- (((\input_reg_b|q[31]~_Duplicate_4_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|ShiftRight0~4_combout\,
	datab => \input_reg_shamt|q\(4),
	datac => \input_reg_b|q[30]~_Duplicate_4_q\,
	datad => \input_reg_b|q[31]~_Duplicate_4_q\,
	combout => \my_alu|Mux1~0_combout\);

-- Location: LCCOMB_X27_Y22_N6
\my_alu|Mux1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux1~7_combout\ = (\input_reg_op|q\(3) & ((\input_reg_op|q\(1) & ((\my_alu|Mux1~0_combout\))) # (!\input_reg_op|q\(1) & (\my_alu|Mux1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(1),
	datab => \input_reg_op|q\(3),
	datac => \my_alu|Mux1~6_combout\,
	datad => \my_alu|Mux1~0_combout\,
	combout => \my_alu|Mux1~7_combout\);

-- Location: LCCOMB_X27_Y22_N18
\my_alu|Mux1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux1~9_combout\ = (!\input_reg_op|q\(2) & ((\my_alu|Mux1~7_combout\) # ((\my_alu|Mux1~8_combout\ & !\input_reg_op|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(2),
	datab => \my_alu|Mux1~8_combout\,
	datac => \input_reg_op|q\(3),
	datad => \my_alu|Mux1~7_combout\,
	combout => \my_alu|Mux1~9_combout\);

-- Location: LCCOMB_X28_Y20_N18
\input_reg_a|q[27]~_Duplicate_4feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \input_reg_a|q[27]~_Duplicate_4feeder_combout\ = \a[27]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \a[27]~input_o\,
	combout => \input_reg_a|q[27]~_Duplicate_4feeder_combout\);

-- Location: FF_X28_Y20_N19
\input_reg_a|q[27]~_Duplicate_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \input_reg_a|q[27]~_Duplicate_4feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_reg_a|q[27]~_Duplicate_4_q\);

-- Location: LCCOMB_X32_Y21_N28
\my_alu|Add3~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add3~60_combout\ = ((\input_reg_b|q[30]~_Duplicate_4_q\ $ (\input_reg_a|q[30]~_Duplicate_4_q\ $ (\my_alu|Add3~59\)))) # (GND)
-- \my_alu|Add3~61\ = CARRY((\input_reg_b|q[30]~_Duplicate_4_q\ & (\input_reg_a|q[30]~_Duplicate_4_q\ & !\my_alu|Add3~59\)) # (!\input_reg_b|q[30]~_Duplicate_4_q\ & ((\input_reg_a|q[30]~_Duplicate_4_q\) # (!\my_alu|Add3~59\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[30]~_Duplicate_4_q\,
	datab => \input_reg_a|q[30]~_Duplicate_4_q\,
	datad => VCC,
	cin => \my_alu|Add3~59\,
	combout => \my_alu|Add3~60_combout\,
	cout => \my_alu|Add3~61\);

-- Location: LCCOMB_X30_Y21_N28
\my_alu|Add2~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add2~60_combout\ = ((\input_reg_b|q[30]~_Duplicate_4_q\ $ (\input_reg_a|q[30]~_Duplicate_4_q\ $ (!\my_alu|Add2~59\)))) # (GND)
-- \my_alu|Add2~61\ = CARRY((\input_reg_b|q[30]~_Duplicate_4_q\ & ((\input_reg_a|q[30]~_Duplicate_4_q\) # (!\my_alu|Add2~59\))) # (!\input_reg_b|q[30]~_Duplicate_4_q\ & (\input_reg_a|q[30]~_Duplicate_4_q\ & !\my_alu|Add2~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[30]~_Duplicate_4_q\,
	datab => \input_reg_a|q[30]~_Duplicate_4_q\,
	datad => VCC,
	cin => \my_alu|Add2~59\,
	combout => \my_alu|Add2~60_combout\,
	cout => \my_alu|Add2~61\);

-- Location: LCCOMB_X27_Y20_N18
\my_alu|Mux1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux1~10_combout\ = (\input_reg_op|q\(0) & (\input_reg_op|q\(1))) # (!\input_reg_op|q\(0) & ((\input_reg_op|q\(1) & (\my_alu|Mult0|auto_generated|op_1~24_combout\)) # (!\input_reg_op|q\(1) & ((\my_alu|Add2~60_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(0),
	datab => \input_reg_op|q\(1),
	datac => \my_alu|Mult0|auto_generated|op_1~24_combout\,
	datad => \my_alu|Add2~60_combout\,
	combout => \my_alu|Mux1~10_combout\);

-- Location: LCCOMB_X27_Y20_N12
\my_alu|Mux1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux1~11_combout\ = (\input_reg_op|q\(0) & ((\my_alu|Mux1~10_combout\ & ((\my_alu|Mult1|auto_generated|op_1~24_combout\))) # (!\my_alu|Mux1~10_combout\ & (\my_alu|Add3~60_combout\)))) # (!\input_reg_op|q\(0) & (((\my_alu|Mux1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(0),
	datab => \my_alu|Add3~60_combout\,
	datac => \my_alu|Mult1|auto_generated|op_1~24_combout\,
	datad => \my_alu|Mux1~10_combout\,
	combout => \my_alu|Mux1~11_combout\);

-- Location: LCCOMB_X27_Y22_N30
\my_alu|Mux1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux1~12_combout\ = (\my_alu|Mux1~9_combout\) # ((\input_reg_op|q\(2) & (!\input_reg_op|q\(3) & \my_alu|Mux1~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(2),
	datab => \input_reg_op|q\(3),
	datac => \my_alu|Mux1~9_combout\,
	datad => \my_alu|Mux1~11_combout\,
	combout => \my_alu|Mux1~12_combout\);

-- Location: FF_X27_Y22_N31
\output_reg_lo|q[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \my_alu|Mux1~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_reg_lo|q\(30));

-- Location: FF_X29_Y20_N7
\input_reg_a|q[31]~_Duplicate_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a[31]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \input_reg_a|q[31]~_Duplicate_4_q\);

-- Location: LCCOMB_X30_Y21_N30
\my_alu|Add2~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add2~62_combout\ = \input_reg_b|q[31]~_Duplicate_4_q\ $ (\input_reg_a|q[31]~_Duplicate_4_q\ $ (\my_alu|Add2~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[31]~_Duplicate_4_q\,
	datab => \input_reg_a|q[31]~_Duplicate_4_q\,
	cin => \my_alu|Add2~61\,
	combout => \my_alu|Add2~62_combout\);

-- Location: LCCOMB_X32_Y21_N30
\my_alu|Add3~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Add3~62_combout\ = \input_reg_b|q[31]~_Duplicate_4_q\ $ (\input_reg_a|q[31]~_Duplicate_4_q\ $ (!\my_alu|Add3~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[31]~_Duplicate_4_q\,
	datab => \input_reg_a|q[31]~_Duplicate_4_q\,
	cin => \my_alu|Add3~61\,
	combout => \my_alu|Add3~62_combout\);

-- Location: LCCOMB_X26_Y21_N8
\my_alu|Mux0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux0~9_combout\ = (\input_reg_op|q\(0) & ((\input_reg_op|q\(1)) # ((\my_alu|Add3~62_combout\)))) # (!\input_reg_op|q\(0) & (!\input_reg_op|q\(1) & (\my_alu|Add2~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(0),
	datab => \input_reg_op|q\(1),
	datac => \my_alu|Add2~62_combout\,
	datad => \my_alu|Add3~62_combout\,
	combout => \my_alu|Mux0~9_combout\);

-- Location: LCCOMB_X27_Y20_N22
\my_alu|Mux0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux0~10_combout\ = (\input_reg_op|q\(1) & ((\my_alu|Mux0~9_combout\ & ((\my_alu|Mult1|auto_generated|op_1~26_combout\))) # (!\my_alu|Mux0~9_combout\ & (\my_alu|Mult0|auto_generated|op_1~26_combout\)))) # (!\input_reg_op|q\(1) & 
-- (((\my_alu|Mux0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mult0|auto_generated|op_1~26_combout\,
	datab => \input_reg_op|q\(1),
	datac => \my_alu|Mux0~9_combout\,
	datad => \my_alu|Mult1|auto_generated|op_1~26_combout\,
	combout => \my_alu|Mux0~10_combout\);

-- Location: LCCOMB_X30_Y19_N24
\my_alu|ShiftLeft0~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftLeft0~99_combout\ = (\input_reg_shamt|q\(0) & ((\input_reg_b|q[28]~_Duplicate_4_q\))) # (!\input_reg_shamt|q\(0) & (\input_reg_b|q[29]~_Duplicate_4_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[29]~_Duplicate_4_q\,
	datab => \input_reg_shamt|q\(0),
	datad => \input_reg_b|q[28]~_Duplicate_4_q\,
	combout => \my_alu|ShiftLeft0~99_combout\);

-- Location: LCCOMB_X30_Y19_N6
\my_alu|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux0~1_combout\ = (\input_reg_shamt|q\(1) & (((\my_alu|ShiftLeft0~99_combout\)))) # (!\input_reg_shamt|q\(1) & (\input_reg_shamt|q\(0) & (\input_reg_b|q[30]~_Duplicate_4_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(0),
	datab => \input_reg_shamt|q\(1),
	datac => \input_reg_b|q[30]~_Duplicate_4_q\,
	datad => \my_alu|ShiftLeft0~99_combout\,
	combout => \my_alu|Mux0~1_combout\);

-- Location: LCCOMB_X33_Y19_N20
\my_alu|ShiftLeft0~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftLeft0~96_combout\ = (\input_reg_shamt|q\(0) & ((\input_reg_b|q[26]~_Duplicate_4_q\))) # (!\input_reg_shamt|q\(0) & (\input_reg_b|q[27]~_Duplicate_4_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_b|q[27]~_Duplicate_4_q\,
	datab => \input_reg_b|q[26]~_Duplicate_4_q\,
	datad => \input_reg_shamt|q\(0),
	combout => \my_alu|ShiftLeft0~96_combout\);

-- Location: LCCOMB_X33_Y19_N16
\my_alu|ShiftLeft0~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|ShiftLeft0~97_combout\ = (\my_alu|ShiftLeft0~95_combout\) # ((\my_alu|ShiftLeft0~96_combout\ & !\input_reg_shamt|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|ShiftLeft0~95_combout\,
	datab => \my_alu|ShiftLeft0~96_combout\,
	datad => \input_reg_shamt|q\(1),
	combout => \my_alu|ShiftLeft0~97_combout\);

-- Location: LCCOMB_X33_Y23_N2
\my_alu|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux0~2_combout\ = (!\input_reg_shamt|q\(3) & ((\input_reg_shamt|q\(2) & ((\my_alu|ShiftLeft0~97_combout\))) # (!\input_reg_shamt|q\(2) & (\my_alu|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(2),
	datab => \my_alu|Mux0~1_combout\,
	datac => \input_reg_shamt|q\(3),
	datad => \my_alu|ShiftLeft0~97_combout\,
	combout => \my_alu|Mux0~2_combout\);

-- Location: LCCOMB_X32_Y23_N26
\my_alu|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux0~3_combout\ = (!\input_reg_shamt|q\(4) & ((\my_alu|Mux0~2_combout\) # ((\input_reg_shamt|q\(3) & \my_alu|ShiftLeft0~87_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_shamt|q\(3),
	datab => \input_reg_shamt|q\(4),
	datac => \my_alu|ShiftLeft0~87_combout\,
	datad => \my_alu|Mux0~2_combout\,
	combout => \my_alu|Mux0~3_combout\);

-- Location: LCCOMB_X31_Y23_N22
\my_alu|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux0~4_combout\ = (\my_alu|Mux0~0_combout\ & ((\my_alu|Mux0~3_combout\) # ((\my_alu|ShiftLeft0~63_combout\ & \input_reg_shamt|q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|ShiftLeft0~63_combout\,
	datab => \input_reg_shamt|q\(4),
	datac => \my_alu|Mux0~0_combout\,
	datad => \my_alu|Mux0~3_combout\,
	combout => \my_alu|Mux0~4_combout\);

-- Location: LCCOMB_X30_Y23_N24
\my_alu|Mux0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux0~6_combout\ = (\input_reg_op|q\(3) & ((\my_alu|Mux0~4_combout\) # ((\my_alu|Mux0~5_combout\ & \input_reg_b|q[31]~_Duplicate_4_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mux0~5_combout\,
	datab => \input_reg_op|q\(3),
	datac => \input_reg_b|q[31]~_Duplicate_4_q\,
	datad => \my_alu|Mux0~4_combout\,
	combout => \my_alu|Mux0~6_combout\);

-- Location: LCCOMB_X26_Y20_N14
\my_alu|Mux0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux0~8_combout\ = (!\input_reg_op|q\(2) & ((\my_alu|Mux0~6_combout\) # ((\my_alu|Mux0~7_combout\ & !\input_reg_op|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mux0~7_combout\,
	datab => \input_reg_op|q\(2),
	datac => \input_reg_op|q\(3),
	datad => \my_alu|Mux0~6_combout\,
	combout => \my_alu|Mux0~8_combout\);

-- Location: LCCOMB_X27_Y20_N26
\my_alu|Mux0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Mux0~11_combout\ = (\my_alu|Mux0~8_combout\) # ((!\input_reg_op|q\(3) & (\input_reg_op|q\(2) & \my_alu|Mux0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_reg_op|q\(3),
	datab => \input_reg_op|q\(2),
	datac => \my_alu|Mux0~10_combout\,
	datad => \my_alu|Mux0~8_combout\,
	combout => \my_alu|Mux0~11_combout\);

-- Location: FF_X27_Y20_N27
\output_reg_lo|q[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \my_alu|Mux0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_reg_lo|q\(31));

-- Location: LCCOMB_X28_Y20_N12
\my_alu|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Equal0~7_combout\ = (!\my_alu|Mux24~8_combout\ & (((\input_reg_op|q\(3)) # (\input_reg_op|q\(2))) # (!\my_alu|Mux4~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mux4~7_combout\,
	datab => \input_reg_op|q\(3),
	datac => \input_reg_op|q\(2),
	datad => \my_alu|Mux24~8_combout\,
	combout => \my_alu|Equal0~7_combout\);

-- Location: LCCOMB_X27_Y20_N8
\my_alu|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Equal0~8_combout\ = (!\my_alu|Mux25~8_combout\ & (\my_alu|Equal0~7_combout\ & (!\my_alu|Mux4~6_combout\ & !\my_alu|Mux5~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mux25~8_combout\,
	datab => \my_alu|Equal0~7_combout\,
	datac => \my_alu|Mux4~6_combout\,
	datad => \my_alu|Mux5~8_combout\,
	combout => \my_alu|Equal0~8_combout\);

-- Location: LCCOMB_X28_Y23_N14
\my_alu|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Equal0~0_combout\ = (!\my_alu|Mux26~8_combout\ & (!\my_alu|Mux27~14_combout\ & (!\my_alu|Mux6~12_combout\ & !\my_alu|Mux7~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mux26~8_combout\,
	datab => \my_alu|Mux27~14_combout\,
	datac => \my_alu|Mux6~12_combout\,
	datad => \my_alu|Mux7~8_combout\,
	combout => \my_alu|Equal0~0_combout\);

-- Location: LCCOMB_X25_Y21_N8
\my_alu|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Equal0~1_combout\ = (!\my_alu|Mux22~9_combout\ & (!\my_alu|Mux14~7_combout\ & (!\my_alu|Mux13~13_combout\ & !\my_alu|Mux23~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mux22~9_combout\,
	datab => \my_alu|Mux14~7_combout\,
	datac => \my_alu|Mux13~13_combout\,
	datad => \my_alu|Mux23~7_combout\,
	combout => \my_alu|Equal0~1_combout\);

-- Location: LCCOMB_X25_Y21_N30
\my_alu|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Equal0~2_combout\ = (!\my_alu|Mux12~7_combout\ & (\my_alu|Equal0~1_combout\ & !\my_alu|Mux11~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \my_alu|Mux12~7_combout\,
	datac => \my_alu|Equal0~1_combout\,
	datad => \my_alu|Mux11~7_combout\,
	combout => \my_alu|Equal0~2_combout\);

-- Location: LCCOMB_X26_Y20_N0
\my_alu|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Equal0~3_combout\ = (!\my_alu|Mux8~7_combout\ & (!\my_alu|Mux9~7_combout\ & (!\my_alu|Mux10~7_combout\ & \my_alu|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Mux8~7_combout\,
	datab => \my_alu|Mux9~7_combout\,
	datac => \my_alu|Mux10~7_combout\,
	datad => \my_alu|Equal0~2_combout\,
	combout => \my_alu|Equal0~3_combout\);

-- Location: LCCOMB_X26_Y20_N28
\my_alu|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Equal0~6_combout\ = (\my_alu|Equal0~5_combout\ & (!\my_alu|Mux15~10_combout\ & (!\my_alu|Mux30~11_combout\ & \my_alu|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Equal0~5_combout\,
	datab => \my_alu|Mux15~10_combout\,
	datac => \my_alu|Mux30~11_combout\,
	datad => \my_alu|Equal0~3_combout\,
	combout => \my_alu|Equal0~6_combout\);

-- Location: LCCOMB_X27_Y20_N4
\my_alu|Equal0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \my_alu|Equal0~12_combout\ = (\my_alu|Equal0~11_combout\ & (\my_alu|Equal0~8_combout\ & (\my_alu|Equal0~0_combout\ & \my_alu|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \my_alu|Equal0~11_combout\,
	datab => \my_alu|Equal0~8_combout\,
	datac => \my_alu|Equal0~0_combout\,
	datad => \my_alu|Equal0~6_combout\,
	combout => \my_alu|Equal0~12_combout\);

-- Location: FF_X27_Y20_N5
\output_reg_zero|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \my_alu|Equal0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output_reg_zero|q\(0));

ww_hi(0) <= \hi[0]~output_o\;

ww_hi(1) <= \hi[1]~output_o\;

ww_hi(2) <= \hi[2]~output_o\;

ww_hi(3) <= \hi[3]~output_o\;

ww_hi(4) <= \hi[4]~output_o\;

ww_hi(5) <= \hi[5]~output_o\;

ww_hi(6) <= \hi[6]~output_o\;

ww_hi(7) <= \hi[7]~output_o\;

ww_hi(8) <= \hi[8]~output_o\;

ww_hi(9) <= \hi[9]~output_o\;

ww_hi(10) <= \hi[10]~output_o\;

ww_hi(11) <= \hi[11]~output_o\;

ww_hi(12) <= \hi[12]~output_o\;

ww_hi(13) <= \hi[13]~output_o\;

ww_hi(14) <= \hi[14]~output_o\;

ww_hi(15) <= \hi[15]~output_o\;

ww_hi(16) <= \hi[16]~output_o\;

ww_hi(17) <= \hi[17]~output_o\;

ww_hi(18) <= \hi[18]~output_o\;

ww_hi(19) <= \hi[19]~output_o\;

ww_hi(20) <= \hi[20]~output_o\;

ww_hi(21) <= \hi[21]~output_o\;

ww_hi(22) <= \hi[22]~output_o\;

ww_hi(23) <= \hi[23]~output_o\;

ww_hi(24) <= \hi[24]~output_o\;

ww_hi(25) <= \hi[25]~output_o\;

ww_hi(26) <= \hi[26]~output_o\;

ww_hi(27) <= \hi[27]~output_o\;

ww_hi(28) <= \hi[28]~output_o\;

ww_hi(29) <= \hi[29]~output_o\;

ww_hi(30) <= \hi[30]~output_o\;

ww_hi(31) <= \hi[31]~output_o\;

ww_lo(0) <= \lo[0]~output_o\;

ww_lo(1) <= \lo[1]~output_o\;

ww_lo(2) <= \lo[2]~output_o\;

ww_lo(3) <= \lo[3]~output_o\;

ww_lo(4) <= \lo[4]~output_o\;

ww_lo(5) <= \lo[5]~output_o\;

ww_lo(6) <= \lo[6]~output_o\;

ww_lo(7) <= \lo[7]~output_o\;

ww_lo(8) <= \lo[8]~output_o\;

ww_lo(9) <= \lo[9]~output_o\;

ww_lo(10) <= \lo[10]~output_o\;

ww_lo(11) <= \lo[11]~output_o\;

ww_lo(12) <= \lo[12]~output_o\;

ww_lo(13) <= \lo[13]~output_o\;

ww_lo(14) <= \lo[14]~output_o\;

ww_lo(15) <= \lo[15]~output_o\;

ww_lo(16) <= \lo[16]~output_o\;

ww_lo(17) <= \lo[17]~output_o\;

ww_lo(18) <= \lo[18]~output_o\;

ww_lo(19) <= \lo[19]~output_o\;

ww_lo(20) <= \lo[20]~output_o\;

ww_lo(21) <= \lo[21]~output_o\;

ww_lo(22) <= \lo[22]~output_o\;

ww_lo(23) <= \lo[23]~output_o\;

ww_lo(24) <= \lo[24]~output_o\;

ww_lo(25) <= \lo[25]~output_o\;

ww_lo(26) <= \lo[26]~output_o\;

ww_lo(27) <= \lo[27]~output_o\;

ww_lo(28) <= \lo[28]~output_o\;

ww_lo(29) <= \lo[29]~output_o\;

ww_lo(30) <= \lo[30]~output_o\;

ww_lo(31) <= \lo[31]~output_o\;

ww_zero <= \zero~output_o\;
END structure;


