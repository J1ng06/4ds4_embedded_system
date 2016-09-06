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

-- DATE "01/13/2015 15:51:57"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;

PACKAGE experiment1a_data_type IS

TYPE SEVEN_SEGMENT_N_O_6_0_type IS ARRAY (6 DOWNTO 0) OF std_logic;
TYPE SEVEN_SEGMENT_N_O_6_0_7_0_type IS ARRAY (7 DOWNTO 0) OF SEVEN_SEGMENT_N_O_6_0_type;
SUBTYPE SEVEN_SEGMENT_N_O_type IS SEVEN_SEGMENT_N_O_6_0_7_0_type;

END experiment1a_data_type;

LIBRARY CYCLONEII;
LIBRARY IEEE;
LIBRARY WORK;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE WORK.EXPERIMENT1A_DATA_TYPE.ALL;

ENTITY 	experiment1a IS
    PORT (
	CLOCK_50_I : IN std_logic;
	PUSH_BUTTON_I : IN std_logic_vector(3 DOWNTO 0);
	SWITCH_I : IN std_logic_vector(17 DOWNTO 0);
	SEVEN_SEGMENT_N_O : OUT SEVEN_SEGMENT_N_O_type;
	LED_GREEN_O : OUT std_logic_vector(8 DOWNTO 0);
	LED_RED_O : OUT std_logic_vector(17 DOWNTO 0);
	GPIO_0 : INOUT std_logic_vector(35 DOWNTO 0)
	);
END experiment1a;

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
-- SWITCH_I[17]	=>  Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK_50_I	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF experiment1a IS
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
SIGNAL \LCD_Data_unit|H_den~regout\ : std_logic;
SIGNAL \LCD_Data_unit|Add1~0_combout\ : std_logic;
SIGNAL \LCD_Data_unit|Add1~4_combout\ : std_logic;
SIGNAL \LCD_Data_unit|Add0~0_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|clock_div_count[4]~17_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|clock_div_count[6]~21_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|clock_div_count[7]~23_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|clock_div_count[9]~27_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|Add1~2_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|Add1~4_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|Add1~6_combout\ : std_logic;
SIGNAL \LCD_Config_unit|Add0~2_combout\ : std_logic;
SIGNAL \LCD_Config_unit|Add0~4_combout\ : std_logic;
SIGNAL \LCD_Config_unit|Done~regout\ : std_logic;
SIGNAL \LCD_Data_unit|Equal9~1_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|Equal4~0_combout\ : std_logic;
SIGNAL \LCD_Config_unit|Done~0_combout\ : std_logic;
SIGNAL \LCD_Config_unit|Done~1_combout\ : std_logic;
SIGNAL \LCD_Data_unit|H_den~1_combout\ : std_logic;
SIGNAL \LCD_Data_unit|H_den~2_combout\ : std_logic;
SIGNAL \LCD_Data_unit|H_den~3_combout\ : std_logic;
SIGNAL \LCD_Data_unit|H_den~4_combout\ : std_logic;
SIGNAL \LCD_Config_unit|WideOr0~0_combout\ : std_logic;
SIGNAL \LCD_Config_unit|WideOr2~2_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|sdat~5_combout\ : std_logic;
SIGNAL \LCD_Config_unit|WideOr4~1_combout\ : std_logic;
SIGNAL \LCD_Config_unit|WideOr4~2_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|sdat~6_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|sdat~7_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_data~2_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_data[8]~3_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|sdat~8_combout\ : std_logic;
SIGNAL \LCD_Config_unit|Mux0~0_combout\ : std_logic;
SIGNAL \LCD_Config_unit|Mux0~1_combout\ : std_logic;
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
SIGNAL \LCD_Config_unit|Mux7~0_combout\ : std_logic;
SIGNAL \LCD_Config_unit|Mux7~1_combout\ : std_logic;
SIGNAL \LCD_Config_unit|Mux6~0_combout\ : std_logic;
SIGNAL \LCD_Config_unit|Mux6~1_combout\ : std_logic;
SIGNAL \LCD_Config_unit|Mux3~0_combout\ : std_logic;
SIGNAL \LCD_Config_unit|Mux3~1_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|clock_div_count[0]~33_combout\ : std_logic;
SIGNAL \Colourbar_Red[7]~feeder_combout\ : std_logic;
SIGNAL \Colourbar_Blue[0]~feeder_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|clock_div_count[1]~11_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|clock_div_count[1]~12\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|clock_div_count[2]~13_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|clock_div_count[2]~14\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|clock_div_count[3]~15_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|clock_div_count[3]~16\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|clock_div_count[4]~18\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|clock_div_count[5]~19_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|clock_div_count[5]~20\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|clock_div_count[6]~22\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|clock_div_count[7]~24\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|clock_div_count[8]~25_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|clock_div_count[8]~26\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|clock_div_count[9]~28\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|clock_div_count[10]~29_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|clock_div_count[10]~30\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|clock_div_count[11]~31_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|clock_div~regout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|clock_div_prev~regout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|state_counter[1]~1_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|state_counter[1]~3_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|Equal0~1_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|state_counter[1]~0_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|state_counter[3]~4_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|state_counter[2]~5_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|Add1~0_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|state_counter[0]~6_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|state_counter[0]~7_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|Add1~1\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|Add1~3\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|Add1~5\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|Add1~7\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|Add1~8_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|state_counter[4]~2_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|I2C_scen~0_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|always2~0_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|I2C_scen~regout\ : std_logic;
SIGNAL \Top_state.000~feeder_combout\ : std_logic;
SIGNAL \Top_state.000~regout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \LCD_config_start~regout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Top_state.001~regout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \LCD_TPn_sel~regout\ : std_logic;
SIGNAL \LCD_TPn_sclk~0_combout\ : std_logic;
SIGNAL \CLOCK_50_I~combout\ : std_logic;
SIGNAL \CLOCK_50_I~clkctrl_outclk\ : std_logic;
SIGNAL \LCD_Data_unit|V_Count[0]~10_combout\ : std_logic;
SIGNAL \Top_state.010~feeder_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Top_state.010~regout\ : std_logic;
SIGNAL \LCD_Data_unit|V_Count[7]~27\ : std_logic;
SIGNAL \LCD_Data_unit|V_Count[8]~28_combout\ : std_logic;
SIGNAL \LCD_Data_unit|LTM_R[7]~2_combout\ : std_logic;
SIGNAL \LCD_Data_unit|LTM_NCLK~0_combout\ : std_logic;
SIGNAL \LCD_Data_unit|LTM_NCLK~regout\ : std_logic;
SIGNAL \LCD_Data_unit|oCoord_X[0]~3_combout\ : std_logic;
SIGNAL \LCD_Data_unit|H_Count[10]~10_combout\ : std_logic;
SIGNAL \LCD_Data_unit|oCoord_X[0]~4\ : std_logic;
SIGNAL \LCD_Data_unit|oCoord_X[1]~5_combout\ : std_logic;
SIGNAL \LCD_Data_unit|oCoord_X[1]~6\ : std_logic;
SIGNAL \LCD_Data_unit|oCoord_X[2]~7_combout\ : std_logic;
SIGNAL \LCD_Data_unit|oCoord_X[2]~8\ : std_logic;
SIGNAL \LCD_Data_unit|H_Count[3]~8_combout\ : std_logic;
SIGNAL \LCD_Data_unit|H_Count[3]~9\ : std_logic;
SIGNAL \LCD_Data_unit|H_Count[4]~11_combout\ : std_logic;
SIGNAL \LCD_Data_unit|H_Count[4]~12\ : std_logic;
SIGNAL \LCD_Data_unit|H_Count[5]~14\ : std_logic;
SIGNAL \LCD_Data_unit|H_Count[6]~15_combout\ : std_logic;
SIGNAL \LCD_Data_unit|H_Count[6]~16\ : std_logic;
SIGNAL \LCD_Data_unit|H_Count[7]~17_combout\ : std_logic;
SIGNAL \LCD_Data_unit|H_Count[7]~18\ : std_logic;
SIGNAL \LCD_Data_unit|H_Count[8]~19_combout\ : std_logic;
SIGNAL \LCD_Data_unit|H_Count[5]~13_combout\ : std_logic;
SIGNAL \LCD_Data_unit|H_Count[8]~20\ : std_logic;
SIGNAL \LCD_Data_unit|H_Count[9]~21_combout\ : std_logic;
SIGNAL \LCD_Data_unit|H_den~0_combout\ : std_logic;
SIGNAL \LCD_Data_unit|H_Count[9]~22\ : std_logic;
SIGNAL \LCD_Data_unit|H_Count[10]~23_combout\ : std_logic;
SIGNAL \LCD_Data_unit|Equal0~1_combout\ : std_logic;
SIGNAL \LCD_Data_unit|Equal0~0_combout\ : std_logic;
SIGNAL \LCD_Data_unit|Equal0~2_combout\ : std_logic;
SIGNAL \LCD_Data_unit|V_Count[6]~13_combout\ : std_logic;
SIGNAL \LCD_Data_unit|V_Count[8]~29\ : std_logic;
SIGNAL \LCD_Data_unit|V_Count[9]~30_combout\ : std_logic;
SIGNAL \LCD_Data_unit|V_Count[1]~14_combout\ : std_logic;
SIGNAL \LCD_Data_unit|Equal3~1_combout\ : std_logic;
SIGNAL \LCD_Data_unit|Equal3~2_combout\ : std_logic;
SIGNAL \LCD_Data_unit|V_Count[6]~12_combout\ : std_logic;
SIGNAL \LCD_Data_unit|V_Count[0]~11\ : std_logic;
SIGNAL \LCD_Data_unit|V_Count[1]~15\ : std_logic;
SIGNAL \LCD_Data_unit|V_Count[2]~16_combout\ : std_logic;
SIGNAL \LCD_Data_unit|V_Count[2]~17\ : std_logic;
SIGNAL \LCD_Data_unit|V_Count[3]~18_combout\ : std_logic;
SIGNAL \LCD_Data_unit|V_Count[3]~19\ : std_logic;
SIGNAL \LCD_Data_unit|V_Count[4]~21\ : std_logic;
SIGNAL \LCD_Data_unit|V_Count[5]~22_combout\ : std_logic;
SIGNAL \LCD_Data_unit|V_Count[5]~23\ : std_logic;
SIGNAL \LCD_Data_unit|V_Count[6]~25\ : std_logic;
SIGNAL \LCD_Data_unit|V_Count[7]~26_combout\ : std_logic;
SIGNAL \LCD_Data_unit|V_Count[4]~20_combout\ : std_logic;
SIGNAL \LCD_Data_unit|Add1~1\ : std_logic;
SIGNAL \LCD_Data_unit|Add1~3\ : std_logic;
SIGNAL \LCD_Data_unit|Add1~5\ : std_logic;
SIGNAL \LCD_Data_unit|Add1~7\ : std_logic;
SIGNAL \LCD_Data_unit|Add1~9\ : std_logic;
SIGNAL \LCD_Data_unit|Add1~11\ : std_logic;
SIGNAL \LCD_Data_unit|Add1~13\ : std_logic;
SIGNAL \LCD_Data_unit|Add1~14_combout\ : std_logic;
SIGNAL \LCD_Data_unit|Add1~6_combout\ : std_logic;
SIGNAL \LCD_Data_unit|Add1~12_combout\ : std_logic;
SIGNAL \LCD_Data_unit|Add1~8_combout\ : std_logic;
SIGNAL \LCD_Data_unit|Equal10~1_combout\ : std_logic;
SIGNAL \LCD_Data_unit|Add1~10_combout\ : std_logic;
SIGNAL \LCD_Data_unit|Add1~2_combout\ : std_logic;
SIGNAL \LCD_Data_unit|Add1~15\ : std_logic;
SIGNAL \LCD_Data_unit|Add1~17\ : std_logic;
SIGNAL \LCD_Data_unit|Add1~18_combout\ : std_logic;
SIGNAL \LCD_Data_unit|Equal10~0_combout\ : std_logic;
SIGNAL \LCD_Data_unit|Equal10~2_combout\ : std_logic;
SIGNAL \LCD_Data_unit|Equal9~0_combout\ : std_logic;
SIGNAL \LCD_Data_unit|Add1~16_combout\ : std_logic;
SIGNAL \LCD_Data_unit|Equal9~2_combout\ : std_logic;
SIGNAL \LCD_Data_unit|Add0~1\ : std_logic;
SIGNAL \LCD_Data_unit|Add0~2_combout\ : std_logic;
SIGNAL \LCD_Data_unit|Equal8~1_combout\ : std_logic;
SIGNAL \LCD_Data_unit|Add0~3\ : std_logic;
SIGNAL \LCD_Data_unit|Add0~4_combout\ : std_logic;
SIGNAL \LCD_Data_unit|Add0~5\ : std_logic;
SIGNAL \LCD_Data_unit|Add0~6_combout\ : std_logic;
SIGNAL \LCD_Data_unit|Add0~7\ : std_logic;
SIGNAL \LCD_Data_unit|Add0~8_combout\ : std_logic;
SIGNAL \LCD_Data_unit|Equal8~0_combout\ : std_logic;
SIGNAL \LCD_Data_unit|Add0~9\ : std_logic;
SIGNAL \LCD_Data_unit|Add0~11\ : std_logic;
SIGNAL \LCD_Data_unit|Add0~12_combout\ : std_logic;
SIGNAL \LCD_Data_unit|Equal8~2_combout\ : std_logic;
SIGNAL \LCD_Data_unit|V_Count[6]~24_combout\ : std_logic;
SIGNAL \LCD_Data_unit|Equal3~0_combout\ : std_logic;
SIGNAL \LCD_Data_unit|V_den~0_combout\ : std_logic;
SIGNAL \LCD_Data_unit|V_den~1_combout\ : std_logic;
SIGNAL \LCD_Data_unit|V_den~2_combout\ : std_logic;
SIGNAL \LCD_Data_unit|V_den~regout\ : std_logic;
SIGNAL \LCD_Data_unit|LTM_R[7]~0_combout\ : std_logic;
SIGNAL \LCD_Data_unit|Equal7~2_combout\ : std_logic;
SIGNAL \LCD_Data_unit|Equal7~0_combout\ : std_logic;
SIGNAL \LCD_Data_unit|Add0~10_combout\ : std_logic;
SIGNAL \LCD_Data_unit|Equal7~1_combout\ : std_logic;
SIGNAL \LCD_Data_unit|LTM_R[7]~1_combout\ : std_logic;
SIGNAL \LCD_Data_unit|LTM_B~0_combout\ : std_logic;
SIGNAL \LCD_Data_unit|LTM_B~1_combout\ : std_logic;
SIGNAL \LCD_Data_unit|LTM_DEN~regout\ : std_logic;
SIGNAL \LCD_Data_unit|H_Count[10]~10_wirecell_combout\ : std_logic;
SIGNAL \LCD_Data_unit|H_Sync~regout\ : std_logic;
SIGNAL \LCD_Data_unit|LTM_HD~0_combout\ : std_logic;
SIGNAL \LCD_Data_unit|LTM_HD~regout\ : std_logic;
SIGNAL \LCD_Data_unit|V_Sync~0_combout\ : std_logic;
SIGNAL \LCD_Data_unit|V_Sync~regout\ : std_logic;
SIGNAL \LCD_Data_unit|LTM_VD~0_combout\ : std_logic;
SIGNAL \LCD_Data_unit|LTM_VD~regout\ : std_logic;
SIGNAL \LCD_Data_unit|LTM_G~0_combout\ : std_logic;
SIGNAL \LCD_Data_unit|LTM_G~1_combout\ : std_logic;
SIGNAL \LCD_Data_unit|LTM_R~3_combout\ : std_logic;
SIGNAL \LCD_Data_unit|LTM_R~4_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|Equal3~0_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|Equal0~0_combout\ : std_logic;
SIGNAL \LCD_Config_unit|always1~0_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_start~0_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_state[2]~1_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_state[2]~3_combout\ : std_logic;
SIGNAL \LCD_Config_unit|Equal0~0_combout\ : std_logic;
SIGNAL \LCD_Config_unit|Add0~0_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_state[0]~6_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_state[0]~7_combout\ : std_logic;
SIGNAL \LCD_Config_unit|Add0~1\ : std_logic;
SIGNAL \LCD_Config_unit|Add0~3\ : std_logic;
SIGNAL \LCD_Config_unit|Add0~5\ : std_logic;
SIGNAL \LCD_Config_unit|Add0~6_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_state[3]~2_combout\ : std_logic;
SIGNAL \LCD_Config_unit|Add0~7\ : std_logic;
SIGNAL \LCD_Config_unit|Add0~8_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_state[4]~4_combout\ : std_logic;
SIGNAL \LCD_Config_unit|Equal0~1_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_start~1_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_start~regout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|Equal1~0_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|sdat_en~1_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|sdat_en~0_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|sdat_en~2_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|sdat_en~regout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|Acknowledge~0_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|Acknowledge~1_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|Acknowledge~2_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|Acknowledge~regout\ : std_logic;
SIGNAL \LCD_Config_unit|always1~1_combout\ : std_logic;
SIGNAL \LCD_Config_unit|always1~2_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_state[1]~0_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_state[1]~5_combout\ : std_logic;
SIGNAL \LCD_Config_unit|WideOr1~0_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_data~0_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_data[15]~1_combout\ : std_logic;
SIGNAL \LCD_Config_unit|WideOr3~0_combout\ : std_logic;
SIGNAL \LCD_Config_unit|WideOr3~1_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|sdat~4_combout\ : std_logic;
SIGNAL \LCD_Config_unit|WideOr2~3_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|sdat~3_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|sdat~2_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|sdat~1_combout\ : std_logic;
SIGNAL \LCD_Config_unit|Lookup_data~0_combout\ : std_logic;
SIGNAL \LCD_Config_unit|WideOr4~0_combout\ : std_logic;
SIGNAL \LCD_Config_unit|Lookup_data~1_combout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|sdat~0_combout\ : std_logic;
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
SIGNAL \SWITCH_I~combout\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \ALT_INV_SWITCH_I~combout\ : std_logic_vector(17 DOWNTO 17);
SIGNAL \ALT_INV_Top_state.010~regout\ : std_logic;
SIGNAL \LCD_Config_unit|I2C_unit|ALT_INV_sdat\ : std_logic_vector(15 DOWNTO 15);
SIGNAL \LCD_Data_unit|ALT_INV_LTM_VD~regout\ : std_logic;
SIGNAL \LCD_Data_unit|ALT_INV_LTM_NCLK~regout\ : std_logic;

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

