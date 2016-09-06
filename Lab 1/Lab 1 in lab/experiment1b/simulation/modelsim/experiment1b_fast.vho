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
-- VERSION "Version 12.0 Build 263 08/02/2012 Service Pack 2 SJ Full Version"

-- DATE "01/13/2015 16:39:59"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

PACKAGE experiment1b_data_type IS

TYPE SEVEN_SEGMENT_N_O_6_0_type IS ARRAY (6 DOWNTO 0) OF std_logic;
TYPE SEVEN_SEGMENT_N_O_6_0_7_0_type IS ARRAY (7 DOWNTO 0) OF SEVEN_SEGMENT_N_O_6_0_type;
SUBTYPE SEVEN_SEGMENT_N_O_type IS SEVEN_SEGMENT_N_O_6_0_7_0_type;

END experiment1b_data_type;

LIBRARY CYCLONEII;
LIBRARY IEEE;
LIBRARY WORK;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE WORK.EXPERIMENT1B_DATA_TYPE.ALL;

ENTITY 	experiment1b IS
    PORT (
	CLOCK_50_I : IN std_logic;
	PUSH_BUTTON_I : IN std_logic_vector(3 DOWNTO 0);
	SWITCH_I : IN std_logic_vector(17 DOWNTO 0);
	SEVEN_SEGMENT_N_O : OUT SEVEN_SEGMENT_N_O_type;
	LED_GREEN_O : OUT std_logic_vector(8 DOWNTO 0);
	LED_RED_O : OUT std_logic_vector(17 DOWNTO 0);
	GPIO_0 : INOUT std_logic_vector(35 DOWNTO 0)
	);
END experiment1b;

-- Design Ports Information
-- GPIO_0[0]	=>  Location: PIN_D25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[1]	=>  Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[2]	=>  Location: PIN_E26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[3]	=>  Location: PIN_E25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[4]	=>  Location: PIN_F24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[5]	=>  Location: PIN_F23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[6]	=>  Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[7]	=>  Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[8]	=>  Location: PIN_F25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[9]	=>  Location: PIN_F26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[10]	=>  Location: PIN_N18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[11]	=>  Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[12]	=>  Location: PIN_G23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[13]	=>  Location: PIN_G24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[14]	=>  Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[15]	=>  Location: PIN_G25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[16]	=>  Location: PIN_H23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[17]	=>  Location: PIN_H24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[18]	=>  Location: PIN_J23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[19]	=>  Location: PIN_J24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[20]	=>  Location: PIN_H25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[21]	=>  Location: PIN_H26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[22]	=>  Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[23]	=>  Location: PIN_K18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[24]	=>  Location: PIN_K19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[25]	=>  Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[26]	=>  Location: PIN_K23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[27]	=>  Location: PIN_K24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[28]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[29]	=>  Location: PIN_L20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[30]	=>  Location: PIN_J25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[31]	=>  Location: PIN_J26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[32]	=>  Location: PIN_L23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[33]	=>  Location: PIN_L24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[34]	=>  Location: PIN_L25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[35]	=>  Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PUSH_BUTTON_I[0]	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PUSH_BUTTON_I[1]	=>  Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PUSH_BUTTON_I[2]	=>  Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PUSH_BUTTON_I[3]	=>  Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[0]	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[1]	=>  Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[2]	=>  Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[3]	=>  Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[4]	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[5]	=>  Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[6]	=>  Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[7]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[8]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[9]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[10]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[11]	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[12]	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[13]	=>  Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[14]	=>  Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[15]	=>  Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[16]	=>  Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SEVEN_SEGMENT_N_O[0][0]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[0][1]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[0][2]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[0][3]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[0][4]	=>  Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[0][5]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[0][6]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[1][0]	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[1][1]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[1][2]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[1][3]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[1][4]	=>  Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[1][5]	=>  Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[1][6]	=>  Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[2][0]	=>  Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[2][1]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[2][2]	=>  Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[2][3]	=>  Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[2][4]	=>  Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[2][5]	=>  Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[2][6]	=>  Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[3][0]	=>  Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[3][1]	=>  Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[3][2]	=>  Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[3][3]	=>  Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[3][4]	=>  Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[3][5]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[3][6]	=>  Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[4][0]	=>  Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[4][1]	=>  Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[4][2]	=>  Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[4][3]	=>  Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[4][4]	=>  Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[4][5]	=>  Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[4][6]	=>  Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[5][0]	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[5][1]	=>  Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[5][2]	=>  Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[5][3]	=>  Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[5][4]	=>  Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[5][5]	=>  Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[5][6]	=>  Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[6][0]	=>  Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[6][1]	=>  Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[6][2]	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[6][3]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[6][4]	=>  Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[6][5]	=>  Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[6][6]	=>  Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[7][0]	=>  Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[7][1]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[7][2]	=>  Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[7][3]	=>  Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[7][4]	=>  Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[7][5]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SEVEN_SEGMENT_N_O[7][6]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED_GREEN_O[0]	=>  Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED_GREEN_O[1]	=>  Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED_GREEN_O[2]	=>  Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED_GREEN_O[3]	=>  Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED_GREEN_O[4]	=>  Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED_GREEN_O[5]	=>  Location: PIN_U17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED_GREEN_O[6]	=>  Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED_GREEN_O[7]	=>  Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED_GREEN_O[8]	=>  Location: PIN_Y12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED_RED_O[0]	=>  Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED_RED_O[1]	=>  Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED_RED_O[2]	=>  Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED_RED_O[3]	=>  Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED_RED_O[4]	=>  Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED_RED_O[5]	=>  Location: PIN_AD23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED_RED_O[6]	=>  Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED_RED_O[7]	=>  Location: PIN_AC21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED_RED_O[8]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED_RED_O[9]	=>  Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED_RED_O[10]	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED_RED_O[11]	=>  Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED_RED_O[12]	=>  Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED_RED_O[13]	=>  Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED_RED_O[14]	=>  Location: PIN_AF13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED_RED_O[15]	=>  Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED_RED_O[16]	=>  Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LED_RED_O[17]	=>  Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CLOCK_50_I	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SWITCH_I[17]	=>  Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF experiment1b IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50_I : std_logic;
SIGNAL ww_PUSH_BUTTON_I : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SWITCH_I : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_SEVEN_SEGMENT_N_O : SEVEN_SEGMENT_N_O_type;
SIGNAL ww_LED_GREEN_O : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_LED_RED_O : std_logic_vector(17 DOWNTO 0);
SIGNAL \CLOCK_50_I~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Touch_Panel_unit|Add3~2_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|Add3~6_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|Add3~8_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|Add3~10_combout\ : std_logic;
SIGNAL \LCD_Data_unit|Add1~2_combout\ : std_logic;
SIGNAL \LCD_Data_unit|Add1~6_combout\ : std_logic;
SIGNAL \LCD_Data_unit|Add1~16_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|Add0~6_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|Add0~12_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|Add0~18_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_busy_timeout[0]~9_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|clock_div_count[1]~11_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|clock_div_count[3]~15_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|clock_div_count[4]~17_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|clock_div_count[6]~21_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|clock_div_count[8]~25_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|clock_div_count[10]~29_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|Add1~1\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|Add1~2_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|Add1~3\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|Add1~4_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|Add1~5\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|Add1~6_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|Add1~7\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|Add1~8_combout\ : std_logic;
SIGNAL \LCD_Config_unit|Add0~2_combout\ : std_logic;
SIGNAL \LCD_Config_unit|Add0~6_combout\ : std_logic;
SIGNAL \TP_position[2][0]~regout\ : std_logic;
SIGNAL \TP_position[4][1]~regout\ : std_logic;
SIGNAL \TP_position[6][0]~regout\ : std_logic;
SIGNAL \TP_position[0][0]~1_combout\ : std_logic;
SIGNAL \TP_position[0][1]~4_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_data_reg[11]~9_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_data_count[3]~6_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|Selector23~0_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_state~66_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_state~70_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|Selector24~0_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|Selector26~0_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \LCD_Data_unit|Equal8~0_combout\ : std_logic;
SIGNAL \LCD_Data_unit|Equal8~1_combout\ : std_logic;
SIGNAL \LCD_Data_unit|Equal8~2_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|sdat_en~1_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|SPI_Clock_counter~0_combout\ : std_logic;
SIGNAL \LCD_Config_unit|always1~1_combout\ : std_logic;
SIGNAL \LCD_Data_unit|H_den~1_combout\ : std_logic;
SIGNAL \LCD_Data_unit|H_den~2_combout\ : std_logic;
SIGNAL \LCD_Config_unit|WideOr4~0_combout\ : std_logic;
SIGNAL \LCD_Config_unit|Lookup_data~1_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_start~0_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_data~2_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|sdat~9_combout\ : std_logic;
SIGNAL \LCD_Config_unit|Mux1~0_combout\ : std_logic;
SIGNAL \LCD_Config_unit|Mux1~1_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|sdat~10_combout\ : std_logic;
SIGNAL \LCD_Config_unit|Mux2~0_combout\ : std_logic;
SIGNAL \LCD_Config_unit|Mux2~1_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|sdat~11_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|sdat~12_combout\ : std_logic;
SIGNAL \LCD_Config_unit|Mux4~0_combout\ : std_logic;
SIGNAL \LCD_Config_unit|Mux4~1_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|sdat~13_combout\ : std_logic;
SIGNAL \LCD_Config_unit|Mux5~0_combout\ : std_logic;
SIGNAL \LCD_Config_unit|Mux5~1_combout\ : std_logic;
SIGNAL \LCD_Config_unit|Mux5~2_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|sdat~14_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|sdat~15_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_state~114_combout\ : std_logic;
SIGNAL \LCD_Config_unit|Mux7~0_combout\ : std_logic;
SIGNAL \LCD_Config_unit|Mux7~1_combout\ : std_logic;
SIGNAL \LCD_Config_unit|Mux6~0_combout\ : std_logic;
SIGNAL \LCD_Config_unit|Mux6~1_combout\ : std_logic;
SIGNAL \LCD_Config_unit|Mux3~0_combout\ : std_logic;
SIGNAL \LCD_Config_unit|Mux3~1_combout\ : std_logic;
SIGNAL \TP_position[6][0]~feeder_combout\ : std_logic;
SIGNAL \TP_position[2][0]~feeder_combout\ : std_logic;
SIGNAL \TP_position[4][1]~feeder_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|X_Coord[1]~feeder_combout\ : std_logic;
SIGNAL \GPIO_0[0]~0\ : std_logic;
SIGNAL \GPIO_0[1]~1\ : std_logic;
SIGNAL \GPIO_0[2]~2\ : std_logic;
SIGNAL \Touch_Panel_unit|Add0~0_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|Add0~1\ : std_logic;
SIGNAL \Touch_Panel_unit|Add0~2_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|Add0~3\ : std_logic;
SIGNAL \Touch_Panel_unit|Add0~4_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|Add0~5\ : std_logic;
SIGNAL \Touch_Panel_unit|Add0~7\ : std_logic;
SIGNAL \Touch_Panel_unit|Add0~8_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|Add0~9\ : std_logic;
SIGNAL \Touch_Panel_unit|Add0~11\ : std_logic;
SIGNAL \Touch_Panel_unit|Add0~13\ : std_logic;
SIGNAL \Touch_Panel_unit|Add0~14_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|Add0~10_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|Equal0~1_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|Add0~15\ : std_logic;
SIGNAL \Touch_Panel_unit|Add0~17\ : std_logic;
SIGNAL \Touch_Panel_unit|Add0~19\ : std_logic;
SIGNAL \Touch_Panel_unit|Add0~20_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|Add0~16_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|Add0~21\ : std_logic;
SIGNAL \Touch_Panel_unit|Add0~22_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|Equal0~0_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|Equal0~2_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|Equal0~3_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|En_SPI_Clock~regout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_penirq_db[0]~0_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_penirq_db[1]~feeder_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_penirq_db[2]~feeder_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_penirq_db[3]~feeder_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_penirq_db[4]~feeder_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_penirq_db[6]~feeder_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_penirq_db[7]~feeder_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|WideOr0~0_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|WideOr0~1_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|WideOr0~combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_penirq1~regout\ : std_logic;
SIGNAL \Touch_Panel_unit|WideAnd0~0_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|WideAnd0~1_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|WideAnd0~combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_penirq0~regout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_penirq~0_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_penirq~regout\ : std_logic;
SIGNAL \Top_state.010~feeder_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|Add1~0_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|state_counter[0]~6_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|clock_div_count[1]~12\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|clock_div_count[2]~13_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|clock_div_count[2]~14\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|clock_div_count[3]~16\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|clock_div_count[4]~18\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|clock_div_count[5]~19_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|clock_div_count[5]~20\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|clock_div_count[6]~22\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|clock_div_count[7]~23_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|clock_div_count[7]~24\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|clock_div_count[8]~26\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|clock_div_count[9]~27_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|clock_div_count[9]~28\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|clock_div_count[10]~30\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|clock_div_count[11]~31_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|clock_div~regout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|clock_div_prev~regout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|Equal0~1_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|state_counter[1]~0_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|state_counter[0]~7_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|state_counter[2]~5_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|Equal0~0_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|state_counter[1]~1_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|state_counter[4]~2_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_start~1_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_start~regout\ : std_logic;
SIGNAL \LCD_Config_unit|always1~0_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_state[1]~0_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_state[1]~1_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_state[3]~2_combout\ : std_logic;
SIGNAL \LCD_Config_unit|Equal0~0_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_state[1]~5_combout\ : std_logic;
SIGNAL \LCD_Config_unit|Add0~5\ : std_logic;
SIGNAL \LCD_Config_unit|Add0~7\ : std_logic;
SIGNAL \LCD_Config_unit|Add0~8_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_state[4]~4_combout\ : std_logic;
SIGNAL \LCD_Config_unit|Equal0~1_combout\ : std_logic;
SIGNAL \LCD_Config_unit|Add0~0_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_state[0]~6_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_state[0]~7_combout\ : std_logic;
SIGNAL \LCD_Config_unit|Add0~1\ : std_logic;
SIGNAL \LCD_Config_unit|Add0~3\ : std_logic;
SIGNAL \LCD_Config_unit|Add0~4_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_state[2]~3_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|Equal4~0_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|state_counter[3]~4_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|state_counter[1]~3_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|Equal1~0_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|Equal3~0_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|sdat_en~0_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|sdat_en~2_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|always2~0_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|sdat_en~regout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|Acknowledge~0_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|Acknowledge~1_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|Acknowledge~2_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|Acknowledge~regout\ : std_logic;
SIGNAL \LCD_Config_unit|always1~2_combout\ : std_logic;
SIGNAL \LCD_Config_unit|Done~0_combout\ : std_logic;
SIGNAL \LCD_Config_unit|Done~1_combout\ : std_logic;
SIGNAL \LCD_Config_unit|Done~regout\ : std_logic;
SIGNAL \Top_state.000~feeder_combout\ : std_logic;
SIGNAL \Top_state.000~regout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Top_state.001~regout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \LCD_config_start~regout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Top_state.010~regout\ : std_logic;
SIGNAL \LCD_Data_unit|V_Count[0]~11\ : std_logic;
SIGNAL \LCD_Data_unit|V_Count[1]~14_combout\ : std_logic;
SIGNAL \LCD_Data_unit|V_Count[1]~15\ : std_logic;
SIGNAL \LCD_Data_unit|V_Count[2]~16_combout\ : std_logic;
SIGNAL \LCD_Data_unit|oCoord_X[0]~3_combout\ : std_logic;
SIGNAL \LCD_Data_unit|H_Count[6]~10_combout\ : std_logic;
SIGNAL \LCD_Data_unit|LTM_NCLK~0_combout\ : std_logic;
SIGNAL \LCD_Data_unit|LTM_NCLK~regout\ : std_logic;
SIGNAL \LCD_Data_unit|V_Sync~0_combout\ : std_logic;
SIGNAL \LCD_Data_unit|oCoord_X[0]~4\ : std_logic;
SIGNAL \LCD_Data_unit|oCoord_X[1]~5_combout\ : std_logic;
SIGNAL \LCD_Data_unit|oCoord_X[1]~6\ : std_logic;
SIGNAL \LCD_Data_unit|oCoord_X[2]~7_combout\ : std_logic;
SIGNAL \LCD_Data_unit|oCoord_X[2]~8\ : std_logic;
SIGNAL \LCD_Data_unit|H_Count[3]~9\ : std_logic;
SIGNAL \LCD_Data_unit|H_Count[4]~11_combout\ : std_logic;
SIGNAL \LCD_Data_unit|H_Count[4]~12\ : std_logic;
SIGNAL \LCD_Data_unit|H_Count[5]~14\ : std_logic;
SIGNAL \LCD_Data_unit|H_Count[6]~16\ : std_logic;
SIGNAL \LCD_Data_unit|H_Count[7]~17_combout\ : std_logic;
SIGNAL \LCD_Data_unit|H_Count[7]~18\ : std_logic;
SIGNAL \LCD_Data_unit|H_Count[8]~20\ : std_logic;
SIGNAL \LCD_Data_unit|H_Count[9]~21_combout\ : std_logic;
SIGNAL \LCD_Data_unit|H_Count[9]~22\ : std_logic;
SIGNAL \LCD_Data_unit|H_Count[10]~23_combout\ : std_logic;
SIGNAL \LCD_Data_unit|H_Count[6]~15_combout\ : std_logic;
SIGNAL \LCD_Data_unit|Equal0~1_combout\ : std_logic;
SIGNAL \LCD_Data_unit|H_Count[5]~13_combout\ : std_logic;
SIGNAL \LCD_Data_unit|H_den~0_combout\ : std_logic;
SIGNAL \LCD_Data_unit|Equal0~0_combout\ : std_logic;
SIGNAL \LCD_Data_unit|Equal0~2_combout\ : std_logic;
SIGNAL \LCD_Data_unit|V_Count[7]~13_combout\ : std_logic;
SIGNAL \LCD_Data_unit|V_Count[2]~17\ : std_logic;
SIGNAL \LCD_Data_unit|V_Count[3]~18_combout\ : std_logic;
SIGNAL \LCD_Data_unit|Equal3~2_combout\ : std_logic;
SIGNAL \LCD_Data_unit|V_Count[3]~19\ : std_logic;
SIGNAL \LCD_Data_unit|V_Count[4]~21\ : std_logic;
SIGNAL \LCD_Data_unit|V_Count[5]~22_combout\ : std_logic;
SIGNAL \LCD_Data_unit|V_Count[5]~23\ : std_logic;
SIGNAL \LCD_Data_unit|V_Count[6]~25\ : std_logic;
SIGNAL \LCD_Data_unit|V_Count[7]~26_combout\ : std_logic;
SIGNAL \LCD_Data_unit|V_Count[7]~27\ : std_logic;
SIGNAL \LCD_Data_unit|V_Count[8]~28_combout\ : std_logic;
SIGNAL \LCD_Data_unit|V_Count[6]~24_combout\ : std_logic;
SIGNAL \LCD_Data_unit|V_Count[0]~10_combout\ : std_logic;
SIGNAL \LCD_Data_unit|Equal3~0_combout\ : std_logic;
SIGNAL \LCD_Data_unit|V_Count[7]~12_combout\ : std_logic;
SIGNAL \LCD_Data_unit|Equal3~1_combout\ : std_logic;
SIGNAL \LCD_Data_unit|V_Count[8]~29\ : std_logic;
SIGNAL \LCD_Data_unit|V_Count[9]~30_combout\ : std_logic;
SIGNAL \LCD_Data_unit|V_Sync~1_combout\ : std_logic;
SIGNAL \LCD_Data_unit|V_Sync~regout\ : std_logic;
SIGNAL \LCD_Data_unit|LTM_VD~0_combout\ : std_logic;
SIGNAL \LCD_Data_unit|LTM_VD~regout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_state~50_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_state.S_TP_ENABLE~0_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_state.S_TP_ENABLE~regout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_SCLK_O~0_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_data_reg[11]~6_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_data_reg[11]~8_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|Selector17~1_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_data_reg[11]~5_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|Touch_En~3_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|Selector15~0_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_data_count[3]~3_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_state~85_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_state.S_TP_SEND_X~regout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_data_count[3]~9_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_data_count[3]~12_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_data_count[3]~10_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_data_count[3]~11_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|Selector13~2_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|Selector12~0_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|Equal6~0_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_state~59_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_data_count[3]~7_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_data_count[3]~8_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|Selector14~0_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_data_count[3]~5_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_busy_timeout[0]~10\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_busy_timeout[1]~11_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_busy_timeout[0]~8_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|WideNor0~0_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_busy_timeout[0]~7_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_busy_timeout[0]~19_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_busy_timeout[4]~22_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_busy_timeout[3]~16\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_busy_timeout[4]~17_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_busy_timeout[4]~20_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_data_count[3]~2_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_busy_timeout[4]~21_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_busy_timeout[1]~12\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_busy_timeout[2]~14\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_busy_timeout[3]~15_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_busy_timeout[2]~13_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|Equal3~0_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_state~80_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_state~81_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_data_count[3]~4_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_state~60_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_state~82_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_state~77_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_state~78_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_state~79_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_state~83_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_state~62_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_state~71_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_state~61_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_state~72_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_state~73_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_state~74_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_state~75_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_state~76_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_state~84_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_state.S_TP_SYNC_1K~regout\ : std_logic;
SIGNAL \Touch_Panel_unit|Selector23~1_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|Add1~0_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_data_reg[11]~2_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_data_reg[11]~14_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_data_reg[11]~10_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_data_reg[11]~11_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_data_reg[11]~12_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|Selector22~0_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|Selector22~1_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|Selector24~1_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|Selector26~1_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|Add3~1\ : std_logic;
SIGNAL \Touch_Panel_unit|Add3~3\ : std_logic;
SIGNAL \Touch_Panel_unit|Add3~5\ : std_logic;
SIGNAL \Touch_Panel_unit|Add3~7\ : std_logic;
SIGNAL \Touch_Panel_unit|Add3~9\ : std_logic;
SIGNAL \Touch_Panel_unit|Add3~11\ : std_logic;
SIGNAL \Touch_Panel_unit|Add3~12_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|Selector21~0_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|Selector21~1_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|Add3~13\ : std_logic;
SIGNAL \Touch_Panel_unit|Add3~15\ : std_logic;
SIGNAL \Touch_Panel_unit|Add3~17\ : std_logic;
SIGNAL \Touch_Panel_unit|Add3~18_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|Selector18~0_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|Selector18~1_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|Add3~19\ : std_logic;
SIGNAL \Touch_Panel_unit|Add3~20_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|Selector17~0_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|Selector17~2_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|Selector16~0_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|Add3~21\ : std_logic;
SIGNAL \Touch_Panel_unit|Add3~22_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|Selector16~1_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|Selector16~2_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|Equal7~0_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|Add3~16_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|Selector19~0_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|Selector19~1_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|Equal7~3_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|Equal7~4_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|Add3~4_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|Selector25~0_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|Selector25~1_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|Equal7~1_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|Equal7~2_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_data_reg[11]~13_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|Add3~14_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|Selector20~0_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|Selector20~1_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|Equal8~0_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_state~44_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_state~45_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_state~49_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_state~57_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_state~110_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_state~109_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_state~55_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_state~51_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_state~52_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_state~53_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_state~54_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_state~56_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_state~58_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_state.S_TP_ZF_Y~regout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_state~112_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_state~98_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_state~95_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_state~96_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_state~93_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_state~90_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_state~89_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_state~91_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_state~92_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_state~94_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_state~97_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_state.S_TP_BACKOFF~regout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_data_reg[11]~4_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_state.S_TP_DEBOUNCE~regout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_state~67_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_MOSI_O~3_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_state~63_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_state~64_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_state~65_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_state~68_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_state.S_TP_IDLE~feeder_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_state.S_TP_IDLE~regout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_SCLK_O~regout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_data_reg[11]~3_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_state~46_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_state~48_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_state~69_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_state.S_TP_ZF_X~regout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_state~43_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_state~99_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_state~108_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_state~104_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_state~105_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_state~101_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_state~102_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_state~103_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_state~106_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_state~107_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_state.S_TP_RECV_X~regout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_state~47_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_state~113_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_state~100_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_state.S_TP_RECV_Y~regout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_data_reg[11]~7_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_state~86_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_state~87_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_state~111_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_state~88_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_state.S_TP_SEND_Y~regout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_MOSI_O~2_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|I2C_scen~0_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|I2C_scen~regout\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \LCD_TPn_sel~regout\ : std_logic;
SIGNAL \LCD_TPn_sclk~0_combout\ : std_logic;
SIGNAL \CLOCK_50_I~combout\ : std_logic;
SIGNAL \CLOCK_50_I~clkctrl_outclk\ : std_logic;
SIGNAL \LCD_Data_unit|H_Count[3]~8_combout\ : std_logic;
SIGNAL \LCD_Data_unit|Add0~1\ : std_logic;
SIGNAL \LCD_Data_unit|Add0~3\ : std_logic;
SIGNAL \LCD_Data_unit|Add0~5\ : std_logic;
SIGNAL \LCD_Data_unit|Add0~7\ : std_logic;
SIGNAL \LCD_Data_unit|Add0~8_combout\ : std_logic;
SIGNAL \LCD_Data_unit|H_den~3_combout\ : std_logic;
SIGNAL \LCD_Data_unit|H_den~4_combout\ : std_logic;
SIGNAL \LCD_Data_unit|H_den~regout\ : std_logic;
SIGNAL \LCD_Data_unit|V_den~0_combout\ : std_logic;
SIGNAL \LCD_Data_unit|V_den~1_combout\ : std_logic;
SIGNAL \LCD_Data_unit|V_den~2_combout\ : std_logic;
SIGNAL \LCD_Data_unit|V_den~regout\ : std_logic;
SIGNAL \LCD_Data_unit|LTM_R[7]~0_combout\ : std_logic;
SIGNAL \LCD_Data_unit|Equal7~2_combout\ : std_logic;
SIGNAL \LCD_Data_unit|Add0~0_combout\ : std_logic;
SIGNAL \LCD_Data_unit|Add0~6_combout\ : std_logic;
SIGNAL \LCD_Data_unit|Add0~4_combout\ : std_logic;
SIGNAL \LCD_Data_unit|Equal7~0_combout\ : std_logic;
SIGNAL \LCD_Data_unit|Add0~2_combout\ : std_logic;
SIGNAL \LCD_Data_unit|H_Count[8]~19_combout\ : std_logic;
SIGNAL \LCD_Data_unit|Add0~9\ : std_logic;
SIGNAL \LCD_Data_unit|Add0~11\ : std_logic;
SIGNAL \LCD_Data_unit|Add0~12_combout\ : std_logic;
SIGNAL \LCD_Data_unit|Add0~10_combout\ : std_logic;
SIGNAL \LCD_Data_unit|Equal7~1_combout\ : std_logic;
SIGNAL \LCD_Data_unit|LTM_R[7]~1_combout\ : std_logic;
SIGNAL \LCD_Data_unit|V_Count[4]~20_combout\ : std_logic;
SIGNAL \LCD_Data_unit|Add1~1\ : std_logic;
SIGNAL \LCD_Data_unit|Add1~3\ : std_logic;
SIGNAL \LCD_Data_unit|Add1~5\ : std_logic;
SIGNAL \LCD_Data_unit|Add1~7\ : std_logic;
SIGNAL \LCD_Data_unit|Add1~9\ : std_logic;
SIGNAL \LCD_Data_unit|Add1~11\ : std_logic;
SIGNAL \LCD_Data_unit|Add1~13\ : std_logic;
SIGNAL \LCD_Data_unit|Add1~14_combout\ : std_logic;
SIGNAL \LCD_Data_unit|Add1~4_combout\ : std_logic;
SIGNAL \LCD_Data_unit|Add1~12_combout\ : std_logic;
SIGNAL \LCD_Data_unit|Add1~8_combout\ : std_logic;
SIGNAL \LCD_Data_unit|Equal10~1_combout\ : std_logic;
SIGNAL \LCD_Data_unit|Add1~0_combout\ : std_logic;
SIGNAL \LCD_Data_unit|Add1~10_combout\ : std_logic;
SIGNAL \LCD_Data_unit|Add1~15\ : std_logic;
SIGNAL \LCD_Data_unit|Add1~17\ : std_logic;
SIGNAL \LCD_Data_unit|Add1~18_combout\ : std_logic;
SIGNAL \LCD_Data_unit|Equal10~0_combout\ : std_logic;
SIGNAL \LCD_Data_unit|Equal10~2_combout\ : std_logic;
SIGNAL \LCD_Data_unit|Equal9~1_combout\ : std_logic;
SIGNAL \LCD_Data_unit|Equal9~0_combout\ : std_logic;
SIGNAL \LCD_Data_unit|Equal9~2_combout\ : std_logic;
SIGNAL \LCD_Data_unit|LTM_R[7]~2_combout\ : std_logic;
SIGNAL \LCD_Data_unit|LTM_B~0_combout\ : std_logic;
SIGNAL \LCD_Data_unit|LTM_DEN~feeder_combout\ : std_logic;
SIGNAL \LCD_Data_unit|LTM_DEN~regout\ : std_logic;
SIGNAL \LCD_Data_unit|H_Count[6]~10_wirecell_combout\ : std_logic;
SIGNAL \LCD_Data_unit|H_Sync~regout\ : std_logic;
SIGNAL \LCD_Data_unit|LTM_HD~0_combout\ : std_logic;
SIGNAL \LCD_Data_unit|LTM_HD~regout\ : std_logic;
SIGNAL \LCD_Data_unit|LTM_G~0_combout\ : std_logic;
SIGNAL \LCD_Data_unit|LTM_R~3_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_SS_N_O~0_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|Coord_En~0_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_SS_N_O~1_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|TP_SS_N_O~regout\ : std_logic;
SIGNAL \LTM_SCEN~0_combout\ : std_logic;
SIGNAL \LCD_Config_unit|WideOr1~0_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_data~0_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_data[15]~1_combout\ : std_logic;
SIGNAL \LCD_Config_unit|WideOr2~2_combout\ : std_logic;
SIGNAL \LCD_Config_unit|WideOr2~3_combout\ : std_logic;
SIGNAL \LCD_Config_unit|WideOr3~0_combout\ : std_logic;
SIGNAL \LCD_Config_unit|WideOr3~1_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_data[8]~3_combout\ : std_logic;
SIGNAL \LCD_Config_unit|Mux0~0_combout\ : std_logic;
SIGNAL \LCD_Config_unit|Mux0~1_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|sdat~8_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|sdat~7_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|sdat~6_combout\ : std_logic;
SIGNAL \LCD_Config_unit|WideOr4~1_combout\ : std_logic;
SIGNAL \LCD_Config_unit|WideOr4~2_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|sdat~5_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|sdat~4_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|sdat~3_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|sdat~2_combout\ : std_logic;
SIGNAL \LCD_Config_unit|Lookup_data~0_combout\ : std_logic;
SIGNAL \LCD_Config_unit|WideOr0~0_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|sdat~1_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|sdat~0_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|X_Coord[11]~0_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|X_Coord[10]~feeder_combout\ : std_logic;
SIGNAL \LessThan5~0_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|X_Coord[5]~feeder_combout\ : std_logic;
SIGNAL \LessThan5~1_combout\ : std_logic;
SIGNAL \LessThan5~2_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|Y_Coord[9]~2_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|Y_Coord[11]~0_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|Y_Coord[10]~1_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|Y_Coord[8]~3_combout\ : std_logic;
SIGNAL \TP_position[0][1]~0_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|Coord_En~1_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|Coord_En~regout\ : std_logic;
SIGNAL \TP_position[0][0]~2_combout\ : std_logic;
SIGNAL \TP_position[0][0]~3_combout\ : std_logic;
SIGNAL \TP_position[0][0]~regout\ : std_logic;
SIGNAL \always2~0_combout\ : std_logic;
SIGNAL \TP_position[0][0]~5_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|Y_Coord[11]~5_combout\ : std_logic;
SIGNAL \TP_position[0][1]~6_combout\ : std_logic;
SIGNAL \TP_position[0][1]~regout\ : std_logic;
SIGNAL \Touch_Panel_unit|Touch_En~2_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|Touch_En~4_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|Touch_En~5_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|Touch_En~regout\ : std_logic;
SIGNAL \TP_position[6][4]~feeder_combout\ : std_logic;
SIGNAL \TP_position[6][4]~regout\ : std_logic;
SIGNAL \display_unit|SEVEN_SEGMENT_N_O[0][0]~0_combout\ : std_logic;
SIGNAL \display_unit|SEVEN_SEGMENT_N_O[0][2]~1_combout\ : std_logic;
SIGNAL \display_unit|SEVEN_SEGMENT_N_O[0][4]~2_combout\ : std_logic;
SIGNAL \display_unit|SEVEN_SEGMENT_N_O[0][5]~3_combout\ : std_logic;
SIGNAL \display_unit|SEVEN_SEGMENT_N_O[0][6]~4_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|Y_Coord[5]~7_combout\ : std_logic;
SIGNAL \TP_position[1][1]~feeder_combout\ : std_logic;
SIGNAL \TP_position[1][1]~regout\ : std_logic;
SIGNAL \Touch_Panel_unit|Y_Coord[7]~4_combout\ : std_logic;
SIGNAL \TP_position[1][3]~feeder_combout\ : std_logic;
SIGNAL \TP_position[1][3]~regout\ : std_logic;
SIGNAL \Touch_Panel_unit|Y_Coord[4]~8_combout\ : std_logic;
SIGNAL \TP_position[1][0]~feeder_combout\ : std_logic;
SIGNAL \TP_position[1][0]~regout\ : std_logic;
SIGNAL \display_unit|seg1|WideOr6~0_combout\ : std_logic;
SIGNAL \display_unit|SEVEN_SEGMENT_N_O[1][0]~5_combout\ : std_logic;
SIGNAL \display_unit|seg1|WideOr5~0_combout\ : std_logic;
SIGNAL \display_unit|SEVEN_SEGMENT_N_O[1][1]~6_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|Y_Coord[6]~6_combout\ : std_logic;
SIGNAL \TP_position[1][2]~regout\ : std_logic;
SIGNAL \display_unit|seg1|WideOr4~0_combout\ : std_logic;
SIGNAL \display_unit|SEVEN_SEGMENT_N_O[1][2]~7_combout\ : std_logic;
SIGNAL \display_unit|seg1|WideOr3~0_combout\ : std_logic;
SIGNAL \display_unit|SEVEN_SEGMENT_N_O[1][3]~8_combout\ : std_logic;
SIGNAL \display_unit|seg1|WideOr2~0_combout\ : std_logic;
SIGNAL \display_unit|SEVEN_SEGMENT_N_O[1][4]~9_combout\ : std_logic;
SIGNAL \display_unit|seg1|WideOr1~0_combout\ : std_logic;
SIGNAL \display_unit|SEVEN_SEGMENT_N_O[1][5]~10_combout\ : std_logic;
SIGNAL \display_unit|seg1|WideOr0~0_combout\ : std_logic;
SIGNAL \display_unit|SEVEN_SEGMENT_N_O[1][6]~11_combout\ : std_logic;
SIGNAL \TP_position[2][2]~feeder_combout\ : std_logic;
SIGNAL \TP_position[2][2]~regout\ : std_logic;
SIGNAL \TP_position[2][1]~feeder_combout\ : std_logic;
SIGNAL \TP_position[2][1]~regout\ : std_logic;
SIGNAL \TP_position[2][3]~regout\ : std_logic;
SIGNAL \display_unit|seg2|WideOr6~0_combout\ : std_logic;
SIGNAL \display_unit|SEVEN_SEGMENT_N_O[2][0]~12_combout\ : std_logic;
SIGNAL \display_unit|seg2|WideOr5~0_combout\ : std_logic;
SIGNAL \display_unit|SEVEN_SEGMENT_N_O[2][1]~13_combout\ : std_logic;
SIGNAL \display_unit|seg2|WideOr4~0_combout\ : std_logic;
SIGNAL \display_unit|SEVEN_SEGMENT_N_O[2][2]~14_combout\ : std_logic;
SIGNAL \display_unit|seg2|WideOr3~0_combout\ : std_logic;
SIGNAL \display_unit|SEVEN_SEGMENT_N_O[2][3]~15_combout\ : std_logic;
SIGNAL \display_unit|seg2|WideOr2~0_combout\ : std_logic;
SIGNAL \display_unit|SEVEN_SEGMENT_N_O[2][4]~16_combout\ : std_logic;
SIGNAL \display_unit|seg2|WideOr1~0_combout\ : std_logic;
SIGNAL \display_unit|SEVEN_SEGMENT_N_O[2][5]~17_combout\ : std_logic;
SIGNAL \display_unit|seg2|WideOr0~0_combout\ : std_logic;
SIGNAL \display_unit|SEVEN_SEGMENT_N_O[2][6]~18_combout\ : std_logic;
SIGNAL \TP_position[4][2]~regout\ : std_logic;
SIGNAL \Touch_Panel_unit|Add3~0_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|Selector27~0_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|Selector27~1_combout\ : std_logic;
SIGNAL \Touch_Panel_unit|X_Coord[0]~feeder_combout\ : std_logic;
SIGNAL \TP_position[4][0]~feeder_combout\ : std_logic;
SIGNAL \TP_position[4][0]~regout\ : std_logic;
SIGNAL \Touch_Panel_unit|X_Coord[3]~feeder_combout\ : std_logic;
SIGNAL \TP_position[4][3]~regout\ : std_logic;
SIGNAL \display_unit|seg4|WideOr6~0_combout\ : std_logic;
SIGNAL \display_unit|SEVEN_SEGMENT_N_O[4][0]~19_combout\ : std_logic;
SIGNAL \display_unit|seg4|WideOr5~0_combout\ : std_logic;
SIGNAL \display_unit|SEVEN_SEGMENT_N_O[4][1]~20_combout\ : std_logic;
SIGNAL \display_unit|seg4|WideOr4~0_combout\ : std_logic;
SIGNAL \display_unit|SEVEN_SEGMENT_N_O[4][2]~21_combout\ : std_logic;
SIGNAL \display_unit|seg4|WideOr3~0_combout\ : std_logic;
SIGNAL \display_unit|SEVEN_SEGMENT_N_O[4][3]~22_combout\ : std_logic;
SIGNAL \display_unit|seg4|WideOr2~0_combout\ : std_logic;
SIGNAL \display_unit|SEVEN_SEGMENT_N_O[4][4]~23_combout\ : std_logic;
SIGNAL \display_unit|seg4|WideOr1~0_combout\ : std_logic;
SIGNAL \display_unit|SEVEN_SEGMENT_N_O[4][5]~24_combout\ : std_logic;
SIGNAL \display_unit|seg4|WideOr0~0_combout\ : std_logic;
SIGNAL \display_unit|SEVEN_SEGMENT_N_O[4][6]~25_combout\ : std_logic;
SIGNAL \TP_position[5][2]~regout\ : std_logic;
SIGNAL \TP_position[5][0]~regout\ : std_logic;
SIGNAL \TP_position[5][1]~regout\ : std_logic;
SIGNAL \display_unit|seg5|WideOr6~0_combout\ : std_logic;
SIGNAL \display_unit|SEVEN_SEGMENT_N_O[5][0]~26_combout\ : std_logic;
SIGNAL \TP_position[5][3]~regout\ : std_logic;
SIGNAL \display_unit|seg5|WideOr5~0_combout\ : std_logic;
SIGNAL \display_unit|SEVEN_SEGMENT_N_O[5][1]~27_combout\ : std_logic;
SIGNAL \display_unit|seg5|WideOr4~0_combout\ : std_logic;
SIGNAL \display_unit|SEVEN_SEGMENT_N_O[5][2]~28_combout\ : std_logic;
SIGNAL \display_unit|seg5|WideOr3~0_combout\ : std_logic;
SIGNAL \display_unit|SEVEN_SEGMENT_N_O[5][3]~29_combout\ : std_logic;
SIGNAL \display_unit|seg5|WideOr2~0_combout\ : std_logic;
SIGNAL \display_unit|SEVEN_SEGMENT_N_O[5][4]~30_combout\ : std_logic;
SIGNAL \display_unit|seg5|WideOr1~0_combout\ : std_logic;
SIGNAL \display_unit|SEVEN_SEGMENT_N_O[5][5]~31_combout\ : std_logic;
SIGNAL \display_unit|seg5|WideOr0~0_combout\ : std_logic;
SIGNAL \display_unit|SEVEN_SEGMENT_N_O[5][6]~32_combout\ : std_logic;
SIGNAL \TP_position[6][2]~feeder_combout\ : std_logic;
SIGNAL \TP_position[6][2]~regout\ : std_logic;
SIGNAL \TP_position[6][3]~regout\ : std_logic;
SIGNAL \TP_position[6][1]~regout\ : std_logic;
SIGNAL \display_unit|seg6|WideOr6~0_combout\ : std_logic;
SIGNAL \display_unit|SEVEN_SEGMENT_N_O[6][0]~33_combout\ : std_logic;
SIGNAL \display_unit|seg6|WideOr5~0_combout\ : std_logic;
SIGNAL \display_unit|SEVEN_SEGMENT_N_O[6][1]~34_combout\ : std_logic;
SIGNAL \display_unit|seg6|WideOr4~0_combout\ : std_logic;
SIGNAL \display_unit|SEVEN_SEGMENT_N_O[6][2]~35_combout\ : std_logic;
SIGNAL \display_unit|seg6|WideOr3~0_combout\ : std_logic;
SIGNAL \display_unit|SEVEN_SEGMENT_N_O[6][3]~36_combout\ : std_logic;
SIGNAL \display_unit|seg6|WideOr2~0_combout\ : std_logic;
SIGNAL \display_unit|SEVEN_SEGMENT_N_O[6][4]~37_combout\ : std_logic;
SIGNAL \display_unit|seg6|WideOr1~0_combout\ : std_logic;
SIGNAL \display_unit|SEVEN_SEGMENT_N_O[6][5]~38_combout\ : std_logic;
SIGNAL \display_unit|seg6|WideOr0~0_combout\ : std_logic;
SIGNAL \display_unit|SEVEN_SEGMENT_N_O[6][6]~39_combout\ : std_logic;
SIGNAL Colourbar_Red : std_logic_vector(7 DOWNTO 0);
SIGNAL Colourbar_Green : std_logic_vector(7 DOWNTO 0);
SIGNAL Colourbar_Blue : std_logic_vector(7 DOWNTO 0);
SIGNAL \LCD_Config_unit|I2C_state\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \LCD_Config_unit|I2C_data\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \LCD_Config_unit|I2C_unit|state_counter\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \LCD_Config_unit|I2C_unit|sdat\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \LCD_Config_unit|I2C_unit|clock_div_count\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \LCD_Data_unit|oCoord_X\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \LCD_Data_unit|V_Count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \LCD_Data_unit|LTM_R\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \LCD_Data_unit|LTM_G\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \LCD_Data_unit|LTM_B\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \LCD_Data_unit|H_Count\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \Touch_Panel_unit|Y_Coord\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \Touch_Panel_unit|X_Coord\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \Touch_Panel_unit|TP_penirq_db\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Touch_Panel_unit|TP_data_reg\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \Touch_Panel_unit|TP_data_count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Touch_Panel_unit|TP_busy_timeout\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Touch_Panel_unit|SPI_Clock_counter\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \Touch_Panel_unit|Enable_reg\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \SWITCH_I~combout\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \ALT_INV_SWITCH_I~combout\ : std_logic_vector(17 DOWNTO 17);
SIGNAL \ALT_INV_Top_state.010~regout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|ALT_INV_sdat\ : std_logic_vector(15 DOWNTO 15);
SIGNAL \LCD_Data_unit|ALT_INV_LTM_VD~regout\ : std_logic;
SIGNAL \LCD_Data_unit|ALT_INV_LTM_NCLK~regout\ : std_logic;
SIGNAL \display_unit|ALT_INV_SEVEN_SEGMENT_N_O[0][4]~2_combout\ : std_logic;
SIGNAL \ALT_INV_TP_position[6][4]~regout\ : std_logic;
SIGNAL \Touch_Panel_unit|ALT_INV_TP_state.S_TP_IDLE~regout\ : std_logic;

BEGIN

ww_CLOCK_50_I <= CLOCK_50_I;
ww_PUSH_BUTTON_I <= PUSH_BUTTON_I;
ww_SWITCH_I <= SWITCH_I;
SEVEN_SEGMENT_N_O <= ww_SEVEN_SEGMENT_N_O;
LED_GREEN_O <= ww_LED_GREEN_O;
LED_RED_O <= ww_LED_RED_O;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50_I~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLOCK_50_I~combout\);
\ALT_INV_SWITCH_I~combout\(17) <= NOT \SWITCH_I~combout\(17);
\ALT_INV_Top_state.010~regout\ <= NOT \Top_state.010~regout\;
\LCD_Config_unit|I2C_unit|ALT_INV_sdat\(15) <= NOT \LCD_Config_unit|I2C_unit|sdat\(15);
\LCD_Data_unit|ALT_INV_LTM_VD~regout\ <= NOT \LCD_Data_unit|LTM_VD~regout\;
\LCD_Data_unit|ALT_INV_LTM_NCLK~regout\ <= NOT \LCD_Data_unit|LTM_NCLK~regout\;
\display_unit|ALT_INV_SEVEN_SEGMENT_N_O[0][4]~2_combout\ <= NOT \display_unit|SEVEN_SEGMENT_N_O[0][4]~2_combout\;
\ALT_INV_TP_position[6][4]~regout\ <= NOT \TP_position[6][4]~regout\;
\Touch_Panel_unit|ALT_INV_TP_state.S_TP_IDLE~regout\ <= NOT \Touch_Panel_unit|TP_state.S_TP_IDLE~regout\;

-- Location: LCCOMB_X33_Y17_N10
\Touch_Panel_unit|Add3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|Add3~2_combout\ = (\Touch_Panel_unit|TP_data_reg\(1) & (!\Touch_Panel_unit|Add3~1\)) # (!\Touch_Panel_unit|TP_data_reg\(1) & ((\Touch_Panel_unit|Add3~1\) # (GND)))
-- \Touch_Panel_unit|Add3~3\ = CARRY((!\Touch_Panel_unit|Add3~1\) # (!\Touch_Panel_unit|TP_data_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Touch_Panel_unit|TP_data_reg\(1),
	datad => VCC,
	cin => \Touch_Panel_unit|Add3~1\,
	combout => \Touch_Panel_unit|Add3~2_combout\,
	cout => \Touch_Panel_unit|Add3~3\);

-- Location: LCCOMB_X33_Y17_N14
\Touch_Panel_unit|Add3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|Add3~6_combout\ = (\Touch_Panel_unit|TP_data_reg\(3) & (!\Touch_Panel_unit|Add3~5\)) # (!\Touch_Panel_unit|TP_data_reg\(3) & ((\Touch_Panel_unit|Add3~5\) # (GND)))
-- \Touch_Panel_unit|Add3~7\ = CARRY((!\Touch_Panel_unit|Add3~5\) # (!\Touch_Panel_unit|TP_data_reg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Touch_Panel_unit|TP_data_reg\(3),
	datad => VCC,
	cin => \Touch_Panel_unit|Add3~5\,
	combout => \Touch_Panel_unit|Add3~6_combout\,
	cout => \Touch_Panel_unit|Add3~7\);

-- Location: LCCOMB_X33_Y17_N16
\Touch_Panel_unit|Add3~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|Add3~8_combout\ = (\Touch_Panel_unit|TP_data_reg\(4) & (\Touch_Panel_unit|Add3~7\ $ (GND))) # (!\Touch_Panel_unit|TP_data_reg\(4) & (!\Touch_Panel_unit|Add3~7\ & VCC))
-- \Touch_Panel_unit|Add3~9\ = CARRY((\Touch_Panel_unit|TP_data_reg\(4) & !\Touch_Panel_unit|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Touch_Panel_unit|TP_data_reg\(4),
	datad => VCC,
	cin => \Touch_Panel_unit|Add3~7\,
	combout => \Touch_Panel_unit|Add3~8_combout\,
	cout => \Touch_Panel_unit|Add3~9\);

-- Location: LCCOMB_X33_Y17_N18
\Touch_Panel_unit|Add3~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|Add3~10_combout\ = (\Touch_Panel_unit|TP_data_reg\(5) & (!\Touch_Panel_unit|Add3~9\)) # (!\Touch_Panel_unit|TP_data_reg\(5) & ((\Touch_Panel_unit|Add3~9\) # (GND)))
-- \Touch_Panel_unit|Add3~11\ = CARRY((!\Touch_Panel_unit|Add3~9\) # (!\Touch_Panel_unit|TP_data_reg\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_data_reg\(5),
	datad => VCC,
	cin => \Touch_Panel_unit|Add3~9\,
	combout => \Touch_Panel_unit|Add3~10_combout\,
	cout => \Touch_Panel_unit|Add3~11\);

-- Location: LCFF_X35_Y16_N17
\Touch_Panel_unit|TP_busy_timeout[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Touch_Panel_unit|TP_busy_timeout[0]~9_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	sclr => \Touch_Panel_unit|TP_busy_timeout[0]~19_combout\,
	ena => \Touch_Panel_unit|TP_busy_timeout[4]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Touch_Panel_unit|TP_busy_timeout\(0));

-- Location: LCCOMB_X62_Y22_N6
\LCD_Data_unit|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|Add1~2_combout\ = (\LCD_Data_unit|V_Count\(1) & (!\LCD_Data_unit|Add1~1\)) # (!\LCD_Data_unit|V_Count\(1) & ((\LCD_Data_unit|Add1~1\) # (GND)))
-- \LCD_Data_unit|Add1~3\ = CARRY((!\LCD_Data_unit|Add1~1\) # (!\LCD_Data_unit|V_Count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Data_unit|V_Count\(1),
	datad => VCC,
	cin => \LCD_Data_unit|Add1~1\,
	combout => \LCD_Data_unit|Add1~2_combout\,
	cout => \LCD_Data_unit|Add1~3\);

-- Location: LCCOMB_X62_Y22_N10
\LCD_Data_unit|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|Add1~6_combout\ = (\LCD_Data_unit|V_Count\(3) & (\LCD_Data_unit|Add1~5\ & VCC)) # (!\LCD_Data_unit|V_Count\(3) & (!\LCD_Data_unit|Add1~5\))
-- \LCD_Data_unit|Add1~7\ = CARRY((!\LCD_Data_unit|V_Count\(3) & !\LCD_Data_unit|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Data_unit|V_Count\(3),
	datad => VCC,
	cin => \LCD_Data_unit|Add1~5\,
	combout => \LCD_Data_unit|Add1~6_combout\,
	cout => \LCD_Data_unit|Add1~7\);

-- Location: LCCOMB_X62_Y22_N20
\LCD_Data_unit|Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|Add1~16_combout\ = (\LCD_Data_unit|V_Count\(8) & ((GND) # (!\LCD_Data_unit|Add1~15\))) # (!\LCD_Data_unit|V_Count\(8) & (\LCD_Data_unit|Add1~15\ $ (GND)))
-- \LCD_Data_unit|Add1~17\ = CARRY((\LCD_Data_unit|V_Count\(8)) # (!\LCD_Data_unit|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_Data_unit|V_Count\(8),
	datad => VCC,
	cin => \LCD_Data_unit|Add1~15\,
	combout => \LCD_Data_unit|Add1~16_combout\,
	cout => \LCD_Data_unit|Add1~17\);

-- Location: LCCOMB_X38_Y17_N6
\Touch_Panel_unit|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|Add0~6_combout\ = (\Touch_Panel_unit|SPI_Clock_counter\(3) & (!\Touch_Panel_unit|Add0~5\)) # (!\Touch_Panel_unit|SPI_Clock_counter\(3) & ((\Touch_Panel_unit|Add0~5\) # (GND)))
-- \Touch_Panel_unit|Add0~7\ = CARRY((!\Touch_Panel_unit|Add0~5\) # (!\Touch_Panel_unit|SPI_Clock_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|SPI_Clock_counter\(3),
	datad => VCC,
	cin => \Touch_Panel_unit|Add0~5\,
	combout => \Touch_Panel_unit|Add0~6_combout\,
	cout => \Touch_Panel_unit|Add0~7\);

-- Location: LCCOMB_X38_Y17_N12
\Touch_Panel_unit|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|Add0~12_combout\ = (\Touch_Panel_unit|SPI_Clock_counter\(6) & (\Touch_Panel_unit|Add0~11\ $ (GND))) # (!\Touch_Panel_unit|SPI_Clock_counter\(6) & (!\Touch_Panel_unit|Add0~11\ & VCC))
-- \Touch_Panel_unit|Add0~13\ = CARRY((\Touch_Panel_unit|SPI_Clock_counter\(6) & !\Touch_Panel_unit|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|SPI_Clock_counter\(6),
	datad => VCC,
	cin => \Touch_Panel_unit|Add0~11\,
	combout => \Touch_Panel_unit|Add0~12_combout\,
	cout => \Touch_Panel_unit|Add0~13\);

-- Location: LCCOMB_X38_Y17_N18
\Touch_Panel_unit|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|Add0~18_combout\ = (\Touch_Panel_unit|SPI_Clock_counter\(9) & (!\Touch_Panel_unit|Add0~17\)) # (!\Touch_Panel_unit|SPI_Clock_counter\(9) & ((\Touch_Panel_unit|Add0~17\) # (GND)))
-- \Touch_Panel_unit|Add0~19\ = CARRY((!\Touch_Panel_unit|Add0~17\) # (!\Touch_Panel_unit|SPI_Clock_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|SPI_Clock_counter\(9),
	datad => VCC,
	cin => \Touch_Panel_unit|Add0~17\,
	combout => \Touch_Panel_unit|Add0~18_combout\,
	cout => \Touch_Panel_unit|Add0~19\);

-- Location: LCCOMB_X35_Y16_N16
\Touch_Panel_unit|TP_busy_timeout[0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_busy_timeout[0]~9_combout\ = \Touch_Panel_unit|TP_busy_timeout\(0) $ (VCC)
-- \Touch_Panel_unit|TP_busy_timeout[0]~10\ = CARRY(\Touch_Panel_unit|TP_busy_timeout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_busy_timeout\(0),
	datad => VCC,
	combout => \Touch_Panel_unit|TP_busy_timeout[0]~9_combout\,
	cout => \Touch_Panel_unit|TP_busy_timeout[0]~10\);

-- Location: LCFF_X55_Y20_N25
\LCD_Config_unit|I2C_unit|clock_div_count[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|I2C_unit|clock_div_count[10]~29_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_unit|clock_div_count\(10));

-- Location: LCFF_X55_Y20_N21
\LCD_Config_unit|I2C_unit|clock_div_count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|I2C_unit|clock_div_count[8]~25_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_unit|clock_div_count\(8));

-- Location: LCFF_X55_Y20_N17
\LCD_Config_unit|I2C_unit|clock_div_count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|I2C_unit|clock_div_count[6]~21_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_unit|clock_div_count\(6));

-- Location: LCFF_X55_Y20_N13
\LCD_Config_unit|I2C_unit|clock_div_count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|I2C_unit|clock_div_count[4]~17_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_unit|clock_div_count\(4));

-- Location: LCFF_X55_Y20_N11
\LCD_Config_unit|I2C_unit|clock_div_count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|I2C_unit|clock_div_count[3]~15_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_unit|clock_div_count\(3));

-- Location: LCFF_X55_Y20_N7
\LCD_Config_unit|I2C_unit|clock_div_count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|I2C_unit|clock_div_count[1]~11_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_unit|clock_div_count\(1));

-- Location: LCCOMB_X55_Y20_N6
\LCD_Config_unit|I2C_unit|clock_div_count[1]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_unit|clock_div_count[1]~11_combout\ = (\LCD_Config_unit|I2C_unit|clock_div_count\(1) & (\Touch_Panel_unit|SPI_Clock_counter\(0) $ (VCC))) # (!\LCD_Config_unit|I2C_unit|clock_div_count\(1) & (\Touch_Panel_unit|SPI_Clock_counter\(0) & 
-- VCC))
-- \LCD_Config_unit|I2C_unit|clock_div_count[1]~12\ = CARRY((\LCD_Config_unit|I2C_unit|clock_div_count\(1) & \Touch_Panel_unit|SPI_Clock_counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_unit|clock_div_count\(1),
	datab => \Touch_Panel_unit|SPI_Clock_counter\(0),
	datad => VCC,
	combout => \LCD_Config_unit|I2C_unit|clock_div_count[1]~11_combout\,
	cout => \LCD_Config_unit|I2C_unit|clock_div_count[1]~12\);

-- Location: LCCOMB_X55_Y20_N10
\LCD_Config_unit|I2C_unit|clock_div_count[3]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_unit|clock_div_count[3]~15_combout\ = (\LCD_Config_unit|I2C_unit|clock_div_count\(3) & (\LCD_Config_unit|I2C_unit|clock_div_count[2]~14\ $ (GND))) # (!\LCD_Config_unit|I2C_unit|clock_div_count\(3) & 
-- (!\LCD_Config_unit|I2C_unit|clock_div_count[2]~14\ & VCC))
-- \LCD_Config_unit|I2C_unit|clock_div_count[3]~16\ = CARRY((\LCD_Config_unit|I2C_unit|clock_div_count\(3) & !\LCD_Config_unit|I2C_unit|clock_div_count[2]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_unit|clock_div_count\(3),
	datad => VCC,
	cin => \LCD_Config_unit|I2C_unit|clock_div_count[2]~14\,
	combout => \LCD_Config_unit|I2C_unit|clock_div_count[3]~15_combout\,
	cout => \LCD_Config_unit|I2C_unit|clock_div_count[3]~16\);

-- Location: LCCOMB_X55_Y20_N12
\LCD_Config_unit|I2C_unit|clock_div_count[4]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_unit|clock_div_count[4]~17_combout\ = (\LCD_Config_unit|I2C_unit|clock_div_count\(4) & (!\LCD_Config_unit|I2C_unit|clock_div_count[3]~16\)) # (!\LCD_Config_unit|I2C_unit|clock_div_count\(4) & 
-- ((\LCD_Config_unit|I2C_unit|clock_div_count[3]~16\) # (GND)))
-- \LCD_Config_unit|I2C_unit|clock_div_count[4]~18\ = CARRY((!\LCD_Config_unit|I2C_unit|clock_div_count[3]~16\) # (!\LCD_Config_unit|I2C_unit|clock_div_count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_unit|clock_div_count\(4),
	datad => VCC,
	cin => \LCD_Config_unit|I2C_unit|clock_div_count[3]~16\,
	combout => \LCD_Config_unit|I2C_unit|clock_div_count[4]~17_combout\,
	cout => \LCD_Config_unit|I2C_unit|clock_div_count[4]~18\);

-- Location: LCCOMB_X55_Y20_N16
\LCD_Config_unit|I2C_unit|clock_div_count[6]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_unit|clock_div_count[6]~21_combout\ = (\LCD_Config_unit|I2C_unit|clock_div_count\(6) & (!\LCD_Config_unit|I2C_unit|clock_div_count[5]~20\)) # (!\LCD_Config_unit|I2C_unit|clock_div_count\(6) & 
-- ((\LCD_Config_unit|I2C_unit|clock_div_count[5]~20\) # (GND)))
-- \LCD_Config_unit|I2C_unit|clock_div_count[6]~22\ = CARRY((!\LCD_Config_unit|I2C_unit|clock_div_count[5]~20\) # (!\LCD_Config_unit|I2C_unit|clock_div_count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_unit|clock_div_count\(6),
	datad => VCC,
	cin => \LCD_Config_unit|I2C_unit|clock_div_count[5]~20\,
	combout => \LCD_Config_unit|I2C_unit|clock_div_count[6]~21_combout\,
	cout => \LCD_Config_unit|I2C_unit|clock_div_count[6]~22\);

-- Location: LCCOMB_X55_Y20_N20
\LCD_Config_unit|I2C_unit|clock_div_count[8]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_unit|clock_div_count[8]~25_combout\ = (\LCD_Config_unit|I2C_unit|clock_div_count\(8) & (!\LCD_Config_unit|I2C_unit|clock_div_count[7]~24\)) # (!\LCD_Config_unit|I2C_unit|clock_div_count\(8) & 
-- ((\LCD_Config_unit|I2C_unit|clock_div_count[7]~24\) # (GND)))
-- \LCD_Config_unit|I2C_unit|clock_div_count[8]~26\ = CARRY((!\LCD_Config_unit|I2C_unit|clock_div_count[7]~24\) # (!\LCD_Config_unit|I2C_unit|clock_div_count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_unit|clock_div_count\(8),
	datad => VCC,
	cin => \LCD_Config_unit|I2C_unit|clock_div_count[7]~24\,
	combout => \LCD_Config_unit|I2C_unit|clock_div_count[8]~25_combout\,
	cout => \LCD_Config_unit|I2C_unit|clock_div_count[8]~26\);

-- Location: LCCOMB_X55_Y20_N24
\LCD_Config_unit|I2C_unit|clock_div_count[10]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_unit|clock_div_count[10]~29_combout\ = (\LCD_Config_unit|I2C_unit|clock_div_count\(10) & (!\LCD_Config_unit|I2C_unit|clock_div_count[9]~28\)) # (!\LCD_Config_unit|I2C_unit|clock_div_count\(10) & 
-- ((\LCD_Config_unit|I2C_unit|clock_div_count[9]~28\) # (GND)))
-- \LCD_Config_unit|I2C_unit|clock_div_count[10]~30\ = CARRY((!\LCD_Config_unit|I2C_unit|clock_div_count[9]~28\) # (!\LCD_Config_unit|I2C_unit|clock_div_count\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_unit|clock_div_count\(10),
	datad => VCC,
	cin => \LCD_Config_unit|I2C_unit|clock_div_count[9]~28\,
	combout => \LCD_Config_unit|I2C_unit|clock_div_count[10]~29_combout\,
	cout => \LCD_Config_unit|I2C_unit|clock_div_count[10]~30\);

-- Location: LCCOMB_X61_Y20_N18
\LCD_Config_unit|I2C_unit|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_unit|Add1~0_combout\ = \LCD_Config_unit|I2C_unit|state_counter\(0) $ (VCC)
-- \LCD_Config_unit|I2C_unit|Add1~1\ = CARRY(\LCD_Config_unit|I2C_unit|state_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD_Config_unit|I2C_unit|state_counter\(0),
	datad => VCC,
	combout => \LCD_Config_unit|I2C_unit|Add1~0_combout\,
	cout => \LCD_Config_unit|I2C_unit|Add1~1\);

-- Location: LCCOMB_X61_Y20_N20
\LCD_Config_unit|I2C_unit|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_unit|Add1~2_combout\ = (\LCD_Config_unit|I2C_unit|state_counter\(1) & (!\LCD_Config_unit|I2C_unit|Add1~1\)) # (!\LCD_Config_unit|I2C_unit|state_counter\(1) & ((\LCD_Config_unit|I2C_unit|Add1~1\) # (GND)))
-- \LCD_Config_unit|I2C_unit|Add1~3\ = CARRY((!\LCD_Config_unit|I2C_unit|Add1~1\) # (!\LCD_Config_unit|I2C_unit|state_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_unit|state_counter\(1),
	datad => VCC,
	cin => \LCD_Config_unit|I2C_unit|Add1~1\,
	combout => \LCD_Config_unit|I2C_unit|Add1~2_combout\,
	cout => \LCD_Config_unit|I2C_unit|Add1~3\);

-- Location: LCCOMB_X61_Y20_N22
\LCD_Config_unit|I2C_unit|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_unit|Add1~4_combout\ = (\LCD_Config_unit|I2C_unit|state_counter\(2) & (\LCD_Config_unit|I2C_unit|Add1~3\ $ (GND))) # (!\LCD_Config_unit|I2C_unit|state_counter\(2) & (!\LCD_Config_unit|I2C_unit|Add1~3\ & VCC))
-- \LCD_Config_unit|I2C_unit|Add1~5\ = CARRY((\LCD_Config_unit|I2C_unit|state_counter\(2) & !\LCD_Config_unit|I2C_unit|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_unit|state_counter\(2),
	datad => VCC,
	cin => \LCD_Config_unit|I2C_unit|Add1~3\,
	combout => \LCD_Config_unit|I2C_unit|Add1~4_combout\,
	cout => \LCD_Config_unit|I2C_unit|Add1~5\);

-- Location: LCCOMB_X61_Y20_N24
\LCD_Config_unit|I2C_unit|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_unit|Add1~6_combout\ = (\LCD_Config_unit|I2C_unit|state_counter\(3) & (!\LCD_Config_unit|I2C_unit|Add1~5\)) # (!\LCD_Config_unit|I2C_unit|state_counter\(3) & ((\LCD_Config_unit|I2C_unit|Add1~5\) # (GND)))
-- \LCD_Config_unit|I2C_unit|Add1~7\ = CARRY((!\LCD_Config_unit|I2C_unit|Add1~5\) # (!\LCD_Config_unit|I2C_unit|state_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_unit|state_counter\(3),
	datad => VCC,
	cin => \LCD_Config_unit|I2C_unit|Add1~5\,
	combout => \LCD_Config_unit|I2C_unit|Add1~6_combout\,
	cout => \LCD_Config_unit|I2C_unit|Add1~7\);

-- Location: LCCOMB_X61_Y20_N26
\LCD_Config_unit|I2C_unit|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_unit|Add1~8_combout\ = \LCD_Config_unit|I2C_unit|state_counter\(4) $ (!\LCD_Config_unit|I2C_unit|Add1~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_Config_unit|I2C_unit|state_counter\(4),
	cin => \LCD_Config_unit|I2C_unit|Add1~7\,
	combout => \LCD_Config_unit|I2C_unit|Add1~8_combout\);

-- Location: LCCOMB_X59_Y20_N16
\LCD_Config_unit|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|Add0~2_combout\ = (\LCD_Config_unit|I2C_state\(1) & (!\LCD_Config_unit|Add0~1\)) # (!\LCD_Config_unit|I2C_state\(1) & ((\LCD_Config_unit|Add0~1\) # (GND)))
-- \LCD_Config_unit|Add0~3\ = CARRY((!\LCD_Config_unit|Add0~1\) # (!\LCD_Config_unit|I2C_state\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_state\(1),
	datad => VCC,
	cin => \LCD_Config_unit|Add0~1\,
	combout => \LCD_Config_unit|Add0~2_combout\,
	cout => \LCD_Config_unit|Add0~3\);

-- Location: LCCOMB_X59_Y20_N20
\LCD_Config_unit|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|Add0~6_combout\ = (\LCD_Config_unit|I2C_state\(3) & (!\LCD_Config_unit|Add0~5\)) # (!\LCD_Config_unit|I2C_state\(3) & ((\LCD_Config_unit|Add0~5\) # (GND)))
-- \LCD_Config_unit|Add0~7\ = CARRY((!\LCD_Config_unit|Add0~5\) # (!\LCD_Config_unit|I2C_state\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_Config_unit|I2C_state\(3),
	datad => VCC,
	cin => \LCD_Config_unit|Add0~5\,
	combout => \LCD_Config_unit|Add0~6_combout\,
	cout => \LCD_Config_unit|Add0~7\);

-- Location: LCFF_X36_Y15_N11
\TP_position[2][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \TP_position[2][0]~feeder_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \Touch_Panel_unit|Coord_En~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TP_position[2][0]~regout\);

-- Location: LCFF_X31_Y17_N29
\TP_position[4][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \TP_position[4][1]~feeder_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \Touch_Panel_unit|Coord_En~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TP_position[4][1]~regout\);

-- Location: LCFF_X31_Y17_N9
\TP_position[6][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \TP_position[6][0]~feeder_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \Touch_Panel_unit|Coord_En~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TP_position[6][0]~regout\);

-- Location: LCCOMB_X35_Y15_N24
\TP_position[0][0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \TP_position[0][0]~1_combout\ = (\Touch_Panel_unit|Y_Coord\(11) & ((\Touch_Panel_unit|Y_Coord\(5)) # (\Touch_Panel_unit|Y_Coord\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Touch_Panel_unit|Y_Coord\(5),
	datac => \Touch_Panel_unit|Y_Coord\(11),
	datad => \Touch_Panel_unit|Y_Coord\(6),
	combout => \TP_position[0][0]~1_combout\);

-- Location: LCCOMB_X35_Y15_N6
\TP_position[0][1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \TP_position[0][1]~4_combout\ = (\TP_position[0][1]~0_combout\ & (\Touch_Panel_unit|Y_Coord\(6) & ((\Touch_Panel_unit|Y_Coord\(4)) # (\Touch_Panel_unit|Y_Coord\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|Y_Coord\(4),
	datab => \Touch_Panel_unit|Y_Coord\(5),
	datac => \TP_position[0][1]~0_combout\,
	datad => \Touch_Panel_unit|Y_Coord\(6),
	combout => \TP_position[0][1]~4_combout\);

-- Location: LCFF_X32_Y17_N31
\Touch_Panel_unit|X_Coord[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Touch_Panel_unit|X_Coord[1]~feeder_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \Touch_Panel_unit|X_Coord[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Touch_Panel_unit|X_Coord\(1));

-- Location: LCCOMB_X33_Y18_N10
\Touch_Panel_unit|TP_data_reg[11]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_data_reg[11]~9_combout\ = (\Touch_Panel_unit|TP_data_count[3]~3_combout\ & (((!\Touch_Panel_unit|TP_SCLK_O~regout\)))) # (!\Touch_Panel_unit|TP_data_count[3]~3_combout\ & ((\GPIO_0[2]~2\) # ((\Touch_Panel_unit|TP_MOSI_O~3_combout\ & 
-- \Touch_Panel_unit|TP_SCLK_O~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GPIO_0[2]~2\,
	datab => \Touch_Panel_unit|TP_MOSI_O~3_combout\,
	datac => \Touch_Panel_unit|TP_SCLK_O~regout\,
	datad => \Touch_Panel_unit|TP_data_count[3]~3_combout\,
	combout => \Touch_Panel_unit|TP_data_reg[11]~9_combout\);

-- Location: LCFF_X38_Y17_N25
\Touch_Panel_unit|SPI_Clock_counter[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Touch_Panel_unit|SPI_Clock_counter~0_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Touch_Panel_unit|SPI_Clock_counter\(9));

-- Location: LCFF_X38_Y17_N13
\Touch_Panel_unit|SPI_Clock_counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Touch_Panel_unit|Add0~12_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Touch_Panel_unit|SPI_Clock_counter\(6));

-- Location: LCFF_X38_Y17_N7
\Touch_Panel_unit|SPI_Clock_counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Touch_Panel_unit|Add0~6_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Touch_Panel_unit|SPI_Clock_counter\(3));

-- Location: LCCOMB_X35_Y18_N12
\Touch_Panel_unit|TP_data_count[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_data_count[3]~6_combout\ = (!\Touch_Panel_unit|TP_state.S_TP_ZF_Y~regout\ & (!\Touch_Panel_unit|TP_state.S_TP_SEND_X~regout\ & (!\Touch_Panel_unit|TP_state.S_TP_SEND_Y~regout\ & !\Touch_Panel_unit|TP_state.S_TP_ZF_X~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_state.S_TP_ZF_Y~regout\,
	datab => \Touch_Panel_unit|TP_state.S_TP_SEND_X~regout\,
	datac => \Touch_Panel_unit|TP_state.S_TP_SEND_Y~regout\,
	datad => \Touch_Panel_unit|TP_state.S_TP_ZF_X~regout\,
	combout => \Touch_Panel_unit|TP_data_count[3]~6_combout\);

-- Location: LCCOMB_X34_Y17_N6
\Touch_Panel_unit|Selector23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|Selector23~0_combout\ = (!\Touch_Panel_unit|TP_state.S_TP_SYNC_1K~regout\ & ((\Touch_Panel_unit|TP_data_reg[11]~13_combout\ & ((\Touch_Panel_unit|Add3~8_combout\))) # (!\Touch_Panel_unit|TP_data_reg[11]~13_combout\ & 
-- (\Touch_Panel_unit|TP_data_reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_state.S_TP_SYNC_1K~regout\,
	datab => \Touch_Panel_unit|TP_data_reg\(3),
	datac => \Touch_Panel_unit|TP_data_reg[11]~13_combout\,
	datad => \Touch_Panel_unit|Add3~8_combout\,
	combout => \Touch_Panel_unit|Selector23~0_combout\);

-- Location: LCCOMB_X36_Y16_N24
\Touch_Panel_unit|TP_state~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_state~66_combout\ = (!\Touch_Panel_unit|TP_busy_timeout[0]~8_combout\ & (((\Touch_Panel_unit|TP_state.S_TP_DEBOUNCE~regout\) # (!\Touch_Panel_unit|TP_busy_timeout\(4))) # (!\Touch_Panel_unit|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|Equal3~0_combout\,
	datab => \Touch_Panel_unit|TP_busy_timeout\(4),
	datac => \Touch_Panel_unit|TP_state.S_TP_DEBOUNCE~regout\,
	datad => \Touch_Panel_unit|TP_busy_timeout[0]~8_combout\,
	combout => \Touch_Panel_unit|TP_state~66_combout\);

-- Location: LCCOMB_X33_Y16_N22
\Touch_Panel_unit|TP_state~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_state~70_combout\ = (\Touch_Panel_unit|TP_state.S_TP_ENABLE~regout\ & ((\Touch_Panel_unit|Enable_reg\(1)) # (!\Touch_Panel_unit|Enable_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Touch_Panel_unit|TP_state.S_TP_ENABLE~regout\,
	datac => \Touch_Panel_unit|Enable_reg\(0),
	datad => \Touch_Panel_unit|Enable_reg\(1),
	combout => \Touch_Panel_unit|TP_state~70_combout\);

-- Location: LCCOMB_X34_Y17_N10
\Touch_Panel_unit|Selector24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|Selector24~0_combout\ = (!\Touch_Panel_unit|TP_state.S_TP_SYNC_1K~regout\ & ((\Touch_Panel_unit|TP_data_reg[11]~13_combout\ & ((\Touch_Panel_unit|Add3~6_combout\))) # (!\Touch_Panel_unit|TP_data_reg[11]~13_combout\ & 
-- (\Touch_Panel_unit|TP_data_reg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_state.S_TP_SYNC_1K~regout\,
	datab => \Touch_Panel_unit|TP_data_reg\(2),
	datac => \Touch_Panel_unit|TP_data_reg[11]~13_combout\,
	datad => \Touch_Panel_unit|Add3~6_combout\,
	combout => \Touch_Panel_unit|Selector24~0_combout\);

-- Location: LCCOMB_X34_Y17_N30
\Touch_Panel_unit|Selector26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|Selector26~0_combout\ = (!\Touch_Panel_unit|TP_state.S_TP_SYNC_1K~regout\ & ((\Touch_Panel_unit|TP_data_reg[11]~13_combout\ & ((\Touch_Panel_unit|Add3~2_combout\))) # (!\Touch_Panel_unit|TP_data_reg[11]~13_combout\ & 
-- (\Touch_Panel_unit|TP_data_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_state.S_TP_SYNC_1K~regout\,
	datab => \Touch_Panel_unit|TP_data_reg\(0),
	datac => \Touch_Panel_unit|TP_data_reg[11]~13_combout\,
	datad => \Touch_Panel_unit|Add3~2_combout\,
	combout => \Touch_Panel_unit|Selector26~0_combout\);

-- Location: LCCOMB_X60_Y21_N10
\Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (!\LCD_TPn_sel~regout\ & ((\LCD_Config_unit|Done~regout\) # (\LCD_config_start~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD_Config_unit|Done~regout\,
	datac => \LCD_config_start~regout\,
	datad => \LCD_TPn_sel~regout\,
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X62_Y21_N26
\LCD_Data_unit|Equal8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|Equal8~0_combout\ = (!\LCD_Data_unit|Add0~8_combout\ & (\LCD_Data_unit|Add0~0_combout\ & (!\LCD_Data_unit|Add0~6_combout\ & !\LCD_Data_unit|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Data_unit|Add0~8_combout\,
	datab => \LCD_Data_unit|Add0~0_combout\,
	datac => \LCD_Data_unit|Add0~6_combout\,
	datad => \LCD_Data_unit|Add0~4_combout\,
	combout => \LCD_Data_unit|Equal8~0_combout\);

-- Location: LCCOMB_X63_Y21_N30
\LCD_Data_unit|Equal8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|Equal8~1_combout\ = (\LCD_Data_unit|oCoord_X\(2) & (\LCD_Data_unit|oCoord_X\(0) & (\LCD_Data_unit|Add0~2_combout\ & \LCD_Data_unit|oCoord_X\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Data_unit|oCoord_X\(2),
	datab => \LCD_Data_unit|oCoord_X\(0),
	datac => \LCD_Data_unit|Add0~2_combout\,
	datad => \LCD_Data_unit|oCoord_X\(1),
	combout => \LCD_Data_unit|Equal8~1_combout\);

-- Location: LCCOMB_X62_Y21_N16
\LCD_Data_unit|Equal8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|Equal8~2_combout\ = (\LCD_Data_unit|Add0~10_combout\ & (\LCD_Data_unit|Equal8~0_combout\ & (\LCD_Data_unit|Add0~12_combout\ & \LCD_Data_unit|Equal8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Data_unit|Add0~10_combout\,
	datab => \LCD_Data_unit|Equal8~0_combout\,
	datac => \LCD_Data_unit|Add0~12_combout\,
	datad => \LCD_Data_unit|Equal8~1_combout\,
	combout => \LCD_Data_unit|Equal8~2_combout\);

-- Location: LCFF_X62_Y21_N9
\Colourbar_Green[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Data_unit|Add0~6_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Colourbar_Green(7));

-- Location: LCFF_X57_Y20_N11
\LCD_Config_unit|I2C_data[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|Lookup_data~1_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \LCD_Config_unit|I2C_data[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_data\(15));

-- Location: LCCOMB_X60_Y20_N4
\LCD_Config_unit|I2C_unit|sdat_en~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_unit|sdat_en~1_combout\ = (!\LCD_Config_unit|I2C_unit|state_counter\(4) & (\LCD_Config_unit|I2C_unit|state_counter\(3) & (!\LCD_Config_unit|I2C_unit|state_counter\(2) & \LCD_Config_unit|I2C_unit|state_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_unit|state_counter\(4),
	datab => \LCD_Config_unit|I2C_unit|state_counter\(3),
	datac => \LCD_Config_unit|I2C_unit|state_counter\(2),
	datad => \LCD_Config_unit|I2C_unit|state_counter\(1),
	combout => \LCD_Config_unit|I2C_unit|sdat_en~1_combout\);

-- Location: LCCOMB_X38_Y17_N24
\Touch_Panel_unit|SPI_Clock_counter~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|SPI_Clock_counter~0_combout\ = (\Touch_Panel_unit|Add0~18_combout\ & (((!\Touch_Panel_unit|Equal0~0_combout\) # (!\Touch_Panel_unit|Equal0~1_combout\)) # (!\Touch_Panel_unit|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|Equal0~2_combout\,
	datab => \Touch_Panel_unit|Equal0~1_combout\,
	datac => \Touch_Panel_unit|Equal0~0_combout\,
	datad => \Touch_Panel_unit|Add0~18_combout\,
	combout => \Touch_Panel_unit|SPI_Clock_counter~0_combout\);

-- Location: LCCOMB_X59_Y20_N8
\LCD_Config_unit|always1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|always1~1_combout\ = (\LCD_Config_unit|I2C_state\(1)) # ((\LCD_Config_unit|I2C_state\(3)) # ((\LCD_Config_unit|I2C_state\(0)) # (!\LCD_Config_unit|I2C_state\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_state\(1),
	datab => \LCD_Config_unit|I2C_state\(3),
	datac => \LCD_Config_unit|I2C_state\(0),
	datad => \LCD_Config_unit|I2C_state\(4),
	combout => \LCD_Config_unit|always1~1_combout\);

-- Location: LCCOMB_X61_Y21_N24
\LCD_Data_unit|H_den~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|H_den~1_combout\ = (\LCD_Data_unit|H_Count\(6) & (\LCD_Data_unit|LTM_NCLK~regout\ & (\LCD_Data_unit|H_Count\(7) & !\LCD_Data_unit|H_Count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Data_unit|H_Count\(6),
	datab => \LCD_Data_unit|LTM_NCLK~regout\,
	datac => \LCD_Data_unit|H_Count\(7),
	datad => \LCD_Data_unit|H_Count\(3),
	combout => \LCD_Data_unit|H_den~1_combout\);

-- Location: LCCOMB_X60_Y21_N20
\LCD_Data_unit|H_den~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|H_den~2_combout\ = (!\LCD_Data_unit|H_Count\(10) & (\LCD_Data_unit|H_den~1_combout\ & \LCD_Data_unit|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD_Data_unit|H_Count\(10),
	datac => \LCD_Data_unit|H_den~1_combout\,
	datad => \LCD_Data_unit|Equal0~0_combout\,
	combout => \LCD_Data_unit|H_den~2_combout\);

-- Location: LCCOMB_X58_Y20_N12
\LCD_Config_unit|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|WideOr4~0_combout\ = (!\LCD_Config_unit|I2C_state\(3) & (\LCD_Config_unit|I2C_state\(4) & (!\LCD_Config_unit|I2C_state\(1) & !\LCD_Config_unit|I2C_state\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_state\(3),
	datab => \LCD_Config_unit|I2C_state\(4),
	datac => \LCD_Config_unit|I2C_state\(1),
	datad => \LCD_Config_unit|I2C_state\(2),
	combout => \LCD_Config_unit|WideOr4~0_combout\);

-- Location: LCCOMB_X57_Y20_N10
\LCD_Config_unit|Lookup_data~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|Lookup_data~1_combout\ = (\LCD_Config_unit|I2C_state\(0) & (\LCD_Config_unit|Lookup_data~0_combout\ & ((!\LCD_Config_unit|I2C_state\(4))))) # (!\LCD_Config_unit|I2C_state\(0) & ((\LCD_Config_unit|WideOr4~0_combout\) # 
-- ((\LCD_Config_unit|Lookup_data~0_combout\ & !\LCD_Config_unit|I2C_state\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_state\(0),
	datab => \LCD_Config_unit|Lookup_data~0_combout\,
	datac => \LCD_Config_unit|WideOr4~0_combout\,
	datad => \LCD_Config_unit|I2C_state\(4),
	combout => \LCD_Config_unit|Lookup_data~1_combout\);

-- Location: LCCOMB_X60_Y20_N14
\LCD_Config_unit|I2C_start~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_start~0_combout\ = (\LCD_config_start~regout\) # (\LCD_Config_unit|I2C_start~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LCD_config_start~regout\,
	datad => \LCD_Config_unit|I2C_start~regout\,
	combout => \LCD_Config_unit|I2C_start~0_combout\);

-- Location: LCCOMB_X59_Y20_N2
\LCD_Config_unit|I2C_data~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_data~2_combout\ = (\LCD_Config_unit|Equal0~1_combout\ & ((\LCD_config_start~regout\))) # (!\LCD_Config_unit|Equal0~1_combout\ & (\LCD_Config_unit|I2C_data~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|Equal0~1_combout\,
	datac => \LCD_Config_unit|I2C_data~0_combout\,
	datad => \LCD_config_start~regout\,
	combout => \LCD_Config_unit|I2C_data~2_combout\);

-- Location: LCFF_X57_Y20_N7
\LCD_Config_unit|I2C_unit|sdat[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|I2C_unit|sdat~9_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \LCD_Config_unit|I2C_unit|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_unit|sdat\(6));

-- Location: LCFF_X58_Y20_N9
\LCD_Config_unit|I2C_data[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|Mux1~1_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \LCD_Config_unit|I2C_data[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_data\(6));

-- Location: LCFF_X57_Y20_N17
\LCD_Config_unit|I2C_unit|sdat[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|I2C_unit|sdat~10_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \LCD_Config_unit|I2C_unit|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_unit|sdat\(5));

-- Location: LCCOMB_X57_Y20_N6
\LCD_Config_unit|I2C_unit|sdat~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_unit|sdat~9_combout\ = (\LCD_Config_unit|I2C_unit|Equal3~0_combout\ & (!\LCD_Config_unit|I2C_data\(6))) # (!\LCD_Config_unit|I2C_unit|Equal3~0_combout\ & ((\LCD_Config_unit|I2C_unit|sdat\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD_Config_unit|I2C_data\(6),
	datac => \LCD_Config_unit|I2C_unit|sdat\(5),
	datad => \LCD_Config_unit|I2C_unit|Equal3~0_combout\,
	combout => \LCD_Config_unit|I2C_unit|sdat~9_combout\);

-- Location: LCCOMB_X58_Y20_N10
\LCD_Config_unit|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|Mux1~0_combout\ = (\LCD_Config_unit|I2C_state\(1) & (((\LCD_Config_unit|I2C_state\(2)) # (!\LCD_Config_unit|I2C_state\(0))) # (!\LCD_Config_unit|I2C_state\(3)))) # (!\LCD_Config_unit|I2C_state\(1) & ((\LCD_Config_unit|I2C_state\(2) $ 
-- (\LCD_Config_unit|I2C_state\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_state\(3),
	datab => \LCD_Config_unit|I2C_state\(2),
	datac => \LCD_Config_unit|I2C_state\(1),
	datad => \LCD_Config_unit|I2C_state\(0),
	combout => \LCD_Config_unit|Mux1~0_combout\);

-- Location: LCCOMB_X58_Y20_N8
\LCD_Config_unit|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|Mux1~1_combout\ = (\LCD_Config_unit|WideOr4~0_combout\) # ((\LCD_Config_unit|Mux1~0_combout\ & !\LCD_Config_unit|I2C_state\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|Mux1~0_combout\,
	datab => \LCD_Config_unit|I2C_state\(4),
	datad => \LCD_Config_unit|WideOr4~0_combout\,
	combout => \LCD_Config_unit|Mux1~1_combout\);

-- Location: LCFF_X58_Y20_N17
\LCD_Config_unit|I2C_data[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|Mux2~1_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \LCD_Config_unit|I2C_data[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_data\(5));

-- Location: LCFF_X57_Y20_N3
\LCD_Config_unit|I2C_unit|sdat[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|I2C_unit|sdat~11_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \LCD_Config_unit|I2C_unit|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_unit|sdat\(4));

-- Location: LCCOMB_X57_Y20_N16
\LCD_Config_unit|I2C_unit|sdat~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_unit|sdat~10_combout\ = (\LCD_Config_unit|I2C_unit|Equal3~0_combout\ & ((!\LCD_Config_unit|I2C_data\(5)))) # (!\LCD_Config_unit|I2C_unit|Equal3~0_combout\ & (\LCD_Config_unit|I2C_unit|sdat\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD_Config_unit|I2C_unit|sdat\(4),
	datac => \LCD_Config_unit|I2C_data\(5),
	datad => \LCD_Config_unit|I2C_unit|Equal3~0_combout\,
	combout => \LCD_Config_unit|I2C_unit|sdat~10_combout\);

-- Location: LCCOMB_X58_Y20_N2
\LCD_Config_unit|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|Mux2~0_combout\ = (\LCD_Config_unit|I2C_state\(2) & ((\LCD_Config_unit|I2C_state\(3)) # (\LCD_Config_unit|I2C_state\(1) $ (\LCD_Config_unit|I2C_state\(0))))) # (!\LCD_Config_unit|I2C_state\(2) & ((\LCD_Config_unit|I2C_state\(1) & 
-- (!\LCD_Config_unit|I2C_state\(3))) # (!\LCD_Config_unit|I2C_state\(1) & ((\LCD_Config_unit|I2C_state\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_state\(3),
	datab => \LCD_Config_unit|I2C_state\(2),
	datac => \LCD_Config_unit|I2C_state\(1),
	datad => \LCD_Config_unit|I2C_state\(0),
	combout => \LCD_Config_unit|Mux2~0_combout\);

-- Location: LCCOMB_X58_Y20_N16
\LCD_Config_unit|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|Mux2~1_combout\ = (\LCD_Config_unit|WideOr4~0_combout\ & (((\LCD_Config_unit|Mux2~0_combout\ & !\LCD_Config_unit|I2C_state\(4))) # (!\LCD_Config_unit|I2C_state\(0)))) # (!\LCD_Config_unit|WideOr4~0_combout\ & 
-- (\LCD_Config_unit|Mux2~0_combout\ & ((!\LCD_Config_unit|I2C_state\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|WideOr4~0_combout\,
	datab => \LCD_Config_unit|Mux2~0_combout\,
	datac => \LCD_Config_unit|I2C_state\(0),
	datad => \LCD_Config_unit|I2C_state\(4),
	combout => \LCD_Config_unit|Mux2~1_combout\);

-- Location: LCFF_X56_Y20_N31
\LCD_Config_unit|I2C_data[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|Mux3~1_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \LCD_Config_unit|I2C_data[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_data\(4));

-- Location: LCFF_X57_Y20_N9
\LCD_Config_unit|I2C_unit|sdat[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|I2C_unit|sdat~12_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \LCD_Config_unit|I2C_unit|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_unit|sdat\(3));

-- Location: LCCOMB_X57_Y20_N2
\LCD_Config_unit|I2C_unit|sdat~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_unit|sdat~11_combout\ = (\LCD_Config_unit|I2C_unit|Equal3~0_combout\ & (!\LCD_Config_unit|I2C_data\(4))) # (!\LCD_Config_unit|I2C_unit|Equal3~0_combout\ & ((\LCD_Config_unit|I2C_unit|sdat\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_data\(4),
	datac => \LCD_Config_unit|I2C_unit|sdat\(3),
	datad => \LCD_Config_unit|I2C_unit|Equal3~0_combout\,
	combout => \LCD_Config_unit|I2C_unit|sdat~11_combout\);

-- Location: LCFF_X58_Y20_N29
\LCD_Config_unit|I2C_data[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|Mux4~1_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \LCD_Config_unit|I2C_data[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_data\(3));

-- Location: LCFF_X57_Y20_N15
\LCD_Config_unit|I2C_unit|sdat[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|I2C_unit|sdat~13_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \LCD_Config_unit|I2C_unit|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_unit|sdat\(2));

-- Location: LCCOMB_X57_Y20_N8
\LCD_Config_unit|I2C_unit|sdat~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_unit|sdat~12_combout\ = (\LCD_Config_unit|I2C_unit|Equal3~0_combout\ & (!\LCD_Config_unit|I2C_data\(3))) # (!\LCD_Config_unit|I2C_unit|Equal3~0_combout\ & ((\LCD_Config_unit|I2C_unit|sdat\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD_Config_unit|I2C_data\(3),
	datac => \LCD_Config_unit|I2C_unit|sdat\(2),
	datad => \LCD_Config_unit|I2C_unit|Equal3~0_combout\,
	combout => \LCD_Config_unit|I2C_unit|sdat~12_combout\);

-- Location: LCCOMB_X58_Y20_N22
\LCD_Config_unit|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|Mux4~0_combout\ = \LCD_Config_unit|I2C_state\(3) $ (((\LCD_Config_unit|I2C_state\(2) & (\LCD_Config_unit|I2C_state\(1) $ (!\LCD_Config_unit|I2C_state\(0)))) # (!\LCD_Config_unit|I2C_state\(2) & ((\LCD_Config_unit|I2C_state\(1)) # 
-- (\LCD_Config_unit|I2C_state\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_state\(3),
	datab => \LCD_Config_unit|I2C_state\(2),
	datac => \LCD_Config_unit|I2C_state\(1),
	datad => \LCD_Config_unit|I2C_state\(0),
	combout => \LCD_Config_unit|Mux4~0_combout\);

-- Location: LCCOMB_X58_Y20_N28
\LCD_Config_unit|Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|Mux4~1_combout\ = (\LCD_Config_unit|WideOr4~0_combout\ & ((\LCD_Config_unit|I2C_state\(0)) # ((\LCD_Config_unit|Mux4~0_combout\ & !\LCD_Config_unit|I2C_state\(4))))) # (!\LCD_Config_unit|WideOr4~0_combout\ & 
-- (\LCD_Config_unit|Mux4~0_combout\ & ((!\LCD_Config_unit|I2C_state\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|WideOr4~0_combout\,
	datab => \LCD_Config_unit|Mux4~0_combout\,
	datac => \LCD_Config_unit|I2C_state\(0),
	datad => \LCD_Config_unit|I2C_state\(4),
	combout => \LCD_Config_unit|Mux4~1_combout\);

-- Location: LCFF_X56_Y20_N1
\LCD_Config_unit|I2C_data[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|Mux5~2_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \LCD_Config_unit|I2C_data[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_data\(2));

-- Location: LCFF_X57_Y20_N5
\LCD_Config_unit|I2C_unit|sdat[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|I2C_unit|sdat~14_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \LCD_Config_unit|I2C_unit|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_unit|sdat\(1));

-- Location: LCCOMB_X57_Y20_N14
\LCD_Config_unit|I2C_unit|sdat~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_unit|sdat~13_combout\ = (\LCD_Config_unit|I2C_unit|Equal3~0_combout\ & ((!\LCD_Config_unit|I2C_data\(2)))) # (!\LCD_Config_unit|I2C_unit|Equal3~0_combout\ & (\LCD_Config_unit|I2C_unit|sdat\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD_Config_unit|I2C_unit|sdat\(1),
	datac => \LCD_Config_unit|I2C_data\(2),
	datad => \LCD_Config_unit|I2C_unit|Equal3~0_combout\,
	combout => \LCD_Config_unit|I2C_unit|sdat~13_combout\);

-- Location: LCCOMB_X56_Y20_N2
\LCD_Config_unit|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|Mux5~0_combout\ = (!\LCD_Config_unit|I2C_state\(3) & (!\LCD_Config_unit|I2C_state\(2) & ((\LCD_Config_unit|I2C_state\(0)) # (\LCD_Config_unit|I2C_state\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_state\(3),
	datab => \LCD_Config_unit|I2C_state\(2),
	datac => \LCD_Config_unit|I2C_state\(0),
	datad => \LCD_Config_unit|I2C_state\(1),
	combout => \LCD_Config_unit|Mux5~0_combout\);

-- Location: LCCOMB_X56_Y20_N20
\LCD_Config_unit|Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|Mux5~1_combout\ = (\LCD_Config_unit|I2C_state\(2) & (\LCD_Config_unit|I2C_state\(1) $ (((!\LCD_Config_unit|I2C_state\(0)) # (!\LCD_Config_unit|I2C_state\(3)))))) # (!\LCD_Config_unit|I2C_state\(2) & ((\LCD_Config_unit|I2C_state\(0)) # 
-- ((\LCD_Config_unit|I2C_state\(3) & \LCD_Config_unit|I2C_state\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001001111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_state\(3),
	datab => \LCD_Config_unit|I2C_state\(2),
	datac => \LCD_Config_unit|I2C_state\(0),
	datad => \LCD_Config_unit|I2C_state\(1),
	combout => \LCD_Config_unit|Mux5~1_combout\);

-- Location: LCCOMB_X56_Y20_N0
\LCD_Config_unit|Mux5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|Mux5~2_combout\ = (\LCD_Config_unit|I2C_state\(4) & (\LCD_Config_unit|Mux5~0_combout\)) # (!\LCD_Config_unit|I2C_state\(4) & ((!\LCD_Config_unit|Mux5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD_Config_unit|Mux5~0_combout\,
	datac => \LCD_Config_unit|Mux5~1_combout\,
	datad => \LCD_Config_unit|I2C_state\(4),
	combout => \LCD_Config_unit|Mux5~2_combout\);

-- Location: LCFF_X56_Y20_N7
\LCD_Config_unit|I2C_data[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|Mux6~1_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \LCD_Config_unit|I2C_data[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_data\(1));

-- Location: LCFF_X57_Y20_N19
\LCD_Config_unit|I2C_unit|sdat[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|I2C_unit|sdat~15_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \LCD_Config_unit|I2C_unit|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_unit|sdat\(0));

-- Location: LCCOMB_X57_Y20_N4
\LCD_Config_unit|I2C_unit|sdat~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_unit|sdat~14_combout\ = (\LCD_Config_unit|I2C_unit|Equal3~0_combout\ & ((!\LCD_Config_unit|I2C_data\(1)))) # (!\LCD_Config_unit|I2C_unit|Equal3~0_combout\ & (\LCD_Config_unit|I2C_unit|sdat\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD_Config_unit|I2C_unit|sdat\(0),
	datac => \LCD_Config_unit|I2C_data\(1),
	datad => \LCD_Config_unit|I2C_unit|Equal3~0_combout\,
	combout => \LCD_Config_unit|I2C_unit|sdat~14_combout\);

-- Location: LCFF_X58_Y20_N1
\LCD_Config_unit|I2C_data[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|Mux7~1_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \LCD_Config_unit|I2C_data[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_data\(0));

-- Location: LCCOMB_X57_Y20_N18
\LCD_Config_unit|I2C_unit|sdat~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_unit|sdat~15_combout\ = (!\LCD_Config_unit|I2C_unit|state_counter\(4) & (!\LCD_Config_unit|I2C_data\(0) & (\LCD_Config_unit|I2C_unit|Equal0~0_combout\ & \LCD_Config_unit|I2C_unit|state_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_unit|state_counter\(4),
	datab => \LCD_Config_unit|I2C_data\(0),
	datac => \LCD_Config_unit|I2C_unit|Equal0~0_combout\,
	datad => \LCD_Config_unit|I2C_unit|state_counter\(1),
	combout => \LCD_Config_unit|I2C_unit|sdat~15_combout\);

-- Location: LCCOMB_X33_Y16_N10
\Touch_Panel_unit|TP_state~114\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_state~114_combout\ = (!\Touch_Panel_unit|TP_state.S_TP_ENABLE~regout\ & (\Touch_Panel_unit|TP_state.S_TP_SEND_X~regout\ & \Touch_Panel_unit|TP_state.S_TP_IDLE~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Touch_Panel_unit|TP_state.S_TP_ENABLE~regout\,
	datac => \Touch_Panel_unit|TP_state.S_TP_SEND_X~regout\,
	datad => \Touch_Panel_unit|TP_state.S_TP_IDLE~regout\,
	combout => \Touch_Panel_unit|TP_state~114_combout\);

-- Location: LCCOMB_X58_Y20_N6
\LCD_Config_unit|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|Mux7~0_combout\ = (\LCD_Config_unit|I2C_state\(4) & (!\LCD_Config_unit|I2C_state\(2) & ((\LCD_Config_unit|I2C_state\(0)) # (\LCD_Config_unit|I2C_state\(1))))) # (!\LCD_Config_unit|I2C_state\(4) & (\LCD_Config_unit|I2C_state\(0) $ 
-- (((\LCD_Config_unit|I2C_state\(1)) # (!\LCD_Config_unit|I2C_state\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001011011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_state\(0),
	datab => \LCD_Config_unit|I2C_state\(4),
	datac => \LCD_Config_unit|I2C_state\(1),
	datad => \LCD_Config_unit|I2C_state\(2),
	combout => \LCD_Config_unit|Mux7~0_combout\);

-- Location: LCCOMB_X58_Y20_N0
\LCD_Config_unit|Mux7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|Mux7~1_combout\ = (\LCD_Config_unit|I2C_state\(3) & (((!\LCD_Config_unit|I2C_state\(4) & !\LCD_Config_unit|I2C_state\(2))))) # (!\LCD_Config_unit|I2C_state\(3) & (\LCD_Config_unit|Mux7~0_combout\ & ((!\LCD_Config_unit|I2C_state\(2)) # 
-- (!\LCD_Config_unit|I2C_state\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|Mux7~0_combout\,
	datab => \LCD_Config_unit|I2C_state\(4),
	datac => \LCD_Config_unit|I2C_state\(3),
	datad => \LCD_Config_unit|I2C_state\(2),
	combout => \LCD_Config_unit|Mux7~1_combout\);

-- Location: LCCOMB_X56_Y20_N12
\LCD_Config_unit|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|Mux6~0_combout\ = (\LCD_Config_unit|I2C_state\(3) & (!\LCD_Config_unit|I2C_state\(1) & (\LCD_Config_unit|I2C_state\(2) $ (!\LCD_Config_unit|I2C_state\(0))))) # (!\LCD_Config_unit|I2C_state\(3) & ((\LCD_Config_unit|I2C_state\(0) & 
-- (!\LCD_Config_unit|I2C_state\(2))) # (!\LCD_Config_unit|I2C_state\(0) & ((\LCD_Config_unit|I2C_state\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010110010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_state\(3),
	datab => \LCD_Config_unit|I2C_state\(2),
	datac => \LCD_Config_unit|I2C_state\(0),
	datad => \LCD_Config_unit|I2C_state\(1),
	combout => \LCD_Config_unit|Mux6~0_combout\);

-- Location: LCCOMB_X56_Y20_N6
\LCD_Config_unit|Mux6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|Mux6~1_combout\ = (\LCD_Config_unit|Mux6~0_combout\ & (((!\LCD_Config_unit|I2C_state\(2) & !\LCD_Config_unit|I2C_state\(3))) # (!\LCD_Config_unit|I2C_state\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_state\(4),
	datab => \LCD_Config_unit|I2C_state\(2),
	datac => \LCD_Config_unit|I2C_state\(3),
	datad => \LCD_Config_unit|Mux6~0_combout\,
	combout => \LCD_Config_unit|Mux6~1_combout\);

-- Location: LCCOMB_X56_Y20_N14
\LCD_Config_unit|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|Mux3~0_combout\ = (\LCD_Config_unit|I2C_state\(3) & ((\LCD_Config_unit|I2C_state\(2) & ((\LCD_Config_unit|I2C_state\(1)))) # (!\LCD_Config_unit|I2C_state\(2) & ((\LCD_Config_unit|I2C_state\(0)) # (!\LCD_Config_unit|I2C_state\(1)))))) # 
-- (!\LCD_Config_unit|I2C_state\(3) & (((!\LCD_Config_unit|I2C_state\(0) & \LCD_Config_unit|I2C_state\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_state\(3),
	datab => \LCD_Config_unit|I2C_state\(2),
	datac => \LCD_Config_unit|I2C_state\(0),
	datad => \LCD_Config_unit|I2C_state\(1),
	combout => \LCD_Config_unit|Mux3~0_combout\);

-- Location: LCCOMB_X56_Y20_N30
\LCD_Config_unit|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|Mux3~1_combout\ = (\LCD_Config_unit|Mux3~0_combout\ & (((!\LCD_Config_unit|I2C_state\(4))))) # (!\LCD_Config_unit|Mux3~0_combout\ & (!\LCD_Config_unit|I2C_state\(3) & (!\LCD_Config_unit|I2C_state\(2) & \LCD_Config_unit|I2C_state\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_state\(3),
	datab => \LCD_Config_unit|Mux3~0_combout\,
	datac => \LCD_Config_unit|I2C_state\(2),
	datad => \LCD_Config_unit|I2C_state\(4),
	combout => \LCD_Config_unit|Mux3~1_combout\);

-- Location: LCCOMB_X31_Y17_N8
\TP_position[6][0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \TP_position[6][0]~feeder_combout\ = \Touch_Panel_unit|X_Coord\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Touch_Panel_unit|X_Coord\(8),
	combout => \TP_position[6][0]~feeder_combout\);

-- Location: LCCOMB_X36_Y15_N10
\TP_position[2][0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \TP_position[2][0]~feeder_combout\ = \Touch_Panel_unit|Y_Coord\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Touch_Panel_unit|Y_Coord\(8),
	combout => \TP_position[2][0]~feeder_combout\);

-- Location: LCCOMB_X31_Y17_N28
\TP_position[4][1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \TP_position[4][1]~feeder_combout\ = \Touch_Panel_unit|X_Coord\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Touch_Panel_unit|X_Coord\(1),
	combout => \TP_position[4][1]~feeder_combout\);

-- Location: LCCOMB_X32_Y17_N30
\Touch_Panel_unit|X_Coord[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|X_Coord[1]~feeder_combout\ = \Touch_Panel_unit|TP_data_reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Touch_Panel_unit|TP_data_reg\(1),
	combout => \Touch_Panel_unit|X_Coord[1]~feeder_combout\);

-- Location: PIN_D25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_0(0),
	combout => \GPIO_0[0]~0\);

-- Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_0(1),
	combout => \GPIO_0[1]~1\);

-- Location: PIN_E26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_0(2),
	combout => \GPIO_0[2]~2\);

-- Location: LCCOMB_X38_Y17_N0
\Touch_Panel_unit|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|Add0~0_combout\ = \Touch_Panel_unit|SPI_Clock_counter\(0) $ (VCC)
-- \Touch_Panel_unit|Add0~1\ = CARRY(\Touch_Panel_unit|SPI_Clock_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Touch_Panel_unit|SPI_Clock_counter\(0),
	datad => VCC,
	combout => \Touch_Panel_unit|Add0~0_combout\,
	cout => \Touch_Panel_unit|Add0~1\);

-- Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SWITCH_I[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SWITCH_I(17),
	combout => \SWITCH_I~combout\(17));

-- Location: LCFF_X38_Y17_N1
\Touch_Panel_unit|SPI_Clock_counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Touch_Panel_unit|Add0~0_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Touch_Panel_unit|SPI_Clock_counter\(0));

-- Location: LCCOMB_X38_Y17_N2
\Touch_Panel_unit|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|Add0~2_combout\ = (\Touch_Panel_unit|SPI_Clock_counter\(1) & (!\Touch_Panel_unit|Add0~1\)) # (!\Touch_Panel_unit|SPI_Clock_counter\(1) & ((\Touch_Panel_unit|Add0~1\) # (GND)))
-- \Touch_Panel_unit|Add0~3\ = CARRY((!\Touch_Panel_unit|Add0~1\) # (!\Touch_Panel_unit|SPI_Clock_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Touch_Panel_unit|SPI_Clock_counter\(1),
	datad => VCC,
	cin => \Touch_Panel_unit|Add0~1\,
	combout => \Touch_Panel_unit|Add0~2_combout\,
	cout => \Touch_Panel_unit|Add0~3\);

-- Location: LCFF_X38_Y17_N3
\Touch_Panel_unit|SPI_Clock_counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Touch_Panel_unit|Add0~2_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Touch_Panel_unit|SPI_Clock_counter\(1));

-- Location: LCCOMB_X38_Y17_N4
\Touch_Panel_unit|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|Add0~4_combout\ = (\Touch_Panel_unit|SPI_Clock_counter\(2) & (\Touch_Panel_unit|Add0~3\ $ (GND))) # (!\Touch_Panel_unit|SPI_Clock_counter\(2) & (!\Touch_Panel_unit|Add0~3\ & VCC))
-- \Touch_Panel_unit|Add0~5\ = CARRY((\Touch_Panel_unit|SPI_Clock_counter\(2) & !\Touch_Panel_unit|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Touch_Panel_unit|SPI_Clock_counter\(2),
	datad => VCC,
	cin => \Touch_Panel_unit|Add0~3\,
	combout => \Touch_Panel_unit|Add0~4_combout\,
	cout => \Touch_Panel_unit|Add0~5\);

-- Location: LCFF_X38_Y17_N5
\Touch_Panel_unit|SPI_Clock_counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Touch_Panel_unit|Add0~4_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Touch_Panel_unit|SPI_Clock_counter\(2));

-- Location: LCCOMB_X38_Y17_N8
\Touch_Panel_unit|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|Add0~8_combout\ = (\Touch_Panel_unit|SPI_Clock_counter\(4) & (\Touch_Panel_unit|Add0~7\ $ (GND))) # (!\Touch_Panel_unit|SPI_Clock_counter\(4) & (!\Touch_Panel_unit|Add0~7\ & VCC))
-- \Touch_Panel_unit|Add0~9\ = CARRY((\Touch_Panel_unit|SPI_Clock_counter\(4) & !\Touch_Panel_unit|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Touch_Panel_unit|SPI_Clock_counter\(4),
	datad => VCC,
	cin => \Touch_Panel_unit|Add0~7\,
	combout => \Touch_Panel_unit|Add0~8_combout\,
	cout => \Touch_Panel_unit|Add0~9\);

-- Location: LCFF_X38_Y17_N9
\Touch_Panel_unit|SPI_Clock_counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Touch_Panel_unit|Add0~8_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Touch_Panel_unit|SPI_Clock_counter\(4));

-- Location: LCCOMB_X38_Y17_N10
\Touch_Panel_unit|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|Add0~10_combout\ = (\Touch_Panel_unit|SPI_Clock_counter\(5) & (!\Touch_Panel_unit|Add0~9\)) # (!\Touch_Panel_unit|SPI_Clock_counter\(5) & ((\Touch_Panel_unit|Add0~9\) # (GND)))
-- \Touch_Panel_unit|Add0~11\ = CARRY((!\Touch_Panel_unit|Add0~9\) # (!\Touch_Panel_unit|SPI_Clock_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|SPI_Clock_counter\(5),
	datad => VCC,
	cin => \Touch_Panel_unit|Add0~9\,
	combout => \Touch_Panel_unit|Add0~10_combout\,
	cout => \Touch_Panel_unit|Add0~11\);

-- Location: LCCOMB_X38_Y17_N14
\Touch_Panel_unit|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|Add0~14_combout\ = (\Touch_Panel_unit|SPI_Clock_counter\(7) & (!\Touch_Panel_unit|Add0~13\)) # (!\Touch_Panel_unit|SPI_Clock_counter\(7) & ((\Touch_Panel_unit|Add0~13\) # (GND)))
-- \Touch_Panel_unit|Add0~15\ = CARRY((!\Touch_Panel_unit|Add0~13\) # (!\Touch_Panel_unit|SPI_Clock_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Touch_Panel_unit|SPI_Clock_counter\(7),
	datad => VCC,
	cin => \Touch_Panel_unit|Add0~13\,
	combout => \Touch_Panel_unit|Add0~14_combout\,
	cout => \Touch_Panel_unit|Add0~15\);

-- Location: LCFF_X38_Y17_N15
\Touch_Panel_unit|SPI_Clock_counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Touch_Panel_unit|Add0~14_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Touch_Panel_unit|SPI_Clock_counter\(7));

-- Location: LCFF_X38_Y17_N11
\Touch_Panel_unit|SPI_Clock_counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Touch_Panel_unit|Add0~10_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Touch_Panel_unit|SPI_Clock_counter\(5));

-- Location: LCCOMB_X38_Y17_N28
\Touch_Panel_unit|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|Equal0~1_combout\ = (\Touch_Panel_unit|SPI_Clock_counter\(6) & (\Touch_Panel_unit|SPI_Clock_counter\(7) & (\Touch_Panel_unit|SPI_Clock_counter\(4) & \Touch_Panel_unit|SPI_Clock_counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|SPI_Clock_counter\(6),
	datab => \Touch_Panel_unit|SPI_Clock_counter\(7),
	datac => \Touch_Panel_unit|SPI_Clock_counter\(4),
	datad => \Touch_Panel_unit|SPI_Clock_counter\(5),
	combout => \Touch_Panel_unit|Equal0~1_combout\);

-- Location: LCCOMB_X38_Y17_N16
\Touch_Panel_unit|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|Add0~16_combout\ = (\Touch_Panel_unit|SPI_Clock_counter\(8) & (\Touch_Panel_unit|Add0~15\ $ (GND))) # (!\Touch_Panel_unit|SPI_Clock_counter\(8) & (!\Touch_Panel_unit|Add0~15\ & VCC))
-- \Touch_Panel_unit|Add0~17\ = CARRY((\Touch_Panel_unit|SPI_Clock_counter\(8) & !\Touch_Panel_unit|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|SPI_Clock_counter\(8),
	datad => VCC,
	cin => \Touch_Panel_unit|Add0~15\,
	combout => \Touch_Panel_unit|Add0~16_combout\,
	cout => \Touch_Panel_unit|Add0~17\);

-- Location: LCCOMB_X38_Y17_N20
\Touch_Panel_unit|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|Add0~20_combout\ = (\Touch_Panel_unit|SPI_Clock_counter\(10) & (\Touch_Panel_unit|Add0~19\ $ (GND))) # (!\Touch_Panel_unit|SPI_Clock_counter\(10) & (!\Touch_Panel_unit|Add0~19\ & VCC))
-- \Touch_Panel_unit|Add0~21\ = CARRY((\Touch_Panel_unit|SPI_Clock_counter\(10) & !\Touch_Panel_unit|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|SPI_Clock_counter\(10),
	datad => VCC,
	cin => \Touch_Panel_unit|Add0~19\,
	combout => \Touch_Panel_unit|Add0~20_combout\,
	cout => \Touch_Panel_unit|Add0~21\);

-- Location: LCFF_X38_Y17_N21
\Touch_Panel_unit|SPI_Clock_counter[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Touch_Panel_unit|Add0~20_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Touch_Panel_unit|SPI_Clock_counter\(10));

-- Location: LCFF_X38_Y17_N17
\Touch_Panel_unit|SPI_Clock_counter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Touch_Panel_unit|Add0~16_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Touch_Panel_unit|SPI_Clock_counter\(8));

-- Location: LCCOMB_X38_Y17_N22
\Touch_Panel_unit|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|Add0~22_combout\ = \Touch_Panel_unit|Add0~21\ $ (\Touch_Panel_unit|SPI_Clock_counter\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Touch_Panel_unit|SPI_Clock_counter\(11),
	cin => \Touch_Panel_unit|Add0~21\,
	combout => \Touch_Panel_unit|Add0~22_combout\);

-- Location: LCFF_X38_Y17_N23
\Touch_Panel_unit|SPI_Clock_counter[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Touch_Panel_unit|Add0~22_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Touch_Panel_unit|SPI_Clock_counter\(11));

-- Location: LCCOMB_X38_Y17_N26
\Touch_Panel_unit|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|Equal0~0_combout\ = (!\Touch_Panel_unit|SPI_Clock_counter\(9) & (!\Touch_Panel_unit|SPI_Clock_counter\(10) & (\Touch_Panel_unit|SPI_Clock_counter\(8) & !\Touch_Panel_unit|SPI_Clock_counter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|SPI_Clock_counter\(9),
	datab => \Touch_Panel_unit|SPI_Clock_counter\(10),
	datac => \Touch_Panel_unit|SPI_Clock_counter\(8),
	datad => \Touch_Panel_unit|SPI_Clock_counter\(11),
	combout => \Touch_Panel_unit|Equal0~0_combout\);

-- Location: LCCOMB_X38_Y17_N30
\Touch_Panel_unit|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|Equal0~2_combout\ = (\Touch_Panel_unit|SPI_Clock_counter\(3) & (\Touch_Panel_unit|SPI_Clock_counter\(1) & (\Touch_Panel_unit|SPI_Clock_counter\(2) & \Touch_Panel_unit|SPI_Clock_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|SPI_Clock_counter\(3),
	datab => \Touch_Panel_unit|SPI_Clock_counter\(1),
	datac => \Touch_Panel_unit|SPI_Clock_counter\(2),
	datad => \Touch_Panel_unit|SPI_Clock_counter\(0),
	combout => \Touch_Panel_unit|Equal0~2_combout\);

-- Location: LCCOMB_X37_Y17_N16
\Touch_Panel_unit|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|Equal0~3_combout\ = (\Touch_Panel_unit|Equal0~1_combout\ & (\Touch_Panel_unit|Equal0~0_combout\ & \Touch_Panel_unit|Equal0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Touch_Panel_unit|Equal0~1_combout\,
	datac => \Touch_Panel_unit|Equal0~0_combout\,
	datad => \Touch_Panel_unit|Equal0~2_combout\,
	combout => \Touch_Panel_unit|Equal0~3_combout\);

-- Location: LCFF_X34_Y16_N1
\Touch_Panel_unit|En_SPI_Clock\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \Touch_Panel_unit|Equal0~3_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Touch_Panel_unit|En_SPI_Clock~regout\);

-- Location: LCCOMB_X60_Y21_N4
\Touch_Panel_unit|TP_penirq_db[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_penirq_db[0]~0_combout\ = !\GPIO_0[0]~0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GPIO_0[0]~0\,
	combout => \Touch_Panel_unit|TP_penirq_db[0]~0_combout\);

-- Location: LCFF_X60_Y21_N5
\Touch_Panel_unit|TP_penirq_db[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Touch_Panel_unit|TP_penirq_db[0]~0_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Touch_Panel_unit|TP_penirq_db\(0));

-- Location: LCCOMB_X59_Y21_N26
\Touch_Panel_unit|TP_penirq_db[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_penirq_db[1]~feeder_combout\ = \Touch_Panel_unit|TP_penirq_db\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Touch_Panel_unit|TP_penirq_db\(0),
	combout => \Touch_Panel_unit|TP_penirq_db[1]~feeder_combout\);

-- Location: LCFF_X59_Y21_N27
\Touch_Panel_unit|TP_penirq_db[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Touch_Panel_unit|TP_penirq_db[1]~feeder_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Touch_Panel_unit|TP_penirq_db\(1));

-- Location: LCCOMB_X59_Y21_N20
\Touch_Panel_unit|TP_penirq_db[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_penirq_db[2]~feeder_combout\ = \Touch_Panel_unit|TP_penirq_db\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Touch_Panel_unit|TP_penirq_db\(1),
	combout => \Touch_Panel_unit|TP_penirq_db[2]~feeder_combout\);

-- Location: LCFF_X59_Y21_N21
\Touch_Panel_unit|TP_penirq_db[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Touch_Panel_unit|TP_penirq_db[2]~feeder_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Touch_Panel_unit|TP_penirq_db\(2));

-- Location: LCCOMB_X60_Y21_N6
\Touch_Panel_unit|TP_penirq_db[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_penirq_db[3]~feeder_combout\ = \Touch_Panel_unit|TP_penirq_db\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Touch_Panel_unit|TP_penirq_db\(2),
	combout => \Touch_Panel_unit|TP_penirq_db[3]~feeder_combout\);

-- Location: LCFF_X60_Y21_N7
\Touch_Panel_unit|TP_penirq_db[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Touch_Panel_unit|TP_penirq_db[3]~feeder_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Touch_Panel_unit|TP_penirq_db\(3));

-- Location: LCCOMB_X59_Y21_N4
\Touch_Panel_unit|TP_penirq_db[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_penirq_db[4]~feeder_combout\ = \Touch_Panel_unit|TP_penirq_db\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Touch_Panel_unit|TP_penirq_db\(3),
	combout => \Touch_Panel_unit|TP_penirq_db[4]~feeder_combout\);

-- Location: LCFF_X59_Y21_N5
\Touch_Panel_unit|TP_penirq_db[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Touch_Panel_unit|TP_penirq_db[4]~feeder_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Touch_Panel_unit|TP_penirq_db\(4));

-- Location: LCFF_X59_Y21_N7
\Touch_Panel_unit|TP_penirq_db[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \Touch_Panel_unit|TP_penirq_db\(4),
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Touch_Panel_unit|TP_penirq_db\(5));

-- Location: LCCOMB_X59_Y21_N0
\Touch_Panel_unit|TP_penirq_db[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_penirq_db[6]~feeder_combout\ = \Touch_Panel_unit|TP_penirq_db\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Touch_Panel_unit|TP_penirq_db\(5),
	combout => \Touch_Panel_unit|TP_penirq_db[6]~feeder_combout\);

-- Location: LCFF_X59_Y21_N1
\Touch_Panel_unit|TP_penirq_db[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Touch_Panel_unit|TP_penirq_db[6]~feeder_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Touch_Panel_unit|TP_penirq_db\(6));

-- Location: LCCOMB_X59_Y21_N2
\Touch_Panel_unit|TP_penirq_db[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_penirq_db[7]~feeder_combout\ = \Touch_Panel_unit|TP_penirq_db\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Touch_Panel_unit|TP_penirq_db\(6),
	combout => \Touch_Panel_unit|TP_penirq_db[7]~feeder_combout\);

-- Location: LCFF_X59_Y21_N3
\Touch_Panel_unit|TP_penirq_db[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Touch_Panel_unit|TP_penirq_db[7]~feeder_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Touch_Panel_unit|TP_penirq_db\(7));

-- Location: LCCOMB_X59_Y21_N22
\Touch_Panel_unit|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|WideOr0~0_combout\ = (\Touch_Panel_unit|TP_penirq_db\(5)) # ((\Touch_Panel_unit|TP_penirq_db\(7)) # ((\Touch_Panel_unit|TP_penirq_db\(4)) # (\Touch_Panel_unit|TP_penirq_db\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_penirq_db\(5),
	datab => \Touch_Panel_unit|TP_penirq_db\(7),
	datac => \Touch_Panel_unit|TP_penirq_db\(4),
	datad => \Touch_Panel_unit|TP_penirq_db\(6),
	combout => \Touch_Panel_unit|WideOr0~0_combout\);

-- Location: LCCOMB_X59_Y21_N12
\Touch_Panel_unit|WideOr0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|WideOr0~1_combout\ = (\Touch_Panel_unit|TP_penirq_db\(0)) # ((\Touch_Panel_unit|TP_penirq_db\(1)) # ((\Touch_Panel_unit|TP_penirq_db\(2)) # (\Touch_Panel_unit|TP_penirq_db\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_penirq_db\(0),
	datab => \Touch_Panel_unit|TP_penirq_db\(1),
	datac => \Touch_Panel_unit|TP_penirq_db\(2),
	datad => \Touch_Panel_unit|TP_penirq_db\(3),
	combout => \Touch_Panel_unit|WideOr0~1_combout\);

-- Location: LCCOMB_X59_Y21_N18
\Touch_Panel_unit|WideOr0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|WideOr0~combout\ = (\Touch_Panel_unit|WideOr0~0_combout\) # (\Touch_Panel_unit|WideOr0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Touch_Panel_unit|WideOr0~0_combout\,
	datad => \Touch_Panel_unit|WideOr0~1_combout\,
	combout => \Touch_Panel_unit|WideOr0~combout\);

-- Location: LCFF_X59_Y21_N19
\Touch_Panel_unit|TP_penirq1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Touch_Panel_unit|WideOr0~combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Touch_Panel_unit|TP_penirq1~regout\);

-- Location: LCCOMB_X59_Y21_N30
\Touch_Panel_unit|WideAnd0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|WideAnd0~0_combout\ = (\Touch_Panel_unit|TP_penirq_db\(5) & (\Touch_Panel_unit|TP_penirq_db\(7) & (\Touch_Panel_unit|TP_penirq_db\(4) & \Touch_Panel_unit|TP_penirq_db\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_penirq_db\(5),
	datab => \Touch_Panel_unit|TP_penirq_db\(7),
	datac => \Touch_Panel_unit|TP_penirq_db\(4),
	datad => \Touch_Panel_unit|TP_penirq_db\(6),
	combout => \Touch_Panel_unit|WideAnd0~0_combout\);

-- Location: LCCOMB_X59_Y21_N24
\Touch_Panel_unit|WideAnd0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|WideAnd0~1_combout\ = (\Touch_Panel_unit|TP_penirq_db\(0) & (\Touch_Panel_unit|TP_penirq_db\(1) & (\Touch_Panel_unit|TP_penirq_db\(2) & \Touch_Panel_unit|TP_penirq_db\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_penirq_db\(0),
	datab => \Touch_Panel_unit|TP_penirq_db\(1),
	datac => \Touch_Panel_unit|TP_penirq_db\(2),
	datad => \Touch_Panel_unit|TP_penirq_db\(3),
	combout => \Touch_Panel_unit|WideAnd0~1_combout\);

-- Location: LCCOMB_X59_Y21_N16
\Touch_Panel_unit|WideAnd0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|WideAnd0~combout\ = (\Touch_Panel_unit|WideAnd0~0_combout\ & \Touch_Panel_unit|WideAnd0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Touch_Panel_unit|WideAnd0~0_combout\,
	datac => \Touch_Panel_unit|WideAnd0~1_combout\,
	combout => \Touch_Panel_unit|WideAnd0~combout\);

-- Location: LCFF_X59_Y21_N17
\Touch_Panel_unit|TP_penirq0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Touch_Panel_unit|WideAnd0~combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Touch_Panel_unit|TP_penirq0~regout\);

-- Location: LCCOMB_X35_Y16_N0
\Touch_Panel_unit|TP_penirq~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_penirq~0_combout\ = (\Touch_Panel_unit|Touch_En~regout\ & (\Touch_Panel_unit|TP_penirq1~regout\)) # (!\Touch_Panel_unit|Touch_En~regout\ & ((\Touch_Panel_unit|TP_penirq0~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|Touch_En~regout\,
	datac => \Touch_Panel_unit|TP_penirq1~regout\,
	datad => \Touch_Panel_unit|TP_penirq0~regout\,
	combout => \Touch_Panel_unit|TP_penirq~0_combout\);

-- Location: LCFF_X35_Y16_N1
\Touch_Panel_unit|TP_penirq\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Touch_Panel_unit|TP_penirq~0_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Touch_Panel_unit|TP_penirq~regout\);

-- Location: LCCOMB_X60_Y21_N0
\Top_state.010~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Top_state.010~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \Top_state.010~feeder_combout\);

-- Location: LCCOMB_X61_Y20_N14
\LCD_Config_unit|I2C_unit|state_counter[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_unit|state_counter[0]~6_combout\ = (\LCD_Config_unit|I2C_unit|state_counter\(1) & (\LCD_Config_unit|I2C_unit|Add1~0_combout\ & ((!\LCD_Config_unit|I2C_unit|Equal0~0_combout\) # (!\LCD_Config_unit|I2C_unit|state_counter\(4))))) # 
-- (!\LCD_Config_unit|I2C_unit|state_counter\(1) & ((\LCD_Config_unit|I2C_unit|Add1~0_combout\) # ((!\LCD_Config_unit|I2C_unit|state_counter\(4) & \LCD_Config_unit|I2C_unit|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_unit|state_counter\(1),
	datab => \LCD_Config_unit|I2C_unit|Add1~0_combout\,
	datac => \LCD_Config_unit|I2C_unit|state_counter\(4),
	datad => \LCD_Config_unit|I2C_unit|Equal0~0_combout\,
	combout => \LCD_Config_unit|I2C_unit|state_counter[0]~6_combout\);

-- Location: LCCOMB_X55_Y20_N8
\LCD_Config_unit|I2C_unit|clock_div_count[2]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_unit|clock_div_count[2]~13_combout\ = (\LCD_Config_unit|I2C_unit|clock_div_count\(2) & (!\LCD_Config_unit|I2C_unit|clock_div_count[1]~12\)) # (!\LCD_Config_unit|I2C_unit|clock_div_count\(2) & 
-- ((\LCD_Config_unit|I2C_unit|clock_div_count[1]~12\) # (GND)))
-- \LCD_Config_unit|I2C_unit|clock_div_count[2]~14\ = CARRY((!\LCD_Config_unit|I2C_unit|clock_div_count[1]~12\) # (!\LCD_Config_unit|I2C_unit|clock_div_count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_Config_unit|I2C_unit|clock_div_count\(2),
	datad => VCC,
	cin => \LCD_Config_unit|I2C_unit|clock_div_count[1]~12\,
	combout => \LCD_Config_unit|I2C_unit|clock_div_count[2]~13_combout\,
	cout => \LCD_Config_unit|I2C_unit|clock_div_count[2]~14\);

-- Location: LCFF_X55_Y20_N9
\LCD_Config_unit|I2C_unit|clock_div_count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|I2C_unit|clock_div_count[2]~13_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_unit|clock_div_count\(2));

-- Location: LCCOMB_X55_Y20_N14
\LCD_Config_unit|I2C_unit|clock_div_count[5]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_unit|clock_div_count[5]~19_combout\ = (\LCD_Config_unit|I2C_unit|clock_div_count\(5) & (\LCD_Config_unit|I2C_unit|clock_div_count[4]~18\ $ (GND))) # (!\LCD_Config_unit|I2C_unit|clock_div_count\(5) & 
-- (!\LCD_Config_unit|I2C_unit|clock_div_count[4]~18\ & VCC))
-- \LCD_Config_unit|I2C_unit|clock_div_count[5]~20\ = CARRY((\LCD_Config_unit|I2C_unit|clock_div_count\(5) & !\LCD_Config_unit|I2C_unit|clock_div_count[4]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_Config_unit|I2C_unit|clock_div_count\(5),
	datad => VCC,
	cin => \LCD_Config_unit|I2C_unit|clock_div_count[4]~18\,
	combout => \LCD_Config_unit|I2C_unit|clock_div_count[5]~19_combout\,
	cout => \LCD_Config_unit|I2C_unit|clock_div_count[5]~20\);

-- Location: LCFF_X55_Y20_N15
\LCD_Config_unit|I2C_unit|clock_div_count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|I2C_unit|clock_div_count[5]~19_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_unit|clock_div_count\(5));

-- Location: LCCOMB_X55_Y20_N18
\LCD_Config_unit|I2C_unit|clock_div_count[7]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_unit|clock_div_count[7]~23_combout\ = (\LCD_Config_unit|I2C_unit|clock_div_count\(7) & (\LCD_Config_unit|I2C_unit|clock_div_count[6]~22\ $ (GND))) # (!\LCD_Config_unit|I2C_unit|clock_div_count\(7) & 
-- (!\LCD_Config_unit|I2C_unit|clock_div_count[6]~22\ & VCC))
-- \LCD_Config_unit|I2C_unit|clock_div_count[7]~24\ = CARRY((\LCD_Config_unit|I2C_unit|clock_div_count\(7) & !\LCD_Config_unit|I2C_unit|clock_div_count[6]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_Config_unit|I2C_unit|clock_div_count\(7),
	datad => VCC,
	cin => \LCD_Config_unit|I2C_unit|clock_div_count[6]~22\,
	combout => \LCD_Config_unit|I2C_unit|clock_div_count[7]~23_combout\,
	cout => \LCD_Config_unit|I2C_unit|clock_div_count[7]~24\);

-- Location: LCFF_X55_Y20_N19
\LCD_Config_unit|I2C_unit|clock_div_count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|I2C_unit|clock_div_count[7]~23_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_unit|clock_div_count\(7));

-- Location: LCCOMB_X55_Y20_N22
\LCD_Config_unit|I2C_unit|clock_div_count[9]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_unit|clock_div_count[9]~27_combout\ = (\LCD_Config_unit|I2C_unit|clock_div_count\(9) & (\LCD_Config_unit|I2C_unit|clock_div_count[8]~26\ $ (GND))) # (!\LCD_Config_unit|I2C_unit|clock_div_count\(9) & 
-- (!\LCD_Config_unit|I2C_unit|clock_div_count[8]~26\ & VCC))
-- \LCD_Config_unit|I2C_unit|clock_div_count[9]~28\ = CARRY((\LCD_Config_unit|I2C_unit|clock_div_count\(9) & !\LCD_Config_unit|I2C_unit|clock_div_count[8]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_Config_unit|I2C_unit|clock_div_count\(9),
	datad => VCC,
	cin => \LCD_Config_unit|I2C_unit|clock_div_count[8]~26\,
	combout => \LCD_Config_unit|I2C_unit|clock_div_count[9]~27_combout\,
	cout => \LCD_Config_unit|I2C_unit|clock_div_count[9]~28\);

-- Location: LCFF_X55_Y20_N23
\LCD_Config_unit|I2C_unit|clock_div_count[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|I2C_unit|clock_div_count[9]~27_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_unit|clock_div_count\(9));

-- Location: LCCOMB_X55_Y20_N26
\LCD_Config_unit|I2C_unit|clock_div_count[11]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_unit|clock_div_count[11]~31_combout\ = \LCD_Config_unit|I2C_unit|clock_div_count[10]~30\ $ (!\LCD_Config_unit|I2C_unit|clock_div_count\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \LCD_Config_unit|I2C_unit|clock_div_count\(11),
	cin => \LCD_Config_unit|I2C_unit|clock_div_count[10]~30\,
	combout => \LCD_Config_unit|I2C_unit|clock_div_count[11]~31_combout\);

-- Location: LCFF_X55_Y20_N27
\LCD_Config_unit|I2C_unit|clock_div_count[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|I2C_unit|clock_div_count[11]~31_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_unit|clock_div_count\(11));

-- Location: LCFF_X59_Y20_N15
\LCD_Config_unit|I2C_unit|clock_div\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \LCD_Config_unit|I2C_unit|clock_div_count\(11),
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_unit|clock_div~regout\);

-- Location: LCFF_X59_Y20_N17
\LCD_Config_unit|I2C_unit|clock_div_prev\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \LCD_Config_unit|I2C_unit|clock_div~regout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_unit|clock_div_prev~regout\);

-- Location: LCCOMB_X61_Y20_N0
\LCD_Config_unit|I2C_unit|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_unit|Equal0~1_combout\ = (!\LCD_Config_unit|I2C_unit|state_counter\(1) & (!\LCD_Config_unit|I2C_unit|state_counter\(4) & \LCD_Config_unit|I2C_unit|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_unit|state_counter\(1),
	datac => \LCD_Config_unit|I2C_unit|state_counter\(4),
	datad => \LCD_Config_unit|I2C_unit|Equal0~0_combout\,
	combout => \LCD_Config_unit|I2C_unit|Equal0~1_combout\);

-- Location: LCCOMB_X60_Y20_N28
\LCD_Config_unit|I2C_unit|state_counter[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_unit|state_counter[1]~0_combout\ = (\LCD_Config_unit|always1~0_combout\) # ((!\LCD_Config_unit|I2C_unit|Equal0~1_combout\ & ((\LCD_Config_unit|I2C_unit|clock_div_prev~regout\) # (!\LCD_Config_unit|I2C_unit|clock_div~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_unit|clock_div~regout\,
	datab => \LCD_Config_unit|I2C_unit|clock_div_prev~regout\,
	datac => \LCD_Config_unit|I2C_unit|Equal0~1_combout\,
	datad => \LCD_Config_unit|always1~0_combout\,
	combout => \LCD_Config_unit|I2C_unit|state_counter[1]~0_combout\);

-- Location: LCCOMB_X61_Y20_N28
\LCD_Config_unit|I2C_unit|state_counter[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_unit|state_counter[0]~7_combout\ = (\LCD_Config_unit|I2C_unit|state_counter[1]~0_combout\ & ((\LCD_Config_unit|I2C_unit|state_counter\(0)))) # (!\LCD_Config_unit|I2C_unit|state_counter[1]~0_combout\ & 
-- (\LCD_Config_unit|I2C_unit|state_counter[0]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD_Config_unit|I2C_unit|state_counter[0]~6_combout\,
	datac => \LCD_Config_unit|I2C_unit|state_counter\(0),
	datad => \LCD_Config_unit|I2C_unit|state_counter[1]~0_combout\,
	combout => \LCD_Config_unit|I2C_unit|state_counter[0]~7_combout\);

-- Location: LCFF_X61_Y20_N29
\LCD_Config_unit|I2C_unit|state_counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|I2C_unit|state_counter[0]~7_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_unit|state_counter\(0));

-- Location: LCCOMB_X61_Y20_N10
\LCD_Config_unit|I2C_unit|state_counter[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_unit|state_counter[2]~5_combout\ = (\LCD_Config_unit|I2C_unit|Add1~4_combout\ & ((\LCD_Config_unit|I2C_unit|state_counter[1]~1_combout\) # ((\LCD_Config_unit|I2C_unit|state_counter\(2) & 
-- \LCD_Config_unit|I2C_unit|state_counter[1]~0_combout\)))) # (!\LCD_Config_unit|I2C_unit|Add1~4_combout\ & (((\LCD_Config_unit|I2C_unit|state_counter\(2) & \LCD_Config_unit|I2C_unit|state_counter[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_unit|Add1~4_combout\,
	datab => \LCD_Config_unit|I2C_unit|state_counter[1]~1_combout\,
	datac => \LCD_Config_unit|I2C_unit|state_counter\(2),
	datad => \LCD_Config_unit|I2C_unit|state_counter[1]~0_combout\,
	combout => \LCD_Config_unit|I2C_unit|state_counter[2]~5_combout\);

-- Location: LCFF_X61_Y20_N11
\LCD_Config_unit|I2C_unit|state_counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|I2C_unit|state_counter[2]~5_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_unit|state_counter\(2));

-- Location: LCCOMB_X61_Y20_N30
\LCD_Config_unit|I2C_unit|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_unit|Equal0~0_combout\ = (!\LCD_Config_unit|I2C_unit|state_counter\(3) & (!\LCD_Config_unit|I2C_unit|state_counter\(0) & !\LCD_Config_unit|I2C_unit|state_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_unit|state_counter\(3),
	datab => \LCD_Config_unit|I2C_unit|state_counter\(0),
	datad => \LCD_Config_unit|I2C_unit|state_counter\(2),
	combout => \LCD_Config_unit|I2C_unit|Equal0~0_combout\);

-- Location: LCCOMB_X61_Y20_N8
\LCD_Config_unit|I2C_unit|state_counter[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_unit|state_counter[1]~1_combout\ = (!\LCD_Config_unit|I2C_unit|state_counter[1]~0_combout\ & ((\LCD_Config_unit|I2C_unit|state_counter\(1) $ (\LCD_Config_unit|I2C_unit|state_counter\(4))) # 
-- (!\LCD_Config_unit|I2C_unit|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_unit|state_counter\(1),
	datab => \LCD_Config_unit|I2C_unit|Equal0~0_combout\,
	datac => \LCD_Config_unit|I2C_unit|state_counter\(4),
	datad => \LCD_Config_unit|I2C_unit|state_counter[1]~0_combout\,
	combout => \LCD_Config_unit|I2C_unit|state_counter[1]~1_combout\);

-- Location: LCCOMB_X61_Y20_N4
\LCD_Config_unit|I2C_unit|state_counter[4]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_unit|state_counter[4]~2_combout\ = (\LCD_Config_unit|I2C_unit|Add1~8_combout\ & ((\LCD_Config_unit|I2C_unit|state_counter[1]~1_combout\) # ((\LCD_Config_unit|I2C_unit|state_counter\(4) & 
-- \LCD_Config_unit|I2C_unit|state_counter[1]~0_combout\)))) # (!\LCD_Config_unit|I2C_unit|Add1~8_combout\ & (((\LCD_Config_unit|I2C_unit|state_counter\(4) & \LCD_Config_unit|I2C_unit|state_counter[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_unit|Add1~8_combout\,
	datab => \LCD_Config_unit|I2C_unit|state_counter[1]~1_combout\,
	datac => \LCD_Config_unit|I2C_unit|state_counter\(4),
	datad => \LCD_Config_unit|I2C_unit|state_counter[1]~0_combout\,
	combout => \LCD_Config_unit|I2C_unit|state_counter[4]~2_combout\);

-- Location: LCFF_X61_Y20_N5
\LCD_Config_unit|I2C_unit|state_counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|I2C_unit|state_counter[4]~2_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_unit|state_counter\(4));

-- Location: LCCOMB_X61_Y20_N16
\LCD_Config_unit|I2C_start~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_start~1_combout\ = (\LCD_Config_unit|Equal0~1_combout\ & (\LCD_Config_unit|I2C_start~0_combout\)) # (!\LCD_Config_unit|Equal0~1_combout\ & (((\LCD_Config_unit|always1~2_combout\ & \LCD_Config_unit|always1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_start~0_combout\,
	datab => \LCD_Config_unit|always1~2_combout\,
	datac => \LCD_Config_unit|Equal0~1_combout\,
	datad => \LCD_Config_unit|always1~0_combout\,
	combout => \LCD_Config_unit|I2C_start~1_combout\);

-- Location: LCFF_X61_Y20_N17
\LCD_Config_unit|I2C_start\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|I2C_start~1_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_start~regout\);

-- Location: LCCOMB_X61_Y20_N2
\LCD_Config_unit|always1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|always1~0_combout\ = (!\LCD_Config_unit|I2C_unit|state_counter\(1) & (!\LCD_Config_unit|I2C_unit|state_counter\(4) & (!\LCD_Config_unit|I2C_start~regout\ & \LCD_Config_unit|I2C_unit|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_unit|state_counter\(1),
	datab => \LCD_Config_unit|I2C_unit|state_counter\(4),
	datac => \LCD_Config_unit|I2C_start~regout\,
	datad => \LCD_Config_unit|I2C_unit|Equal0~0_combout\,
	combout => \LCD_Config_unit|always1~0_combout\);

-- Location: LCCOMB_X60_Y20_N20
\LCD_Config_unit|I2C_state[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_state[1]~0_combout\ = (\LCD_Config_unit|always1~2_combout\ & (!\LCD_Config_unit|Equal0~1_combout\ & \LCD_Config_unit|always1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD_Config_unit|always1~2_combout\,
	datac => \LCD_Config_unit|Equal0~1_combout\,
	datad => \LCD_Config_unit|always1~0_combout\,
	combout => \LCD_Config_unit|I2C_state[1]~0_combout\);

-- Location: LCCOMB_X60_Y20_N6
\LCD_Config_unit|I2C_state[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_state[1]~1_combout\ = (\LCD_Config_unit|Equal0~1_combout\ & (!\LCD_config_start~regout\)) # (!\LCD_Config_unit|Equal0~1_combout\ & ((!\LCD_Config_unit|always1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_config_start~regout\,
	datac => \LCD_Config_unit|Equal0~1_combout\,
	datad => \LCD_Config_unit|always1~0_combout\,
	combout => \LCD_Config_unit|I2C_state[1]~1_combout\);

-- Location: LCCOMB_X59_Y20_N26
\LCD_Config_unit|I2C_state[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_state[3]~2_combout\ = (\LCD_Config_unit|Add0~6_combout\ & ((\LCD_Config_unit|I2C_state[1]~0_combout\) # ((\LCD_Config_unit|I2C_state\(3) & \LCD_Config_unit|I2C_state[1]~1_combout\)))) # (!\LCD_Config_unit|Add0~6_combout\ & 
-- (((\LCD_Config_unit|I2C_state\(3) & \LCD_Config_unit|I2C_state[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|Add0~6_combout\,
	datab => \LCD_Config_unit|I2C_state[1]~0_combout\,
	datac => \LCD_Config_unit|I2C_state\(3),
	datad => \LCD_Config_unit|I2C_state[1]~1_combout\,
	combout => \LCD_Config_unit|I2C_state[3]~2_combout\);

-- Location: LCFF_X59_Y20_N27
\LCD_Config_unit|I2C_state[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|I2C_state[3]~2_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_state\(3));

-- Location: LCCOMB_X58_Y20_N4
\LCD_Config_unit|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|Equal0~0_combout\ = (!\LCD_Config_unit|I2C_state\(3) & !\LCD_Config_unit|I2C_state\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LCD_Config_unit|I2C_state\(3),
	datad => \LCD_Config_unit|I2C_state\(2),
	combout => \LCD_Config_unit|Equal0~0_combout\);

-- Location: LCCOMB_X59_Y20_N12
\LCD_Config_unit|I2C_state[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_state[1]~5_combout\ = (\LCD_Config_unit|Add0~2_combout\ & ((\LCD_Config_unit|I2C_state[1]~0_combout\) # ((\LCD_Config_unit|I2C_state\(1) & \LCD_Config_unit|I2C_state[1]~1_combout\)))) # (!\LCD_Config_unit|Add0~2_combout\ & 
-- (((\LCD_Config_unit|I2C_state\(1) & \LCD_Config_unit|I2C_state[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|Add0~2_combout\,
	datab => \LCD_Config_unit|I2C_state[1]~0_combout\,
	datac => \LCD_Config_unit|I2C_state\(1),
	datad => \LCD_Config_unit|I2C_state[1]~1_combout\,
	combout => \LCD_Config_unit|I2C_state[1]~5_combout\);

-- Location: LCFF_X59_Y20_N13
\LCD_Config_unit|I2C_state[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|I2C_state[1]~5_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_state\(1));

-- Location: LCCOMB_X59_Y20_N18
\LCD_Config_unit|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|Add0~4_combout\ = (\LCD_Config_unit|I2C_state\(2) & (\LCD_Config_unit|Add0~3\ $ (GND))) # (!\LCD_Config_unit|I2C_state\(2) & (!\LCD_Config_unit|Add0~3\ & VCC))
-- \LCD_Config_unit|Add0~5\ = CARRY((\LCD_Config_unit|I2C_state\(2) & !\LCD_Config_unit|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_state\(2),
	datad => VCC,
	cin => \LCD_Config_unit|Add0~3\,
	combout => \LCD_Config_unit|Add0~4_combout\,
	cout => \LCD_Config_unit|Add0~5\);

-- Location: LCCOMB_X59_Y20_N22
\LCD_Config_unit|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|Add0~8_combout\ = \LCD_Config_unit|Add0~7\ $ (!\LCD_Config_unit|I2C_state\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \LCD_Config_unit|I2C_state\(4),
	cin => \LCD_Config_unit|Add0~7\,
	combout => \LCD_Config_unit|Add0~8_combout\);

-- Location: LCCOMB_X59_Y20_N28
\LCD_Config_unit|I2C_state[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_state[4]~4_combout\ = (\LCD_Config_unit|I2C_state[1]~1_combout\ & ((\LCD_Config_unit|I2C_state\(4)) # ((\LCD_Config_unit|Add0~8_combout\ & \LCD_Config_unit|I2C_state[1]~0_combout\)))) # (!\LCD_Config_unit|I2C_state[1]~1_combout\ & 
-- (\LCD_Config_unit|Add0~8_combout\ & ((\LCD_Config_unit|I2C_state[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_state[1]~1_combout\,
	datab => \LCD_Config_unit|Add0~8_combout\,
	datac => \LCD_Config_unit|I2C_state\(4),
	datad => \LCD_Config_unit|I2C_state[1]~0_combout\,
	combout => \LCD_Config_unit|I2C_state[4]~4_combout\);

-- Location: LCFF_X59_Y20_N29
\LCD_Config_unit|I2C_state[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|I2C_state[4]~4_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_state\(4));

-- Location: LCCOMB_X58_Y20_N14
\LCD_Config_unit|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|Equal0~1_combout\ = (!\LCD_Config_unit|I2C_state\(0) & (\LCD_Config_unit|Equal0~0_combout\ & (!\LCD_Config_unit|I2C_state\(1) & !\LCD_Config_unit|I2C_state\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_state\(0),
	datab => \LCD_Config_unit|Equal0~0_combout\,
	datac => \LCD_Config_unit|I2C_state\(1),
	datad => \LCD_Config_unit|I2C_state\(4),
	combout => \LCD_Config_unit|Equal0~1_combout\);

-- Location: LCCOMB_X59_Y20_N14
\LCD_Config_unit|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|Add0~0_combout\ = (\LCD_Config_unit|I2C_unit|Acknowledge~regout\ & (\LCD_Config_unit|I2C_state\(0) & VCC)) # (!\LCD_Config_unit|I2C_unit|Acknowledge~regout\ & (\LCD_Config_unit|I2C_state\(0) $ (VCC)))
-- \LCD_Config_unit|Add0~1\ = CARRY((!\LCD_Config_unit|I2C_unit|Acknowledge~regout\ & \LCD_Config_unit|I2C_state\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_unit|Acknowledge~regout\,
	datab => \LCD_Config_unit|I2C_state\(0),
	datad => VCC,
	combout => \LCD_Config_unit|Add0~0_combout\,
	cout => \LCD_Config_unit|Add0~1\);

-- Location: LCCOMB_X60_Y20_N24
\LCD_Config_unit|I2C_state[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_state[0]~6_combout\ = (\LCD_Config_unit|Equal0~1_combout\) # ((\LCD_Config_unit|always1~2_combout\ & \LCD_Config_unit|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD_Config_unit|always1~2_combout\,
	datac => \LCD_Config_unit|Equal0~1_combout\,
	datad => \LCD_Config_unit|Add0~0_combout\,
	combout => \LCD_Config_unit|I2C_state[0]~6_combout\);

-- Location: LCCOMB_X59_Y20_N4
\LCD_Config_unit|I2C_state[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_state[0]~7_combout\ = (\LCD_Config_unit|I2C_state[1]~1_combout\ & (\LCD_Config_unit|I2C_state\(0))) # (!\LCD_Config_unit|I2C_state[1]~1_combout\ & ((\LCD_Config_unit|I2C_state[0]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_state[1]~1_combout\,
	datac => \LCD_Config_unit|I2C_state\(0),
	datad => \LCD_Config_unit|I2C_state[0]~6_combout\,
	combout => \LCD_Config_unit|I2C_state[0]~7_combout\);

-- Location: LCFF_X59_Y20_N5
\LCD_Config_unit|I2C_state[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|I2C_state[0]~7_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_state\(0));

-- Location: LCCOMB_X59_Y20_N6
\LCD_Config_unit|I2C_state[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_state[2]~3_combout\ = (\LCD_Config_unit|I2C_state[1]~1_combout\ & ((\LCD_Config_unit|I2C_state\(2)) # ((\LCD_Config_unit|Add0~4_combout\ & \LCD_Config_unit|I2C_state[1]~0_combout\)))) # (!\LCD_Config_unit|I2C_state[1]~1_combout\ & 
-- (\LCD_Config_unit|Add0~4_combout\ & ((\LCD_Config_unit|I2C_state[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_state[1]~1_combout\,
	datab => \LCD_Config_unit|Add0~4_combout\,
	datac => \LCD_Config_unit|I2C_state\(2),
	datad => \LCD_Config_unit|I2C_state[1]~0_combout\,
	combout => \LCD_Config_unit|I2C_state[2]~3_combout\);

-- Location: LCFF_X59_Y20_N7
\LCD_Config_unit|I2C_state[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|I2C_state[2]~3_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_state\(2));

-- Location: LCCOMB_X60_Y20_N30
\LCD_Config_unit|I2C_unit|Equal4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_unit|Equal4~0_combout\ = (\LCD_Config_unit|I2C_unit|state_counter\(1) & (\LCD_Config_unit|I2C_unit|state_counter\(4) & \LCD_Config_unit|I2C_unit|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_unit|state_counter\(1),
	datac => \LCD_Config_unit|I2C_unit|state_counter\(4),
	datad => \LCD_Config_unit|I2C_unit|Equal0~0_combout\,
	combout => \LCD_Config_unit|I2C_unit|Equal4~0_combout\);

-- Location: LCCOMB_X61_Y20_N12
\LCD_Config_unit|I2C_unit|state_counter[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_unit|state_counter[3]~4_combout\ = (\LCD_Config_unit|I2C_unit|Add1~6_combout\ & ((\LCD_Config_unit|I2C_unit|state_counter[1]~1_combout\) # ((\LCD_Config_unit|I2C_unit|state_counter\(3) & 
-- \LCD_Config_unit|I2C_unit|state_counter[1]~0_combout\)))) # (!\LCD_Config_unit|I2C_unit|Add1~6_combout\ & (((\LCD_Config_unit|I2C_unit|state_counter\(3) & \LCD_Config_unit|I2C_unit|state_counter[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_unit|Add1~6_combout\,
	datab => \LCD_Config_unit|I2C_unit|state_counter[1]~1_combout\,
	datac => \LCD_Config_unit|I2C_unit|state_counter\(3),
	datad => \LCD_Config_unit|I2C_unit|state_counter[1]~0_combout\,
	combout => \LCD_Config_unit|I2C_unit|state_counter[3]~4_combout\);

-- Location: LCFF_X61_Y20_N13
\LCD_Config_unit|I2C_unit|state_counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|I2C_unit|state_counter[3]~4_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_unit|state_counter\(3));

-- Location: LCCOMB_X61_Y20_N6
\LCD_Config_unit|I2C_unit|state_counter[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_unit|state_counter[1]~3_combout\ = (\LCD_Config_unit|I2C_unit|Add1~2_combout\ & ((\LCD_Config_unit|I2C_unit|state_counter[1]~1_combout\) # ((\LCD_Config_unit|I2C_unit|state_counter\(1) & 
-- \LCD_Config_unit|I2C_unit|state_counter[1]~0_combout\)))) # (!\LCD_Config_unit|I2C_unit|Add1~2_combout\ & (((\LCD_Config_unit|I2C_unit|state_counter\(1) & \LCD_Config_unit|I2C_unit|state_counter[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_unit|Add1~2_combout\,
	datab => \LCD_Config_unit|I2C_unit|state_counter[1]~1_combout\,
	datac => \LCD_Config_unit|I2C_unit|state_counter\(1),
	datad => \LCD_Config_unit|I2C_unit|state_counter[1]~0_combout\,
	combout => \LCD_Config_unit|I2C_unit|state_counter[1]~3_combout\);

-- Location: LCFF_X61_Y20_N7
\LCD_Config_unit|I2C_unit|state_counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|I2C_unit|state_counter[1]~3_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_unit|state_counter\(1));

-- Location: LCCOMB_X60_Y20_N10
\LCD_Config_unit|I2C_unit|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_unit|Equal1~0_combout\ = (!\LCD_Config_unit|I2C_unit|state_counter\(4) & (\LCD_Config_unit|I2C_unit|state_counter\(3) & (!\LCD_Config_unit|I2C_unit|state_counter\(2) & !\LCD_Config_unit|I2C_unit|state_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_unit|state_counter\(4),
	datab => \LCD_Config_unit|I2C_unit|state_counter\(3),
	datac => \LCD_Config_unit|I2C_unit|state_counter\(2),
	datad => \LCD_Config_unit|I2C_unit|state_counter\(1),
	combout => \LCD_Config_unit|I2C_unit|Equal1~0_combout\);

-- Location: LCCOMB_X57_Y20_N12
\LCD_Config_unit|I2C_unit|Equal3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_unit|Equal3~0_combout\ = (!\LCD_Config_unit|I2C_unit|state_counter\(4) & (\LCD_Config_unit|I2C_unit|Equal0~0_combout\ & \LCD_Config_unit|I2C_unit|state_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_unit|state_counter\(4),
	datac => \LCD_Config_unit|I2C_unit|Equal0~0_combout\,
	datad => \LCD_Config_unit|I2C_unit|state_counter\(1),
	combout => \LCD_Config_unit|I2C_unit|Equal3~0_combout\);

-- Location: LCCOMB_X59_Y20_N24
\LCD_Config_unit|I2C_unit|sdat_en~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_unit|sdat_en~0_combout\ = (\LCD_Config_unit|I2C_unit|sdat_en~regout\ & (((!\LCD_Config_unit|I2C_unit|state_counter\(0))) # (!\LCD_Config_unit|I2C_unit|Equal1~0_combout\))) # (!\LCD_Config_unit|I2C_unit|sdat_en~regout\ & 
-- (\LCD_Config_unit|I2C_unit|Equal3~0_combout\ & ((!\LCD_Config_unit|I2C_unit|state_counter\(0)) # (!\LCD_Config_unit|I2C_unit|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_unit|sdat_en~regout\,
	datab => \LCD_Config_unit|I2C_unit|Equal1~0_combout\,
	datac => \LCD_Config_unit|I2C_unit|Equal3~0_combout\,
	datad => \LCD_Config_unit|I2C_unit|state_counter\(0),
	combout => \LCD_Config_unit|I2C_unit|sdat_en~0_combout\);

-- Location: LCCOMB_X59_Y20_N10
\LCD_Config_unit|I2C_unit|sdat_en~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_unit|sdat_en~2_combout\ = (!\LCD_Config_unit|I2C_unit|Equal4~0_combout\ & ((\LCD_Config_unit|I2C_unit|sdat_en~0_combout\) # ((\LCD_Config_unit|I2C_unit|sdat_en~1_combout\ & !\LCD_Config_unit|I2C_unit|state_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_unit|sdat_en~1_combout\,
	datab => \LCD_Config_unit|I2C_unit|Equal4~0_combout\,
	datac => \LCD_Config_unit|I2C_unit|sdat_en~0_combout\,
	datad => \LCD_Config_unit|I2C_unit|state_counter\(0),
	combout => \LCD_Config_unit|I2C_unit|sdat_en~2_combout\);

-- Location: LCCOMB_X60_Y20_N26
\LCD_Config_unit|I2C_unit|always2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_unit|always2~0_combout\ = (!\LCD_Config_unit|I2C_unit|clock_div~regout\ & \LCD_Config_unit|I2C_unit|clock_div_prev~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LCD_Config_unit|I2C_unit|clock_div~regout\,
	datad => \LCD_Config_unit|I2C_unit|clock_div_prev~regout\,
	combout => \LCD_Config_unit|I2C_unit|always2~0_combout\);

-- Location: LCFF_X59_Y20_N11
\LCD_Config_unit|I2C_unit|sdat_en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|I2C_unit|sdat_en~2_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \LCD_Config_unit|I2C_unit|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_unit|sdat_en~regout\);

-- Location: LCCOMB_X59_Y20_N30
\LCD_Config_unit|I2C_unit|Acknowledge~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_unit|Acknowledge~0_combout\ = (((\LCD_Config_unit|I2C_unit|clock_div_prev~regout\) # (!\LCD_Config_unit|I2C_unit|sdat_en~regout\)) # (!\LCD_Config_unit|I2C_unit|clock_div~regout\)) # (!\LCD_Config_unit|I2C_unit|sdat\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_unit|sdat\(15),
	datab => \LCD_Config_unit|I2C_unit|clock_div~regout\,
	datac => \LCD_Config_unit|I2C_unit|clock_div_prev~regout\,
	datad => \LCD_Config_unit|I2C_unit|sdat_en~regout\,
	combout => \LCD_Config_unit|I2C_unit|Acknowledge~0_combout\);

-- Location: LCCOMB_X60_Y20_N2
\LCD_Config_unit|I2C_unit|Acknowledge~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_unit|Acknowledge~1_combout\ = ((\LCD_Config_unit|I2C_unit|Equal0~1_combout\) # ((\LCD_Config_unit|I2C_unit|Acknowledge~0_combout\) # (!\LCD_Config_unit|I2C_unit|state_counter\(0)))) # (!\LCD_Config_unit|I2C_unit|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_unit|Equal1~0_combout\,
	datab => \LCD_Config_unit|I2C_unit|Equal0~1_combout\,
	datac => \LCD_Config_unit|I2C_unit|Acknowledge~0_combout\,
	datad => \LCD_Config_unit|I2C_unit|state_counter\(0),
	combout => \LCD_Config_unit|I2C_unit|Acknowledge~1_combout\);

-- Location: LCCOMB_X60_Y20_N16
\LCD_Config_unit|I2C_unit|Acknowledge~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_unit|Acknowledge~2_combout\ = (\LCD_Config_unit|I2C_start~regout\ & (!\LCD_Config_unit|I2C_unit|Equal0~1_combout\ & ((\LCD_Config_unit|I2C_unit|Acknowledge~regout\) # (!\LCD_Config_unit|I2C_unit|Acknowledge~1_combout\)))) # 
-- (!\LCD_Config_unit|I2C_start~regout\ & (((\LCD_Config_unit|I2C_unit|Acknowledge~regout\) # (!\LCD_Config_unit|I2C_unit|Acknowledge~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_start~regout\,
	datab => \LCD_Config_unit|I2C_unit|Equal0~1_combout\,
	datac => \LCD_Config_unit|I2C_unit|Acknowledge~regout\,
	datad => \LCD_Config_unit|I2C_unit|Acknowledge~1_combout\,
	combout => \LCD_Config_unit|I2C_unit|Acknowledge~2_combout\);

-- Location: LCFF_X60_Y20_N17
\LCD_Config_unit|I2C_unit|Acknowledge\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|I2C_unit|Acknowledge~2_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_unit|Acknowledge~regout\);

-- Location: LCCOMB_X60_Y20_N22
\LCD_Config_unit|always1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|always1~2_combout\ = (\LCD_Config_unit|always1~1_combout\) # ((\LCD_Config_unit|I2C_unit|Acknowledge~regout\) # (!\LCD_Config_unit|I2C_state\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|always1~1_combout\,
	datab => \LCD_Config_unit|I2C_state\(2),
	datac => \LCD_Config_unit|I2C_unit|Acknowledge~regout\,
	combout => \LCD_Config_unit|always1~2_combout\);

-- Location: LCCOMB_X60_Y20_N18
\LCD_Config_unit|Done~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|Done~0_combout\ = (!\LCD_Config_unit|Done~regout\ & ((!\LCD_Config_unit|Equal0~1_combout\) # (!\LCD_config_start~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_config_start~regout\,
	datab => \LCD_Config_unit|Done~regout\,
	datac => \LCD_Config_unit|Equal0~1_combout\,
	combout => \LCD_Config_unit|Done~0_combout\);

-- Location: LCCOMB_X60_Y20_N0
\LCD_Config_unit|Done~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|Done~1_combout\ = (!\LCD_Config_unit|Done~0_combout\ & (((\LCD_Config_unit|always1~2_combout\) # (\LCD_Config_unit|Equal0~1_combout\)) # (!\LCD_Config_unit|always1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|always1~0_combout\,
	datab => \LCD_Config_unit|always1~2_combout\,
	datac => \LCD_Config_unit|Equal0~1_combout\,
	datad => \LCD_Config_unit|Done~0_combout\,
	combout => \LCD_Config_unit|Done~1_combout\);

-- Location: LCFF_X60_Y20_N1
\LCD_Config_unit|Done\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|Done~1_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|Done~regout\);

-- Location: LCCOMB_X60_Y21_N18
\Top_state.000~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Top_state.000~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \Top_state.000~feeder_combout\);

-- Location: LCFF_X60_Y21_N19
\Top_state.000\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Top_state.000~feeder_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Top_state.000~regout\);

-- Location: LCCOMB_X60_Y21_N14
\Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = ((\Top_state.001~regout\ & ((\LCD_config_start~regout\) # (\LCD_Config_unit|Done~regout\)))) # (!\Top_state.000~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_config_start~regout\,
	datab => \LCD_Config_unit|Done~regout\,
	datac => \Top_state.001~regout\,
	datad => \Top_state.000~regout\,
	combout => \Selector2~0_combout\);

-- Location: LCFF_X60_Y21_N15
\Top_state.001\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Selector2~0_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Top_state.001~regout\);

-- Location: LCCOMB_X60_Y21_N16
\Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = ((\LCD_config_start~regout\ & \Top_state.010~regout\)) # (!\Top_state.000~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Top_state.000~regout\,
	datac => \LCD_config_start~regout\,
	datad => \Top_state.010~regout\,
	combout => \Selector0~0_combout\);

-- Location: LCFF_X60_Y21_N17
LCD_config_start : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Selector0~0_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_config_start~regout\);

-- Location: LCCOMB_X60_Y21_N12
\Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\Top_state.001~regout\ & (!\LCD_config_start~regout\ & !\LCD_Config_unit|Done~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Top_state.001~regout\,
	datac => \LCD_config_start~regout\,
	datad => \LCD_Config_unit|Done~regout\,
	combout => \Selector3~0_combout\);

-- Location: LCFF_X60_Y21_N1
\Top_state.010\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Top_state.010~feeder_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Top_state.010~regout\);

-- Location: LCCOMB_X61_Y22_N8
\LCD_Data_unit|V_Count[0]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|V_Count[0]~10_combout\ = \LCD_Data_unit|V_Count\(0) $ (VCC)
-- \LCD_Data_unit|V_Count[0]~11\ = CARRY(\LCD_Data_unit|V_Count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Data_unit|V_Count\(0),
	datad => VCC,
	combout => \LCD_Data_unit|V_Count[0]~10_combout\,
	cout => \LCD_Data_unit|V_Count[0]~11\);

-- Location: LCCOMB_X61_Y22_N10
\LCD_Data_unit|V_Count[1]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|V_Count[1]~14_combout\ = (\LCD_Data_unit|V_Count\(1) & (!\LCD_Data_unit|V_Count[0]~11\)) # (!\LCD_Data_unit|V_Count\(1) & ((\LCD_Data_unit|V_Count[0]~11\) # (GND)))
-- \LCD_Data_unit|V_Count[1]~15\ = CARRY((!\LCD_Data_unit|V_Count[0]~11\) # (!\LCD_Data_unit|V_Count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Data_unit|V_Count\(1),
	datad => VCC,
	cin => \LCD_Data_unit|V_Count[0]~11\,
	combout => \LCD_Data_unit|V_Count[1]~14_combout\,
	cout => \LCD_Data_unit|V_Count[1]~15\);

-- Location: LCCOMB_X61_Y22_N12
\LCD_Data_unit|V_Count[2]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|V_Count[2]~16_combout\ = (\LCD_Data_unit|V_Count\(2) & (\LCD_Data_unit|V_Count[1]~15\ $ (GND))) # (!\LCD_Data_unit|V_Count\(2) & (!\LCD_Data_unit|V_Count[1]~15\ & VCC))
-- \LCD_Data_unit|V_Count[2]~17\ = CARRY((\LCD_Data_unit|V_Count\(2) & !\LCD_Data_unit|V_Count[1]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_Data_unit|V_Count\(2),
	datad => VCC,
	cin => \LCD_Data_unit|V_Count[1]~15\,
	combout => \LCD_Data_unit|V_Count[2]~16_combout\,
	cout => \LCD_Data_unit|V_Count[2]~17\);

-- Location: LCCOMB_X61_Y21_N0
\LCD_Data_unit|oCoord_X[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|oCoord_X[0]~3_combout\ = \LCD_Data_unit|oCoord_X\(0) $ (VCC)
-- \LCD_Data_unit|oCoord_X[0]~4\ = CARRY(\LCD_Data_unit|oCoord_X\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD_Data_unit|oCoord_X\(0),
	datad => VCC,
	combout => \LCD_Data_unit|oCoord_X[0]~3_combout\,
	cout => \LCD_Data_unit|oCoord_X[0]~4\);

-- Location: LCCOMB_X61_Y21_N26
\LCD_Data_unit|H_Count[6]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|H_Count[6]~10_combout\ = (!\LCD_Data_unit|Equal0~2_combout\) # (!\Top_state.010~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Top_state.010~regout\,
	datad => \LCD_Data_unit|Equal0~2_combout\,
	combout => \LCD_Data_unit|H_Count[6]~10_combout\);

-- Location: LCCOMB_X60_Y22_N2
\LCD_Data_unit|LTM_NCLK~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|LTM_NCLK~0_combout\ = !\LCD_Data_unit|V_Sync~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \LCD_Data_unit|V_Sync~0_combout\,
	combout => \LCD_Data_unit|LTM_NCLK~0_combout\);

-- Location: LCFF_X60_Y22_N3
\LCD_Data_unit|LTM_NCLK\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Data_unit|LTM_NCLK~0_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Data_unit|LTM_NCLK~regout\);

-- Location: LCCOMB_X60_Y22_N12
\LCD_Data_unit|V_Sync~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|V_Sync~0_combout\ = (\LCD_Data_unit|LTM_NCLK~regout\) # (!\Top_state.010~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Top_state.010~regout\,
	datad => \LCD_Data_unit|LTM_NCLK~regout\,
	combout => \LCD_Data_unit|V_Sync~0_combout\);

-- Location: LCFF_X61_Y21_N1
\LCD_Data_unit|oCoord_X[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Data_unit|oCoord_X[0]~3_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	sclr => \LCD_Data_unit|H_Count[6]~10_combout\,
	ena => \LCD_Data_unit|V_Sync~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Data_unit|oCoord_X\(0));

-- Location: LCCOMB_X61_Y21_N2
\LCD_Data_unit|oCoord_X[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|oCoord_X[1]~5_combout\ = (\LCD_Data_unit|oCoord_X\(1) & (!\LCD_Data_unit|oCoord_X[0]~4\)) # (!\LCD_Data_unit|oCoord_X\(1) & ((\LCD_Data_unit|oCoord_X[0]~4\) # (GND)))
-- \LCD_Data_unit|oCoord_X[1]~6\ = CARRY((!\LCD_Data_unit|oCoord_X[0]~4\) # (!\LCD_Data_unit|oCoord_X\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_Data_unit|oCoord_X\(1),
	datad => VCC,
	cin => \LCD_Data_unit|oCoord_X[0]~4\,
	combout => \LCD_Data_unit|oCoord_X[1]~5_combout\,
	cout => \LCD_Data_unit|oCoord_X[1]~6\);

-- Location: LCFF_X61_Y21_N3
\LCD_Data_unit|oCoord_X[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Data_unit|oCoord_X[1]~5_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	sclr => \LCD_Data_unit|H_Count[6]~10_combout\,
	ena => \LCD_Data_unit|V_Sync~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Data_unit|oCoord_X\(1));

-- Location: LCCOMB_X61_Y21_N4
\LCD_Data_unit|oCoord_X[2]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|oCoord_X[2]~7_combout\ = (\LCD_Data_unit|oCoord_X\(2) & (\LCD_Data_unit|oCoord_X[1]~6\ $ (GND))) # (!\LCD_Data_unit|oCoord_X\(2) & (!\LCD_Data_unit|oCoord_X[1]~6\ & VCC))
-- \LCD_Data_unit|oCoord_X[2]~8\ = CARRY((\LCD_Data_unit|oCoord_X\(2) & !\LCD_Data_unit|oCoord_X[1]~6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_Data_unit|oCoord_X\(2),
	datad => VCC,
	cin => \LCD_Data_unit|oCoord_X[1]~6\,
	combout => \LCD_Data_unit|oCoord_X[2]~7_combout\,
	cout => \LCD_Data_unit|oCoord_X[2]~8\);

-- Location: LCFF_X61_Y21_N5
\LCD_Data_unit|oCoord_X[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Data_unit|oCoord_X[2]~7_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	sclr => \LCD_Data_unit|H_Count[6]~10_combout\,
	ena => \LCD_Data_unit|V_Sync~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Data_unit|oCoord_X\(2));

-- Location: LCCOMB_X61_Y21_N6
\LCD_Data_unit|H_Count[3]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|H_Count[3]~8_combout\ = (\LCD_Data_unit|H_Count\(3) & (!\LCD_Data_unit|oCoord_X[2]~8\)) # (!\LCD_Data_unit|H_Count\(3) & ((\LCD_Data_unit|oCoord_X[2]~8\) # (GND)))
-- \LCD_Data_unit|H_Count[3]~9\ = CARRY((!\LCD_Data_unit|oCoord_X[2]~8\) # (!\LCD_Data_unit|H_Count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Data_unit|H_Count\(3),
	datad => VCC,
	cin => \LCD_Data_unit|oCoord_X[2]~8\,
	combout => \LCD_Data_unit|H_Count[3]~8_combout\,
	cout => \LCD_Data_unit|H_Count[3]~9\);

-- Location: LCCOMB_X61_Y21_N8
\LCD_Data_unit|H_Count[4]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|H_Count[4]~11_combout\ = (\LCD_Data_unit|H_Count\(4) & (\LCD_Data_unit|H_Count[3]~9\ $ (GND))) # (!\LCD_Data_unit|H_Count\(4) & (!\LCD_Data_unit|H_Count[3]~9\ & VCC))
-- \LCD_Data_unit|H_Count[4]~12\ = CARRY((\LCD_Data_unit|H_Count\(4) & !\LCD_Data_unit|H_Count[3]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_Data_unit|H_Count\(4),
	datad => VCC,
	cin => \LCD_Data_unit|H_Count[3]~9\,
	combout => \LCD_Data_unit|H_Count[4]~11_combout\,
	cout => \LCD_Data_unit|H_Count[4]~12\);

-- Location: LCFF_X61_Y21_N9
\LCD_Data_unit|H_Count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Data_unit|H_Count[4]~11_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	sclr => \LCD_Data_unit|H_Count[6]~10_combout\,
	ena => \LCD_Data_unit|V_Sync~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Data_unit|H_Count\(4));

-- Location: LCCOMB_X61_Y21_N10
\LCD_Data_unit|H_Count[5]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|H_Count[5]~13_combout\ = (\LCD_Data_unit|H_Count\(5) & (!\LCD_Data_unit|H_Count[4]~12\)) # (!\LCD_Data_unit|H_Count\(5) & ((\LCD_Data_unit|H_Count[4]~12\) # (GND)))
-- \LCD_Data_unit|H_Count[5]~14\ = CARRY((!\LCD_Data_unit|H_Count[4]~12\) # (!\LCD_Data_unit|H_Count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Data_unit|H_Count\(5),
	datad => VCC,
	cin => \LCD_Data_unit|H_Count[4]~12\,
	combout => \LCD_Data_unit|H_Count[5]~13_combout\,
	cout => \LCD_Data_unit|H_Count[5]~14\);

-- Location: LCCOMB_X61_Y21_N12
\LCD_Data_unit|H_Count[6]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|H_Count[6]~15_combout\ = (\LCD_Data_unit|H_Count\(6) & (\LCD_Data_unit|H_Count[5]~14\ $ (GND))) # (!\LCD_Data_unit|H_Count\(6) & (!\LCD_Data_unit|H_Count[5]~14\ & VCC))
-- \LCD_Data_unit|H_Count[6]~16\ = CARRY((\LCD_Data_unit|H_Count\(6) & !\LCD_Data_unit|H_Count[5]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Data_unit|H_Count\(6),
	datad => VCC,
	cin => \LCD_Data_unit|H_Count[5]~14\,
	combout => \LCD_Data_unit|H_Count[6]~15_combout\,
	cout => \LCD_Data_unit|H_Count[6]~16\);

-- Location: LCCOMB_X61_Y21_N14
\LCD_Data_unit|H_Count[7]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|H_Count[7]~17_combout\ = (\LCD_Data_unit|H_Count\(7) & (!\LCD_Data_unit|H_Count[6]~16\)) # (!\LCD_Data_unit|H_Count\(7) & ((\LCD_Data_unit|H_Count[6]~16\) # (GND)))
-- \LCD_Data_unit|H_Count[7]~18\ = CARRY((!\LCD_Data_unit|H_Count[6]~16\) # (!\LCD_Data_unit|H_Count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_Data_unit|H_Count\(7),
	datad => VCC,
	cin => \LCD_Data_unit|H_Count[6]~16\,
	combout => \LCD_Data_unit|H_Count[7]~17_combout\,
	cout => \LCD_Data_unit|H_Count[7]~18\);

-- Location: LCFF_X61_Y21_N15
\LCD_Data_unit|H_Count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Data_unit|H_Count[7]~17_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	sclr => \LCD_Data_unit|H_Count[6]~10_combout\,
	ena => \LCD_Data_unit|V_Sync~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Data_unit|H_Count\(7));

-- Location: LCCOMB_X61_Y21_N16
\LCD_Data_unit|H_Count[8]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|H_Count[8]~19_combout\ = (\LCD_Data_unit|H_Count\(8) & (\LCD_Data_unit|H_Count[7]~18\ $ (GND))) # (!\LCD_Data_unit|H_Count\(8) & (!\LCD_Data_unit|H_Count[7]~18\ & VCC))
-- \LCD_Data_unit|H_Count[8]~20\ = CARRY((\LCD_Data_unit|H_Count\(8) & !\LCD_Data_unit|H_Count[7]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Data_unit|H_Count\(8),
	datad => VCC,
	cin => \LCD_Data_unit|H_Count[7]~18\,
	combout => \LCD_Data_unit|H_Count[8]~19_combout\,
	cout => \LCD_Data_unit|H_Count[8]~20\);

-- Location: LCCOMB_X61_Y21_N18
\LCD_Data_unit|H_Count[9]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|H_Count[9]~21_combout\ = (\LCD_Data_unit|H_Count\(9) & (!\LCD_Data_unit|H_Count[8]~20\)) # (!\LCD_Data_unit|H_Count\(9) & ((\LCD_Data_unit|H_Count[8]~20\) # (GND)))
-- \LCD_Data_unit|H_Count[9]~22\ = CARRY((!\LCD_Data_unit|H_Count[8]~20\) # (!\LCD_Data_unit|H_Count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_Data_unit|H_Count\(9),
	datad => VCC,
	cin => \LCD_Data_unit|H_Count[8]~20\,
	combout => \LCD_Data_unit|H_Count[9]~21_combout\,
	cout => \LCD_Data_unit|H_Count[9]~22\);

-- Location: LCFF_X61_Y21_N19
\LCD_Data_unit|H_Count[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Data_unit|H_Count[9]~21_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	sclr => \LCD_Data_unit|H_Count[6]~10_combout\,
	ena => \LCD_Data_unit|V_Sync~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Data_unit|H_Count\(9));

-- Location: LCCOMB_X61_Y21_N20
\LCD_Data_unit|H_Count[10]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|H_Count[10]~23_combout\ = \LCD_Data_unit|H_Count\(10) $ (!\LCD_Data_unit|H_Count[9]~22\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Data_unit|H_Count\(10),
	cin => \LCD_Data_unit|H_Count[9]~22\,
	combout => \LCD_Data_unit|H_Count[10]~23_combout\);

-- Location: LCFF_X61_Y21_N21
\LCD_Data_unit|H_Count[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Data_unit|H_Count[10]~23_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	sclr => \LCD_Data_unit|H_Count[6]~10_combout\,
	ena => \LCD_Data_unit|V_Sync~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Data_unit|H_Count\(10));

-- Location: LCFF_X61_Y21_N13
\LCD_Data_unit|H_Count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Data_unit|H_Count[6]~15_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	sclr => \LCD_Data_unit|H_Count[6]~10_combout\,
	ena => \LCD_Data_unit|V_Sync~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Data_unit|H_Count\(6));

-- Location: LCCOMB_X61_Y21_N22
\LCD_Data_unit|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|Equal0~1_combout\ = (\LCD_Data_unit|H_Count\(7)) # ((\LCD_Data_unit|H_Count\(6)) # (!\LCD_Data_unit|H_Count\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD_Data_unit|H_Count\(7),
	datac => \LCD_Data_unit|H_Count\(10),
	datad => \LCD_Data_unit|H_Count\(6),
	combout => \LCD_Data_unit|Equal0~1_combout\);

-- Location: LCFF_X61_Y21_N11
\LCD_Data_unit|H_Count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Data_unit|H_Count[5]~13_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	sclr => \LCD_Data_unit|H_Count[6]~10_combout\,
	ena => \LCD_Data_unit|V_Sync~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Data_unit|H_Count\(5));

-- Location: LCCOMB_X60_Y21_N30
\LCD_Data_unit|H_den~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|H_den~0_combout\ = (!\LCD_Data_unit|H_Count\(8) & (!\LCD_Data_unit|H_Count\(5) & !\LCD_Data_unit|H_Count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Data_unit|H_Count\(8),
	datac => \LCD_Data_unit|H_Count\(5),
	datad => \LCD_Data_unit|H_Count\(9),
	combout => \LCD_Data_unit|H_den~0_combout\);

-- Location: LCCOMB_X61_Y21_N30
\LCD_Data_unit|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|Equal0~0_combout\ = (\LCD_Data_unit|H_Count\(4) & (\LCD_Data_unit|oCoord_X\(1) & (\LCD_Data_unit|oCoord_X\(2) & \LCD_Data_unit|oCoord_X\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Data_unit|H_Count\(4),
	datab => \LCD_Data_unit|oCoord_X\(1),
	datac => \LCD_Data_unit|oCoord_X\(2),
	datad => \LCD_Data_unit|oCoord_X\(0),
	combout => \LCD_Data_unit|Equal0~0_combout\);

-- Location: LCCOMB_X61_Y21_N28
\LCD_Data_unit|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|Equal0~2_combout\ = ((\LCD_Data_unit|Equal0~1_combout\) # ((!\LCD_Data_unit|Equal0~0_combout\) # (!\LCD_Data_unit|H_den~0_combout\))) # (!\LCD_Data_unit|H_Count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Data_unit|H_Count\(3),
	datab => \LCD_Data_unit|Equal0~1_combout\,
	datac => \LCD_Data_unit|H_den~0_combout\,
	datad => \LCD_Data_unit|Equal0~0_combout\,
	combout => \LCD_Data_unit|Equal0~2_combout\);

-- Location: LCCOMB_X61_Y22_N2
\LCD_Data_unit|V_Count[7]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|V_Count[7]~13_combout\ = ((\LCD_Data_unit|LTM_NCLK~regout\ & !\LCD_Data_unit|Equal0~2_combout\)) # (!\Top_state.010~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Data_unit|LTM_NCLK~regout\,
	datac => \Top_state.010~regout\,
	datad => \LCD_Data_unit|Equal0~2_combout\,
	combout => \LCD_Data_unit|V_Count[7]~13_combout\);

-- Location: LCFF_X61_Y22_N13
\LCD_Data_unit|V_Count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Data_unit|V_Count[2]~16_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	sclr => \LCD_Data_unit|V_Count[7]~12_combout\,
	ena => \LCD_Data_unit|V_Count[7]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Data_unit|V_Count\(2));

-- Location: LCCOMB_X61_Y22_N14
\LCD_Data_unit|V_Count[3]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|V_Count[3]~18_combout\ = (\LCD_Data_unit|V_Count\(3) & (!\LCD_Data_unit|V_Count[2]~17\)) # (!\LCD_Data_unit|V_Count\(3) & ((\LCD_Data_unit|V_Count[2]~17\) # (GND)))
-- \LCD_Data_unit|V_Count[3]~19\ = CARRY((!\LCD_Data_unit|V_Count[2]~17\) # (!\LCD_Data_unit|V_Count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_Data_unit|V_Count\(3),
	datad => VCC,
	cin => \LCD_Data_unit|V_Count[2]~17\,
	combout => \LCD_Data_unit|V_Count[3]~18_combout\,
	cout => \LCD_Data_unit|V_Count[3]~19\);

-- Location: LCFF_X61_Y22_N15
\LCD_Data_unit|V_Count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Data_unit|V_Count[3]~18_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	sclr => \LCD_Data_unit|V_Count[7]~12_combout\,
	ena => \LCD_Data_unit|V_Count[7]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Data_unit|V_Count\(3));

-- Location: LCCOMB_X61_Y22_N30
\LCD_Data_unit|Equal3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|Equal3~2_combout\ = (((!\LCD_Data_unit|Equal3~1_combout\) # (!\LCD_Data_unit|V_Count\(3))) # (!\LCD_Data_unit|V_Count\(2))) # (!\LCD_Data_unit|V_Count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Data_unit|V_Count\(9),
	datab => \LCD_Data_unit|V_Count\(2),
	datac => \LCD_Data_unit|V_Count\(3),
	datad => \LCD_Data_unit|Equal3~1_combout\,
	combout => \LCD_Data_unit|Equal3~2_combout\);

-- Location: LCCOMB_X61_Y22_N16
\LCD_Data_unit|V_Count[4]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|V_Count[4]~20_combout\ = (\LCD_Data_unit|V_Count\(4) & (\LCD_Data_unit|V_Count[3]~19\ $ (GND))) # (!\LCD_Data_unit|V_Count\(4) & (!\LCD_Data_unit|V_Count[3]~19\ & VCC))
-- \LCD_Data_unit|V_Count[4]~21\ = CARRY((\LCD_Data_unit|V_Count\(4) & !\LCD_Data_unit|V_Count[3]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Data_unit|V_Count\(4),
	datad => VCC,
	cin => \LCD_Data_unit|V_Count[3]~19\,
	combout => \LCD_Data_unit|V_Count[4]~20_combout\,
	cout => \LCD_Data_unit|V_Count[4]~21\);

-- Location: LCCOMB_X61_Y22_N18
\LCD_Data_unit|V_Count[5]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|V_Count[5]~22_combout\ = (\LCD_Data_unit|V_Count\(5) & (!\LCD_Data_unit|V_Count[4]~21\)) # (!\LCD_Data_unit|V_Count\(5) & ((\LCD_Data_unit|V_Count[4]~21\) # (GND)))
-- \LCD_Data_unit|V_Count[5]~23\ = CARRY((!\LCD_Data_unit|V_Count[4]~21\) # (!\LCD_Data_unit|V_Count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_Data_unit|V_Count\(5),
	datad => VCC,
	cin => \LCD_Data_unit|V_Count[4]~21\,
	combout => \LCD_Data_unit|V_Count[5]~22_combout\,
	cout => \LCD_Data_unit|V_Count[5]~23\);

-- Location: LCFF_X61_Y22_N19
\LCD_Data_unit|V_Count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Data_unit|V_Count[5]~22_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	sclr => \LCD_Data_unit|V_Count[7]~12_combout\,
	ena => \LCD_Data_unit|V_Count[7]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Data_unit|V_Count\(5));

-- Location: LCCOMB_X61_Y22_N20
\LCD_Data_unit|V_Count[6]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|V_Count[6]~24_combout\ = (\LCD_Data_unit|V_Count\(6) & (\LCD_Data_unit|V_Count[5]~23\ $ (GND))) # (!\LCD_Data_unit|V_Count\(6) & (!\LCD_Data_unit|V_Count[5]~23\ & VCC))
-- \LCD_Data_unit|V_Count[6]~25\ = CARRY((\LCD_Data_unit|V_Count\(6) & !\LCD_Data_unit|V_Count[5]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Data_unit|V_Count\(6),
	datad => VCC,
	cin => \LCD_Data_unit|V_Count[5]~23\,
	combout => \LCD_Data_unit|V_Count[6]~24_combout\,
	cout => \LCD_Data_unit|V_Count[6]~25\);

-- Location: LCCOMB_X61_Y22_N22
\LCD_Data_unit|V_Count[7]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|V_Count[7]~26_combout\ = (\LCD_Data_unit|V_Count\(7) & (!\LCD_Data_unit|V_Count[6]~25\)) # (!\LCD_Data_unit|V_Count\(7) & ((\LCD_Data_unit|V_Count[6]~25\) # (GND)))
-- \LCD_Data_unit|V_Count[7]~27\ = CARRY((!\LCD_Data_unit|V_Count[6]~25\) # (!\LCD_Data_unit|V_Count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_Data_unit|V_Count\(7),
	datad => VCC,
	cin => \LCD_Data_unit|V_Count[6]~25\,
	combout => \LCD_Data_unit|V_Count[7]~26_combout\,
	cout => \LCD_Data_unit|V_Count[7]~27\);

-- Location: LCFF_X61_Y22_N23
\LCD_Data_unit|V_Count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Data_unit|V_Count[7]~26_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	sclr => \LCD_Data_unit|V_Count[7]~12_combout\,
	ena => \LCD_Data_unit|V_Count[7]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Data_unit|V_Count\(7));

-- Location: LCCOMB_X61_Y22_N24
\LCD_Data_unit|V_Count[8]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|V_Count[8]~28_combout\ = (\LCD_Data_unit|V_Count\(8) & (\LCD_Data_unit|V_Count[7]~27\ $ (GND))) # (!\LCD_Data_unit|V_Count\(8) & (!\LCD_Data_unit|V_Count[7]~27\ & VCC))
-- \LCD_Data_unit|V_Count[8]~29\ = CARRY((\LCD_Data_unit|V_Count\(8) & !\LCD_Data_unit|V_Count[7]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Data_unit|V_Count\(8),
	datad => VCC,
	cin => \LCD_Data_unit|V_Count[7]~27\,
	combout => \LCD_Data_unit|V_Count[8]~28_combout\,
	cout => \LCD_Data_unit|V_Count[8]~29\);

-- Location: LCFF_X61_Y22_N25
\LCD_Data_unit|V_Count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Data_unit|V_Count[8]~28_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	sclr => \LCD_Data_unit|V_Count[7]~12_combout\,
	ena => \LCD_Data_unit|V_Count[7]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Data_unit|V_Count\(8));

-- Location: LCFF_X61_Y22_N21
\LCD_Data_unit|V_Count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Data_unit|V_Count[6]~24_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	sclr => \LCD_Data_unit|V_Count[7]~12_combout\,
	ena => \LCD_Data_unit|V_Count[7]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Data_unit|V_Count\(6));

-- Location: LCFF_X62_Y22_N5
\LCD_Data_unit|V_Count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \LCD_Data_unit|V_Count[0]~10_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	sclr => \LCD_Data_unit|V_Count[7]~12_combout\,
	sload => VCC,
	ena => \LCD_Data_unit|V_Count[7]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Data_unit|V_Count\(0));

-- Location: LCCOMB_X61_Y22_N28
\LCD_Data_unit|Equal3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|Equal3~0_combout\ = (!\LCD_Data_unit|V_Count\(4) & (!\LCD_Data_unit|V_Count\(7) & (!\LCD_Data_unit|V_Count\(6) & !\LCD_Data_unit|V_Count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Data_unit|V_Count\(4),
	datab => \LCD_Data_unit|V_Count\(7),
	datac => \LCD_Data_unit|V_Count\(6),
	datad => \LCD_Data_unit|V_Count\(0),
	combout => \LCD_Data_unit|Equal3~0_combout\);

-- Location: LCCOMB_X61_Y22_N0
\LCD_Data_unit|V_Count[7]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|V_Count[7]~12_combout\ = ((!\LCD_Data_unit|Equal3~2_combout\ & (!\LCD_Data_unit|V_Count\(8) & \LCD_Data_unit|Equal3~0_combout\))) # (!\Top_state.010~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Top_state.010~regout\,
	datab => \LCD_Data_unit|Equal3~2_combout\,
	datac => \LCD_Data_unit|V_Count\(8),
	datad => \LCD_Data_unit|Equal3~0_combout\,
	combout => \LCD_Data_unit|V_Count[7]~12_combout\);

-- Location: LCFF_X61_Y22_N11
\LCD_Data_unit|V_Count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Data_unit|V_Count[1]~14_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	sclr => \LCD_Data_unit|V_Count[7]~12_combout\,
	ena => \LCD_Data_unit|V_Count[7]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Data_unit|V_Count\(1));

-- Location: LCCOMB_X60_Y22_N18
\LCD_Data_unit|Equal3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|Equal3~1_combout\ = (!\LCD_Data_unit|V_Count\(1) & !\LCD_Data_unit|V_Count\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LCD_Data_unit|V_Count\(1),
	datad => \LCD_Data_unit|V_Count\(5),
	combout => \LCD_Data_unit|Equal3~1_combout\);

-- Location: LCCOMB_X61_Y22_N26
\LCD_Data_unit|V_Count[9]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|V_Count[9]~30_combout\ = \LCD_Data_unit|V_Count\(9) $ (\LCD_Data_unit|V_Count[8]~29\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Data_unit|V_Count\(9),
	cin => \LCD_Data_unit|V_Count[8]~29\,
	combout => \LCD_Data_unit|V_Count[9]~30_combout\);

-- Location: LCFF_X61_Y22_N27
\LCD_Data_unit|V_Count[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Data_unit|V_Count[9]~30_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	sclr => \LCD_Data_unit|V_Count[7]~12_combout\,
	ena => \LCD_Data_unit|V_Count[7]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Data_unit|V_Count\(9));

-- Location: LCCOMB_X60_Y22_N0
\LCD_Data_unit|V_Sync~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|V_Sync~1_combout\ = (\LCD_Data_unit|V_den~0_combout\ & (\LCD_Data_unit|Equal3~1_combout\ & (!\LCD_Data_unit|V_Count\(9) & \Top_state.010~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Data_unit|V_den~0_combout\,
	datab => \LCD_Data_unit|Equal3~1_combout\,
	datac => \LCD_Data_unit|V_Count\(9),
	datad => \Top_state.010~regout\,
	combout => \LCD_Data_unit|V_Sync~1_combout\);

-- Location: LCFF_X60_Y22_N1
\LCD_Data_unit|V_Sync\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Data_unit|V_Sync~1_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \LCD_Data_unit|V_Sync~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Data_unit|V_Sync~regout\);

-- Location: LCCOMB_X60_Y22_N26
\LCD_Data_unit|LTM_VD~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|LTM_VD~0_combout\ = (\Top_state.010~regout\ & \LCD_Data_unit|V_Sync~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Top_state.010~regout\,
	datad => \LCD_Data_unit|V_Sync~regout\,
	combout => \LCD_Data_unit|LTM_VD~0_combout\);

-- Location: LCFF_X60_Y22_N27
\LCD_Data_unit|LTM_VD\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Data_unit|LTM_VD~0_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \LCD_Data_unit|V_Sync~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Data_unit|LTM_VD~regout\);

-- Location: LCFF_X33_Y16_N7
\Touch_Panel_unit|Enable_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \LCD_Data_unit|LTM_VD~regout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Touch_Panel_unit|Enable_reg\(0));

-- Location: LCFF_X34_Y16_N3
\Touch_Panel_unit|Enable_reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \Touch_Panel_unit|Enable_reg\(0),
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Touch_Panel_unit|Enable_reg\(1));

-- Location: LCCOMB_X34_Y16_N2
\Touch_Panel_unit|TP_state~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_state~50_combout\ = (\Touch_Panel_unit|Enable_reg\(0) & (!\Touch_Panel_unit|Enable_reg\(1) & \Touch_Panel_unit|TP_state.S_TP_ENABLE~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Touch_Panel_unit|Enable_reg\(0),
	datac => \Touch_Panel_unit|Enable_reg\(1),
	datad => \Touch_Panel_unit|TP_state.S_TP_ENABLE~regout\,
	combout => \Touch_Panel_unit|TP_state~50_combout\);

-- Location: LCCOMB_X34_Y16_N10
\Touch_Panel_unit|TP_state.S_TP_ENABLE~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_state.S_TP_ENABLE~0_combout\ = (\Touch_Panel_unit|TP_state.S_TP_IDLE~regout\ & (((\Touch_Panel_unit|TP_state.S_TP_ENABLE~regout\ & !\Touch_Panel_unit|TP_state~50_combout\)))) # (!\Touch_Panel_unit|TP_state.S_TP_IDLE~regout\ & 
-- ((\Touch_Panel_unit|TP_penirq~regout\) # ((\Touch_Panel_unit|TP_state.S_TP_ENABLE~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_state.S_TP_IDLE~regout\,
	datab => \Touch_Panel_unit|TP_penirq~regout\,
	datac => \Touch_Panel_unit|TP_state.S_TP_ENABLE~regout\,
	datad => \Touch_Panel_unit|TP_state~50_combout\,
	combout => \Touch_Panel_unit|TP_state.S_TP_ENABLE~0_combout\);

-- Location: LCFF_X34_Y16_N11
\Touch_Panel_unit|TP_state.S_TP_ENABLE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Touch_Panel_unit|TP_state.S_TP_ENABLE~0_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Touch_Panel_unit|TP_state.S_TP_ENABLE~regout\);

-- Location: LCCOMB_X33_Y18_N20
\Touch_Panel_unit|TP_SCLK_O~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_SCLK_O~0_combout\ = \Touch_Panel_unit|TP_SCLK_O~regout\ $ (((\Touch_Panel_unit|TP_state~62_combout\ & (!\Touch_Panel_unit|TP_state.S_TP_ENABLE~regout\ & \Touch_Panel_unit|En_SPI_Clock~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_state~62_combout\,
	datab => \Touch_Panel_unit|TP_state.S_TP_ENABLE~regout\,
	datac => \Touch_Panel_unit|TP_SCLK_O~regout\,
	datad => \Touch_Panel_unit|En_SPI_Clock~regout\,
	combout => \Touch_Panel_unit|TP_SCLK_O~0_combout\);

-- Location: LCCOMB_X34_Y17_N2
\Touch_Panel_unit|TP_data_reg[11]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_data_reg[11]~6_combout\ = (\Touch_Panel_unit|TP_state.S_TP_DEBOUNCE~regout\ & (((\Touch_Panel_unit|Equal8~0_combout\ & \Touch_Panel_unit|Equal7~2_combout\)))) # (!\Touch_Panel_unit|TP_state.S_TP_DEBOUNCE~regout\ & 
-- (!\Touch_Panel_unit|TP_penirq~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_state.S_TP_DEBOUNCE~regout\,
	datab => \Touch_Panel_unit|TP_penirq~regout\,
	datac => \Touch_Panel_unit|Equal8~0_combout\,
	datad => \Touch_Panel_unit|Equal7~2_combout\,
	combout => \Touch_Panel_unit|TP_data_reg[11]~6_combout\);

-- Location: LCCOMB_X34_Y17_N12
\Touch_Panel_unit|TP_data_reg[11]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_data_reg[11]~8_combout\ = (\Touch_Panel_unit|TP_data_reg[11]~4_combout\ & (((\Touch_Panel_unit|TP_data_reg[11]~6_combout\)))) # (!\Touch_Panel_unit|TP_data_reg[11]~4_combout\ & ((\Touch_Panel_unit|TP_state.S_TP_DEBOUNCE~regout\ & 
-- ((\Touch_Panel_unit|TP_data_reg[11]~6_combout\))) # (!\Touch_Panel_unit|TP_state.S_TP_DEBOUNCE~regout\ & (\Touch_Panel_unit|TP_data_reg[11]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_data_reg[11]~7_combout\,
	datab => \Touch_Panel_unit|TP_data_reg[11]~4_combout\,
	datac => \Touch_Panel_unit|TP_state.S_TP_DEBOUNCE~regout\,
	datad => \Touch_Panel_unit|TP_data_reg[11]~6_combout\,
	combout => \Touch_Panel_unit|TP_data_reg[11]~8_combout\);

-- Location: LCCOMB_X34_Y17_N28
\Touch_Panel_unit|Selector17~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|Selector17~1_combout\ = (!\Touch_Panel_unit|TP_state.S_TP_SYNC_1K~regout\ & (!\Touch_Panel_unit|TP_data_reg[11]~8_combout\ & ((!\Touch_Panel_unit|TP_state.S_TP_BACKOFF~regout\) # (!\Touch_Panel_unit|Equal7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_state.S_TP_SYNC_1K~regout\,
	datab => \Touch_Panel_unit|Equal7~4_combout\,
	datac => \Touch_Panel_unit|TP_state.S_TP_BACKOFF~regout\,
	datad => \Touch_Panel_unit|TP_data_reg[11]~8_combout\,
	combout => \Touch_Panel_unit|Selector17~1_combout\);

-- Location: LCCOMB_X36_Y17_N24
\Touch_Panel_unit|TP_data_reg[11]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_data_reg[11]~5_combout\ = (\Touch_Panel_unit|TP_state.S_TP_BACKOFF~regout\ & \Touch_Panel_unit|Equal7~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Touch_Panel_unit|TP_state.S_TP_BACKOFF~regout\,
	datad => \Touch_Panel_unit|Equal7~4_combout\,
	combout => \Touch_Panel_unit|TP_data_reg[11]~5_combout\);

-- Location: LCCOMB_X35_Y16_N12
\Touch_Panel_unit|Touch_En~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|Touch_En~3_combout\ = (\Touch_Panel_unit|TP_penirq~regout\ & !\Touch_Panel_unit|TP_state.S_TP_IDLE~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Touch_Panel_unit|TP_penirq~regout\,
	datad => \Touch_Panel_unit|TP_state.S_TP_IDLE~regout\,
	combout => \Touch_Panel_unit|Touch_En~3_combout\);

-- Location: LCCOMB_X33_Y16_N14
\Touch_Panel_unit|Selector15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|Selector15~0_combout\ = (!\Touch_Panel_unit|TP_state.S_TP_SYNC_1K~regout\ & !\Touch_Panel_unit|TP_data_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_state.S_TP_SYNC_1K~regout\,
	datac => \Touch_Panel_unit|TP_data_count\(0),
	combout => \Touch_Panel_unit|Selector15~0_combout\);

-- Location: LCCOMB_X34_Y16_N28
\Touch_Panel_unit|TP_data_count[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_data_count[3]~3_combout\ = (!\Touch_Panel_unit|TP_state.S_TP_RECV_Y~regout\ & !\Touch_Panel_unit|TP_state.S_TP_RECV_X~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Touch_Panel_unit|TP_state.S_TP_RECV_Y~regout\,
	datad => \Touch_Panel_unit|TP_state.S_TP_RECV_X~regout\,
	combout => \Touch_Panel_unit|TP_data_count[3]~3_combout\);

-- Location: LCCOMB_X35_Y17_N0
\Touch_Panel_unit|TP_state~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_state~85_combout\ = (!\Touch_Panel_unit|TP_state~75_combout\ & (!\Touch_Panel_unit|TP_state.S_TP_DEBOUNCE~regout\ & (!\Touch_Panel_unit|TP_state.S_TP_ENABLE~regout\ & !\Touch_Panel_unit|TP_state.S_TP_BACKOFF~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_state~75_combout\,
	datab => \Touch_Panel_unit|TP_state.S_TP_DEBOUNCE~regout\,
	datac => \Touch_Panel_unit|TP_state.S_TP_ENABLE~regout\,
	datad => \Touch_Panel_unit|TP_state.S_TP_BACKOFF~regout\,
	combout => \Touch_Panel_unit|TP_state~85_combout\);

-- Location: LCFF_X35_Y17_N1
\Touch_Panel_unit|TP_state.S_TP_SEND_X\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Touch_Panel_unit|TP_state~85_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \Touch_Panel_unit|TP_state~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Touch_Panel_unit|TP_state.S_TP_SEND_X~regout\);

-- Location: LCCOMB_X35_Y18_N0
\Touch_Panel_unit|TP_data_count[3]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_data_count[3]~9_combout\ = (\Touch_Panel_unit|TP_SCLK_O~regout\ & ((\Touch_Panel_unit|TP_state.S_TP_RECV_Y~regout\) # ((\Touch_Panel_unit|TP_state.S_TP_RECV_X~regout\)))) # (!\Touch_Panel_unit|TP_SCLK_O~regout\ & 
-- (((!\Touch_Panel_unit|TP_state~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_SCLK_O~regout\,
	datab => \Touch_Panel_unit|TP_state.S_TP_RECV_Y~regout\,
	datac => \Touch_Panel_unit|TP_state.S_TP_RECV_X~regout\,
	datad => \Touch_Panel_unit|TP_state~43_combout\,
	combout => \Touch_Panel_unit|TP_data_count[3]~9_combout\);

-- Location: LCCOMB_X35_Y18_N2
\Touch_Panel_unit|TP_data_count[3]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_data_count[3]~12_combout\ = (\Touch_Panel_unit|TP_data_count[3]~9_combout\) # ((!\Touch_Panel_unit|TP_SCLK_O~regout\ & ((\Touch_Panel_unit|TP_state.S_TP_SEND_X~regout\) # (\Touch_Panel_unit|TP_state.S_TP_SEND_Y~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_SCLK_O~regout\,
	datab => \Touch_Panel_unit|TP_state.S_TP_SEND_X~regout\,
	datac => \Touch_Panel_unit|TP_state.S_TP_SEND_Y~regout\,
	datad => \Touch_Panel_unit|TP_data_count[3]~9_combout\,
	combout => \Touch_Panel_unit|TP_data_count[3]~12_combout\);

-- Location: LCCOMB_X35_Y18_N4
\Touch_Panel_unit|TP_data_count[3]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_data_count[3]~10_combout\ = (\Touch_Panel_unit|TP_data_count[3]~3_combout\ & ((\Touch_Panel_unit|TP_data_count[3]~6_combout\) # ((!\Touch_Panel_unit|TP_data_count[3]~12_combout\)))) # (!\Touch_Panel_unit|TP_data_count[3]~3_combout\ & 
-- (((!\GPIO_0[2]~2\ & !\Touch_Panel_unit|TP_data_count[3]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_data_count[3]~6_combout\,
	datab => \GPIO_0[2]~2\,
	datac => \Touch_Panel_unit|TP_data_count[3]~3_combout\,
	datad => \Touch_Panel_unit|TP_data_count[3]~12_combout\,
	combout => \Touch_Panel_unit|TP_data_count[3]~10_combout\);

-- Location: LCCOMB_X33_Y16_N16
\Touch_Panel_unit|TP_data_count[3]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_data_count[3]~11_combout\ = (\Touch_Panel_unit|TP_data_count[3]~2_combout\ & (!\Touch_Panel_unit|TP_state.S_TP_BACKOFF~regout\ & (!\Touch_Panel_unit|TP_state.S_TP_DEBOUNCE~regout\ & \Touch_Panel_unit|TP_data_count[3]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_data_count[3]~2_combout\,
	datab => \Touch_Panel_unit|TP_state.S_TP_BACKOFF~regout\,
	datac => \Touch_Panel_unit|TP_state.S_TP_DEBOUNCE~regout\,
	datad => \Touch_Panel_unit|TP_data_count[3]~10_combout\,
	combout => \Touch_Panel_unit|TP_data_count[3]~11_combout\);

-- Location: LCFF_X33_Y16_N15
\Touch_Panel_unit|TP_data_count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Touch_Panel_unit|Selector15~0_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \Touch_Panel_unit|TP_data_count[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Touch_Panel_unit|TP_data_count\(0));

-- Location: LCCOMB_X33_Y16_N20
\Touch_Panel_unit|Selector13~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|Selector13~2_combout\ = (!\Touch_Panel_unit|TP_data_count[3]~8_combout\ & (\Touch_Panel_unit|TP_data_count\(2) $ (((\Touch_Panel_unit|TP_data_count\(1) & \Touch_Panel_unit|TP_data_count\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_data_count\(1),
	datab => \Touch_Panel_unit|TP_data_count\(0),
	datac => \Touch_Panel_unit|TP_data_count\(2),
	datad => \Touch_Panel_unit|TP_data_count[3]~8_combout\,
	combout => \Touch_Panel_unit|Selector13~2_combout\);

-- Location: LCFF_X33_Y16_N21
\Touch_Panel_unit|TP_data_count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Touch_Panel_unit|Selector13~2_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \Touch_Panel_unit|TP_data_count[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Touch_Panel_unit|TP_data_count\(2));

-- Location: LCCOMB_X33_Y16_N26
\Touch_Panel_unit|Selector12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|Selector12~0_combout\ = (!\Touch_Panel_unit|TP_data_count[3]~8_combout\ & (\Touch_Panel_unit|TP_data_count\(3) $ (((\Touch_Panel_unit|Add1~0_combout\ & \Touch_Panel_unit|TP_data_count\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|Add1~0_combout\,
	datab => \Touch_Panel_unit|TP_data_count[3]~8_combout\,
	datac => \Touch_Panel_unit|TP_data_count\(3),
	datad => \Touch_Panel_unit|TP_data_count\(2),
	combout => \Touch_Panel_unit|Selector12~0_combout\);

-- Location: LCFF_X33_Y16_N27
\Touch_Panel_unit|TP_data_count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Touch_Panel_unit|Selector12~0_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \Touch_Panel_unit|TP_data_count[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Touch_Panel_unit|TP_data_count\(3));

-- Location: LCCOMB_X33_Y16_N30
\Touch_Panel_unit|Equal6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|Equal6~0_combout\ = (((!\Touch_Panel_unit|TP_data_count\(3)) # (!\Touch_Panel_unit|TP_data_count\(0))) # (!\Touch_Panel_unit|TP_data_count\(1))) # (!\Touch_Panel_unit|TP_data_count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_data_count\(2),
	datab => \Touch_Panel_unit|TP_data_count\(1),
	datac => \Touch_Panel_unit|TP_data_count\(0),
	datad => \Touch_Panel_unit|TP_data_count\(3),
	combout => \Touch_Panel_unit|Equal6~0_combout\);

-- Location: LCCOMB_X34_Y16_N18
\Touch_Panel_unit|TP_state~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_state~59_combout\ = ((!\Touch_Panel_unit|TP_state.S_TP_RECV_X~regout\ & !\Touch_Panel_unit|TP_state.S_TP_RECV_Y~regout\)) # (!\Touch_Panel_unit|TP_data_count[3]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Touch_Panel_unit|TP_state.S_TP_RECV_X~regout\,
	datac => \Touch_Panel_unit|TP_state.S_TP_RECV_Y~regout\,
	datad => \Touch_Panel_unit|TP_data_count[3]~5_combout\,
	combout => \Touch_Panel_unit|TP_state~59_combout\);

-- Location: LCCOMB_X33_Y16_N0
\Touch_Panel_unit|TP_data_count[3]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_data_count[3]~7_combout\ = (\Touch_Panel_unit|TP_state~43_combout\ & (((!\Touch_Panel_unit|TP_data_count[3]~3_combout\ & !\Touch_Panel_unit|TP_state~59_combout\)))) # (!\Touch_Panel_unit|TP_state~43_combout\ & 
-- (((!\Touch_Panel_unit|TP_state~59_combout\)) # (!\Touch_Panel_unit|Equal6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_state~43_combout\,
	datab => \Touch_Panel_unit|Equal6~0_combout\,
	datac => \Touch_Panel_unit|TP_data_count[3]~3_combout\,
	datad => \Touch_Panel_unit|TP_state~59_combout\,
	combout => \Touch_Panel_unit|TP_data_count[3]~7_combout\);

-- Location: LCCOMB_X33_Y16_N18
\Touch_Panel_unit|TP_data_count[3]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_data_count[3]~8_combout\ = ((\Touch_Panel_unit|TP_state.S_TP_SYNC_1K~regout\) # (\Touch_Panel_unit|TP_data_count[3]~7_combout\)) # (!\Touch_Panel_unit|TP_state~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_state~60_combout\,
	datac => \Touch_Panel_unit|TP_state.S_TP_SYNC_1K~regout\,
	datad => \Touch_Panel_unit|TP_data_count[3]~7_combout\,
	combout => \Touch_Panel_unit|TP_data_count[3]~8_combout\);

-- Location: LCCOMB_X33_Y16_N28
\Touch_Panel_unit|Selector14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|Selector14~0_combout\ = (!\Touch_Panel_unit|TP_data_count[3]~8_combout\ & (\Touch_Panel_unit|TP_data_count\(0) $ (\Touch_Panel_unit|TP_data_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Touch_Panel_unit|TP_data_count\(0),
	datac => \Touch_Panel_unit|TP_data_count\(1),
	datad => \Touch_Panel_unit|TP_data_count[3]~8_combout\,
	combout => \Touch_Panel_unit|Selector14~0_combout\);

-- Location: LCFF_X33_Y16_N29
\Touch_Panel_unit|TP_data_count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Touch_Panel_unit|Selector14~0_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \Touch_Panel_unit|TP_data_count[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Touch_Panel_unit|TP_data_count\(1));

-- Location: LCCOMB_X33_Y16_N2
\Touch_Panel_unit|TP_data_count[3]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_data_count[3]~5_combout\ = (!\Touch_Panel_unit|TP_data_count\(2) & (\Touch_Panel_unit|TP_data_count\(1) & (\Touch_Panel_unit|TP_data_count\(0) & \Touch_Panel_unit|TP_data_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_data_count\(2),
	datab => \Touch_Panel_unit|TP_data_count\(1),
	datac => \Touch_Panel_unit|TP_data_count\(0),
	datad => \Touch_Panel_unit|TP_data_count\(3),
	combout => \Touch_Panel_unit|TP_data_count[3]~5_combout\);

-- Location: LCCOMB_X35_Y16_N18
\Touch_Panel_unit|TP_busy_timeout[1]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_busy_timeout[1]~11_combout\ = (\Touch_Panel_unit|TP_busy_timeout\(1) & (!\Touch_Panel_unit|TP_busy_timeout[0]~10\)) # (!\Touch_Panel_unit|TP_busy_timeout\(1) & ((\Touch_Panel_unit|TP_busy_timeout[0]~10\) # (GND)))
-- \Touch_Panel_unit|TP_busy_timeout[1]~12\ = CARRY((!\Touch_Panel_unit|TP_busy_timeout[0]~10\) # (!\Touch_Panel_unit|TP_busy_timeout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Touch_Panel_unit|TP_busy_timeout\(1),
	datad => VCC,
	cin => \Touch_Panel_unit|TP_busy_timeout[0]~10\,
	combout => \Touch_Panel_unit|TP_busy_timeout[1]~11_combout\,
	cout => \Touch_Panel_unit|TP_busy_timeout[1]~12\);

-- Location: LCCOMB_X36_Y16_N26
\Touch_Panel_unit|TP_busy_timeout[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_busy_timeout[0]~8_combout\ = ((!\Touch_Panel_unit|TP_state.S_TP_RECV_X~regout\ & !\Touch_Panel_unit|TP_state.S_TP_RECV_Y~regout\)) # (!\GPIO_0[2]~2\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GPIO_0[2]~2\,
	datac => \Touch_Panel_unit|TP_state.S_TP_RECV_X~regout\,
	datad => \Touch_Panel_unit|TP_state.S_TP_RECV_Y~regout\,
	combout => \Touch_Panel_unit|TP_busy_timeout[0]~8_combout\);

-- Location: LCCOMB_X35_Y16_N2
\Touch_Panel_unit|WideNor0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|WideNor0~0_combout\ = (!\Touch_Panel_unit|TP_state.S_TP_ENABLE~regout\ & \Touch_Panel_unit|TP_state.S_TP_IDLE~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_state.S_TP_ENABLE~regout\,
	datad => \Touch_Panel_unit|TP_state.S_TP_IDLE~regout\,
	combout => \Touch_Panel_unit|WideNor0~0_combout\);

-- Location: LCCOMB_X34_Y18_N28
\Touch_Panel_unit|TP_busy_timeout[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_busy_timeout[0]~7_combout\ = (!\Touch_Panel_unit|TP_state.S_TP_BACKOFF~regout\ & (!\Touch_Panel_unit|TP_state.S_TP_ZF_X~regout\ & (!\Touch_Panel_unit|TP_state.S_TP_DEBOUNCE~regout\ & !\Touch_Panel_unit|TP_state.S_TP_ZF_Y~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_state.S_TP_BACKOFF~regout\,
	datab => \Touch_Panel_unit|TP_state.S_TP_ZF_X~regout\,
	datac => \Touch_Panel_unit|TP_state.S_TP_DEBOUNCE~regout\,
	datad => \Touch_Panel_unit|TP_state.S_TP_ZF_Y~regout\,
	combout => \Touch_Panel_unit|TP_busy_timeout[0]~7_combout\);

-- Location: LCCOMB_X36_Y16_N14
\Touch_Panel_unit|TP_busy_timeout[0]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_busy_timeout[0]~19_combout\ = (!\Touch_Panel_unit|TP_state.S_TP_SYNC_1K~regout\ & (\Touch_Panel_unit|TP_busy_timeout[0]~8_combout\ & (\Touch_Panel_unit|WideNor0~0_combout\ & \Touch_Panel_unit|TP_busy_timeout[0]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_state.S_TP_SYNC_1K~regout\,
	datab => \Touch_Panel_unit|TP_busy_timeout[0]~8_combout\,
	datac => \Touch_Panel_unit|WideNor0~0_combout\,
	datad => \Touch_Panel_unit|TP_busy_timeout[0]~7_combout\,
	combout => \Touch_Panel_unit|TP_busy_timeout[0]~19_combout\);

-- Location: LCCOMB_X36_Y16_N2
\Touch_Panel_unit|TP_busy_timeout[4]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_busy_timeout[4]~22_combout\ = (\Touch_Panel_unit|TP_data_count[3]~4_combout\ & (\Touch_Panel_unit|TP_SCLK_O~regout\ & ((\Touch_Panel_unit|TP_state.S_TP_SEND_Y~regout\) # (\Touch_Panel_unit|TP_state.S_TP_SEND_X~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_data_count[3]~4_combout\,
	datab => \Touch_Panel_unit|TP_state.S_TP_SEND_Y~regout\,
	datac => \Touch_Panel_unit|TP_SCLK_O~regout\,
	datad => \Touch_Panel_unit|TP_state.S_TP_SEND_X~regout\,
	combout => \Touch_Panel_unit|TP_busy_timeout[4]~22_combout\);

-- Location: LCCOMB_X35_Y16_N22
\Touch_Panel_unit|TP_busy_timeout[3]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_busy_timeout[3]~15_combout\ = (\Touch_Panel_unit|TP_busy_timeout\(3) & (!\Touch_Panel_unit|TP_busy_timeout[2]~14\)) # (!\Touch_Panel_unit|TP_busy_timeout\(3) & ((\Touch_Panel_unit|TP_busy_timeout[2]~14\) # (GND)))
-- \Touch_Panel_unit|TP_busy_timeout[3]~16\ = CARRY((!\Touch_Panel_unit|TP_busy_timeout[2]~14\) # (!\Touch_Panel_unit|TP_busy_timeout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Touch_Panel_unit|TP_busy_timeout\(3),
	datad => VCC,
	cin => \Touch_Panel_unit|TP_busy_timeout[2]~14\,
	combout => \Touch_Panel_unit|TP_busy_timeout[3]~15_combout\,
	cout => \Touch_Panel_unit|TP_busy_timeout[3]~16\);

-- Location: LCCOMB_X35_Y16_N24
\Touch_Panel_unit|TP_busy_timeout[4]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_busy_timeout[4]~17_combout\ = \Touch_Panel_unit|TP_busy_timeout\(4) $ (!\Touch_Panel_unit|TP_busy_timeout[3]~16\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_busy_timeout\(4),
	cin => \Touch_Panel_unit|TP_busy_timeout[3]~16\,
	combout => \Touch_Panel_unit|TP_busy_timeout[4]~17_combout\);

-- Location: LCFF_X35_Y16_N25
\Touch_Panel_unit|TP_busy_timeout[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Touch_Panel_unit|TP_busy_timeout[4]~17_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	sclr => \Touch_Panel_unit|TP_busy_timeout[0]~19_combout\,
	ena => \Touch_Panel_unit|TP_busy_timeout[4]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Touch_Panel_unit|TP_busy_timeout\(4));

-- Location: LCCOMB_X36_Y16_N20
\Touch_Panel_unit|TP_busy_timeout[4]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_busy_timeout[4]~20_combout\ = (\GPIO_0[2]~2\ & (((!\Touch_Panel_unit|TP_busy_timeout\(4))) # (!\Touch_Panel_unit|Equal3~0_combout\))) # (!\GPIO_0[2]~2\ & (((!\Touch_Panel_unit|TP_SCLK_O~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|Equal3~0_combout\,
	datab => \GPIO_0[2]~2\,
	datac => \Touch_Panel_unit|TP_SCLK_O~regout\,
	datad => \Touch_Panel_unit|TP_busy_timeout\(4),
	combout => \Touch_Panel_unit|TP_busy_timeout[4]~20_combout\);

-- Location: LCCOMB_X33_Y18_N30
\Touch_Panel_unit|TP_data_count[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_data_count[3]~2_combout\ = (\Touch_Panel_unit|TP_state.S_TP_IDLE~regout\ & (!\Touch_Panel_unit|TP_state.S_TP_ENABLE~regout\ & \Touch_Panel_unit|En_SPI_Clock~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Touch_Panel_unit|TP_state.S_TP_IDLE~regout\,
	datac => \Touch_Panel_unit|TP_state.S_TP_ENABLE~regout\,
	datad => \Touch_Panel_unit|En_SPI_Clock~regout\,
	combout => \Touch_Panel_unit|TP_data_count[3]~2_combout\);

-- Location: LCCOMB_X36_Y16_N30
\Touch_Panel_unit|TP_busy_timeout[4]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_busy_timeout[4]~21_combout\ = (\Touch_Panel_unit|TP_data_count[3]~2_combout\ & ((\Touch_Panel_unit|TP_busy_timeout[4]~22_combout\) # ((!\Touch_Panel_unit|TP_data_count[3]~3_combout\ & 
-- \Touch_Panel_unit|TP_busy_timeout[4]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_data_count[3]~3_combout\,
	datab => \Touch_Panel_unit|TP_busy_timeout[4]~22_combout\,
	datac => \Touch_Panel_unit|TP_busy_timeout[4]~20_combout\,
	datad => \Touch_Panel_unit|TP_data_count[3]~2_combout\,
	combout => \Touch_Panel_unit|TP_busy_timeout[4]~21_combout\);

-- Location: LCFF_X35_Y16_N19
\Touch_Panel_unit|TP_busy_timeout[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Touch_Panel_unit|TP_busy_timeout[1]~11_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	sclr => \Touch_Panel_unit|TP_busy_timeout[0]~19_combout\,
	ena => \Touch_Panel_unit|TP_busy_timeout[4]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Touch_Panel_unit|TP_busy_timeout\(1));

-- Location: LCCOMB_X35_Y16_N20
\Touch_Panel_unit|TP_busy_timeout[2]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_busy_timeout[2]~13_combout\ = (\Touch_Panel_unit|TP_busy_timeout\(2) & (\Touch_Panel_unit|TP_busy_timeout[1]~12\ $ (GND))) # (!\Touch_Panel_unit|TP_busy_timeout\(2) & (!\Touch_Panel_unit|TP_busy_timeout[1]~12\ & VCC))
-- \Touch_Panel_unit|TP_busy_timeout[2]~14\ = CARRY((\Touch_Panel_unit|TP_busy_timeout\(2) & !\Touch_Panel_unit|TP_busy_timeout[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_busy_timeout\(2),
	datad => VCC,
	cin => \Touch_Panel_unit|TP_busy_timeout[1]~12\,
	combout => \Touch_Panel_unit|TP_busy_timeout[2]~13_combout\,
	cout => \Touch_Panel_unit|TP_busy_timeout[2]~14\);

-- Location: LCFF_X35_Y16_N23
\Touch_Panel_unit|TP_busy_timeout[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Touch_Panel_unit|TP_busy_timeout[3]~15_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	sclr => \Touch_Panel_unit|TP_busy_timeout[0]~19_combout\,
	ena => \Touch_Panel_unit|TP_busy_timeout[4]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Touch_Panel_unit|TP_busy_timeout\(3));

-- Location: LCFF_X35_Y16_N21
\Touch_Panel_unit|TP_busy_timeout[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Touch_Panel_unit|TP_busy_timeout[2]~13_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	sclr => \Touch_Panel_unit|TP_busy_timeout[0]~19_combout\,
	ena => \Touch_Panel_unit|TP_busy_timeout[4]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Touch_Panel_unit|TP_busy_timeout\(2));

-- Location: LCCOMB_X35_Y16_N8
\Touch_Panel_unit|Equal3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|Equal3~0_combout\ = (\Touch_Panel_unit|TP_busy_timeout\(0) & (\Touch_Panel_unit|TP_busy_timeout\(3) & (\Touch_Panel_unit|TP_busy_timeout\(2) & \Touch_Panel_unit|TP_busy_timeout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_busy_timeout\(0),
	datab => \Touch_Panel_unit|TP_busy_timeout\(3),
	datac => \Touch_Panel_unit|TP_busy_timeout\(2),
	datad => \Touch_Panel_unit|TP_busy_timeout\(1),
	combout => \Touch_Panel_unit|Equal3~0_combout\);

-- Location: LCCOMB_X35_Y16_N26
\Touch_Panel_unit|TP_state~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_state~80_combout\ = (((\Touch_Panel_unit|TP_data_count[3]~3_combout\) # (!\Touch_Panel_unit|TP_busy_timeout\(4))) # (!\Touch_Panel_unit|Equal3~0_combout\)) # (!\GPIO_0[2]~2\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GPIO_0[2]~2\,
	datab => \Touch_Panel_unit|Equal3~0_combout\,
	datac => \Touch_Panel_unit|TP_busy_timeout\(4),
	datad => \Touch_Panel_unit|TP_data_count[3]~3_combout\,
	combout => \Touch_Panel_unit|TP_state~80_combout\);

-- Location: LCCOMB_X35_Y16_N4
\Touch_Panel_unit|TP_state~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_state~81_combout\ = (\Touch_Panel_unit|TP_state~80_combout\ & (((!\Touch_Panel_unit|TP_state.S_TP_RECV_X~regout\ & !\Touch_Panel_unit|TP_state.S_TP_RECV_Y~regout\)) # (!\Touch_Panel_unit|TP_data_count[3]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_state.S_TP_RECV_X~regout\,
	datab => \Touch_Panel_unit|TP_state.S_TP_RECV_Y~regout\,
	datac => \Touch_Panel_unit|TP_data_count[3]~5_combout\,
	datad => \Touch_Panel_unit|TP_state~80_combout\,
	combout => \Touch_Panel_unit|TP_state~81_combout\);

-- Location: LCCOMB_X33_Y16_N4
\Touch_Panel_unit|TP_data_count[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_data_count[3]~4_combout\ = (\Touch_Panel_unit|TP_data_count\(2) & (!\Touch_Panel_unit|TP_data_count\(3) & (\Touch_Panel_unit|TP_data_count\(0) & \Touch_Panel_unit|TP_data_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_data_count\(2),
	datab => \Touch_Panel_unit|TP_data_count\(3),
	datac => \Touch_Panel_unit|TP_data_count\(0),
	datad => \Touch_Panel_unit|TP_data_count\(1),
	combout => \Touch_Panel_unit|TP_data_count[3]~4_combout\);

-- Location: LCCOMB_X36_Y16_N12
\Touch_Panel_unit|TP_state~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_state~60_combout\ = ((!\Touch_Panel_unit|TP_state.S_TP_SEND_X~regout\ & !\Touch_Panel_unit|TP_state.S_TP_SEND_Y~regout\)) # (!\Touch_Panel_unit|TP_data_count[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Touch_Panel_unit|TP_state.S_TP_SEND_X~regout\,
	datac => \Touch_Panel_unit|TP_state.S_TP_SEND_Y~regout\,
	datad => \Touch_Panel_unit|TP_data_count[3]~4_combout\,
	combout => \Touch_Panel_unit|TP_state~60_combout\);

-- Location: LCCOMB_X36_Y16_N8
\Touch_Panel_unit|TP_state~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_state~82_combout\ = (\Touch_Panel_unit|TP_state~60_combout\ & ((\Touch_Panel_unit|TP_state.S_TP_DEBOUNCE~regout\ & (!\Touch_Panel_unit|TP_penirq~regout\)) # (!\Touch_Panel_unit|TP_state.S_TP_DEBOUNCE~regout\ & 
-- ((\Touch_Panel_unit|Equal6~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_penirq~regout\,
	datab => \Touch_Panel_unit|TP_state.S_TP_DEBOUNCE~regout\,
	datac => \Touch_Panel_unit|Equal6~0_combout\,
	datad => \Touch_Panel_unit|TP_state~60_combout\,
	combout => \Touch_Panel_unit|TP_state~82_combout\);

-- Location: LCCOMB_X35_Y16_N14
\Touch_Panel_unit|TP_state~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_state~77_combout\ = (!\Touch_Panel_unit|TP_data_count[3]~3_combout\ & (((\Touch_Panel_unit|TP_busy_timeout\(4) & \Touch_Panel_unit|Equal3~0_combout\)) # (!\GPIO_0[2]~2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_busy_timeout\(4),
	datab => \GPIO_0[2]~2\,
	datac => \Touch_Panel_unit|Equal3~0_combout\,
	datad => \Touch_Panel_unit|TP_data_count[3]~3_combout\,
	combout => \Touch_Panel_unit|TP_state~77_combout\);

-- Location: LCCOMB_X35_Y16_N28
\Touch_Panel_unit|TP_state~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_state~78_combout\ = ((!\GPIO_0[2]~2\ & \Touch_Panel_unit|TP_state~59_combout\)) # (!\Touch_Panel_unit|TP_state~77_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GPIO_0[2]~2\,
	datac => \Touch_Panel_unit|TP_state~77_combout\,
	datad => \Touch_Panel_unit|TP_state~59_combout\,
	combout => \Touch_Panel_unit|TP_state~78_combout\);

-- Location: LCCOMB_X35_Y16_N6
\Touch_Panel_unit|TP_state~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_state~79_combout\ = (!\Touch_Panel_unit|TP_state.S_TP_DEBOUNCE~regout\ & (\Touch_Panel_unit|TP_state~43_combout\ & (\Touch_Panel_unit|TP_state~60_combout\ & \Touch_Panel_unit|TP_state~78_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_state.S_TP_DEBOUNCE~regout\,
	datab => \Touch_Panel_unit|TP_state~43_combout\,
	datac => \Touch_Panel_unit|TP_state~60_combout\,
	datad => \Touch_Panel_unit|TP_state~78_combout\,
	combout => \Touch_Panel_unit|TP_state~79_combout\);

-- Location: LCCOMB_X35_Y16_N10
\Touch_Panel_unit|TP_state~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_state~83_combout\ = ((\Touch_Panel_unit|TP_state~79_combout\) # ((\Touch_Panel_unit|TP_state~81_combout\ & \Touch_Panel_unit|TP_state~82_combout\))) # (!\Touch_Panel_unit|TP_state.S_TP_IDLE~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_state.S_TP_IDLE~regout\,
	datab => \Touch_Panel_unit|TP_state~81_combout\,
	datac => \Touch_Panel_unit|TP_state~82_combout\,
	datad => \Touch_Panel_unit|TP_state~79_combout\,
	combout => \Touch_Panel_unit|TP_state~83_combout\);

-- Location: LCCOMB_X35_Y17_N26
\Touch_Panel_unit|TP_state~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_state~62_combout\ = (!\Touch_Panel_unit|TP_state.S_TP_DEBOUNCE~regout\ & (!\Touch_Panel_unit|TP_state.S_TP_SYNC_1K~regout\ & !\Touch_Panel_unit|TP_state.S_TP_BACKOFF~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_state.S_TP_DEBOUNCE~regout\,
	datac => \Touch_Panel_unit|TP_state.S_TP_SYNC_1K~regout\,
	datad => \Touch_Panel_unit|TP_state.S_TP_BACKOFF~regout\,
	combout => \Touch_Panel_unit|TP_state~62_combout\);

-- Location: LCCOMB_X35_Y17_N16
\Touch_Panel_unit|TP_state~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_state~71_combout\ = (\Touch_Panel_unit|TP_state~62_combout\) # (((\Touch_Panel_unit|TP_penirq~regout\ & \Touch_Panel_unit|TP_data_reg[11]~4_combout\)) # (!\Touch_Panel_unit|TP_data_count[3]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_penirq~regout\,
	datab => \Touch_Panel_unit|TP_state~62_combout\,
	datac => \Touch_Panel_unit|TP_data_reg[11]~4_combout\,
	datad => \Touch_Panel_unit|TP_data_count[3]~2_combout\,
	combout => \Touch_Panel_unit|TP_state~71_combout\);

-- Location: LCCOMB_X35_Y18_N26
\Touch_Panel_unit|TP_state~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_state~61_combout\ = (\Touch_Panel_unit|TP_SCLK_O~regout\) # ((!\Touch_Panel_unit|TP_state.S_TP_SEND_X~regout\ & !\Touch_Panel_unit|TP_state.S_TP_SEND_Y~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Touch_Panel_unit|TP_state.S_TP_SEND_X~regout\,
	datac => \Touch_Panel_unit|TP_state.S_TP_SEND_Y~regout\,
	datad => \Touch_Panel_unit|TP_SCLK_O~regout\,
	combout => \Touch_Panel_unit|TP_state~61_combout\);

-- Location: LCCOMB_X35_Y18_N6
\Touch_Panel_unit|TP_state~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_state~72_combout\ = ((\Touch_Panel_unit|TP_state.S_TP_SEND_X~regout\) # ((\Touch_Panel_unit|TP_state.S_TP_SEND_Y~regout\) # (!\Touch_Panel_unit|TP_data_count[3]~3_combout\))) # (!\Touch_Panel_unit|TP_state~43_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_state~43_combout\,
	datab => \Touch_Panel_unit|TP_state.S_TP_SEND_X~regout\,
	datac => \Touch_Panel_unit|TP_data_count[3]~3_combout\,
	datad => \Touch_Panel_unit|TP_state.S_TP_SEND_Y~regout\,
	combout => \Touch_Panel_unit|TP_state~72_combout\);

-- Location: LCCOMB_X35_Y18_N16
\Touch_Panel_unit|TP_state~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_state~73_combout\ = (\Touch_Panel_unit|En_SPI_Clock~regout\ & (\Touch_Panel_unit|TP_state~61_combout\ & (!\Touch_Panel_unit|TP_data_count[3]~9_combout\ & \Touch_Panel_unit|TP_state~72_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|En_SPI_Clock~regout\,
	datab => \Touch_Panel_unit|TP_state~61_combout\,
	datac => \Touch_Panel_unit|TP_data_count[3]~9_combout\,
	datad => \Touch_Panel_unit|TP_state~72_combout\,
	combout => \Touch_Panel_unit|TP_state~73_combout\);

-- Location: LCCOMB_X36_Y16_N10
\Touch_Panel_unit|TP_state~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_state~74_combout\ = ((\GPIO_0[2]~2\ & (\Touch_Panel_unit|En_SPI_Clock~regout\ & !\Touch_Panel_unit|TP_data_count[3]~3_combout\))) # (!\Touch_Panel_unit|TP_state.S_TP_IDLE~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GPIO_0[2]~2\,
	datab => \Touch_Panel_unit|TP_state.S_TP_IDLE~regout\,
	datac => \Touch_Panel_unit|En_SPI_Clock~regout\,
	datad => \Touch_Panel_unit|TP_data_count[3]~3_combout\,
	combout => \Touch_Panel_unit|TP_state~74_combout\);

-- Location: LCCOMB_X35_Y17_N14
\Touch_Panel_unit|TP_state~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_state~75_combout\ = (\Touch_Panel_unit|TP_state~73_combout\) # ((\Touch_Panel_unit|TP_state~74_combout\) # ((\Touch_Panel_unit|TP_state~44_combout\ & \Touch_Panel_unit|En_SPI_Clock~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_state~44_combout\,
	datab => \Touch_Panel_unit|En_SPI_Clock~regout\,
	datac => \Touch_Panel_unit|TP_state~73_combout\,
	datad => \Touch_Panel_unit|TP_state~74_combout\,
	combout => \Touch_Panel_unit|TP_state~75_combout\);

-- Location: LCCOMB_X35_Y17_N28
\Touch_Panel_unit|TP_state~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_state~76_combout\ = (!\Touch_Panel_unit|TP_state~75_combout\ & ((\Touch_Panel_unit|TP_state~70_combout\) # ((!\Touch_Panel_unit|TP_state.S_TP_ENABLE~regout\ & \Touch_Panel_unit|TP_state~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_state~70_combout\,
	datab => \Touch_Panel_unit|TP_state.S_TP_ENABLE~regout\,
	datac => \Touch_Panel_unit|TP_state~71_combout\,
	datad => \Touch_Panel_unit|TP_state~75_combout\,
	combout => \Touch_Panel_unit|TP_state~76_combout\);

-- Location: LCCOMB_X35_Y17_N6
\Touch_Panel_unit|TP_state~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_state~84_combout\ = (!\Touch_Panel_unit|TP_state~76_combout\ & (((\Touch_Panel_unit|Touch_En~3_combout\) # (!\Touch_Panel_unit|TP_state~83_combout\)) # (!\Touch_Panel_unit|TP_state~75_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_state~75_combout\,
	datab => \Touch_Panel_unit|Touch_En~3_combout\,
	datac => \Touch_Panel_unit|TP_state~83_combout\,
	datad => \Touch_Panel_unit|TP_state~76_combout\,
	combout => \Touch_Panel_unit|TP_state~84_combout\);

-- Location: LCFF_X35_Y17_N27
\Touch_Panel_unit|TP_state.S_TP_SYNC_1K\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \Touch_Panel_unit|TP_state.S_TP_ENABLE~regout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	sload => VCC,
	ena => \Touch_Panel_unit|TP_state~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Touch_Panel_unit|TP_state.S_TP_SYNC_1K~regout\);

-- Location: LCCOMB_X34_Y17_N14
\Touch_Panel_unit|Selector23~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|Selector23~1_combout\ = (\Touch_Panel_unit|Selector23~0_combout\ & (!\Touch_Panel_unit|TP_data_reg[11]~8_combout\ & ((!\Touch_Panel_unit|TP_state.S_TP_BACKOFF~regout\) # (!\Touch_Panel_unit|Equal7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|Selector23~0_combout\,
	datab => \Touch_Panel_unit|Equal7~4_combout\,
	datac => \Touch_Panel_unit|TP_state.S_TP_BACKOFF~regout\,
	datad => \Touch_Panel_unit|TP_data_reg[11]~8_combout\,
	combout => \Touch_Panel_unit|Selector23~1_combout\);

-- Location: LCCOMB_X33_Y16_N24
\Touch_Panel_unit|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|Add1~0_combout\ = (\Touch_Panel_unit|TP_data_count\(0) & \Touch_Panel_unit|TP_data_count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Touch_Panel_unit|TP_data_count\(0),
	datad => \Touch_Panel_unit|TP_data_count\(1),
	combout => \Touch_Panel_unit|Add1~0_combout\);

-- Location: LCCOMB_X33_Y18_N26
\Touch_Panel_unit|TP_data_reg[11]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_data_reg[11]~2_combout\ = (!\Touch_Panel_unit|TP_SCLK_O~regout\ & (!\Touch_Panel_unit|TP_data_count\(3) & (!\Touch_Panel_unit|TP_data_count\(2) & \Touch_Panel_unit|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_SCLK_O~regout\,
	datab => \Touch_Panel_unit|TP_data_count\(3),
	datac => \Touch_Panel_unit|TP_data_count\(2),
	datad => \Touch_Panel_unit|Add1~0_combout\,
	combout => \Touch_Panel_unit|TP_data_reg[11]~2_combout\);

-- Location: LCCOMB_X33_Y18_N14
\Touch_Panel_unit|TP_data_reg[11]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_data_reg[11]~14_combout\ = (\Touch_Panel_unit|TP_data_reg[11]~7_combout\ & ((\Touch_Panel_unit|TP_data_reg[11]~2_combout\) # ((!\Touch_Panel_unit|TP_state.S_TP_ZF_X~regout\ & !\Touch_Panel_unit|TP_state.S_TP_ZF_Y~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_state.S_TP_ZF_X~regout\,
	datab => \Touch_Panel_unit|TP_state.S_TP_ZF_Y~regout\,
	datac => \Touch_Panel_unit|TP_data_reg[11]~7_combout\,
	datad => \Touch_Panel_unit|TP_data_reg[11]~2_combout\,
	combout => \Touch_Panel_unit|TP_data_reg[11]~14_combout\);

-- Location: LCCOMB_X33_Y18_N12
\Touch_Panel_unit|TP_data_reg[11]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_data_reg[11]~10_combout\ = (\Touch_Panel_unit|TP_state~43_combout\) # ((!\Touch_Panel_unit|TP_data_count\(2) & (!\Touch_Panel_unit|TP_data_count\(3) & \Touch_Panel_unit|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_data_count\(2),
	datab => \Touch_Panel_unit|TP_data_count\(3),
	datac => \Touch_Panel_unit|TP_state~43_combout\,
	datad => \Touch_Panel_unit|Add1~0_combout\,
	combout => \Touch_Panel_unit|TP_data_reg[11]~10_combout\);

-- Location: LCCOMB_X33_Y18_N22
\Touch_Panel_unit|TP_data_reg[11]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_data_reg[11]~11_combout\ = (\Touch_Panel_unit|TP_SCLK_O~regout\ & ((\Touch_Panel_unit|TP_state~43_combout\) # ((!\Touch_Panel_unit|Equal6~0_combout\)))) # (!\Touch_Panel_unit|TP_SCLK_O~regout\ & 
-- (((\Touch_Panel_unit|TP_data_reg[11]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_SCLK_O~regout\,
	datab => \Touch_Panel_unit|TP_state~43_combout\,
	datac => \Touch_Panel_unit|Equal6~0_combout\,
	datad => \Touch_Panel_unit|TP_data_reg[11]~10_combout\,
	combout => \Touch_Panel_unit|TP_data_reg[11]~11_combout\);

-- Location: LCCOMB_X33_Y18_N16
\Touch_Panel_unit|TP_data_reg[11]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_data_reg[11]~12_combout\ = (\Touch_Panel_unit|TP_data_count[3]~2_combout\ & ((\Touch_Panel_unit|TP_data_reg[11]~14_combout\) # ((!\Touch_Panel_unit|TP_data_reg[11]~9_combout\ & \Touch_Panel_unit|TP_data_reg[11]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_data_reg[11]~9_combout\,
	datab => \Touch_Panel_unit|TP_data_count[3]~2_combout\,
	datac => \Touch_Panel_unit|TP_data_reg[11]~14_combout\,
	datad => \Touch_Panel_unit|TP_data_reg[11]~11_combout\,
	combout => \Touch_Panel_unit|TP_data_reg[11]~12_combout\);

-- Location: LCFF_X34_Y17_N15
\Touch_Panel_unit|TP_data_reg[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Touch_Panel_unit|Selector23~1_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \Touch_Panel_unit|TP_data_reg[11]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Touch_Panel_unit|TP_data_reg\(4));

-- Location: LCCOMB_X36_Y17_N6
\Touch_Panel_unit|Selector22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|Selector22~0_combout\ = (!\Touch_Panel_unit|TP_data_reg[11]~8_combout\ & ((\Touch_Panel_unit|TP_data_reg[11]~13_combout\ & (\Touch_Panel_unit|Add3~10_combout\)) # (!\Touch_Panel_unit|TP_data_reg[11]~13_combout\ & 
-- ((\Touch_Panel_unit|TP_data_reg\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|Add3~10_combout\,
	datab => \Touch_Panel_unit|TP_data_reg[11]~13_combout\,
	datac => \Touch_Panel_unit|TP_data_reg\(4),
	datad => \Touch_Panel_unit|TP_data_reg[11]~8_combout\,
	combout => \Touch_Panel_unit|Selector22~0_combout\);

-- Location: LCCOMB_X36_Y17_N14
\Touch_Panel_unit|Selector22~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|Selector22~1_combout\ = (!\Touch_Panel_unit|TP_data_reg[11]~5_combout\ & ((\Touch_Panel_unit|TP_data_reg[11]~3_combout\) # ((\Touch_Panel_unit|TP_state.S_TP_SYNC_1K~regout\) # (\Touch_Panel_unit|Selector22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_data_reg[11]~5_combout\,
	datab => \Touch_Panel_unit|TP_data_reg[11]~3_combout\,
	datac => \Touch_Panel_unit|TP_state.S_TP_SYNC_1K~regout\,
	datad => \Touch_Panel_unit|Selector22~0_combout\,
	combout => \Touch_Panel_unit|Selector22~1_combout\);

-- Location: LCFF_X36_Y17_N15
\Touch_Panel_unit|TP_data_reg[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Touch_Panel_unit|Selector22~1_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \Touch_Panel_unit|TP_data_reg[11]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Touch_Panel_unit|TP_data_reg\(5));

-- Location: LCCOMB_X35_Y17_N24
\Touch_Panel_unit|Selector24~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|Selector24~1_combout\ = (\Touch_Panel_unit|Selector24~0_combout\ & (!\Touch_Panel_unit|TP_data_reg[11]~8_combout\ & ((!\Touch_Panel_unit|Equal7~4_combout\) # (!\Touch_Panel_unit|TP_state.S_TP_BACKOFF~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|Selector24~0_combout\,
	datab => \Touch_Panel_unit|TP_state.S_TP_BACKOFF~regout\,
	datac => \Touch_Panel_unit|Equal7~4_combout\,
	datad => \Touch_Panel_unit|TP_data_reg[11]~8_combout\,
	combout => \Touch_Panel_unit|Selector24~1_combout\);

-- Location: LCFF_X35_Y17_N25
\Touch_Panel_unit|TP_data_reg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Touch_Panel_unit|Selector24~1_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \Touch_Panel_unit|TP_data_reg[11]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Touch_Panel_unit|TP_data_reg\(3));

-- Location: LCCOMB_X35_Y17_N4
\Touch_Panel_unit|Selector26~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|Selector26~1_combout\ = (\Touch_Panel_unit|Selector26~0_combout\ & (!\Touch_Panel_unit|TP_data_reg[11]~8_combout\ & ((!\Touch_Panel_unit|Equal7~4_combout\) # (!\Touch_Panel_unit|TP_state.S_TP_BACKOFF~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|Selector26~0_combout\,
	datab => \Touch_Panel_unit|TP_state.S_TP_BACKOFF~regout\,
	datac => \Touch_Panel_unit|Equal7~4_combout\,
	datad => \Touch_Panel_unit|TP_data_reg[11]~8_combout\,
	combout => \Touch_Panel_unit|Selector26~1_combout\);

-- Location: LCFF_X35_Y17_N5
\Touch_Panel_unit|TP_data_reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Touch_Panel_unit|Selector26~1_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \Touch_Panel_unit|TP_data_reg[11]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Touch_Panel_unit|TP_data_reg\(1));

-- Location: LCCOMB_X33_Y17_N8
\Touch_Panel_unit|Add3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|Add3~0_combout\ = \Touch_Panel_unit|TP_data_reg\(0) $ (VCC)
-- \Touch_Panel_unit|Add3~1\ = CARRY(\Touch_Panel_unit|TP_data_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_data_reg\(0),
	datad => VCC,
	combout => \Touch_Panel_unit|Add3~0_combout\,
	cout => \Touch_Panel_unit|Add3~1\);

-- Location: LCCOMB_X33_Y17_N12
\Touch_Panel_unit|Add3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|Add3~4_combout\ = (\Touch_Panel_unit|TP_data_reg\(2) & (\Touch_Panel_unit|Add3~3\ $ (GND))) # (!\Touch_Panel_unit|TP_data_reg\(2) & (!\Touch_Panel_unit|Add3~3\ & VCC))
-- \Touch_Panel_unit|Add3~5\ = CARRY((\Touch_Panel_unit|TP_data_reg\(2) & !\Touch_Panel_unit|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Touch_Panel_unit|TP_data_reg\(2),
	datad => VCC,
	cin => \Touch_Panel_unit|Add3~3\,
	combout => \Touch_Panel_unit|Add3~4_combout\,
	cout => \Touch_Panel_unit|Add3~5\);

-- Location: LCCOMB_X33_Y17_N20
\Touch_Panel_unit|Add3~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|Add3~12_combout\ = (\Touch_Panel_unit|TP_data_reg\(6) & (\Touch_Panel_unit|Add3~11\ $ (GND))) # (!\Touch_Panel_unit|TP_data_reg\(6) & (!\Touch_Panel_unit|Add3~11\ & VCC))
-- \Touch_Panel_unit|Add3~13\ = CARRY((\Touch_Panel_unit|TP_data_reg\(6) & !\Touch_Panel_unit|Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Touch_Panel_unit|TP_data_reg\(6),
	datad => VCC,
	cin => \Touch_Panel_unit|Add3~11\,
	combout => \Touch_Panel_unit|Add3~12_combout\,
	cout => \Touch_Panel_unit|Add3~13\);

-- Location: LCCOMB_X36_Y17_N20
\Touch_Panel_unit|Selector21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|Selector21~0_combout\ = (!\Touch_Panel_unit|TP_state.S_TP_SYNC_1K~regout\ & ((\Touch_Panel_unit|TP_data_reg[11]~13_combout\ & ((\Touch_Panel_unit|Add3~12_combout\))) # (!\Touch_Panel_unit|TP_data_reg[11]~13_combout\ & 
-- (\Touch_Panel_unit|TP_data_reg\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_state.S_TP_SYNC_1K~regout\,
	datab => \Touch_Panel_unit|TP_data_reg\(5),
	datac => \Touch_Panel_unit|Add3~12_combout\,
	datad => \Touch_Panel_unit|TP_data_reg[11]~13_combout\,
	combout => \Touch_Panel_unit|Selector21~0_combout\);

-- Location: LCCOMB_X36_Y17_N4
\Touch_Panel_unit|Selector21~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|Selector21~1_combout\ = (\Touch_Panel_unit|Selector21~0_combout\ & (!\Touch_Panel_unit|TP_data_reg[11]~8_combout\ & ((!\Touch_Panel_unit|TP_state.S_TP_BACKOFF~regout\) # (!\Touch_Panel_unit|Equal7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|Equal7~4_combout\,
	datab => \Touch_Panel_unit|TP_state.S_TP_BACKOFF~regout\,
	datac => \Touch_Panel_unit|Selector21~0_combout\,
	datad => \Touch_Panel_unit|TP_data_reg[11]~8_combout\,
	combout => \Touch_Panel_unit|Selector21~1_combout\);

-- Location: LCFF_X36_Y17_N5
\Touch_Panel_unit|TP_data_reg[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Touch_Panel_unit|Selector21~1_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \Touch_Panel_unit|TP_data_reg[11]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Touch_Panel_unit|TP_data_reg\(6));

-- Location: LCCOMB_X33_Y17_N22
\Touch_Panel_unit|Add3~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|Add3~14_combout\ = (\Touch_Panel_unit|TP_data_reg\(7) & (!\Touch_Panel_unit|Add3~13\)) # (!\Touch_Panel_unit|TP_data_reg\(7) & ((\Touch_Panel_unit|Add3~13\) # (GND)))
-- \Touch_Panel_unit|Add3~15\ = CARRY((!\Touch_Panel_unit|Add3~13\) # (!\Touch_Panel_unit|TP_data_reg\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_data_reg\(7),
	datad => VCC,
	cin => \Touch_Panel_unit|Add3~13\,
	combout => \Touch_Panel_unit|Add3~14_combout\,
	cout => \Touch_Panel_unit|Add3~15\);

-- Location: LCCOMB_X33_Y17_N24
\Touch_Panel_unit|Add3~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|Add3~16_combout\ = (\Touch_Panel_unit|TP_data_reg\(8) & (\Touch_Panel_unit|Add3~15\ $ (GND))) # (!\Touch_Panel_unit|TP_data_reg\(8) & (!\Touch_Panel_unit|Add3~15\ & VCC))
-- \Touch_Panel_unit|Add3~17\ = CARRY((\Touch_Panel_unit|TP_data_reg\(8) & !\Touch_Panel_unit|Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_data_reg\(8),
	datad => VCC,
	cin => \Touch_Panel_unit|Add3~15\,
	combout => \Touch_Panel_unit|Add3~16_combout\,
	cout => \Touch_Panel_unit|Add3~17\);

-- Location: LCCOMB_X33_Y17_N26
\Touch_Panel_unit|Add3~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|Add3~18_combout\ = (\Touch_Panel_unit|TP_data_reg\(9) & (!\Touch_Panel_unit|Add3~17\)) # (!\Touch_Panel_unit|TP_data_reg\(9) & ((\Touch_Panel_unit|Add3~17\) # (GND)))
-- \Touch_Panel_unit|Add3~19\ = CARRY((!\Touch_Panel_unit|Add3~17\) # (!\Touch_Panel_unit|TP_data_reg\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_data_reg\(9),
	datad => VCC,
	cin => \Touch_Panel_unit|Add3~17\,
	combout => \Touch_Panel_unit|Add3~18_combout\,
	cout => \Touch_Panel_unit|Add3~19\);

-- Location: LCCOMB_X34_Y17_N22
\Touch_Panel_unit|Selector18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|Selector18~0_combout\ = (!\Touch_Panel_unit|TP_state.S_TP_SYNC_1K~regout\ & ((\Touch_Panel_unit|TP_data_reg[11]~13_combout\ & ((\Touch_Panel_unit|Add3~18_combout\))) # (!\Touch_Panel_unit|TP_data_reg[11]~13_combout\ & 
-- (\Touch_Panel_unit|TP_data_reg\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_data_reg\(8),
	datab => \Touch_Panel_unit|TP_state.S_TP_SYNC_1K~regout\,
	datac => \Touch_Panel_unit|TP_data_reg[11]~13_combout\,
	datad => \Touch_Panel_unit|Add3~18_combout\,
	combout => \Touch_Panel_unit|Selector18~0_combout\);

-- Location: LCCOMB_X34_Y17_N4
\Touch_Panel_unit|Selector18~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|Selector18~1_combout\ = (!\Touch_Panel_unit|TP_data_reg[11]~8_combout\ & (\Touch_Panel_unit|Selector18~0_combout\ & ((!\Touch_Panel_unit|TP_state.S_TP_BACKOFF~regout\) # (!\Touch_Panel_unit|Equal7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_data_reg[11]~8_combout\,
	datab => \Touch_Panel_unit|Equal7~4_combout\,
	datac => \Touch_Panel_unit|TP_state.S_TP_BACKOFF~regout\,
	datad => \Touch_Panel_unit|Selector18~0_combout\,
	combout => \Touch_Panel_unit|Selector18~1_combout\);

-- Location: LCFF_X35_Y17_N23
\Touch_Panel_unit|TP_data_reg[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \Touch_Panel_unit|Selector18~1_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	sload => VCC,
	ena => \Touch_Panel_unit|TP_data_reg[11]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Touch_Panel_unit|TP_data_reg\(9));

-- Location: LCCOMB_X33_Y17_N28
\Touch_Panel_unit|Add3~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|Add3~20_combout\ = (\Touch_Panel_unit|TP_data_reg\(10) & (\Touch_Panel_unit|Add3~19\ $ (GND))) # (!\Touch_Panel_unit|TP_data_reg\(10) & (!\Touch_Panel_unit|Add3~19\ & VCC))
-- \Touch_Panel_unit|Add3~21\ = CARRY((\Touch_Panel_unit|TP_data_reg\(10) & !\Touch_Panel_unit|Add3~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_data_reg\(10),
	datad => VCC,
	cin => \Touch_Panel_unit|Add3~19\,
	combout => \Touch_Panel_unit|Add3~20_combout\,
	cout => \Touch_Panel_unit|Add3~21\);

-- Location: LCCOMB_X34_Y17_N26
\Touch_Panel_unit|Selector17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|Selector17~0_combout\ = (\Touch_Panel_unit|TP_state.S_TP_DEBOUNCE~regout\ & (((\Touch_Panel_unit|Add3~20_combout\)))) # (!\Touch_Panel_unit|TP_state.S_TP_DEBOUNCE~regout\ & ((\Touch_Panel_unit|TP_data_reg[11]~4_combout\ & 
-- ((\Touch_Panel_unit|Add3~20_combout\))) # (!\Touch_Panel_unit|TP_data_reg[11]~4_combout\ & (\Touch_Panel_unit|TP_data_reg\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_state.S_TP_DEBOUNCE~regout\,
	datab => \Touch_Panel_unit|TP_data_reg[11]~4_combout\,
	datac => \Touch_Panel_unit|TP_data_reg\(9),
	datad => \Touch_Panel_unit|Add3~20_combout\,
	combout => \Touch_Panel_unit|Selector17~0_combout\);

-- Location: LCCOMB_X35_Y17_N8
\Touch_Panel_unit|Selector17~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|Selector17~2_combout\ = (\Touch_Panel_unit|TP_data_reg[11]~3_combout\ & (((\Touch_Panel_unit|Selector17~1_combout\ & \Touch_Panel_unit|Selector17~0_combout\)) # (!\Touch_Panel_unit|TP_data_reg[11]~5_combout\))) # 
-- (!\Touch_Panel_unit|TP_data_reg[11]~3_combout\ & (\Touch_Panel_unit|Selector17~1_combout\ & ((\Touch_Panel_unit|Selector17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_data_reg[11]~3_combout\,
	datab => \Touch_Panel_unit|Selector17~1_combout\,
	datac => \Touch_Panel_unit|TP_data_reg[11]~5_combout\,
	datad => \Touch_Panel_unit|Selector17~0_combout\,
	combout => \Touch_Panel_unit|Selector17~2_combout\);

-- Location: LCFF_X35_Y17_N9
\Touch_Panel_unit|TP_data_reg[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Touch_Panel_unit|Selector17~2_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \Touch_Panel_unit|TP_data_reg[11]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Touch_Panel_unit|TP_data_reg\(10));

-- Location: LCCOMB_X34_Y17_N18
\Touch_Panel_unit|Selector16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|Selector16~0_combout\ = (\Touch_Panel_unit|TP_state.S_TP_SYNC_1K~regout\ & (((!\Touch_Panel_unit|TP_state.S_TP_BACKOFF~regout\)) # (!\Touch_Panel_unit|Equal7~4_combout\))) # (!\Touch_Panel_unit|TP_state.S_TP_SYNC_1K~regout\ & 
-- (\Touch_Panel_unit|TP_data_reg[11]~3_combout\ & ((!\Touch_Panel_unit|TP_state.S_TP_BACKOFF~regout\) # (!\Touch_Panel_unit|Equal7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_state.S_TP_SYNC_1K~regout\,
	datab => \Touch_Panel_unit|Equal7~4_combout\,
	datac => \Touch_Panel_unit|TP_state.S_TP_BACKOFF~regout\,
	datad => \Touch_Panel_unit|TP_data_reg[11]~3_combout\,
	combout => \Touch_Panel_unit|Selector16~0_combout\);

-- Location: LCCOMB_X33_Y17_N30
\Touch_Panel_unit|Add3~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|Add3~22_combout\ = \Touch_Panel_unit|TP_data_reg\(11) $ (\Touch_Panel_unit|Add3~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_data_reg\(11),
	cin => \Touch_Panel_unit|Add3~21\,
	combout => \Touch_Panel_unit|Add3~22_combout\);

-- Location: LCCOMB_X34_Y17_N0
\Touch_Panel_unit|Selector16~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|Selector16~1_combout\ = (\Touch_Panel_unit|TP_state.S_TP_DEBOUNCE~regout\ & (((\Touch_Panel_unit|Add3~22_combout\)))) # (!\Touch_Panel_unit|TP_state.S_TP_DEBOUNCE~regout\ & ((\Touch_Panel_unit|TP_data_reg[11]~4_combout\ & 
-- ((\Touch_Panel_unit|Add3~22_combout\))) # (!\Touch_Panel_unit|TP_data_reg[11]~4_combout\ & (\Touch_Panel_unit|TP_data_reg\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_state.S_TP_DEBOUNCE~regout\,
	datab => \Touch_Panel_unit|TP_data_reg\(10),
	datac => \Touch_Panel_unit|Add3~22_combout\,
	datad => \Touch_Panel_unit|TP_data_reg[11]~4_combout\,
	combout => \Touch_Panel_unit|Selector16~1_combout\);

-- Location: LCCOMB_X34_Y17_N16
\Touch_Panel_unit|Selector16~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|Selector16~2_combout\ = (\Touch_Panel_unit|Selector16~0_combout\) # ((!\Touch_Panel_unit|TP_data_reg[11]~8_combout\ & (!\Touch_Panel_unit|TP_data_reg[11]~5_combout\ & \Touch_Panel_unit|Selector16~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_data_reg[11]~8_combout\,
	datab => \Touch_Panel_unit|Selector16~0_combout\,
	datac => \Touch_Panel_unit|TP_data_reg[11]~5_combout\,
	datad => \Touch_Panel_unit|Selector16~1_combout\,
	combout => \Touch_Panel_unit|Selector16~2_combout\);

-- Location: LCFF_X34_Y17_N17
\Touch_Panel_unit|TP_data_reg[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Touch_Panel_unit|Selector16~2_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \Touch_Panel_unit|TP_data_reg[11]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Touch_Panel_unit|TP_data_reg\(11));

-- Location: LCCOMB_X35_Y17_N30
\Touch_Panel_unit|Equal7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|Equal7~0_combout\ = (!\Touch_Panel_unit|TP_data_reg\(9) & (!\Touch_Panel_unit|TP_data_reg\(10) & (\Touch_Panel_unit|TP_data_reg\(5) & !\Touch_Panel_unit|TP_data_reg\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_data_reg\(9),
	datab => \Touch_Panel_unit|TP_data_reg\(10),
	datac => \Touch_Panel_unit|TP_data_reg\(5),
	datad => \Touch_Panel_unit|TP_data_reg\(11),
	combout => \Touch_Panel_unit|Equal7~0_combout\);

-- Location: LCCOMB_X36_Y17_N28
\Touch_Panel_unit|Selector19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|Selector19~0_combout\ = (!\Touch_Panel_unit|TP_data_reg[11]~8_combout\ & ((\Touch_Panel_unit|TP_data_reg[11]~13_combout\ & ((\Touch_Panel_unit|Add3~16_combout\))) # (!\Touch_Panel_unit|TP_data_reg[11]~13_combout\ & 
-- (\Touch_Panel_unit|TP_data_reg\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_data_reg\(7),
	datab => \Touch_Panel_unit|TP_data_reg[11]~13_combout\,
	datac => \Touch_Panel_unit|Add3~16_combout\,
	datad => \Touch_Panel_unit|TP_data_reg[11]~8_combout\,
	combout => \Touch_Panel_unit|Selector19~0_combout\);

-- Location: LCCOMB_X36_Y17_N12
\Touch_Panel_unit|Selector19~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|Selector19~1_combout\ = (!\Touch_Panel_unit|TP_data_reg[11]~5_combout\ & ((\Touch_Panel_unit|TP_data_reg[11]~3_combout\) # ((\Touch_Panel_unit|TP_state.S_TP_SYNC_1K~regout\) # (\Touch_Panel_unit|Selector19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_data_reg[11]~5_combout\,
	datab => \Touch_Panel_unit|TP_data_reg[11]~3_combout\,
	datac => \Touch_Panel_unit|TP_state.S_TP_SYNC_1K~regout\,
	datad => \Touch_Panel_unit|Selector19~0_combout\,
	combout => \Touch_Panel_unit|Selector19~1_combout\);

-- Location: LCFF_X36_Y17_N13
\Touch_Panel_unit|TP_data_reg[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Touch_Panel_unit|Selector19~1_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \Touch_Panel_unit|TP_data_reg[11]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Touch_Panel_unit|TP_data_reg\(8));

-- Location: LCCOMB_X36_Y17_N0
\Touch_Panel_unit|Equal7~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|Equal7~3_combout\ = (\Touch_Panel_unit|TP_data_reg\(7) & (\Touch_Panel_unit|TP_data_reg\(6) & \Touch_Panel_unit|TP_data_reg\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Touch_Panel_unit|TP_data_reg\(7),
	datac => \Touch_Panel_unit|TP_data_reg\(6),
	datad => \Touch_Panel_unit|TP_data_reg\(8),
	combout => \Touch_Panel_unit|Equal7~3_combout\);

-- Location: LCCOMB_X36_Y17_N10
\Touch_Panel_unit|Equal7~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|Equal7~4_combout\ = (\Touch_Panel_unit|TP_data_reg\(0) & (\Touch_Panel_unit|Equal7~1_combout\ & (\Touch_Panel_unit|Equal7~0_combout\ & \Touch_Panel_unit|Equal7~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_data_reg\(0),
	datab => \Touch_Panel_unit|Equal7~1_combout\,
	datac => \Touch_Panel_unit|Equal7~0_combout\,
	datad => \Touch_Panel_unit|Equal7~3_combout\,
	combout => \Touch_Panel_unit|Equal7~4_combout\);

-- Location: LCCOMB_X34_Y17_N24
\Touch_Panel_unit|Selector25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|Selector25~0_combout\ = (!\Touch_Panel_unit|TP_state.S_TP_SYNC_1K~regout\ & ((\Touch_Panel_unit|TP_data_reg[11]~13_combout\ & ((\Touch_Panel_unit|Add3~4_combout\))) # (!\Touch_Panel_unit|TP_data_reg[11]~13_combout\ & 
-- (\Touch_Panel_unit|TP_data_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_state.S_TP_SYNC_1K~regout\,
	datab => \Touch_Panel_unit|TP_data_reg\(1),
	datac => \Touch_Panel_unit|TP_data_reg[11]~13_combout\,
	datad => \Touch_Panel_unit|Add3~4_combout\,
	combout => \Touch_Panel_unit|Selector25~0_combout\);

-- Location: LCCOMB_X35_Y17_N18
\Touch_Panel_unit|Selector25~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|Selector25~1_combout\ = (!\Touch_Panel_unit|TP_data_reg[11]~8_combout\ & (\Touch_Panel_unit|Selector25~0_combout\ & ((!\Touch_Panel_unit|Equal7~4_combout\) # (!\Touch_Panel_unit|TP_state.S_TP_BACKOFF~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_data_reg[11]~8_combout\,
	datab => \Touch_Panel_unit|TP_state.S_TP_BACKOFF~regout\,
	datac => \Touch_Panel_unit|Equal7~4_combout\,
	datad => \Touch_Panel_unit|Selector25~0_combout\,
	combout => \Touch_Panel_unit|Selector25~1_combout\);

-- Location: LCFF_X35_Y17_N19
\Touch_Panel_unit|TP_data_reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Touch_Panel_unit|Selector25~1_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \Touch_Panel_unit|TP_data_reg[11]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Touch_Panel_unit|TP_data_reg\(2));

-- Location: LCCOMB_X35_Y17_N2
\Touch_Panel_unit|Equal7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|Equal7~1_combout\ = (\Touch_Panel_unit|TP_data_reg\(3) & (\Touch_Panel_unit|TP_data_reg\(2) & (\Touch_Panel_unit|TP_data_reg\(1) & \Touch_Panel_unit|TP_data_reg\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_data_reg\(3),
	datab => \Touch_Panel_unit|TP_data_reg\(2),
	datac => \Touch_Panel_unit|TP_data_reg\(1),
	datad => \Touch_Panel_unit|TP_data_reg\(4),
	combout => \Touch_Panel_unit|Equal7~1_combout\);

-- Location: LCCOMB_X35_Y17_N22
\Touch_Panel_unit|Equal7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|Equal7~2_combout\ = (\Touch_Panel_unit|TP_data_reg\(0) & (\Touch_Panel_unit|Equal7~1_combout\ & \Touch_Panel_unit|Equal7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_data_reg\(0),
	datab => \Touch_Panel_unit|Equal7~1_combout\,
	datad => \Touch_Panel_unit|Equal7~0_combout\,
	combout => \Touch_Panel_unit|Equal7~2_combout\);

-- Location: LCCOMB_X36_Y17_N18
\Touch_Panel_unit|TP_data_reg[11]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_data_reg[11]~13_combout\ = (\Touch_Panel_unit|TP_state.S_TP_DEBOUNCE~regout\) # ((\Touch_Panel_unit|TP_state.S_TP_BACKOFF~regout\ & ((!\Touch_Panel_unit|Equal7~2_combout\) # (!\Touch_Panel_unit|Equal7~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|Equal7~3_combout\,
	datab => \Touch_Panel_unit|Equal7~2_combout\,
	datac => \Touch_Panel_unit|TP_state.S_TP_DEBOUNCE~regout\,
	datad => \Touch_Panel_unit|TP_state.S_TP_BACKOFF~regout\,
	combout => \Touch_Panel_unit|TP_data_reg[11]~13_combout\);

-- Location: LCCOMB_X36_Y17_N30
\Touch_Panel_unit|Selector20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|Selector20~0_combout\ = (!\Touch_Panel_unit|TP_state.S_TP_SYNC_1K~regout\ & ((\Touch_Panel_unit|TP_data_reg[11]~13_combout\ & ((\Touch_Panel_unit|Add3~14_combout\))) # (!\Touch_Panel_unit|TP_data_reg[11]~13_combout\ & 
-- (\Touch_Panel_unit|TP_data_reg\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_state.S_TP_SYNC_1K~regout\,
	datab => \Touch_Panel_unit|TP_data_reg[11]~13_combout\,
	datac => \Touch_Panel_unit|TP_data_reg\(6),
	datad => \Touch_Panel_unit|Add3~14_combout\,
	combout => \Touch_Panel_unit|Selector20~0_combout\);

-- Location: LCCOMB_X36_Y17_N22
\Touch_Panel_unit|Selector20~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|Selector20~1_combout\ = (\Touch_Panel_unit|Selector20~0_combout\ & (!\Touch_Panel_unit|TP_data_reg[11]~8_combout\ & ((!\Touch_Panel_unit|TP_state.S_TP_BACKOFF~regout\) # (!\Touch_Panel_unit|Equal7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|Equal7~4_combout\,
	datab => \Touch_Panel_unit|TP_state.S_TP_BACKOFF~regout\,
	datac => \Touch_Panel_unit|Selector20~0_combout\,
	datad => \Touch_Panel_unit|TP_data_reg[11]~8_combout\,
	combout => \Touch_Panel_unit|Selector20~1_combout\);

-- Location: LCFF_X36_Y17_N23
\Touch_Panel_unit|TP_data_reg[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Touch_Panel_unit|Selector20~1_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \Touch_Panel_unit|TP_data_reg[11]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Touch_Panel_unit|TP_data_reg\(7));

-- Location: LCCOMB_X36_Y17_N8
\Touch_Panel_unit|Equal8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|Equal8~0_combout\ = (!\Touch_Panel_unit|TP_data_reg\(7) & (!\Touch_Panel_unit|TP_data_reg\(6) & !\Touch_Panel_unit|TP_data_reg\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Touch_Panel_unit|TP_data_reg\(7),
	datac => \Touch_Panel_unit|TP_data_reg\(6),
	datad => \Touch_Panel_unit|TP_data_reg\(8),
	combout => \Touch_Panel_unit|Equal8~0_combout\);

-- Location: LCCOMB_X35_Y17_N10
\Touch_Panel_unit|TP_state~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_state~44_combout\ = (\Touch_Panel_unit|TP_state.S_TP_DEBOUNCE~regout\ & ((!\Touch_Panel_unit|Equal7~2_combout\) # (!\Touch_Panel_unit|Equal8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_state.S_TP_DEBOUNCE~regout\,
	datac => \Touch_Panel_unit|Equal8~0_combout\,
	datad => \Touch_Panel_unit|Equal7~2_combout\,
	combout => \Touch_Panel_unit|TP_state~44_combout\);

-- Location: LCCOMB_X35_Y17_N12
\Touch_Panel_unit|TP_state~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_state~45_combout\ = (\Touch_Panel_unit|En_SPI_Clock~regout\ & ((\Touch_Panel_unit|TP_state~44_combout\) # ((!\Touch_Panel_unit|TP_state.S_TP_DEBOUNCE~regout\ & \Touch_Panel_unit|TP_data_reg[11]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_state.S_TP_DEBOUNCE~regout\,
	datab => \Touch_Panel_unit|En_SPI_Clock~regout\,
	datac => \Touch_Panel_unit|TP_data_reg[11]~4_combout\,
	datad => \Touch_Panel_unit|TP_state~44_combout\,
	combout => \Touch_Panel_unit|TP_state~45_combout\);

-- Location: LCCOMB_X34_Y18_N0
\Touch_Panel_unit|TP_state~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_state~49_combout\ = (\Touch_Panel_unit|WideNor0~0_combout\ & (!\Touch_Panel_unit|TP_state~48_combout\ & (\Touch_Panel_unit|TP_state.S_TP_RECV_Y~regout\ & !\Touch_Panel_unit|TP_state~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|WideNor0~0_combout\,
	datab => \Touch_Panel_unit|TP_state~48_combout\,
	datac => \Touch_Panel_unit|TP_state.S_TP_RECV_Y~regout\,
	datad => \Touch_Panel_unit|TP_state~45_combout\,
	combout => \Touch_Panel_unit|TP_state~49_combout\);

-- Location: LCCOMB_X35_Y18_N30
\Touch_Panel_unit|TP_state~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_state~57_combout\ = ((!\Touch_Panel_unit|TP_data_count[3]~3_combout\ & ((\Touch_Panel_unit|TP_SCLK_O~regout\) # (!\Touch_Panel_unit|TP_data_count[3]~5_combout\)))) # (!\Touch_Panel_unit|TP_data_count[3]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_data_count[3]~6_combout\,
	datab => \Touch_Panel_unit|TP_data_count[3]~3_combout\,
	datac => \Touch_Panel_unit|TP_data_count[3]~5_combout\,
	datad => \Touch_Panel_unit|TP_SCLK_O~regout\,
	combout => \Touch_Panel_unit|TP_state~57_combout\);

-- Location: LCCOMB_X34_Y18_N16
\Touch_Panel_unit|TP_state~110\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_state~110_combout\ = ((\Touch_Panel_unit|TP_state~48_combout\) # ((\Touch_Panel_unit|TP_state.S_TP_ENABLE~regout\) # (\Touch_Panel_unit|TP_state~45_combout\))) # (!\Touch_Panel_unit|TP_state.S_TP_IDLE~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_state.S_TP_IDLE~regout\,
	datab => \Touch_Panel_unit|TP_state~48_combout\,
	datac => \Touch_Panel_unit|TP_state.S_TP_ENABLE~regout\,
	datad => \Touch_Panel_unit|TP_state~45_combout\,
	combout => \Touch_Panel_unit|TP_state~110_combout\);

-- Location: LCCOMB_X35_Y18_N28
\Touch_Panel_unit|TP_state~109\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_state~109_combout\ = (\Touch_Panel_unit|Equal3~0_combout\ & (\Touch_Panel_unit|TP_busy_timeout\(4) & ((\Touch_Panel_unit|TP_state.S_TP_RECV_Y~regout\) # (\Touch_Panel_unit|TP_state.S_TP_RECV_X~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|Equal3~0_combout\,
	datab => \Touch_Panel_unit|TP_state.S_TP_RECV_Y~regout\,
	datac => \Touch_Panel_unit|TP_state.S_TP_RECV_X~regout\,
	datad => \Touch_Panel_unit|TP_busy_timeout\(4),
	combout => \Touch_Panel_unit|TP_state~109_combout\);

-- Location: LCCOMB_X33_Y16_N12
\Touch_Panel_unit|TP_state~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_state~55_combout\ = (\Touch_Panel_unit|TP_state.S_TP_IDLE~regout\ & (((\Touch_Panel_unit|Enable_reg\(0) & !\Touch_Panel_unit|Enable_reg\(1))) # (!\Touch_Panel_unit|TP_state.S_TP_ENABLE~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_state.S_TP_IDLE~regout\,
	datab => \Touch_Panel_unit|Enable_reg\(0),
	datac => \Touch_Panel_unit|TP_state.S_TP_ENABLE~regout\,
	datad => \Touch_Panel_unit|Enable_reg\(1),
	combout => \Touch_Panel_unit|TP_state~55_combout\);

-- Location: LCCOMB_X34_Y16_N8
\Touch_Panel_unit|TP_state~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_state~51_combout\ = (!\Touch_Panel_unit|TP_state~50_combout\ & (((!\Touch_Panel_unit|TP_state.S_TP_SEND_Y~regout\ & !\Touch_Panel_unit|TP_state.S_TP_SEND_X~regout\)) # (!\Touch_Panel_unit|TP_data_count[3]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_state.S_TP_SEND_Y~regout\,
	datab => \Touch_Panel_unit|TP_state.S_TP_SEND_X~regout\,
	datac => \Touch_Panel_unit|TP_data_count[3]~4_combout\,
	datad => \Touch_Panel_unit|TP_state~50_combout\,
	combout => \Touch_Panel_unit|TP_state~51_combout\);

-- Location: LCCOMB_X35_Y16_N30
\Touch_Panel_unit|TP_state~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_state~52_combout\ = (\Touch_Panel_unit|TP_state.S_TP_IDLE~regout\ & ((\Touch_Panel_unit|TP_state.S_TP_DEBOUNCE~regout\ & (\Touch_Panel_unit|TP_penirq~regout\)) # (!\Touch_Panel_unit|TP_state.S_TP_DEBOUNCE~regout\ & 
-- (!\Touch_Panel_unit|TP_penirq~regout\ & \Touch_Panel_unit|TP_state.S_TP_BACKOFF~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_state.S_TP_DEBOUNCE~regout\,
	datab => \Touch_Panel_unit|TP_penirq~regout\,
	datac => \Touch_Panel_unit|TP_state.S_TP_BACKOFF~regout\,
	datad => \Touch_Panel_unit|TP_state.S_TP_IDLE~regout\,
	combout => \Touch_Panel_unit|TP_state~52_combout\);

-- Location: LCCOMB_X34_Y16_N30
\Touch_Panel_unit|TP_state~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_state~53_combout\ = (\Touch_Panel_unit|TP_state~52_combout\) # ((!\Touch_Panel_unit|Equal6~0_combout\ & (\Touch_Panel_unit|TP_state.S_TP_IDLE~regout\ & !\Touch_Panel_unit|TP_state~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|Equal6~0_combout\,
	datab => \Touch_Panel_unit|TP_state.S_TP_IDLE~regout\,
	datac => \Touch_Panel_unit|TP_state~43_combout\,
	datad => \Touch_Panel_unit|TP_state~52_combout\,
	combout => \Touch_Panel_unit|TP_state~53_combout\);

-- Location: LCCOMB_X34_Y16_N24
\Touch_Panel_unit|TP_state~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_state~54_combout\ = (\Touch_Panel_unit|TP_state~51_combout\ & ((\Touch_Panel_unit|TP_busy_timeout[0]~7_combout\) # ((!\Touch_Panel_unit|Touch_En~3_combout\ & !\Touch_Panel_unit|TP_state~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_busy_timeout[0]~7_combout\,
	datab => \Touch_Panel_unit|Touch_En~3_combout\,
	datac => \Touch_Panel_unit|TP_state~51_combout\,
	datad => \Touch_Panel_unit|TP_state~53_combout\,
	combout => \Touch_Panel_unit|TP_state~54_combout\);

-- Location: LCCOMB_X34_Y18_N18
\Touch_Panel_unit|TP_state~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_state~56_combout\ = (!\Touch_Panel_unit|Touch_En~3_combout\ & (((!\Touch_Panel_unit|TP_state~109_combout\ & \Touch_Panel_unit|TP_state~54_combout\)) # (!\Touch_Panel_unit|TP_state~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|Touch_En~3_combout\,
	datab => \Touch_Panel_unit|TP_state~109_combout\,
	datac => \Touch_Panel_unit|TP_state~55_combout\,
	datad => \Touch_Panel_unit|TP_state~54_combout\,
	combout => \Touch_Panel_unit|TP_state~56_combout\);

-- Location: LCCOMB_X34_Y18_N4
\Touch_Panel_unit|TP_state~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_state~58_combout\ = (\Touch_Panel_unit|TP_state~110_combout\ & (((!\Touch_Panel_unit|TP_state~56_combout\)))) # (!\Touch_Panel_unit|TP_state~110_combout\ & (\Touch_Panel_unit|TP_data_count[3]~2_combout\ & 
-- (!\Touch_Panel_unit|TP_state~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_data_count[3]~2_combout\,
	datab => \Touch_Panel_unit|TP_state~57_combout\,
	datac => \Touch_Panel_unit|TP_state~110_combout\,
	datad => \Touch_Panel_unit|TP_state~56_combout\,
	combout => \Touch_Panel_unit|TP_state~58_combout\);

-- Location: LCFF_X34_Y18_N1
\Touch_Panel_unit|TP_state.S_TP_ZF_Y\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Touch_Panel_unit|TP_state~49_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \Touch_Panel_unit|TP_state~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Touch_Panel_unit|TP_state.S_TP_ZF_Y~regout\);

-- Location: LCCOMB_X34_Y18_N26
\Touch_Panel_unit|TP_state~112\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_state~112_combout\ = (\Touch_Panel_unit|TP_state.S_TP_IDLE~regout\ & (!\Touch_Panel_unit|TP_state.S_TP_ENABLE~regout\ & \Touch_Panel_unit|TP_state.S_TP_ZF_Y~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_state.S_TP_IDLE~regout\,
	datac => \Touch_Panel_unit|TP_state.S_TP_ENABLE~regout\,
	datad => \Touch_Panel_unit|TP_state.S_TP_ZF_Y~regout\,
	combout => \Touch_Panel_unit|TP_state~112_combout\);

-- Location: LCCOMB_X34_Y18_N6
\Touch_Panel_unit|TP_state~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_state~98_combout\ = (!\Touch_Panel_unit|TP_state~45_combout\ & (!\Touch_Panel_unit|TP_state~47_combout\ & (\Touch_Panel_unit|TP_state~112_combout\ & !\Touch_Panel_unit|TP_state~87_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_state~45_combout\,
	datab => \Touch_Panel_unit|TP_state~47_combout\,
	datac => \Touch_Panel_unit|TP_state~112_combout\,
	datad => \Touch_Panel_unit|TP_state~87_combout\,
	combout => \Touch_Panel_unit|TP_state~98_combout\);

-- Location: LCCOMB_X33_Y18_N24
\Touch_Panel_unit|TP_state~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_state~95_combout\ = ((!\Touch_Panel_unit|TP_state~43_combout\ & ((\Touch_Panel_unit|Equal6~0_combout\) # (!\Touch_Panel_unit|TP_SCLK_O~regout\)))) # (!\Touch_Panel_unit|TP_data_reg[11]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_SCLK_O~regout\,
	datab => \Touch_Panel_unit|TP_state~43_combout\,
	datac => \Touch_Panel_unit|TP_data_reg[11]~7_combout\,
	datad => \Touch_Panel_unit|Equal6~0_combout\,
	combout => \Touch_Panel_unit|TP_state~95_combout\);

-- Location: LCCOMB_X34_Y18_N8
\Touch_Panel_unit|TP_state~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_state~96_combout\ = ((\Touch_Panel_unit|TP_state~87_combout\) # ((\Touch_Panel_unit|TP_state~47_combout\) # (\Touch_Panel_unit|TP_state~45_combout\))) # (!\Touch_Panel_unit|WideNor0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|WideNor0~0_combout\,
	datab => \Touch_Panel_unit|TP_state~87_combout\,
	datac => \Touch_Panel_unit|TP_state~47_combout\,
	datad => \Touch_Panel_unit|TP_state~45_combout\,
	combout => \Touch_Panel_unit|TP_state~96_combout\);

-- Location: LCCOMB_X34_Y18_N24
\Touch_Panel_unit|TP_state~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_state~93_combout\ = (!\Touch_Panel_unit|TP_state.S_TP_BACKOFF~regout\ & (!\Touch_Panel_unit|TP_state~77_combout\ & (!\Touch_Panel_unit|TP_state.S_TP_DEBOUNCE~regout\ & \Touch_Panel_unit|TP_state~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_state.S_TP_BACKOFF~regout\,
	datab => \Touch_Panel_unit|TP_state~77_combout\,
	datac => \Touch_Panel_unit|TP_state.S_TP_DEBOUNCE~regout\,
	datad => \Touch_Panel_unit|TP_state~51_combout\,
	combout => \Touch_Panel_unit|TP_state~93_combout\);

-- Location: LCCOMB_X35_Y18_N8
\Touch_Panel_unit|TP_state~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_state~90_combout\ = (!\Touch_Panel_unit|TP_busy_timeout\(4)) # (!\GPIO_0[2]~2\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GPIO_0[2]~2\,
	datad => \Touch_Panel_unit|TP_busy_timeout\(4),
	combout => \Touch_Panel_unit|TP_state~90_combout\);

-- Location: LCCOMB_X35_Y18_N18
\Touch_Panel_unit|TP_state~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_state~89_combout\ = (\Touch_Panel_unit|TP_state.S_TP_DEBOUNCE~regout\ & (((!\Touch_Panel_unit|TP_penirq~regout\)))) # (!\Touch_Panel_unit|TP_state.S_TP_DEBOUNCE~regout\ & ((\Touch_Panel_unit|TP_penirq~regout\) # ((!\GPIO_0[2]~2\ & 
-- !\Touch_Panel_unit|TP_state.S_TP_BACKOFF~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_state.S_TP_DEBOUNCE~regout\,
	datab => \GPIO_0[2]~2\,
	datac => \Touch_Panel_unit|TP_state.S_TP_BACKOFF~regout\,
	datad => \Touch_Panel_unit|TP_penirq~regout\,
	combout => \Touch_Panel_unit|TP_state~89_combout\);

-- Location: LCCOMB_X35_Y18_N10
\Touch_Panel_unit|TP_state~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_state~91_combout\ = (\Touch_Panel_unit|TP_state~89_combout\ & (((\Touch_Panel_unit|TP_state~90_combout\) # (\Touch_Panel_unit|TP_data_count[3]~3_combout\)) # (!\Touch_Panel_unit|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|Equal3~0_combout\,
	datab => \Touch_Panel_unit|TP_state~90_combout\,
	datac => \Touch_Panel_unit|TP_data_count[3]~3_combout\,
	datad => \Touch_Panel_unit|TP_state~89_combout\,
	combout => \Touch_Panel_unit|TP_state~91_combout\);

-- Location: LCCOMB_X34_Y18_N22
\Touch_Panel_unit|TP_state~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_state~92_combout\ = (\Touch_Panel_unit|TP_state~59_combout\ & (\Touch_Panel_unit|TP_state~91_combout\ & \Touch_Panel_unit|TP_state~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Touch_Panel_unit|TP_state~59_combout\,
	datac => \Touch_Panel_unit|TP_state~91_combout\,
	datad => \Touch_Panel_unit|TP_state~51_combout\,
	combout => \Touch_Panel_unit|TP_state~92_combout\);

-- Location: LCCOMB_X34_Y18_N2
\Touch_Panel_unit|TP_state~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_state~94_combout\ = (!\Touch_Panel_unit|Touch_En~3_combout\ & (((\Touch_Panel_unit|TP_state~93_combout\) # (\Touch_Panel_unit|TP_state~92_combout\)) # (!\Touch_Panel_unit|TP_state~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|Touch_En~3_combout\,
	datab => \Touch_Panel_unit|TP_state~55_combout\,
	datac => \Touch_Panel_unit|TP_state~93_combout\,
	datad => \Touch_Panel_unit|TP_state~92_combout\,
	combout => \Touch_Panel_unit|TP_state~94_combout\);

-- Location: LCCOMB_X34_Y18_N10
\Touch_Panel_unit|TP_state~97\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_state~97_combout\ = (\Touch_Panel_unit|TP_state~96_combout\ & (((!\Touch_Panel_unit|TP_state~94_combout\)))) # (!\Touch_Panel_unit|TP_state~96_combout\ & (\Touch_Panel_unit|TP_data_count[3]~2_combout\ & 
-- (!\Touch_Panel_unit|TP_state~95_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_data_count[3]~2_combout\,
	datab => \Touch_Panel_unit|TP_state~95_combout\,
	datac => \Touch_Panel_unit|TP_state~96_combout\,
	datad => \Touch_Panel_unit|TP_state~94_combout\,
	combout => \Touch_Panel_unit|TP_state~97_combout\);

-- Location: LCFF_X34_Y18_N7
\Touch_Panel_unit|TP_state.S_TP_BACKOFF\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Touch_Panel_unit|TP_state~98_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \Touch_Panel_unit|TP_state~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Touch_Panel_unit|TP_state.S_TP_BACKOFF~regout\);

-- Location: LCCOMB_X35_Y17_N20
\Touch_Panel_unit|TP_data_reg[11]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_data_reg[11]~4_combout\ = (\Touch_Panel_unit|TP_state.S_TP_BACKOFF~regout\ & ((!\Touch_Panel_unit|Equal7~2_combout\) # (!\Touch_Panel_unit|Equal7~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Touch_Panel_unit|TP_state.S_TP_BACKOFF~regout\,
	datac => \Touch_Panel_unit|Equal7~3_combout\,
	datad => \Touch_Panel_unit|Equal7~2_combout\,
	combout => \Touch_Panel_unit|TP_data_reg[11]~4_combout\);

-- Location: LCFF_X35_Y17_N17
\Touch_Panel_unit|TP_state.S_TP_DEBOUNCE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \Touch_Panel_unit|TP_data_reg[11]~4_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	sload => VCC,
	ena => \Touch_Panel_unit|TP_state~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Touch_Panel_unit|TP_state.S_TP_DEBOUNCE~regout\);

-- Location: LCCOMB_X36_Y18_N2
\Touch_Panel_unit|TP_state~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_state~67_combout\ = (\Touch_Panel_unit|TP_state.S_TP_DEBOUNCE~regout\ & \Touch_Panel_unit|TP_penirq~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Touch_Panel_unit|TP_state.S_TP_DEBOUNCE~regout\,
	datad => \Touch_Panel_unit|TP_penirq~regout\,
	combout => \Touch_Panel_unit|TP_state~67_combout\);

-- Location: LCCOMB_X33_Y18_N8
\Touch_Panel_unit|TP_MOSI_O~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_MOSI_O~3_combout\ = (!\Touch_Panel_unit|TP_state.S_TP_SEND_Y~regout\ & !\Touch_Panel_unit|TP_state.S_TP_SEND_X~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Touch_Panel_unit|TP_state.S_TP_SEND_Y~regout\,
	datad => \Touch_Panel_unit|TP_state.S_TP_SEND_X~regout\,
	combout => \Touch_Panel_unit|TP_MOSI_O~3_combout\);

-- Location: LCCOMB_X33_Y18_N4
\Touch_Panel_unit|TP_state~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_state~63_combout\ = (\Touch_Panel_unit|TP_state~43_combout\ & (\Touch_Panel_unit|TP_MOSI_O~3_combout\ & ((\GPIO_0[2]~2\) # (\Touch_Panel_unit|TP_data_count[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GPIO_0[2]~2\,
	datab => \Touch_Panel_unit|TP_state~43_combout\,
	datac => \Touch_Panel_unit|TP_MOSI_O~3_combout\,
	datad => \Touch_Panel_unit|TP_data_count[3]~3_combout\,
	combout => \Touch_Panel_unit|TP_state~63_combout\);

-- Location: LCCOMB_X33_Y18_N2
\Touch_Panel_unit|TP_state~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_state~64_combout\ = (\Touch_Panel_unit|TP_state.S_TP_SYNC_1K~regout\) # ((\Touch_Panel_unit|TP_state.S_TP_ENABLE~regout\) # ((!\Touch_Panel_unit|TP_data_count[3]~2_combout\) # (!\Touch_Panel_unit|TP_state~63_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_state.S_TP_SYNC_1K~regout\,
	datab => \Touch_Panel_unit|TP_state.S_TP_ENABLE~regout\,
	datac => \Touch_Panel_unit|TP_state~63_combout\,
	datad => \Touch_Panel_unit|TP_data_count[3]~2_combout\,
	combout => \Touch_Panel_unit|TP_state~64_combout\);

-- Location: LCCOMB_X36_Y18_N0
\Touch_Panel_unit|TP_state~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_state~65_combout\ = (\Touch_Panel_unit|TP_state~64_combout\) # ((\Touch_Panel_unit|TP_data_reg[11]~4_combout\ & \Touch_Panel_unit|En_SPI_Clock~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_data_reg[11]~4_combout\,
	datab => \Touch_Panel_unit|En_SPI_Clock~regout\,
	datad => \Touch_Panel_unit|TP_state~64_combout\,
	combout => \Touch_Panel_unit|TP_state~65_combout\);

-- Location: LCCOMB_X36_Y18_N24
\Touch_Panel_unit|TP_state~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_state~68_combout\ = (\Touch_Panel_unit|TP_state~65_combout\) # ((!\Touch_Panel_unit|TP_state~67_combout\ & ((\Touch_Panel_unit|TP_state~66_combout\) # (\Touch_Panel_unit|TP_state~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_state~66_combout\,
	datab => \Touch_Panel_unit|TP_state~67_combout\,
	datac => \Touch_Panel_unit|TP_state~44_combout\,
	datad => \Touch_Panel_unit|TP_state~65_combout\,
	combout => \Touch_Panel_unit|TP_state~68_combout\);

-- Location: LCCOMB_X35_Y18_N20
\Touch_Panel_unit|TP_state.S_TP_IDLE~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_state.S_TP_IDLE~feeder_combout\ = \Touch_Panel_unit|TP_state~68_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Touch_Panel_unit|TP_state~68_combout\,
	combout => \Touch_Panel_unit|TP_state.S_TP_IDLE~feeder_combout\);

-- Location: LCFF_X35_Y18_N21
\Touch_Panel_unit|TP_state.S_TP_IDLE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Touch_Panel_unit|TP_state.S_TP_IDLE~feeder_combout\,
	sdata => \Touch_Panel_unit|TP_penirq~regout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	sload => \Touch_Panel_unit|ALT_INV_TP_state.S_TP_IDLE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Touch_Panel_unit|TP_state.S_TP_IDLE~regout\);

-- Location: LCFF_X33_Y18_N21
\Touch_Panel_unit|TP_SCLK_O\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Touch_Panel_unit|TP_SCLK_O~0_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	sclr => \Touch_Panel_unit|ALT_INV_TP_state.S_TP_IDLE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Touch_Panel_unit|TP_SCLK_O~regout\);

-- Location: LCCOMB_X34_Y19_N16
\Touch_Panel_unit|TP_data_reg[11]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_data_reg[11]~3_combout\ = (\Touch_Panel_unit|TP_SCLK_O~regout\ & \Touch_Panel_unit|TP_state.S_TP_ZF_X~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Touch_Panel_unit|TP_SCLK_O~regout\,
	datad => \Touch_Panel_unit|TP_state.S_TP_ZF_X~regout\,
	combout => \Touch_Panel_unit|TP_data_reg[11]~3_combout\);

-- Location: LCCOMB_X33_Y18_N18
\Touch_Panel_unit|TP_state~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_state~46_combout\ = (\Touch_Panel_unit|TP_SCLK_O~regout\ & (\Touch_Panel_unit|En_SPI_Clock~regout\ & ((\Touch_Panel_unit|TP_state.S_TP_ZF_Y~regout\) # (!\Touch_Panel_unit|TP_MOSI_O~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_SCLK_O~regout\,
	datab => \Touch_Panel_unit|TP_state.S_TP_ZF_Y~regout\,
	datac => \Touch_Panel_unit|TP_MOSI_O~3_combout\,
	datad => \Touch_Panel_unit|En_SPI_Clock~regout\,
	combout => \Touch_Panel_unit|TP_state~46_combout\);

-- Location: LCCOMB_X34_Y18_N30
\Touch_Panel_unit|TP_state~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_state~48_combout\ = (\Touch_Panel_unit|TP_state~47_combout\) # ((\Touch_Panel_unit|TP_state~46_combout\) # ((\Touch_Panel_unit|En_SPI_Clock~regout\ & \Touch_Panel_unit|TP_data_reg[11]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|En_SPI_Clock~regout\,
	datab => \Touch_Panel_unit|TP_state~47_combout\,
	datac => \Touch_Panel_unit|TP_data_reg[11]~3_combout\,
	datad => \Touch_Panel_unit|TP_state~46_combout\,
	combout => \Touch_Panel_unit|TP_state~48_combout\);

-- Location: LCCOMB_X34_Y18_N14
\Touch_Panel_unit|TP_state~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_state~69_combout\ = (\Touch_Panel_unit|TP_state.S_TP_RECV_X~regout\ & (!\Touch_Panel_unit|TP_state~48_combout\ & (\Touch_Panel_unit|WideNor0~0_combout\ & !\Touch_Panel_unit|TP_state~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_state.S_TP_RECV_X~regout\,
	datab => \Touch_Panel_unit|TP_state~48_combout\,
	datac => \Touch_Panel_unit|WideNor0~0_combout\,
	datad => \Touch_Panel_unit|TP_state~45_combout\,
	combout => \Touch_Panel_unit|TP_state~69_combout\);

-- Location: LCFF_X34_Y18_N15
\Touch_Panel_unit|TP_state.S_TP_ZF_X\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Touch_Panel_unit|TP_state~69_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \Touch_Panel_unit|TP_state~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Touch_Panel_unit|TP_state.S_TP_ZF_X~regout\);

-- Location: LCCOMB_X34_Y18_N12
\Touch_Panel_unit|TP_state~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_state~43_combout\ = (!\Touch_Panel_unit|TP_state.S_TP_ZF_X~regout\ & !\Touch_Panel_unit|TP_state.S_TP_ZF_Y~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Touch_Panel_unit|TP_state.S_TP_ZF_X~regout\,
	datad => \Touch_Panel_unit|TP_state.S_TP_ZF_Y~regout\,
	combout => \Touch_Panel_unit|TP_state~43_combout\);

-- Location: LCCOMB_X34_Y16_N4
\Touch_Panel_unit|TP_state~99\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_state~99_combout\ = (\Touch_Panel_unit|En_SPI_Clock~regout\ & (!\Touch_Panel_unit|TP_data_count[3]~9_combout\ & ((!\Touch_Panel_unit|TP_state~43_combout\) # (!\Touch_Panel_unit|TP_data_count[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_data_count[3]~3_combout\,
	datab => \Touch_Panel_unit|En_SPI_Clock~regout\,
	datac => \Touch_Panel_unit|TP_state~43_combout\,
	datad => \Touch_Panel_unit|TP_data_count[3]~9_combout\,
	combout => \Touch_Panel_unit|TP_state~99_combout\);

-- Location: LCCOMB_X34_Y16_N22
\Touch_Panel_unit|TP_state~108\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_state~108_combout\ = (\Touch_Panel_unit|TP_state~114_combout\ & (!\Touch_Panel_unit|TP_state~99_combout\ & (!\Touch_Panel_unit|TP_state~45_combout\ & !\Touch_Panel_unit|TP_state~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_state~114_combout\,
	datab => \Touch_Panel_unit|TP_state~99_combout\,
	datac => \Touch_Panel_unit|TP_state~45_combout\,
	datad => \Touch_Panel_unit|TP_state~47_combout\,
	combout => \Touch_Panel_unit|TP_state~108_combout\);

-- Location: LCCOMB_X34_Y16_N20
\Touch_Panel_unit|TP_state~104\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_state~104_combout\ = (\Touch_Panel_unit|TP_state.S_TP_ENABLE~regout\) # ((\Touch_Panel_unit|TP_state~59_combout\ & (\Touch_Panel_unit|TP_state~80_combout\ & !\Touch_Panel_unit|TP_state~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_state.S_TP_ENABLE~regout\,
	datab => \Touch_Panel_unit|TP_state~59_combout\,
	datac => \Touch_Panel_unit|TP_state~80_combout\,
	datad => \Touch_Panel_unit|TP_state~53_combout\,
	combout => \Touch_Panel_unit|TP_state~104_combout\);

-- Location: LCCOMB_X34_Y16_N14
\Touch_Panel_unit|TP_state~105\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_state~105_combout\ = (!\Touch_Panel_unit|Touch_En~3_combout\ & ((\Touch_Panel_unit|TP_state~104_combout\) # ((\Touch_Panel_unit|TP_busy_timeout[0]~7_combout\ & \Touch_Panel_unit|TP_state~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_busy_timeout[0]~7_combout\,
	datab => \Touch_Panel_unit|Touch_En~3_combout\,
	datac => \Touch_Panel_unit|TP_state~104_combout\,
	datad => \Touch_Panel_unit|TP_state~78_combout\,
	combout => \Touch_Panel_unit|TP_state~105_combout\);

-- Location: LCCOMB_X33_Y18_N6
\Touch_Panel_unit|TP_state~101\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_state~101_combout\ = ((!\Touch_Panel_unit|TP_MOSI_O~3_combout\ & ((!\Touch_Panel_unit|TP_data_count[3]~4_combout\) # (!\Touch_Panel_unit|TP_SCLK_O~regout\)))) # (!\Touch_Panel_unit|TP_data_count[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_SCLK_O~regout\,
	datab => \Touch_Panel_unit|TP_MOSI_O~3_combout\,
	datac => \Touch_Panel_unit|TP_data_count[3]~4_combout\,
	datad => \Touch_Panel_unit|TP_data_count[3]~2_combout\,
	combout => \Touch_Panel_unit|TP_state~101_combout\);

-- Location: LCCOMB_X33_Y18_N28
\Touch_Panel_unit|TP_state~102\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_state~102_combout\ = ((\Touch_Panel_unit|TP_state~101_combout\) # ((!\Touch_Panel_unit|TP_data_count[3]~3_combout\ & !\GPIO_0[2]~2\))) # (!\Touch_Panel_unit|TP_state~43_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_data_count[3]~3_combout\,
	datab => \GPIO_0[2]~2\,
	datac => \Touch_Panel_unit|TP_state~43_combout\,
	datad => \Touch_Panel_unit|TP_state~101_combout\,
	combout => \Touch_Panel_unit|TP_state~102_combout\);

-- Location: LCCOMB_X34_Y16_N26
\Touch_Panel_unit|TP_state~103\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_state~103_combout\ = ((\Touch_Panel_unit|TP_state~47_combout\) # ((\Touch_Panel_unit|TP_state~99_combout\) # (\Touch_Panel_unit|TP_state~45_combout\))) # (!\Touch_Panel_unit|WideNor0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|WideNor0~0_combout\,
	datab => \Touch_Panel_unit|TP_state~47_combout\,
	datac => \Touch_Panel_unit|TP_state~99_combout\,
	datad => \Touch_Panel_unit|TP_state~45_combout\,
	combout => \Touch_Panel_unit|TP_state~103_combout\);

-- Location: LCCOMB_X34_Y16_N12
\Touch_Panel_unit|TP_state~106\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_state~106_combout\ = (\Touch_Panel_unit|TP_state~103_combout\ & (!\Touch_Panel_unit|TP_state~50_combout\ & (\Touch_Panel_unit|TP_state~105_combout\))) # (!\Touch_Panel_unit|TP_state~103_combout\ & 
-- (((\Touch_Panel_unit|TP_state~102_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_state~50_combout\,
	datab => \Touch_Panel_unit|TP_state~105_combout\,
	datac => \Touch_Panel_unit|TP_state~102_combout\,
	datad => \Touch_Panel_unit|TP_state~103_combout\,
	combout => \Touch_Panel_unit|TP_state~106_combout\);

-- Location: LCCOMB_X34_Y16_N6
\Touch_Panel_unit|TP_state~107\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_state~107_combout\ = (!\Touch_Panel_unit|TP_state~106_combout\ & ((\Touch_Panel_unit|TP_state.S_TP_IDLE~regout\) # (\Touch_Panel_unit|TP_penirq~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Touch_Panel_unit|TP_state.S_TP_IDLE~regout\,
	datac => \Touch_Panel_unit|TP_penirq~regout\,
	datad => \Touch_Panel_unit|TP_state~106_combout\,
	combout => \Touch_Panel_unit|TP_state~107_combout\);

-- Location: LCFF_X34_Y16_N23
\Touch_Panel_unit|TP_state.S_TP_RECV_X\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Touch_Panel_unit|TP_state~108_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \Touch_Panel_unit|TP_state~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Touch_Panel_unit|TP_state.S_TP_RECV_X~regout\);

-- Location: LCCOMB_X34_Y16_N0
\Touch_Panel_unit|TP_state~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_state~47_combout\ = (\GPIO_0[2]~2\ & (\Touch_Panel_unit|En_SPI_Clock~regout\ & ((\Touch_Panel_unit|TP_state.S_TP_RECV_Y~regout\) # (\Touch_Panel_unit|TP_state.S_TP_RECV_X~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_state.S_TP_RECV_Y~regout\,
	datab => \GPIO_0[2]~2\,
	datac => \Touch_Panel_unit|En_SPI_Clock~regout\,
	datad => \Touch_Panel_unit|TP_state.S_TP_RECV_X~regout\,
	combout => \Touch_Panel_unit|TP_state~47_combout\);

-- Location: LCCOMB_X36_Y16_N28
\Touch_Panel_unit|TP_state~113\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_state~113_combout\ = (\Touch_Panel_unit|TP_state.S_TP_IDLE~regout\ & (\Touch_Panel_unit|TP_state.S_TP_SEND_Y~regout\ & !\Touch_Panel_unit|TP_state.S_TP_ENABLE~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Touch_Panel_unit|TP_state.S_TP_IDLE~regout\,
	datac => \Touch_Panel_unit|TP_state.S_TP_SEND_Y~regout\,
	datad => \Touch_Panel_unit|TP_state.S_TP_ENABLE~regout\,
	combout => \Touch_Panel_unit|TP_state~113_combout\);

-- Location: LCCOMB_X34_Y16_N16
\Touch_Panel_unit|TP_state~100\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_state~100_combout\ = (!\Touch_Panel_unit|TP_state~45_combout\ & (!\Touch_Panel_unit|TP_state~47_combout\ & (!\Touch_Panel_unit|TP_state~99_combout\ & \Touch_Panel_unit|TP_state~113_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_state~45_combout\,
	datab => \Touch_Panel_unit|TP_state~47_combout\,
	datac => \Touch_Panel_unit|TP_state~99_combout\,
	datad => \Touch_Panel_unit|TP_state~113_combout\,
	combout => \Touch_Panel_unit|TP_state~100_combout\);

-- Location: LCFF_X34_Y16_N17
\Touch_Panel_unit|TP_state.S_TP_RECV_Y\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Touch_Panel_unit|TP_state~100_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \Touch_Panel_unit|TP_state~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Touch_Panel_unit|TP_state.S_TP_RECV_Y~regout\);

-- Location: LCCOMB_X35_Y18_N22
\Touch_Panel_unit|TP_data_reg[11]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_data_reg[11]~7_combout\ = (!\Touch_Panel_unit|TP_state.S_TP_SEND_Y~regout\ & (!\Touch_Panel_unit|TP_state.S_TP_RECV_Y~regout\ & (!\Touch_Panel_unit|TP_state.S_TP_RECV_X~regout\ & !\Touch_Panel_unit|TP_state.S_TP_SEND_X~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_state.S_TP_SEND_Y~regout\,
	datab => \Touch_Panel_unit|TP_state.S_TP_RECV_Y~regout\,
	datac => \Touch_Panel_unit|TP_state.S_TP_RECV_X~regout\,
	datad => \Touch_Panel_unit|TP_state.S_TP_SEND_X~regout\,
	combout => \Touch_Panel_unit|TP_data_reg[11]~7_combout\);

-- Location: LCCOMB_X35_Y18_N14
\Touch_Panel_unit|TP_state~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_state~86_combout\ = ((!\Touch_Panel_unit|TP_state.S_TP_RECV_Y~regout\ & !\Touch_Panel_unit|TP_state.S_TP_RECV_X~regout\)) # (!\Touch_Panel_unit|TP_SCLK_O~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Touch_Panel_unit|TP_state.S_TP_RECV_Y~regout\,
	datac => \Touch_Panel_unit|TP_state.S_TP_RECV_X~regout\,
	datad => \Touch_Panel_unit|TP_SCLK_O~regout\,
	combout => \Touch_Panel_unit|TP_state~86_combout\);

-- Location: LCCOMB_X35_Y18_N24
\Touch_Panel_unit|TP_state~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_state~87_combout\ = (\Touch_Panel_unit|En_SPI_Clock~regout\ & (!\Touch_Panel_unit|TP_data_reg[11]~7_combout\ & (\Touch_Panel_unit|TP_state~86_combout\ & \Touch_Panel_unit|TP_state~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|En_SPI_Clock~regout\,
	datab => \Touch_Panel_unit|TP_data_reg[11]~7_combout\,
	datac => \Touch_Panel_unit|TP_state~86_combout\,
	datad => \Touch_Panel_unit|TP_state~61_combout\,
	combout => \Touch_Panel_unit|TP_state~87_combout\);

-- Location: LCCOMB_X33_Y16_N8
\Touch_Panel_unit|TP_state~111\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_state~111_combout\ = (\Touch_Panel_unit|TP_state.S_TP_IDLE~regout\ & (!\Touch_Panel_unit|TP_state.S_TP_ENABLE~regout\ & \Touch_Panel_unit|TP_state.S_TP_ZF_X~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_state.S_TP_IDLE~regout\,
	datab => \Touch_Panel_unit|TP_state.S_TP_ENABLE~regout\,
	datac => \Touch_Panel_unit|TP_state.S_TP_ZF_X~regout\,
	combout => \Touch_Panel_unit|TP_state~111_combout\);

-- Location: LCCOMB_X34_Y18_N20
\Touch_Panel_unit|TP_state~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_state~88_combout\ = (!\Touch_Panel_unit|TP_state~45_combout\ & (!\Touch_Panel_unit|TP_state~87_combout\ & (!\Touch_Panel_unit|TP_state~47_combout\ & \Touch_Panel_unit|TP_state~111_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_state~45_combout\,
	datab => \Touch_Panel_unit|TP_state~87_combout\,
	datac => \Touch_Panel_unit|TP_state~47_combout\,
	datad => \Touch_Panel_unit|TP_state~111_combout\,
	combout => \Touch_Panel_unit|TP_state~88_combout\);

-- Location: LCFF_X34_Y18_N21
\Touch_Panel_unit|TP_state.S_TP_SEND_Y\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Touch_Panel_unit|TP_state~88_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \Touch_Panel_unit|TP_state~97_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Touch_Panel_unit|TP_state.S_TP_SEND_Y~regout\);

-- Location: LCCOMB_X36_Y16_N22
\Touch_Panel_unit|TP_MOSI_O~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_MOSI_O~2_combout\ = (\Touch_Panel_unit|TP_data_reg\(11) & ((\Touch_Panel_unit|TP_state.S_TP_SEND_Y~regout\) # (\Touch_Panel_unit|TP_state.S_TP_SEND_X~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Touch_Panel_unit|TP_state.S_TP_SEND_Y~regout\,
	datac => \Touch_Panel_unit|TP_data_reg\(11),
	datad => \Touch_Panel_unit|TP_state.S_TP_SEND_X~regout\,
	combout => \Touch_Panel_unit|TP_MOSI_O~2_combout\);

-- Location: LCCOMB_X60_Y20_N8
\LCD_Config_unit|I2C_unit|I2C_scen~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_unit|I2C_scen~0_combout\ = (\LCD_Config_unit|I2C_unit|state_counter\(1) & ((\LCD_Config_unit|I2C_unit|Equal0~0_combout\ & (!\LCD_Config_unit|I2C_unit|state_counter\(4))) # (!\LCD_Config_unit|I2C_unit|Equal0~0_combout\ & 
-- ((\LCD_Config_unit|I2C_unit|I2C_scen~regout\))))) # (!\LCD_Config_unit|I2C_unit|state_counter\(1) & (((\LCD_Config_unit|I2C_unit|I2C_scen~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_unit|state_counter\(1),
	datab => \LCD_Config_unit|I2C_unit|state_counter\(4),
	datac => \LCD_Config_unit|I2C_unit|I2C_scen~regout\,
	datad => \LCD_Config_unit|I2C_unit|Equal0~0_combout\,
	combout => \LCD_Config_unit|I2C_unit|I2C_scen~0_combout\);

-- Location: LCFF_X60_Y20_N9
\LCD_Config_unit|I2C_unit|I2C_scen\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|I2C_unit|I2C_scen~0_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \LCD_Config_unit|I2C_unit|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_unit|I2C_scen~regout\);

-- Location: LCCOMB_X60_Y21_N26
\Selector1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = (!\Selector1~0_combout\ & ((\Top_state.001~regout\) # ((\LCD_TPn_sel~regout\ & \Top_state.010~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~0_combout\,
	datab => \Top_state.001~regout\,
	datac => \LCD_TPn_sel~regout\,
	datad => \Top_state.010~regout\,
	combout => \Selector1~1_combout\);

-- Location: LCFF_X60_Y21_N27
LCD_TPn_sel : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Selector1~1_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_TPn_sel~regout\);

-- Location: LCCOMB_X60_Y19_N20
\LCD_TPn_sclk~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_TPn_sclk~0_combout\ = (\LCD_TPn_sel~regout\ & (\Touch_Panel_unit|TP_SCLK_O~regout\)) # (!\LCD_TPn_sel~regout\ & (((\LCD_Config_unit|I2C_unit|I2C_scen~regout\ & \LCD_Config_unit|I2C_unit|clock_div~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_SCLK_O~regout\,
	datab => \LCD_Config_unit|I2C_unit|I2C_scen~regout\,
	datac => \LCD_Config_unit|I2C_unit|clock_div~regout\,
	datad => \LCD_TPn_sel~regout\,
	combout => \LCD_TPn_sclk~0_combout\);

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLOCK_50_I~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CLOCK_50_I,
	combout => \CLOCK_50_I~combout\);

-- Location: CLKCTRL_G2
\CLOCK_50_I~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50_I~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50_I~clkctrl_outclk\);

-- Location: LCFF_X61_Y21_N7
\LCD_Data_unit|H_Count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Data_unit|H_Count[3]~8_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	sclr => \LCD_Data_unit|H_Count[6]~10_combout\,
	ena => \LCD_Data_unit|V_Sync~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Data_unit|H_Count\(3));

-- Location: LCCOMB_X62_Y21_N2
\LCD_Data_unit|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|Add0~0_combout\ = \LCD_Data_unit|H_Count\(3) $ (VCC)
-- \LCD_Data_unit|Add0~1\ = CARRY(\LCD_Data_unit|H_Count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD_Data_unit|H_Count\(3),
	datad => VCC,
	combout => \LCD_Data_unit|Add0~0_combout\,
	cout => \LCD_Data_unit|Add0~1\);

-- Location: LCCOMB_X62_Y21_N4
\LCD_Data_unit|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|Add0~2_combout\ = (\LCD_Data_unit|H_Count\(4) & (!\LCD_Data_unit|Add0~1\)) # (!\LCD_Data_unit|H_Count\(4) & ((\LCD_Data_unit|Add0~1\) # (GND)))
-- \LCD_Data_unit|Add0~3\ = CARRY((!\LCD_Data_unit|Add0~1\) # (!\LCD_Data_unit|H_Count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Data_unit|H_Count\(4),
	datad => VCC,
	cin => \LCD_Data_unit|Add0~1\,
	combout => \LCD_Data_unit|Add0~2_combout\,
	cout => \LCD_Data_unit|Add0~3\);

-- Location: LCCOMB_X62_Y21_N6
\LCD_Data_unit|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|Add0~4_combout\ = (\LCD_Data_unit|H_Count\(5) & ((GND) # (!\LCD_Data_unit|Add0~3\))) # (!\LCD_Data_unit|H_Count\(5) & (\LCD_Data_unit|Add0~3\ $ (GND)))
-- \LCD_Data_unit|Add0~5\ = CARRY((\LCD_Data_unit|H_Count\(5)) # (!\LCD_Data_unit|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Data_unit|H_Count\(5),
	datad => VCC,
	cin => \LCD_Data_unit|Add0~3\,
	combout => \LCD_Data_unit|Add0~4_combout\,
	cout => \LCD_Data_unit|Add0~5\);

-- Location: LCCOMB_X62_Y21_N8
\LCD_Data_unit|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|Add0~6_combout\ = (\LCD_Data_unit|H_Count\(6) & (!\LCD_Data_unit|Add0~5\)) # (!\LCD_Data_unit|H_Count\(6) & ((\LCD_Data_unit|Add0~5\) # (GND)))
-- \LCD_Data_unit|Add0~7\ = CARRY((!\LCD_Data_unit|Add0~5\) # (!\LCD_Data_unit|H_Count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Data_unit|H_Count\(6),
	datad => VCC,
	cin => \LCD_Data_unit|Add0~5\,
	combout => \LCD_Data_unit|Add0~6_combout\,
	cout => \LCD_Data_unit|Add0~7\);

-- Location: LCCOMB_X62_Y21_N10
\LCD_Data_unit|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|Add0~8_combout\ = (\LCD_Data_unit|H_Count\(7) & (\LCD_Data_unit|Add0~7\ $ (GND))) # (!\LCD_Data_unit|H_Count\(7) & (!\LCD_Data_unit|Add0~7\ & VCC))
-- \LCD_Data_unit|Add0~9\ = CARRY((\LCD_Data_unit|H_Count\(7) & !\LCD_Data_unit|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Data_unit|H_Count\(7),
	datad => VCC,
	cin => \LCD_Data_unit|Add0~7\,
	combout => \LCD_Data_unit|Add0~8_combout\,
	cout => \LCD_Data_unit|Add0~9\);

-- Location: LCFF_X62_Y21_N11
\Colourbar_Blue[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Data_unit|Add0~8_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Colourbar_Blue(7));

-- Location: LCCOMB_X60_Y21_N22
\LCD_Data_unit|H_den~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|H_den~3_combout\ = ((!\LCD_Data_unit|H_Count\(9)) # (!\LCD_Data_unit|H_Count\(5))) # (!\LCD_Data_unit|H_Count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Data_unit|H_Count\(8),
	datac => \LCD_Data_unit|H_Count\(5),
	datad => \LCD_Data_unit|H_Count\(9),
	combout => \LCD_Data_unit|H_den~3_combout\);

-- Location: LCCOMB_X60_Y21_N28
\LCD_Data_unit|H_den~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|H_den~4_combout\ = (\LCD_Data_unit|H_den~2_combout\ & ((\LCD_Data_unit|H_den~0_combout\) # ((\LCD_Data_unit|H_den~3_combout\ & \LCD_Data_unit|H_den~regout\)))) # (!\LCD_Data_unit|H_den~2_combout\ & (((\LCD_Data_unit|H_den~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Data_unit|H_den~2_combout\,
	datab => \LCD_Data_unit|H_den~3_combout\,
	datac => \LCD_Data_unit|H_den~regout\,
	datad => \LCD_Data_unit|H_den~0_combout\,
	combout => \LCD_Data_unit|H_den~4_combout\);

-- Location: LCFF_X60_Y21_N29
\LCD_Data_unit|H_den\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Data_unit|H_den~4_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	sclr => \ALT_INV_Top_state.010~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Data_unit|H_den~regout\);

-- Location: LCCOMB_X61_Y22_N6
\LCD_Data_unit|V_den~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|V_den~0_combout\ = (!\LCD_Data_unit|V_Count\(8) & (!\LCD_Data_unit|V_Count\(2) & (!\LCD_Data_unit|V_Count\(3) & \LCD_Data_unit|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Data_unit|V_Count\(8),
	datab => \LCD_Data_unit|V_Count\(2),
	datac => \LCD_Data_unit|V_Count\(3),
	datad => \LCD_Data_unit|Equal3~0_combout\,
	combout => \LCD_Data_unit|V_den~0_combout\);

-- Location: LCCOMB_X61_Y22_N4
\LCD_Data_unit|V_den~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|V_den~1_combout\ = (\LCD_Data_unit|LTM_NCLK~regout\ & (\LCD_Data_unit|V_den~0_combout\ & (\LCD_Data_unit|V_Count\(1) & !\LCD_Data_unit|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Data_unit|LTM_NCLK~regout\,
	datab => \LCD_Data_unit|V_den~0_combout\,
	datac => \LCD_Data_unit|V_Count\(1),
	datad => \LCD_Data_unit|Equal0~2_combout\,
	combout => \LCD_Data_unit|V_den~1_combout\);

-- Location: LCCOMB_X60_Y22_N16
\LCD_Data_unit|V_den~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|V_den~2_combout\ = (\LCD_Data_unit|V_Count\(9) & (\LCD_Data_unit|V_den~regout\ & ((\LCD_Data_unit|V_Count\(5)) # (!\LCD_Data_unit|V_den~1_combout\)))) # (!\LCD_Data_unit|V_Count\(9) & ((\LCD_Data_unit|V_den~regout\) # 
-- ((\LCD_Data_unit|V_Count\(5) & \LCD_Data_unit|V_den~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Data_unit|V_Count\(9),
	datab => \LCD_Data_unit|V_Count\(5),
	datac => \LCD_Data_unit|V_den~regout\,
	datad => \LCD_Data_unit|V_den~1_combout\,
	combout => \LCD_Data_unit|V_den~2_combout\);

-- Location: LCFF_X60_Y22_N17
\LCD_Data_unit|V_den\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Data_unit|V_den~2_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	sclr => \ALT_INV_Top_state.010~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Data_unit|V_den~regout\);

-- Location: LCCOMB_X60_Y21_N24
\LCD_Data_unit|LTM_R[7]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|LTM_R[7]~0_combout\ = (\LCD_Data_unit|H_den~regout\ & (\LCD_Data_unit|V_den~regout\ & \Top_state.010~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD_Data_unit|H_den~regout\,
	datac => \LCD_Data_unit|V_den~regout\,
	datad => \Top_state.010~regout\,
	combout => \LCD_Data_unit|LTM_R[7]~0_combout\);

-- Location: LCCOMB_X63_Y21_N24
\LCD_Data_unit|Equal7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|Equal7~2_combout\ = (!\LCD_Data_unit|oCoord_X\(2) & !\LCD_Data_unit|oCoord_X\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LCD_Data_unit|oCoord_X\(2),
	datad => \LCD_Data_unit|oCoord_X\(1),
	combout => \LCD_Data_unit|Equal7~2_combout\);

-- Location: LCCOMB_X62_Y21_N24
\LCD_Data_unit|Equal7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|Equal7~0_combout\ = (!\LCD_Data_unit|Add0~8_combout\ & (!\LCD_Data_unit|Add0~0_combout\ & (!\LCD_Data_unit|Add0~6_combout\ & !\LCD_Data_unit|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Data_unit|Add0~8_combout\,
	datab => \LCD_Data_unit|Add0~0_combout\,
	datac => \LCD_Data_unit|Add0~6_combout\,
	datad => \LCD_Data_unit|Add0~4_combout\,
	combout => \LCD_Data_unit|Equal7~0_combout\);

-- Location: LCFF_X61_Y21_N17
\LCD_Data_unit|H_Count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Data_unit|H_Count[8]~19_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	sclr => \LCD_Data_unit|H_Count[6]~10_combout\,
	ena => \LCD_Data_unit|V_Sync~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Data_unit|H_Count\(8));

-- Location: LCCOMB_X62_Y21_N12
\LCD_Data_unit|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|Add0~10_combout\ = (\LCD_Data_unit|H_Count\(8) & (\LCD_Data_unit|Add0~9\ & VCC)) # (!\LCD_Data_unit|H_Count\(8) & (!\LCD_Data_unit|Add0~9\))
-- \LCD_Data_unit|Add0~11\ = CARRY((!\LCD_Data_unit|H_Count\(8) & !\LCD_Data_unit|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_Data_unit|H_Count\(8),
	datad => VCC,
	cin => \LCD_Data_unit|Add0~9\,
	combout => \LCD_Data_unit|Add0~10_combout\,
	cout => \LCD_Data_unit|Add0~11\);

-- Location: LCCOMB_X62_Y21_N14
\LCD_Data_unit|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|Add0~12_combout\ = \LCD_Data_unit|Add0~11\ $ (\LCD_Data_unit|H_Count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \LCD_Data_unit|H_Count\(9),
	cin => \LCD_Data_unit|Add0~11\,
	combout => \LCD_Data_unit|Add0~12_combout\);

-- Location: LCCOMB_X62_Y21_N18
\LCD_Data_unit|Equal7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|Equal7~1_combout\ = (!\LCD_Data_unit|oCoord_X\(0) & (!\LCD_Data_unit|Add0~2_combout\ & (!\LCD_Data_unit|Add0~12_combout\ & !\LCD_Data_unit|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Data_unit|oCoord_X\(0),
	datab => \LCD_Data_unit|Add0~2_combout\,
	datac => \LCD_Data_unit|Add0~12_combout\,
	datad => \LCD_Data_unit|Add0~10_combout\,
	combout => \LCD_Data_unit|Equal7~1_combout\);

-- Location: LCCOMB_X62_Y21_N28
\LCD_Data_unit|LTM_R[7]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|LTM_R[7]~1_combout\ = (\LCD_Data_unit|LTM_R[7]~0_combout\ & (((!\LCD_Data_unit|Equal7~1_combout\) # (!\LCD_Data_unit|Equal7~0_combout\)) # (!\LCD_Data_unit|Equal7~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Data_unit|LTM_R[7]~0_combout\,
	datab => \LCD_Data_unit|Equal7~2_combout\,
	datac => \LCD_Data_unit|Equal7~0_combout\,
	datad => \LCD_Data_unit|Equal7~1_combout\,
	combout => \LCD_Data_unit|LTM_R[7]~1_combout\);

-- Location: LCFF_X61_Y22_N17
\LCD_Data_unit|V_Count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Data_unit|V_Count[4]~20_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	sclr => \LCD_Data_unit|V_Count[7]~12_combout\,
	ena => \LCD_Data_unit|V_Count[7]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Data_unit|V_Count\(4));

-- Location: LCCOMB_X62_Y22_N4
\LCD_Data_unit|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|Add1~0_combout\ = \LCD_Data_unit|V_Count\(0) $ (VCC)
-- \LCD_Data_unit|Add1~1\ = CARRY(\LCD_Data_unit|V_Count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD_Data_unit|V_Count\(0),
	datad => VCC,
	combout => \LCD_Data_unit|Add1~0_combout\,
	cout => \LCD_Data_unit|Add1~1\);

-- Location: LCCOMB_X62_Y22_N8
\LCD_Data_unit|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|Add1~4_combout\ = (\LCD_Data_unit|V_Count\(2) & ((GND) # (!\LCD_Data_unit|Add1~3\))) # (!\LCD_Data_unit|V_Count\(2) & (\LCD_Data_unit|Add1~3\ $ (GND)))
-- \LCD_Data_unit|Add1~5\ = CARRY((\LCD_Data_unit|V_Count\(2)) # (!\LCD_Data_unit|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Data_unit|V_Count\(2),
	datad => VCC,
	cin => \LCD_Data_unit|Add1~3\,
	combout => \LCD_Data_unit|Add1~4_combout\,
	cout => \LCD_Data_unit|Add1~5\);

-- Location: LCCOMB_X62_Y22_N12
\LCD_Data_unit|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|Add1~8_combout\ = (\LCD_Data_unit|V_Count\(4) & ((GND) # (!\LCD_Data_unit|Add1~7\))) # (!\LCD_Data_unit|V_Count\(4) & (\LCD_Data_unit|Add1~7\ $ (GND)))
-- \LCD_Data_unit|Add1~9\ = CARRY((\LCD_Data_unit|V_Count\(4)) # (!\LCD_Data_unit|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_Data_unit|V_Count\(4),
	datad => VCC,
	cin => \LCD_Data_unit|Add1~7\,
	combout => \LCD_Data_unit|Add1~8_combout\,
	cout => \LCD_Data_unit|Add1~9\);

-- Location: LCCOMB_X62_Y22_N14
\LCD_Data_unit|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|Add1~10_combout\ = (\LCD_Data_unit|V_Count\(5) & (!\LCD_Data_unit|Add1~9\)) # (!\LCD_Data_unit|V_Count\(5) & ((\LCD_Data_unit|Add1~9\) # (GND)))
-- \LCD_Data_unit|Add1~11\ = CARRY((!\LCD_Data_unit|Add1~9\) # (!\LCD_Data_unit|V_Count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_Data_unit|V_Count\(5),
	datad => VCC,
	cin => \LCD_Data_unit|Add1~9\,
	combout => \LCD_Data_unit|Add1~10_combout\,
	cout => \LCD_Data_unit|Add1~11\);

-- Location: LCCOMB_X62_Y22_N16
\LCD_Data_unit|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|Add1~12_combout\ = (\LCD_Data_unit|V_Count\(6) & ((GND) # (!\LCD_Data_unit|Add1~11\))) # (!\LCD_Data_unit|V_Count\(6) & (\LCD_Data_unit|Add1~11\ $ (GND)))
-- \LCD_Data_unit|Add1~13\ = CARRY((\LCD_Data_unit|V_Count\(6)) # (!\LCD_Data_unit|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Data_unit|V_Count\(6),
	datad => VCC,
	cin => \LCD_Data_unit|Add1~11\,
	combout => \LCD_Data_unit|Add1~12_combout\,
	cout => \LCD_Data_unit|Add1~13\);

-- Location: LCCOMB_X62_Y22_N18
\LCD_Data_unit|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|Add1~14_combout\ = (\LCD_Data_unit|V_Count\(7) & (\LCD_Data_unit|Add1~13\ & VCC)) # (!\LCD_Data_unit|V_Count\(7) & (!\LCD_Data_unit|Add1~13\))
-- \LCD_Data_unit|Add1~15\ = CARRY((!\LCD_Data_unit|V_Count\(7) & !\LCD_Data_unit|Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_Data_unit|V_Count\(7),
	datad => VCC,
	cin => \LCD_Data_unit|Add1~13\,
	combout => \LCD_Data_unit|Add1~14_combout\,
	cout => \LCD_Data_unit|Add1~15\);

-- Location: LCCOMB_X62_Y22_N24
\LCD_Data_unit|Equal10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|Equal10~1_combout\ = (\LCD_Data_unit|Add1~6_combout\ & (\LCD_Data_unit|Add1~4_combout\ & (\LCD_Data_unit|Add1~12_combout\ & \LCD_Data_unit|Add1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Data_unit|Add1~6_combout\,
	datab => \LCD_Data_unit|Add1~4_combout\,
	datac => \LCD_Data_unit|Add1~12_combout\,
	datad => \LCD_Data_unit|Add1~8_combout\,
	combout => \LCD_Data_unit|Equal10~1_combout\);

-- Location: LCCOMB_X62_Y22_N22
\LCD_Data_unit|Add1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|Add1~18_combout\ = \LCD_Data_unit|Add1~17\ $ (!\LCD_Data_unit|V_Count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \LCD_Data_unit|V_Count\(9),
	cin => \LCD_Data_unit|Add1~17\,
	combout => \LCD_Data_unit|Add1~18_combout\);

-- Location: LCCOMB_X62_Y22_N30
\LCD_Data_unit|Equal10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|Equal10~0_combout\ = (\LCD_Data_unit|Add1~2_combout\ & (\LCD_Data_unit|Add1~0_combout\ & (!\LCD_Data_unit|Add1~10_combout\ & !\LCD_Data_unit|Add1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Data_unit|Add1~2_combout\,
	datab => \LCD_Data_unit|Add1~0_combout\,
	datac => \LCD_Data_unit|Add1~10_combout\,
	datad => \LCD_Data_unit|Add1~18_combout\,
	combout => \LCD_Data_unit|Equal10~0_combout\);

-- Location: LCCOMB_X62_Y22_N26
\LCD_Data_unit|Equal10~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|Equal10~2_combout\ = (\LCD_Data_unit|Add1~16_combout\ & (\LCD_Data_unit|Add1~14_combout\ & (\LCD_Data_unit|Equal10~1_combout\ & \LCD_Data_unit|Equal10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Data_unit|Add1~16_combout\,
	datab => \LCD_Data_unit|Add1~14_combout\,
	datac => \LCD_Data_unit|Equal10~1_combout\,
	datad => \LCD_Data_unit|Equal10~0_combout\,
	combout => \LCD_Data_unit|Equal10~2_combout\);

-- Location: LCCOMB_X62_Y22_N2
\LCD_Data_unit|Equal9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|Equal9~1_combout\ = (!\LCD_Data_unit|Add1~6_combout\ & (!\LCD_Data_unit|Add1~4_combout\ & (!\LCD_Data_unit|Add1~12_combout\ & !\LCD_Data_unit|Add1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Data_unit|Add1~6_combout\,
	datab => \LCD_Data_unit|Add1~4_combout\,
	datac => \LCD_Data_unit|Add1~12_combout\,
	datad => \LCD_Data_unit|Add1~8_combout\,
	combout => \LCD_Data_unit|Equal9~1_combout\);

-- Location: LCCOMB_X62_Y22_N28
\LCD_Data_unit|Equal9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|Equal9~0_combout\ = (!\LCD_Data_unit|Add1~2_combout\ & (!\LCD_Data_unit|Add1~0_combout\ & (!\LCD_Data_unit|Add1~10_combout\ & !\LCD_Data_unit|Add1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Data_unit|Add1~2_combout\,
	datab => \LCD_Data_unit|Add1~0_combout\,
	datac => \LCD_Data_unit|Add1~10_combout\,
	datad => \LCD_Data_unit|Add1~18_combout\,
	combout => \LCD_Data_unit|Equal9~0_combout\);

-- Location: LCCOMB_X62_Y22_N0
\LCD_Data_unit|Equal9~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|Equal9~2_combout\ = (!\LCD_Data_unit|Add1~16_combout\ & (\LCD_Data_unit|Equal9~1_combout\ & (!\LCD_Data_unit|Add1~14_combout\ & \LCD_Data_unit|Equal9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Data_unit|Add1~16_combout\,
	datab => \LCD_Data_unit|Equal9~1_combout\,
	datac => \LCD_Data_unit|Add1~14_combout\,
	datad => \LCD_Data_unit|Equal9~0_combout\,
	combout => \LCD_Data_unit|Equal9~2_combout\);

-- Location: LCCOMB_X62_Y21_N30
\LCD_Data_unit|LTM_R[7]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|LTM_R[7]~2_combout\ = (!\LCD_Data_unit|Equal8~2_combout\ & (\LCD_Data_unit|LTM_R[7]~1_combout\ & (!\LCD_Data_unit|Equal10~2_combout\ & !\LCD_Data_unit|Equal9~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Data_unit|Equal8~2_combout\,
	datab => \LCD_Data_unit|LTM_R[7]~1_combout\,
	datac => \LCD_Data_unit|Equal10~2_combout\,
	datad => \LCD_Data_unit|Equal9~2_combout\,
	combout => \LCD_Data_unit|LTM_R[7]~2_combout\);

-- Location: LCCOMB_X62_Y21_N20
\LCD_Data_unit|LTM_B~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|LTM_B~0_combout\ = (\LCD_Data_unit|LTM_R[7]~2_combout\ & (Colourbar_Blue(7))) # (!\LCD_Data_unit|LTM_R[7]~2_combout\ & ((\LCD_Data_unit|LTM_R[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Colourbar_Blue(7),
	datac => \LCD_Data_unit|LTM_R[7]~0_combout\,
	datad => \LCD_Data_unit|LTM_R[7]~2_combout\,
	combout => \LCD_Data_unit|LTM_B~0_combout\);

-- Location: LCFF_X62_Y21_N21
\LCD_Data_unit|LTM_B[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Data_unit|LTM_B~0_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \LCD_Data_unit|V_Sync~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Data_unit|LTM_B\(7));

-- Location: LCCOMB_X59_Y21_N28
\LCD_Data_unit|LTM_DEN~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|LTM_DEN~feeder_combout\ = \LCD_Data_unit|LTM_R[7]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \LCD_Data_unit|LTM_R[7]~0_combout\,
	combout => \LCD_Data_unit|LTM_DEN~feeder_combout\);

-- Location: LCFF_X59_Y21_N29
\LCD_Data_unit|LTM_DEN\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Data_unit|LTM_DEN~feeder_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \LCD_Data_unit|V_Sync~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Data_unit|LTM_DEN~regout\);

-- Location: LCCOMB_X60_Y22_N22
\LCD_Data_unit|H_Count[6]~10_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|H_Count[6]~10_wirecell_combout\ = !\LCD_Data_unit|H_Count[6]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \LCD_Data_unit|H_Count[6]~10_combout\,
	combout => \LCD_Data_unit|H_Count[6]~10_wirecell_combout\);

-- Location: LCFF_X60_Y22_N23
\LCD_Data_unit|H_Sync\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Data_unit|H_Count[6]~10_wirecell_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \LCD_Data_unit|V_Sync~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Data_unit|H_Sync~regout\);

-- Location: LCCOMB_X60_Y22_N24
\LCD_Data_unit|LTM_HD~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|LTM_HD~0_combout\ = (\Top_state.010~regout\ & \LCD_Data_unit|H_Sync~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Top_state.010~regout\,
	datad => \LCD_Data_unit|H_Sync~regout\,
	combout => \LCD_Data_unit|LTM_HD~0_combout\);

-- Location: LCFF_X60_Y22_N25
\LCD_Data_unit|LTM_HD\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Data_unit|LTM_HD~0_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \LCD_Data_unit|V_Sync~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Data_unit|LTM_HD~regout\);

-- Location: LCCOMB_X62_Y21_N0
\LCD_Data_unit|LTM_G~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|LTM_G~0_combout\ = (\LCD_Data_unit|LTM_R[7]~2_combout\ & (Colourbar_Green(7))) # (!\LCD_Data_unit|LTM_R[7]~2_combout\ & ((\LCD_Data_unit|LTM_R[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Colourbar_Green(7),
	datac => \LCD_Data_unit|LTM_R[7]~0_combout\,
	datad => \LCD_Data_unit|LTM_R[7]~2_combout\,
	combout => \LCD_Data_unit|LTM_G~0_combout\);

-- Location: LCFF_X62_Y21_N1
\LCD_Data_unit|LTM_G[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Data_unit|LTM_G~0_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \LCD_Data_unit|V_Sync~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Data_unit|LTM_G\(7));

-- Location: LCFF_X62_Y21_N7
\Colourbar_Red[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Data_unit|Add0~4_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Colourbar_Red(7));

-- Location: LCCOMB_X62_Y21_N22
\LCD_Data_unit|LTM_R~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|LTM_R~3_combout\ = (\LCD_Data_unit|LTM_R[7]~2_combout\ & (Colourbar_Red(7))) # (!\LCD_Data_unit|LTM_R[7]~2_combout\ & ((\LCD_Data_unit|LTM_R[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Colourbar_Red(7),
	datac => \LCD_Data_unit|LTM_R[7]~0_combout\,
	datad => \LCD_Data_unit|LTM_R[7]~2_combout\,
	combout => \LCD_Data_unit|LTM_R~3_combout\);

-- Location: LCFF_X62_Y21_N23
\LCD_Data_unit|LTM_R[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Data_unit|LTM_R~3_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \LCD_Data_unit|V_Sync~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Data_unit|LTM_R\(7));

-- Location: LCCOMB_X34_Y19_N14
\Touch_Panel_unit|TP_SS_N_O~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_SS_N_O~0_combout\ = (!\Touch_Panel_unit|TP_SS_N_O~regout\ & (((\Touch_Panel_unit|TP_state.S_TP_ZF_Y~regout\) # (!\Touch_Panel_unit|TP_data_count[3]~2_combout\)) # (!\Touch_Panel_unit|TP_state.S_TP_SYNC_1K~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_state.S_TP_SYNC_1K~regout\,
	datab => \Touch_Panel_unit|TP_SS_N_O~regout\,
	datac => \Touch_Panel_unit|TP_state.S_TP_ZF_Y~regout\,
	datad => \Touch_Panel_unit|TP_data_count[3]~2_combout\,
	combout => \Touch_Panel_unit|TP_SS_N_O~0_combout\);

-- Location: LCCOMB_X34_Y19_N12
\Touch_Panel_unit|Coord_En~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|Coord_En~0_combout\ = (\Touch_Panel_unit|TP_state.S_TP_ZF_Y~regout\ & (\Touch_Panel_unit|TP_SCLK_O~regout\ & !\Touch_Panel_unit|Equal6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Touch_Panel_unit|TP_state.S_TP_ZF_Y~regout\,
	datac => \Touch_Panel_unit|TP_SCLK_O~regout\,
	datad => \Touch_Panel_unit|Equal6~0_combout\,
	combout => \Touch_Panel_unit|Coord_En~0_combout\);

-- Location: LCCOMB_X34_Y19_N18
\Touch_Panel_unit|TP_SS_N_O~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|TP_SS_N_O~1_combout\ = (!\Touch_Panel_unit|TP_SS_N_O~0_combout\ & ((!\Touch_Panel_unit|Coord_En~0_combout\) # (!\Touch_Panel_unit|TP_data_count[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Touch_Panel_unit|TP_data_count[3]~2_combout\,
	datac => \Touch_Panel_unit|TP_SS_N_O~0_combout\,
	datad => \Touch_Panel_unit|Coord_En~0_combout\,
	combout => \Touch_Panel_unit|TP_SS_N_O~1_combout\);

-- Location: LCFF_X34_Y19_N19
\Touch_Panel_unit|TP_SS_N_O\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Touch_Panel_unit|TP_SS_N_O~1_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Touch_Panel_unit|TP_SS_N_O~regout\);

-- Location: LCCOMB_X60_Y19_N26
\LTM_SCEN~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LTM_SCEN~0_combout\ = (\Touch_Panel_unit|TP_SS_N_O~regout\ & \LCD_TPn_sel~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Touch_Panel_unit|TP_SS_N_O~regout\,
	datad => \LCD_TPn_sel~regout\,
	combout => \LTM_SCEN~0_combout\);

-- Location: LCCOMB_X56_Y20_N8
\LCD_Config_unit|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|WideOr1~0_combout\ = \LCD_Config_unit|I2C_state\(3) $ (((\LCD_Config_unit|I2C_state\(2) & (\LCD_Config_unit|I2C_state\(0) & \LCD_Config_unit|I2C_state\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_state\(3),
	datab => \LCD_Config_unit|I2C_state\(2),
	datac => \LCD_Config_unit|I2C_state\(0),
	datad => \LCD_Config_unit|I2C_state\(1),
	combout => \LCD_Config_unit|WideOr1~0_combout\);

-- Location: LCCOMB_X60_Y20_N12
\LCD_Config_unit|I2C_data~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_data~0_combout\ = (!\LCD_Config_unit|I2C_unit|Acknowledge~regout\ & (\LCD_Config_unit|always1~0_combout\ & ((\LCD_Config_unit|always1~1_combout\) # (!\LCD_Config_unit|I2C_state\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|always1~1_combout\,
	datab => \LCD_Config_unit|I2C_state\(2),
	datac => \LCD_Config_unit|I2C_unit|Acknowledge~regout\,
	datad => \LCD_Config_unit|always1~0_combout\,
	combout => \LCD_Config_unit|I2C_data~0_combout\);

-- Location: LCCOMB_X59_Y20_N0
\LCD_Config_unit|I2C_data[15]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_data[15]~1_combout\ = (\LCD_Config_unit|Equal0~1_combout\ & (\LCD_config_start~regout\)) # (!\LCD_Config_unit|Equal0~1_combout\ & ((\LCD_Config_unit|I2C_data~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_config_start~regout\,
	datac => \LCD_Config_unit|I2C_data~0_combout\,
	datad => \LCD_Config_unit|Equal0~1_combout\,
	combout => \LCD_Config_unit|I2C_data[15]~1_combout\);

-- Location: LCFF_X56_Y20_N9
\LCD_Config_unit|I2C_data[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|WideOr1~0_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	sclr => \LCD_Config_unit|I2C_state\(4),
	ena => \LCD_Config_unit|I2C_data[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_data\(13));

-- Location: LCCOMB_X56_Y20_N28
\LCD_Config_unit|WideOr2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|WideOr2~2_combout\ = (\LCD_Config_unit|I2C_state\(0) & \LCD_Config_unit|I2C_state\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LCD_Config_unit|I2C_state\(0),
	datad => \LCD_Config_unit|I2C_state\(1),
	combout => \LCD_Config_unit|WideOr2~2_combout\);

-- Location: LCCOMB_X56_Y20_N4
\LCD_Config_unit|WideOr2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|WideOr2~3_combout\ = (\LCD_Config_unit|I2C_state\(4) & (!\LCD_Config_unit|I2C_state\(2) & (!\LCD_Config_unit|I2C_state\(3) & \LCD_Config_unit|WideOr2~2_combout\))) # (!\LCD_Config_unit|I2C_state\(4) & (\LCD_Config_unit|I2C_state\(2) $ 
-- (((\LCD_Config_unit|WideOr2~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_state\(4),
	datab => \LCD_Config_unit|I2C_state\(2),
	datac => \LCD_Config_unit|I2C_state\(3),
	datad => \LCD_Config_unit|WideOr2~2_combout\,
	combout => \LCD_Config_unit|WideOr2~3_combout\);

-- Location: LCFF_X56_Y20_N5
\LCD_Config_unit|I2C_data[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|WideOr2~3_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \LCD_Config_unit|I2C_data[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_data\(12));

-- Location: LCCOMB_X56_Y20_N24
\LCD_Config_unit|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|WideOr3~0_combout\ = (!\LCD_Config_unit|I2C_state\(3) & (!\LCD_Config_unit|I2C_state\(2) & (\LCD_Config_unit|I2C_state\(0) $ (\LCD_Config_unit|I2C_state\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_state\(3),
	datab => \LCD_Config_unit|I2C_state\(2),
	datac => \LCD_Config_unit|I2C_state\(0),
	datad => \LCD_Config_unit|I2C_state\(1),
	combout => \LCD_Config_unit|WideOr3~0_combout\);

-- Location: LCCOMB_X56_Y20_N26
\LCD_Config_unit|WideOr3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|WideOr3~1_combout\ = (\LCD_Config_unit|I2C_state\(4) & (((\LCD_Config_unit|WideOr3~0_combout\)))) # (!\LCD_Config_unit|I2C_state\(4) & (\LCD_Config_unit|I2C_state\(0) $ (((\LCD_Config_unit|I2C_state\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_state\(4),
	datab => \LCD_Config_unit|I2C_state\(0),
	datac => \LCD_Config_unit|WideOr3~0_combout\,
	datad => \LCD_Config_unit|I2C_state\(1),
	combout => \LCD_Config_unit|WideOr3~1_combout\);

-- Location: LCFF_X56_Y20_N27
\LCD_Config_unit|I2C_data[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|WideOr3~1_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \LCD_Config_unit|I2C_data[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_data\(11));

-- Location: LCCOMB_X58_Y20_N18
\LCD_Config_unit|I2C_data[8]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_data[8]~3_combout\ = (\LCD_Config_unit|I2C_data~2_combout\ & ((\LCD_Config_unit|Equal0~0_combout\) # ((!\LCD_Config_unit|I2C_state\(4))))) # (!\LCD_Config_unit|I2C_data~2_combout\ & (((\LCD_Config_unit|I2C_data\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_data~2_combout\,
	datab => \LCD_Config_unit|Equal0~0_combout\,
	datac => \LCD_Config_unit|I2C_data\(8),
	datad => \LCD_Config_unit|I2C_state\(4),
	combout => \LCD_Config_unit|I2C_data[8]~3_combout\);

-- Location: LCFF_X58_Y20_N19
\LCD_Config_unit|I2C_data[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|I2C_data[8]~3_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_data\(8));

-- Location: LCCOMB_X58_Y20_N26
\LCD_Config_unit|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|Mux0~0_combout\ = (\LCD_Config_unit|I2C_state\(0) & (\LCD_Config_unit|I2C_state\(2) & ((\LCD_Config_unit|I2C_state\(3)) # (\LCD_Config_unit|I2C_state\(1))))) # (!\LCD_Config_unit|I2C_state\(0) & (\LCD_Config_unit|I2C_state\(1) $ 
-- (((!\LCD_Config_unit|I2C_state\(3) & \LCD_Config_unit|I2C_state\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_state\(3),
	datab => \LCD_Config_unit|I2C_state\(2),
	datac => \LCD_Config_unit|I2C_state\(1),
	datad => \LCD_Config_unit|I2C_state\(0),
	combout => \LCD_Config_unit|Mux0~0_combout\);

-- Location: LCCOMB_X58_Y20_N24
\LCD_Config_unit|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|Mux0~1_combout\ = (\LCD_Config_unit|WideOr4~0_combout\) # ((\LCD_Config_unit|Mux0~0_combout\ & !\LCD_Config_unit|I2C_state\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|WideOr4~0_combout\,
	datab => \LCD_Config_unit|Mux0~0_combout\,
	datad => \LCD_Config_unit|I2C_state\(4),
	combout => \LCD_Config_unit|Mux0~1_combout\);

-- Location: LCFF_X58_Y20_N25
\LCD_Config_unit|I2C_data[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|Mux0~1_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \LCD_Config_unit|I2C_data[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_data\(7));

-- Location: LCCOMB_X57_Y20_N24
\LCD_Config_unit|I2C_unit|sdat~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_unit|sdat~8_combout\ = (\LCD_Config_unit|I2C_unit|Equal3~0_combout\ & ((!\LCD_Config_unit|I2C_data\(7)))) # (!\LCD_Config_unit|I2C_unit|Equal3~0_combout\ & (\LCD_Config_unit|I2C_unit|sdat\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_unit|sdat\(6),
	datab => \LCD_Config_unit|I2C_data\(7),
	datad => \LCD_Config_unit|I2C_unit|Equal3~0_combout\,
	combout => \LCD_Config_unit|I2C_unit|sdat~8_combout\);

-- Location: LCFF_X57_Y20_N25
\LCD_Config_unit|I2C_unit|sdat[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|I2C_unit|sdat~8_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \LCD_Config_unit|I2C_unit|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_unit|sdat\(7));

-- Location: LCCOMB_X57_Y20_N26
\LCD_Config_unit|I2C_unit|sdat~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_unit|sdat~7_combout\ = (\LCD_Config_unit|I2C_unit|Equal3~0_combout\ & (!\LCD_Config_unit|I2C_data\(8))) # (!\LCD_Config_unit|I2C_unit|Equal3~0_combout\ & ((\LCD_Config_unit|I2C_unit|sdat\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD_Config_unit|I2C_data\(8),
	datac => \LCD_Config_unit|I2C_unit|sdat\(7),
	datad => \LCD_Config_unit|I2C_unit|Equal3~0_combout\,
	combout => \LCD_Config_unit|I2C_unit|sdat~7_combout\);

-- Location: LCFF_X57_Y20_N27
\LCD_Config_unit|I2C_unit|sdat[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|I2C_unit|sdat~7_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \LCD_Config_unit|I2C_unit|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_unit|sdat\(8));

-- Location: LCCOMB_X57_Y20_N28
\LCD_Config_unit|I2C_unit|sdat~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_unit|sdat~6_combout\ = (\LCD_Config_unit|I2C_unit|sdat\(8)) # ((!\LCD_Config_unit|I2C_unit|state_counter\(4) & (\LCD_Config_unit|I2C_unit|Equal0~0_combout\ & \LCD_Config_unit|I2C_unit|state_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_unit|state_counter\(4),
	datab => \LCD_Config_unit|I2C_unit|sdat\(8),
	datac => \LCD_Config_unit|I2C_unit|Equal0~0_combout\,
	datad => \LCD_Config_unit|I2C_unit|state_counter\(1),
	combout => \LCD_Config_unit|I2C_unit|sdat~6_combout\);

-- Location: LCFF_X57_Y20_N29
\LCD_Config_unit|I2C_unit|sdat[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|I2C_unit|sdat~6_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \LCD_Config_unit|I2C_unit|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_unit|sdat\(9));

-- Location: LCCOMB_X58_Y20_N20
\LCD_Config_unit|WideOr4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|WideOr4~1_combout\ = (\LCD_Config_unit|I2C_state\(4) & ((\LCD_Config_unit|I2C_state\(3)) # ((\LCD_Config_unit|I2C_state\(1)) # (\LCD_Config_unit|I2C_state\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_state\(3),
	datab => \LCD_Config_unit|I2C_state\(4),
	datac => \LCD_Config_unit|I2C_state\(1),
	datad => \LCD_Config_unit|I2C_state\(2),
	combout => \LCD_Config_unit|WideOr4~1_combout\);

-- Location: LCCOMB_X58_Y20_N30
\LCD_Config_unit|WideOr4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|WideOr4~2_combout\ = (\LCD_Config_unit|I2C_state\(0) & (\LCD_Config_unit|WideOr4~0_combout\)) # (!\LCD_Config_unit|I2C_state\(0) & ((!\LCD_Config_unit|WideOr4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|WideOr4~0_combout\,
	datac => \LCD_Config_unit|WideOr4~1_combout\,
	datad => \LCD_Config_unit|I2C_state\(0),
	combout => \LCD_Config_unit|WideOr4~2_combout\);

-- Location: LCFF_X58_Y20_N31
\LCD_Config_unit|I2C_data[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|WideOr4~2_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \LCD_Config_unit|I2C_data[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_data\(10));

-- Location: LCCOMB_X57_Y20_N30
\LCD_Config_unit|I2C_unit|sdat~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_unit|sdat~5_combout\ = (\LCD_Config_unit|I2C_unit|Equal3~0_combout\ & ((!\LCD_Config_unit|I2C_data\(10)))) # (!\LCD_Config_unit|I2C_unit|Equal3~0_combout\ & (\LCD_Config_unit|I2C_unit|sdat\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_unit|Equal3~0_combout\,
	datab => \LCD_Config_unit|I2C_unit|sdat\(9),
	datad => \LCD_Config_unit|I2C_data\(10),
	combout => \LCD_Config_unit|I2C_unit|sdat~5_combout\);

-- Location: LCFF_X57_Y20_N31
\LCD_Config_unit|I2C_unit|sdat[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|I2C_unit|sdat~5_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \LCD_Config_unit|I2C_unit|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_unit|sdat\(10));

-- Location: LCCOMB_X56_Y20_N10
\LCD_Config_unit|I2C_unit|sdat~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_unit|sdat~4_combout\ = (\LCD_Config_unit|I2C_unit|Equal3~0_combout\ & (!\LCD_Config_unit|I2C_data\(11))) # (!\LCD_Config_unit|I2C_unit|Equal3~0_combout\ & ((\LCD_Config_unit|I2C_unit|sdat\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD_Config_unit|I2C_data\(11),
	datac => \LCD_Config_unit|I2C_unit|Equal3~0_combout\,
	datad => \LCD_Config_unit|I2C_unit|sdat\(10),
	combout => \LCD_Config_unit|I2C_unit|sdat~4_combout\);

-- Location: LCFF_X56_Y20_N11
\LCD_Config_unit|I2C_unit|sdat[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|I2C_unit|sdat~4_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \LCD_Config_unit|I2C_unit|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_unit|sdat\(11));

-- Location: LCCOMB_X56_Y20_N22
\LCD_Config_unit|I2C_unit|sdat~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_unit|sdat~3_combout\ = (\LCD_Config_unit|I2C_unit|Equal3~0_combout\ & (!\LCD_Config_unit|I2C_data\(12))) # (!\LCD_Config_unit|I2C_unit|Equal3~0_combout\ & ((\LCD_Config_unit|I2C_unit|sdat\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD_Config_unit|I2C_data\(12),
	datac => \LCD_Config_unit|I2C_unit|Equal3~0_combout\,
	datad => \LCD_Config_unit|I2C_unit|sdat\(11),
	combout => \LCD_Config_unit|I2C_unit|sdat~3_combout\);

-- Location: LCFF_X56_Y20_N23
\LCD_Config_unit|I2C_unit|sdat[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|I2C_unit|sdat~3_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \LCD_Config_unit|I2C_unit|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_unit|sdat\(12));

-- Location: LCCOMB_X56_Y20_N16
\LCD_Config_unit|I2C_unit|sdat~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_unit|sdat~2_combout\ = (\LCD_Config_unit|I2C_unit|Equal3~0_combout\ & (!\LCD_Config_unit|I2C_data\(13))) # (!\LCD_Config_unit|I2C_unit|Equal3~0_combout\ & ((\LCD_Config_unit|I2C_unit|sdat\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD_Config_unit|I2C_data\(13),
	datac => \LCD_Config_unit|I2C_unit|Equal3~0_combout\,
	datad => \LCD_Config_unit|I2C_unit|sdat\(12),
	combout => \LCD_Config_unit|I2C_unit|sdat~2_combout\);

-- Location: LCFF_X56_Y20_N17
\LCD_Config_unit|I2C_unit|sdat[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|I2C_unit|sdat~2_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \LCD_Config_unit|I2C_unit|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_unit|sdat\(13));

-- Location: LCCOMB_X56_Y20_N18
\LCD_Config_unit|Lookup_data~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|Lookup_data~0_combout\ = (\LCD_Config_unit|I2C_state\(3) & (\LCD_Config_unit|I2C_state\(2) & (\LCD_Config_unit|I2C_state\(0) & \LCD_Config_unit|I2C_state\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_state\(3),
	datab => \LCD_Config_unit|I2C_state\(2),
	datac => \LCD_Config_unit|I2C_state\(0),
	datad => \LCD_Config_unit|I2C_state\(1),
	combout => \LCD_Config_unit|Lookup_data~0_combout\);

-- Location: LCCOMB_X57_Y20_N20
\LCD_Config_unit|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|WideOr0~0_combout\ = (!\LCD_Config_unit|Lookup_data~0_combout\ & !\LCD_Config_unit|I2C_state\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD_Config_unit|Lookup_data~0_combout\,
	datad => \LCD_Config_unit|I2C_state\(4),
	combout => \LCD_Config_unit|WideOr0~0_combout\);

-- Location: LCFF_X57_Y20_N21
\LCD_Config_unit|I2C_data[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|WideOr0~0_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \LCD_Config_unit|I2C_data[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_data\(14));

-- Location: LCCOMB_X57_Y20_N22
\LCD_Config_unit|I2C_unit|sdat~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_unit|sdat~1_combout\ = (\LCD_Config_unit|I2C_unit|Equal3~0_combout\ & ((!\LCD_Config_unit|I2C_data\(14)))) # (!\LCD_Config_unit|I2C_unit|Equal3~0_combout\ & (\LCD_Config_unit|I2C_unit|sdat\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD_Config_unit|I2C_unit|sdat\(13),
	datac => \LCD_Config_unit|I2C_data\(14),
	datad => \LCD_Config_unit|I2C_unit|Equal3~0_combout\,
	combout => \LCD_Config_unit|I2C_unit|sdat~1_combout\);

-- Location: LCFF_X57_Y20_N23
\LCD_Config_unit|I2C_unit|sdat[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|I2C_unit|sdat~1_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \LCD_Config_unit|I2C_unit|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_unit|sdat\(14));

-- Location: LCCOMB_X57_Y20_N0
\LCD_Config_unit|I2C_unit|sdat~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_unit|sdat~0_combout\ = (\LCD_Config_unit|I2C_unit|Equal3~0_combout\ & (!\LCD_Config_unit|I2C_data\(15))) # (!\LCD_Config_unit|I2C_unit|Equal3~0_combout\ & ((\LCD_Config_unit|I2C_unit|sdat\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_data\(15),
	datab => \LCD_Config_unit|I2C_unit|sdat\(14),
	datad => \LCD_Config_unit|I2C_unit|Equal3~0_combout\,
	combout => \LCD_Config_unit|I2C_unit|sdat~0_combout\);

-- Location: LCFF_X57_Y20_N1
\LCD_Config_unit|I2C_unit|sdat[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|I2C_unit|sdat~0_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \LCD_Config_unit|I2C_unit|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_unit|sdat\(15));

-- Location: LCCOMB_X33_Y18_N0
\Touch_Panel_unit|X_Coord[11]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|X_Coord[11]~0_combout\ = (\Touch_Panel_unit|En_SPI_Clock~regout\ & (\Touch_Panel_unit|TP_state.S_TP_ZF_Y~regout\ & \Touch_Panel_unit|TP_data_reg[11]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Touch_Panel_unit|En_SPI_Clock~regout\,
	datac => \Touch_Panel_unit|TP_state.S_TP_ZF_Y~regout\,
	datad => \Touch_Panel_unit|TP_data_reg[11]~2_combout\,
	combout => \Touch_Panel_unit|X_Coord[11]~0_combout\);

-- Location: LCFF_X32_Y17_N3
\Touch_Panel_unit|X_Coord[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \Touch_Panel_unit|TP_data_reg\(9),
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	sload => VCC,
	ena => \Touch_Panel_unit|X_Coord[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Touch_Panel_unit|X_Coord\(9));

-- Location: LCFF_X32_Y17_N5
\Touch_Panel_unit|X_Coord[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \Touch_Panel_unit|TP_data_reg\(8),
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	sload => VCC,
	ena => \Touch_Panel_unit|X_Coord[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Touch_Panel_unit|X_Coord\(8));

-- Location: LCCOMB_X32_Y17_N28
\Touch_Panel_unit|X_Coord[10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|X_Coord[10]~feeder_combout\ = \Touch_Panel_unit|TP_data_reg\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Touch_Panel_unit|TP_data_reg\(10),
	combout => \Touch_Panel_unit|X_Coord[10]~feeder_combout\);

-- Location: LCFF_X32_Y17_N29
\Touch_Panel_unit|X_Coord[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Touch_Panel_unit|X_Coord[10]~feeder_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \Touch_Panel_unit|X_Coord[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Touch_Panel_unit|X_Coord\(10));

-- Location: LCCOMB_X32_Y17_N4
\LessThan5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan5~0_combout\ = (\Touch_Panel_unit|X_Coord\(7) & (\Touch_Panel_unit|X_Coord\(9) & (\Touch_Panel_unit|X_Coord\(8) & \Touch_Panel_unit|X_Coord\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|X_Coord\(7),
	datab => \Touch_Panel_unit|X_Coord\(9),
	datac => \Touch_Panel_unit|X_Coord\(8),
	datad => \Touch_Panel_unit|X_Coord\(10),
	combout => \LessThan5~0_combout\);

-- Location: LCFF_X33_Y17_N29
\Touch_Panel_unit|X_Coord[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \Touch_Panel_unit|TP_data_reg\(11),
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	sload => VCC,
	ena => \Touch_Panel_unit|X_Coord[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Touch_Panel_unit|X_Coord\(11));

-- Location: LCFF_X33_Y17_N3
\Touch_Panel_unit|X_Coord[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \Touch_Panel_unit|TP_data_reg\(4),
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	sload => VCC,
	ena => \Touch_Panel_unit|X_Coord[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Touch_Panel_unit|X_Coord\(4));

-- Location: LCFF_X33_Y17_N7
\Touch_Panel_unit|X_Coord[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \Touch_Panel_unit|TP_data_reg\(6),
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	sload => VCC,
	ena => \Touch_Panel_unit|X_Coord[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Touch_Panel_unit|X_Coord\(6));

-- Location: LCCOMB_X33_Y17_N0
\Touch_Panel_unit|X_Coord[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|X_Coord[5]~feeder_combout\ = \Touch_Panel_unit|TP_data_reg\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Touch_Panel_unit|TP_data_reg\(5),
	combout => \Touch_Panel_unit|X_Coord[5]~feeder_combout\);

-- Location: LCFF_X33_Y17_N1
\Touch_Panel_unit|X_Coord[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Touch_Panel_unit|X_Coord[5]~feeder_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \Touch_Panel_unit|X_Coord[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Touch_Panel_unit|X_Coord\(5));

-- Location: LCCOMB_X33_Y17_N6
\LessThan5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan5~1_combout\ = (\Touch_Panel_unit|X_Coord\(6) & ((\Touch_Panel_unit|X_Coord\(4)) # (\Touch_Panel_unit|X_Coord\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Touch_Panel_unit|X_Coord\(4),
	datac => \Touch_Panel_unit|X_Coord\(6),
	datad => \Touch_Panel_unit|X_Coord\(5),
	combout => \LessThan5~1_combout\);

-- Location: LCCOMB_X32_Y17_N18
\LessThan5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan5~2_combout\ = (\Touch_Panel_unit|X_Coord\(11)) # ((\LessThan5~0_combout\ & \LessThan5~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan5~0_combout\,
	datac => \Touch_Panel_unit|X_Coord\(11),
	datad => \LessThan5~1_combout\,
	combout => \LessThan5~2_combout\);

-- Location: LCCOMB_X35_Y15_N14
\Touch_Panel_unit|Y_Coord[9]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|Y_Coord[9]~2_combout\ = !\Touch_Panel_unit|TP_data_reg\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Touch_Panel_unit|TP_data_reg\(9),
	combout => \Touch_Panel_unit|Y_Coord[9]~2_combout\);

-- Location: LCCOMB_X35_Y15_N2
\Touch_Panel_unit|Y_Coord[11]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|Y_Coord[11]~0_combout\ = (\Touch_Panel_unit|En_SPI_Clock~regout\ & (\Touch_Panel_unit|TP_state.S_TP_ZF_X~regout\ & \Touch_Panel_unit|TP_data_reg[11]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|En_SPI_Clock~regout\,
	datac => \Touch_Panel_unit|TP_state.S_TP_ZF_X~regout\,
	datad => \Touch_Panel_unit|TP_data_reg[11]~2_combout\,
	combout => \Touch_Panel_unit|Y_Coord[11]~0_combout\);

-- Location: LCFF_X35_Y15_N15
\Touch_Panel_unit|Y_Coord[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Touch_Panel_unit|Y_Coord[9]~2_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \Touch_Panel_unit|Y_Coord[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Touch_Panel_unit|Y_Coord\(9));

-- Location: LCCOMB_X35_Y15_N16
\Touch_Panel_unit|Y_Coord[10]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|Y_Coord[10]~1_combout\ = !\Touch_Panel_unit|TP_data_reg\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Touch_Panel_unit|TP_data_reg\(10),
	combout => \Touch_Panel_unit|Y_Coord[10]~1_combout\);

-- Location: LCFF_X35_Y15_N17
\Touch_Panel_unit|Y_Coord[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Touch_Panel_unit|Y_Coord[10]~1_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \Touch_Panel_unit|Y_Coord[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Touch_Panel_unit|Y_Coord\(10));

-- Location: LCCOMB_X35_Y15_N12
\Touch_Panel_unit|Y_Coord[8]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|Y_Coord[8]~3_combout\ = !\Touch_Panel_unit|TP_data_reg\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Touch_Panel_unit|TP_data_reg\(8),
	combout => \Touch_Panel_unit|Y_Coord[8]~3_combout\);

-- Location: LCFF_X35_Y15_N13
\Touch_Panel_unit|Y_Coord[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Touch_Panel_unit|Y_Coord[8]~3_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \Touch_Panel_unit|Y_Coord[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Touch_Panel_unit|Y_Coord\(8));

-- Location: LCCOMB_X35_Y15_N0
\TP_position[0][1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \TP_position[0][1]~0_combout\ = (\Touch_Panel_unit|Y_Coord\(7) & (\Touch_Panel_unit|Y_Coord\(9) & (\Touch_Panel_unit|Y_Coord\(10) & \Touch_Panel_unit|Y_Coord\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|Y_Coord\(7),
	datab => \Touch_Panel_unit|Y_Coord\(9),
	datac => \Touch_Panel_unit|Y_Coord\(10),
	datad => \Touch_Panel_unit|Y_Coord\(8),
	combout => \TP_position[0][1]~0_combout\);

-- Location: LCCOMB_X36_Y16_N16
\Touch_Panel_unit|Coord_En~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|Coord_En~1_combout\ = (\Touch_Panel_unit|Coord_En~regout\) # ((\Touch_Panel_unit|TP_penirq~regout\ & (\Touch_Panel_unit|En_SPI_Clock~regout\ & \Touch_Panel_unit|Coord_En~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_penirq~regout\,
	datab => \Touch_Panel_unit|En_SPI_Clock~regout\,
	datac => \Touch_Panel_unit|Coord_En~regout\,
	datad => \Touch_Panel_unit|Coord_En~0_combout\,
	combout => \Touch_Panel_unit|Coord_En~1_combout\);

-- Location: LCFF_X36_Y16_N17
\Touch_Panel_unit|Coord_En\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Touch_Panel_unit|Coord_En~1_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	sclr => \Touch_Panel_unit|ALT_INV_TP_state.S_TP_IDLE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Touch_Panel_unit|Coord_En~regout\);

-- Location: LCCOMB_X35_Y15_N18
\TP_position[0][0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \TP_position[0][0]~2_combout\ = (\Touch_Panel_unit|Coord_En~regout\ & ((!\TP_position[0][1]~0_combout\) # (!\TP_position[0][0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TP_position[0][0]~1_combout\,
	datab => \TP_position[0][1]~0_combout\,
	datac => \Touch_Panel_unit|Coord_En~regout\,
	combout => \TP_position[0][0]~2_combout\);

-- Location: LCCOMB_X35_Y15_N8
\TP_position[0][0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \TP_position[0][0]~3_combout\ = (\TP_position[0][0]~2_combout\ & (\LessThan5~2_combout\ & ((\TP_position[0][0]~regout\) # (!\always2~0_combout\)))) # (!\TP_position[0][0]~2_combout\ & (((\TP_position[0][0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always2~0_combout\,
	datab => \LessThan5~2_combout\,
	datac => \TP_position[0][0]~regout\,
	datad => \TP_position[0][0]~2_combout\,
	combout => \TP_position[0][0]~3_combout\);

-- Location: LCFF_X35_Y15_N9
\TP_position[0][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \TP_position[0][0]~3_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TP_position[0][0]~regout\);

-- Location: LCCOMB_X32_Y17_N26
\always2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \always2~0_combout\ = (\Touch_Panel_unit|X_Coord\(11) & (\LessThan5~0_combout\ & ((\Touch_Panel_unit|X_Coord\(5)) # (\Touch_Panel_unit|X_Coord\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|X_Coord\(11),
	datab => \Touch_Panel_unit|X_Coord\(5),
	datac => \LessThan5~0_combout\,
	datad => \Touch_Panel_unit|X_Coord\(6),
	combout => \always2~0_combout\);

-- Location: LCCOMB_X35_Y15_N4
\TP_position[0][0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \TP_position[0][0]~5_combout\ = ((\LessThan5~2_combout\ & \always2~0_combout\)) # (!\TP_position[0][0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TP_position[0][0]~2_combout\,
	datac => \LessThan5~2_combout\,
	datad => \always2~0_combout\,
	combout => \TP_position[0][0]~5_combout\);

-- Location: LCCOMB_X35_Y15_N30
\Touch_Panel_unit|Y_Coord[11]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|Y_Coord[11]~5_combout\ = !\Touch_Panel_unit|TP_data_reg\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Touch_Panel_unit|TP_data_reg\(11),
	combout => \Touch_Panel_unit|Y_Coord[11]~5_combout\);

-- Location: LCFF_X35_Y15_N31
\Touch_Panel_unit|Y_Coord[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Touch_Panel_unit|Y_Coord[11]~5_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \Touch_Panel_unit|Y_Coord[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Touch_Panel_unit|Y_Coord\(11));

-- Location: LCCOMB_X35_Y15_N26
\TP_position[0][1]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \TP_position[0][1]~6_combout\ = (\TP_position[0][0]~5_combout\ & (((\TP_position[0][1]~regout\)))) # (!\TP_position[0][0]~5_combout\ & ((\TP_position[0][1]~4_combout\) # ((\Touch_Panel_unit|Y_Coord\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TP_position[0][1]~4_combout\,
	datab => \TP_position[0][0]~5_combout\,
	datac => \TP_position[0][1]~regout\,
	datad => \Touch_Panel_unit|Y_Coord\(11),
	combout => \TP_position[0][1]~6_combout\);

-- Location: LCFF_X35_Y15_N27
\TP_position[0][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \TP_position[0][1]~6_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TP_position[0][1]~regout\);

-- Location: LCCOMB_X36_Y17_N26
\Touch_Panel_unit|Touch_En~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|Touch_En~2_combout\ = (\Touch_Panel_unit|TP_state.S_TP_DEBOUNCE~regout\ & (\Touch_Panel_unit|Equal8~0_combout\ & (\Touch_Panel_unit|En_SPI_Clock~regout\ & \Touch_Panel_unit|Equal7~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_state.S_TP_DEBOUNCE~regout\,
	datab => \Touch_Panel_unit|Equal8~0_combout\,
	datac => \Touch_Panel_unit|En_SPI_Clock~regout\,
	datad => \Touch_Panel_unit|Equal7~2_combout\,
	combout => \Touch_Panel_unit|Touch_En~2_combout\);

-- Location: LCCOMB_X36_Y16_N0
\Touch_Panel_unit|Touch_En~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|Touch_En~4_combout\ = (\Touch_Panel_unit|TP_penirq~regout\ $ (((\Touch_Panel_unit|TP_state.S_TP_ENABLE~regout\) # (!\Touch_Panel_unit|Touch_En~2_combout\)))) # (!\Touch_Panel_unit|TP_state.S_TP_IDLE~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_penirq~regout\,
	datab => \Touch_Panel_unit|TP_state.S_TP_IDLE~regout\,
	datac => \Touch_Panel_unit|TP_state.S_TP_ENABLE~regout\,
	datad => \Touch_Panel_unit|Touch_En~2_combout\,
	combout => \Touch_Panel_unit|Touch_En~4_combout\);

-- Location: LCCOMB_X36_Y16_N4
\Touch_Panel_unit|Touch_En~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|Touch_En~5_combout\ = (\Touch_Panel_unit|TP_penirq~regout\ & ((\Touch_Panel_unit|Touch_En~regout\) # (\Touch_Panel_unit|Touch_En~4_combout\))) # (!\Touch_Panel_unit|TP_penirq~regout\ & (\Touch_Panel_unit|Touch_En~regout\ & 
-- \Touch_Panel_unit|Touch_En~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_penirq~regout\,
	datac => \Touch_Panel_unit|Touch_En~regout\,
	datad => \Touch_Panel_unit|Touch_En~4_combout\,
	combout => \Touch_Panel_unit|Touch_En~5_combout\);

-- Location: LCFF_X36_Y16_N5
\Touch_Panel_unit|Touch_En\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Touch_Panel_unit|Touch_En~5_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Touch_Panel_unit|Touch_En~regout\);

-- Location: LCCOMB_X36_Y16_N6
\TP_position[6][4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \TP_position[6][4]~feeder_combout\ = \Touch_Panel_unit|Touch_En~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Touch_Panel_unit|Touch_En~regout\,
	combout => \TP_position[6][4]~feeder_combout\);

-- Location: LCFF_X36_Y16_N7
\TP_position[6][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \TP_position[6][4]~feeder_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TP_position[6][4]~regout\);

-- Location: LCCOMB_X28_Y1_N16
\display_unit|SEVEN_SEGMENT_N_O[0][0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unit|SEVEN_SEGMENT_N_O[0][0]~0_combout\ = ((\TP_position[0][0]~regout\ & !\TP_position[0][1]~regout\)) # (!\TP_position[6][4]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TP_position[0][0]~regout\,
	datab => \TP_position[0][1]~regout\,
	datac => \TP_position[6][4]~regout\,
	combout => \display_unit|SEVEN_SEGMENT_N_O[0][0]~0_combout\);

-- Location: LCCOMB_X28_Y1_N26
\display_unit|SEVEN_SEGMENT_N_O[0][2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unit|SEVEN_SEGMENT_N_O[0][2]~1_combout\ = ((!\TP_position[0][0]~regout\ & \TP_position[0][1]~regout\)) # (!\TP_position[6][4]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TP_position[0][0]~regout\,
	datab => \TP_position[0][1]~regout\,
	datac => \TP_position[6][4]~regout\,
	combout => \display_unit|SEVEN_SEGMENT_N_O[0][2]~1_combout\);

-- Location: LCCOMB_X28_Y1_N20
\display_unit|SEVEN_SEGMENT_N_O[0][4]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unit|SEVEN_SEGMENT_N_O[0][4]~2_combout\ = (\TP_position[6][4]~regout\ & !\TP_position[0][0]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TP_position[6][4]~regout\,
	datac => \TP_position[0][0]~regout\,
	combout => \display_unit|SEVEN_SEGMENT_N_O[0][4]~2_combout\);

-- Location: LCCOMB_X28_Y1_N2
\display_unit|SEVEN_SEGMENT_N_O[0][5]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unit|SEVEN_SEGMENT_N_O[0][5]~3_combout\ = (\TP_position[0][0]~regout\) # ((\TP_position[0][1]~regout\) # (!\TP_position[6][4]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TP_position[0][0]~regout\,
	datab => \TP_position[0][1]~regout\,
	datac => \TP_position[6][4]~regout\,
	combout => \display_unit|SEVEN_SEGMENT_N_O[0][5]~3_combout\);

-- Location: LCCOMB_X28_Y1_N12
\display_unit|SEVEN_SEGMENT_N_O[0][6]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unit|SEVEN_SEGMENT_N_O[0][6]~4_combout\ = (!\TP_position[0][1]~regout\) # (!\TP_position[6][4]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TP_position[6][4]~regout\,
	datac => \TP_position[0][1]~regout\,
	combout => \display_unit|SEVEN_SEGMENT_N_O[0][6]~4_combout\);

-- Location: LCCOMB_X35_Y15_N22
\Touch_Panel_unit|Y_Coord[5]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|Y_Coord[5]~7_combout\ = !\Touch_Panel_unit|TP_data_reg\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Touch_Panel_unit|TP_data_reg\(5),
	combout => \Touch_Panel_unit|Y_Coord[5]~7_combout\);

-- Location: LCFF_X35_Y15_N23
\Touch_Panel_unit|Y_Coord[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Touch_Panel_unit|Y_Coord[5]~7_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \Touch_Panel_unit|Y_Coord[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Touch_Panel_unit|Y_Coord\(5));

-- Location: LCCOMB_X38_Y15_N2
\TP_position[1][1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \TP_position[1][1]~feeder_combout\ = \Touch_Panel_unit|Y_Coord\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Touch_Panel_unit|Y_Coord\(5),
	combout => \TP_position[1][1]~feeder_combout\);

-- Location: LCFF_X38_Y15_N3
\TP_position[1][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \TP_position[1][1]~feeder_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \Touch_Panel_unit|Coord_En~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TP_position[1][1]~regout\);

-- Location: LCCOMB_X35_Y15_N10
\Touch_Panel_unit|Y_Coord[7]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|Y_Coord[7]~4_combout\ = !\Touch_Panel_unit|TP_data_reg\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Touch_Panel_unit|TP_data_reg\(7),
	combout => \Touch_Panel_unit|Y_Coord[7]~4_combout\);

-- Location: LCFF_X35_Y15_N11
\Touch_Panel_unit|Y_Coord[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Touch_Panel_unit|Y_Coord[7]~4_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \Touch_Panel_unit|Y_Coord[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Touch_Panel_unit|Y_Coord\(7));

-- Location: LCCOMB_X36_Y15_N28
\TP_position[1][3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \TP_position[1][3]~feeder_combout\ = \Touch_Panel_unit|Y_Coord\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Touch_Panel_unit|Y_Coord\(7),
	combout => \TP_position[1][3]~feeder_combout\);

-- Location: LCFF_X36_Y15_N29
\TP_position[1][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \TP_position[1][3]~feeder_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \Touch_Panel_unit|Coord_En~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TP_position[1][3]~regout\);

-- Location: LCCOMB_X35_Y15_N20
\Touch_Panel_unit|Y_Coord[4]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|Y_Coord[4]~8_combout\ = !\Touch_Panel_unit|TP_data_reg\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Touch_Panel_unit|TP_data_reg\(4),
	combout => \Touch_Panel_unit|Y_Coord[4]~8_combout\);

-- Location: LCFF_X35_Y15_N21
\Touch_Panel_unit|Y_Coord[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Touch_Panel_unit|Y_Coord[4]~8_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \Touch_Panel_unit|Y_Coord[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Touch_Panel_unit|Y_Coord\(4));

-- Location: LCCOMB_X38_Y15_N28
\TP_position[1][0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \TP_position[1][0]~feeder_combout\ = \Touch_Panel_unit|Y_Coord\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Touch_Panel_unit|Y_Coord\(4),
	combout => \TP_position[1][0]~feeder_combout\);

-- Location: LCFF_X38_Y15_N29
\TP_position[1][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \TP_position[1][0]~feeder_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \Touch_Panel_unit|Coord_En~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TP_position[1][0]~regout\);

-- Location: LCCOMB_X38_Y15_N6
\display_unit|seg1|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unit|seg1|WideOr6~0_combout\ = (\TP_position[1][2]~regout\ & (!\TP_position[1][1]~regout\ & (\TP_position[1][3]~regout\ $ (!\TP_position[1][0]~regout\)))) # (!\TP_position[1][2]~regout\ & (\TP_position[1][0]~regout\ & (\TP_position[1][1]~regout\ 
-- $ (!\TP_position[1][3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TP_position[1][2]~regout\,
	datab => \TP_position[1][1]~regout\,
	datac => \TP_position[1][3]~regout\,
	datad => \TP_position[1][0]~regout\,
	combout => \display_unit|seg1|WideOr6~0_combout\);

-- Location: LCCOMB_X38_Y15_N16
\display_unit|SEVEN_SEGMENT_N_O[1][0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unit|SEVEN_SEGMENT_N_O[1][0]~5_combout\ = (\display_unit|seg1|WideOr6~0_combout\) # (!\TP_position[6][4]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \TP_position[6][4]~regout\,
	datad => \display_unit|seg1|WideOr6~0_combout\,
	combout => \display_unit|SEVEN_SEGMENT_N_O[1][0]~5_combout\);

-- Location: LCCOMB_X38_Y15_N18
\display_unit|seg1|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unit|seg1|WideOr5~0_combout\ = (\TP_position[1][1]~regout\ & ((\TP_position[1][0]~regout\ & ((\TP_position[1][3]~regout\))) # (!\TP_position[1][0]~regout\ & (\TP_position[1][2]~regout\)))) # (!\TP_position[1][1]~regout\ & 
-- (\TP_position[1][2]~regout\ & (\TP_position[1][3]~regout\ $ (\TP_position[1][0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TP_position[1][2]~regout\,
	datab => \TP_position[1][1]~regout\,
	datac => \TP_position[1][3]~regout\,
	datad => \TP_position[1][0]~regout\,
	combout => \display_unit|seg1|WideOr5~0_combout\);

-- Location: LCCOMB_X38_Y15_N24
\display_unit|SEVEN_SEGMENT_N_O[1][1]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unit|SEVEN_SEGMENT_N_O[1][1]~6_combout\ = (\display_unit|seg1|WideOr5~0_combout\) # (!\TP_position[6][4]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \TP_position[6][4]~regout\,
	datad => \display_unit|seg1|WideOr5~0_combout\,
	combout => \display_unit|SEVEN_SEGMENT_N_O[1][1]~6_combout\);

-- Location: LCCOMB_X35_Y15_N28
\Touch_Panel_unit|Y_Coord[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|Y_Coord[6]~6_combout\ = !\Touch_Panel_unit|TP_data_reg\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Touch_Panel_unit|TP_data_reg\(6),
	combout => \Touch_Panel_unit|Y_Coord[6]~6_combout\);

-- Location: LCFF_X35_Y15_N29
\Touch_Panel_unit|Y_Coord[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Touch_Panel_unit|Y_Coord[6]~6_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \Touch_Panel_unit|Y_Coord[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Touch_Panel_unit|Y_Coord\(6));

-- Location: LCFF_X38_Y15_N13
\TP_position[1][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \Touch_Panel_unit|Y_Coord\(6),
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	sload => VCC,
	ena => \Touch_Panel_unit|Coord_En~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TP_position[1][2]~regout\);

-- Location: LCCOMB_X38_Y15_N12
\display_unit|seg1|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unit|seg1|WideOr4~0_combout\ = (\TP_position[1][3]~regout\ & (\TP_position[1][2]~regout\ & ((\TP_position[1][1]~regout\) # (!\TP_position[1][0]~regout\)))) # (!\TP_position[1][3]~regout\ & (\TP_position[1][1]~regout\ & 
-- (!\TP_position[1][2]~regout\ & !\TP_position[1][0]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TP_position[1][3]~regout\,
	datab => \TP_position[1][1]~regout\,
	datac => \TP_position[1][2]~regout\,
	datad => \TP_position[1][0]~regout\,
	combout => \display_unit|seg1|WideOr4~0_combout\);

-- Location: LCCOMB_X38_Y15_N22
\display_unit|SEVEN_SEGMENT_N_O[1][2]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unit|SEVEN_SEGMENT_N_O[1][2]~7_combout\ = (\display_unit|seg1|WideOr4~0_combout\) # (!\TP_position[6][4]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \display_unit|seg1|WideOr4~0_combout\,
	datac => \TP_position[6][4]~regout\,
	combout => \display_unit|SEVEN_SEGMENT_N_O[1][2]~7_combout\);

-- Location: LCCOMB_X38_Y15_N8
\display_unit|seg1|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unit|seg1|WideOr3~0_combout\ = (\TP_position[1][0]~regout\ & (\TP_position[1][2]~regout\ $ ((!\TP_position[1][1]~regout\)))) # (!\TP_position[1][0]~regout\ & ((\TP_position[1][2]~regout\ & (!\TP_position[1][1]~regout\ & 
-- !\TP_position[1][3]~regout\)) # (!\TP_position[1][2]~regout\ & (\TP_position[1][1]~regout\ & \TP_position[1][3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TP_position[1][2]~regout\,
	datab => \TP_position[1][1]~regout\,
	datac => \TP_position[1][3]~regout\,
	datad => \TP_position[1][0]~regout\,
	combout => \display_unit|seg1|WideOr3~0_combout\);

-- Location: LCCOMB_X38_Y15_N14
\display_unit|SEVEN_SEGMENT_N_O[1][3]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unit|SEVEN_SEGMENT_N_O[1][3]~8_combout\ = (\display_unit|seg1|WideOr3~0_combout\) # (!\TP_position[6][4]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \display_unit|seg1|WideOr3~0_combout\,
	datac => \TP_position[6][4]~regout\,
	combout => \display_unit|SEVEN_SEGMENT_N_O[1][3]~8_combout\);

-- Location: LCCOMB_X38_Y15_N0
\display_unit|seg1|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unit|seg1|WideOr2~0_combout\ = (\TP_position[1][1]~regout\ & (((!\TP_position[1][3]~regout\ & \TP_position[1][0]~regout\)))) # (!\TP_position[1][1]~regout\ & ((\TP_position[1][2]~regout\ & (!\TP_position[1][3]~regout\)) # 
-- (!\TP_position[1][2]~regout\ & ((\TP_position[1][0]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TP_position[1][2]~regout\,
	datab => \TP_position[1][1]~regout\,
	datac => \TP_position[1][3]~regout\,
	datad => \TP_position[1][0]~regout\,
	combout => \display_unit|seg1|WideOr2~0_combout\);

-- Location: LCCOMB_X38_Y15_N30
\display_unit|SEVEN_SEGMENT_N_O[1][4]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unit|SEVEN_SEGMENT_N_O[1][4]~9_combout\ = (\display_unit|seg1|WideOr2~0_combout\) # (!\TP_position[6][4]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \TP_position[6][4]~regout\,
	datad => \display_unit|seg1|WideOr2~0_combout\,
	combout => \display_unit|SEVEN_SEGMENT_N_O[1][4]~9_combout\);

-- Location: LCCOMB_X38_Y15_N20
\display_unit|seg1|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unit|seg1|WideOr1~0_combout\ = (\TP_position[1][2]~regout\ & (\TP_position[1][0]~regout\ & (\TP_position[1][1]~regout\ $ (\TP_position[1][3]~regout\)))) # (!\TP_position[1][2]~regout\ & (!\TP_position[1][3]~regout\ & ((\TP_position[1][1]~regout\) 
-- # (\TP_position[1][0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TP_position[1][2]~regout\,
	datab => \TP_position[1][1]~regout\,
	datac => \TP_position[1][3]~regout\,
	datad => \TP_position[1][0]~regout\,
	combout => \display_unit|seg1|WideOr1~0_combout\);

-- Location: LCCOMB_X38_Y15_N26
\display_unit|SEVEN_SEGMENT_N_O[1][5]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unit|SEVEN_SEGMENT_N_O[1][5]~10_combout\ = (\display_unit|seg1|WideOr1~0_combout\) # (!\TP_position[6][4]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_unit|seg1|WideOr1~0_combout\,
	datac => \TP_position[6][4]~regout\,
	combout => \display_unit|SEVEN_SEGMENT_N_O[1][5]~10_combout\);

-- Location: LCCOMB_X38_Y15_N4
\display_unit|seg1|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unit|seg1|WideOr0~0_combout\ = (\TP_position[1][0]~regout\ & ((\TP_position[1][3]~regout\) # (\TP_position[1][2]~regout\ $ (\TP_position[1][1]~regout\)))) # (!\TP_position[1][0]~regout\ & ((\TP_position[1][1]~regout\) # 
-- (\TP_position[1][2]~regout\ $ (\TP_position[1][3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TP_position[1][2]~regout\,
	datab => \TP_position[1][1]~regout\,
	datac => \TP_position[1][3]~regout\,
	datad => \TP_position[1][0]~regout\,
	combout => \display_unit|seg1|WideOr0~0_combout\);

-- Location: LCCOMB_X38_Y15_N10
\display_unit|SEVEN_SEGMENT_N_O[1][6]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unit|SEVEN_SEGMENT_N_O[1][6]~11_combout\ = (!\TP_position[6][4]~regout\) # (!\display_unit|seg1|WideOr0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \display_unit|seg1|WideOr0~0_combout\,
	datac => \TP_position[6][4]~regout\,
	combout => \display_unit|SEVEN_SEGMENT_N_O[1][6]~11_combout\);

-- Location: LCCOMB_X36_Y15_N26
\TP_position[2][2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \TP_position[2][2]~feeder_combout\ = \Touch_Panel_unit|Y_Coord\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Touch_Panel_unit|Y_Coord\(10),
	combout => \TP_position[2][2]~feeder_combout\);

-- Location: LCFF_X36_Y15_N27
\TP_position[2][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \TP_position[2][2]~feeder_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \Touch_Panel_unit|Coord_En~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TP_position[2][2]~regout\);

-- Location: LCCOMB_X36_Y15_N20
\TP_position[2][1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \TP_position[2][1]~feeder_combout\ = \Touch_Panel_unit|Y_Coord\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Touch_Panel_unit|Y_Coord\(9),
	combout => \TP_position[2][1]~feeder_combout\);

-- Location: LCFF_X36_Y15_N21
\TP_position[2][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \TP_position[2][1]~feeder_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \Touch_Panel_unit|Coord_En~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TP_position[2][1]~regout\);

-- Location: LCFF_X36_Y15_N1
\TP_position[2][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \Touch_Panel_unit|Y_Coord\(11),
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	sload => VCC,
	ena => \Touch_Panel_unit|Coord_En~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TP_position[2][3]~regout\);

-- Location: LCCOMB_X36_Y15_N6
\display_unit|seg2|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unit|seg2|WideOr6~0_combout\ = (\TP_position[2][2]~regout\ & (!\TP_position[2][1]~regout\ & (\TP_position[2][0]~regout\ $ (!\TP_position[2][3]~regout\)))) # (!\TP_position[2][2]~regout\ & (\TP_position[2][0]~regout\ & (\TP_position[2][1]~regout\ 
-- $ (!\TP_position[2][3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TP_position[2][0]~regout\,
	datab => \TP_position[2][2]~regout\,
	datac => \TP_position[2][1]~regout\,
	datad => \TP_position[2][3]~regout\,
	combout => \display_unit|seg2|WideOr6~0_combout\);

-- Location: LCCOMB_X37_Y9_N24
\display_unit|SEVEN_SEGMENT_N_O[2][0]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unit|SEVEN_SEGMENT_N_O[2][0]~12_combout\ = (\display_unit|seg2|WideOr6~0_combout\) # (!\TP_position[6][4]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TP_position[6][4]~regout\,
	datad => \display_unit|seg2|WideOr6~0_combout\,
	combout => \display_unit|SEVEN_SEGMENT_N_O[2][0]~12_combout\);

-- Location: LCCOMB_X36_Y15_N16
\display_unit|seg2|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unit|seg2|WideOr5~0_combout\ = (\TP_position[2][1]~regout\ & ((\TP_position[2][0]~regout\ & ((\TP_position[2][3]~regout\))) # (!\TP_position[2][0]~regout\ & (\TP_position[2][2]~regout\)))) # (!\TP_position[2][1]~regout\ & 
-- (\TP_position[2][2]~regout\ & (\TP_position[2][0]~regout\ $ (\TP_position[2][3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TP_position[2][0]~regout\,
	datab => \TP_position[2][2]~regout\,
	datac => \TP_position[2][1]~regout\,
	datad => \TP_position[2][3]~regout\,
	combout => \display_unit|seg2|WideOr5~0_combout\);

-- Location: LCCOMB_X37_Y11_N16
\display_unit|SEVEN_SEGMENT_N_O[2][1]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unit|SEVEN_SEGMENT_N_O[2][1]~13_combout\ = (\display_unit|seg2|WideOr5~0_combout\) # (!\TP_position[6][4]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \display_unit|seg2|WideOr5~0_combout\,
	datac => \TP_position[6][4]~regout\,
	combout => \display_unit|SEVEN_SEGMENT_N_O[2][1]~13_combout\);

-- Location: LCCOMB_X36_Y15_N22
\display_unit|seg2|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unit|seg2|WideOr4~0_combout\ = (\TP_position[2][2]~regout\ & (\TP_position[2][3]~regout\ & ((\TP_position[2][1]~regout\) # (!\TP_position[2][0]~regout\)))) # (!\TP_position[2][2]~regout\ & (!\TP_position[2][0]~regout\ & 
-- (\TP_position[2][1]~regout\ & !\TP_position[2][3]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TP_position[2][0]~regout\,
	datab => \TP_position[2][2]~regout\,
	datac => \TP_position[2][1]~regout\,
	datad => \TP_position[2][3]~regout\,
	combout => \display_unit|seg2|WideOr4~0_combout\);

-- Location: LCCOMB_X37_Y11_N10
\display_unit|SEVEN_SEGMENT_N_O[2][2]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unit|SEVEN_SEGMENT_N_O[2][2]~14_combout\ = (\display_unit|seg2|WideOr4~0_combout\) # (!\TP_position[6][4]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \display_unit|seg2|WideOr4~0_combout\,
	datac => \TP_position[6][4]~regout\,
	combout => \display_unit|SEVEN_SEGMENT_N_O[2][2]~14_combout\);

-- Location: LCCOMB_X36_Y15_N24
\display_unit|seg2|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unit|seg2|WideOr3~0_combout\ = (\TP_position[2][0]~regout\ & (\TP_position[2][2]~regout\ $ ((!\TP_position[2][1]~regout\)))) # (!\TP_position[2][0]~regout\ & ((\TP_position[2][2]~regout\ & (!\TP_position[2][1]~regout\ & 
-- !\TP_position[2][3]~regout\)) # (!\TP_position[2][2]~regout\ & (\TP_position[2][1]~regout\ & \TP_position[2][3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TP_position[2][0]~regout\,
	datab => \TP_position[2][2]~regout\,
	datac => \TP_position[2][1]~regout\,
	datad => \TP_position[2][3]~regout\,
	combout => \display_unit|seg2|WideOr3~0_combout\);

-- Location: LCCOMB_X37_Y11_N8
\display_unit|SEVEN_SEGMENT_N_O[2][3]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unit|SEVEN_SEGMENT_N_O[2][3]~15_combout\ = (\display_unit|seg2|WideOr3~0_combout\) # (!\TP_position[6][4]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \display_unit|seg2|WideOr3~0_combout\,
	datac => \TP_position[6][4]~regout\,
	combout => \display_unit|SEVEN_SEGMENT_N_O[2][3]~15_combout\);

-- Location: LCCOMB_X36_Y15_N2
\display_unit|seg2|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unit|seg2|WideOr2~0_combout\ = (\TP_position[2][1]~regout\ & (\TP_position[2][0]~regout\ & ((!\TP_position[2][3]~regout\)))) # (!\TP_position[2][1]~regout\ & ((\TP_position[2][2]~regout\ & ((!\TP_position[2][3]~regout\))) # 
-- (!\TP_position[2][2]~regout\ & (\TP_position[2][0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TP_position[2][0]~regout\,
	datab => \TP_position[2][2]~regout\,
	datac => \TP_position[2][1]~regout\,
	datad => \TP_position[2][3]~regout\,
	combout => \display_unit|seg2|WideOr2~0_combout\);

-- Location: LCCOMB_X37_Y11_N18
\display_unit|SEVEN_SEGMENT_N_O[2][4]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unit|SEVEN_SEGMENT_N_O[2][4]~16_combout\ = (\display_unit|seg2|WideOr2~0_combout\) # (!\TP_position[6][4]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_unit|seg2|WideOr2~0_combout\,
	datac => \TP_position[6][4]~regout\,
	combout => \display_unit|SEVEN_SEGMENT_N_O[2][4]~16_combout\);

-- Location: LCCOMB_X36_Y15_N12
\display_unit|seg2|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unit|seg2|WideOr1~0_combout\ = (\TP_position[2][0]~regout\ & (\TP_position[2][3]~regout\ $ (((\TP_position[2][1]~regout\) # (!\TP_position[2][2]~regout\))))) # (!\TP_position[2][0]~regout\ & (!\TP_position[2][2]~regout\ & 
-- (\TP_position[2][1]~regout\ & !\TP_position[2][3]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TP_position[2][0]~regout\,
	datab => \TP_position[2][2]~regout\,
	datac => \TP_position[2][1]~regout\,
	datad => \TP_position[2][3]~regout\,
	combout => \display_unit|seg2|WideOr1~0_combout\);

-- Location: LCCOMB_X37_Y7_N24
\display_unit|SEVEN_SEGMENT_N_O[2][5]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unit|SEVEN_SEGMENT_N_O[2][5]~17_combout\ = (\display_unit|seg2|WideOr1~0_combout\) # (!\TP_position[6][4]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TP_position[6][4]~regout\,
	datac => \display_unit|seg2|WideOr1~0_combout\,
	combout => \display_unit|SEVEN_SEGMENT_N_O[2][5]~17_combout\);

-- Location: LCCOMB_X36_Y15_N18
\display_unit|seg2|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unit|seg2|WideOr0~0_combout\ = (\TP_position[2][0]~regout\ & ((\TP_position[2][3]~regout\) # (\TP_position[2][2]~regout\ $ (\TP_position[2][1]~regout\)))) # (!\TP_position[2][0]~regout\ & ((\TP_position[2][1]~regout\) # 
-- (\TP_position[2][2]~regout\ $ (\TP_position[2][3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TP_position[2][0]~regout\,
	datab => \TP_position[2][2]~regout\,
	datac => \TP_position[2][1]~regout\,
	datad => \TP_position[2][3]~regout\,
	combout => \display_unit|seg2|WideOr0~0_combout\);

-- Location: LCCOMB_X37_Y11_N12
\display_unit|SEVEN_SEGMENT_N_O[2][6]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unit|SEVEN_SEGMENT_N_O[2][6]~18_combout\ = (!\TP_position[6][4]~regout\) # (!\display_unit|seg2|WideOr0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \display_unit|seg2|WideOr0~0_combout\,
	datac => \TP_position[6][4]~regout\,
	combout => \display_unit|SEVEN_SEGMENT_N_O[2][6]~18_combout\);

-- Location: LCFF_X32_Y17_N25
\Touch_Panel_unit|X_Coord[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \Touch_Panel_unit|TP_data_reg\(2),
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	sload => VCC,
	ena => \Touch_Panel_unit|X_Coord[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Touch_Panel_unit|X_Coord\(2));

-- Location: LCFF_X28_Y17_N31
\TP_position[4][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \Touch_Panel_unit|X_Coord\(2),
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	sload => VCC,
	ena => \Touch_Panel_unit|Coord_En~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TP_position[4][2]~regout\);

-- Location: LCCOMB_X34_Y17_N8
\Touch_Panel_unit|Selector27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|Selector27~0_combout\ = (!\Touch_Panel_unit|TP_state.S_TP_SYNC_1K~regout\ & ((\Touch_Panel_unit|TP_data_reg[11]~13_combout\ & ((\Touch_Panel_unit|Add3~0_combout\))) # (!\Touch_Panel_unit|TP_data_reg[11]~13_combout\ & (\GPIO_0[1]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GPIO_0[1]~1\,
	datab => \Touch_Panel_unit|TP_state.S_TP_SYNC_1K~regout\,
	datac => \Touch_Panel_unit|TP_data_reg[11]~13_combout\,
	datad => \Touch_Panel_unit|Add3~0_combout\,
	combout => \Touch_Panel_unit|Selector27~0_combout\);

-- Location: LCCOMB_X34_Y17_N20
\Touch_Panel_unit|Selector27~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|Selector27~1_combout\ = (\Touch_Panel_unit|Selector27~0_combout\ & (!\Touch_Panel_unit|TP_data_reg[11]~8_combout\ & ((!\Touch_Panel_unit|Equal7~4_combout\) # (!\Touch_Panel_unit|TP_state.S_TP_BACKOFF~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Touch_Panel_unit|TP_state.S_TP_BACKOFF~regout\,
	datab => \Touch_Panel_unit|Selector27~0_combout\,
	datac => \Touch_Panel_unit|Equal7~4_combout\,
	datad => \Touch_Panel_unit|TP_data_reg[11]~8_combout\,
	combout => \Touch_Panel_unit|Selector27~1_combout\);

-- Location: LCFF_X34_Y17_N21
\Touch_Panel_unit|TP_data_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Touch_Panel_unit|Selector27~1_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \Touch_Panel_unit|TP_data_reg[11]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Touch_Panel_unit|TP_data_reg\(0));

-- Location: LCCOMB_X32_Y17_N16
\Touch_Panel_unit|X_Coord[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|X_Coord[0]~feeder_combout\ = \Touch_Panel_unit|TP_data_reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Touch_Panel_unit|TP_data_reg\(0),
	combout => \Touch_Panel_unit|X_Coord[0]~feeder_combout\);

-- Location: LCFF_X32_Y17_N17
\Touch_Panel_unit|X_Coord[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Touch_Panel_unit|X_Coord[0]~feeder_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \Touch_Panel_unit|X_Coord[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Touch_Panel_unit|X_Coord\(0));

-- Location: LCCOMB_X28_Y17_N0
\TP_position[4][0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \TP_position[4][0]~feeder_combout\ = \Touch_Panel_unit|X_Coord\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Touch_Panel_unit|X_Coord\(0),
	combout => \TP_position[4][0]~feeder_combout\);

-- Location: LCFF_X28_Y17_N1
\TP_position[4][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \TP_position[4][0]~feeder_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \Touch_Panel_unit|Coord_En~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TP_position[4][0]~regout\);

-- Location: LCCOMB_X32_Y17_N14
\Touch_Panel_unit|X_Coord[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Touch_Panel_unit|X_Coord[3]~feeder_combout\ = \Touch_Panel_unit|TP_data_reg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Touch_Panel_unit|TP_data_reg\(3),
	combout => \Touch_Panel_unit|X_Coord[3]~feeder_combout\);

-- Location: LCFF_X32_Y17_N15
\Touch_Panel_unit|X_Coord[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Touch_Panel_unit|X_Coord[3]~feeder_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \Touch_Panel_unit|X_Coord[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Touch_Panel_unit|X_Coord\(3));

-- Location: LCFF_X31_Y17_N3
\TP_position[4][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \Touch_Panel_unit|X_Coord\(3),
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	sload => VCC,
	ena => \Touch_Panel_unit|Coord_En~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TP_position[4][3]~regout\);

-- Location: LCCOMB_X1_Y14_N16
\display_unit|seg4|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unit|seg4|WideOr6~0_combout\ = (\TP_position[4][2]~regout\ & (!\TP_position[4][1]~regout\ & (\TP_position[4][0]~regout\ $ (!\TP_position[4][3]~regout\)))) # (!\TP_position[4][2]~regout\ & (\TP_position[4][0]~regout\ & (\TP_position[4][1]~regout\ 
-- $ (!\TP_position[4][3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TP_position[4][1]~regout\,
	datab => \TP_position[4][2]~regout\,
	datac => \TP_position[4][0]~regout\,
	datad => \TP_position[4][3]~regout\,
	combout => \display_unit|seg4|WideOr6~0_combout\);

-- Location: LCCOMB_X1_Y14_N22
\display_unit|SEVEN_SEGMENT_N_O[4][0]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unit|SEVEN_SEGMENT_N_O[4][0]~19_combout\ = (\display_unit|seg4|WideOr6~0_combout\) # (!\TP_position[6][4]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \display_unit|seg4|WideOr6~0_combout\,
	datad => \TP_position[6][4]~regout\,
	combout => \display_unit|SEVEN_SEGMENT_N_O[4][0]~19_combout\);

-- Location: LCCOMB_X1_Y14_N20
\display_unit|seg4|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unit|seg4|WideOr5~0_combout\ = (\TP_position[4][1]~regout\ & ((\TP_position[4][0]~regout\ & ((\TP_position[4][3]~regout\))) # (!\TP_position[4][0]~regout\ & (\TP_position[4][2]~regout\)))) # (!\TP_position[4][1]~regout\ & 
-- (\TP_position[4][2]~regout\ & (\TP_position[4][0]~regout\ $ (\TP_position[4][3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TP_position[4][1]~regout\,
	datab => \TP_position[4][2]~regout\,
	datac => \TP_position[4][0]~regout\,
	datad => \TP_position[4][3]~regout\,
	combout => \display_unit|seg4|WideOr5~0_combout\);

-- Location: LCCOMB_X1_Y14_N2
\display_unit|SEVEN_SEGMENT_N_O[4][1]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unit|SEVEN_SEGMENT_N_O[4][1]~20_combout\ = (\display_unit|seg4|WideOr5~0_combout\) # (!\TP_position[6][4]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \display_unit|seg4|WideOr5~0_combout\,
	datad => \TP_position[6][4]~regout\,
	combout => \display_unit|SEVEN_SEGMENT_N_O[4][1]~20_combout\);

-- Location: LCCOMB_X1_Y14_N4
\display_unit|seg4|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unit|seg4|WideOr4~0_combout\ = (\TP_position[4][2]~regout\ & (\TP_position[4][3]~regout\ & ((\TP_position[4][1]~regout\) # (!\TP_position[4][0]~regout\)))) # (!\TP_position[4][2]~regout\ & (\TP_position[4][1]~regout\ & 
-- (!\TP_position[4][0]~regout\ & !\TP_position[4][3]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TP_position[4][1]~regout\,
	datab => \TP_position[4][2]~regout\,
	datac => \TP_position[4][0]~regout\,
	datad => \TP_position[4][3]~regout\,
	combout => \display_unit|seg4|WideOr4~0_combout\);

-- Location: LCCOMB_X1_Y14_N26
\display_unit|SEVEN_SEGMENT_N_O[4][2]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unit|SEVEN_SEGMENT_N_O[4][2]~21_combout\ = (\display_unit|seg4|WideOr4~0_combout\) # (!\TP_position[6][4]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \display_unit|seg4|WideOr4~0_combout\,
	datad => \TP_position[6][4]~regout\,
	combout => \display_unit|SEVEN_SEGMENT_N_O[4][2]~21_combout\);

-- Location: LCCOMB_X1_Y14_N8
\display_unit|seg4|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unit|seg4|WideOr3~0_combout\ = (\TP_position[4][0]~regout\ & (\TP_position[4][1]~regout\ $ ((!\TP_position[4][2]~regout\)))) # (!\TP_position[4][0]~regout\ & ((\TP_position[4][1]~regout\ & (!\TP_position[4][2]~regout\ & 
-- \TP_position[4][3]~regout\)) # (!\TP_position[4][1]~regout\ & (\TP_position[4][2]~regout\ & !\TP_position[4][3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TP_position[4][1]~regout\,
	datab => \TP_position[4][2]~regout\,
	datac => \TP_position[4][0]~regout\,
	datad => \TP_position[4][3]~regout\,
	combout => \display_unit|seg4|WideOr3~0_combout\);

-- Location: LCCOMB_X1_Y14_N14
\display_unit|SEVEN_SEGMENT_N_O[4][3]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unit|SEVEN_SEGMENT_N_O[4][3]~22_combout\ = (\display_unit|seg4|WideOr3~0_combout\) # (!\TP_position[6][4]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \display_unit|seg4|WideOr3~0_combout\,
	datad => \TP_position[6][4]~regout\,
	combout => \display_unit|SEVEN_SEGMENT_N_O[4][3]~22_combout\);

-- Location: LCCOMB_X1_Y14_N28
\display_unit|seg4|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unit|seg4|WideOr2~0_combout\ = (\TP_position[4][1]~regout\ & (((\TP_position[4][0]~regout\ & !\TP_position[4][3]~regout\)))) # (!\TP_position[4][1]~regout\ & ((\TP_position[4][2]~regout\ & ((!\TP_position[4][3]~regout\))) # 
-- (!\TP_position[4][2]~regout\ & (\TP_position[4][0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TP_position[4][1]~regout\,
	datab => \TP_position[4][2]~regout\,
	datac => \TP_position[4][0]~regout\,
	datad => \TP_position[4][3]~regout\,
	combout => \display_unit|seg4|WideOr2~0_combout\);

-- Location: LCCOMB_X1_Y14_N30
\display_unit|SEVEN_SEGMENT_N_O[4][4]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unit|SEVEN_SEGMENT_N_O[4][4]~23_combout\ = (\display_unit|seg4|WideOr2~0_combout\) # (!\TP_position[6][4]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \display_unit|seg4|WideOr2~0_combout\,
	datad => \TP_position[6][4]~regout\,
	combout => \display_unit|SEVEN_SEGMENT_N_O[4][4]~23_combout\);

-- Location: LCCOMB_X1_Y14_N24
\display_unit|seg4|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unit|seg4|WideOr1~0_combout\ = (\TP_position[4][1]~regout\ & (!\TP_position[4][3]~regout\ & ((\TP_position[4][0]~regout\) # (!\TP_position[4][2]~regout\)))) # (!\TP_position[4][1]~regout\ & (\TP_position[4][0]~regout\ & 
-- (\TP_position[4][2]~regout\ $ (!\TP_position[4][3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TP_position[4][1]~regout\,
	datab => \TP_position[4][2]~regout\,
	datac => \TP_position[4][0]~regout\,
	datad => \TP_position[4][3]~regout\,
	combout => \display_unit|seg4|WideOr1~0_combout\);

-- Location: LCCOMB_X1_Y14_N18
\display_unit|SEVEN_SEGMENT_N_O[4][5]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unit|SEVEN_SEGMENT_N_O[4][5]~24_combout\ = (\display_unit|seg4|WideOr1~0_combout\) # (!\TP_position[6][4]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \display_unit|seg4|WideOr1~0_combout\,
	datad => \TP_position[6][4]~regout\,
	combout => \display_unit|SEVEN_SEGMENT_N_O[4][5]~24_combout\);

-- Location: LCCOMB_X1_Y14_N0
\display_unit|seg4|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unit|seg4|WideOr0~0_combout\ = (\TP_position[4][0]~regout\ & ((\TP_position[4][3]~regout\) # (\TP_position[4][1]~regout\ $ (\TP_position[4][2]~regout\)))) # (!\TP_position[4][0]~regout\ & ((\TP_position[4][1]~regout\) # 
-- (\TP_position[4][2]~regout\ $ (\TP_position[4][3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TP_position[4][1]~regout\,
	datab => \TP_position[4][2]~regout\,
	datac => \TP_position[4][0]~regout\,
	datad => \TP_position[4][3]~regout\,
	combout => \display_unit|seg4|WideOr0~0_combout\);

-- Location: LCCOMB_X1_Y14_N10
\display_unit|SEVEN_SEGMENT_N_O[4][6]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unit|SEVEN_SEGMENT_N_O[4][6]~25_combout\ = (!\TP_position[6][4]~regout\) # (!\display_unit|seg4|WideOr0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \display_unit|seg4|WideOr0~0_combout\,
	datad => \TP_position[6][4]~regout\,
	combout => \display_unit|SEVEN_SEGMENT_N_O[4][6]~25_combout\);

-- Location: LCFF_X32_Y17_N9
\TP_position[5][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \Touch_Panel_unit|X_Coord\(6),
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	sload => VCC,
	ena => \Touch_Panel_unit|Coord_En~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TP_position[5][2]~regout\);

-- Location: LCFF_X32_Y17_N21
\TP_position[5][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \Touch_Panel_unit|X_Coord\(4),
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	sload => VCC,
	ena => \Touch_Panel_unit|Coord_En~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TP_position[5][0]~regout\);

-- Location: LCFF_X32_Y17_N23
\TP_position[5][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \Touch_Panel_unit|X_Coord\(5),
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	sload => VCC,
	ena => \Touch_Panel_unit|Coord_En~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TP_position[5][1]~regout\);

-- Location: LCCOMB_X32_Y17_N20
\display_unit|seg5|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unit|seg5|WideOr6~0_combout\ = (\TP_position[5][3]~regout\ & (\TP_position[5][0]~regout\ & (\TP_position[5][2]~regout\ $ (\TP_position[5][1]~regout\)))) # (!\TP_position[5][3]~regout\ & (!\TP_position[5][1]~regout\ & (\TP_position[5][2]~regout\ $ 
-- (\TP_position[5][0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TP_position[5][3]~regout\,
	datab => \TP_position[5][2]~regout\,
	datac => \TP_position[5][0]~regout\,
	datad => \TP_position[5][1]~regout\,
	combout => \display_unit|seg5|WideOr6~0_combout\);

-- Location: LCCOMB_X28_Y15_N8
\display_unit|SEVEN_SEGMENT_N_O[5][0]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unit|SEVEN_SEGMENT_N_O[5][0]~26_combout\ = (\display_unit|seg5|WideOr6~0_combout\) # (!\TP_position[6][4]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \display_unit|seg5|WideOr6~0_combout\,
	datad => \TP_position[6][4]~regout\,
	combout => \display_unit|SEVEN_SEGMENT_N_O[5][0]~26_combout\);

-- Location: LCFF_X33_Y17_N5
\Touch_Panel_unit|X_Coord[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \Touch_Panel_unit|TP_data_reg\(7),
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	sload => VCC,
	ena => \Touch_Panel_unit|X_Coord[11]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Touch_Panel_unit|X_Coord\(7));

-- Location: LCFF_X32_Y17_N11
\TP_position[5][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \Touch_Panel_unit|X_Coord\(7),
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	sload => VCC,
	ena => \Touch_Panel_unit|Coord_En~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TP_position[5][3]~regout\);

-- Location: LCCOMB_X32_Y17_N22
\display_unit|seg5|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unit|seg5|WideOr5~0_combout\ = (\TP_position[5][1]~regout\ & ((\TP_position[5][0]~regout\ & ((\TP_position[5][3]~regout\))) # (!\TP_position[5][0]~regout\ & (\TP_position[5][2]~regout\)))) # (!\TP_position[5][1]~regout\ & 
-- (\TP_position[5][2]~regout\ & (\TP_position[5][0]~regout\ $ (\TP_position[5][3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TP_position[5][0]~regout\,
	datab => \TP_position[5][2]~regout\,
	datac => \TP_position[5][1]~regout\,
	datad => \TP_position[5][3]~regout\,
	combout => \display_unit|seg5|WideOr5~0_combout\);

-- Location: LCCOMB_X28_Y15_N6
\display_unit|SEVEN_SEGMENT_N_O[5][1]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unit|SEVEN_SEGMENT_N_O[5][1]~27_combout\ = (\display_unit|seg5|WideOr5~0_combout\) # (!\TP_position[6][4]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \display_unit|seg5|WideOr5~0_combout\,
	datad => \TP_position[6][4]~regout\,
	combout => \display_unit|SEVEN_SEGMENT_N_O[5][1]~27_combout\);

-- Location: LCCOMB_X32_Y17_N8
\display_unit|seg5|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unit|seg5|WideOr4~0_combout\ = (\TP_position[5][2]~regout\ & (\TP_position[5][3]~regout\ & ((\TP_position[5][1]~regout\) # (!\TP_position[5][0]~regout\)))) # (!\TP_position[5][2]~regout\ & (!\TP_position[5][0]~regout\ & 
-- (\TP_position[5][1]~regout\ & !\TP_position[5][3]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TP_position[5][0]~regout\,
	datab => \TP_position[5][1]~regout\,
	datac => \TP_position[5][2]~regout\,
	datad => \TP_position[5][3]~regout\,
	combout => \display_unit|seg5|WideOr4~0_combout\);

-- Location: LCCOMB_X4_Y17_N20
\display_unit|SEVEN_SEGMENT_N_O[5][2]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unit|SEVEN_SEGMENT_N_O[5][2]~28_combout\ = (\display_unit|seg5|WideOr4~0_combout\) # (!\TP_position[6][4]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \display_unit|seg5|WideOr4~0_combout\,
	datad => \TP_position[6][4]~regout\,
	combout => \display_unit|SEVEN_SEGMENT_N_O[5][2]~28_combout\);

-- Location: LCCOMB_X32_Y17_N10
\display_unit|seg5|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unit|seg5|WideOr3~0_combout\ = (\TP_position[5][0]~regout\ & (\TP_position[5][2]~regout\ $ (((!\TP_position[5][1]~regout\))))) # (!\TP_position[5][0]~regout\ & ((\TP_position[5][2]~regout\ & (!\TP_position[5][3]~regout\ & 
-- !\TP_position[5][1]~regout\)) # (!\TP_position[5][2]~regout\ & (\TP_position[5][3]~regout\ & \TP_position[5][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TP_position[5][0]~regout\,
	datab => \TP_position[5][2]~regout\,
	datac => \TP_position[5][3]~regout\,
	datad => \TP_position[5][1]~regout\,
	combout => \display_unit|seg5|WideOr3~0_combout\);

-- Location: LCCOMB_X28_Y17_N16
\display_unit|SEVEN_SEGMENT_N_O[5][3]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unit|SEVEN_SEGMENT_N_O[5][3]~29_combout\ = (\display_unit|seg5|WideOr3~0_combout\) # (!\TP_position[6][4]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \display_unit|seg5|WideOr3~0_combout\,
	datac => \TP_position[6][4]~regout\,
	combout => \display_unit|SEVEN_SEGMENT_N_O[5][3]~29_combout\);

-- Location: LCCOMB_X32_Y17_N0
\display_unit|seg5|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unit|seg5|WideOr2~0_combout\ = (\TP_position[5][1]~regout\ & (!\TP_position[5][3]~regout\ & ((\TP_position[5][0]~regout\)))) # (!\TP_position[5][1]~regout\ & ((\TP_position[5][2]~regout\ & (!\TP_position[5][3]~regout\)) # 
-- (!\TP_position[5][2]~regout\ & ((\TP_position[5][0]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TP_position[5][3]~regout\,
	datab => \TP_position[5][2]~regout\,
	datac => \TP_position[5][0]~regout\,
	datad => \TP_position[5][1]~regout\,
	combout => \display_unit|seg5|WideOr2~0_combout\);

-- Location: LCCOMB_X1_Y16_N28
\display_unit|SEVEN_SEGMENT_N_O[5][4]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unit|SEVEN_SEGMENT_N_O[5][4]~30_combout\ = (\display_unit|seg5|WideOr2~0_combout\) # (!\TP_position[6][4]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \display_unit|seg5|WideOr2~0_combout\,
	datad => \TP_position[6][4]~regout\,
	combout => \display_unit|SEVEN_SEGMENT_N_O[5][4]~30_combout\);

-- Location: LCCOMB_X32_Y17_N6
\display_unit|seg5|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unit|seg5|WideOr1~0_combout\ = (\TP_position[5][2]~regout\ & (\TP_position[5][0]~regout\ & (\TP_position[5][3]~regout\ $ (\TP_position[5][1]~regout\)))) # (!\TP_position[5][2]~regout\ & (!\TP_position[5][3]~regout\ & ((\TP_position[5][0]~regout\) 
-- # (\TP_position[5][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TP_position[5][3]~regout\,
	datab => \TP_position[5][2]~regout\,
	datac => \TP_position[5][0]~regout\,
	datad => \TP_position[5][1]~regout\,
	combout => \display_unit|seg5|WideOr1~0_combout\);

-- Location: LCCOMB_X4_Y17_N26
\display_unit|SEVEN_SEGMENT_N_O[5][5]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unit|SEVEN_SEGMENT_N_O[5][5]~31_combout\ = (\display_unit|seg5|WideOr1~0_combout\) # (!\TP_position[6][4]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \display_unit|seg5|WideOr1~0_combout\,
	datad => \TP_position[6][4]~regout\,
	combout => \display_unit|SEVEN_SEGMENT_N_O[5][5]~31_combout\);

-- Location: LCCOMB_X32_Y17_N12
\display_unit|seg5|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unit|seg5|WideOr0~0_combout\ = (\TP_position[5][0]~regout\ & ((\TP_position[5][3]~regout\) # (\TP_position[5][2]~regout\ $ (\TP_position[5][1]~regout\)))) # (!\TP_position[5][0]~regout\ & ((\TP_position[5][1]~regout\) # 
-- (\TP_position[5][3]~regout\ $ (\TP_position[5][2]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TP_position[5][3]~regout\,
	datab => \TP_position[5][2]~regout\,
	datac => \TP_position[5][0]~regout\,
	datad => \TP_position[5][1]~regout\,
	combout => \display_unit|seg5|WideOr0~0_combout\);

-- Location: LCCOMB_X28_Y17_N18
\display_unit|SEVEN_SEGMENT_N_O[5][6]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unit|SEVEN_SEGMENT_N_O[5][6]~32_combout\ = (!\display_unit|seg5|WideOr0~0_combout\) # (!\TP_position[6][4]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TP_position[6][4]~regout\,
	datad => \display_unit|seg5|WideOr0~0_combout\,
	combout => \display_unit|SEVEN_SEGMENT_N_O[5][6]~32_combout\);

-- Location: LCCOMB_X28_Y17_N14
\TP_position[6][2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \TP_position[6][2]~feeder_combout\ = \Touch_Panel_unit|X_Coord\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Touch_Panel_unit|X_Coord\(10),
	combout => \TP_position[6][2]~feeder_combout\);

-- Location: LCFF_X28_Y17_N15
\TP_position[6][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \TP_position[6][2]~feeder_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \Touch_Panel_unit|Coord_En~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TP_position[6][2]~regout\);

-- Location: LCFF_X32_Y17_N19
\TP_position[6][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \Touch_Panel_unit|X_Coord\(11),
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	sload => VCC,
	ena => \Touch_Panel_unit|Coord_En~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TP_position[6][3]~regout\);

-- Location: LCFF_X28_Y17_N29
\TP_position[6][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \Touch_Panel_unit|X_Coord\(9),
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	sload => VCC,
	ena => \Touch_Panel_unit|Coord_En~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TP_position[6][1]~regout\);

-- Location: LCCOMB_X28_Y17_N12
\display_unit|seg6|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unit|seg6|WideOr6~0_combout\ = (\TP_position[6][2]~regout\ & (!\TP_position[6][1]~regout\ & (\TP_position[6][0]~regout\ $ (!\TP_position[6][3]~regout\)))) # (!\TP_position[6][2]~regout\ & (\TP_position[6][0]~regout\ & (\TP_position[6][3]~regout\ 
-- $ (!\TP_position[6][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TP_position[6][0]~regout\,
	datab => \TP_position[6][2]~regout\,
	datac => \TP_position[6][3]~regout\,
	datad => \TP_position[6][1]~regout\,
	combout => \display_unit|seg6|WideOr6~0_combout\);

-- Location: LCCOMB_X20_Y17_N20
\display_unit|SEVEN_SEGMENT_N_O[6][0]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unit|SEVEN_SEGMENT_N_O[6][0]~33_combout\ = (\display_unit|seg6|WideOr6~0_combout\) # (!\TP_position[6][4]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \display_unit|seg6|WideOr6~0_combout\,
	datad => \TP_position[6][4]~regout\,
	combout => \display_unit|SEVEN_SEGMENT_N_O[6][0]~33_combout\);

-- Location: LCCOMB_X28_Y17_N22
\display_unit|seg6|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unit|seg6|WideOr5~0_combout\ = (\TP_position[6][3]~regout\ & ((\TP_position[6][0]~regout\ & ((\TP_position[6][1]~regout\))) # (!\TP_position[6][0]~regout\ & (\TP_position[6][2]~regout\)))) # (!\TP_position[6][3]~regout\ & 
-- (\TP_position[6][2]~regout\ & (\TP_position[6][0]~regout\ $ (\TP_position[6][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TP_position[6][0]~regout\,
	datab => \TP_position[6][2]~regout\,
	datac => \TP_position[6][3]~regout\,
	datad => \TP_position[6][1]~regout\,
	combout => \display_unit|seg6|WideOr5~0_combout\);

-- Location: LCCOMB_X20_Y17_N2
\display_unit|SEVEN_SEGMENT_N_O[6][1]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unit|SEVEN_SEGMENT_N_O[6][1]~34_combout\ = (\display_unit|seg6|WideOr5~0_combout\) # (!\TP_position[6][4]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \display_unit|seg6|WideOr5~0_combout\,
	datad => \TP_position[6][4]~regout\,
	combout => \display_unit|SEVEN_SEGMENT_N_O[6][1]~34_combout\);

-- Location: LCCOMB_X28_Y17_N20
\display_unit|seg6|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unit|seg6|WideOr4~0_combout\ = (\TP_position[6][2]~regout\ & (\TP_position[6][3]~regout\ & ((\TP_position[6][1]~regout\) # (!\TP_position[6][0]~regout\)))) # (!\TP_position[6][2]~regout\ & (!\TP_position[6][0]~regout\ & 
-- (!\TP_position[6][3]~regout\ & \TP_position[6][1]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TP_position[6][0]~regout\,
	datab => \TP_position[6][2]~regout\,
	datac => \TP_position[6][3]~regout\,
	datad => \TP_position[6][1]~regout\,
	combout => \display_unit|seg6|WideOr4~0_combout\);

-- Location: LCCOMB_X20_Y17_N4
\display_unit|SEVEN_SEGMENT_N_O[6][2]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unit|SEVEN_SEGMENT_N_O[6][2]~35_combout\ = (\display_unit|seg6|WideOr4~0_combout\) # (!\TP_position[6][4]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \display_unit|seg6|WideOr4~0_combout\,
	datad => \TP_position[6][4]~regout\,
	combout => \display_unit|SEVEN_SEGMENT_N_O[6][2]~35_combout\);

-- Location: LCCOMB_X28_Y17_N10
\display_unit|seg6|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unit|seg6|WideOr3~0_combout\ = (\TP_position[6][0]~regout\ & (\TP_position[6][2]~regout\ $ (((!\TP_position[6][1]~regout\))))) # (!\TP_position[6][0]~regout\ & ((\TP_position[6][2]~regout\ & (!\TP_position[6][3]~regout\ & 
-- !\TP_position[6][1]~regout\)) # (!\TP_position[6][2]~regout\ & (\TP_position[6][3]~regout\ & \TP_position[6][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TP_position[6][0]~regout\,
	datab => \TP_position[6][2]~regout\,
	datac => \TP_position[6][3]~regout\,
	datad => \TP_position[6][1]~regout\,
	combout => \display_unit|seg6|WideOr3~0_combout\);

-- Location: LCCOMB_X28_Y17_N8
\display_unit|SEVEN_SEGMENT_N_O[6][3]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unit|SEVEN_SEGMENT_N_O[6][3]~36_combout\ = (\display_unit|seg6|WideOr3~0_combout\) # (!\TP_position[6][4]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \TP_position[6][4]~regout\,
	datad => \display_unit|seg6|WideOr3~0_combout\,
	combout => \display_unit|SEVEN_SEGMENT_N_O[6][3]~36_combout\);

-- Location: LCCOMB_X28_Y17_N26
\display_unit|seg6|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unit|seg6|WideOr2~0_combout\ = (\TP_position[6][1]~regout\ & (\TP_position[6][0]~regout\ & ((!\TP_position[6][3]~regout\)))) # (!\TP_position[6][1]~regout\ & ((\TP_position[6][2]~regout\ & ((!\TP_position[6][3]~regout\))) # 
-- (!\TP_position[6][2]~regout\ & (\TP_position[6][0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TP_position[6][0]~regout\,
	datab => \TP_position[6][2]~regout\,
	datac => \TP_position[6][3]~regout\,
	datad => \TP_position[6][1]~regout\,
	combout => \display_unit|seg6|WideOr2~0_combout\);

-- Location: LCCOMB_X20_Y17_N22
\display_unit|SEVEN_SEGMENT_N_O[6][4]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unit|SEVEN_SEGMENT_N_O[6][4]~37_combout\ = (\display_unit|seg6|WideOr2~0_combout\) # (!\TP_position[6][4]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \display_unit|seg6|WideOr2~0_combout\,
	datad => \TP_position[6][4]~regout\,
	combout => \display_unit|SEVEN_SEGMENT_N_O[6][4]~37_combout\);

-- Location: LCCOMB_X28_Y17_N24
\display_unit|seg6|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unit|seg6|WideOr1~0_combout\ = (\TP_position[6][0]~regout\ & (\TP_position[6][3]~regout\ $ (((\TP_position[6][1]~regout\) # (!\TP_position[6][2]~regout\))))) # (!\TP_position[6][0]~regout\ & (!\TP_position[6][2]~regout\ & 
-- (!\TP_position[6][3]~regout\ & \TP_position[6][1]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TP_position[6][0]~regout\,
	datab => \TP_position[6][2]~regout\,
	datac => \TP_position[6][3]~regout\,
	datad => \TP_position[6][1]~regout\,
	combout => \display_unit|seg6|WideOr1~0_combout\);

-- Location: LCCOMB_X28_Y17_N2
\display_unit|SEVEN_SEGMENT_N_O[6][5]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unit|SEVEN_SEGMENT_N_O[6][5]~38_combout\ = (\display_unit|seg6|WideOr1~0_combout\) # (!\TP_position[6][4]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TP_position[6][4]~regout\,
	datac => \display_unit|seg6|WideOr1~0_combout\,
	combout => \display_unit|SEVEN_SEGMENT_N_O[6][5]~38_combout\);

-- Location: LCCOMB_X28_Y17_N4
\display_unit|seg6|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unit|seg6|WideOr0~0_combout\ = (\TP_position[6][0]~regout\ & ((\TP_position[6][3]~regout\) # (\TP_position[6][2]~regout\ $ (\TP_position[6][1]~regout\)))) # (!\TP_position[6][0]~regout\ & ((\TP_position[6][1]~regout\) # 
-- (\TP_position[6][2]~regout\ $ (\TP_position[6][3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TP_position[6][0]~regout\,
	datab => \TP_position[6][2]~regout\,
	datac => \TP_position[6][3]~regout\,
	datad => \TP_position[6][1]~regout\,
	combout => \display_unit|seg6|WideOr0~0_combout\);

-- Location: LCCOMB_X20_Y17_N12
\display_unit|SEVEN_SEGMENT_N_O[6][6]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \display_unit|SEVEN_SEGMENT_N_O[6][6]~39_combout\ = (!\TP_position[6][4]~regout\) # (!\display_unit|seg6|WideOr0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \display_unit|seg6|WideOr0~0_combout\,
	datad => \TP_position[6][4]~regout\,
	combout => \display_unit|SEVEN_SEGMENT_N_O[6][6]~39_combout\);

-- Location: PIN_E25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Touch_Panel_unit|TP_MOSI_O~2_combout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => GPIO_0(3));

-- Location: PIN_F24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LCD_TPn_sclk~0_combout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => GPIO_0(4));

-- Location: PIN_F23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LCD_Data_unit|LTM_B\(7),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => GPIO_0(5));

-- Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LCD_Data_unit|LTM_B\(7),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => GPIO_0(6));

-- Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LCD_Data_unit|LTM_B\(7),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => GPIO_0(7));

-- Location: PIN_F25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LCD_Data_unit|LTM_B\(7),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => GPIO_0(8));

-- Location: PIN_F26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LCD_Data_unit|ALT_INV_LTM_NCLK~regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => GPIO_0(9));

-- Location: PIN_N18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LCD_Data_unit|LTM_DEN~regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => GPIO_0(10));

-- Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LCD_Data_unit|LTM_HD~regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => GPIO_0(11));

-- Location: PIN_G23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LCD_Data_unit|ALT_INV_LTM_VD~regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => GPIO_0(12));

-- Location: PIN_G24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LCD_Data_unit|LTM_B\(7),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => GPIO_0(13));

-- Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LCD_Data_unit|LTM_B\(7),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => GPIO_0(14));

-- Location: PIN_G25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LCD_Data_unit|LTM_B\(7),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => GPIO_0(15));

-- Location: PIN_H23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LCD_Data_unit|LTM_B\(7),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => GPIO_0(16));

-- Location: PIN_H24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LCD_Data_unit|LTM_G\(7),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => GPIO_0(17));

-- Location: PIN_J23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LCD_Data_unit|LTM_G\(7),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => GPIO_0(18));

-- Location: PIN_J24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LCD_Data_unit|LTM_G\(7),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => GPIO_0(19));

-- Location: PIN_H25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LCD_Data_unit|LTM_G\(7),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => GPIO_0(20));

-- Location: PIN_H26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LCD_Data_unit|LTM_G\(7),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => GPIO_0(21));

-- Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[22]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LCD_Data_unit|LTM_G\(7),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => GPIO_0(22));

-- Location: PIN_K18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[23]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LCD_Data_unit|LTM_G\(7),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => GPIO_0(23));

-- Location: PIN_K19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[24]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LCD_Data_unit|LTM_G\(7),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => GPIO_0(24));

-- Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[25]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LCD_Data_unit|LTM_R\(7),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => GPIO_0(25));

-- Location: PIN_K23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[26]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LCD_Data_unit|LTM_R\(7),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => GPIO_0(26));

-- Location: PIN_K24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[27]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LCD_Data_unit|LTM_R\(7),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => GPIO_0(27));

-- Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[28]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LCD_Data_unit|LTM_R\(7),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => GPIO_0(28));

-- Location: PIN_L20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[29]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LCD_Data_unit|LTM_R\(7),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => GPIO_0(29));

-- Location: PIN_J25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[30]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LCD_Data_unit|LTM_R\(7),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => GPIO_0(30));

-- Location: PIN_J26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[31]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LCD_Data_unit|LTM_R\(7),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => GPIO_0(31));

-- Location: PIN_L23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[32]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LCD_Data_unit|LTM_R\(7),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => GPIO_0(32));

-- Location: PIN_L24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[33]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SWITCH_I~combout\(17),
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => GPIO_0(33));

-- Location: PIN_L25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[34]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LTM_SCEN~0_combout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => GPIO_0(34));

-- Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_0[35]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LCD_Config_unit|I2C_unit|ALT_INV_sdat\(15),
	oe => \LCD_Config_unit|I2C_unit|sdat_en~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => GPIO_0(35));

-- Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PUSH_BUTTON_I[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_PUSH_BUTTON_I(0));

-- Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PUSH_BUTTON_I[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_PUSH_BUTTON_I(1));

-- Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PUSH_BUTTON_I[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_PUSH_BUTTON_I(2));

-- Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PUSH_BUTTON_I[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_PUSH_BUTTON_I(3));

-- Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SWITCH_I[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SWITCH_I(0));

-- Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SWITCH_I[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SWITCH_I(1));

-- Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SWITCH_I[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SWITCH_I(2));

-- Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SWITCH_I[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SWITCH_I(3));

-- Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SWITCH_I[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SWITCH_I(4));

-- Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SWITCH_I[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SWITCH_I(5));

-- Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SWITCH_I[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SWITCH_I(6));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SWITCH_I[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SWITCH_I(7));

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SWITCH_I[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SWITCH_I(8));

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SWITCH_I[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SWITCH_I(9));

-- Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SWITCH_I[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SWITCH_I(10));

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SWITCH_I[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SWITCH_I(11));

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SWITCH_I[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SWITCH_I(12));

-- Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SWITCH_I[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SWITCH_I(13));

-- Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SWITCH_I[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SWITCH_I(14));

-- Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SWITCH_I[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SWITCH_I(15));

-- Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SWITCH_I[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SWITCH_I(16));

-- Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[0][0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display_unit|SEVEN_SEGMENT_N_O[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(0)(0));

-- Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[0][1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_TP_position[6][4]~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(0)(1));

-- Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[0][2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display_unit|SEVEN_SEGMENT_N_O[0][2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(0)(2));

-- Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[0][3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display_unit|SEVEN_SEGMENT_N_O[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(0)(3));

-- Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[0][4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display_unit|ALT_INV_SEVEN_SEGMENT_N_O[0][4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(0)(4));

-- Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[0][5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display_unit|SEVEN_SEGMENT_N_O[0][5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(0)(5));

-- Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[0][6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display_unit|SEVEN_SEGMENT_N_O[0][6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(0)(6));

-- Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[1][0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display_unit|SEVEN_SEGMENT_N_O[1][0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(1)(0));

-- Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[1][1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display_unit|SEVEN_SEGMENT_N_O[1][1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(1)(1));

-- Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[1][2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display_unit|SEVEN_SEGMENT_N_O[1][2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(1)(2));

-- Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[1][3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display_unit|SEVEN_SEGMENT_N_O[1][3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(1)(3));

-- Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[1][4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display_unit|SEVEN_SEGMENT_N_O[1][4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(1)(4));

-- Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[1][5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display_unit|SEVEN_SEGMENT_N_O[1][5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(1)(5));

-- Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[1][6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display_unit|SEVEN_SEGMENT_N_O[1][6]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(1)(6));

-- Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[2][0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display_unit|SEVEN_SEGMENT_N_O[2][0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(2)(0));

-- Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[2][1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display_unit|SEVEN_SEGMENT_N_O[2][1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(2)(1));

-- Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[2][2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display_unit|SEVEN_SEGMENT_N_O[2][2]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(2)(2));

-- Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[2][3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display_unit|SEVEN_SEGMENT_N_O[2][3]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(2)(3));

-- Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[2][4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display_unit|SEVEN_SEGMENT_N_O[2][4]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(2)(4));

-- Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[2][5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display_unit|SEVEN_SEGMENT_N_O[2][5]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(2)(5));

-- Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[2][6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display_unit|SEVEN_SEGMENT_N_O[2][6]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(2)(6));

-- Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[3][0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(3)(0));

-- Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[3][1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(3)(1));

-- Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[3][2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(3)(2));

-- Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[3][3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(3)(3));

-- Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[3][4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(3)(4));

-- Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[3][5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(3)(5));

-- Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[3][6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(3)(6));

-- Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[4][0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display_unit|SEVEN_SEGMENT_N_O[4][0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(4)(0));

-- Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[4][1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display_unit|SEVEN_SEGMENT_N_O[4][1]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(4)(1));

-- Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[4][2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display_unit|SEVEN_SEGMENT_N_O[4][2]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(4)(2));

-- Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[4][3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display_unit|SEVEN_SEGMENT_N_O[4][3]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(4)(3));

-- Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[4][4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display_unit|SEVEN_SEGMENT_N_O[4][4]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(4)(4));

-- Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[4][5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display_unit|SEVEN_SEGMENT_N_O[4][5]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(4)(5));

-- Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[4][6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display_unit|SEVEN_SEGMENT_N_O[4][6]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(4)(6));

-- Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[5][0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display_unit|SEVEN_SEGMENT_N_O[5][0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(5)(0));

-- Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[5][1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display_unit|SEVEN_SEGMENT_N_O[5][1]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(5)(1));

-- Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[5][2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display_unit|SEVEN_SEGMENT_N_O[5][2]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(5)(2));

-- Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[5][3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display_unit|SEVEN_SEGMENT_N_O[5][3]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(5)(3));

-- Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[5][4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display_unit|SEVEN_SEGMENT_N_O[5][4]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(5)(4));

-- Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[5][5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display_unit|SEVEN_SEGMENT_N_O[5][5]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(5)(5));

-- Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[5][6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display_unit|SEVEN_SEGMENT_N_O[5][6]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(5)(6));

-- Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[6][0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display_unit|SEVEN_SEGMENT_N_O[6][0]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(6)(0));

-- Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[6][1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display_unit|SEVEN_SEGMENT_N_O[6][1]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(6)(1));

-- Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[6][2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display_unit|SEVEN_SEGMENT_N_O[6][2]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(6)(2));

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[6][3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display_unit|SEVEN_SEGMENT_N_O[6][3]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(6)(3));

-- Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[6][4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display_unit|SEVEN_SEGMENT_N_O[6][4]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(6)(4));

-- Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[6][5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display_unit|SEVEN_SEGMENT_N_O[6][5]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(6)(5));

-- Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[6][6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \display_unit|SEVEN_SEGMENT_N_O[6][6]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(6)(6));

-- Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[7][0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(7)(0));

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[7][1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(7)(1));

-- Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[7][2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(7)(2));

-- Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[7][3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(7)(3));

-- Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[7][4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(7)(4));

-- Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[7][5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(7)(5));

-- Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SEVEN_SEGMENT_N_O[7][6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SEVEN_SEGMENT_N_O(7)(6));

-- Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED_GREEN_O[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED_GREEN_O(0));

-- Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED_GREEN_O[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED_GREEN_O(1));

-- Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED_GREEN_O[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED_GREEN_O(2));

-- Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED_GREEN_O[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED_GREEN_O(3));

-- Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED_GREEN_O[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED_GREEN_O(4));

-- Location: PIN_U17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED_GREEN_O[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED_GREEN_O(5));

-- Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED_GREEN_O[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED_GREEN_O(6));

-- Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED_GREEN_O[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED_GREEN_O(7));

-- Location: PIN_Y12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED_GREEN_O[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED_GREEN_O(8));

-- Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED_RED_O[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED_RED_O(0));

-- Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED_RED_O[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED_RED_O(1));

-- Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED_RED_O[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED_RED_O(2));

-- Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED_RED_O[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED_RED_O(3));

-- Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED_RED_O[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED_RED_O(4));

-- Location: PIN_AD23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED_RED_O[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED_RED_O(5));

-- Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED_RED_O[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED_RED_O(6));

-- Location: PIN_AC21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED_RED_O[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED_RED_O(7));

-- Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED_RED_O[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED_RED_O(8));

-- Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED_RED_O[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED_RED_O(9));

-- Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED_RED_O[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED_RED_O(10));

-- Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED_RED_O[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED_RED_O(11));

-- Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED_RED_O[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED_RED_O(12));

-- Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED_RED_O[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED_RED_O(13));

-- Location: PIN_AF13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED_RED_O[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED_RED_O(14));

-- Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED_RED_O[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED_RED_O(15));

-- Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED_RED_O[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED_RED_O(16));

-- Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LED_RED_O[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED_RED_O(17));
END structure;


