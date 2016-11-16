-- Copyright (C) 1991-2013 Altera Corporation
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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1.78 SJ Web Edition"

-- DATE "11/16/2016 17:43:11"

-- 
-- Device: Altera EP2C20F484C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	processador IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(7 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0);
	LEDG : OUT std_logic_vector(2 DOWNTO 0);
	LEDR : OUT std_logic_vector(7 DOWNTO 0);
	disp0 : OUT std_logic_vector(3 DOWNTO 0);
	disp1 : OUT std_logic_vector(3 DOWNTO 0);
	disp2 : OUT std_logic_vector(3 DOWNTO 0);
	disp3 : OUT std_logic_vector(3 DOWNTO 0);
	HEX0 : OUT std_logic_vector(7 DOWNTO 0);
	HEX1 : OUT std_logic_vector(7 DOWNTO 0);
	HEX2 : OUT std_logic_vector(7 DOWNTO 0);
	HEX3 : OUT std_logic_vector(7 DOWNTO 0)
	);
END processador;

-- Design Ports Information
-- KEY[0]	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[1]	=>  Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[2]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[0]	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[1]	=>  Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[2]	=>  Location: PIN_U19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[3]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[4]	=>  Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[5]	=>  Location: PIN_V19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[6]	=>  Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[7]	=>  Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp0[0]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp0[1]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp0[2]	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp0[3]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp1[0]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp1[1]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp1[2]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp1[3]	=>  Location: PIN_D22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp2[0]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp2[1]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp2[2]	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp2[3]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp3[0]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp3[1]	=>  Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp3[2]	=>  Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp3[3]	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[0]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[1]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[2]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[3]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[4]	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[5]	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[6]	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[7]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[0]	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[1]	=>  Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[2]	=>  Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[3]	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[4]	=>  Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[5]	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[6]	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[7]	=>  Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[0]	=>  Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[1]	=>  Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[2]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[3]	=>  Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[4]	=>  Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[5]	=>  Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[6]	=>  Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[7]	=>  Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[0]	=>  Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[1]	=>  Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[2]	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[3]	=>  Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[4]	=>  Location: PIN_L8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[5]	=>  Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[6]	=>  Location: PIN_D4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[7]	=>  Location: PIN_AB11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- KEY[3]	=>  Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_U11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF processador IS
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
SIGNAL ww_SW : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_disp0 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_disp1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_disp2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_disp3 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(7 DOWNTO 0);
SIGNAL \CLOCK_50~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \ulainstance|somadorinstance|Add0~1\ : std_logic;
SIGNAL \ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ : std_logic;
SIGNAL \ulainstance|somadorinstance|Add0~2_combout\ : std_logic;
SIGNAL \ulainstance|somadorinstance|Add0~3\ : std_logic;
SIGNAL \ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ : std_logic;
SIGNAL \ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \ulainstance|somadorinstance|Add0~4_combout\ : std_logic;
SIGNAL \ulainstance|somadorinstance|Add0~5\ : std_logic;
SIGNAL \ulainstance|somadorinstance|Add0~6_combout\ : std_logic;
SIGNAL \ulainstance|subtratorinstance|resultado[0]~5\ : std_logic;
SIGNAL \ulainstance|subtratorinstance|resultado[1]~6_combout\ : std_logic;
SIGNAL \ulainstance|subtratorinstance|resultado[1]~7\ : std_logic;
SIGNAL \ulainstance|subtratorinstance|resultado[2]~8_combout\ : std_logic;
SIGNAL \ulainstance|subtratorinstance|resultado[2]~9\ : std_logic;
SIGNAL \ulainstance|subtratorinstance|resultado[3]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[28]~16_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[27]~19_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[26]~21_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[25]~22_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[30]~25_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[31]~29_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[28]~17_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[27]~19_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[26]~21_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[25]~23_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[32]~25_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[31]~27_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[30]~29_combout\ : std_logic;
SIGNAL \seg7instance|Selector3~0_combout\ : std_logic;
SIGNAL \seg7instance|Selector1~0_combout\ : std_logic;
SIGNAL \seg7instance|Selector0~2_combout\ : std_logic;
SIGNAL \seg7instance|Selector0~3_combout\ : std_logic;
SIGNAL \ulainstance|multinstance|Mult0|mult_core|decoder_node[0][0]~combout\ : std_logic;
SIGNAL \ulainstance|subtratorinstance|out~0_combout\ : std_logic;
SIGNAL \ulainstance|multinstance|Mult0|mult_core|decoder_node[0][1]~combout\ : std_logic;
SIGNAL \ulainstance|multinstance|Mult0|mult_core|decoder_node[1][1]~combout\ : std_logic;
SIGNAL \ulainstance|multinstance|Mult0|mult_core|decoder_node[2][1]~combout\ : std_logic;
SIGNAL \ulainstance|subtratorinstance|Add1~0_combout\ : std_logic;
SIGNAL \ulainstance|subtratorinstance|out~1_combout\ : std_logic;
SIGNAL \ulainstance|subtratorinstance|out~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[33]~33_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[32]~34_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[33]~30_combout\ : std_logic;
SIGNAL \pc~2_combout\ : std_logic;
SIGNAL \pc~1_combout\ : std_logic;
SIGNAL \pc~0_combout\ : std_logic;
SIGNAL \LEDG[0]~reg0_regout\ : std_logic;
SIGNAL \LEDG[1]~reg0_regout\ : std_logic;
SIGNAL \LEDG[2]~reg0_regout\ : std_logic;
SIGNAL \CLOCK_50~combout\ : std_logic;
SIGNAL \CLOCK_50~clkctrl_outclk\ : std_logic;
SIGNAL \data[0]~feeder_combout\ : std_logic;
SIGNAL \draminstance|dram~0feeder_combout\ : std_logic;
SIGNAL \we_d~0_combout\ : std_logic;
SIGNAL \we_d~regout\ : std_logic;
SIGNAL \draminstance|dram~0_regout\ : std_logic;
SIGNAL \LEDR[0]~reg0_regout\ : std_logic;
SIGNAL \data[1]~feeder_combout\ : std_logic;
SIGNAL \draminstance|dram~1_regout\ : std_logic;
SIGNAL \LEDR[1]~reg0_regout\ : std_logic;
SIGNAL \data[2]~feeder_combout\ : std_logic;
SIGNAL \draminstance|dram~2feeder_combout\ : std_logic;
SIGNAL \draminstance|dram~2_regout\ : std_logic;
SIGNAL \LEDR[2]~reg0_regout\ : std_logic;
SIGNAL \draminstance|dram~3_regout\ : std_logic;
SIGNAL \LEDR[3]~reg0_regout\ : std_logic;
SIGNAL \data[4]~feeder_combout\ : std_logic;
SIGNAL \draminstance|dram~4feeder_combout\ : std_logic;
SIGNAL \draminstance|dram~4_regout\ : std_logic;
SIGNAL \LEDR[4]~reg0_regout\ : std_logic;
SIGNAL \data[5]~feeder_combout\ : std_logic;
SIGNAL \draminstance|dram~5_regout\ : std_logic;
SIGNAL \LEDR[5]~reg0feeder_combout\ : std_logic;
SIGNAL \LEDR[5]~reg0_regout\ : std_logic;
SIGNAL \data[6]~feeder_combout\ : std_logic;
SIGNAL \draminstance|dram~6_regout\ : std_logic;
SIGNAL \LEDR[6]~reg0_regout\ : std_logic;
SIGNAL \data[7]~feeder_combout\ : std_logic;
SIGNAL \draminstance|dram~7feeder_combout\ : std_logic;
SIGNAL \draminstance|dram~7_regout\ : std_logic;
SIGNAL \LEDR[7]~reg0_regout\ : std_logic;
SIGNAL \ulainstance|subtratorinstance|resultado[0]~4_combout\ : std_logic;
SIGNAL \ulainstance|Mux8~7_combout\ : std_logic;
SIGNAL \ulainstance|somadorinstance|Add0~0_combout\ : std_logic;
SIGNAL \ulainstance|Mux8~6_combout\ : std_logic;
SIGNAL \ulainstance|Mux8~4_combout\ : std_logic;
SIGNAL \ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[5]~0_combout\ : std_logic;
SIGNAL \ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[5]~1_combout\ : std_logic;
SIGNAL \ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[5]~2_combout\ : std_logic;
SIGNAL \ulainstance|divinstance|Div0|auto_generated|divider|divider|selnose[5]~0_combout\ : std_logic;
SIGNAL \ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[4]~3_combout\ : std_logic;
SIGNAL \ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ : std_logic;
SIGNAL \ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ : std_logic;
SIGNAL \ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ : std_logic;
SIGNAL \ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ : std_logic;
SIGNAL \ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ : std_logic;
SIGNAL \ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[10]~4_combout\ : std_logic;
SIGNAL \ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[9]~5_combout\ : std_logic;
SIGNAL \ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ : std_logic;
SIGNAL \ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[8]~6_combout\ : std_logic;
SIGNAL \ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\ : std_logic;
SIGNAL \ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\ : std_logic;
SIGNAL \ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\ : std_logic;
SIGNAL \ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\ : std_logic;
SIGNAL \ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ : std_logic;
SIGNAL \ulainstance|Mux8~9_combout\ : std_logic;
SIGNAL \ulainstance|Mux8~5_combout\ : std_logic;
SIGNAL \ulainstance|Mux8~8_combout\ : std_logic;
SIGNAL \disp0[0]~reg0_regout\ : std_logic;
SIGNAL \ulainstance|multinstance|Mult0|mult_core|decoder_node[1][0]~combout\ : std_logic;
SIGNAL \ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \ulainstance|subtratorinstance|Equal0~0_combout\ : std_logic;
SIGNAL \ulainstance|out_ula[2]~1_combout\ : std_logic;
SIGNAL \ulainstance|out_ula[2]~2_combout\ : std_logic;
SIGNAL \ulainstance|Mux5~0_combout\ : std_logic;
SIGNAL \ulainstance|out_ula[2]~0_combout\ : std_logic;
SIGNAL \ulainstance|Mux7~0_combout\ : std_logic;
SIGNAL \ulainstance|Mux7~1_combout\ : std_logic;
SIGNAL \ulainstance|Mux7~2_combout\ : std_logic;
SIGNAL \ulainstance|Mux7~3_combout\ : std_logic;
SIGNAL \ulainstance|multinstance|Mult0|mult_core|decoder_node[2][2]~combout\ : std_logic;
SIGNAL \ulainstance|multinstance|Mult0|mult_core|decoder_node[1][2]~combout\ : std_logic;
SIGNAL \ulainstance|multinstance|Mult0|mult_core|decoder_node[0][2]~combout\ : std_logic;
SIGNAL \ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ : std_logic;
SIGNAL \ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ : std_logic;
SIGNAL \ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \ulainstance|multinstance|Mult0|mult_core|decoder_node[2][0]~combout\ : std_logic;
SIGNAL \ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\ : std_logic;
SIGNAL \ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\ : std_logic;
SIGNAL \ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \ulainstance|Mux4~2_combout\ : std_logic;
SIGNAL \ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \ulainstance|Mux5~1_combout\ : std_logic;
SIGNAL \ulainstance|Mux5~2_combout\ : std_logic;
SIGNAL \ulainstance|Mux5~3_combout\ : std_logic;
SIGNAL \ulainstance|Mux5~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[28]~17_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[27]~18_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[26]~20_combout\ : std_logic;
SIGNAL \ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \ulainstance|divinstance|Div0|auto_generated|divider|divider|selnose[5]~1_combout\ : std_logic;
SIGNAL \ulainstance|Mux6~0_combout\ : std_logic;
SIGNAL \ulainstance|Mux6~1_combout\ : std_logic;
SIGNAL \ulainstance|Mux6~2_combout\ : std_logic;
SIGNAL \ulainstance|Mux6~3_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[25]~23_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[30]~24_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[33]~26_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[32]~27_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[31]~28_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[36]~30_combout\ : std_logic;
SIGNAL \disp0[1]~reg0_regout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[37]~31_combout\ : std_logic;
SIGNAL \disp0[2]~reg0_regout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[38]~32_combout\ : std_logic;
SIGNAL \disp0[3]~reg0_regout\ : std_logic;
SIGNAL \ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\ : std_logic;
SIGNAL \ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \ulainstance|Mux3~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[28]~16_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[27]~18_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[26]~20_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[25]~22_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[33]~24_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[32]~31_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[31]~26_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[30]~28_combout\ : std_logic;
SIGNAL \disp1[0]~2_cout\ : std_logic;
SIGNAL \disp1[0]~4_cout\ : std_logic;
SIGNAL \disp1[0]~6_cout\ : std_logic;
SIGNAL \disp1[0]~8_cout\ : std_logic;
SIGNAL \disp1[0]~9_combout\ : std_logic;
SIGNAL \disp1[0]~reg0_regout\ : std_logic;
SIGNAL \disp1[1]~11_combout\ : std_logic;
SIGNAL \disp1[1]~reg0_regout\ : std_logic;
SIGNAL \disp1[2]~12_combout\ : std_logic;
SIGNAL \disp1[2]~reg0_regout\ : std_logic;
SIGNAL \disp2[0]~reg0_regout\ : std_logic;
SIGNAL \disp2[1]~reg0_regout\ : std_logic;
SIGNAL \disp2[2]~reg0_regout\ : std_logic;
SIGNAL \disp2[3]~reg0_regout\ : std_logic;
SIGNAL \disp3[0]~reg0_regout\ : std_logic;
SIGNAL \disp3[1]~reg0_regout\ : std_logic;
SIGNAL \disp3[2]~reg0_regout\ : std_logic;
SIGNAL \disp3[3]~reg0_regout\ : std_logic;
SIGNAL \seg7instance|display_state.10~feeder_combout\ : std_logic;
SIGNAL \seg7instance|display_state.10~regout\ : std_logic;
SIGNAL \seg7instance|display_state.11~regout\ : std_logic;
SIGNAL \seg7instance|display_state.00~0_combout\ : std_logic;
SIGNAL \seg7instance|display_state.00~regout\ : std_logic;
SIGNAL \seg7instance|display_state.01~0_combout\ : std_logic;
SIGNAL \seg7instance|display_state.01~regout\ : std_logic;
SIGNAL \seg7instance|Selector0~0_combout\ : std_logic;
SIGNAL \seg7instance|Selector3~1_combout\ : std_logic;
SIGNAL \seg7instance|Selector0~1_combout\ : std_logic;
SIGNAL \seg7instance|Selector2~0_combout\ : std_logic;
SIGNAL \seg7instance|Selector2~1_combout\ : std_logic;
SIGNAL \seg7instance|Selector1~1_combout\ : std_logic;
SIGNAL \seg7instance|WideOr6~0_combout\ : std_logic;
SIGNAL \seg7instance|hex_out0[0]~feeder_combout\ : std_logic;
SIGNAL \seg7instance|WideOr5~0_combout\ : std_logic;
SIGNAL \seg7instance|hex_out0[1]~feeder_combout\ : std_logic;
SIGNAL \seg7instance|WideOr4~0_combout\ : std_logic;
SIGNAL \seg7instance|hex_out0[2]~feeder_combout\ : std_logic;
SIGNAL \seg7instance|WideOr3~0_combout\ : std_logic;
SIGNAL \seg7instance|WideOr2~0_combout\ : std_logic;
SIGNAL \seg7instance|WideOr1~0_combout\ : std_logic;
SIGNAL \seg7instance|WideOr0~0_combout\ : std_logic;
SIGNAL \seg7instance|hex_out1~0_combout\ : std_logic;
SIGNAL \seg7instance|hex_out1~1_combout\ : std_logic;
SIGNAL \seg7instance|hex_out1~2_combout\ : std_logic;
SIGNAL \ulainstance|subtratorinstance|Equal0~1_combout\ : std_logic;
SIGNAL \ulainstance|subtratorinstance|s~regout\ : std_logic;
SIGNAL \seg7instance|hex_out1~3_combout\ : std_logic;
SIGNAL \seg7instance|hex_out1~4_combout\ : std_logic;
SIGNAL \seg7instance|hex_out1~5_combout\ : std_logic;
SIGNAL \seg7instance|hex_out1~6_combout\ : std_logic;
SIGNAL \seg7instance|hex_out2[0]~feeder_combout\ : std_logic;
SIGNAL \seg7instance|hex_out2[1]~feeder_combout\ : std_logic;
SIGNAL \seg7instance|hex_out2[2]~feeder_combout\ : std_logic;
SIGNAL \seg7instance|hex_out2[4]~feeder_combout\ : std_logic;
SIGNAL \seg7instance|hex_out3[5]~feeder_combout\ : std_logic;
SIGNAL \ulainstance|divinstance|Div0|auto_generated|divider|divider|selnose\ : std_logic_vector(19 DOWNTO 0);
SIGNAL pc : std_logic_vector(2 DOWNTO 0);
SIGNAL opcode : std_logic_vector(3 DOWNTO 0);
SIGNAL data : std_logic_vector(8 DOWNTO 0);
SIGNAL \ulainstance|out_ula\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ulainstance|subtratorinstance|resultado\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ulainstance|subtratorinstance|out\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ulainstance|op_xorinstance|out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \seg7instance|hex_out3\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \seg7instance|hex_out2\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \seg7instance|hex_out1\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \seg7instance|hex_out0\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \SW~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \KEY~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_KEY~combout\ : std_logic_vector(3 DOWNTO 2);
SIGNAL \seg7instance|ALT_INV_display_state.00~regout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
ww_KEY <= KEY;
LEDG <= ww_LEDG;
LEDR <= ww_LEDR;
disp0 <= ww_disp0;
disp1 <= ww_disp1;
disp2 <= ww_disp2;
disp3 <= ww_disp3;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLOCK_50~combout\);
\ALT_INV_KEY~combout\(2) <= NOT \KEY~combout\(2);
\ALT_INV_KEY~combout\(3) <= NOT \KEY~combout\(3);
\seg7instance|ALT_INV_display_state.00~regout\ <= NOT \seg7instance|display_state.00~regout\;