-- Location: LCFF_X48_Y26_N17
\LCD_Data_unit|H_den\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Data_unit|H_den~4_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	sclr => \ALT_INV_Top_state.010~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Data_unit|H_den~regout\);

-- Location: LCCOMB_X47_Y26_N12
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

-- Location: LCCOMB_X47_Y26_N16
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

-- Location: LCCOMB_X49_Y26_N10
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

-- Location: LCFF_X40_Y26_N17
\LCD_Config_unit|I2C_unit|clock_div_count[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|I2C_unit|clock_div_count[9]~27_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_unit|clock_div_count\(9));

-- Location: LCFF_X40_Y26_N13
\LCD_Config_unit|I2C_unit|clock_div_count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|I2C_unit|clock_div_count[7]~23_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_unit|clock_div_count\(7));

-- Location: LCFF_X40_Y26_N11
\LCD_Config_unit|I2C_unit|clock_div_count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|I2C_unit|clock_div_count[6]~21_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_unit|clock_div_count\(6));

-- Location: LCFF_X40_Y26_N7
\LCD_Config_unit|I2C_unit|clock_div_count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|I2C_unit|clock_div_count[4]~17_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_unit|clock_div_count\(4));

-- Location: LCCOMB_X40_Y26_N6
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

-- Location: LCCOMB_X40_Y26_N10
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

-- Location: LCCOMB_X40_Y26_N12
\LCD_Config_unit|I2C_unit|clock_div_count[7]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_unit|clock_div_count[7]~23_combout\ = (\LCD_Config_unit|I2C_unit|clock_div_count\(7) & (\LCD_Config_unit|I2C_unit|clock_div_count[6]~22\ $ (GND))) # (!\LCD_Config_unit|I2C_unit|clock_div_count\(7) & 
-- (!\LCD_Config_unit|I2C_unit|clock_div_count[6]~22\ & VCC))
-- \LCD_Config_unit|I2C_unit|clock_div_count[7]~24\ = CARRY((\LCD_Config_unit|I2C_unit|clock_div_count\(7) & !\LCD_Config_unit|I2C_unit|clock_div_count[6]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_unit|clock_div_count\(7),
	datad => VCC,
	cin => \LCD_Config_unit|I2C_unit|clock_div_count[6]~22\,
	combout => \LCD_Config_unit|I2C_unit|clock_div_count[7]~23_combout\,
	cout => \LCD_Config_unit|I2C_unit|clock_div_count[7]~24\);

-- Location: LCCOMB_X40_Y26_N16
\LCD_Config_unit|I2C_unit|clock_div_count[9]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_unit|clock_div_count[9]~27_combout\ = (\LCD_Config_unit|I2C_unit|clock_div_count\(9) & (\LCD_Config_unit|I2C_unit|clock_div_count[8]~26\ $ (GND))) # (!\LCD_Config_unit|I2C_unit|clock_div_count\(9) & 
-- (!\LCD_Config_unit|I2C_unit|clock_div_count[8]~26\ & VCC))
-- \LCD_Config_unit|I2C_unit|clock_div_count[9]~28\ = CARRY((\LCD_Config_unit|I2C_unit|clock_div_count\(9) & !\LCD_Config_unit|I2C_unit|clock_div_count[8]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_unit|clock_div_count\(9),
	datad => VCC,
	cin => \LCD_Config_unit|I2C_unit|clock_div_count[8]~26\,
	combout => \LCD_Config_unit|I2C_unit|clock_div_count[9]~27_combout\,
	cout => \LCD_Config_unit|I2C_unit|clock_div_count[9]~28\);

-- Location: LCCOMB_X42_Y24_N22
\LCD_Config_unit|I2C_unit|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_unit|Add1~2_combout\ = (\LCD_Config_unit|I2C_unit|state_counter\(1) & (!\LCD_Config_unit|I2C_unit|Add1~1\)) # (!\LCD_Config_unit|I2C_unit|state_counter\(1) & ((\LCD_Config_unit|I2C_unit|Add1~1\) # (GND)))
-- \LCD_Config_unit|I2C_unit|Add1~3\ = CARRY((!\LCD_Config_unit|I2C_unit|Add1~1\) # (!\LCD_Config_unit|I2C_unit|state_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_Config_unit|I2C_unit|state_counter\(1),
	datad => VCC,
	cin => \LCD_Config_unit|I2C_unit|Add1~1\,
	combout => \LCD_Config_unit|I2C_unit|Add1~2_combout\,
	cout => \LCD_Config_unit|I2C_unit|Add1~3\);

-- Location: LCCOMB_X42_Y24_N24
\LCD_Config_unit|I2C_unit|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_unit|Add1~4_combout\ = (\LCD_Config_unit|I2C_unit|state_counter\(2) & (\LCD_Config_unit|I2C_unit|Add1~3\ $ (GND))) # (!\LCD_Config_unit|I2C_unit|state_counter\(2) & (!\LCD_Config_unit|I2C_unit|Add1~3\ & VCC))
-- \LCD_Config_unit|I2C_unit|Add1~5\ = CARRY((\LCD_Config_unit|I2C_unit|state_counter\(2) & !\LCD_Config_unit|I2C_unit|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_Config_unit|I2C_unit|state_counter\(2),
	datad => VCC,
	cin => \LCD_Config_unit|I2C_unit|Add1~3\,
	combout => \LCD_Config_unit|I2C_unit|Add1~4_combout\,
	cout => \LCD_Config_unit|I2C_unit|Add1~5\);

-- Location: LCCOMB_X42_Y24_N26
\LCD_Config_unit|I2C_unit|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_unit|Add1~6_combout\ = (\LCD_Config_unit|I2C_unit|state_counter\(3) & (!\LCD_Config_unit|I2C_unit|Add1~5\)) # (!\LCD_Config_unit|I2C_unit|state_counter\(3) & ((\LCD_Config_unit|I2C_unit|Add1~5\) # (GND)))
-- \LCD_Config_unit|I2C_unit|Add1~7\ = CARRY((!\LCD_Config_unit|I2C_unit|Add1~5\) # (!\LCD_Config_unit|I2C_unit|state_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_Config_unit|I2C_unit|state_counter\(3),
	datad => VCC,
	cin => \LCD_Config_unit|I2C_unit|Add1~5\,
	combout => \LCD_Config_unit|I2C_unit|Add1~6_combout\,
	cout => \LCD_Config_unit|I2C_unit|Add1~7\);

-- Location: LCCOMB_X47_Y24_N4
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

-- Location: LCCOMB_X47_Y24_N6
\LCD_Config_unit|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|Add0~4_combout\ = (\LCD_Config_unit|I2C_state\(2) & (\LCD_Config_unit|Add0~3\ $ (GND))) # (!\LCD_Config_unit|I2C_state\(2) & (!\LCD_Config_unit|Add0~3\ & VCC))
-- \LCD_Config_unit|Add0~5\ = CARRY((\LCD_Config_unit|I2C_state\(2) & !\LCD_Config_unit|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_Config_unit|I2C_state\(2),
	datad => VCC,
	cin => \LCD_Config_unit|Add0~3\,
	combout => \LCD_Config_unit|Add0~4_combout\,
	cout => \LCD_Config_unit|Add0~5\);

-- Location: LCFF_X44_Y24_N27
\LCD_Config_unit|Done\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|Done~1_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|Done~regout\);

-- Location: LCCOMB_X47_Y26_N0
\LCD_Data_unit|Equal9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|Equal9~1_combout\ = (!\LCD_Data_unit|Add1~4_combout\ & (!\LCD_Data_unit|Add1~6_combout\ & (!\LCD_Data_unit|Add1~12_combout\ & !\LCD_Data_unit|Add1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Data_unit|Add1~4_combout\,
	datab => \LCD_Data_unit|Add1~6_combout\,
	datac => \LCD_Data_unit|Add1~12_combout\,
	datad => \LCD_Data_unit|Add1~8_combout\,
	combout => \LCD_Data_unit|Equal9~1_combout\);

-- Location: LCFF_X47_Y26_N11
\Colourbar_Blue[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Colourbar_Blue[0]~feeder_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Colourbar_Blue(0));

-- Location: LCFF_X47_Y26_N27
\Colourbar_Green[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Data_unit|Add1~14_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Colourbar_Green(7));

-- Location: LCFF_X48_Y26_N21
\Colourbar_Red[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Colourbar_Red[7]~feeder_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Colourbar_Red(7));

-- Location: LCCOMB_X43_Y24_N0
\LCD_Config_unit|I2C_unit|Equal4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_unit|Equal4~0_combout\ = (\LCD_Config_unit|I2C_unit|Equal0~0_combout\ & (\LCD_Config_unit|I2C_unit|state_counter\(4) & \LCD_Config_unit|I2C_unit|state_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_unit|Equal0~0_combout\,
	datac => \LCD_Config_unit|I2C_unit|state_counter\(4),
	datad => \LCD_Config_unit|I2C_unit|state_counter\(1),
	combout => \LCD_Config_unit|I2C_unit|Equal4~0_combout\);

-- Location: LCFF_X40_Y26_N25
\LCD_Config_unit|I2C_unit|clock_div_count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|I2C_unit|clock_div_count[0]~33_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_unit|clock_div_count\(0));

-- Location: LCCOMB_X44_Y24_N6
\LCD_Config_unit|Done~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|Done~0_combout\ = (!\LCD_Config_unit|Done~regout\ & ((!\LCD_Config_unit|Equal0~1_combout\) # (!\LCD_config_start~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD_Config_unit|Done~regout\,
	datac => \LCD_config_start~regout\,
	datad => \LCD_Config_unit|Equal0~1_combout\,
	combout => \LCD_Config_unit|Done~0_combout\);

-- Location: LCCOMB_X44_Y24_N26
\LCD_Config_unit|Done~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|Done~1_combout\ = (!\LCD_Config_unit|Done~0_combout\ & (((\LCD_Config_unit|always1~2_combout\) # (\LCD_Config_unit|Equal0~1_combout\)) # (!\LCD_Config_unit|always1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|Done~0_combout\,
	datab => \LCD_Config_unit|always1~0_combout\,
	datac => \LCD_Config_unit|always1~2_combout\,
	datad => \LCD_Config_unit|Equal0~1_combout\,
	combout => \LCD_Config_unit|Done~1_combout\);

-- Location: LCCOMB_X48_Y26_N18
\LCD_Data_unit|H_den~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|H_den~1_combout\ = (\LCD_Data_unit|H_Count\(7) & (\LCD_Data_unit|LTM_NCLK~regout\ & (\LCD_Data_unit|H_Count\(6) & !\LCD_Data_unit|H_Count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Data_unit|H_Count\(7),
	datab => \LCD_Data_unit|LTM_NCLK~regout\,
	datac => \LCD_Data_unit|H_Count\(6),
	datad => \LCD_Data_unit|H_Count\(3),
	combout => \LCD_Data_unit|H_den~1_combout\);

-- Location: LCCOMB_X48_Y26_N28
\LCD_Data_unit|H_den~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|H_den~2_combout\ = (!\LCD_Data_unit|H_Count\(10) & (\LCD_Data_unit|Equal0~0_combout\ & \LCD_Data_unit|H_den~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD_Data_unit|H_Count\(10),
	datac => \LCD_Data_unit|Equal0~0_combout\,
	datad => \LCD_Data_unit|H_den~1_combout\,
	combout => \LCD_Data_unit|H_den~2_combout\);

-- Location: LCCOMB_X49_Y26_N6
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

-- Location: LCCOMB_X48_Y26_N16
\LCD_Data_unit|H_den~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|H_den~4_combout\ = (\LCD_Data_unit|H_den~2_combout\ & ((\LCD_Data_unit|H_den~0_combout\) # ((\LCD_Data_unit|H_den~3_combout\ & \LCD_Data_unit|H_den~regout\)))) # (!\LCD_Data_unit|H_den~2_combout\ & (((\LCD_Data_unit|H_den~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Data_unit|H_den~3_combout\,
	datab => \LCD_Data_unit|H_den~2_combout\,
	datac => \LCD_Data_unit|H_den~regout\,
	datad => \LCD_Data_unit|H_den~0_combout\,
	combout => \LCD_Data_unit|H_den~4_combout\);

-- Location: LCFF_X45_Y24_N21
\LCD_Config_unit|I2C_data[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|WideOr0~0_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \LCD_Config_unit|I2C_data[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_data\(14));

-- Location: LCCOMB_X45_Y24_N20
\LCD_Config_unit|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|WideOr0~0_combout\ = (!\LCD_Config_unit|Lookup_data~0_combout\ & !\LCD_Config_unit|I2C_state\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD_Config_unit|Lookup_data~0_combout\,
	datac => \LCD_Config_unit|I2C_state\(4),
	combout => \LCD_Config_unit|WideOr0~0_combout\);

-- Location: LCCOMB_X47_Y24_N20
\LCD_Config_unit|WideOr2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|WideOr2~2_combout\ = (\LCD_Config_unit|I2C_state\(0) & \LCD_Config_unit|I2C_state\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD_Config_unit|I2C_state\(0),
	datac => \LCD_Config_unit|I2C_state\(1),
	combout => \LCD_Config_unit|WideOr2~2_combout\);

-- Location: LCFF_X44_Y24_N15
\LCD_Config_unit|I2C_unit|sdat[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|I2C_unit|sdat~5_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \LCD_Config_unit|I2C_unit|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_unit|sdat\(10));

-- Location: LCFF_X46_Y24_N11
\LCD_Config_unit|I2C_data[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|WideOr4~2_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \LCD_Config_unit|I2C_data[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_data\(10));

-- Location: LCFF_X43_Y24_N31
\LCD_Config_unit|I2C_unit|sdat[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|I2C_unit|sdat~6_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \LCD_Config_unit|I2C_unit|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_unit|sdat\(9));

-- Location: LCCOMB_X44_Y24_N14
\LCD_Config_unit|I2C_unit|sdat~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_unit|sdat~5_combout\ = (\LCD_Config_unit|I2C_unit|Equal3~0_combout\ & ((!\LCD_Config_unit|I2C_data\(10)))) # (!\LCD_Config_unit|I2C_unit|Equal3~0_combout\ & (\LCD_Config_unit|I2C_unit|sdat\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_unit|sdat\(9),
	datab => \LCD_Config_unit|I2C_unit|Equal3~0_combout\,
	datad => \LCD_Config_unit|I2C_data\(10),
	combout => \LCD_Config_unit|I2C_unit|sdat~5_combout\);

-- Location: LCCOMB_X47_Y24_N24
\LCD_Config_unit|WideOr4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|WideOr4~1_combout\ = (\LCD_Config_unit|I2C_state\(4) & ((\LCD_Config_unit|I2C_state\(1)) # ((\LCD_Config_unit|I2C_state\(3)) # (\LCD_Config_unit|I2C_state\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_state\(1),
	datab => \LCD_Config_unit|I2C_state\(3),
	datac => \LCD_Config_unit|I2C_state\(2),
	datad => \LCD_Config_unit|I2C_state\(4),
	combout => \LCD_Config_unit|WideOr4~1_combout\);

-- Location: LCCOMB_X46_Y24_N10
\LCD_Config_unit|WideOr4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|WideOr4~2_combout\ = (\LCD_Config_unit|I2C_state\(0) & (\LCD_Config_unit|WideOr4~0_combout\)) # (!\LCD_Config_unit|I2C_state\(0) & ((!\LCD_Config_unit|WideOr4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_state\(0),
	datab => \LCD_Config_unit|WideOr4~0_combout\,
	datad => \LCD_Config_unit|WideOr4~1_combout\,
	combout => \LCD_Config_unit|WideOr4~2_combout\);

-- Location: LCFF_X43_Y24_N17
\LCD_Config_unit|I2C_unit|sdat[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|I2C_unit|sdat~7_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \LCD_Config_unit|I2C_unit|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_unit|sdat\(8));

-- Location: LCCOMB_X43_Y24_N30
\LCD_Config_unit|I2C_unit|sdat~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_unit|sdat~6_combout\ = (\LCD_Config_unit|I2C_unit|sdat\(8)) # ((\LCD_Config_unit|I2C_unit|Equal0~0_combout\ & (!\LCD_Config_unit|I2C_unit|state_counter\(4) & \LCD_Config_unit|I2C_unit|state_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_unit|Equal0~0_combout\,
	datab => \LCD_Config_unit|I2C_unit|state_counter\(4),
	datac => \LCD_Config_unit|I2C_unit|sdat\(8),
	datad => \LCD_Config_unit|I2C_unit|state_counter\(1),
	combout => \LCD_Config_unit|I2C_unit|sdat~6_combout\);

-- Location: LCFF_X44_Y24_N25
\LCD_Config_unit|I2C_data[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|I2C_data[8]~3_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_data\(8));

-- Location: LCFF_X43_Y24_N27
\LCD_Config_unit|I2C_unit|sdat[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|I2C_unit|sdat~8_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \LCD_Config_unit|I2C_unit|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_unit|sdat\(7));

-- Location: LCCOMB_X43_Y24_N16
\LCD_Config_unit|I2C_unit|sdat~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_unit|sdat~7_combout\ = (\LCD_Config_unit|I2C_unit|Equal3~0_combout\ & ((!\LCD_Config_unit|I2C_data\(8)))) # (!\LCD_Config_unit|I2C_unit|Equal3~0_combout\ & (\LCD_Config_unit|I2C_unit|sdat\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_unit|Equal3~0_combout\,
	datab => \LCD_Config_unit|I2C_unit|sdat\(7),
	datad => \LCD_Config_unit|I2C_data\(8),
	combout => \LCD_Config_unit|I2C_unit|sdat~7_combout\);

-- Location: LCCOMB_X45_Y24_N4
\LCD_Config_unit|I2C_data~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_data~2_combout\ = (\LCD_Config_unit|Equal0~1_combout\ & ((\LCD_config_start~regout\))) # (!\LCD_Config_unit|Equal0~1_combout\ & (\LCD_Config_unit|I2C_data~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD_Config_unit|Equal0~1_combout\,
	datac => \LCD_Config_unit|I2C_data~0_combout\,
	datad => \LCD_config_start~regout\,
	combout => \LCD_Config_unit|I2C_data~2_combout\);

-- Location: LCCOMB_X44_Y24_N24
\LCD_Config_unit|I2C_data[8]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_data[8]~3_combout\ = (\LCD_Config_unit|I2C_data~2_combout\ & (((\LCD_Config_unit|Equal0~0_combout\)) # (!\LCD_Config_unit|I2C_state\(4)))) # (!\LCD_Config_unit|I2C_data~2_combout\ & (((\LCD_Config_unit|I2C_data\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_state\(4),
	datab => \LCD_Config_unit|Equal0~0_combout\,
	datac => \LCD_Config_unit|I2C_data\(8),
	datad => \LCD_Config_unit|I2C_data~2_combout\,
	combout => \LCD_Config_unit|I2C_data[8]~3_combout\);

-- Location: LCFF_X46_Y24_N9
\LCD_Config_unit|I2C_data[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|Mux0~1_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \LCD_Config_unit|I2C_data[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_data\(7));

-- Location: LCFF_X43_Y24_N5
\LCD_Config_unit|I2C_unit|sdat[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|I2C_unit|sdat~9_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \LCD_Config_unit|I2C_unit|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_unit|sdat\(6));

-- Location: LCCOMB_X43_Y24_N26
\LCD_Config_unit|I2C_unit|sdat~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_unit|sdat~8_combout\ = (\LCD_Config_unit|I2C_unit|Equal3~0_combout\ & (!\LCD_Config_unit|I2C_data\(7))) # (!\LCD_Config_unit|I2C_unit|Equal3~0_combout\ & ((\LCD_Config_unit|I2C_unit|sdat\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD_Config_unit|I2C_data\(7),
	datac => \LCD_Config_unit|I2C_unit|sdat\(6),
	datad => \LCD_Config_unit|I2C_unit|Equal3~0_combout\,
	combout => \LCD_Config_unit|I2C_unit|sdat~8_combout\);

-- Location: LCCOMB_X47_Y24_N30
\LCD_Config_unit|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|Mux0~0_combout\ = (\LCD_Config_unit|I2C_state\(0) & (\LCD_Config_unit|I2C_state\(2) & ((\LCD_Config_unit|I2C_state\(1)) # (\LCD_Config_unit|I2C_state\(3))))) # (!\LCD_Config_unit|I2C_state\(0) & (\LCD_Config_unit|I2C_state\(1) $ 
-- (((!\LCD_Config_unit|I2C_state\(3) & \LCD_Config_unit|I2C_state\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_state\(1),
	datab => \LCD_Config_unit|I2C_state\(3),
	datac => \LCD_Config_unit|I2C_state\(2),
	datad => \LCD_Config_unit|I2C_state\(0),
	combout => \LCD_Config_unit|Mux0~0_combout\);

-- Location: LCCOMB_X46_Y24_N8
\LCD_Config_unit|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|Mux0~1_combout\ = (\LCD_Config_unit|WideOr4~0_combout\) # ((!\LCD_Config_unit|I2C_state\(4) & \LCD_Config_unit|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD_Config_unit|WideOr4~0_combout\,
	datac => \LCD_Config_unit|I2C_state\(4),
	datad => \LCD_Config_unit|Mux0~0_combout\,
	combout => \LCD_Config_unit|Mux0~1_combout\);

-- Location: LCFF_X46_Y24_N27
\LCD_Config_unit|I2C_data[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|Mux1~1_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \LCD_Config_unit|I2C_data[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_data\(6));

-- Location: LCFF_X44_Y24_N31
\LCD_Config_unit|I2C_unit|sdat[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|I2C_unit|sdat~10_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \LCD_Config_unit|I2C_unit|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_unit|sdat\(5));

-- Location: LCCOMB_X43_Y24_N4
\LCD_Config_unit|I2C_unit|sdat~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_unit|sdat~9_combout\ = (\LCD_Config_unit|I2C_unit|Equal3~0_combout\ & ((!\LCD_Config_unit|I2C_data\(6)))) # (!\LCD_Config_unit|I2C_unit|Equal3~0_combout\ & (\LCD_Config_unit|I2C_unit|sdat\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD_Config_unit|I2C_unit|sdat\(5),
	datac => \LCD_Config_unit|I2C_data\(6),
	datad => \LCD_Config_unit|I2C_unit|Equal3~0_combout\,
	combout => \LCD_Config_unit|I2C_unit|sdat~9_combout\);

-- Location: LCCOMB_X47_Y24_N12
\LCD_Config_unit|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|Mux1~0_combout\ = (\LCD_Config_unit|I2C_state\(1) & (((\LCD_Config_unit|I2C_state\(2)) # (!\LCD_Config_unit|I2C_state\(0))) # (!\LCD_Config_unit|I2C_state\(3)))) # (!\LCD_Config_unit|I2C_state\(1) & ((\LCD_Config_unit|I2C_state\(2) $ 
-- (\LCD_Config_unit|I2C_state\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_state\(1),
	datab => \LCD_Config_unit|I2C_state\(3),
	datac => \LCD_Config_unit|I2C_state\(2),
	datad => \LCD_Config_unit|I2C_state\(0),
	combout => \LCD_Config_unit|Mux1~0_combout\);

-- Location: LCCOMB_X46_Y24_N26
\LCD_Config_unit|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|Mux1~1_combout\ = (\LCD_Config_unit|WideOr4~0_combout\) # ((\LCD_Config_unit|Mux1~0_combout\ & !\LCD_Config_unit|I2C_state\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD_Config_unit|WideOr4~0_combout\,
	datac => \LCD_Config_unit|Mux1~0_combout\,
	datad => \LCD_Config_unit|I2C_state\(4),
	combout => \LCD_Config_unit|Mux1~1_combout\);

-- Location: LCFF_X46_Y24_N17
\LCD_Config_unit|I2C_data[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|Mux2~1_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \LCD_Config_unit|I2C_data[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_data\(5));

-- Location: LCFF_X44_Y24_N29
\LCD_Config_unit|I2C_unit|sdat[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|I2C_unit|sdat~11_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \LCD_Config_unit|I2C_unit|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_unit|sdat\(4));

-- Location: LCCOMB_X44_Y24_N30
\LCD_Config_unit|I2C_unit|sdat~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_unit|sdat~10_combout\ = (\LCD_Config_unit|I2C_unit|Equal3~0_combout\ & ((!\LCD_Config_unit|I2C_data\(5)))) # (!\LCD_Config_unit|I2C_unit|Equal3~0_combout\ & (\LCD_Config_unit|I2C_unit|sdat\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD_Config_unit|I2C_unit|sdat\(4),
	datac => \LCD_Config_unit|I2C_unit|Equal3~0_combout\,
	datad => \LCD_Config_unit|I2C_data\(5),
	combout => \LCD_Config_unit|I2C_unit|sdat~10_combout\);

-- Location: LCCOMB_X45_Y24_N10
\LCD_Config_unit|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|Mux2~0_combout\ = (\LCD_Config_unit|I2C_state\(0) & ((\LCD_Config_unit|I2C_state\(3) $ (!\LCD_Config_unit|I2C_state\(2))) # (!\LCD_Config_unit|I2C_state\(1)))) # (!\LCD_Config_unit|I2C_state\(0) & ((\LCD_Config_unit|I2C_state\(3) & 
-- ((\LCD_Config_unit|I2C_state\(2)))) # (!\LCD_Config_unit|I2C_state\(3) & (\LCD_Config_unit|I2C_state\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_state\(3),
	datab => \LCD_Config_unit|I2C_state\(1),
	datac => \LCD_Config_unit|I2C_state\(0),
	datad => \LCD_Config_unit|I2C_state\(2),
	combout => \LCD_Config_unit|Mux2~0_combout\);

-- Location: LCCOMB_X46_Y24_N16
\LCD_Config_unit|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|Mux2~1_combout\ = (\LCD_Config_unit|I2C_state\(0) & (!\LCD_Config_unit|I2C_state\(4) & (\LCD_Config_unit|Mux2~0_combout\))) # (!\LCD_Config_unit|I2C_state\(0) & ((\LCD_Config_unit|WideOr4~0_combout\) # ((!\LCD_Config_unit|I2C_state\(4) & 
-- \LCD_Config_unit|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_state\(0),
	datab => \LCD_Config_unit|I2C_state\(4),
	datac => \LCD_Config_unit|Mux2~0_combout\,
	datad => \LCD_Config_unit|WideOr4~0_combout\,
	combout => \LCD_Config_unit|Mux2~1_combout\);

-- Location: LCFF_X46_Y24_N23
\LCD_Config_unit|I2C_data[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|Mux3~1_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \LCD_Config_unit|I2C_data[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_data\(4));

-- Location: LCFF_X44_Y24_N11
\LCD_Config_unit|I2C_unit|sdat[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|I2C_unit|sdat~12_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \LCD_Config_unit|I2C_unit|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_unit|sdat\(3));

-- Location: LCCOMB_X44_Y24_N28
\LCD_Config_unit|I2C_unit|sdat~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_unit|sdat~11_combout\ = (\LCD_Config_unit|I2C_unit|Equal3~0_combout\ & (!\LCD_Config_unit|I2C_data\(4))) # (!\LCD_Config_unit|I2C_unit|Equal3~0_combout\ & ((\LCD_Config_unit|I2C_unit|sdat\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD_Config_unit|I2C_unit|Equal3~0_combout\,
	datac => \LCD_Config_unit|I2C_data\(4),
	datad => \LCD_Config_unit|I2C_unit|sdat\(3),
	combout => \LCD_Config_unit|I2C_unit|sdat~11_combout\);

-- Location: LCFF_X46_Y24_N21
\LCD_Config_unit|I2C_data[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|Mux4~1_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \LCD_Config_unit|I2C_data[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_data\(3));

-- Location: LCFF_X43_Y24_N11
\LCD_Config_unit|I2C_unit|sdat[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|I2C_unit|sdat~13_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \LCD_Config_unit|I2C_unit|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_unit|sdat\(2));

-- Location: LCCOMB_X44_Y24_N10
\LCD_Config_unit|I2C_unit|sdat~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_unit|sdat~12_combout\ = (\LCD_Config_unit|I2C_unit|Equal3~0_combout\ & (!\LCD_Config_unit|I2C_data\(3))) # (!\LCD_Config_unit|I2C_unit|Equal3~0_combout\ & ((\LCD_Config_unit|I2C_unit|sdat\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD_Config_unit|I2C_unit|Equal3~0_combout\,
	datac => \LCD_Config_unit|I2C_data\(3),
	datad => \LCD_Config_unit|I2C_unit|sdat\(2),
	combout => \LCD_Config_unit|I2C_unit|sdat~12_combout\);

-- Location: LCCOMB_X47_Y24_N26
\LCD_Config_unit|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|Mux4~0_combout\ = \LCD_Config_unit|I2C_state\(3) $ (((\LCD_Config_unit|I2C_state\(1) & ((\LCD_Config_unit|I2C_state\(0)) # (!\LCD_Config_unit|I2C_state\(2)))) # (!\LCD_Config_unit|I2C_state\(1) & (\LCD_Config_unit|I2C_state\(2) $ 
-- (\LCD_Config_unit|I2C_state\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_state\(1),
	datab => \LCD_Config_unit|I2C_state\(3),
	datac => \LCD_Config_unit|I2C_state\(2),
	datad => \LCD_Config_unit|I2C_state\(0),
	combout => \LCD_Config_unit|Mux4~0_combout\);

-- Location: LCCOMB_X46_Y24_N20
\LCD_Config_unit|Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|Mux4~1_combout\ = (\LCD_Config_unit|I2C_state\(0) & ((\LCD_Config_unit|WideOr4~0_combout\) # ((\LCD_Config_unit|Mux4~0_combout\ & !\LCD_Config_unit|I2C_state\(4))))) # (!\LCD_Config_unit|I2C_state\(0) & (((\LCD_Config_unit|Mux4~0_combout\ 
-- & !\LCD_Config_unit|I2C_state\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_state\(0),
	datab => \LCD_Config_unit|WideOr4~0_combout\,
	datac => \LCD_Config_unit|Mux4~0_combout\,
	datad => \LCD_Config_unit|I2C_state\(4),
	combout => \LCD_Config_unit|Mux4~1_combout\);

-- Location: LCFF_X46_Y24_N19
\LCD_Config_unit|I2C_data[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|Mux5~2_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \LCD_Config_unit|I2C_data[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_data\(2));

-- Location: LCFF_X43_Y24_N21
\LCD_Config_unit|I2C_unit|sdat[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|I2C_unit|sdat~14_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \LCD_Config_unit|I2C_unit|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_unit|sdat\(1));

-- Location: LCCOMB_X43_Y24_N10
\LCD_Config_unit|I2C_unit|sdat~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_unit|sdat~13_combout\ = (\LCD_Config_unit|I2C_unit|Equal3~0_combout\ & (!\LCD_Config_unit|I2C_data\(2))) # (!\LCD_Config_unit|I2C_unit|Equal3~0_combout\ & ((\LCD_Config_unit|I2C_unit|sdat\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD_Config_unit|I2C_data\(2),
	datac => \LCD_Config_unit|I2C_unit|sdat\(1),
	datad => \LCD_Config_unit|I2C_unit|Equal3~0_combout\,
	combout => \LCD_Config_unit|I2C_unit|sdat~13_combout\);

-- Location: LCCOMB_X47_Y24_N16
\LCD_Config_unit|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|Mux5~0_combout\ = (!\LCD_Config_unit|I2C_state\(3) & (!\LCD_Config_unit|I2C_state\(2) & ((\LCD_Config_unit|I2C_state\(1)) # (\LCD_Config_unit|I2C_state\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_state\(1),
	datab => \LCD_Config_unit|I2C_state\(3),
	datac => \LCD_Config_unit|I2C_state\(2),
	datad => \LCD_Config_unit|I2C_state\(0),
	combout => \LCD_Config_unit|Mux5~0_combout\);

-- Location: LCCOMB_X47_Y24_N14
\LCD_Config_unit|Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|Mux5~1_combout\ = (\LCD_Config_unit|I2C_state\(2) & (\LCD_Config_unit|I2C_state\(1) $ (((!\LCD_Config_unit|I2C_state\(0)) # (!\LCD_Config_unit|I2C_state\(3)))))) # (!\LCD_Config_unit|I2C_state\(2) & ((\LCD_Config_unit|I2C_state\(0)) # 
-- ((\LCD_Config_unit|I2C_state\(1) & \LCD_Config_unit|I2C_state\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_state\(1),
	datab => \LCD_Config_unit|I2C_state\(3),
	datac => \LCD_Config_unit|I2C_state\(2),
	datad => \LCD_Config_unit|I2C_state\(0),
	combout => \LCD_Config_unit|Mux5~1_combout\);

-- Location: LCCOMB_X46_Y24_N18
\LCD_Config_unit|Mux5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|Mux5~2_combout\ = (\LCD_Config_unit|I2C_state\(4) & (\LCD_Config_unit|Mux5~0_combout\)) # (!\LCD_Config_unit|I2C_state\(4) & ((!\LCD_Config_unit|Mux5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|Mux5~0_combout\,
	datab => \LCD_Config_unit|I2C_state\(4),
	datac => \LCD_Config_unit|Mux5~1_combout\,
	combout => \LCD_Config_unit|Mux5~2_combout\);

-- Location: LCFF_X46_Y24_N29
\LCD_Config_unit|I2C_data[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|Mux6~1_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \LCD_Config_unit|I2C_data[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_data\(1));

-- Location: LCFF_X43_Y24_N3
\LCD_Config_unit|I2C_unit|sdat[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|I2C_unit|sdat~15_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \LCD_Config_unit|I2C_unit|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_unit|sdat\(0));

-- Location: LCCOMB_X43_Y24_N20
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

-- Location: LCFF_X46_Y24_N3
\LCD_Config_unit|I2C_data[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|Mux7~1_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \LCD_Config_unit|I2C_data[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_data\(0));

-- Location: LCCOMB_X43_Y24_N2
\LCD_Config_unit|I2C_unit|sdat~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_unit|sdat~15_combout\ = (\LCD_Config_unit|I2C_unit|Equal0~0_combout\ & (\LCD_Config_unit|I2C_unit|state_counter\(1) & (!\LCD_Config_unit|I2C_unit|state_counter\(4) & !\LCD_Config_unit|I2C_data\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_unit|Equal0~0_combout\,
	datab => \LCD_Config_unit|I2C_unit|state_counter\(1),
	datac => \LCD_Config_unit|I2C_unit|state_counter\(4),
	datad => \LCD_Config_unit|I2C_data\(0),
	combout => \LCD_Config_unit|I2C_unit|sdat~15_combout\);

-- Location: LCCOMB_X47_Y24_N22
\LCD_Config_unit|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|Mux7~0_combout\ = (\LCD_Config_unit|I2C_state\(4) & (!\LCD_Config_unit|I2C_state\(2) & ((\LCD_Config_unit|I2C_state\(1)) # (\LCD_Config_unit|I2C_state\(0))))) # (!\LCD_Config_unit|I2C_state\(4) & (\LCD_Config_unit|I2C_state\(0) $ 
-- (((\LCD_Config_unit|I2C_state\(1)) # (!\LCD_Config_unit|I2C_state\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111001100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_state\(1),
	datab => \LCD_Config_unit|I2C_state\(0),
	datac => \LCD_Config_unit|I2C_state\(2),
	datad => \LCD_Config_unit|I2C_state\(4),
	combout => \LCD_Config_unit|Mux7~0_combout\);

-- Location: LCCOMB_X46_Y24_N2
\LCD_Config_unit|Mux7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|Mux7~1_combout\ = (\LCD_Config_unit|I2C_state\(3) & (!\LCD_Config_unit|I2C_state\(2) & (!\LCD_Config_unit|I2C_state\(4)))) # (!\LCD_Config_unit|I2C_state\(3) & (\LCD_Config_unit|Mux7~0_combout\ & ((!\LCD_Config_unit|I2C_state\(4)) # 
-- (!\LCD_Config_unit|I2C_state\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_state\(2),
	datab => \LCD_Config_unit|I2C_state\(4),
	datac => \LCD_Config_unit|I2C_state\(3),
	datad => \LCD_Config_unit|Mux7~0_combout\,
	combout => \LCD_Config_unit|Mux7~1_combout\);

-- Location: LCCOMB_X47_Y24_N28
\LCD_Config_unit|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|Mux6~0_combout\ = (\LCD_Config_unit|I2C_state\(3) & (!\LCD_Config_unit|I2C_state\(1) & (\LCD_Config_unit|I2C_state\(2) $ (!\LCD_Config_unit|I2C_state\(0))))) # (!\LCD_Config_unit|I2C_state\(3) & ((\LCD_Config_unit|I2C_state\(0) & 
-- ((!\LCD_Config_unit|I2C_state\(2)))) # (!\LCD_Config_unit|I2C_state\(0) & (\LCD_Config_unit|I2C_state\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001100100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_state\(1),
	datab => \LCD_Config_unit|I2C_state\(3),
	datac => \LCD_Config_unit|I2C_state\(2),
	datad => \LCD_Config_unit|I2C_state\(0),
	combout => \LCD_Config_unit|Mux6~0_combout\);

-- Location: LCCOMB_X46_Y24_N28
\LCD_Config_unit|Mux6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|Mux6~1_combout\ = (\LCD_Config_unit|Mux6~0_combout\ & (((!\LCD_Config_unit|I2C_state\(2) & !\LCD_Config_unit|I2C_state\(3))) # (!\LCD_Config_unit|I2C_state\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_state\(2),
	datab => \LCD_Config_unit|I2C_state\(4),
	datac => \LCD_Config_unit|I2C_state\(3),
	datad => \LCD_Config_unit|Mux6~0_combout\,
	combout => \LCD_Config_unit|Mux6~1_combout\);

-- Location: LCCOMB_X47_Y24_N18
\LCD_Config_unit|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|Mux3~0_combout\ = (\LCD_Config_unit|I2C_state\(1) & ((\LCD_Config_unit|I2C_state\(3) & ((\LCD_Config_unit|I2C_state\(2)) # (\LCD_Config_unit|I2C_state\(0)))) # (!\LCD_Config_unit|I2C_state\(3) & ((!\LCD_Config_unit|I2C_state\(0)))))) # 
-- (!\LCD_Config_unit|I2C_state\(1) & (\LCD_Config_unit|I2C_state\(3) & (!\LCD_Config_unit|I2C_state\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_state\(1),
	datab => \LCD_Config_unit|I2C_state\(3),
	datac => \LCD_Config_unit|I2C_state\(2),
	datad => \LCD_Config_unit|I2C_state\(0),
	combout => \LCD_Config_unit|Mux3~0_combout\);

-- Location: LCCOMB_X46_Y24_N22
\LCD_Config_unit|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|Mux3~1_combout\ = (\LCD_Config_unit|I2C_state\(4) & (!\LCD_Config_unit|I2C_state\(2) & (!\LCD_Config_unit|I2C_state\(3) & !\LCD_Config_unit|Mux3~0_combout\))) # (!\LCD_Config_unit|I2C_state\(4) & (((\LCD_Config_unit|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_state\(2),
	datab => \LCD_Config_unit|I2C_state\(4),
	datac => \LCD_Config_unit|I2C_state\(3),
	datad => \LCD_Config_unit|Mux3~0_combout\,
	combout => \LCD_Config_unit|Mux3~1_combout\);

-- Location: LCCOMB_X40_Y26_N24
\LCD_Config_unit|I2C_unit|clock_div_count[0]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_unit|clock_div_count[0]~33_combout\ = !\LCD_Config_unit|I2C_unit|clock_div_count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LCD_Config_unit|I2C_unit|clock_div_count\(0),
	combout => \LCD_Config_unit|I2C_unit|clock_div_count[0]~33_combout\);

-- Location: LCCOMB_X48_Y26_N20
\Colourbar_Red[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Colourbar_Red[7]~feeder_combout\ = \LCD_Data_unit|Add1~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \LCD_Data_unit|Add1~12_combout\,
	combout => \Colourbar_Red[7]~feeder_combout\);

-- Location: LCCOMB_X47_Y26_N10
\Colourbar_Blue[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Colourbar_Blue[0]~feeder_combout\ = \LCD_Data_unit|Add1~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \LCD_Data_unit|Add1~16_combout\,
	combout => \Colourbar_Blue[0]~feeder_combout\);

-- Location: LCCOMB_X40_Y26_N0
\LCD_Config_unit|I2C_unit|clock_div_count[1]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_unit|clock_div_count[1]~11_combout\ = (\LCD_Config_unit|I2C_unit|clock_div_count\(0) & (\LCD_Config_unit|I2C_unit|clock_div_count\(1) $ (VCC))) # (!\LCD_Config_unit|I2C_unit|clock_div_count\(0) & 
-- (\LCD_Config_unit|I2C_unit|clock_div_count\(1) & VCC))
-- \LCD_Config_unit|I2C_unit|clock_div_count[1]~12\ = CARRY((\LCD_Config_unit|I2C_unit|clock_div_count\(0) & \LCD_Config_unit|I2C_unit|clock_div_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_unit|clock_div_count\(0),
	datab => \LCD_Config_unit|I2C_unit|clock_div_count\(1),
	datad => VCC,
	combout => \LCD_Config_unit|I2C_unit|clock_div_count[1]~11_combout\,
	cout => \LCD_Config_unit|I2C_unit|clock_div_count[1]~12\);

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

-- Location: LCFF_X40_Y26_N1
\LCD_Config_unit|I2C_unit|clock_div_count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|I2C_unit|clock_div_count[1]~11_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_unit|clock_div_count\(1));

-- Location: LCCOMB_X40_Y26_N2
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

-- Location: LCFF_X40_Y26_N3
\LCD_Config_unit|I2C_unit|clock_div_count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|I2C_unit|clock_div_count[2]~13_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_unit|clock_div_count\(2));

-- Location: LCCOMB_X40_Y26_N4
\LCD_Config_unit|I2C_unit|clock_div_count[3]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_unit|clock_div_count[3]~15_combout\ = (\LCD_Config_unit|I2C_unit|clock_div_count\(3) & (\LCD_Config_unit|I2C_unit|clock_div_count[2]~14\ $ (GND))) # (!\LCD_Config_unit|I2C_unit|clock_div_count\(3) & 
-- (!\LCD_Config_unit|I2C_unit|clock_div_count[2]~14\ & VCC))
-- \LCD_Config_unit|I2C_unit|clock_div_count[3]~16\ = CARRY((\LCD_Config_unit|I2C_unit|clock_div_count\(3) & !\LCD_Config_unit|I2C_unit|clock_div_count[2]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_Config_unit|I2C_unit|clock_div_count\(3),
	datad => VCC,
	cin => \LCD_Config_unit|I2C_unit|clock_div_count[2]~14\,
	combout => \LCD_Config_unit|I2C_unit|clock_div_count[3]~15_combout\,
	cout => \LCD_Config_unit|I2C_unit|clock_div_count[3]~16\);

-- Location: LCFF_X40_Y26_N5
\LCD_Config_unit|I2C_unit|clock_div_count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|I2C_unit|clock_div_count[3]~15_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_unit|clock_div_count\(3));

-- Location: LCCOMB_X40_Y26_N8
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

-- Location: LCFF_X40_Y26_N9
\LCD_Config_unit|I2C_unit|clock_div_count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|I2C_unit|clock_div_count[5]~19_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_unit|clock_div_count\(5));

-- Location: LCCOMB_X40_Y26_N14
\LCD_Config_unit|I2C_unit|clock_div_count[8]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_unit|clock_div_count[8]~25_combout\ = (\LCD_Config_unit|I2C_unit|clock_div_count\(8) & (!\LCD_Config_unit|I2C_unit|clock_div_count[7]~24\)) # (!\LCD_Config_unit|I2C_unit|clock_div_count\(8) & 
-- ((\LCD_Config_unit|I2C_unit|clock_div_count[7]~24\) # (GND)))
-- \LCD_Config_unit|I2C_unit|clock_div_count[8]~26\ = CARRY((!\LCD_Config_unit|I2C_unit|clock_div_count[7]~24\) # (!\LCD_Config_unit|I2C_unit|clock_div_count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_Config_unit|I2C_unit|clock_div_count\(8),
	datad => VCC,
	cin => \LCD_Config_unit|I2C_unit|clock_div_count[7]~24\,
	combout => \LCD_Config_unit|I2C_unit|clock_div_count[8]~25_combout\,
	cout => \LCD_Config_unit|I2C_unit|clock_div_count[8]~26\);

-- Location: LCFF_X40_Y26_N15
\LCD_Config_unit|I2C_unit|clock_div_count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|I2C_unit|clock_div_count[8]~25_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_unit|clock_div_count\(8));

-- Location: LCCOMB_X40_Y26_N18
\LCD_Config_unit|I2C_unit|clock_div_count[10]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_unit|clock_div_count[10]~29_combout\ = (\LCD_Config_unit|I2C_unit|clock_div_count\(10) & (!\LCD_Config_unit|I2C_unit|clock_div_count[9]~28\)) # (!\LCD_Config_unit|I2C_unit|clock_div_count\(10) & 
-- ((\LCD_Config_unit|I2C_unit|clock_div_count[9]~28\) # (GND)))
-- \LCD_Config_unit|I2C_unit|clock_div_count[10]~30\ = CARRY((!\LCD_Config_unit|I2C_unit|clock_div_count[9]~28\) # (!\LCD_Config_unit|I2C_unit|clock_div_count\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_Config_unit|I2C_unit|clock_div_count\(10),
	datad => VCC,
	cin => \LCD_Config_unit|I2C_unit|clock_div_count[9]~28\,
	combout => \LCD_Config_unit|I2C_unit|clock_div_count[10]~29_combout\,
	cout => \LCD_Config_unit|I2C_unit|clock_div_count[10]~30\);

-- Location: LCFF_X40_Y26_N19
\LCD_Config_unit|I2C_unit|clock_div_count[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|I2C_unit|clock_div_count[10]~29_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_unit|clock_div_count\(10));

-- Location: LCCOMB_X40_Y26_N20
\LCD_Config_unit|I2C_unit|clock_div_count[11]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_unit|clock_div_count[11]~31_combout\ = \LCD_Config_unit|I2C_unit|clock_div_count\(11) $ (!\LCD_Config_unit|I2C_unit|clock_div_count[10]~30\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_unit|clock_div_count\(11),
	cin => \LCD_Config_unit|I2C_unit|clock_div_count[10]~30\,
	combout => \LCD_Config_unit|I2C_unit|clock_div_count[11]~31_combout\);

-- Location: LCFF_X40_Y26_N21
\LCD_Config_unit|I2C_unit|clock_div_count[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|I2C_unit|clock_div_count[11]~31_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_unit|clock_div_count\(11));

-- Location: LCFF_X40_Y26_N23
\LCD_Config_unit|I2C_unit|clock_div\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \LCD_Config_unit|I2C_unit|clock_div_count\(11),
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_unit|clock_div~regout\);

-- Location: LCFF_X43_Y24_N7
\LCD_Config_unit|I2C_unit|clock_div_prev\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \LCD_Config_unit|I2C_unit|clock_div~regout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_unit|clock_div_prev~regout\);

-- Location: LCCOMB_X42_Y24_N2
\LCD_Config_unit|I2C_unit|state_counter[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_unit|state_counter[1]~1_combout\ = (!\LCD_Config_unit|I2C_unit|state_counter[1]~0_combout\ & ((\LCD_Config_unit|I2C_unit|state_counter\(1) $ (\LCD_Config_unit|I2C_unit|state_counter\(4))) # 
-- (!\LCD_Config_unit|I2C_unit|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_unit|Equal0~0_combout\,
	datab => \LCD_Config_unit|I2C_unit|state_counter\(1),
	datac => \LCD_Config_unit|I2C_unit|state_counter[1]~0_combout\,
	datad => \LCD_Config_unit|I2C_unit|state_counter\(4),
	combout => \LCD_Config_unit|I2C_unit|state_counter[1]~1_combout\);

-- Location: LCCOMB_X42_Y24_N18
\LCD_Config_unit|I2C_unit|state_counter[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_unit|state_counter[1]~3_combout\ = (\LCD_Config_unit|I2C_unit|Add1~2_combout\ & ((\LCD_Config_unit|I2C_unit|state_counter[1]~1_combout\) # ((\LCD_Config_unit|I2C_unit|state_counter[1]~0_combout\ & 
-- \LCD_Config_unit|I2C_unit|state_counter\(1))))) # (!\LCD_Config_unit|I2C_unit|Add1~2_combout\ & (\LCD_Config_unit|I2C_unit|state_counter[1]~0_combout\ & (\LCD_Config_unit|I2C_unit|state_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_unit|Add1~2_combout\,
	datab => \LCD_Config_unit|I2C_unit|state_counter[1]~0_combout\,
	datac => \LCD_Config_unit|I2C_unit|state_counter\(1),
	datad => \LCD_Config_unit|I2C_unit|state_counter[1]~1_combout\,
	combout => \LCD_Config_unit|I2C_unit|state_counter[1]~3_combout\);

-- Location: LCFF_X42_Y24_N19
\LCD_Config_unit|I2C_unit|state_counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|I2C_unit|state_counter[1]~3_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_unit|state_counter\(1));

-- Location: LCCOMB_X42_Y24_N12
\LCD_Config_unit|I2C_unit|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_unit|Equal0~1_combout\ = (\LCD_Config_unit|I2C_unit|Equal0~0_combout\ & (!\LCD_Config_unit|I2C_unit|state_counter\(4) & !\LCD_Config_unit|I2C_unit|state_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_unit|Equal0~0_combout\,
	datac => \LCD_Config_unit|I2C_unit|state_counter\(4),
	datad => \LCD_Config_unit|I2C_unit|state_counter\(1),
	combout => \LCD_Config_unit|I2C_unit|Equal0~1_combout\);

-- Location: LCCOMB_X42_Y24_N14
\LCD_Config_unit|I2C_unit|state_counter[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_unit|state_counter[1]~0_combout\ = (\LCD_Config_unit|always1~0_combout\) # ((!\LCD_Config_unit|I2C_unit|Equal0~1_combout\ & ((\LCD_Config_unit|I2C_unit|clock_div_prev~regout\) # (!\LCD_Config_unit|I2C_unit|clock_div~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|always1~0_combout\,
	datab => \LCD_Config_unit|I2C_unit|clock_div~regout\,
	datac => \LCD_Config_unit|I2C_unit|clock_div_prev~regout\,
	datad => \LCD_Config_unit|I2C_unit|Equal0~1_combout\,
	combout => \LCD_Config_unit|I2C_unit|state_counter[1]~0_combout\);

-- Location: LCCOMB_X42_Y24_N0
\LCD_Config_unit|I2C_unit|state_counter[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_unit|state_counter[3]~4_combout\ = (\LCD_Config_unit|I2C_unit|Add1~6_combout\ & ((\LCD_Config_unit|I2C_unit|state_counter[1]~1_combout\) # ((\LCD_Config_unit|I2C_unit|state_counter[1]~0_combout\ & 
-- \LCD_Config_unit|I2C_unit|state_counter\(3))))) # (!\LCD_Config_unit|I2C_unit|Add1~6_combout\ & (\LCD_Config_unit|I2C_unit|state_counter[1]~0_combout\ & (\LCD_Config_unit|I2C_unit|state_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_unit|Add1~6_combout\,
	datab => \LCD_Config_unit|I2C_unit|state_counter[1]~0_combout\,
	datac => \LCD_Config_unit|I2C_unit|state_counter\(3),
	datad => \LCD_Config_unit|I2C_unit|state_counter[1]~1_combout\,
	combout => \LCD_Config_unit|I2C_unit|state_counter[3]~4_combout\);

-- Location: LCFF_X42_Y24_N1
\LCD_Config_unit|I2C_unit|state_counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|I2C_unit|state_counter[3]~4_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_unit|state_counter\(3));

-- Location: LCCOMB_X42_Y24_N30
\LCD_Config_unit|I2C_unit|state_counter[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_unit|state_counter[2]~5_combout\ = (\LCD_Config_unit|I2C_unit|Add1~4_combout\ & ((\LCD_Config_unit|I2C_unit|state_counter[1]~1_combout\) # ((\LCD_Config_unit|I2C_unit|state_counter[1]~0_combout\ & 
-- \LCD_Config_unit|I2C_unit|state_counter\(2))))) # (!\LCD_Config_unit|I2C_unit|Add1~4_combout\ & (\LCD_Config_unit|I2C_unit|state_counter[1]~0_combout\ & (\LCD_Config_unit|I2C_unit|state_counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_unit|Add1~4_combout\,
	datab => \LCD_Config_unit|I2C_unit|state_counter[1]~0_combout\,
	datac => \LCD_Config_unit|I2C_unit|state_counter\(2),
	datad => \LCD_Config_unit|I2C_unit|state_counter[1]~1_combout\,
	combout => \LCD_Config_unit|I2C_unit|state_counter[2]~5_combout\);

-- Location: LCFF_X42_Y24_N31
\LCD_Config_unit|I2C_unit|state_counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|I2C_unit|state_counter[2]~5_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_unit|state_counter\(2));

-- Location: LCCOMB_X42_Y24_N20
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

-- Location: LCCOMB_X43_Y24_N22
\LCD_Config_unit|I2C_unit|state_counter[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_unit|state_counter[0]~6_combout\ = (\LCD_Config_unit|I2C_unit|Equal0~0_combout\ & ((\LCD_Config_unit|I2C_unit|state_counter\(4) & (\LCD_Config_unit|I2C_unit|Add1~0_combout\ & !\LCD_Config_unit|I2C_unit|state_counter\(1))) # 
-- (!\LCD_Config_unit|I2C_unit|state_counter\(4) & ((\LCD_Config_unit|I2C_unit|Add1~0_combout\) # (!\LCD_Config_unit|I2C_unit|state_counter\(1)))))) # (!\LCD_Config_unit|I2C_unit|Equal0~0_combout\ & (((\LCD_Config_unit|I2C_unit|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_unit|Equal0~0_combout\,
	datab => \LCD_Config_unit|I2C_unit|state_counter\(4),
	datac => \LCD_Config_unit|I2C_unit|Add1~0_combout\,
	datad => \LCD_Config_unit|I2C_unit|state_counter\(1),
	combout => \LCD_Config_unit|I2C_unit|state_counter[0]~6_combout\);

-- Location: LCCOMB_X42_Y24_N8
\LCD_Config_unit|I2C_unit|state_counter[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_unit|state_counter[0]~7_combout\ = (\LCD_Config_unit|I2C_unit|state_counter[1]~0_combout\ & (\LCD_Config_unit|I2C_unit|state_counter\(0))) # (!\LCD_Config_unit|I2C_unit|state_counter[1]~0_combout\ & 
-- ((\LCD_Config_unit|I2C_unit|state_counter[0]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD_Config_unit|I2C_unit|state_counter[1]~0_combout\,
	datac => \LCD_Config_unit|I2C_unit|state_counter\(0),
	datad => \LCD_Config_unit|I2C_unit|state_counter[0]~6_combout\,
	combout => \LCD_Config_unit|I2C_unit|state_counter[0]~7_combout\);

-- Location: LCFF_X42_Y24_N9
\LCD_Config_unit|I2C_unit|state_counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|I2C_unit|state_counter[0]~7_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_unit|state_counter\(0));

-- Location: LCCOMB_X42_Y24_N28
\LCD_Config_unit|I2C_unit|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_unit|Add1~8_combout\ = \LCD_Config_unit|I2C_unit|Add1~7\ $ (!\LCD_Config_unit|I2C_unit|state_counter\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \LCD_Config_unit|I2C_unit|state_counter\(4),
	cin => \LCD_Config_unit|I2C_unit|Add1~7\,
	combout => \LCD_Config_unit|I2C_unit|Add1~8_combout\);

-- Location: LCCOMB_X42_Y24_N4
\LCD_Config_unit|I2C_unit|state_counter[4]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_unit|state_counter[4]~2_combout\ = (\LCD_Config_unit|I2C_unit|state_counter[1]~0_combout\ & ((\LCD_Config_unit|I2C_unit|state_counter\(4)) # ((\LCD_Config_unit|I2C_unit|Add1~8_combout\ & 
-- \LCD_Config_unit|I2C_unit|state_counter[1]~1_combout\)))) # (!\LCD_Config_unit|I2C_unit|state_counter[1]~0_combout\ & (\LCD_Config_unit|I2C_unit|Add1~8_combout\ & ((\LCD_Config_unit|I2C_unit|state_counter[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_unit|state_counter[1]~0_combout\,
	datab => \LCD_Config_unit|I2C_unit|Add1~8_combout\,
	datac => \LCD_Config_unit|I2C_unit|state_counter\(4),
	datad => \LCD_Config_unit|I2C_unit|state_counter[1]~1_combout\,
	combout => \LCD_Config_unit|I2C_unit|state_counter[4]~2_combout\);

-- Location: LCFF_X42_Y24_N5
\LCD_Config_unit|I2C_unit|state_counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|I2C_unit|state_counter[4]~2_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_unit|state_counter\(4));

-- Location: LCCOMB_X43_Y24_N8
\LCD_Config_unit|I2C_unit|I2C_scen~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_unit|I2C_scen~0_combout\ = (\LCD_Config_unit|I2C_unit|Equal0~0_combout\ & ((\LCD_Config_unit|I2C_unit|state_counter\(1) & (!\LCD_Config_unit|I2C_unit|state_counter\(4))) # (!\LCD_Config_unit|I2C_unit|state_counter\(1) & 
-- ((\LCD_Config_unit|I2C_unit|I2C_scen~regout\))))) # (!\LCD_Config_unit|I2C_unit|Equal0~0_combout\ & (((\LCD_Config_unit|I2C_unit|I2C_scen~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_unit|Equal0~0_combout\,
	datab => \LCD_Config_unit|I2C_unit|state_counter\(4),
	datac => \LCD_Config_unit|I2C_unit|I2C_scen~regout\,
	datad => \LCD_Config_unit|I2C_unit|state_counter\(1),
	combout => \LCD_Config_unit|I2C_unit|I2C_scen~0_combout\);

-- Location: LCCOMB_X44_Y24_N8
\LCD_Config_unit|I2C_unit|always2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_unit|always2~0_combout\ = (!\LCD_Config_unit|I2C_unit|clock_div~regout\ & \LCD_Config_unit|I2C_unit|clock_div_prev~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_unit|clock_div~regout\,
	datac => \LCD_Config_unit|I2C_unit|clock_div_prev~regout\,
	combout => \LCD_Config_unit|I2C_unit|always2~0_combout\);

-- Location: LCFF_X43_Y24_N9
\LCD_Config_unit|I2C_unit|I2C_scen\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|I2C_unit|I2C_scen~0_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \LCD_Config_unit|I2C_unit|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_unit|I2C_scen~regout\);

-- Location: LCCOMB_X45_Y26_N22
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

-- Location: LCFF_X45_Y26_N23
\Top_state.000\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Top_state.000~feeder_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Top_state.000~regout\);

-- Location: LCCOMB_X45_Y26_N10
\Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = ((\Top_state.010~regout\ & \LCD_config_start~regout\)) # (!\Top_state.000~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Top_state.010~regout\,
	datac => \LCD_config_start~regout\,
	datad => \Top_state.000~regout\,
	combout => \Selector0~0_combout\);

-- Location: LCFF_X45_Y26_N11
LCD_config_start : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Selector0~0_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_config_start~regout\);

-- Location: LCCOMB_X45_Y26_N14
\Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = ((\Top_state.001~regout\ & ((\LCD_Config_unit|Done~regout\) # (\LCD_config_start~regout\)))) # (!\Top_state.000~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|Done~regout\,
	datab => \Top_state.000~regout\,
	datac => \Top_state.001~regout\,
	datad => \LCD_config_start~regout\,
	combout => \Selector2~0_combout\);

-- Location: LCFF_X45_Y26_N15
\Top_state.001\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Selector2~0_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Top_state.001~regout\);

-- Location: LCCOMB_X45_Y26_N12
\Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (!\LCD_TPn_sel~regout\ & ((\LCD_Config_unit|Done~regout\) # (\LCD_config_start~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|Done~regout\,
	datab => \LCD_TPn_sel~regout\,
	datad => \LCD_config_start~regout\,
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X45_Y26_N30
\Selector1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = (!\Selector1~0_combout\ & ((\Top_state.001~regout\) # ((\Top_state.010~regout\ & \LCD_TPn_sel~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Top_state.010~regout\,
	datab => \Top_state.001~regout\,
	datac => \LCD_TPn_sel~regout\,
	datad => \Selector1~0_combout\,
	combout => \Selector1~1_combout\);

-- Location: LCFF_X45_Y26_N31
LCD_TPn_sel : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Selector1~1_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_TPn_sel~regout\);

-- Location: LCCOMB_X44_Y26_N24
\LCD_TPn_sclk~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_TPn_sclk~0_combout\ = (\LCD_Config_unit|I2C_unit|I2C_scen~regout\ & (\LCD_Config_unit|I2C_unit|clock_div~regout\ & !\LCD_TPn_sel~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
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

-- Location: LCCOMB_X46_Y26_N8
\LCD_Data_unit|V_Count[0]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|V_Count[0]~10_combout\ = \LCD_Data_unit|V_Count\(0) $ (VCC)
-- \LCD_Data_unit|V_Count[0]~11\ = CARRY(\LCD_Data_unit|V_Count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD_Data_unit|V_Count\(0),
	datad => VCC,
	combout => \LCD_Data_unit|V_Count[0]~10_combout\,
	cout => \LCD_Data_unit|V_Count[0]~11\);

-- Location: LCCOMB_X46_Y26_N4
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

-- Location: LCCOMB_X45_Y26_N16
\Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (!\LCD_Config_unit|Done~regout\ & (\Top_state.001~regout\ & !\LCD_config_start~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|Done~regout\,
	datac => \Top_state.001~regout\,
	datad => \LCD_config_start~regout\,
	combout => \Selector3~0_combout\);

-- Location: LCFF_X46_Y26_N5
\Top_state.010\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \Top_state.010~feeder_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Top_state.010~regout\);

-- Location: LCCOMB_X46_Y26_N22
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

-- Location: LCCOMB_X46_Y26_N24
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

-- Location: LCCOMB_X48_Y26_N24
\LCD_Data_unit|LTM_R[7]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|LTM_R[7]~2_combout\ = (\LCD_Data_unit|LTM_NCLK~regout\) # (!\Top_state.010~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LCD_Data_unit|LTM_NCLK~regout\,
	datad => \Top_state.010~regout\,
	combout => \LCD_Data_unit|LTM_R[7]~2_combout\);

-- Location: LCCOMB_X48_Y26_N8
\LCD_Data_unit|LTM_NCLK~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|LTM_NCLK~0_combout\ = !\LCD_Data_unit|LTM_R[7]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LCD_Data_unit|LTM_R[7]~2_combout\,
	combout => \LCD_Data_unit|LTM_NCLK~0_combout\);

-- Location: LCFF_X48_Y26_N9
\LCD_Data_unit|LTM_NCLK\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Data_unit|LTM_NCLK~0_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Data_unit|LTM_NCLK~regout\);

-- Location: LCCOMB_X50_Y26_N6
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

-- Location: LCCOMB_X51_Y26_N16
\LCD_Data_unit|H_Count[10]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|H_Count[10]~10_combout\ = (!\Top_state.010~regout\) # (!\LCD_Data_unit|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LCD_Data_unit|Equal0~2_combout\,
	datad => \Top_state.010~regout\,
	combout => \LCD_Data_unit|H_Count[10]~10_combout\);

-- Location: LCFF_X50_Y26_N7
\LCD_Data_unit|oCoord_X[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Data_unit|oCoord_X[0]~3_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	sclr => \LCD_Data_unit|H_Count[10]~10_combout\,
	ena => \LCD_Data_unit|LTM_R[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Data_unit|oCoord_X\(0));

-- Location: LCCOMB_X50_Y26_N8
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

-- Location: LCFF_X50_Y26_N9
\LCD_Data_unit|oCoord_X[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Data_unit|oCoord_X[1]~5_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	sclr => \LCD_Data_unit|H_Count[10]~10_combout\,
	ena => \LCD_Data_unit|LTM_R[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Data_unit|oCoord_X\(1));

-- Location: LCCOMB_X50_Y26_N10
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

-- Location: LCFF_X50_Y26_N11
\LCD_Data_unit|oCoord_X[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Data_unit|oCoord_X[2]~7_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	sclr => \LCD_Data_unit|H_Count[10]~10_combout\,
	ena => \LCD_Data_unit|LTM_R[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Data_unit|oCoord_X\(2));

-- Location: LCCOMB_X50_Y26_N12
\LCD_Data_unit|H_Count[3]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|H_Count[3]~8_combout\ = (\LCD_Data_unit|H_Count\(3) & (!\LCD_Data_unit|oCoord_X[2]~8\)) # (!\LCD_Data_unit|H_Count\(3) & ((\LCD_Data_unit|oCoord_X[2]~8\) # (GND)))
-- \LCD_Data_unit|H_Count[3]~9\ = CARRY((!\LCD_Data_unit|oCoord_X[2]~8\) # (!\LCD_Data_unit|H_Count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_Data_unit|H_Count\(3),
	datad => VCC,
	cin => \LCD_Data_unit|oCoord_X[2]~8\,
	combout => \LCD_Data_unit|H_Count[3]~8_combout\,
	cout => \LCD_Data_unit|H_Count[3]~9\);

-- Location: LCFF_X50_Y26_N13
\LCD_Data_unit|H_Count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Data_unit|H_Count[3]~8_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	sclr => \LCD_Data_unit|H_Count[10]~10_combout\,
	ena => \LCD_Data_unit|LTM_R[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Data_unit|H_Count\(3));

-- Location: LCCOMB_X50_Y26_N14
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

-- Location: LCFF_X50_Y26_N15
\LCD_Data_unit|H_Count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Data_unit|H_Count[4]~11_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	sclr => \LCD_Data_unit|H_Count[10]~10_combout\,
	ena => \LCD_Data_unit|LTM_R[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Data_unit|H_Count\(4));

-- Location: LCCOMB_X50_Y26_N16
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

-- Location: LCCOMB_X50_Y26_N18
\LCD_Data_unit|H_Count[6]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|H_Count[6]~15_combout\ = (\LCD_Data_unit|H_Count\(6) & (\LCD_Data_unit|H_Count[5]~14\ $ (GND))) # (!\LCD_Data_unit|H_Count\(6) & (!\LCD_Data_unit|H_Count[5]~14\ & VCC))
-- \LCD_Data_unit|H_Count[6]~16\ = CARRY((\LCD_Data_unit|H_Count\(6) & !\LCD_Data_unit|H_Count[5]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_Data_unit|H_Count\(6),
	datad => VCC,
	cin => \LCD_Data_unit|H_Count[5]~14\,
	combout => \LCD_Data_unit|H_Count[6]~15_combout\,
	cout => \LCD_Data_unit|H_Count[6]~16\);

-- Location: LCFF_X50_Y26_N19
\LCD_Data_unit|H_Count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Data_unit|H_Count[6]~15_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	sclr => \LCD_Data_unit|H_Count[10]~10_combout\,
	ena => \LCD_Data_unit|LTM_R[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Data_unit|H_Count\(6));

-- Location: LCCOMB_X50_Y26_N20
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

-- Location: LCFF_X50_Y26_N21
\LCD_Data_unit|H_Count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Data_unit|H_Count[7]~17_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	sclr => \LCD_Data_unit|H_Count[10]~10_combout\,
	ena => \LCD_Data_unit|LTM_R[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Data_unit|H_Count\(7));

-- Location: LCCOMB_X50_Y26_N22
\LCD_Data_unit|H_Count[8]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|H_Count[8]~19_combout\ = (\LCD_Data_unit|H_Count\(8) & (\LCD_Data_unit|H_Count[7]~18\ $ (GND))) # (!\LCD_Data_unit|H_Count\(8) & (!\LCD_Data_unit|H_Count[7]~18\ & VCC))
-- \LCD_Data_unit|H_Count[8]~20\ = CARRY((\LCD_Data_unit|H_Count\(8) & !\LCD_Data_unit|H_Count[7]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_Data_unit|H_Count\(8),
	datad => VCC,
	cin => \LCD_Data_unit|H_Count[7]~18\,
	combout => \LCD_Data_unit|H_Count[8]~19_combout\,
	cout => \LCD_Data_unit|H_Count[8]~20\);

-- Location: LCFF_X50_Y26_N23
\LCD_Data_unit|H_Count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Data_unit|H_Count[8]~19_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	sclr => \LCD_Data_unit|H_Count[10]~10_combout\,
	ena => \LCD_Data_unit|LTM_R[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Data_unit|H_Count\(8));

-- Location: LCFF_X50_Y26_N17
\LCD_Data_unit|H_Count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Data_unit|H_Count[5]~13_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	sclr => \LCD_Data_unit|H_Count[10]~10_combout\,
	ena => \LCD_Data_unit|LTM_R[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Data_unit|H_Count\(5));

-- Location: LCCOMB_X50_Y26_N24
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

-- Location: LCFF_X50_Y26_N25
\LCD_Data_unit|H_Count[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Data_unit|H_Count[9]~21_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	sclr => \LCD_Data_unit|H_Count[10]~10_combout\,
	ena => \LCD_Data_unit|LTM_R[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Data_unit|H_Count\(9));

-- Location: LCCOMB_X50_Y26_N2
\LCD_Data_unit|H_den~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|H_den~0_combout\ = (!\LCD_Data_unit|H_Count\(8) & (!\LCD_Data_unit|H_Count\(5) & !\LCD_Data_unit|H_Count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD_Data_unit|H_Count\(8),
	datac => \LCD_Data_unit|H_Count\(5),
	datad => \LCD_Data_unit|H_Count\(9),
	combout => \LCD_Data_unit|H_den~0_combout\);

-- Location: LCCOMB_X50_Y26_N26
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

-- Location: LCFF_X50_Y26_N27
\LCD_Data_unit|H_Count[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Data_unit|H_Count[10]~23_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	sclr => \LCD_Data_unit|H_Count[10]~10_combout\,
	ena => \LCD_Data_unit|LTM_R[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Data_unit|H_Count\(10));

-- Location: LCCOMB_X50_Y26_N4
\LCD_Data_unit|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|Equal0~1_combout\ = (\LCD_Data_unit|H_Count\(6)) # ((\LCD_Data_unit|H_Count\(7)) # (!\LCD_Data_unit|H_Count\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD_Data_unit|H_Count\(6),
	datac => \LCD_Data_unit|H_Count\(7),
	datad => \LCD_Data_unit|H_Count\(10),
	combout => \LCD_Data_unit|Equal0~1_combout\);

-- Location: LCCOMB_X50_Y26_N28
\LCD_Data_unit|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|Equal0~0_combout\ = (\LCD_Data_unit|oCoord_X\(2) & (\LCD_Data_unit|H_Count\(4) & (\LCD_Data_unit|oCoord_X\(1) & \LCD_Data_unit|oCoord_X\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Data_unit|oCoord_X\(2),
	datab => \LCD_Data_unit|H_Count\(4),
	datac => \LCD_Data_unit|oCoord_X\(1),
	datad => \LCD_Data_unit|oCoord_X\(0),
	combout => \LCD_Data_unit|Equal0~0_combout\);

-- Location: LCCOMB_X50_Y26_N30
\LCD_Data_unit|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|Equal0~2_combout\ = (((\LCD_Data_unit|Equal0~1_combout\) # (!\LCD_Data_unit|Equal0~0_combout\)) # (!\LCD_Data_unit|H_den~0_combout\)) # (!\LCD_Data_unit|H_Count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Data_unit|H_Count\(3),
	datab => \LCD_Data_unit|H_den~0_combout\,
	datac => \LCD_Data_unit|Equal0~1_combout\,
	datad => \LCD_Data_unit|Equal0~0_combout\,
	combout => \LCD_Data_unit|Equal0~2_combout\);

-- Location: LCCOMB_X46_Y26_N30
\LCD_Data_unit|V_Count[6]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|V_Count[6]~13_combout\ = ((\LCD_Data_unit|LTM_NCLK~regout\ & !\LCD_Data_unit|Equal0~2_combout\)) # (!\Top_state.010~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Top_state.010~regout\,
	datac => \LCD_Data_unit|LTM_NCLK~regout\,
	datad => \LCD_Data_unit|Equal0~2_combout\,
	combout => \LCD_Data_unit|V_Count[6]~13_combout\);

-- Location: LCFF_X46_Y26_N25
\LCD_Data_unit|V_Count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Data_unit|V_Count[8]~28_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	sclr => \LCD_Data_unit|V_Count[6]~12_combout\,
	ena => \LCD_Data_unit|V_Count[6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Data_unit|V_Count\(8));

-- Location: LCCOMB_X46_Y26_N26
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

-- Location: LCFF_X46_Y26_N27
\LCD_Data_unit|V_Count[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Data_unit|V_Count[9]~30_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	sclr => \LCD_Data_unit|V_Count[6]~12_combout\,
	ena => \LCD_Data_unit|V_Count[6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Data_unit|V_Count\(9));

-- Location: LCCOMB_X46_Y26_N10
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

-- Location: LCFF_X46_Y26_N11
\LCD_Data_unit|V_Count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Data_unit|V_Count[1]~14_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	sclr => \LCD_Data_unit|V_Count[6]~12_combout\,
	ena => \LCD_Data_unit|V_Count[6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Data_unit|V_Count\(1));

-- Location: LCCOMB_X45_Y26_N28
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

-- Location: LCCOMB_X46_Y26_N2
\LCD_Data_unit|Equal3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|Equal3~2_combout\ = (((!\LCD_Data_unit|Equal3~1_combout\) # (!\LCD_Data_unit|V_Count\(9))) # (!\LCD_Data_unit|V_Count\(3))) # (!\LCD_Data_unit|V_Count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Data_unit|V_Count\(2),
	datab => \LCD_Data_unit|V_Count\(3),
	datac => \LCD_Data_unit|V_Count\(9),
	datad => \LCD_Data_unit|Equal3~1_combout\,
	combout => \LCD_Data_unit|Equal3~2_combout\);

-- Location: LCCOMB_X46_Y26_N28
\LCD_Data_unit|V_Count[6]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|V_Count[6]~12_combout\ = ((\LCD_Data_unit|Equal3~0_combout\ & (!\LCD_Data_unit|V_Count\(8) & !\LCD_Data_unit|Equal3~2_combout\))) # (!\Top_state.010~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Data_unit|Equal3~0_combout\,
	datab => \Top_state.010~regout\,
	datac => \LCD_Data_unit|V_Count\(8),
	datad => \LCD_Data_unit|Equal3~2_combout\,
	combout => \LCD_Data_unit|V_Count[6]~12_combout\);

-- Location: LCFF_X47_Y26_N9
\LCD_Data_unit|V_Count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \LCD_Data_unit|V_Count[0]~10_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	sclr => \LCD_Data_unit|V_Count[6]~12_combout\,
	sload => VCC,
	ena => \LCD_Data_unit|V_Count[6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Data_unit|V_Count\(0));

-- Location: LCCOMB_X46_Y26_N12
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

-- Location: LCFF_X46_Y26_N13
\LCD_Data_unit|V_Count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Data_unit|V_Count[2]~16_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	sclr => \LCD_Data_unit|V_Count[6]~12_combout\,
	ena => \LCD_Data_unit|V_Count[6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Data_unit|V_Count\(2));

-- Location: LCCOMB_X46_Y26_N14
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

-- Location: LCFF_X46_Y26_N15
\LCD_Data_unit|V_Count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Data_unit|V_Count[3]~18_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	sclr => \LCD_Data_unit|V_Count[6]~12_combout\,
	ena => \LCD_Data_unit|V_Count[6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Data_unit|V_Count\(3));

-- Location: LCCOMB_X46_Y26_N16
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

-- Location: LCCOMB_X46_Y26_N18
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

-- Location: LCFF_X46_Y26_N19
\LCD_Data_unit|V_Count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Data_unit|V_Count[5]~22_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	sclr => \LCD_Data_unit|V_Count[6]~12_combout\,
	ena => \LCD_Data_unit|V_Count[6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Data_unit|V_Count\(5));

-- Location: LCCOMB_X46_Y26_N20
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

-- Location: LCFF_X46_Y26_N23
\LCD_Data_unit|V_Count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Data_unit|V_Count[7]~26_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	sclr => \LCD_Data_unit|V_Count[6]~12_combout\,
	ena => \LCD_Data_unit|V_Count[6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Data_unit|V_Count\(7));

-- Location: LCFF_X46_Y26_N17
\LCD_Data_unit|V_Count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Data_unit|V_Count[4]~20_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	sclr => \LCD_Data_unit|V_Count[6]~12_combout\,
	ena => \LCD_Data_unit|V_Count[6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Data_unit|V_Count\(4));

-- Location: LCCOMB_X47_Y26_N14
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

-- Location: LCCOMB_X47_Y26_N18
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

-- Location: LCCOMB_X47_Y26_N20
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

-- Location: LCCOMB_X47_Y26_N22
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

-- Location: LCCOMB_X47_Y26_N24
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

-- Location: LCCOMB_X47_Y26_N26
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

-- Location: LCCOMB_X47_Y26_N4
\LCD_Data_unit|Equal10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|Equal10~1_combout\ = (\LCD_Data_unit|Add1~4_combout\ & (\LCD_Data_unit|Add1~6_combout\ & (\LCD_Data_unit|Add1~12_combout\ & \LCD_Data_unit|Add1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Data_unit|Add1~4_combout\,
	datab => \LCD_Data_unit|Add1~6_combout\,
	datac => \LCD_Data_unit|Add1~12_combout\,
	datad => \LCD_Data_unit|Add1~8_combout\,
	combout => \LCD_Data_unit|Equal10~1_combout\);

-- Location: LCCOMB_X47_Y26_N28
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

-- Location: LCCOMB_X47_Y26_N30
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

-- Location: LCCOMB_X47_Y26_N2
\LCD_Data_unit|Equal10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|Equal10~0_combout\ = (\LCD_Data_unit|Add1~0_combout\ & (!\LCD_Data_unit|Add1~10_combout\ & (\LCD_Data_unit|Add1~2_combout\ & !\LCD_Data_unit|Add1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Data_unit|Add1~0_combout\,
	datab => \LCD_Data_unit|Add1~10_combout\,
	datac => \LCD_Data_unit|Add1~2_combout\,
	datad => \LCD_Data_unit|Add1~18_combout\,
	combout => \LCD_Data_unit|Equal10~0_combout\);

-- Location: LCCOMB_X48_Y26_N0
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

-- Location: LCCOMB_X47_Y26_N6
\LCD_Data_unit|Equal9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|Equal9~0_combout\ = (!\LCD_Data_unit|Add1~0_combout\ & (!\LCD_Data_unit|Add1~10_combout\ & (!\LCD_Data_unit|Add1~2_combout\ & !\LCD_Data_unit|Add1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Data_unit|Add1~0_combout\,
	datab => \LCD_Data_unit|Add1~10_combout\,
	datac => \LCD_Data_unit|Add1~2_combout\,
	datad => \LCD_Data_unit|Add1~18_combout\,
	combout => \LCD_Data_unit|Equal9~0_combout\);

-- Location: LCCOMB_X48_Y26_N30
\LCD_Data_unit|Equal9~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|Equal9~2_combout\ = (\LCD_Data_unit|Equal9~1_combout\ & (!\LCD_Data_unit|Add1~14_combout\ & (\LCD_Data_unit|Equal9~0_combout\ & !\LCD_Data_unit|Add1~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Data_unit|Equal9~1_combout\,
	datab => \LCD_Data_unit|Add1~14_combout\,
	datac => \LCD_Data_unit|Equal9~0_combout\,
	datad => \LCD_Data_unit|Add1~16_combout\,
	combout => \LCD_Data_unit|Equal9~2_combout\);

-- Location: LCCOMB_X49_Y26_N12
\LCD_Data_unit|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|Add0~2_combout\ = (\LCD_Data_unit|H_Count\(4) & (!\LCD_Data_unit|Add0~1\)) # (!\LCD_Data_unit|H_Count\(4) & ((\LCD_Data_unit|Add0~1\) # (GND)))
-- \LCD_Data_unit|Add0~3\ = CARRY((!\LCD_Data_unit|Add0~1\) # (!\LCD_Data_unit|H_Count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_Data_unit|H_Count\(4),
	datad => VCC,
	cin => \LCD_Data_unit|Add0~1\,
	combout => \LCD_Data_unit|Add0~2_combout\,
	cout => \LCD_Data_unit|Add0~3\);

-- Location: LCCOMB_X49_Y26_N4
\LCD_Data_unit|Equal8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|Equal8~1_combout\ = (\LCD_Data_unit|oCoord_X\(0) & (\LCD_Data_unit|oCoord_X\(2) & (\LCD_Data_unit|oCoord_X\(1) & \LCD_Data_unit|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Data_unit|oCoord_X\(0),
	datab => \LCD_Data_unit|oCoord_X\(2),
	datac => \LCD_Data_unit|oCoord_X\(1),
	datad => \LCD_Data_unit|Add0~2_combout\,
	combout => \LCD_Data_unit|Equal8~1_combout\);

-- Location: LCCOMB_X49_Y26_N14
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

-- Location: LCCOMB_X49_Y26_N16
\LCD_Data_unit|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|Add0~6_combout\ = (\LCD_Data_unit|H_Count\(6) & (!\LCD_Data_unit|Add0~5\)) # (!\LCD_Data_unit|H_Count\(6) & ((\LCD_Data_unit|Add0~5\) # (GND)))
-- \LCD_Data_unit|Add0~7\ = CARRY((!\LCD_Data_unit|Add0~5\) # (!\LCD_Data_unit|H_Count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_Data_unit|H_Count\(6),
	datad => VCC,
	cin => \LCD_Data_unit|Add0~5\,
	combout => \LCD_Data_unit|Add0~6_combout\,
	cout => \LCD_Data_unit|Add0~7\);

-- Location: LCCOMB_X49_Y26_N18
\LCD_Data_unit|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|Add0~8_combout\ = (\LCD_Data_unit|H_Count\(7) & (\LCD_Data_unit|Add0~7\ $ (GND))) # (!\LCD_Data_unit|H_Count\(7) & (!\LCD_Data_unit|Add0~7\ & VCC))
-- \LCD_Data_unit|Add0~9\ = CARRY((\LCD_Data_unit|H_Count\(7) & !\LCD_Data_unit|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \LCD_Data_unit|H_Count\(7),
	datad => VCC,
	cin => \LCD_Data_unit|Add0~7\,
	combout => \LCD_Data_unit|Add0~8_combout\,
	cout => \LCD_Data_unit|Add0~9\);

-- Location: LCCOMB_X49_Y26_N24
\LCD_Data_unit|Equal8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|Equal8~0_combout\ = (\LCD_Data_unit|Add0~0_combout\ & (!\LCD_Data_unit|Add0~4_combout\ & (!\LCD_Data_unit|Add0~6_combout\ & !\LCD_Data_unit|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Data_unit|Add0~0_combout\,
	datab => \LCD_Data_unit|Add0~4_combout\,
	datac => \LCD_Data_unit|Add0~6_combout\,
	datad => \LCD_Data_unit|Add0~8_combout\,
	combout => \LCD_Data_unit|Equal8~0_combout\);

-- Location: LCCOMB_X49_Y26_N20
\LCD_Data_unit|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|Add0~10_combout\ = (\LCD_Data_unit|H_Count\(8) & (\LCD_Data_unit|Add0~9\ & VCC)) # (!\LCD_Data_unit|H_Count\(8) & (!\LCD_Data_unit|Add0~9\))
-- \LCD_Data_unit|Add0~11\ = CARRY((!\LCD_Data_unit|H_Count\(8) & !\LCD_Data_unit|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Data_unit|H_Count\(8),
	datad => VCC,
	cin => \LCD_Data_unit|Add0~9\,
	combout => \LCD_Data_unit|Add0~10_combout\,
	cout => \LCD_Data_unit|Add0~11\);

-- Location: LCCOMB_X49_Y26_N22
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

-- Location: LCCOMB_X49_Y26_N30
\LCD_Data_unit|Equal8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|Equal8~2_combout\ = (\LCD_Data_unit|Add0~10_combout\ & (\LCD_Data_unit|Equal8~1_combout\ & (\LCD_Data_unit|Equal8~0_combout\ & \LCD_Data_unit|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Data_unit|Add0~10_combout\,
	datab => \LCD_Data_unit|Equal8~1_combout\,
	datac => \LCD_Data_unit|Equal8~0_combout\,
	datad => \LCD_Data_unit|Add0~12_combout\,
	combout => \LCD_Data_unit|Equal8~2_combout\);

-- Location: LCFF_X46_Y26_N21
\LCD_Data_unit|V_Count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Data_unit|V_Count[6]~24_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	sclr => \LCD_Data_unit|V_Count[6]~12_combout\,
	ena => \LCD_Data_unit|V_Count[6]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Data_unit|V_Count\(6));

-- Location: LCCOMB_X46_Y26_N6
\LCD_Data_unit|Equal3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|Equal3~0_combout\ = (!\LCD_Data_unit|V_Count\(4) & (!\LCD_Data_unit|V_Count\(0) & (!\LCD_Data_unit|V_Count\(6) & !\LCD_Data_unit|V_Count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Data_unit|V_Count\(4),
	datab => \LCD_Data_unit|V_Count\(0),
	datac => \LCD_Data_unit|V_Count\(6),
	datad => \LCD_Data_unit|V_Count\(7),
	combout => \LCD_Data_unit|Equal3~0_combout\);

-- Location: LCCOMB_X46_Y26_N0
\LCD_Data_unit|V_den~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|V_den~0_combout\ = (!\LCD_Data_unit|V_Count\(8) & (!\LCD_Data_unit|V_Count\(3) & (!\LCD_Data_unit|V_Count\(2) & \LCD_Data_unit|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Data_unit|V_Count\(8),
	datab => \LCD_Data_unit|V_Count\(3),
	datac => \LCD_Data_unit|V_Count\(2),
	datad => \LCD_Data_unit|Equal3~0_combout\,
	combout => \LCD_Data_unit|V_den~0_combout\);

-- Location: LCCOMB_X45_Y26_N18
\LCD_Data_unit|V_den~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|V_den~1_combout\ = (\LCD_Data_unit|LTM_NCLK~regout\ & (\LCD_Data_unit|V_Count\(1) & (\LCD_Data_unit|V_den~0_combout\ & !\LCD_Data_unit|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Data_unit|LTM_NCLK~regout\,
	datab => \LCD_Data_unit|V_Count\(1),
	datac => \LCD_Data_unit|V_den~0_combout\,
	datad => \LCD_Data_unit|Equal0~2_combout\,
	combout => \LCD_Data_unit|V_den~1_combout\);

-- Location: LCCOMB_X45_Y26_N8
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

-- Location: LCFF_X45_Y26_N9
\LCD_Data_unit|V_den\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Data_unit|V_den~2_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	sclr => \ALT_INV_Top_state.010~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Data_unit|V_den~regout\);

-- Location: LCCOMB_X48_Y26_N4
\LCD_Data_unit|LTM_R[7]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|LTM_R[7]~0_combout\ = (\LCD_Data_unit|H_den~regout\ & (\LCD_Data_unit|V_den~regout\ & \Top_state.010~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Data_unit|H_den~regout\,
	datac => \LCD_Data_unit|V_den~regout\,
	datad => \Top_state.010~regout\,
	combout => \LCD_Data_unit|LTM_R[7]~0_combout\);

-- Location: LCCOMB_X50_Y26_N0
\LCD_Data_unit|Equal7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|Equal7~2_combout\ = (!\LCD_Data_unit|oCoord_X\(1) & !\LCD_Data_unit|oCoord_X\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LCD_Data_unit|oCoord_X\(1),
	datad => \LCD_Data_unit|oCoord_X\(2),
	combout => \LCD_Data_unit|Equal7~2_combout\);

-- Location: LCCOMB_X49_Y26_N26
\LCD_Data_unit|Equal7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|Equal7~0_combout\ = (!\LCD_Data_unit|Add0~0_combout\ & (!\LCD_Data_unit|Add0~4_combout\ & (!\LCD_Data_unit|Add0~6_combout\ & !\LCD_Data_unit|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Data_unit|Add0~0_combout\,
	datab => \LCD_Data_unit|Add0~4_combout\,
	datac => \LCD_Data_unit|Add0~6_combout\,
	datad => \LCD_Data_unit|Add0~8_combout\,
	combout => \LCD_Data_unit|Equal7~0_combout\);

-- Location: LCCOMB_X48_Y26_N2
\LCD_Data_unit|Equal7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|Equal7~1_combout\ = (!\LCD_Data_unit|oCoord_X\(0) & (!\LCD_Data_unit|Add0~2_combout\ & (!\LCD_Data_unit|Add0~10_combout\ & !\LCD_Data_unit|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Data_unit|oCoord_X\(0),
	datab => \LCD_Data_unit|Add0~2_combout\,
	datac => \LCD_Data_unit|Add0~10_combout\,
	datad => \LCD_Data_unit|Add0~12_combout\,
	combout => \LCD_Data_unit|Equal7~1_combout\);

-- Location: LCCOMB_X48_Y26_N12
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

-- Location: LCCOMB_X48_Y26_N26
\LCD_Data_unit|LTM_B~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|LTM_B~0_combout\ = (\LCD_Data_unit|Equal8~2_combout\ & (((\LCD_Data_unit|LTM_R[7]~0_combout\)))) # (!\LCD_Data_unit|Equal8~2_combout\ & ((\LCD_Data_unit|LTM_R[7]~1_combout\ & (Colourbar_Blue(0))) # (!\LCD_Data_unit|LTM_R[7]~1_combout\ & 
-- ((\LCD_Data_unit|LTM_R[7]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Colourbar_Blue(0),
	datab => \LCD_Data_unit|Equal8~2_combout\,
	datac => \LCD_Data_unit|LTM_R[7]~0_combout\,
	datad => \LCD_Data_unit|LTM_R[7]~1_combout\,
	combout => \LCD_Data_unit|LTM_B~0_combout\);

-- Location: LCCOMB_X48_Y26_N22
\LCD_Data_unit|LTM_B~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|LTM_B~1_combout\ = (\LCD_Data_unit|Equal10~2_combout\ & (\LCD_Data_unit|LTM_R[7]~0_combout\)) # (!\LCD_Data_unit|Equal10~2_combout\ & ((\LCD_Data_unit|Equal9~2_combout\ & (\LCD_Data_unit|LTM_R[7]~0_combout\)) # 
-- (!\LCD_Data_unit|Equal9~2_combout\ & ((\LCD_Data_unit|LTM_B~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Data_unit|LTM_R[7]~0_combout\,
	datab => \LCD_Data_unit|Equal10~2_combout\,
	datac => \LCD_Data_unit|Equal9~2_combout\,
	datad => \LCD_Data_unit|LTM_B~0_combout\,
	combout => \LCD_Data_unit|LTM_B~1_combout\);

-- Location: LCFF_X48_Y26_N23
\LCD_Data_unit|LTM_B[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Data_unit|LTM_B~1_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \LCD_Data_unit|LTM_R[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Data_unit|LTM_B\(7));

-- Location: LCFF_X49_Y26_N1
\LCD_Data_unit|LTM_DEN\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \LCD_Data_unit|LTM_R[7]~0_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	sload => VCC,
	ena => \LCD_Data_unit|LTM_R[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Data_unit|LTM_DEN~regout\);

-- Location: LCCOMB_X48_Y26_N10
\LCD_Data_unit|H_Count[10]~10_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|H_Count[10]~10_wirecell_combout\ = !\LCD_Data_unit|H_Count[10]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \LCD_Data_unit|H_Count[10]~10_combout\,
	combout => \LCD_Data_unit|H_Count[10]~10_wirecell_combout\);

-- Location: LCFF_X48_Y26_N11
\LCD_Data_unit|H_Sync\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Data_unit|H_Count[10]~10_wirecell_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \LCD_Data_unit|LTM_R[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Data_unit|H_Sync~regout\);

-- Location: LCCOMB_X48_Y26_N14
\LCD_Data_unit|LTM_HD~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|LTM_HD~0_combout\ = (\Top_state.010~regout\ & \LCD_Data_unit|H_Sync~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Top_state.010~regout\,
	datad => \LCD_Data_unit|H_Sync~regout\,
	combout => \LCD_Data_unit|LTM_HD~0_combout\);

-- Location: LCFF_X48_Y26_N15
\LCD_Data_unit|LTM_HD\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Data_unit|LTM_HD~0_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \LCD_Data_unit|LTM_R[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Data_unit|LTM_HD~regout\);

-- Location: LCCOMB_X45_Y26_N0
\LCD_Data_unit|V_Sync~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|V_Sync~0_combout\ = (!\LCD_Data_unit|V_Count\(9) & (\LCD_Data_unit|Equal3~1_combout\ & (\LCD_Data_unit|V_den~0_combout\ & \Top_state.010~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Data_unit|V_Count\(9),
	datab => \LCD_Data_unit|Equal3~1_combout\,
	datac => \LCD_Data_unit|V_den~0_combout\,
	datad => \Top_state.010~regout\,
	combout => \LCD_Data_unit|V_Sync~0_combout\);

-- Location: LCFF_X45_Y26_N1
\LCD_Data_unit|V_Sync\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Data_unit|V_Sync~0_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \LCD_Data_unit|LTM_R[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Data_unit|V_Sync~regout\);

-- Location: LCCOMB_X45_Y26_N4
\LCD_Data_unit|LTM_VD~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|LTM_VD~0_combout\ = (\LCD_Data_unit|V_Sync~regout\ & \Top_state.010~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD_Data_unit|V_Sync~regout\,
	datad => \Top_state.010~regout\,
	combout => \LCD_Data_unit|LTM_VD~0_combout\);

-- Location: LCFF_X45_Y26_N5
\LCD_Data_unit|LTM_VD\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Data_unit|LTM_VD~0_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \LCD_Data_unit|LTM_R[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Data_unit|LTM_VD~regout\);

-- Location: LCCOMB_X49_Y26_N0
\LCD_Data_unit|LTM_G~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|LTM_G~0_combout\ = (\LCD_Data_unit|Equal8~2_combout\ & (((\LCD_Data_unit|LTM_R[7]~0_combout\)))) # (!\LCD_Data_unit|Equal8~2_combout\ & ((\LCD_Data_unit|LTM_R[7]~1_combout\ & (Colourbar_Green(7))) # (!\LCD_Data_unit|LTM_R[7]~1_combout\ & 
-- ((\LCD_Data_unit|LTM_R[7]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Colourbar_Green(7),
	datab => \LCD_Data_unit|Equal8~2_combout\,
	datac => \LCD_Data_unit|LTM_R[7]~0_combout\,
	datad => \LCD_Data_unit|LTM_R[7]~1_combout\,
	combout => \LCD_Data_unit|LTM_G~0_combout\);

-- Location: LCCOMB_X49_Y26_N2
\LCD_Data_unit|LTM_G~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|LTM_G~1_combout\ = (\LCD_Data_unit|Equal9~2_combout\ & (\LCD_Data_unit|LTM_R[7]~0_combout\)) # (!\LCD_Data_unit|Equal9~2_combout\ & ((\LCD_Data_unit|Equal10~2_combout\ & (\LCD_Data_unit|LTM_R[7]~0_combout\)) # 
-- (!\LCD_Data_unit|Equal10~2_combout\ & ((\LCD_Data_unit|LTM_G~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Data_unit|Equal9~2_combout\,
	datab => \LCD_Data_unit|LTM_R[7]~0_combout\,
	datac => \LCD_Data_unit|Equal10~2_combout\,
	datad => \LCD_Data_unit|LTM_G~0_combout\,
	combout => \LCD_Data_unit|LTM_G~1_combout\);

-- Location: LCFF_X49_Y26_N3
\LCD_Data_unit|LTM_G[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Data_unit|LTM_G~1_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \LCD_Data_unit|LTM_R[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Data_unit|LTM_G\(7));

-- Location: LCCOMB_X49_Y26_N28
\LCD_Data_unit|LTM_R~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|LTM_R~3_combout\ = (\LCD_Data_unit|Equal8~2_combout\ & (((\LCD_Data_unit|LTM_R[7]~0_combout\)))) # (!\LCD_Data_unit|Equal8~2_combout\ & ((\LCD_Data_unit|LTM_R[7]~1_combout\ & (Colourbar_Red(7))) # (!\LCD_Data_unit|LTM_R[7]~1_combout\ & 
-- ((\LCD_Data_unit|LTM_R[7]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Colourbar_Red(7),
	datab => \LCD_Data_unit|Equal8~2_combout\,
	datac => \LCD_Data_unit|LTM_R[7]~0_combout\,
	datad => \LCD_Data_unit|LTM_R[7]~1_combout\,
	combout => \LCD_Data_unit|LTM_R~3_combout\);

-- Location: LCCOMB_X49_Y26_N8
\LCD_Data_unit|LTM_R~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Data_unit|LTM_R~4_combout\ = (\LCD_Data_unit|Equal9~2_combout\ & (\LCD_Data_unit|LTM_R[7]~0_combout\)) # (!\LCD_Data_unit|Equal9~2_combout\ & ((\LCD_Data_unit|Equal10~2_combout\ & (\LCD_Data_unit|LTM_R[7]~0_combout\)) # 
-- (!\LCD_Data_unit|Equal10~2_combout\ & ((\LCD_Data_unit|LTM_R~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Data_unit|Equal9~2_combout\,
	datab => \LCD_Data_unit|LTM_R[7]~0_combout\,
	datac => \LCD_Data_unit|Equal10~2_combout\,
	datad => \LCD_Data_unit|LTM_R~3_combout\,
	combout => \LCD_Data_unit|LTM_R~4_combout\);

-- Location: LCFF_X49_Y26_N9
\LCD_Data_unit|LTM_R[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Data_unit|LTM_R~4_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \LCD_Data_unit|LTM_R[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Data_unit|LTM_R\(7));

-- Location: LCCOMB_X43_Y24_N6
\LCD_Config_unit|I2C_unit|Equal3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_unit|Equal3~0_combout\ = (\LCD_Config_unit|I2C_unit|Equal0~0_combout\ & (!\LCD_Config_unit|I2C_unit|state_counter\(4) & \LCD_Config_unit|I2C_unit|state_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_unit|Equal0~0_combout\,
	datab => \LCD_Config_unit|I2C_unit|state_counter\(4),
	datad => \LCD_Config_unit|I2C_unit|state_counter\(1),
	combout => \LCD_Config_unit|I2C_unit|Equal3~0_combout\);

-- Location: LCCOMB_X42_Y24_N10
\LCD_Config_unit|I2C_unit|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_unit|Equal0~0_combout\ = (!\LCD_Config_unit|I2C_unit|state_counter\(2) & (!\LCD_Config_unit|I2C_unit|state_counter\(0) & !\LCD_Config_unit|I2C_unit|state_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD_Config_unit|I2C_unit|state_counter\(2),
	datac => \LCD_Config_unit|I2C_unit|state_counter\(0),
	datad => \LCD_Config_unit|I2C_unit|state_counter\(3),
	combout => \LCD_Config_unit|I2C_unit|Equal0~0_combout\);

-- Location: LCCOMB_X42_Y24_N6
\LCD_Config_unit|always1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|always1~0_combout\ = (!\LCD_Config_unit|I2C_start~regout\ & (!\LCD_Config_unit|I2C_unit|state_counter\(1) & (!\LCD_Config_unit|I2C_unit|state_counter\(4) & \LCD_Config_unit|I2C_unit|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_start~regout\,
	datab => \LCD_Config_unit|I2C_unit|state_counter\(1),
	datac => \LCD_Config_unit|I2C_unit|state_counter\(4),
	datad => \LCD_Config_unit|I2C_unit|Equal0~0_combout\,
	combout => \LCD_Config_unit|always1~0_combout\);

-- Location: LCCOMB_X43_Y24_N14
\LCD_Config_unit|I2C_start~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_start~0_combout\ = (\LCD_Config_unit|I2C_start~regout\) # (\LCD_config_start~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD_Config_unit|I2C_start~regout\,
	datad => \LCD_config_start~regout\,
	combout => \LCD_Config_unit|I2C_start~0_combout\);

-- Location: LCCOMB_X45_Y24_N18
\LCD_Config_unit|I2C_state[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_state[2]~1_combout\ = (\LCD_Config_unit|Equal0~1_combout\ & ((!\LCD_config_start~regout\))) # (!\LCD_Config_unit|Equal0~1_combout\ & (!\LCD_Config_unit|always1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD_Config_unit|Equal0~1_combout\,
	datac => \LCD_Config_unit|always1~0_combout\,
	datad => \LCD_config_start~regout\,
	combout => \LCD_Config_unit|I2C_state[2]~1_combout\);

-- Location: LCCOMB_X46_Y24_N6
\LCD_Config_unit|I2C_state[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_state[2]~3_combout\ = (\LCD_Config_unit|Add0~4_combout\ & ((\LCD_Config_unit|I2C_state[1]~0_combout\) # ((\LCD_Config_unit|I2C_state\(2) & \LCD_Config_unit|I2C_state[2]~1_combout\)))) # (!\LCD_Config_unit|Add0~4_combout\ & 
-- (((\LCD_Config_unit|I2C_state\(2) & \LCD_Config_unit|I2C_state[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|Add0~4_combout\,
	datab => \LCD_Config_unit|I2C_state[1]~0_combout\,
	datac => \LCD_Config_unit|I2C_state\(2),
	datad => \LCD_Config_unit|I2C_state[2]~1_combout\,
	combout => \LCD_Config_unit|I2C_state[2]~3_combout\);

-- Location: LCFF_X46_Y24_N7
\LCD_Config_unit|I2C_state[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|I2C_state[2]~3_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_state\(2));

-- Location: LCCOMB_X45_Y24_N28
\LCD_Config_unit|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|Equal0~0_combout\ = (!\LCD_Config_unit|I2C_state\(3) & !\LCD_Config_unit|I2C_state\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_state\(3),
	datad => \LCD_Config_unit|I2C_state\(2),
	combout => \LCD_Config_unit|Equal0~0_combout\);

-- Location: LCCOMB_X47_Y24_N2
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

-- Location: LCCOMB_X44_Y24_N18
\LCD_Config_unit|I2C_state[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_state[0]~6_combout\ = (\LCD_Config_unit|Equal0~1_combout\) # ((\LCD_Config_unit|always1~2_combout\ & \LCD_Config_unit|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD_Config_unit|Equal0~1_combout\,
	datac => \LCD_Config_unit|always1~2_combout\,
	datad => \LCD_Config_unit|Add0~0_combout\,
	combout => \LCD_Config_unit|I2C_state[0]~6_combout\);

-- Location: LCCOMB_X44_Y24_N4
\LCD_Config_unit|I2C_state[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_state[0]~7_combout\ = (\LCD_Config_unit|I2C_state[2]~1_combout\ & ((\LCD_Config_unit|I2C_state\(0)))) # (!\LCD_Config_unit|I2C_state[2]~1_combout\ & (\LCD_Config_unit|I2C_state[0]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD_Config_unit|I2C_state[0]~6_combout\,
	datac => \LCD_Config_unit|I2C_state\(0),
	datad => \LCD_Config_unit|I2C_state[2]~1_combout\,
	combout => \LCD_Config_unit|I2C_state[0]~7_combout\);

-- Location: LCFF_X44_Y24_N5
\LCD_Config_unit|I2C_state[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|I2C_state[0]~7_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_state\(0));

-- Location: LCCOMB_X47_Y24_N8
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

-- Location: LCCOMB_X46_Y24_N4
\LCD_Config_unit|I2C_state[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_state[3]~2_combout\ = (\LCD_Config_unit|I2C_state[2]~1_combout\ & ((\LCD_Config_unit|I2C_state\(3)) # ((\LCD_Config_unit|Add0~6_combout\ & \LCD_Config_unit|I2C_state[1]~0_combout\)))) # (!\LCD_Config_unit|I2C_state[2]~1_combout\ & 
-- (\LCD_Config_unit|Add0~6_combout\ & ((\LCD_Config_unit|I2C_state[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_state[2]~1_combout\,
	datab => \LCD_Config_unit|Add0~6_combout\,
	datac => \LCD_Config_unit|I2C_state\(3),
	datad => \LCD_Config_unit|I2C_state[1]~0_combout\,
	combout => \LCD_Config_unit|I2C_state[3]~2_combout\);

-- Location: LCFF_X46_Y24_N5
\LCD_Config_unit|I2C_state[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|I2C_state[3]~2_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_state\(3));

-- Location: LCCOMB_X47_Y24_N10
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

-- Location: LCCOMB_X46_Y24_N24
\LCD_Config_unit|I2C_state[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_state[4]~4_combout\ = (\LCD_Config_unit|I2C_state[2]~1_combout\ & ((\LCD_Config_unit|I2C_state\(4)) # ((\LCD_Config_unit|Add0~8_combout\ & \LCD_Config_unit|I2C_state[1]~0_combout\)))) # (!\LCD_Config_unit|I2C_state[2]~1_combout\ & 
-- (\LCD_Config_unit|Add0~8_combout\ & ((\LCD_Config_unit|I2C_state[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_state[2]~1_combout\,
	datab => \LCD_Config_unit|Add0~8_combout\,
	datac => \LCD_Config_unit|I2C_state\(4),
	datad => \LCD_Config_unit|I2C_state[1]~0_combout\,
	combout => \LCD_Config_unit|I2C_state[4]~4_combout\);

-- Location: LCFF_X46_Y24_N25
\LCD_Config_unit|I2C_state[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|I2C_state[4]~4_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_state\(4));

-- Location: LCCOMB_X45_Y24_N30
\LCD_Config_unit|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|Equal0~1_combout\ = (!\LCD_Config_unit|I2C_state\(0) & (\LCD_Config_unit|Equal0~0_combout\ & (!\LCD_Config_unit|I2C_state\(4) & !\LCD_Config_unit|I2C_state\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_state\(0),
	datab => \LCD_Config_unit|Equal0~0_combout\,
	datac => \LCD_Config_unit|I2C_state\(4),
	datad => \LCD_Config_unit|I2C_state\(1),
	combout => \LCD_Config_unit|Equal0~1_combout\);

-- Location: LCCOMB_X42_Y24_N16
\LCD_Config_unit|I2C_start~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_start~1_combout\ = (\LCD_Config_unit|Equal0~1_combout\ & (((\LCD_Config_unit|I2C_start~0_combout\)))) # (!\LCD_Config_unit|Equal0~1_combout\ & (\LCD_Config_unit|always1~0_combout\ & ((\LCD_Config_unit|always1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|always1~0_combout\,
	datab => \LCD_Config_unit|I2C_start~0_combout\,
	datac => \LCD_Config_unit|Equal0~1_combout\,
	datad => \LCD_Config_unit|always1~2_combout\,
	combout => \LCD_Config_unit|I2C_start~1_combout\);

-- Location: LCFF_X42_Y24_N17
\LCD_Config_unit|I2C_start\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|I2C_start~1_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_start~regout\);

-- Location: LCCOMB_X43_Y24_N12
\LCD_Config_unit|I2C_unit|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_unit|Equal1~0_combout\ = (\LCD_Config_unit|I2C_unit|state_counter\(3) & (!\LCD_Config_unit|I2C_unit|state_counter\(4) & (!\LCD_Config_unit|I2C_unit|state_counter\(2) & !\LCD_Config_unit|I2C_unit|state_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_unit|state_counter\(3),
	datab => \LCD_Config_unit|I2C_unit|state_counter\(4),
	datac => \LCD_Config_unit|I2C_unit|state_counter\(2),
	datad => \LCD_Config_unit|I2C_unit|state_counter\(1),
	combout => \LCD_Config_unit|I2C_unit|Equal1~0_combout\);

-- Location: LCCOMB_X43_Y24_N18
\LCD_Config_unit|I2C_unit|sdat_en~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_unit|sdat_en~1_combout\ = (\LCD_Config_unit|I2C_unit|state_counter\(3) & (!\LCD_Config_unit|I2C_unit|state_counter\(4) & (!\LCD_Config_unit|I2C_unit|state_counter\(2) & \LCD_Config_unit|I2C_unit|state_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_unit|state_counter\(3),
	datab => \LCD_Config_unit|I2C_unit|state_counter\(4),
	datac => \LCD_Config_unit|I2C_unit|state_counter\(2),
	datad => \LCD_Config_unit|I2C_unit|state_counter\(1),
	combout => \LCD_Config_unit|I2C_unit|sdat_en~1_combout\);

-- Location: LCCOMB_X44_Y24_N2
\LCD_Config_unit|I2C_unit|sdat_en~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_unit|sdat_en~0_combout\ = (\LCD_Config_unit|I2C_unit|Equal1~0_combout\ & (!\LCD_Config_unit|I2C_unit|state_counter\(0) & ((\LCD_Config_unit|I2C_unit|Equal3~0_combout\) # (\LCD_Config_unit|I2C_unit|sdat_en~regout\)))) # 
-- (!\LCD_Config_unit|I2C_unit|Equal1~0_combout\ & (((\LCD_Config_unit|I2C_unit|Equal3~0_combout\) # (\LCD_Config_unit|I2C_unit|sdat_en~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_unit|Equal1~0_combout\,
	datab => \LCD_Config_unit|I2C_unit|state_counter\(0),
	datac => \LCD_Config_unit|I2C_unit|Equal3~0_combout\,
	datad => \LCD_Config_unit|I2C_unit|sdat_en~regout\,
	combout => \LCD_Config_unit|I2C_unit|sdat_en~0_combout\);

-- Location: LCCOMB_X44_Y24_N22
\LCD_Config_unit|I2C_unit|sdat_en~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_unit|sdat_en~2_combout\ = (!\LCD_Config_unit|I2C_unit|Equal4~0_combout\ & ((\LCD_Config_unit|I2C_unit|sdat_en~0_combout\) # ((\LCD_Config_unit|I2C_unit|sdat_en~1_combout\ & !\LCD_Config_unit|I2C_unit|state_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_unit|Equal4~0_combout\,
	datab => \LCD_Config_unit|I2C_unit|sdat_en~1_combout\,
	datac => \LCD_Config_unit|I2C_unit|state_counter\(0),
	datad => \LCD_Config_unit|I2C_unit|sdat_en~0_combout\,
	combout => \LCD_Config_unit|I2C_unit|sdat_en~2_combout\);

-- Location: LCFF_X44_Y24_N23
\LCD_Config_unit|I2C_unit|sdat_en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|I2C_unit|sdat_en~2_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \LCD_Config_unit|I2C_unit|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_unit|sdat_en~regout\);

-- Location: LCCOMB_X44_Y24_N0
\LCD_Config_unit|I2C_unit|Acknowledge~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_unit|Acknowledge~0_combout\ = (((\LCD_Config_unit|I2C_unit|clock_div_prev~regout\) # (!\LCD_Config_unit|I2C_unit|sdat\(15))) # (!\LCD_Config_unit|I2C_unit|sdat_en~regout\)) # (!\LCD_Config_unit|I2C_unit|clock_div~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_unit|clock_div~regout\,
	datab => \LCD_Config_unit|I2C_unit|sdat_en~regout\,
	datac => \LCD_Config_unit|I2C_unit|clock_div_prev~regout\,
	datad => \LCD_Config_unit|I2C_unit|sdat\(15),
	combout => \LCD_Config_unit|I2C_unit|Acknowledge~0_combout\);

-- Location: LCCOMB_X43_Y24_N28
\LCD_Config_unit|I2C_unit|Acknowledge~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_unit|Acknowledge~1_combout\ = (((\LCD_Config_unit|I2C_unit|Acknowledge~0_combout\) # (\LCD_Config_unit|I2C_unit|Equal0~1_combout\)) # (!\LCD_Config_unit|I2C_unit|Equal1~0_combout\)) # (!\LCD_Config_unit|I2C_unit|state_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_unit|state_counter\(0),
	datab => \LCD_Config_unit|I2C_unit|Equal1~0_combout\,
	datac => \LCD_Config_unit|I2C_unit|Acknowledge~0_combout\,
	datad => \LCD_Config_unit|I2C_unit|Equal0~1_combout\,
	combout => \LCD_Config_unit|I2C_unit|Acknowledge~1_combout\);

-- Location: LCCOMB_X43_Y24_N24
\LCD_Config_unit|I2C_unit|Acknowledge~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_unit|Acknowledge~2_combout\ = (\LCD_Config_unit|I2C_unit|Equal0~1_combout\ & (!\LCD_Config_unit|I2C_start~regout\ & ((\LCD_Config_unit|I2C_unit|Acknowledge~regout\) # (!\LCD_Config_unit|I2C_unit|Acknowledge~1_combout\)))) # 
-- (!\LCD_Config_unit|I2C_unit|Equal0~1_combout\ & (((\LCD_Config_unit|I2C_unit|Acknowledge~regout\) # (!\LCD_Config_unit|I2C_unit|Acknowledge~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_unit|Equal0~1_combout\,
	datab => \LCD_Config_unit|I2C_start~regout\,
	datac => \LCD_Config_unit|I2C_unit|Acknowledge~regout\,
	datad => \LCD_Config_unit|I2C_unit|Acknowledge~1_combout\,
	combout => \LCD_Config_unit|I2C_unit|Acknowledge~2_combout\);

-- Location: LCFF_X43_Y24_N25
\LCD_Config_unit|I2C_unit|Acknowledge\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|I2C_unit|Acknowledge~2_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_unit|Acknowledge~regout\);

-- Location: LCCOMB_X45_Y24_N16
\LCD_Config_unit|always1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|always1~1_combout\ = (\LCD_Config_unit|I2C_state\(3)) # ((\LCD_Config_unit|I2C_state\(1)) # ((\LCD_Config_unit|I2C_state\(0)) # (!\LCD_Config_unit|I2C_state\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_state\(3),
	datab => \LCD_Config_unit|I2C_state\(1),
	datac => \LCD_Config_unit|I2C_state\(0),
	datad => \LCD_Config_unit|I2C_state\(4),
	combout => \LCD_Config_unit|always1~1_combout\);

-- Location: LCCOMB_X45_Y24_N14
\LCD_Config_unit|always1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|always1~2_combout\ = (\LCD_Config_unit|I2C_unit|Acknowledge~regout\) # ((\LCD_Config_unit|always1~1_combout\) # (!\LCD_Config_unit|I2C_state\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD_Config_unit|I2C_unit|Acknowledge~regout\,
	datac => \LCD_Config_unit|always1~1_combout\,
	datad => \LCD_Config_unit|I2C_state\(2),
	combout => \LCD_Config_unit|always1~2_combout\);

-- Location: LCCOMB_X46_Y24_N0
\LCD_Config_unit|I2C_state[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_state[1]~0_combout\ = (!\LCD_Config_unit|Equal0~1_combout\ & (\LCD_Config_unit|always1~0_combout\ & \LCD_Config_unit|always1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|Equal0~1_combout\,
	datab => \LCD_Config_unit|always1~0_combout\,
	datad => \LCD_Config_unit|always1~2_combout\,
	combout => \LCD_Config_unit|I2C_state[1]~0_combout\);

-- Location: LCCOMB_X46_Y24_N30
\LCD_Config_unit|I2C_state[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_state[1]~5_combout\ = (\LCD_Config_unit|Add0~2_combout\ & ((\LCD_Config_unit|I2C_state[1]~0_combout\) # ((\LCD_Config_unit|I2C_state\(1) & \LCD_Config_unit|I2C_state[2]~1_combout\)))) # (!\LCD_Config_unit|Add0~2_combout\ & 
-- (((\LCD_Config_unit|I2C_state\(1) & \LCD_Config_unit|I2C_state[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|Add0~2_combout\,
	datab => \LCD_Config_unit|I2C_state[1]~0_combout\,
	datac => \LCD_Config_unit|I2C_state\(1),
	datad => \LCD_Config_unit|I2C_state[2]~1_combout\,
	combout => \LCD_Config_unit|I2C_state[1]~5_combout\);

-- Location: LCFF_X46_Y24_N31
\LCD_Config_unit|I2C_state[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|I2C_state[1]~5_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_state\(1));

-- Location: LCCOMB_X45_Y24_N12
\LCD_Config_unit|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|WideOr1~0_combout\ = \LCD_Config_unit|I2C_state\(3) $ (((\LCD_Config_unit|I2C_state\(1) & (\LCD_Config_unit|I2C_state\(0) & \LCD_Config_unit|I2C_state\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_state\(3),
	datab => \LCD_Config_unit|I2C_state\(1),
	datac => \LCD_Config_unit|I2C_state\(0),
	datad => \LCD_Config_unit|I2C_state\(2),
	combout => \LCD_Config_unit|WideOr1~0_combout\);

-- Location: LCCOMB_X46_Y24_N12
\LCD_Config_unit|I2C_data~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_data~0_combout\ = (!\LCD_Config_unit|I2C_unit|Acknowledge~regout\ & (\LCD_Config_unit|always1~0_combout\ & ((\LCD_Config_unit|always1~1_combout\) # (!\LCD_Config_unit|I2C_state\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_state\(2),
	datab => \LCD_Config_unit|always1~1_combout\,
	datac => \LCD_Config_unit|I2C_unit|Acknowledge~regout\,
	datad => \LCD_Config_unit|always1~0_combout\,
	combout => \LCD_Config_unit|I2C_data~0_combout\);

-- Location: LCCOMB_X46_Y24_N14
\LCD_Config_unit|I2C_data[15]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_data[15]~1_combout\ = (\LCD_Config_unit|Equal0~1_combout\ & (\LCD_config_start~regout\)) # (!\LCD_Config_unit|Equal0~1_combout\ & ((\LCD_Config_unit|I2C_data~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|Equal0~1_combout\,
	datab => \LCD_config_start~regout\,
	datad => \LCD_Config_unit|I2C_data~0_combout\,
	combout => \LCD_Config_unit|I2C_data[15]~1_combout\);

-- Location: LCFF_X45_Y24_N13
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

-- Location: LCCOMB_X45_Y24_N8
\LCD_Config_unit|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|WideOr3~0_combout\ = (!\LCD_Config_unit|I2C_state\(3) & (!\LCD_Config_unit|I2C_state\(2) & (\LCD_Config_unit|I2C_state\(1) $ (\LCD_Config_unit|I2C_state\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_state\(3),
	datab => \LCD_Config_unit|I2C_state\(1),
	datac => \LCD_Config_unit|I2C_state\(0),
	datad => \LCD_Config_unit|I2C_state\(2),
	combout => \LCD_Config_unit|WideOr3~0_combout\);

-- Location: LCCOMB_X45_Y24_N6
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

-- Location: LCFF_X46_Y24_N15
\LCD_Config_unit|I2C_data[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \LCD_Config_unit|WideOr3~1_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	sload => VCC,
	ena => \LCD_Config_unit|I2C_data[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_data\(11));

-- Location: LCCOMB_X45_Y24_N26
\LCD_Config_unit|I2C_unit|sdat~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_unit|sdat~4_combout\ = (\LCD_Config_unit|I2C_unit|Equal3~0_combout\ & ((!\LCD_Config_unit|I2C_data\(11)))) # (!\LCD_Config_unit|I2C_unit|Equal3~0_combout\ & (\LCD_Config_unit|I2C_unit|sdat\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_unit|sdat\(10),
	datac => \LCD_Config_unit|I2C_data\(11),
	datad => \LCD_Config_unit|I2C_unit|Equal3~0_combout\,
	combout => \LCD_Config_unit|I2C_unit|sdat~4_combout\);

-- Location: LCFF_X45_Y24_N27
\LCD_Config_unit|I2C_unit|sdat[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|I2C_unit|sdat~4_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \LCD_Config_unit|I2C_unit|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_unit|sdat\(11));

-- Location: LCCOMB_X47_Y24_N0
\LCD_Config_unit|WideOr2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|WideOr2~3_combout\ = (\LCD_Config_unit|WideOr2~2_combout\ & (!\LCD_Config_unit|I2C_state\(2) & ((!\LCD_Config_unit|I2C_state\(4)) # (!\LCD_Config_unit|I2C_state\(3))))) # (!\LCD_Config_unit|WideOr2~2_combout\ & 
-- (((\LCD_Config_unit|I2C_state\(2) & !\LCD_Config_unit|I2C_state\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|WideOr2~2_combout\,
	datab => \LCD_Config_unit|I2C_state\(3),
	datac => \LCD_Config_unit|I2C_state\(2),
	datad => \LCD_Config_unit|I2C_state\(4),
	combout => \LCD_Config_unit|WideOr2~3_combout\);

-- Location: LCFF_X46_Y24_N1
\LCD_Config_unit|I2C_data[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	sdata => \LCD_Config_unit|WideOr2~3_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	sload => VCC,
	ena => \LCD_Config_unit|I2C_data[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_data\(12));

-- Location: LCCOMB_X45_Y24_N24
\LCD_Config_unit|I2C_unit|sdat~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_unit|sdat~3_combout\ = (\LCD_Config_unit|I2C_unit|Equal3~0_combout\ & ((!\LCD_Config_unit|I2C_data\(12)))) # (!\LCD_Config_unit|I2C_unit|Equal3~0_combout\ & (\LCD_Config_unit|I2C_unit|sdat\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD_Config_unit|I2C_unit|sdat\(11),
	datac => \LCD_Config_unit|I2C_data\(12),
	datad => \LCD_Config_unit|I2C_unit|Equal3~0_combout\,
	combout => \LCD_Config_unit|I2C_unit|sdat~3_combout\);

-- Location: LCFF_X45_Y24_N25
\LCD_Config_unit|I2C_unit|sdat[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|I2C_unit|sdat~3_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \LCD_Config_unit|I2C_unit|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_unit|sdat\(12));

-- Location: LCCOMB_X44_Y24_N20
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

-- Location: LCFF_X44_Y24_N21
\LCD_Config_unit|I2C_unit|sdat[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|I2C_unit|sdat~2_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \LCD_Config_unit|I2C_unit|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_unit|sdat\(13));

-- Location: LCCOMB_X44_Y24_N16
\LCD_Config_unit|I2C_unit|sdat~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_unit|sdat~1_combout\ = (\LCD_Config_unit|I2C_unit|Equal3~0_combout\ & (!\LCD_Config_unit|I2C_data\(14))) # (!\LCD_Config_unit|I2C_unit|Equal3~0_combout\ & ((\LCD_Config_unit|I2C_unit|sdat\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_data\(14),
	datab => \LCD_Config_unit|I2C_unit|Equal3~0_combout\,
	datac => \LCD_Config_unit|I2C_unit|sdat\(13),
	combout => \LCD_Config_unit|I2C_unit|sdat~1_combout\);

-- Location: LCFF_X44_Y24_N17
\LCD_Config_unit|I2C_unit|sdat[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|I2C_unit|sdat~1_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \LCD_Config_unit|I2C_unit|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_unit|sdat\(14));

-- Location: LCCOMB_X45_Y24_N0
\LCD_Config_unit|Lookup_data~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|Lookup_data~0_combout\ = (\LCD_Config_unit|I2C_state\(3) & (\LCD_Config_unit|I2C_state\(1) & (\LCD_Config_unit|I2C_state\(0) & \LCD_Config_unit|I2C_state\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_state\(3),
	datab => \LCD_Config_unit|I2C_state\(1),
	datac => \LCD_Config_unit|I2C_state\(0),
	datad => \LCD_Config_unit|I2C_state\(2),
	combout => \LCD_Config_unit|Lookup_data~0_combout\);

-- Location: LCCOMB_X45_Y24_N22
\LCD_Config_unit|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|WideOr4~0_combout\ = (!\LCD_Config_unit|I2C_state\(2) & (!\LCD_Config_unit|I2C_state\(1) & (\LCD_Config_unit|I2C_state\(4) & !\LCD_Config_unit|I2C_state\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_state\(2),
	datab => \LCD_Config_unit|I2C_state\(1),
	datac => \LCD_Config_unit|I2C_state\(4),
	datad => \LCD_Config_unit|I2C_state\(3),
	combout => \LCD_Config_unit|WideOr4~0_combout\);

-- Location: LCCOMB_X45_Y24_N2
\LCD_Config_unit|Lookup_data~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|Lookup_data~1_combout\ = (\LCD_Config_unit|I2C_state\(4) & (((!\LCD_Config_unit|I2C_state\(0) & \LCD_Config_unit|WideOr4~0_combout\)))) # (!\LCD_Config_unit|I2C_state\(4) & ((\LCD_Config_unit|Lookup_data~0_combout\) # 
-- ((!\LCD_Config_unit|I2C_state\(0) & \LCD_Config_unit|WideOr4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LCD_Config_unit|I2C_state\(4),
	datab => \LCD_Config_unit|Lookup_data~0_combout\,
	datac => \LCD_Config_unit|I2C_state\(0),
	datad => \LCD_Config_unit|WideOr4~0_combout\,
	combout => \LCD_Config_unit|Lookup_data~1_combout\);

-- Location: LCFF_X45_Y24_N3
\LCD_Config_unit|I2C_data[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|Lookup_data~1_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \LCD_Config_unit|I2C_data[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_data\(15));

-- Location: LCCOMB_X44_Y24_N12
\LCD_Config_unit|I2C_unit|sdat~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LCD_Config_unit|I2C_unit|sdat~0_combout\ = (\LCD_Config_unit|I2C_unit|Equal3~0_combout\ & ((!\LCD_Config_unit|I2C_data\(15)))) # (!\LCD_Config_unit|I2C_unit|Equal3~0_combout\ & (\LCD_Config_unit|I2C_unit|sdat\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LCD_Config_unit|I2C_unit|Equal3~0_combout\,
	datac => \LCD_Config_unit|I2C_unit|sdat\(14),
	datad => \LCD_Config_unit|I2C_data\(15),
	combout => \LCD_Config_unit|I2C_unit|sdat~0_combout\);

-- Location: LCFF_X44_Y24_N13
\LCD_Config_unit|I2C_unit|sdat[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50_I~clkctrl_outclk\,
	datain => \LCD_Config_unit|I2C_unit|sdat~0_combout\,
	aclr => \ALT_INV_SWITCH_I~combout\(17),
	ena => \LCD_Config_unit|I2C_unit|always2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LCD_Config_unit|I2C_unit|sdat\(15));

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
	padio => GPIO_0(0));

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
	padio => GPIO_0(1));

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
	padio => GPIO_0(2));

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
	open_drain_output => "true",
	operation_mode => "bidir",
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
	open_drain_output => "true",
	operation_mode => "bidir",
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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