-- Location: LCCOMB_X23_Y15_N6
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = \ulainstance|out_ula\(3) $ (VCC)
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY(\ulainstance|out_ula\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ulainstance|out_ula\(3),
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X23_Y15_N8
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\ulainstance|out_ula\(4) & (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & VCC)) # (!\ulainstance|out_ula\(4) & 
-- (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\ulainstance|out_ula\(4) & !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ulainstance|out_ula\(4),
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X22_Y15_N20
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[25]~22_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[25]~23_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[25]~22_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[25]~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[25]~22_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[25]~23_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X24_Y15_N0
\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = \ulainstance|out_ula\(3) $ (VCC)
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY(\ulainstance|out_ula\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ulainstance|out_ula\(3),
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X24_Y15_N2
\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\ulainstance|out_ula\(4) & (\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & VCC)) # (!\ulainstance|out_ula\(4) & 
-- (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\))
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\ulainstance|out_ula\(4) & !\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ulainstance|out_ula\(4),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X24_Y15_N4
\Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\ulainstance|out_ula\(5) & (\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ $ (GND))) # (!\ulainstance|out_ula\(5) & 
-- (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & VCC))
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((\ulainstance|out_ula\(5) & !\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ulainstance|out_ula\(5),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X25_Y15_N8
\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\Div0|auto_generated|divider|divider|StageOut[25]~23_combout\) # (\Div0|auto_generated|divider|divider|StageOut[25]~22_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[25]~23_combout\) # (\Div0|auto_generated|divider|divider|StageOut[25]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[25]~23_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[25]~22_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X25_Y15_N10
\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\Div0|auto_generated|divider|divider|StageOut[26]~21_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[26]~20_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\Div0|auto_generated|divider|divider|StageOut[26]~21_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[26]~20_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[26]~21_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[26]~20_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[26]~21_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[26]~20_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X24_Y16_N8
\ulainstance|somadorinstance|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|somadorinstance|Add0~0_combout\ = (\draminstance|dram~0_regout\ & (\draminstance|dram~4_regout\ $ (VCC))) # (!\draminstance|dram~0_regout\ & (\draminstance|dram~4_regout\ & VCC))
-- \ulainstance|somadorinstance|Add0~1\ = CARRY((\draminstance|dram~0_regout\ & \draminstance|dram~4_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \draminstance|dram~0_regout\,
	datab => \draminstance|dram~4_regout\,
	datad => VCC,
	combout => \ulainstance|somadorinstance|Add0~0_combout\,
	cout => \ulainstance|somadorinstance|Add0~1\);

-- Location: LCCOMB_X23_Y14_N20
\ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ = (\draminstance|dram~5_regout\ & ((\ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[4]~3_combout\ & 
-- (!\ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)) # (!\ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[4]~3_combout\ & 
-- ((\ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\) # (GND))))) # (!\draminstance|dram~5_regout\ & ((\ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[4]~3_combout\ & 
-- (\ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ & VCC)) # (!\ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[4]~3_combout\ & 
-- (!\ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\))))
-- \ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ = CARRY((\draminstance|dram~5_regout\ & ((!\ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\) # 
-- (!\ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[4]~3_combout\))) # (!\draminstance|dram~5_regout\ & (!\ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[4]~3_combout\ & 
-- !\ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \draminstance|dram~5_regout\,
	datab => \ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[4]~3_combout\,
	datad => VCC,
	cin => \ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\,
	combout => \ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	cout => \ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\);

-- Location: LCCOMB_X24_Y16_N10
\ulainstance|somadorinstance|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|somadorinstance|Add0~2_combout\ = (\draminstance|dram~5_regout\ & ((\draminstance|dram~1_regout\ & (\ulainstance|somadorinstance|Add0~1\ & VCC)) # (!\draminstance|dram~1_regout\ & (!\ulainstance|somadorinstance|Add0~1\)))) # 
-- (!\draminstance|dram~5_regout\ & ((\draminstance|dram~1_regout\ & (!\ulainstance|somadorinstance|Add0~1\)) # (!\draminstance|dram~1_regout\ & ((\ulainstance|somadorinstance|Add0~1\) # (GND)))))
-- \ulainstance|somadorinstance|Add0~3\ = CARRY((\draminstance|dram~5_regout\ & (!\draminstance|dram~1_regout\ & !\ulainstance|somadorinstance|Add0~1\)) # (!\draminstance|dram~5_regout\ & ((!\ulainstance|somadorinstance|Add0~1\) # 
-- (!\draminstance|dram~1_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \draminstance|dram~5_regout\,
	datab => \draminstance|dram~1_regout\,
	datad => VCC,
	cin => \ulainstance|somadorinstance|Add0~1\,
	combout => \ulainstance|somadorinstance|Add0~2_combout\,
	cout => \ulainstance|somadorinstance|Add0~3\);

-- Location: LCCOMB_X24_Y16_N24
\ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ = (\ulainstance|multinstance|Mult0|mult_core|decoder_node[1][1]~combout\ & ((\ulainstance|multinstance|Mult0|mult_core|decoder_node[0][2]~combout\ & 
-- (\ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ & VCC)) # (!\ulainstance|multinstance|Mult0|mult_core|decoder_node[0][2]~combout\ & (!\ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)))) # 
-- (!\ulainstance|multinstance|Mult0|mult_core|decoder_node[1][1]~combout\ & ((\ulainstance|multinstance|Mult0|mult_core|decoder_node[0][2]~combout\ & (!\ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)) # 
-- (!\ulainstance|multinstance|Mult0|mult_core|decoder_node[0][2]~combout\ & ((\ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\) # (GND)))))
-- \ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ = CARRY((\ulainstance|multinstance|Mult0|mult_core|decoder_node[1][1]~combout\ & (!\ulainstance|multinstance|Mult0|mult_core|decoder_node[0][2]~combout\ & 
-- !\ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)) # (!\ulainstance|multinstance|Mult0|mult_core|decoder_node[1][1]~combout\ & ((!\ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\) # 
-- (!\ulainstance|multinstance|Mult0|mult_core|decoder_node[0][2]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ulainstance|multinstance|Mult0|mult_core|decoder_node[1][1]~combout\,
	datab => \ulainstance|multinstance|Mult0|mult_core|decoder_node[0][2]~combout\,
	datad => VCC,
	cin => \ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\,
	combout => \ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	cout => \ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\);

-- Location: LCCOMB_X24_Y16_N26
\ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ = (\ulainstance|multinstance|Mult0|mult_core|decoder_node[1][2]~combout\ & (\ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ $ (GND))) 
-- # (!\ulainstance|multinstance|Mult0|mult_core|decoder_node[1][2]~combout\ & (!\ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ & VCC))
-- \ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ = CARRY((\ulainstance|multinstance|Mult0|mult_core|decoder_node[1][2]~combout\ & !\ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ulainstance|multinstance|Mult0|mult_core|decoder_node[1][2]~combout\,
	datad => VCC,
	cin => \ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\,
	combout => \ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	cout => \ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\);

-- Location: LCCOMB_X24_Y16_N28
\ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ = \ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\,
	combout => \ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\);

-- Location: LCCOMB_X24_Y16_N12
\ulainstance|somadorinstance|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|somadorinstance|Add0~4_combout\ = ((\draminstance|dram~2_regout\ $ (\draminstance|dram~6_regout\ $ (!\ulainstance|somadorinstance|Add0~3\)))) # (GND)
-- \ulainstance|somadorinstance|Add0~5\ = CARRY((\draminstance|dram~2_regout\ & ((\draminstance|dram~6_regout\) # (!\ulainstance|somadorinstance|Add0~3\))) # (!\draminstance|dram~2_regout\ & (\draminstance|dram~6_regout\ & 
-- !\ulainstance|somadorinstance|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \draminstance|dram~2_regout\,
	datab => \draminstance|dram~6_regout\,
	datad => VCC,
	cin => \ulainstance|somadorinstance|Add0~3\,
	combout => \ulainstance|somadorinstance|Add0~4_combout\,
	cout => \ulainstance|somadorinstance|Add0~5\);

-- Location: LCCOMB_X24_Y16_N14
\ulainstance|somadorinstance|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|somadorinstance|Add0~6_combout\ = \draminstance|dram~3_regout\ $ (\ulainstance|somadorinstance|Add0~5\ $ (\draminstance|dram~7_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \draminstance|dram~3_regout\,
	datad => \draminstance|dram~7_regout\,
	cin => \ulainstance|somadorinstance|Add0~5\,
	combout => \ulainstance|somadorinstance|Add0~6_combout\);

-- Location: LCFF_X22_Y16_N27
\ulainstance|subtratorinstance|resultado[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ulainstance|subtratorinstance|resultado[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ulainstance|subtratorinstance|resultado\(1));

-- Location: LCFF_X22_Y16_N29
\ulainstance|subtratorinstance|resultado[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ulainstance|subtratorinstance|resultado[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ulainstance|subtratorinstance|resultado\(2));

-- Location: LCFF_X22_Y16_N31
\ulainstance|subtratorinstance|resultado[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ulainstance|subtratorinstance|resultado[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ulainstance|subtratorinstance|resultado\(3));

-- Location: LCCOMB_X22_Y16_N24
\ulainstance|subtratorinstance|resultado[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|subtratorinstance|resultado[0]~4_combout\ = (\draminstance|dram~4_regout\ & (\draminstance|dram~0_regout\ $ (VCC))) # (!\draminstance|dram~4_regout\ & ((\draminstance|dram~0_regout\) # (GND)))
-- \ulainstance|subtratorinstance|resultado[0]~5\ = CARRY((\draminstance|dram~0_regout\) # (!\draminstance|dram~4_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \draminstance|dram~4_regout\,
	datab => \draminstance|dram~0_regout\,
	datad => VCC,
	combout => \ulainstance|subtratorinstance|resultado[0]~4_combout\,
	cout => \ulainstance|subtratorinstance|resultado[0]~5\);

-- Location: LCCOMB_X22_Y16_N26
\ulainstance|subtratorinstance|resultado[1]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|subtratorinstance|resultado[1]~6_combout\ = (\draminstance|dram~1_regout\ & ((\draminstance|dram~5_regout\ & (!\ulainstance|subtratorinstance|resultado[0]~5\)) # (!\draminstance|dram~5_regout\ & (\ulainstance|subtratorinstance|resultado[0]~5\ 
-- & VCC)))) # (!\draminstance|dram~1_regout\ & ((\draminstance|dram~5_regout\ & ((\ulainstance|subtratorinstance|resultado[0]~5\) # (GND))) # (!\draminstance|dram~5_regout\ & (!\ulainstance|subtratorinstance|resultado[0]~5\))))
-- \ulainstance|subtratorinstance|resultado[1]~7\ = CARRY((\draminstance|dram~1_regout\ & (\draminstance|dram~5_regout\ & !\ulainstance|subtratorinstance|resultado[0]~5\)) # (!\draminstance|dram~1_regout\ & ((\draminstance|dram~5_regout\) # 
-- (!\ulainstance|subtratorinstance|resultado[0]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \draminstance|dram~1_regout\,
	datab => \draminstance|dram~5_regout\,
	datad => VCC,
	cin => \ulainstance|subtratorinstance|resultado[0]~5\,
	combout => \ulainstance|subtratorinstance|resultado[1]~6_combout\,
	cout => \ulainstance|subtratorinstance|resultado[1]~7\);

-- Location: LCCOMB_X22_Y16_N28
\ulainstance|subtratorinstance|resultado[2]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|subtratorinstance|resultado[2]~8_combout\ = ((\draminstance|dram~2_regout\ $ (\draminstance|dram~6_regout\ $ (\ulainstance|subtratorinstance|resultado[1]~7\)))) # (GND)
-- \ulainstance|subtratorinstance|resultado[2]~9\ = CARRY((\draminstance|dram~2_regout\ & ((!\ulainstance|subtratorinstance|resultado[1]~7\) # (!\draminstance|dram~6_regout\))) # (!\draminstance|dram~2_regout\ & (!\draminstance|dram~6_regout\ & 
-- !\ulainstance|subtratorinstance|resultado[1]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \draminstance|dram~2_regout\,
	datab => \draminstance|dram~6_regout\,
	datad => VCC,
	cin => \ulainstance|subtratorinstance|resultado[1]~7\,
	combout => \ulainstance|subtratorinstance|resultado[2]~8_combout\,
	cout => \ulainstance|subtratorinstance|resultado[2]~9\);

-- Location: LCCOMB_X22_Y16_N30
\ulainstance|subtratorinstance|resultado[3]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|subtratorinstance|resultado[3]~10_combout\ = \draminstance|dram~7_regout\ $ (\ulainstance|subtratorinstance|resultado[2]~9\ $ (!\draminstance|dram~3_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \draminstance|dram~7_regout\,
	datad => \draminstance|dram~3_regout\,
	cin => \ulainstance|subtratorinstance|resultado[2]~9\,
	combout => \ulainstance|subtratorinstance|resultado[3]~10_combout\);

-- Location: LCCOMB_X22_Y15_N12
\Mod0|auto_generated|divider|divider|StageOut[28]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[28]~16_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \ulainstance|out_ula\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \ulainstance|out_ula\(5),
	combout => \Mod0|auto_generated|divider|divider|StageOut[28]~16_combout\);

-- Location: LCCOMB_X23_Y15_N16
\Mod0|auto_generated|divider|divider|StageOut[27]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[27]~19_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[27]~19_combout\);

-- Location: LCCOMB_X22_Y15_N10
\Mod0|auto_generated|divider|divider|StageOut[26]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[26]~21_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[26]~21_combout\);

-- Location: LCCOMB_X22_Y15_N16
\Mod0|auto_generated|divider|divider|StageOut[25]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[25]~22_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \ulainstance|out_ula\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \ulainstance|out_ula\(2),
	combout => \Mod0|auto_generated|divider|divider|StageOut[25]~22_combout\);

-- Location: LCCOMB_X21_Y15_N12
\Mod0|auto_generated|divider|divider|StageOut[30]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[30]~25_combout\ = (\ulainstance|out_ula\(1) & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ulainstance|out_ula\(1),
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[30]~25_combout\);

-- Location: LCCOMB_X22_Y15_N4
\Mod0|auto_generated|divider|divider|StageOut[31]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[31]~29_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[31]~29_combout\);

-- Location: LCCOMB_X24_Y15_N20
\Div0|auto_generated|divider|divider|StageOut[28]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[28]~17_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[28]~17_combout\);

-- Location: LCCOMB_X24_Y15_N14
\Div0|auto_generated|divider|divider|StageOut[27]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[27]~19_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[27]~19_combout\);

-- Location: LCCOMB_X25_Y15_N6
\Div0|auto_generated|divider|divider|StageOut[26]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[26]~21_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[26]~21_combout\);

-- Location: LCCOMB_X24_Y15_N12
\Div0|auto_generated|divider|divider|StageOut[25]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[25]~23_combout\ = (\ulainstance|out_ula\(2) & !\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ulainstance|out_ula\(2),
	datac => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[25]~23_combout\);

-- Location: LCCOMB_X25_Y15_N30
\Div0|auto_generated|divider|divider|StageOut[32]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[32]~25_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[32]~25_combout\);

-- Location: LCCOMB_X25_Y15_N2
\Div0|auto_generated|divider|divider|StageOut[31]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[31]~27_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[31]~27_combout\);

-- Location: LCCOMB_X26_Y15_N12
\Div0|auto_generated|divider|divider|StageOut[30]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[30]~29_combout\ = (\ulainstance|out_ula\(1) & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ulainstance|out_ula\(1),
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[30]~29_combout\);

-- Location: LCCOMB_X22_Y20_N24
\seg7instance|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|Selector3~0_combout\ = (\seg7instance|Selector0~0_combout\ & (\seg7instance|Selector0~1_combout\)) # (!\seg7instance|Selector0~0_combout\ & ((\seg7instance|Selector0~1_combout\ & ((\disp2[0]~reg0_regout\))) # 
-- (!\seg7instance|Selector0~1_combout\ & (\disp0[0]~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg7instance|Selector0~0_combout\,
	datab => \seg7instance|Selector0~1_combout\,
	datac => \disp0[0]~reg0_regout\,
	datad => \disp2[0]~reg0_regout\,
	combout => \seg7instance|Selector3~0_combout\);

-- Location: LCCOMB_X22_Y20_N20
\seg7instance|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|Selector1~0_combout\ = (\seg7instance|Selector0~0_combout\ & (\seg7instance|Selector0~1_combout\)) # (!\seg7instance|Selector0~0_combout\ & ((\seg7instance|Selector0~1_combout\ & (\disp2[2]~reg0_regout\)) # 
-- (!\seg7instance|Selector0~1_combout\ & ((\disp0[2]~reg0_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg7instance|Selector0~0_combout\,
	datab => \seg7instance|Selector0~1_combout\,
	datac => \disp2[2]~reg0_regout\,
	datad => \disp0[2]~reg0_regout\,
	combout => \seg7instance|Selector1~0_combout\);

-- Location: LCCOMB_X22_Y20_N28
\seg7instance|Selector0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|Selector0~2_combout\ = (\seg7instance|display_state.10~regout\ & (!\seg7instance|display_state.01~regout\ & (\disp0[3]~reg0_regout\ & \seg7instance|display_state.11~regout\))) # (!\seg7instance|display_state.10~regout\ & 
-- ((\seg7instance|display_state.11~regout\) # ((!\seg7instance|display_state.01~regout\ & \disp0[3]~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg7instance|display_state.10~regout\,
	datab => \seg7instance|display_state.01~regout\,
	datac => \disp0[3]~reg0_regout\,
	datad => \seg7instance|display_state.11~regout\,
	combout => \seg7instance|Selector0~2_combout\);

-- Location: LCCOMB_X22_Y20_N30
\seg7instance|Selector0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|Selector0~3_combout\ = (\seg7instance|Selector0~1_combout\ & ((\seg7instance|Selector0~2_combout\ & ((\disp3[3]~reg0_regout\))) # (!\seg7instance|Selector0~2_combout\ & (\disp2[3]~reg0_regout\)))) # (!\seg7instance|Selector0~1_combout\ & 
-- (((\seg7instance|Selector0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp2[3]~reg0_regout\,
	datab => \seg7instance|Selector0~1_combout\,
	datac => \disp3[3]~reg0_regout\,
	datad => \seg7instance|Selector0~2_combout\,
	combout => \seg7instance|Selector0~3_combout\);

-- Location: LCFF_X22_Y16_N13
\ulainstance|subtratorinstance|out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ulainstance|subtratorinstance|out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ulainstance|subtratorinstance|out\(1));

-- Location: LCCOMB_X22_Y16_N14
\ulainstance|op_xorinstance|out[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|op_xorinstance|out\(1) = \draminstance|dram~1_regout\ $ (\draminstance|dram~5_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \draminstance|dram~1_regout\,
	datad => \draminstance|dram~5_regout\,
	combout => \ulainstance|op_xorinstance|out\(1));

-- Location: LCFF_X22_Y16_N17
\ulainstance|subtratorinstance|out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ulainstance|subtratorinstance|out~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ulainstance|subtratorinstance|out\(3));

-- Location: LCFF_X22_Y16_N7
\ulainstance|subtratorinstance|out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ulainstance|subtratorinstance|out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ulainstance|subtratorinstance|out\(2));

-- Location: LCCOMB_X22_Y16_N20
\ulainstance|op_xorinstance|out[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|op_xorinstance|out\(2) = \draminstance|dram~2_regout\ $ (\draminstance|dram~6_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \draminstance|dram~2_regout\,
	datad => \draminstance|dram~6_regout\,
	combout => \ulainstance|op_xorinstance|out\(2));

-- Location: LCCOMB_X24_Y14_N6
\ulainstance|multinstance|Mult0|mult_core|decoder_node[0][0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|multinstance|Mult0|mult_core|decoder_node[0][0]~combout\ = (\draminstance|dram~4_regout\ & \draminstance|dram~0_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \draminstance|dram~4_regout\,
	datad => \draminstance|dram~0_regout\,
	combout => \ulainstance|multinstance|Mult0|mult_core|decoder_node[0][0]~combout\);

-- Location: LCCOMB_X22_Y16_N12
\ulainstance|subtratorinstance|out~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|subtratorinstance|out~0_combout\ = \ulainstance|subtratorinstance|resultado\(1) $ (((\ulainstance|subtratorinstance|resultado\(0) & \ulainstance|subtratorinstance|s~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulainstance|subtratorinstance|resultado\(0),
	datab => \ulainstance|subtratorinstance|resultado\(1),
	datac => \ulainstance|subtratorinstance|s~regout\,
	combout => \ulainstance|subtratorinstance|out~0_combout\);

-- Location: LCCOMB_X24_Y16_N20
\ulainstance|multinstance|Mult0|mult_core|decoder_node[0][1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|multinstance|Mult0|mult_core|decoder_node[0][1]~combout\ = (\draminstance|dram~4_regout\ & \draminstance|dram~1_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \draminstance|dram~4_regout\,
	datad => \draminstance|dram~1_regout\,
	combout => \ulainstance|multinstance|Mult0|mult_core|decoder_node[0][1]~combout\);

-- Location: LCCOMB_X24_Y16_N6
\ulainstance|multinstance|Mult0|mult_core|decoder_node[1][1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|multinstance|Mult0|mult_core|decoder_node[1][1]~combout\ = (\draminstance|dram~5_regout\ & \draminstance|dram~1_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \draminstance|dram~5_regout\,
	datac => \draminstance|dram~1_regout\,
	combout => \ulainstance|multinstance|Mult0|mult_core|decoder_node[1][1]~combout\);

-- Location: LCCOMB_X24_Y15_N16
\ulainstance|multinstance|Mult0|mult_core|decoder_node[2][1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|multinstance|Mult0|mult_core|decoder_node[2][1]~combout\ = (\draminstance|dram~6_regout\ & \draminstance|dram~1_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \draminstance|dram~6_regout\,
	datad => \draminstance|dram~1_regout\,
	combout => \ulainstance|multinstance|Mult0|mult_core|decoder_node[2][1]~combout\);

-- Location: LCCOMB_X22_Y16_N10
\ulainstance|subtratorinstance|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|subtratorinstance|Add1~0_combout\ = \ulainstance|subtratorinstance|resultado\(3) $ (((\ulainstance|subtratorinstance|resultado\(1)) # ((\ulainstance|subtratorinstance|resultado\(0)) # (\ulainstance|subtratorinstance|resultado\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulainstance|subtratorinstance|resultado\(1),
	datab => \ulainstance|subtratorinstance|resultado\(3),
	datac => \ulainstance|subtratorinstance|resultado\(0),
	datad => \ulainstance|subtratorinstance|resultado\(2),
	combout => \ulainstance|subtratorinstance|Add1~0_combout\);

-- Location: LCCOMB_X22_Y16_N16
\ulainstance|subtratorinstance|out~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|subtratorinstance|out~1_combout\ = (\ulainstance|subtratorinstance|s~regout\ & (\ulainstance|subtratorinstance|Add1~0_combout\)) # (!\ulainstance|subtratorinstance|s~regout\ & ((\ulainstance|subtratorinstance|resultado\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulainstance|subtratorinstance|Add1~0_combout\,
	datac => \ulainstance|subtratorinstance|s~regout\,
	datad => \ulainstance|subtratorinstance|resultado\(3),
	combout => \ulainstance|subtratorinstance|out~1_combout\);

-- Location: LCCOMB_X22_Y16_N6
\ulainstance|subtratorinstance|out~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|subtratorinstance|out~2_combout\ = \ulainstance|subtratorinstance|resultado\(2) $ (((\ulainstance|subtratorinstance|s~regout\ & ((\ulainstance|subtratorinstance|resultado\(0)) # (\ulainstance|subtratorinstance|resultado\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulainstance|subtratorinstance|resultado\(0),
	datab => \ulainstance|subtratorinstance|resultado\(1),
	datac => \ulainstance|subtratorinstance|s~regout\,
	datad => \ulainstance|subtratorinstance|resultado\(2),
	combout => \ulainstance|subtratorinstance|out~2_combout\);

-- Location: LCCOMB_X22_Y15_N2
\Mod0|auto_generated|divider|divider|StageOut[33]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[33]~33_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\ulainstance|out_ula\(4))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \ulainstance|out_ula\(4),
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[33]~33_combout\);

-- Location: LCCOMB_X22_Y15_N6
\Mod0|auto_generated|divider|divider|StageOut[32]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[32]~34_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\ulainstance|out_ula\(3)))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datab => \ulainstance|out_ula\(3),
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[32]~34_combout\);

-- Location: LCCOMB_X25_Y15_N20
\Div0|auto_generated|divider|divider|StageOut[33]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[33]~30_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\ulainstance|out_ula\(4)))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datab => \ulainstance|out_ula\(4),
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[33]~30_combout\);

-- Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[3]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_KEY(3),
	combout => \KEY~combout\(3));

-- Location: LCCOMB_X23_Y16_N14
\pc~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc~2_combout\ = (pc(1) & (!pc(2) & pc(0))) # (!pc(1) & (pc(2) & !pc(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => pc(1),
	datac => pc(2),
	datad => pc(0),
	combout => \pc~2_combout\);

-- Location: LCFF_X23_Y16_N15
\pc[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	datain => \pc~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => pc(2));

-- Location: LCCOMB_X23_Y16_N8
\pc~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc~1_combout\ = (!pc(2) & (pc(1) $ (pc(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => pc(2),
	datac => pc(1),
	datad => pc(0),
	combout => \pc~1_combout\);

-- Location: LCFF_X23_Y16_N9
\pc[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	datain => \pc~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => pc(1));

-- Location: LCCOMB_X23_Y16_N20
\pc~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc~0_combout\ = (!pc(0) & ((!pc(2)) # (!pc(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => pc(1),
	datac => pc(0),
	datad => pc(2),
	combout => \pc~0_combout\);

-- Location: LCFF_X23_Y16_N21
\pc[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	datain => \pc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => pc(0));

-- Location: LCFF_X23_Y16_N17
\opcode[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	sdata => pc(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => opcode(0));

-- Location: LCFF_X23_Y16_N27
\LEDG[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	sdata => opcode(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LEDG[0]~reg0_regout\);

-- Location: LCFF_X23_Y16_N25
\opcode[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	sdata => pc(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => opcode(1));

-- Location: LCFF_X23_Y16_N31
\LEDG[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	sdata => opcode(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LEDG[1]~reg0_regout\);

-- Location: LCFF_X23_Y16_N5
\opcode[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	sdata => pc(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => opcode(2));

-- Location: LCFF_X23_Y16_N11
\LEDG[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	sdata => opcode(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LEDG[2]~reg0_regout\);

-- Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLOCK_50~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_CLOCK_50,
	combout => \CLOCK_50~combout\);

-- Location: CLKCTRL_G2
\CLOCK_50~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~clkctrl_outclk\);

-- Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[4]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_SW(4),
	combout => \SW~combout\(4));

-- Location: LCCOMB_X25_Y14_N28
\data[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \data[0]~feeder_combout\ = \SW~combout\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW~combout\(4),
	combout => \data[0]~feeder_combout\);

-- Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[2]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_KEY(2),
	combout => \KEY~combout\(2));

-- Location: LCFF_X25_Y14_N29
\data[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \data[0]~feeder_combout\,
	ena => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => data(0));

-- Location: LCCOMB_X24_Y14_N20
\draminstance|dram~0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \draminstance|dram~0feeder_combout\ = data(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => data(0),
	combout => \draminstance|dram~0feeder_combout\);

-- Location: LCCOMB_X25_Y14_N2
\we_d~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \we_d~0_combout\ = !\KEY~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY~combout\(2),
	combout => \we_d~0_combout\);

-- Location: LCFF_X25_Y14_N3
we_d : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \we_d~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \we_d~regout\);

-- Location: LCFF_X24_Y14_N21
\draminstance|dram~0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \draminstance|dram~0feeder_combout\,
	ena => \we_d~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \draminstance|dram~0_regout\);

-- Location: LCFF_X24_Y14_N15
\LEDR[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \draminstance|dram~0_regout\,
	sload => VCC,
	ena => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LEDR[0]~reg0_regout\);

-- Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[5]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_SW(5),
	combout => \SW~combout\(5));

-- Location: LCCOMB_X25_Y14_N8
\data[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \data[1]~feeder_combout\ = \SW~combout\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW~combout\(5),
	combout => \data[1]~feeder_combout\);

-- Location: LCFF_X25_Y14_N9
\data[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \data[1]~feeder_combout\,
	ena => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => data(1));

-- Location: LCFF_X23_Y14_N29
\draminstance|dram~1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => data(1),
	sload => VCC,
	ena => \we_d~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \draminstance|dram~1_regout\);

-- Location: LCFF_X24_Y14_N1
\LEDR[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \draminstance|dram~1_regout\,
	sload => VCC,
	ena => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LEDR[1]~reg0_regout\);

-- Location: PIN_U11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[6]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_SW(6),
	combout => \SW~combout\(6));

-- Location: LCCOMB_X25_Y14_N30
\data[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \data[2]~feeder_combout\ = \SW~combout\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW~combout\(6),
	combout => \data[2]~feeder_combout\);

-- Location: LCFF_X25_Y14_N31
\data[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \data[2]~feeder_combout\,
	ena => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => data(2));

-- Location: LCCOMB_X24_Y14_N12
\draminstance|dram~2feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \draminstance|dram~2feeder_combout\ = data(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => data(2),
	combout => \draminstance|dram~2feeder_combout\);

-- Location: LCFF_X24_Y14_N13
\draminstance|dram~2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \draminstance|dram~2feeder_combout\,
	ena => \we_d~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \draminstance|dram~2_regout\);

-- Location: LCFF_X24_Y14_N19
\LEDR[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \draminstance|dram~2_regout\,
	sload => VCC,
	ena => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LEDR[2]~reg0_regout\);

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[7]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_SW(7),
	combout => \SW~combout\(7));

-- Location: LCFF_X24_Y14_N9
\data[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \SW~combout\(7),
	sload => VCC,
	ena => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => data(3));

-- Location: LCFF_X24_Y14_N17
\draminstance|dram~3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => data(3),
	sload => VCC,
	ena => \we_d~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \draminstance|dram~3_regout\);

-- Location: LCFF_X24_Y14_N31
\LEDR[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \draminstance|dram~3_regout\,
	sload => VCC,
	ena => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LEDR[3]~reg0_regout\);

-- Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[0]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_SW(0),
	combout => \SW~combout\(0));

-- Location: LCCOMB_X25_Y14_N24
\data[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \data[4]~feeder_combout\ = \SW~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW~combout\(0),
	combout => \data[4]~feeder_combout\);

-- Location: LCFF_X25_Y14_N25
\data[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \data[4]~feeder_combout\,
	ena => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => data(4));

-- Location: LCCOMB_X24_Y14_N10
\draminstance|dram~4feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \draminstance|dram~4feeder_combout\ = data(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => data(4),
	combout => \draminstance|dram~4feeder_combout\);

-- Location: LCFF_X24_Y14_N11
\draminstance|dram~4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \draminstance|dram~4feeder_combout\,
	ena => \we_d~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \draminstance|dram~4_regout\);

-- Location: LCFF_X24_Y14_N23
\LEDR[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \draminstance|dram~4_regout\,
	sload => VCC,
	ena => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LEDR[4]~reg0_regout\);

-- Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[1]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_SW(1),
	combout => \SW~combout\(1));

-- Location: LCCOMB_X24_Y14_N26
\data[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \data[5]~feeder_combout\ = \SW~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW~combout\(1),
	combout => \data[5]~feeder_combout\);

-- Location: LCFF_X24_Y14_N27
\data[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \data[5]~feeder_combout\,
	ena => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => data(5));

-- Location: LCFF_X23_Y14_N21
\draminstance|dram~5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => data(5),
	sload => VCC,
	ena => \we_d~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \draminstance|dram~5_regout\);

-- Location: LCCOMB_X24_Y14_N24
\LEDR[5]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \LEDR[5]~reg0feeder_combout\ = \draminstance|dram~5_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \draminstance|dram~5_regout\,
	combout => \LEDR[5]~reg0feeder_combout\);

-- Location: LCFF_X24_Y14_N25
\LEDR[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \LEDR[5]~reg0feeder_combout\,
	ena => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LEDR[5]~reg0_regout\);

-- Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[2]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_SW(2),
	combout => \SW~combout\(2));

-- Location: LCCOMB_X25_Y14_N14
\data[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \data[6]~feeder_combout\ = \SW~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW~combout\(2),
	combout => \data[6]~feeder_combout\);

-- Location: LCFF_X25_Y14_N15
\data[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \data[6]~feeder_combout\,
	ena => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => data(6));

-- Location: LCFF_X24_Y14_N7
\draminstance|dram~6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => data(6),
	sload => VCC,
	ena => \we_d~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \draminstance|dram~6_regout\);

-- Location: LCFF_X24_Y14_N29
\LEDR[6]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \draminstance|dram~6_regout\,
	sload => VCC,
	ena => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LEDR[6]~reg0_regout\);

-- Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[3]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_SW(3),
	combout => \SW~combout\(3));

-- Location: LCCOMB_X25_Y14_N20
\data[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \data[7]~feeder_combout\ = \SW~combout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW~combout\(3),
	combout => \data[7]~feeder_combout\);

-- Location: LCFF_X25_Y14_N21
\data[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \data[7]~feeder_combout\,
	ena => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => data(7));

-- Location: LCCOMB_X24_Y14_N4
\draminstance|dram~7feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \draminstance|dram~7feeder_combout\ = data(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => data(7),
	combout => \draminstance|dram~7feeder_combout\);

-- Location: LCFF_X24_Y14_N5
\draminstance|dram~7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \draminstance|dram~7feeder_combout\,
	ena => \we_d~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \draminstance|dram~7_regout\);

-- Location: LCFF_X24_Y14_N3
\LEDR[7]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \draminstance|dram~7_regout\,
	sload => VCC,
	ena => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LEDR[7]~reg0_regout\);

-- Location: LCFF_X22_Y16_N25
\ulainstance|subtratorinstance|resultado[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ulainstance|subtratorinstance|resultado[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ulainstance|subtratorinstance|resultado\(0));

-- Location: LCFF_X22_Y16_N19
\ulainstance|subtratorinstance|out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \ulainstance|subtratorinstance|resultado\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ulainstance|subtratorinstance|out\(0));

-- Location: LCCOMB_X22_Y16_N18
\ulainstance|Mux8~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|Mux8~7_combout\ = (!opcode(0) & (\ulainstance|subtratorinstance|out\(0) & opcode(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcode(0),
	datac => \ulainstance|subtratorinstance|out\(0),
	datad => opcode(1),
	combout => \ulainstance|Mux8~7_combout\);

-- Location: LCCOMB_X23_Y14_N16
\ulainstance|Mux8~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|Mux8~6_combout\ = (opcode(0) & ((opcode(1) & (\ulainstance|multinstance|Mult0|mult_core|decoder_node[0][0]~combout\)) # (!opcode(1) & ((\ulainstance|somadorinstance|Add0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulainstance|multinstance|Mult0|mult_core|decoder_node[0][0]~combout\,
	datab => \ulainstance|somadorinstance|Add0~0_combout\,
	datac => opcode(1),
	datad => opcode(0),
	combout => \ulainstance|Mux8~6_combout\);

-- Location: LCCOMB_X23_Y16_N6
\ulainstance|Mux8~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|Mux8~4_combout\ = (opcode(0) & ((\draminstance|dram~4_regout\) # ((opcode(1)) # (\draminstance|dram~0_regout\)))) # (!opcode(0) & (\draminstance|dram~4_regout\ & (!opcode(1) & \draminstance|dram~0_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcode(0),
	datab => \draminstance|dram~4_regout\,
	datac => opcode(1),
	datad => \draminstance|dram~0_regout\,
	combout => \ulainstance|Mux8~4_combout\);

-- Location: LCCOMB_X24_Y14_N0
\ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[5]~0_combout\ = (!\draminstance|dram~5_regout\ & !\draminstance|dram~4_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \draminstance|dram~5_regout\,
	datad => \draminstance|dram~4_regout\,
	combout => \ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[5]~0_combout\);

-- Location: LCCOMB_X24_Y14_N18
\ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[5]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[5]~1_combout\ = (\draminstance|dram~4_regout\ & (!\draminstance|dram~2_regout\ & \draminstance|dram~5_regout\)) # (!\draminstance|dram~4_regout\ & ((!\draminstance|dram~5_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \draminstance|dram~4_regout\,
	datac => \draminstance|dram~2_regout\,
	datad => \draminstance|dram~5_regout\,
	combout => \ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[5]~1_combout\);

-- Location: LCCOMB_X24_Y14_N30
\ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[5]~2_combout\ = (\draminstance|dram~3_regout\ & ((\draminstance|dram~6_regout\) # ((\draminstance|dram~7_regout\) # 
-- (\ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[5]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \draminstance|dram~6_regout\,
	datab => \draminstance|dram~7_regout\,
	datac => \draminstance|dram~3_regout\,
	datad => \ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[5]~1_combout\,
	combout => \ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[5]~2_combout\);

-- Location: LCCOMB_X24_Y14_N28
\ulainstance|divinstance|Div0|auto_generated|divider|divider|selnose[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|divinstance|Div0|auto_generated|divider|divider|selnose[5]~0_combout\ = (\draminstance|dram~7_regout\) # ((\draminstance|dram~6_regout\) # ((!\draminstance|dram~3_regout\ & \draminstance|dram~5_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \draminstance|dram~3_regout\,
	datab => \draminstance|dram~7_regout\,
	datac => \draminstance|dram~6_regout\,
	datad => \draminstance|dram~5_regout\,
	combout => \ulainstance|divinstance|Div0|auto_generated|divider|divider|selnose[5]~0_combout\);

-- Location: LCCOMB_X24_Y14_N14
\ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[4]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[4]~3_combout\ = (\draminstance|dram~2_regout\ & ((\ulainstance|divinstance|Div0|auto_generated|divider|divider|selnose[5]~0_combout\) # (!\draminstance|dram~4_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \draminstance|dram~4_regout\,
	datab => \draminstance|dram~2_regout\,
	datad => \ulainstance|divinstance|Div0|auto_generated|divider|divider|selnose[5]~0_combout\,
	combout => \ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[4]~3_combout\);

-- Location: LCCOMB_X23_Y14_N18
\ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ = (\draminstance|dram~1_regout\ & ((GND) # (!\draminstance|dram~4_regout\))) # (!\draminstance|dram~1_regout\ & (\draminstance|dram~4_regout\ $ (GND)))
-- \ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ = CARRY((\draminstance|dram~1_regout\) # (!\draminstance|dram~4_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \draminstance|dram~1_regout\,
	datab => \draminstance|dram~4_regout\,
	datad => VCC,
	combout => \ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	cout => \ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\);

-- Location: LCCOMB_X23_Y14_N22
\ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ = ((\draminstance|dram~6_regout\ $ (\ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[5]~2_combout\ $ 
-- (\ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)))) # (GND)
-- \ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ = CARRY((\draminstance|dram~6_regout\ & (\ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[5]~2_combout\ & 
-- !\ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)) # (!\draminstance|dram~6_regout\ & ((\ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[5]~2_combout\) # 
-- (!\ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \draminstance|dram~6_regout\,
	datab => \ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[5]~2_combout\,
	datad => VCC,
	cin => \ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\,
	combout => \ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	cout => \ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\);

-- Location: LCCOMB_X23_Y14_N24
\ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ = !\ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\,
	combout => \ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\);

-- Location: LCCOMB_X23_Y14_N4
\ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[10]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[10]~4_combout\ = (\draminstance|dram~7_regout\ & (\ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[5]~2_combout\)) # (!\draminstance|dram~7_regout\ & 
-- ((\ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[5]~2_combout\)) # 
-- (!\ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \draminstance|dram~7_regout\,
	datab => \ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[5]~2_combout\,
	datac => \ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datad => \ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	combout => \ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[10]~4_combout\);

-- Location: LCCOMB_X23_Y14_N0
\ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[9]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[9]~5_combout\ = (\ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & 
-- (((\ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[4]~3_combout\)))) # (!\ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\draminstance|dram~7_regout\ & 
-- ((\ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[4]~3_combout\))) # (!\draminstance|dram~7_regout\ & (\ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	datab => \ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[4]~3_combout\,
	datac => \ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datad => \draminstance|dram~7_regout\,
	combout => \ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[9]~5_combout\);

-- Location: LCCOMB_X23_Y14_N28
\ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[8]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[8]~6_combout\ = (\draminstance|dram~7_regout\ & (((\draminstance|dram~1_regout\)))) # (!\draminstance|dram~7_regout\ & 
-- ((\ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\draminstance|dram~1_regout\))) # (!\ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & 
-- (\ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \draminstance|dram~7_regout\,
	datab => \ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	datac => \draminstance|dram~1_regout\,
	datad => \ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	combout => \ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[8]~6_combout\);

-- Location: LCCOMB_X23_Y14_N6
\ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\ = CARRY((\draminstance|dram~0_regout\) # (!\draminstance|dram~4_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \draminstance|dram~4_regout\,
	datab => \draminstance|dram~0_regout\,
	datad => VCC,
	cout => \ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\);

-- Location: LCCOMB_X23_Y14_N8
\ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\ = CARRY((\draminstance|dram~5_regout\ & ((!\ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\) # 
-- (!\ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[8]~6_combout\))) # (!\draminstance|dram~5_regout\ & (!\ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[8]~6_combout\ & 
-- !\ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \draminstance|dram~5_regout\,
	datab => \ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[8]~6_combout\,
	datad => VCC,
	cin => \ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\,
	cout => \ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\);

-- Location: LCCOMB_X23_Y14_N10
\ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\ = CARRY((\draminstance|dram~6_regout\ & (\ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[9]~5_combout\ & 
-- !\ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\)) # (!\draminstance|dram~6_regout\ & ((\ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[9]~5_combout\) # 
-- (!\ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \draminstance|dram~6_regout\,
	datab => \ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[9]~5_combout\,
	datad => VCC,
	cin => \ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\,
	cout => \ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\);

-- Location: LCCOMB_X23_Y14_N12
\ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\ = CARRY((\draminstance|dram~7_regout\ & ((!\ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\) # 
-- (!\ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[10]~4_combout\))) # (!\draminstance|dram~7_regout\ & (!\ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[10]~4_combout\ & 
-- !\ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \draminstance|dram~7_regout\,
	datab => \ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[10]~4_combout\,
	datad => VCC,
	cin => \ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\,
	cout => \ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\);

-- Location: LCCOMB_X23_Y14_N14
\ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ = \ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\,
	combout => \ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\);

-- Location: LCCOMB_X23_Y14_N2
\ulainstance|Mux8~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|Mux8~9_combout\ = (\ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\) # ((!\draminstance|dram~7_regout\ & (\ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[5]~0_combout\ & 
-- !\draminstance|dram~6_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \draminstance|dram~7_regout\,
	datab => \ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[5]~0_combout\,
	datac => \ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datad => \draminstance|dram~6_regout\,
	combout => \ulainstance|Mux8~9_combout\);

-- Location: LCCOMB_X23_Y14_N30
\ulainstance|Mux8~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|Mux8~5_combout\ = (opcode(1) & ((\ulainstance|Mux8~4_combout\ & ((!\ulainstance|Mux8~9_combout\))) # (!\ulainstance|Mux8~4_combout\ & (\ulainstance|somadorinstance|Add0~0_combout\)))) # (!opcode(1) & (((\ulainstance|Mux8~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcode(1),
	datab => \ulainstance|somadorinstance|Add0~0_combout\,
	datac => \ulainstance|Mux8~4_combout\,
	datad => \ulainstance|Mux8~9_combout\,
	combout => \ulainstance|Mux8~5_combout\);

-- Location: LCCOMB_X23_Y14_N26
\ulainstance|Mux8~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|Mux8~8_combout\ = (opcode(2) & (((\ulainstance|Mux8~5_combout\)))) # (!opcode(2) & ((\ulainstance|Mux8~7_combout\) # ((\ulainstance|Mux8~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcode(2),
	datab => \ulainstance|Mux8~7_combout\,
	datac => \ulainstance|Mux8~6_combout\,
	datad => \ulainstance|Mux8~5_combout\,
	combout => \ulainstance|Mux8~8_combout\);

-- Location: LCFF_X23_Y14_N27
\ulainstance|out_ula[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ulainstance|Mux8~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ulainstance|out_ula\(0));

-- Location: LCFF_X22_Y20_N25
\disp0[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \ulainstance|out_ula\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \disp0[0]~reg0_regout\);

-- Location: LCCOMB_X24_Y14_N22
\ulainstance|multinstance|Mult0|mult_core|decoder_node[1][0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|multinstance|Mult0|mult_core|decoder_node[1][0]~combout\ = (\draminstance|dram~0_regout\ & \draminstance|dram~5_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \draminstance|dram~0_regout\,
	datad => \draminstance|dram~5_regout\,
	combout => \ulainstance|multinstance|Mult0|mult_core|decoder_node[1][0]~combout\);

-- Location: LCCOMB_X24_Y16_N22
\ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ = (\ulainstance|multinstance|Mult0|mult_core|decoder_node[0][1]~combout\ & (\ulainstance|multinstance|Mult0|mult_core|decoder_node[1][0]~combout\ $ (VCC))) # 
-- (!\ulainstance|multinstance|Mult0|mult_core|decoder_node[0][1]~combout\ & (\ulainstance|multinstance|Mult0|mult_core|decoder_node[1][0]~combout\ & VCC))
-- \ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ = CARRY((\ulainstance|multinstance|Mult0|mult_core|decoder_node[0][1]~combout\ & \ulainstance|multinstance|Mult0|mult_core|decoder_node[1][0]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulainstance|multinstance|Mult0|mult_core|decoder_node[0][1]~combout\,
	datab => \ulainstance|multinstance|Mult0|mult_core|decoder_node[1][0]~combout\,
	datad => VCC,
	combout => \ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	cout => \ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\);

-- Location: LCCOMB_X24_Y16_N18
\ulainstance|subtratorinstance|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|subtratorinstance|Equal0~0_combout\ = (!opcode(2) & opcode(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => opcode(2),
	datad => opcode(1),
	combout => \ulainstance|subtratorinstance|Equal0~0_combout\);

-- Location: LCCOMB_X23_Y16_N24
\ulainstance|out_ula[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|out_ula[2]~1_combout\ = (opcode(2)) # ((opcode(0) & !opcode(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcode(0),
	datac => opcode(1),
	datad => opcode(2),
	combout => \ulainstance|out_ula[2]~1_combout\);

-- Location: LCCOMB_X23_Y16_N16
\ulainstance|out_ula[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|out_ula[2]~2_combout\ = (opcode(2)) # ((opcode(1) & opcode(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcode(1),
	datac => opcode(0),
	datad => opcode(2),
	combout => \ulainstance|out_ula[2]~2_combout\);

-- Location: LCCOMB_X23_Y16_N2
\ulainstance|divinstance|Div0|auto_generated|divider|divider|selnose[10]\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|divinstance|Div0|auto_generated|divider|divider|selnose\(10) = (\draminstance|dram~7_regout\) # (\ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \draminstance|dram~7_regout\,
	datad => \ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	combout => \ulainstance|divinstance|Div0|auto_generated|divider|divider|selnose\(10));

-- Location: LCCOMB_X23_Y16_N4
\ulainstance|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|Mux5~0_combout\ = (!\draminstance|dram~7_regout\ & !\draminstance|dram~6_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \draminstance|dram~7_regout\,
	datad => \draminstance|dram~6_regout\,
	combout => \ulainstance|Mux5~0_combout\);

-- Location: LCCOMB_X23_Y16_N0
\ulainstance|out_ula[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|out_ula[2]~0_combout\ = (opcode(1) & (((!\ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[5]~0_combout\) # (!\ulainstance|Mux5~0_combout\)) # (!opcode(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcode(0),
	datab => \ulainstance|Mux5~0_combout\,
	datac => opcode(1),
	datad => \ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[5]~0_combout\,
	combout => \ulainstance|out_ula[2]~0_combout\);

-- Location: LCCOMB_X23_Y16_N26
\ulainstance|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|Mux7~0_combout\ = (opcode(0) & (!opcode(1) & ((\draminstance|dram~5_regout\) # (\draminstance|dram~1_regout\)))) # (!opcode(0) & ((opcode(1)) # ((\draminstance|dram~5_regout\ & \draminstance|dram~1_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \draminstance|dram~5_regout\,
	datab => \draminstance|dram~1_regout\,
	datac => opcode(0),
	datad => opcode(1),
	combout => \ulainstance|Mux7~0_combout\);

-- Location: LCCOMB_X23_Y16_N12
\ulainstance|Mux7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|Mux7~1_combout\ = (\ulainstance|out_ula[2]~0_combout\ & ((\ulainstance|Mux7~0_combout\ & (\ulainstance|op_xorinstance|out\(1))) # (!\ulainstance|Mux7~0_combout\ & 
-- ((!\ulainstance|divinstance|Div0|auto_generated|divider|divider|selnose\(10)))))) # (!\ulainstance|out_ula[2]~0_combout\ & (((\ulainstance|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulainstance|op_xorinstance|out\(1),
	datab => \ulainstance|divinstance|Div0|auto_generated|divider|divider|selnose\(10),
	datac => \ulainstance|out_ula[2]~0_combout\,
	datad => \ulainstance|Mux7~0_combout\,
	combout => \ulainstance|Mux7~1_combout\);

-- Location: LCCOMB_X24_Y16_N0
\ulainstance|Mux7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|Mux7~2_combout\ = (\ulainstance|out_ula[2]~1_combout\ & ((\ulainstance|out_ula[2]~2_combout\ & ((\ulainstance|Mux7~1_combout\))) # (!\ulainstance|out_ula[2]~2_combout\ & (\ulainstance|somadorinstance|Add0~2_combout\)))) # 
-- (!\ulainstance|out_ula[2]~1_combout\ & (((\ulainstance|out_ula[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulainstance|somadorinstance|Add0~2_combout\,
	datab => \ulainstance|out_ula[2]~1_combout\,
	datac => \ulainstance|out_ula[2]~2_combout\,
	datad => \ulainstance|Mux7~1_combout\,
	combout => \ulainstance|Mux7~2_combout\);

-- Location: LCCOMB_X24_Y16_N16
\ulainstance|Mux7~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|Mux7~3_combout\ = (\ulainstance|subtratorinstance|Equal0~0_combout\ & ((\ulainstance|Mux7~2_combout\ & ((\ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\))) # (!\ulainstance|Mux7~2_combout\ & 
-- (\ulainstance|subtratorinstance|out\(1))))) # (!\ulainstance|subtratorinstance|Equal0~0_combout\ & (((\ulainstance|Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulainstance|subtratorinstance|out\(1),
	datab => \ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	datac => \ulainstance|subtratorinstance|Equal0~0_combout\,
	datad => \ulainstance|Mux7~2_combout\,
	combout => \ulainstance|Mux7~3_combout\);

-- Location: LCFF_X24_Y16_N17
\ulainstance|out_ula[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ulainstance|Mux7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ulainstance|out_ula\(1));

-- Location: LCCOMB_X24_Y15_N10
\ulainstance|multinstance|Mult0|mult_core|decoder_node[2][2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|multinstance|Mult0|mult_core|decoder_node[2][2]~combout\ = (\draminstance|dram~2_regout\ & \draminstance|dram~6_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \draminstance|dram~2_regout\,
	datad => \draminstance|dram~6_regout\,
	combout => \ulainstance|multinstance|Mult0|mult_core|decoder_node[2][2]~combout\);

-- Location: LCCOMB_X24_Y16_N2
\ulainstance|multinstance|Mult0|mult_core|decoder_node[1][2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|multinstance|Mult0|mult_core|decoder_node[1][2]~combout\ = (\draminstance|dram~2_regout\ & \draminstance|dram~5_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \draminstance|dram~2_regout\,
	datad => \draminstance|dram~5_regout\,
	combout => \ulainstance|multinstance|Mult0|mult_core|decoder_node[1][2]~combout\);

-- Location: LCCOMB_X24_Y16_N4
\ulainstance|multinstance|Mult0|mult_core|decoder_node[0][2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|multinstance|Mult0|mult_core|decoder_node[0][2]~combout\ = (\draminstance|dram~4_regout\ & \draminstance|dram~2_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \draminstance|dram~4_regout\,
	datad => \draminstance|dram~2_regout\,
	combout => \ulainstance|multinstance|Mult0|mult_core|decoder_node[0][2]~combout\);

-- Location: LCCOMB_X24_Y15_N18
\ulainstance|multinstance|Mult0|mult_core|decoder_node[2][0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|multinstance|Mult0|mult_core|decoder_node[2][0]~combout\ = (\draminstance|dram~6_regout\ & \draminstance|dram~0_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \draminstance|dram~6_regout\,
	datac => \draminstance|dram~0_regout\,
	combout => \ulainstance|multinstance|Mult0|mult_core|decoder_node[2][0]~combout\);

-- Location: LCCOMB_X24_Y15_N24
\ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\ = (\ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & 
-- (\ulainstance|multinstance|Mult0|mult_core|decoder_node[2][0]~combout\ $ (VCC))) # (!\ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & (\ulainstance|multinstance|Mult0|mult_core|decoder_node[2][0]~combout\ & VCC))
-- \ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\ = CARRY((\ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & 
-- \ulainstance|multinstance|Mult0|mult_core|decoder_node[2][0]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	datab => \ulainstance|multinstance|Mult0|mult_core|decoder_node[2][0]~combout\,
	datad => VCC,
	combout => \ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\,
	cout => \ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\);

-- Location: LCCOMB_X24_Y15_N26
\ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ = (\ulainstance|multinstance|Mult0|mult_core|decoder_node[2][1]~combout\ & 
-- ((\ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & (\ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\ & VCC)) # 
-- (!\ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & (!\ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\)))) # 
-- (!\ulainstance|multinstance|Mult0|mult_core|decoder_node[2][1]~combout\ & ((\ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & 
-- (!\ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\)) # (!\ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & 
-- ((\ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\) # (GND)))))
-- \ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\ = CARRY((\ulainstance|multinstance|Mult0|mult_core|decoder_node[2][1]~combout\ & 
-- (!\ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & !\ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\)) # 
-- (!\ulainstance|multinstance|Mult0|mult_core|decoder_node[2][1]~combout\ & ((!\ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\) # 
-- (!\ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ulainstance|multinstance|Mult0|mult_core|decoder_node[2][1]~combout\,
	datab => \ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	datad => VCC,
	cin => \ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\,
	combout => \ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\,
	cout => \ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\);

-- Location: LCCOMB_X24_Y15_N28
\ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\ = ((\ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ $ 
-- (\ulainstance|multinstance|Mult0|mult_core|decoder_node[2][2]~combout\ $ (!\ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\)))) # (GND)
-- \ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\ = CARRY((\ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & 
-- ((\ulainstance|multinstance|Mult0|mult_core|decoder_node[2][2]~combout\) # (!\ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\))) # 
-- (!\ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & (\ulainstance|multinstance|Mult0|mult_core|decoder_node[2][2]~combout\ & 
-- !\ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	datab => \ulainstance|multinstance|Mult0|mult_core|decoder_node[2][2]~combout\,
	datad => VCC,
	cin => \ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\,
	combout => \ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\,
	cout => \ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\);

-- Location: LCCOMB_X23_Y15_N22
\ulainstance|Mux4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|Mux4~2_combout\ = (opcode(1) & (!opcode(2) & (opcode(0) & \ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcode(1),
	datab => opcode(2),
	datac => opcode(0),
	datad => \ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\,
	combout => \ulainstance|Mux4~2_combout\);

-- Location: LCFF_X23_Y15_N23
\ulainstance|out_ula[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ulainstance|Mux4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ulainstance|out_ula\(4));

-- Location: LCCOMB_X24_Y16_N30
\ulainstance|Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|Mux5~1_combout\ = (!\draminstance|dram~7_regout\ & (\draminstance|dram~3_regout\ & (\draminstance|dram~4_regout\ & !\draminstance|dram~6_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \draminstance|dram~7_regout\,
	datab => \draminstance|dram~3_regout\,
	datac => \draminstance|dram~4_regout\,
	datad => \draminstance|dram~6_regout\,
	combout => \ulainstance|Mux5~1_combout\);

-- Location: LCCOMB_X23_Y16_N10
\ulainstance|Mux5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|Mux5~2_combout\ = (opcode(2) & (((!\draminstance|dram~5_regout\ & \ulainstance|Mux5~1_combout\)))) # (!opcode(2) & (\ulainstance|somadorinstance|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulainstance|somadorinstance|Add0~6_combout\,
	datab => \draminstance|dram~5_regout\,
	datac => opcode(2),
	datad => \ulainstance|Mux5~1_combout\,
	combout => \ulainstance|Mux5~2_combout\);

-- Location: LCCOMB_X23_Y15_N18
\ulainstance|Mux5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|Mux5~3_combout\ = (opcode(2) & (opcode(1) & ((\ulainstance|Mux5~2_combout\)))) # (!opcode(2) & ((opcode(1) & (\ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\)) # (!opcode(1) & 
-- ((\ulainstance|Mux5~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcode(2),
	datab => opcode(1),
	datac => \ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\,
	datad => \ulainstance|Mux5~2_combout\,
	combout => \ulainstance|Mux5~3_combout\);

-- Location: LCCOMB_X23_Y15_N28
\ulainstance|Mux5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|Mux5~4_combout\ = (opcode(0) & (((\ulainstance|Mux5~3_combout\)))) # (!opcode(0) & (\ulainstance|subtratorinstance|out\(3) & (\ulainstance|subtratorinstance|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulainstance|subtratorinstance|out\(3),
	datab => opcode(0),
	datac => \ulainstance|subtratorinstance|Equal0~0_combout\,
	datad => \ulainstance|Mux5~3_combout\,
	combout => \ulainstance|Mux5~4_combout\);

-- Location: LCFF_X23_Y15_N29
\ulainstance|out_ula[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ulainstance|Mux5~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ulainstance|out_ula\(3));

-- Location: LCCOMB_X23_Y15_N10
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\ulainstance|out_ula\(5) & (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ $ (GND))) # (!\ulainstance|out_ula\(5) & 
-- (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & VCC))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((\ulainstance|out_ula\(5) & !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ulainstance|out_ula\(5),
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X23_Y15_N12
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY(!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X23_Y15_N14
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X22_Y15_N14
\Mod0|auto_generated|divider|divider|StageOut[28]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[28]~17_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[28]~17_combout\);

-- Location: LCCOMB_X22_Y15_N0
\Mod0|auto_generated|divider|divider|StageOut[27]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[27]~18_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \ulainstance|out_ula\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \ulainstance|out_ula\(4),
	combout => \Mod0|auto_generated|divider|divider|StageOut[27]~18_combout\);

-- Location: LCCOMB_X23_Y15_N30
\Mod0|auto_generated|divider|divider|StageOut[26]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[26]~20_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \ulainstance|out_ula\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \ulainstance|out_ula\(3),
	combout => \Mod0|auto_generated|divider|divider|StageOut[26]~20_combout\);

-- Location: LCCOMB_X24_Y14_N8
\ulainstance|divinstance|Div0|auto_generated|divider|divider|selnose[5]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|divinstance|Div0|auto_generated|divider|divider|selnose[5]~1_combout\ = (\ulainstance|divinstance|Div0|auto_generated|divider|divider|selnose[5]~0_combout\) # ((\draminstance|dram~4_regout\ & !\draminstance|dram~2_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \draminstance|dram~4_regout\,
	datab => \draminstance|dram~2_regout\,
	datad => \ulainstance|divinstance|Div0|auto_generated|divider|divider|selnose[5]~0_combout\,
	combout => \ulainstance|divinstance|Div0|auto_generated|divider|divider|selnose[5]~1_combout\);

-- Location: LCCOMB_X23_Y16_N30
\ulainstance|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|Mux6~0_combout\ = (opcode(0) & (!opcode(1) & ((\draminstance|dram~6_regout\) # (\draminstance|dram~2_regout\)))) # (!opcode(0) & ((opcode(1)) # ((\draminstance|dram~6_regout\ & \draminstance|dram~2_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcode(0),
	datab => \draminstance|dram~6_regout\,
	datac => opcode(1),
	datad => \draminstance|dram~2_regout\,
	combout => \ulainstance|Mux6~0_combout\);

-- Location: LCCOMB_X23_Y16_N18
\ulainstance|Mux6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|Mux6~1_combout\ = (\ulainstance|out_ula[2]~0_combout\ & ((\ulainstance|Mux6~0_combout\ & (\ulainstance|op_xorinstance|out\(2))) # (!\ulainstance|Mux6~0_combout\ & 
-- ((!\ulainstance|divinstance|Div0|auto_generated|divider|divider|selnose[5]~1_combout\))))) # (!\ulainstance|out_ula[2]~0_combout\ & (((\ulainstance|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulainstance|op_xorinstance|out\(2),
	datab => \ulainstance|out_ula[2]~0_combout\,
	datac => \ulainstance|divinstance|Div0|auto_generated|divider|divider|selnose[5]~1_combout\,
	datad => \ulainstance|Mux6~0_combout\,
	combout => \ulainstance|Mux6~1_combout\);

-- Location: LCCOMB_X23_Y16_N22
\ulainstance|Mux6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|Mux6~2_combout\ = (\ulainstance|out_ula[2]~2_combout\ & (((\ulainstance|Mux6~1_combout\) # (!\ulainstance|out_ula[2]~1_combout\)))) # (!\ulainstance|out_ula[2]~2_combout\ & (\ulainstance|somadorinstance|Add0~4_combout\ & 
-- (\ulainstance|out_ula[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulainstance|somadorinstance|Add0~4_combout\,
	datab => \ulainstance|out_ula[2]~2_combout\,
	datac => \ulainstance|out_ula[2]~1_combout\,
	datad => \ulainstance|Mux6~1_combout\,
	combout => \ulainstance|Mux6~2_combout\);

-- Location: LCCOMB_X23_Y16_N28
\ulainstance|Mux6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|Mux6~3_combout\ = (\ulainstance|subtratorinstance|Equal0~0_combout\ & ((\ulainstance|Mux6~2_combout\ & ((\ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\))) # (!\ulainstance|Mux6~2_combout\ 
-- & (\ulainstance|subtratorinstance|out\(2))))) # (!\ulainstance|subtratorinstance|Equal0~0_combout\ & (((\ulainstance|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulainstance|subtratorinstance|out\(2),
	datab => \ulainstance|subtratorinstance|Equal0~0_combout\,
	datac => \ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\,
	datad => \ulainstance|Mux6~2_combout\,
	combout => \ulainstance|Mux6~3_combout\);

-- Location: LCFF_X23_Y16_N29
\ulainstance|out_ula[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ulainstance|Mux6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ulainstance|out_ula\(2));

-- Location: LCCOMB_X23_Y15_N0
\Mod0|auto_generated|divider|divider|StageOut[25]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[25]~23_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \ulainstance|out_ula\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \ulainstance|out_ula\(2),
	combout => \Mod0|auto_generated|divider|divider|StageOut[25]~23_combout\);

-- Location: LCCOMB_X22_Y15_N22
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[26]~21_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[26]~20_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[26]~21_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[26]~20_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[26]~21_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[26]~20_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[26]~21_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[26]~20_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X22_Y15_N24
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[27]~19_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[27]~18_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[27]~19_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[27]~18_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[27]~19_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[27]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[27]~19_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[27]~18_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X22_Y15_N26
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[28]~16_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[28]~17_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[28]~16_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[28]~17_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X22_Y15_N28
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\);

-- Location: LCCOMB_X21_Y15_N14
\Mod0|auto_generated|divider|divider|StageOut[30]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[30]~24_combout\ = (\ulainstance|out_ula\(1) & \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ulainstance|out_ula\(1),
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[30]~24_combout\);

-- Location: LCCOMB_X21_Y15_N18
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[30]~25_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[30]~24_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[30]~25_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[30]~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[30]~25_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[30]~24_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X22_Y15_N30
\Mod0|auto_generated|divider|divider|StageOut[33]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[33]~26_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[33]~26_combout\);

-- Location: LCCOMB_X22_Y15_N8
\Mod0|auto_generated|divider|divider|StageOut[32]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[32]~27_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[32]~27_combout\);

-- Location: LCCOMB_X22_Y15_N18
\Mod0|auto_generated|divider|divider|StageOut[31]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[31]~28_combout\ = (\ulainstance|out_ula\(2) & \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulainstance|out_ula\(2),
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[31]~28_combout\);

-- Location: LCCOMB_X21_Y15_N20
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[31]~29_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[31]~28_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[31]~29_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[31]~28_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[31]~29_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[31]~28_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[31]~29_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[31]~28_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X21_Y15_N22
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[32]~34_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[32]~27_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[32]~34_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[32]~27_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[32]~34_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[32]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[32]~34_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[32]~27_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X21_Y15_N24
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[33]~33_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[33]~26_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[33]~33_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[33]~26_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X21_Y15_N26
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\);

-- Location: LCCOMB_X21_Y15_N0
\Mod0|auto_generated|divider|divider|StageOut[36]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[36]~30_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\ulainstance|out_ula\(1)))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datac => \ulainstance|out_ula\(1),
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[36]~30_combout\);

-- Location: LCFF_X21_Y15_N1
\disp0[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Mod0|auto_generated|divider|divider|StageOut[36]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \disp0[1]~reg0_regout\);

-- Location: LCCOMB_X21_Y15_N10
\Mod0|auto_generated|divider|divider|StageOut[37]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[37]~31_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[31]~29_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[31]~28_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (((\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[31]~29_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[31]~28_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[37]~31_combout\);

-- Location: LCFF_X21_Y15_N11
\disp0[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Mod0|auto_generated|divider|divider|StageOut[37]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \disp0[2]~reg0_regout\);

-- Location: LCCOMB_X21_Y15_N16
\Mod0|auto_generated|divider|divider|StageOut[38]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[38]~32_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[32]~34_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[32]~27_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (((\Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[32]~34_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[32]~27_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[38]~32_combout\);

-- Location: LCFF_X21_Y15_N17
\disp0[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Mod0|auto_generated|divider|divider|StageOut[38]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \disp0[3]~reg0_regout\);

-- Location: LCCOMB_X24_Y15_N30
\ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ = \ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\,
	combout => \ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\);

-- Location: LCCOMB_X23_Y15_N24
\ulainstance|Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|Mux3~2_combout\ = (opcode(1) & (!opcode(2) & (opcode(0) & \ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcode(1),
	datab => opcode(2),
	datac => opcode(0),
	datad => \ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\,
	combout => \ulainstance|Mux3~2_combout\);

-- Location: LCFF_X23_Y15_N25
\ulainstance|out_ula[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ulainstance|Mux3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ulainstance|out_ula\(5));

-- Location: LCCOMB_X24_Y15_N6
\Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY(!\Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X24_Y15_N8
\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X24_Y15_N22
\Div0|auto_generated|divider|divider|StageOut[28]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[28]~16_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \ulainstance|out_ula\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \ulainstance|out_ula\(5),
	combout => \Div0|auto_generated|divider|divider|StageOut[28]~16_combout\);

-- Location: LCCOMB_X25_Y15_N22
\Div0|auto_generated|divider|divider|StageOut[27]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[27]~18_combout\ = (\ulainstance|out_ula\(4) & \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ulainstance|out_ula\(4),
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[27]~18_combout\);

-- Location: LCCOMB_X25_Y15_N4
\Div0|auto_generated|divider|divider|StageOut[26]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[26]~20_combout\ = (\ulainstance|out_ula\(3) & \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ulainstance|out_ula\(3),
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[26]~20_combout\);

-- Location: LCCOMB_X25_Y15_N18
\Div0|auto_generated|divider|divider|StageOut[25]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[25]~22_combout\ = (\ulainstance|out_ula\(2) & \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ulainstance|out_ula\(2),
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[25]~22_combout\);

-- Location: LCCOMB_X25_Y15_N12
\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\Div0|auto_generated|divider|divider|StageOut[27]~19_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[27]~18_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[27]~19_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[27]~18_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\Div0|auto_generated|divider|divider|StageOut[27]~19_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[27]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[27]~19_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[27]~18_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X25_Y15_N14
\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[28]~17_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[28]~16_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[28]~17_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[28]~16_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X25_Y15_N16
\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\);

-- Location: LCCOMB_X25_Y15_N24
\Div0|auto_generated|divider|divider|StageOut[33]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[33]~24_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[33]~24_combout\);

-- Location: LCCOMB_X25_Y15_N26
\Div0|auto_generated|divider|divider|StageOut[32]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[32]~31_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\ulainstance|out_ula\(3)))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datab => \ulainstance|out_ula\(3),
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[32]~31_combout\);

-- Location: LCCOMB_X25_Y15_N28
\Div0|auto_generated|divider|divider|StageOut[31]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[31]~26_combout\ = (\ulainstance|out_ula\(2) & \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ulainstance|out_ula\(2),
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[31]~26_combout\);

-- Location: LCCOMB_X26_Y15_N22
\Div0|auto_generated|divider|divider|StageOut[30]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[30]~28_combout\ = (\ulainstance|out_ula\(1) & \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ulainstance|out_ula\(1),
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[30]~28_combout\);

-- Location: LCCOMB_X26_Y15_N0
\disp1[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp1[0]~2_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[30]~29_combout\) # (\Div0|auto_generated|divider|divider|StageOut[30]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[30]~29_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[30]~28_combout\,
	datad => VCC,
	cout => \disp1[0]~2_cout\);

-- Location: LCCOMB_X26_Y15_N2
\disp1[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp1[0]~4_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[31]~27_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[31]~26_combout\ & !\disp1[0]~2_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[31]~27_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[31]~26_combout\,
	datad => VCC,
	cin => \disp1[0]~2_cout\,
	cout => \disp1[0]~4_cout\);

-- Location: LCCOMB_X26_Y15_N4
\disp1[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp1[0]~6_cout\ = CARRY((!\disp1[0]~4_cout\ & ((\Div0|auto_generated|divider|divider|StageOut[32]~25_combout\) # (\Div0|auto_generated|divider|divider|StageOut[32]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[32]~25_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[32]~31_combout\,
	datad => VCC,
	cin => \disp1[0]~4_cout\,
	cout => \disp1[0]~6_cout\);

-- Location: LCCOMB_X26_Y15_N6
\disp1[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp1[0]~8_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[33]~30_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[33]~24_combout\ & !\disp1[0]~6_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[33]~30_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[33]~24_combout\,
	datad => VCC,
	cin => \disp1[0]~6_cout\,
	cout => \disp1[0]~8_cout\);

-- Location: LCCOMB_X26_Y15_N8
\disp1[0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp1[0]~9_combout\ = !\disp1[0]~8_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \disp1[0]~8_cout\,
	combout => \disp1[0]~9_combout\);

-- Location: LCFF_X26_Y15_N9
\disp1[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \disp1[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \disp1[0]~reg0_regout\);

-- Location: LCCOMB_X25_Y15_N0
\disp1[1]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp1[1]~11_combout\ = !\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \disp1[1]~11_combout\);

-- Location: LCFF_X25_Y15_N1
\disp1[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \disp1[1]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \disp1[1]~reg0_regout\);

-- Location: LCCOMB_X22_Y20_N18
\disp1[2]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp1[2]~12_combout\ = !\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \disp1[2]~12_combout\);

-- Location: LCFF_X22_Y20_N19
\disp1[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \disp1[2]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \disp1[2]~reg0_regout\);

-- Location: LCFF_X22_Y20_N1
\disp2[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \draminstance|dram~4_regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \disp2[0]~reg0_regout\);

-- Location: LCFF_X22_Y20_N15
\disp2[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \draminstance|dram~5_regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \disp2[1]~reg0_regout\);

-- Location: LCFF_X22_Y20_N21
\disp2[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \draminstance|dram~6_regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \disp2[2]~reg0_regout\);

-- Location: LCFF_X22_Y20_N11
\disp2[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \draminstance|dram~7_regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \disp2[3]~reg0_regout\);

-- Location: LCFF_X22_Y20_N9
\disp3[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \draminstance|dram~0_regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \disp3[0]~reg0_regout\);

-- Location: LCFF_X22_Y20_N7
\disp3[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \draminstance|dram~1_regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \disp3[1]~reg0_regout\);

-- Location: LCFF_X22_Y20_N5
\disp3[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \draminstance|dram~2_regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \disp3[2]~reg0_regout\);

-- Location: LCFF_X22_Y20_N31
\disp3[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \draminstance|dram~3_regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \disp3[3]~reg0_regout\);

-- Location: LCCOMB_X22_Y20_N16
\seg7instance|display_state.10~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|display_state.10~feeder_combout\ = \seg7instance|display_state.01~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \seg7instance|display_state.01~regout\,
	combout => \seg7instance|display_state.10~feeder_combout\);

-- Location: LCFF_X22_Y20_N17
\seg7instance|display_state.10\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \seg7instance|display_state.10~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|display_state.10~regout\);

-- Location: LCFF_X22_Y20_N13
\seg7instance|display_state.11\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \seg7instance|display_state.10~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|display_state.11~regout\);

-- Location: LCCOMB_X22_Y20_N2
\seg7instance|display_state.00~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|display_state.00~0_combout\ = !\seg7instance|display_state.11~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \seg7instance|display_state.11~regout\,
	combout => \seg7instance|display_state.00~0_combout\);

-- Location: LCFF_X22_Y20_N3
\seg7instance|display_state.00\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \seg7instance|display_state.00~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|display_state.00~regout\);

-- Location: LCCOMB_X22_Y20_N26
\seg7instance|display_state.01~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|display_state.01~0_combout\ = !\seg7instance|display_state.00~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \seg7instance|display_state.00~regout\,
	combout => \seg7instance|display_state.01~0_combout\);

-- Location: LCFF_X22_Y20_N27
\seg7instance|display_state.01\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \seg7instance|display_state.01~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|display_state.01~regout\);

-- Location: LCCOMB_X22_Y20_N10
\seg7instance|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|Selector0~0_combout\ = (\seg7instance|display_state.10~regout\ & (\seg7instance|display_state.01~regout\ & \seg7instance|display_state.11~regout\)) # (!\seg7instance|display_state.10~regout\ & ((\seg7instance|display_state.01~regout\) # 
-- (\seg7instance|display_state.11~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg7instance|display_state.10~regout\,
	datab => \seg7instance|display_state.01~regout\,
	datad => \seg7instance|display_state.11~regout\,
	combout => \seg7instance|Selector0~0_combout\);

-- Location: LCCOMB_X22_Y20_N8
\seg7instance|Selector3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|Selector3~1_combout\ = (\seg7instance|Selector3~0_combout\ & (((\disp3[0]~reg0_regout\) # (!\seg7instance|Selector0~0_combout\)))) # (!\seg7instance|Selector3~0_combout\ & (\disp1[0]~reg0_regout\ & ((\seg7instance|Selector0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg7instance|Selector3~0_combout\,
	datab => \disp1[0]~reg0_regout\,
	datac => \disp3[0]~reg0_regout\,
	datad => \seg7instance|Selector0~0_combout\,
	combout => \seg7instance|Selector3~1_combout\);

-- Location: LCCOMB_X22_Y20_N14
\seg7instance|Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|Selector0~1_combout\ = \seg7instance|display_state.10~regout\ $ (\seg7instance|display_state.11~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg7instance|display_state.10~regout\,
	datad => \seg7instance|display_state.11~regout\,
	combout => \seg7instance|Selector0~1_combout\);

-- Location: LCCOMB_X22_Y20_N22
\seg7instance|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|Selector2~0_combout\ = (\seg7instance|Selector0~0_combout\ & ((\seg7instance|Selector0~1_combout\) # ((\disp1[1]~reg0_regout\)))) # (!\seg7instance|Selector0~0_combout\ & (!\seg7instance|Selector0~1_combout\ & ((\disp0[1]~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg7instance|Selector0~0_combout\,
	datab => \seg7instance|Selector0~1_combout\,
	datac => \disp1[1]~reg0_regout\,
	datad => \disp0[1]~reg0_regout\,
	combout => \seg7instance|Selector2~0_combout\);

-- Location: LCCOMB_X22_Y20_N6
\seg7instance|Selector2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|Selector2~1_combout\ = (\seg7instance|Selector0~1_combout\ & ((\seg7instance|Selector2~0_combout\ & ((\disp3[1]~reg0_regout\))) # (!\seg7instance|Selector2~0_combout\ & (\disp2[1]~reg0_regout\)))) # (!\seg7instance|Selector0~1_combout\ & 
-- (((\seg7instance|Selector2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp2[1]~reg0_regout\,
	datab => \seg7instance|Selector0~1_combout\,
	datac => \disp3[1]~reg0_regout\,
	datad => \seg7instance|Selector2~0_combout\,
	combout => \seg7instance|Selector2~1_combout\);

-- Location: LCCOMB_X22_Y20_N4
\seg7instance|Selector1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|Selector1~1_combout\ = (\seg7instance|Selector1~0_combout\ & (((\disp3[2]~reg0_regout\) # (!\seg7instance|Selector0~0_combout\)))) # (!\seg7instance|Selector1~0_combout\ & (\disp1[2]~reg0_regout\ & ((\seg7instance|Selector0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg7instance|Selector1~0_combout\,
	datab => \disp1[2]~reg0_regout\,
	datac => \disp3[2]~reg0_regout\,
	datad => \seg7instance|Selector0~0_combout\,
	combout => \seg7instance|Selector1~1_combout\);

-- Location: LCCOMB_X2_Y20_N6
\seg7instance|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|WideOr6~0_combout\ = (\seg7instance|Selector0~3_combout\ & (\seg7instance|Selector3~1_combout\ & (\seg7instance|Selector2~1_combout\ $ (\seg7instance|Selector1~1_combout\)))) # (!\seg7instance|Selector0~3_combout\ & 
-- (!\seg7instance|Selector2~1_combout\ & (\seg7instance|Selector3~1_combout\ $ (\seg7instance|Selector1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg7instance|Selector0~3_combout\,
	datab => \seg7instance|Selector3~1_combout\,
	datac => \seg7instance|Selector2~1_combout\,
	datad => \seg7instance|Selector1~1_combout\,
	combout => \seg7instance|WideOr6~0_combout\);

-- Location: LCCOMB_X1_Y20_N28
\seg7instance|hex_out0[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|hex_out0[0]~feeder_combout\ = \seg7instance|WideOr6~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \seg7instance|WideOr6~0_combout\,
	combout => \seg7instance|hex_out0[0]~feeder_combout\);

-- Location: LCFF_X1_Y20_N29
\seg7instance|hex_out0[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \seg7instance|hex_out0[0]~feeder_combout\,
	ena => \seg7instance|ALT_INV_display_state.00~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out0\(0));

-- Location: LCCOMB_X2_Y20_N28
\seg7instance|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|WideOr5~0_combout\ = (\seg7instance|Selector0~3_combout\ & ((\seg7instance|Selector3~1_combout\ & (\seg7instance|Selector2~1_combout\)) # (!\seg7instance|Selector3~1_combout\ & ((\seg7instance|Selector1~1_combout\))))) # 
-- (!\seg7instance|Selector0~3_combout\ & (\seg7instance|Selector1~1_combout\ & (\seg7instance|Selector3~1_combout\ $ (\seg7instance|Selector2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg7instance|Selector0~3_combout\,
	datab => \seg7instance|Selector3~1_combout\,
	datac => \seg7instance|Selector2~1_combout\,
	datad => \seg7instance|Selector1~1_combout\,
	combout => \seg7instance|WideOr5~0_combout\);

-- Location: LCCOMB_X1_Y20_N14
\seg7instance|hex_out0[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|hex_out0[1]~feeder_combout\ = \seg7instance|WideOr5~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \seg7instance|WideOr5~0_combout\,
	combout => \seg7instance|hex_out0[1]~feeder_combout\);

-- Location: LCFF_X1_Y20_N15
\seg7instance|hex_out0[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \seg7instance|hex_out0[1]~feeder_combout\,
	ena => \seg7instance|ALT_INV_display_state.00~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out0\(1));

-- Location: LCCOMB_X2_Y20_N22
\seg7instance|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|WideOr4~0_combout\ = (\seg7instance|Selector0~3_combout\ & (\seg7instance|Selector1~1_combout\ & ((\seg7instance|Selector2~1_combout\) # (!\seg7instance|Selector3~1_combout\)))) # (!\seg7instance|Selector0~3_combout\ & 
-- (!\seg7instance|Selector3~1_combout\ & (\seg7instance|Selector2~1_combout\ & !\seg7instance|Selector1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg7instance|Selector0~3_combout\,
	datab => \seg7instance|Selector3~1_combout\,
	datac => \seg7instance|Selector2~1_combout\,
	datad => \seg7instance|Selector1~1_combout\,
	combout => \seg7instance|WideOr4~0_combout\);

-- Location: LCCOMB_X1_Y20_N16
\seg7instance|hex_out0[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|hex_out0[2]~feeder_combout\ = \seg7instance|WideOr4~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \seg7instance|WideOr4~0_combout\,
	combout => \seg7instance|hex_out0[2]~feeder_combout\);

-- Location: LCFF_X1_Y20_N17
\seg7instance|hex_out0[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \seg7instance|hex_out0[2]~feeder_combout\,
	ena => \seg7instance|ALT_INV_display_state.00~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out0\(2));

-- Location: LCCOMB_X2_Y20_N16
\seg7instance|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|WideOr3~0_combout\ = (\seg7instance|Selector2~1_combout\ & ((\seg7instance|Selector3~1_combout\ & ((\seg7instance|Selector1~1_combout\))) # (!\seg7instance|Selector3~1_combout\ & (\seg7instance|Selector0~3_combout\ & 
-- !\seg7instance|Selector1~1_combout\)))) # (!\seg7instance|Selector2~1_combout\ & (!\seg7instance|Selector0~3_combout\ & (\seg7instance|Selector3~1_combout\ $ (\seg7instance|Selector1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg7instance|Selector0~3_combout\,
	datab => \seg7instance|Selector3~1_combout\,
	datac => \seg7instance|Selector2~1_combout\,
	datad => \seg7instance|Selector1~1_combout\,
	combout => \seg7instance|WideOr3~0_combout\);

-- Location: LCFF_X1_Y20_N19
\seg7instance|hex_out0[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \seg7instance|WideOr3~0_combout\,
	sload => VCC,
	ena => \seg7instance|ALT_INV_display_state.00~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out0\(3));

-- Location: LCCOMB_X2_Y20_N10
\seg7instance|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|WideOr2~0_combout\ = (\seg7instance|Selector2~1_combout\ & (!\seg7instance|Selector0~3_combout\ & (\seg7instance|Selector3~1_combout\))) # (!\seg7instance|Selector2~1_combout\ & ((\seg7instance|Selector1~1_combout\ & 
-- (!\seg7instance|Selector0~3_combout\)) # (!\seg7instance|Selector1~1_combout\ & ((\seg7instance|Selector3~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg7instance|Selector0~3_combout\,
	datab => \seg7instance|Selector3~1_combout\,
	datac => \seg7instance|Selector2~1_combout\,
	datad => \seg7instance|Selector1~1_combout\,
	combout => \seg7instance|WideOr2~0_combout\);

-- Location: LCFF_X1_Y20_N9
\seg7instance|hex_out0[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \seg7instance|WideOr2~0_combout\,
	sload => VCC,
	ena => \seg7instance|ALT_INV_display_state.00~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out0\(4));

-- Location: LCCOMB_X2_Y20_N26
\seg7instance|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|WideOr1~0_combout\ = (\seg7instance|Selector3~1_combout\ & (\seg7instance|Selector0~3_combout\ $ (((\seg7instance|Selector2~1_combout\) # (!\seg7instance|Selector1~1_combout\))))) # (!\seg7instance|Selector3~1_combout\ & 
-- (!\seg7instance|Selector0~3_combout\ & (\seg7instance|Selector2~1_combout\ & !\seg7instance|Selector1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg7instance|Selector0~3_combout\,
	datab => \seg7instance|Selector3~1_combout\,
	datac => \seg7instance|Selector2~1_combout\,
	datad => \seg7instance|Selector1~1_combout\,
	combout => \seg7instance|WideOr1~0_combout\);

-- Location: LCFF_X1_Y20_N27
\seg7instance|hex_out0[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \seg7instance|WideOr1~0_combout\,
	sload => VCC,
	ena => \seg7instance|ALT_INV_display_state.00~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out0\(5));

-- Location: LCCOMB_X2_Y20_N8
\seg7instance|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|WideOr0~0_combout\ = (\seg7instance|Selector3~1_combout\ & (!\seg7instance|Selector0~3_combout\ & (\seg7instance|Selector2~1_combout\ $ (!\seg7instance|Selector1~1_combout\)))) # (!\seg7instance|Selector3~1_combout\ & 
-- (!\seg7instance|Selector2~1_combout\ & (\seg7instance|Selector0~3_combout\ $ (!\seg7instance|Selector1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg7instance|Selector0~3_combout\,
	datab => \seg7instance|Selector3~1_combout\,
	datac => \seg7instance|Selector2~1_combout\,
	datad => \seg7instance|Selector1~1_combout\,
	combout => \seg7instance|WideOr0~0_combout\);

-- Location: LCFF_X1_Y20_N1
\seg7instance|hex_out0[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \seg7instance|WideOr0~0_combout\,
	sload => VCC,
	ena => \seg7instance|ALT_INV_display_state.00~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out0\(6));

-- Location: LCCOMB_X1_Y20_N22
\seg7instance|hex_out1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|hex_out1~0_combout\ = (\ulainstance|subtratorinstance|s~regout\) # (\seg7instance|WideOr6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulainstance|subtratorinstance|s~regout\,
	datad => \seg7instance|WideOr6~0_combout\,
	combout => \seg7instance|hex_out1~0_combout\);

-- Location: LCFF_X1_Y20_N23
\seg7instance|hex_out1[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \seg7instance|hex_out1~0_combout\,
	ena => \seg7instance|display_state.01~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out1\(0));

-- Location: LCCOMB_X1_Y20_N20
\seg7instance|hex_out1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|hex_out1~1_combout\ = (\ulainstance|subtratorinstance|s~regout\) # (\seg7instance|WideOr5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulainstance|subtratorinstance|s~regout\,
	datad => \seg7instance|WideOr5~0_combout\,
	combout => \seg7instance|hex_out1~1_combout\);

-- Location: LCFF_X1_Y20_N21
\seg7instance|hex_out1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \seg7instance|hex_out1~1_combout\,
	ena => \seg7instance|display_state.01~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out1\(1));

-- Location: LCCOMB_X1_Y20_N10
\seg7instance|hex_out1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|hex_out1~2_combout\ = (\ulainstance|subtratorinstance|s~regout\) # (\seg7instance|WideOr4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulainstance|subtratorinstance|s~regout\,
	datad => \seg7instance|WideOr4~0_combout\,
	combout => \seg7instance|hex_out1~2_combout\);

-- Location: LCFF_X1_Y20_N11
\seg7instance|hex_out1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \seg7instance|hex_out1~2_combout\,
	ena => \seg7instance|display_state.01~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out1\(2));

-- Location: LCCOMB_X22_Y16_N4
\ulainstance|subtratorinstance|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|subtratorinstance|Equal0~1_combout\ = (!opcode(0) & (!opcode(2) & opcode(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcode(0),
	datac => opcode(2),
	datad => opcode(1),
	combout => \ulainstance|subtratorinstance|Equal0~1_combout\);

-- Location: LCFF_X22_Y16_N5
\ulainstance|subtratorinstance|s\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ulainstance|subtratorinstance|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ulainstance|subtratorinstance|s~regout\);

-- Location: LCCOMB_X1_Y20_N4
\seg7instance|hex_out1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|hex_out1~3_combout\ = (\seg7instance|WideOr3~0_combout\) # (\ulainstance|subtratorinstance|s~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \seg7instance|WideOr3~0_combout\,
	datad => \ulainstance|subtratorinstance|s~regout\,
	combout => \seg7instance|hex_out1~3_combout\);

-- Location: LCFF_X1_Y20_N5
\seg7instance|hex_out1[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \seg7instance|hex_out1~3_combout\,
	ena => \seg7instance|display_state.01~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out1\(3));

-- Location: LCCOMB_X1_Y20_N2
\seg7instance|hex_out1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|hex_out1~4_combout\ = (\seg7instance|WideOr2~0_combout\) # (\ulainstance|subtratorinstance|s~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \seg7instance|WideOr2~0_combout\,
	datad => \ulainstance|subtratorinstance|s~regout\,
	combout => \seg7instance|hex_out1~4_combout\);

-- Location: LCFF_X1_Y20_N3
\seg7instance|hex_out1[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \seg7instance|hex_out1~4_combout\,
	ena => \seg7instance|display_state.01~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out1\(4));

-- Location: LCCOMB_X1_Y20_N24
\seg7instance|hex_out1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|hex_out1~5_combout\ = (\ulainstance|subtratorinstance|s~regout\) # (\seg7instance|WideOr1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulainstance|subtratorinstance|s~regout\,
	datac => \seg7instance|WideOr1~0_combout\,
	combout => \seg7instance|hex_out1~5_combout\);

-- Location: LCFF_X1_Y20_N25
\seg7instance|hex_out1[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \seg7instance|hex_out1~5_combout\,
	ena => \seg7instance|display_state.01~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out1\(5));

-- Location: LCCOMB_X1_Y20_N30
\seg7instance|hex_out1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|hex_out1~6_combout\ = (\seg7instance|WideOr0~0_combout\ & !\ulainstance|subtratorinstance|s~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \seg7instance|WideOr0~0_combout\,
	datad => \ulainstance|subtratorinstance|s~regout\,
	combout => \seg7instance|hex_out1~6_combout\);

-- Location: LCFF_X1_Y20_N31
\seg7instance|hex_out1[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \seg7instance|hex_out1~6_combout\,
	ena => \seg7instance|display_state.01~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out1\(6));

-- Location: LCCOMB_X2_Y20_N20
\seg7instance|hex_out2[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|hex_out2[0]~feeder_combout\ = \seg7instance|WideOr6~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \seg7instance|WideOr6~0_combout\,
	combout => \seg7instance|hex_out2[0]~feeder_combout\);

-- Location: LCFF_X2_Y20_N21
\seg7instance|hex_out2[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \seg7instance|hex_out2[0]~feeder_combout\,
	ena => \seg7instance|display_state.10~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out2\(0));

-- Location: LCCOMB_X2_Y20_N14
\seg7instance|hex_out2[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|hex_out2[1]~feeder_combout\ = \seg7instance|WideOr5~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \seg7instance|WideOr5~0_combout\,
	combout => \seg7instance|hex_out2[1]~feeder_combout\);

-- Location: LCFF_X2_Y20_N15
\seg7instance|hex_out2[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \seg7instance|hex_out2[1]~feeder_combout\,
	ena => \seg7instance|display_state.10~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out2\(1));

-- Location: LCCOMB_X2_Y20_N24
\seg7instance|hex_out2[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|hex_out2[2]~feeder_combout\ = \seg7instance|WideOr4~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \seg7instance|WideOr4~0_combout\,
	combout => \seg7instance|hex_out2[2]~feeder_combout\);

-- Location: LCFF_X2_Y20_N25
\seg7instance|hex_out2[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \seg7instance|hex_out2[2]~feeder_combout\,
	ena => \seg7instance|display_state.10~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out2\(2));

-- Location: LCFF_X2_Y20_N31
\seg7instance|hex_out2[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \seg7instance|WideOr3~0_combout\,
	sload => VCC,
	ena => \seg7instance|display_state.10~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out2\(3));

-- Location: LCCOMB_X2_Y20_N4
\seg7instance|hex_out2[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|hex_out2[4]~feeder_combout\ = \seg7instance|WideOr2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \seg7instance|WideOr2~0_combout\,
	combout => \seg7instance|hex_out2[4]~feeder_combout\);

-- Location: LCFF_X2_Y20_N5
\seg7instance|hex_out2[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \seg7instance|hex_out2[4]~feeder_combout\,
	ena => \seg7instance|display_state.10~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out2\(4));

-- Location: LCFF_X2_Y20_N27
\seg7instance|hex_out2[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \seg7instance|WideOr1~0_combout\,
	ena => \seg7instance|display_state.10~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out2\(5));

-- Location: LCFF_X2_Y20_N9
\seg7instance|hex_out2[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \seg7instance|WideOr0~0_combout\,
	ena => \seg7instance|display_state.10~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out2\(6));

-- Location: LCFF_X2_Y20_N7
\seg7instance|hex_out3[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \seg7instance|WideOr6~0_combout\,
	ena => \seg7instance|display_state.11~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out3\(0));

-- Location: LCFF_X2_Y20_N29
\seg7instance|hex_out3[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \seg7instance|WideOr5~0_combout\,
	ena => \seg7instance|display_state.11~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out3\(1));

-- Location: LCFF_X2_Y20_N23
\seg7instance|hex_out3[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \seg7instance|WideOr4~0_combout\,
	ena => \seg7instance|display_state.11~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out3\(2));

-- Location: LCFF_X2_Y20_N17
\seg7instance|hex_out3[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \seg7instance|WideOr3~0_combout\,
	ena => \seg7instance|display_state.11~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out3\(3));

-- Location: LCFF_X2_Y20_N11
\seg7instance|hex_out3[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \seg7instance|WideOr2~0_combout\,
	ena => \seg7instance|display_state.11~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out3\(4));

-- Location: LCCOMB_X2_Y20_N12
\seg7instance|hex_out3[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|hex_out3[5]~feeder_combout\ = \seg7instance|WideOr1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \seg7instance|WideOr1~0_combout\,
	combout => \seg7instance|hex_out3[5]~feeder_combout\);

-- Location: LCFF_X2_Y20_N13
\seg7instance|hex_out3[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \seg7instance|hex_out3[5]~feeder_combout\,
	ena => \seg7instance|display_state.11~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out3\(5));

-- Location: LCFF_X2_Y20_N3
\seg7instance|hex_out3[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \seg7instance|WideOr0~0_combout\,
	sload => VCC,
	ena => \seg7instance|display_state.11~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out3\(6));

-- Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[0]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_KEY(0));

-- Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[1]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_KEY(1));

-- Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[0]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \LEDG[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(0));

-- Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[1]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \LEDG[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(1));

-- Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[2]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \LEDG[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(2));

-- Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[0]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \LEDR[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(0));

-- Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[1]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \LEDR[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(1));

-- Location: PIN_U19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[2]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \LEDR[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(2));

-- Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[3]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \LEDR[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(3));

-- Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[4]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \LEDR[4]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(4));

-- Location: PIN_V19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[5]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \LEDR[5]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(5));

-- Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[6]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \LEDR[6]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(6));

-- Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[7]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \LEDR[7]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(7));

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp0[0]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \disp0[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp0(0));

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp0[1]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \disp0[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp0(1));

-- Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp0[2]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \disp0[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp0(2));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp0[3]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \disp0[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp0(3));

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp1[0]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \disp1[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp1(0));

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp1[1]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \disp1[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp1(1));

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp1[2]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \disp1[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp1(2));

-- Location: PIN_D22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp1[3]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_disp1(3));

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp2[0]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \disp2[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp2(0));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp2[1]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \disp2[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp2(1));

-- Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp2[2]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \disp2[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp2(2));

-- Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp2[3]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \disp2[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp2(3));

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp3[0]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \disp3[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp3(0));

-- Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp3[1]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \disp3[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp3(1));

-- Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp3[2]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \disp3[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp3(2));

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp3[3]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \disp3[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp3(3));

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[0]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \seg7instance|hex_out0\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(0));

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[1]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \seg7instance|hex_out0\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(1));

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[2]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \seg7instance|hex_out0\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(2));

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[3]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \seg7instance|hex_out0\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(3));

-- Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[4]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \seg7instance|hex_out0\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(4));

-- Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[5]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \seg7instance|hex_out0\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(5));

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[6]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \seg7instance|hex_out0\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(6));

-- Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[7]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_HEX0(7));

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[0]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \seg7instance|hex_out1\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(0));

-- Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[1]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \seg7instance|hex_out1\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(1));

-- Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[2]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \seg7instance|hex_out1\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(2));

-- Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[3]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \seg7instance|hex_out1\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(3));

-- Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[4]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \seg7instance|hex_out1\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(4));

-- Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[5]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \seg7instance|hex_out1\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(5));

-- Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[6]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \seg7instance|hex_out1\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(6));

-- Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[7]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_HEX1(7));

-- Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[0]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \seg7instance|hex_out2\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(0));

-- Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[1]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \seg7instance|hex_out2\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(1));

-- Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[2]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \seg7instance|hex_out2\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(2));

-- Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[3]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \seg7instance|hex_out2\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(3));

-- Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[4]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \seg7instance|hex_out2\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(4));

-- Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[5]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \seg7instance|hex_out2\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(5));

-- Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[6]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \seg7instance|hex_out2\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(6));

-- Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[7]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_HEX2(7));

-- Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[0]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \seg7instance|hex_out3\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(0));

-- Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[1]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \seg7instance|hex_out3\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(1));

-- Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[2]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \seg7instance|hex_out3\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(2));

-- Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[3]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \seg7instance|hex_out3\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(3));

-- Location: PIN_L8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[4]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \seg7instance|hex_out3\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(4));

-- Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[5]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \seg7instance|hex_out3\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(5));

-- Location: PIN_D4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[6]~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \seg7instance|hex_out3\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(6));

-- Location: PIN_AB11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[7]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_HEX3(7));
END structure;


