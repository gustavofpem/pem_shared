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

-- DATE "11/16/2016 18:02:54"

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
-- disp0[0]	=>  Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp0[1]	=>  Location: PIN_M19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp0[2]	=>  Location: PIN_P15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp0[3]	=>  Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp1[0]	=>  Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp1[1]	=>  Location: PIN_N22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp1[2]	=>  Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp1[3]	=>  Location: PIN_V9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp2[0]	=>  Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp2[1]	=>  Location: PIN_N21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp2[2]	=>  Location: PIN_M18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp2[3]	=>  Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp3[0]	=>  Location: PIN_L18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp3[1]	=>  Location: PIN_N15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp3[2]	=>  Location: PIN_J19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp3[3]	=>  Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[0]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[1]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[2]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[3]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[4]	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[5]	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[6]	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[7]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[0]	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[1]	=>  Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[2]	=>  Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[3]	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[4]	=>  Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[5]	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[6]	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[7]	=>  Location: PIN_AA11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[0]	=>  Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[1]	=>  Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[2]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[3]	=>  Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[4]	=>  Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[5]	=>  Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[6]	=>  Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[7]	=>  Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[0]	=>  Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[1]	=>  Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[2]	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[3]	=>  Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[4]	=>  Location: PIN_L8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[5]	=>  Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[6]	=>  Location: PIN_D4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[7]	=>  Location: PIN_N4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
SIGNAL \ulainstance|somadorinstance|Add0~1\ : std_logic;
SIGNAL \ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ : std_logic;
SIGNAL \ulainstance|somadorinstance|Add0~2_combout\ : std_logic;
SIGNAL \ulainstance|somadorinstance|Add0~3\ : std_logic;
SIGNAL \ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \ulainstance|somadorinstance|Add0~4_combout\ : std_logic;
SIGNAL \ulainstance|somadorinstance|Add0~5\ : std_logic;
SIGNAL \ulainstance|somadorinstance|Add0~6_combout\ : std_logic;
SIGNAL \ulainstance|subtratorinstance|resultado[1]~7_combout\ : std_logic;
SIGNAL \ulainstance|Mux5~0_combout\ : std_logic;
SIGNAL \ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[5]~1_combout\ : std_logic;
SIGNAL \ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[5]~2_combout\ : std_logic;
SIGNAL \ulainstance|Mux8~6_combout\ : std_logic;
SIGNAL \ulainstance|divinstance|Div0|auto_generated|divider|divider|selnose[5]~1_combout\ : std_logic;
SIGNAL \ulainstance|subtratorinstance|out~0_combout\ : std_logic;
SIGNAL \ulainstance|multinstance|Mult0|mult_core|decoder_node[0][1]~combout\ : std_logic;
SIGNAL \ulainstance|multinstance|Mult0|mult_core|decoder_node[0][2]~combout\ : std_logic;
SIGNAL \ulainstance|multinstance|Mult0|mult_core|decoder_node[2][1]~combout\ : std_logic;
SIGNAL \ulainstance|multinstance|Mult0|mult_core|decoder_node[2][2]~combout\ : std_logic;
SIGNAL \pc~0_combout\ : std_logic;
SIGNAL \LEDG[0]~reg0_regout\ : std_logic;
SIGNAL \pc~1_combout\ : std_logic;
SIGNAL \LEDG[1]~reg0_regout\ : std_logic;
SIGNAL \pc~2_combout\ : std_logic;
SIGNAL \LEDG[2]~reg0_regout\ : std_logic;
SIGNAL \CLOCK_50~combout\ : std_logic;
SIGNAL \CLOCK_50~clkctrl_outclk\ : std_logic;
SIGNAL \we_d~0_combout\ : std_logic;
SIGNAL \we_d~regout\ : std_logic;
SIGNAL \draminstance|dram~0_regout\ : std_logic;
SIGNAL \LEDR[0]~reg0_regout\ : std_logic;
SIGNAL \draminstance|dram~1_regout\ : std_logic;
SIGNAL \LEDR[1]~reg0_regout\ : std_logic;
SIGNAL \draminstance|dram~2_regout\ : std_logic;
SIGNAL \LEDR[2]~reg0feeder_combout\ : std_logic;
SIGNAL \LEDR[2]~reg0_regout\ : std_logic;
SIGNAL \draminstance|dram~3_regout\ : std_logic;
SIGNAL \LEDR[3]~reg0_regout\ : std_logic;
SIGNAL \draminstance|dram~4_regout\ : std_logic;
SIGNAL \LEDR[4]~reg0_regout\ : std_logic;
SIGNAL \draminstance|dram~5_regout\ : std_logic;
SIGNAL \LEDR[5]~reg0_regout\ : std_logic;
SIGNAL \draminstance|dram~6_regout\ : std_logic;
SIGNAL \LEDR[6]~reg0feeder_combout\ : std_logic;
SIGNAL \LEDR[6]~reg0_regout\ : std_logic;
SIGNAL \draminstance|dram~7_regout\ : std_logic;
SIGNAL \LEDR[7]~reg0_regout\ : std_logic;
SIGNAL \ulainstance|somadorinstance|Add0~0_combout\ : std_logic;
SIGNAL \ulainstance|multinstance|Mult0|mult_core|decoder_node[0][0]~combout\ : std_logic;
SIGNAL \ulainstance|Mux8~7_combout\ : std_logic;
SIGNAL \ulainstance|Mux8~4_combout\ : std_logic;
SIGNAL \ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[5]~0_combout\ : std_logic;
SIGNAL \ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ : std_logic;
SIGNAL \ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ : std_logic;
SIGNAL \ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ : std_logic;
SIGNAL \ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ : std_logic;
SIGNAL \ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ : std_logic;
SIGNAL \ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[10]~4_combout\ : std_logic;
SIGNAL \ulainstance|divinstance|Div0|auto_generated|divider|divider|selnose[5]~0_combout\ : std_logic;
SIGNAL \ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[4]~3_combout\ : std_logic;
SIGNAL \ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ : std_logic;
SIGNAL \ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[9]~5_combout\ : std_logic;
SIGNAL \ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[8]~6_combout\ : std_logic;
SIGNAL \ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\ : std_logic;
SIGNAL \ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\ : std_logic;
SIGNAL \ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\ : std_logic;
SIGNAL \ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\ : std_logic;
SIGNAL \ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ : std_logic;
SIGNAL \ulainstance|Mux8~9_combout\ : std_logic;
SIGNAL \ulainstance|Mux8~5_combout\ : std_logic;
SIGNAL \ulainstance|Mux8~8_combout\ : std_logic;
SIGNAL \disp0[0]~reg0feeder_combout\ : std_logic;
SIGNAL \disp0[0]~reg0_regout\ : std_logic;
SIGNAL \ulainstance|out_ula[1]~0_combout\ : std_logic;
SIGNAL \ulainstance|multinstance|Mult0|mult_core|decoder_node[1][0]~combout\ : std_logic;
SIGNAL \ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \ulainstance|out_ula[1]~2_combout\ : std_logic;
SIGNAL \ulainstance|out_ula[1]~3_combout\ : std_logic;
SIGNAL \ulainstance|out_ula[1]~1_combout\ : std_logic;
SIGNAL \ulainstance|Mux7~0_combout\ : std_logic;
SIGNAL \ulainstance|Mux7~1_combout\ : std_logic;
SIGNAL \ulainstance|Mux7~2_combout\ : std_logic;
SIGNAL \ulainstance|Mux7~3_combout\ : std_logic;
SIGNAL \disp0[1]~reg0feeder_combout\ : std_logic;
SIGNAL \disp0[1]~reg0_regout\ : std_logic;
SIGNAL \ulainstance|subtratorinstance|resultado[0]~6\ : std_logic;
SIGNAL \ulainstance|subtratorinstance|resultado[1]~8\ : std_logic;
SIGNAL \ulainstance|subtratorinstance|resultado[2]~10\ : std_logic;
SIGNAL \ulainstance|subtratorinstance|resultado[3]~12\ : std_logic;
SIGNAL \ulainstance|subtratorinstance|resultado[4]~13_combout\ : std_logic;
SIGNAL \ulainstance|subtratorinstance|s~0_combout\ : std_logic;
SIGNAL \ulainstance|subtratorinstance|s~regout\ : std_logic;
SIGNAL \ulainstance|subtratorinstance|resultado[0]~5_combout\ : std_logic;
SIGNAL \ulainstance|subtratorinstance|resultado[2]~9_combout\ : std_logic;
SIGNAL \ulainstance|subtratorinstance|out~1_combout\ : std_logic;
SIGNAL \ulainstance|Mux6~0_combout\ : std_logic;
SIGNAL \ulainstance|Mux6~1_combout\ : std_logic;
SIGNAL \ulainstance|Mux6~2_combout\ : std_logic;
SIGNAL \ulainstance|Mux6~3_combout\ : std_logic;
SIGNAL \disp0[2]~reg0_regout\ : std_logic;
SIGNAL \ulainstance|Mux5~1_combout\ : std_logic;
SIGNAL \ulainstance|Mux5~2_combout\ : std_logic;
SIGNAL \ulainstance|subtratorinstance|resultado[3]~11_combout\ : std_logic;
SIGNAL \ulainstance|subtratorinstance|Add1~0_combout\ : std_logic;
SIGNAL \ulainstance|subtratorinstance|out~2_combout\ : std_logic;
SIGNAL \ulainstance|multinstance|Mult0|mult_core|decoder_node[1][2]~combout\ : std_logic;
SIGNAL \ulainstance|multinstance|Mult0|mult_core|decoder_node[1][1]~combout\ : std_logic;
SIGNAL \ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ : std_logic;
SIGNAL \ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ : std_logic;
SIGNAL \ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \ulainstance|multinstance|Mult0|mult_core|decoder_node[2][0]~combout\ : std_logic;
SIGNAL \ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\ : std_logic;
SIGNAL \ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \ulainstance|Mux5~3_combout\ : std_logic;
SIGNAL \ulainstance|Mux5~4_combout\ : std_logic;
SIGNAL \ulainstance|Mux5~5_combout\ : std_logic;
SIGNAL \disp0[3]~reg0feeder_combout\ : std_logic;
SIGNAL \disp0[3]~reg0_regout\ : std_logic;
SIGNAL \ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ : std_logic;
SIGNAL \ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\ : std_logic;
SIGNAL \ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \ulainstance|Mux4~2_combout\ : std_logic;
SIGNAL \disp1[1]~reg0feeder_combout\ : std_logic;
SIGNAL \disp1[1]~reg0_regout\ : std_logic;
SIGNAL \ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\ : std_logic;
SIGNAL \ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \ulainstance|Mux3~2_combout\ : std_logic;
SIGNAL \disp1[2]~reg0_regout\ : std_logic;
SIGNAL \disp2[0]~reg0feeder_combout\ : std_logic;
SIGNAL \disp2[0]~reg0_regout\ : std_logic;
SIGNAL \disp2[1]~reg0_regout\ : std_logic;
SIGNAL \disp2[2]~reg0_regout\ : std_logic;
SIGNAL \disp2[3]~reg0_regout\ : std_logic;
SIGNAL \disp3[0]~reg0_regout\ : std_logic;
SIGNAL \disp3[1]~reg0_regout\ : std_logic;
SIGNAL \disp3[2]~reg0feeder_combout\ : std_logic;
SIGNAL \disp3[2]~reg0_regout\ : std_logic;
SIGNAL \disp3[3]~reg0feeder_combout\ : std_logic;
SIGNAL \disp3[3]~reg0_regout\ : std_logic;
SIGNAL \seg7instance|display_state.01~0_combout\ : std_logic;
SIGNAL \seg7instance|display_state.01~regout\ : std_logic;
SIGNAL \seg7instance|display_state.10~feeder_combout\ : std_logic;
SIGNAL \seg7instance|display_state.10~regout\ : std_logic;
SIGNAL \seg7instance|display_state.11~regout\ : std_logic;
SIGNAL \seg7instance|display_state.00~0_combout\ : std_logic;
SIGNAL \seg7instance|display_state.00~regout\ : std_logic;
SIGNAL \seg7instance|Selector0~0_combout\ : std_logic;
SIGNAL \seg7instance|Selector0~1_combout\ : std_logic;
SIGNAL \seg7instance|Selector1~0_combout\ : std_logic;
SIGNAL \seg7instance|Selector1~1_combout\ : std_logic;
SIGNAL \seg7instance|Selector3~0_combout\ : std_logic;
SIGNAL \seg7instance|Selector3~1_combout\ : std_logic;
SIGNAL \seg7instance|Selector1~2_combout\ : std_logic;
SIGNAL \seg7instance|Selector1~3_combout\ : std_logic;
SIGNAL \seg7instance|WideOr6~0_combout\ : std_logic;
SIGNAL \seg7instance|hex_out0[0]~feeder_combout\ : std_logic;
SIGNAL \seg7instance|Selector2~0_combout\ : std_logic;
SIGNAL \seg7instance|Selector2~1_combout\ : std_logic;
SIGNAL \seg7instance|WideOr5~0_combout\ : std_logic;
SIGNAL \seg7instance|hex_out0[1]~feeder_combout\ : std_logic;
SIGNAL \seg7instance|WideOr4~0_combout\ : std_logic;
SIGNAL \seg7instance|hex_out0[2]~feeder_combout\ : std_logic;
SIGNAL \seg7instance|WideOr3~0_combout\ : std_logic;
SIGNAL \seg7instance|hex_out0[3]~feeder_combout\ : std_logic;
SIGNAL \seg7instance|WideOr2~0_combout\ : std_logic;
SIGNAL \seg7instance|hex_out0[4]~feeder_combout\ : std_logic;
SIGNAL \seg7instance|WideOr1~0_combout\ : std_logic;
SIGNAL \seg7instance|hex_out0[5]~feeder_combout\ : std_logic;
SIGNAL \seg7instance|WideOr0~0_combout\ : std_logic;
SIGNAL \seg7instance|hex_out0[6]~feeder_combout\ : std_logic;
SIGNAL \seg7instance|hex_out1~0_combout\ : std_logic;
SIGNAL \seg7instance|hex_out1~1_combout\ : std_logic;
SIGNAL \seg7instance|hex_out1~2_combout\ : std_logic;
SIGNAL \seg7instance|hex_out1~3_combout\ : std_logic;
SIGNAL \seg7instance|hex_out1~4_combout\ : std_logic;
SIGNAL \seg7instance|hex_out1~5_combout\ : std_logic;
SIGNAL \seg7instance|hex_out1~6_combout\ : std_logic;
SIGNAL \seg7instance|hex_out2[0]~feeder_combout\ : std_logic;
SIGNAL \seg7instance|hex_out2[1]~feeder_combout\ : std_logic;
SIGNAL \seg7instance|hex_out2[2]~feeder_combout\ : std_logic;
SIGNAL \seg7instance|hex_out2[4]~feeder_combout\ : std_logic;
SIGNAL \seg7instance|hex_out2[6]~feeder_combout\ : std_logic;
SIGNAL \SW~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \KEY~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ulainstance|divinstance|Div0|auto_generated|divider|divider|selnose\ : std_logic_vector(19 DOWNTO 0);
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

-- Location: LCCOMB_X49_Y12_N0
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

-- Location: LCCOMB_X47_Y12_N6
\ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ = (\draminstance|dram~4_regout\ & (\draminstance|dram~1_regout\ $ (VCC))) # (!\draminstance|dram~4_regout\ & ((\draminstance|dram~1_regout\) # (GND)))
-- \ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ = CARRY((\draminstance|dram~1_regout\) # (!\draminstance|dram~4_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \draminstance|dram~4_regout\,
	datab => \draminstance|dram~1_regout\,
	datad => VCC,
	combout => \ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	cout => \ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\);

-- Location: LCCOMB_X49_Y12_N2
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

-- Location: LCCOMB_X46_Y12_N24
\ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ = (\ulainstance|multinstance|Mult0|mult_core|decoder_node[0][2]~combout\ & ((\ulainstance|multinstance|Mult0|mult_core|decoder_node[1][1]~combout\ & 
-- (\ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ & VCC)) # (!\ulainstance|multinstance|Mult0|mult_core|decoder_node[1][1]~combout\ & (!\ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)))) # 
-- (!\ulainstance|multinstance|Mult0|mult_core|decoder_node[0][2]~combout\ & ((\ulainstance|multinstance|Mult0|mult_core|decoder_node[1][1]~combout\ & (!\ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)) # 
-- (!\ulainstance|multinstance|Mult0|mult_core|decoder_node[1][1]~combout\ & ((\ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\) # (GND)))))
-- \ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ = CARRY((\ulainstance|multinstance|Mult0|mult_core|decoder_node[0][2]~combout\ & (!\ulainstance|multinstance|Mult0|mult_core|decoder_node[1][1]~combout\ & 
-- !\ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)) # (!\ulainstance|multinstance|Mult0|mult_core|decoder_node[0][2]~combout\ & ((!\ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\) # 
-- (!\ulainstance|multinstance|Mult0|mult_core|decoder_node[1][1]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ulainstance|multinstance|Mult0|mult_core|decoder_node[0][2]~combout\,
	datab => \ulainstance|multinstance|Mult0|mult_core|decoder_node[1][1]~combout\,
	datad => VCC,
	cin => \ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\,
	combout => \ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	cout => \ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\);

-- Location: LCCOMB_X46_Y12_N4
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

-- Location: LCCOMB_X49_Y12_N4
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

-- Location: LCCOMB_X49_Y12_N6
\ulainstance|somadorinstance|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|somadorinstance|Add0~6_combout\ = \draminstance|dram~7_regout\ $ (\ulainstance|somadorinstance|Add0~5\ $ (\draminstance|dram~3_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \draminstance|dram~7_regout\,
	datad => \draminstance|dram~3_regout\,
	cin => \ulainstance|somadorinstance|Add0~5\,
	combout => \ulainstance|somadorinstance|Add0~6_combout\);

-- Location: LCFF_X49_Y12_N17
\ulainstance|subtratorinstance|resultado[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ulainstance|subtratorinstance|resultado[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ulainstance|subtratorinstance|resultado\(1));

-- Location: LCCOMB_X49_Y12_N16
\ulainstance|subtratorinstance|resultado[1]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|subtratorinstance|resultado[1]~7_combout\ = (\draminstance|dram~5_regout\ & ((\draminstance|dram~1_regout\ & (!\ulainstance|subtratorinstance|resultado[0]~6\)) # (!\draminstance|dram~1_regout\ & 
-- ((\ulainstance|subtratorinstance|resultado[0]~6\) # (GND))))) # (!\draminstance|dram~5_regout\ & ((\draminstance|dram~1_regout\ & (\ulainstance|subtratorinstance|resultado[0]~6\ & VCC)) # (!\draminstance|dram~1_regout\ & 
-- (!\ulainstance|subtratorinstance|resultado[0]~6\))))
-- \ulainstance|subtratorinstance|resultado[1]~8\ = CARRY((\draminstance|dram~5_regout\ & ((!\ulainstance|subtratorinstance|resultado[0]~6\) # (!\draminstance|dram~1_regout\))) # (!\draminstance|dram~5_regout\ & (!\draminstance|dram~1_regout\ & 
-- !\ulainstance|subtratorinstance|resultado[0]~6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \draminstance|dram~5_regout\,
	datab => \draminstance|dram~1_regout\,
	datad => VCC,
	cin => \ulainstance|subtratorinstance|resultado[0]~6\,
	combout => \ulainstance|subtratorinstance|resultado[1]~7_combout\,
	cout => \ulainstance|subtratorinstance|resultado[1]~8\);

-- Location: LCCOMB_X48_Y13_N24
\ulainstance|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|Mux5~0_combout\ = (!\draminstance|dram~6_regout\ & !\draminstance|dram~7_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \draminstance|dram~6_regout\,
	datad => \draminstance|dram~7_regout\,
	combout => \ulainstance|Mux5~0_combout\);

-- Location: LCCOMB_X47_Y12_N30
\ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[5]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[5]~1_combout\ = (\draminstance|dram~5_regout\ & (\draminstance|dram~4_regout\ & !\draminstance|dram~2_regout\)) # (!\draminstance|dram~5_regout\ & (!\draminstance|dram~4_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \draminstance|dram~5_regout\,
	datab => \draminstance|dram~4_regout\,
	datad => \draminstance|dram~2_regout\,
	combout => \ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[5]~1_combout\);

-- Location: LCCOMB_X47_Y12_N0
\ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[5]~2_combout\ = (\draminstance|dram~3_regout\ & ((\draminstance|dram~7_regout\) # ((\draminstance|dram~6_regout\) # 
-- (\ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[5]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \draminstance|dram~7_regout\,
	datab => \draminstance|dram~6_regout\,
	datac => \draminstance|dram~3_regout\,
	datad => \ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[5]~1_combout\,
	combout => \ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[5]~2_combout\);

-- Location: LCFF_X48_Y12_N11
\ulainstance|subtratorinstance|out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \ulainstance|subtratorinstance|resultado\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ulainstance|subtratorinstance|out\(0));

-- Location: LCCOMB_X48_Y12_N10
\ulainstance|Mux8~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|Mux8~6_combout\ = (!opcode(0) & (\ulainstance|subtratorinstance|out\(0) & opcode(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => opcode(0),
	datac => \ulainstance|subtratorinstance|out\(0),
	datad => opcode(1),
	combout => \ulainstance|Mux8~6_combout\);

-- Location: LCFF_X48_Y12_N7
\ulainstance|subtratorinstance|out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ulainstance|subtratorinstance|out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ulainstance|subtratorinstance|out\(1));

-- Location: LCCOMB_X48_Y13_N16
\ulainstance|divinstance|Div0|auto_generated|divider|divider|selnose[10]\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|divinstance|Div0|auto_generated|divider|divider|selnose\(10) = (\draminstance|dram~7_regout\) # (\ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \draminstance|dram~7_regout\,
	datad => \ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	combout => \ulainstance|divinstance|Div0|auto_generated|divider|divider|selnose\(10));

-- Location: LCCOMB_X47_Y13_N0
\ulainstance|divinstance|Div0|auto_generated|divider|divider|selnose[5]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|divinstance|Div0|auto_generated|divider|divider|selnose[5]~1_combout\ = (\ulainstance|divinstance|Div0|auto_generated|divider|divider|selnose[5]~0_combout\) # ((\draminstance|dram~4_regout\ & !\draminstance|dram~2_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ulainstance|divinstance|Div0|auto_generated|divider|divider|selnose[5]~0_combout\,
	datac => \draminstance|dram~4_regout\,
	datad => \draminstance|dram~2_regout\,
	combout => \ulainstance|divinstance|Div0|auto_generated|divider|divider|selnose[5]~1_combout\);

-- Location: LCCOMB_X48_Y12_N6
\ulainstance|subtratorinstance|out~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|subtratorinstance|out~0_combout\ = \ulainstance|subtratorinstance|resultado\(1) $ (((\ulainstance|subtratorinstance|s~regout\ & \ulainstance|subtratorinstance|resultado\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulainstance|subtratorinstance|resultado\(1),
	datab => \ulainstance|subtratorinstance|s~regout\,
	datac => \ulainstance|subtratorinstance|resultado\(0),
	combout => \ulainstance|subtratorinstance|out~0_combout\);

-- Location: LCCOMB_X46_Y12_N16
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

-- Location: LCCOMB_X46_Y12_N12
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

-- Location: LCCOMB_X46_Y12_N20
\ulainstance|multinstance|Mult0|mult_core|decoder_node[2][1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|multinstance|Mult0|mult_core|decoder_node[2][1]~combout\ = (\draminstance|dram~6_regout\ & \draminstance|dram~1_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \draminstance|dram~6_regout\,
	datad => \draminstance|dram~1_regout\,
	combout => \ulainstance|multinstance|Mult0|mult_core|decoder_node[2][1]~combout\);

-- Location: LCCOMB_X46_Y12_N14
\ulainstance|multinstance|Mult0|mult_core|decoder_node[2][2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|multinstance|Mult0|mult_core|decoder_node[2][2]~combout\ = (\draminstance|dram~2_regout\ & \draminstance|dram~6_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \draminstance|dram~2_regout\,
	datad => \draminstance|dram~6_regout\,
	combout => \ulainstance|multinstance|Mult0|mult_core|decoder_node[2][2]~combout\);

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

-- Location: LCFF_X49_Y13_N11
\opcode[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	sdata => \pc~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => opcode(0));

-- Location: LCCOMB_X49_Y13_N4
\pc~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc~0_combout\ = (!opcode(2) & !opcode(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcode(2),
	datad => opcode(0),
	combout => \pc~0_combout\);

-- Location: LCFF_X49_Y13_N21
\LEDG[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	sdata => \pc~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LEDG[0]~reg0_regout\);

-- Location: LCFF_X49_Y13_N3
\opcode[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	sdata => \pc~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => opcode(1));

-- Location: LCCOMB_X49_Y13_N20
\pc~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc~1_combout\ = (!opcode(2) & (opcode(1) $ (opcode(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcode(2),
	datab => opcode(1),
	datad => opcode(0),
	combout => \pc~1_combout\);

-- Location: LCFF_X49_Y13_N15
\LEDG[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	sdata => \pc~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LEDG[1]~reg0_regout\);

-- Location: LCCOMB_X49_Y13_N14
\pc~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc~2_combout\ = (!opcode(2) & (opcode(1) & opcode(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcode(2),
	datab => opcode(1),
	datad => opcode(0),
	combout => \pc~2_combout\);

-- Location: LCFF_X49_Y13_N5
\LEDG[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	sdata => \pc~2_combout\,
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

-- Location: LCFF_X46_Y12_N29
\data[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \SW~combout\(4),
	sload => VCC,
	ena => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => data(0));

-- Location: LCCOMB_X45_Y12_N4
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

-- Location: LCFF_X45_Y12_N5
we_d : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \we_d~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \we_d~regout\);

-- Location: LCFF_X46_Y12_N15
\draminstance|dram~0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => data(0),
	sload => VCC,
	ena => \we_d~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \draminstance|dram~0_regout\);

-- Location: LCFF_X49_Y12_N1
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

-- Location: LCFF_X47_Y12_N23
\data[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \SW~combout\(5),
	sload => VCC,
	ena => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => data(1));

-- Location: LCFF_X47_Y12_N7
\draminstance|dram~1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => data(1),
	sload => VCC,
	ena => \we_d~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \draminstance|dram~1_regout\);

-- Location: LCFF_X49_Y12_N3
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

-- Location: LCFF_X46_Y12_N31
\data[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \SW~combout\(6),
	sload => VCC,
	ena => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => data(2));

-- Location: LCFF_X47_Y12_N11
\draminstance|dram~2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => data(2),
	sload => VCC,
	ena => \we_d~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \draminstance|dram~2_regout\);

-- Location: LCCOMB_X49_Y12_N12
\LEDR[2]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \LEDR[2]~reg0feeder_combout\ = \draminstance|dram~2_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \draminstance|dram~2_regout\,
	combout => \LEDR[2]~reg0feeder_combout\);

-- Location: LCFF_X49_Y12_N13
\LEDR[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \LEDR[2]~reg0feeder_combout\,
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

-- Location: LCFF_X46_Y12_N11
\data[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \SW~combout\(7),
	sload => VCC,
	ena => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => data(3));

-- Location: LCFF_X47_Y12_N1
\draminstance|dram~3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => data(3),
	sload => VCC,
	ena => \we_d~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \draminstance|dram~3_regout\);

-- Location: LCFF_X49_Y12_N11
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

-- Location: LCFF_X47_Y12_N19
\data[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \SW~combout\(0),
	sload => VCC,
	ena => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => data(4));

-- Location: LCFF_X47_Y12_N15
\draminstance|dram~4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => data(4),
	sload => VCC,
	ena => \we_d~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \draminstance|dram~4_regout\);

-- Location: LCFF_X49_Y12_N5
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

-- Location: LCFF_X47_Y12_N21
\data[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \SW~combout\(1),
	sload => VCC,
	ena => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => data(5));

-- Location: LCFF_X47_Y12_N17
\draminstance|dram~5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => data(5),
	sload => VCC,
	ena => \we_d~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \draminstance|dram~5_regout\);

-- Location: LCFF_X49_Y12_N7
\LEDR[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \draminstance|dram~5_regout\,
	sload => VCC,
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

-- Location: LCFF_X47_Y12_N27
\data[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \SW~combout\(2),
	sload => VCC,
	ena => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => data(6));

-- Location: LCFF_X47_Y12_N31
\draminstance|dram~6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => data(6),
	sload => VCC,
	ena => \we_d~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \draminstance|dram~6_regout\);

-- Location: LCCOMB_X49_Y12_N24
\LEDR[6]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \LEDR[6]~reg0feeder_combout\ = \draminstance|dram~6_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \draminstance|dram~6_regout\,
	combout => \LEDR[6]~reg0feeder_combout\);

-- Location: LCFF_X49_Y12_N25
\LEDR[6]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \LEDR[6]~reg0feeder_combout\,
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

-- Location: LCFF_X46_Y12_N7
\data[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \SW~combout\(3),
	sload => VCC,
	ena => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => data(7));

-- Location: LCFF_X47_Y12_N29
\draminstance|dram~7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => data(7),
	sload => VCC,
	ena => \we_d~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \draminstance|dram~7_regout\);

-- Location: LCFF_X49_Y12_N29
\LEDR[7]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \draminstance|dram~7_regout\,
	sload => VCC,
	ena => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LEDR[7]~reg0_regout\);

-- Location: LCFF_X49_Y13_N25
\opcode[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	sdata => \pc~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => opcode(2));

-- Location: LCCOMB_X48_Y12_N26
\ulainstance|multinstance|Mult0|mult_core|decoder_node[0][0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|multinstance|Mult0|mult_core|decoder_node[0][0]~combout\ = (\draminstance|dram~0_regout\ & \draminstance|dram~4_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \draminstance|dram~0_regout\,
	datad => \draminstance|dram~4_regout\,
	combout => \ulainstance|multinstance|Mult0|mult_core|decoder_node[0][0]~combout\);

-- Location: LCCOMB_X48_Y12_N16
\ulainstance|Mux8~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|Mux8~7_combout\ = (opcode(0) & ((opcode(1) & ((\ulainstance|multinstance|Mult0|mult_core|decoder_node[0][0]~combout\))) # (!opcode(1) & (\ulainstance|somadorinstance|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcode(1),
	datab => \ulainstance|somadorinstance|Add0~0_combout\,
	datac => opcode(0),
	datad => \ulainstance|multinstance|Mult0|mult_core|decoder_node[0][0]~combout\,
	combout => \ulainstance|Mux8~7_combout\);

-- Location: LCCOMB_X48_Y12_N14
\ulainstance|Mux8~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|Mux8~4_combout\ = (\draminstance|dram~4_regout\ & ((opcode(0)) # ((\draminstance|dram~0_regout\ & !opcode(1))))) # (!\draminstance|dram~4_regout\ & (opcode(0) & ((\draminstance|dram~0_regout\) # (opcode(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \draminstance|dram~4_regout\,
	datab => \draminstance|dram~0_regout\,
	datac => opcode(1),
	datad => opcode(0),
	combout => \ulainstance|Mux8~4_combout\);

-- Location: LCCOMB_X48_Y13_N14
\ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[5]~0_combout\ = (!\draminstance|dram~4_regout\ & !\draminstance|dram~5_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \draminstance|dram~4_regout\,
	datad => \draminstance|dram~5_regout\,
	combout => \ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[5]~0_combout\);

-- Location: LCCOMB_X47_Y12_N8
\ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ = (\ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[4]~3_combout\ & ((\draminstance|dram~5_regout\ & 
-- (!\ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)) # (!\draminstance|dram~5_regout\ & (\ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ & VCC)))) # 
-- (!\ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[4]~3_combout\ & ((\draminstance|dram~5_regout\ & ((\ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\) # (GND))) # (!\draminstance|dram~5_regout\ 
-- & (!\ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\))))
-- \ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ = CARRY((\ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[4]~3_combout\ & (\draminstance|dram~5_regout\ & 
-- !\ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)) # (!\ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[4]~3_combout\ & ((\draminstance|dram~5_regout\) # 
-- (!\ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[4]~3_combout\,
	datab => \draminstance|dram~5_regout\,
	datad => VCC,
	cin => \ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\,
	combout => \ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	cout => \ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\);

-- Location: LCCOMB_X47_Y12_N10
\ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ = ((\ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[5]~2_combout\ $ (\draminstance|dram~6_regout\ $ 
-- (\ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)))) # (GND)
-- \ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ = CARRY((\ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[5]~2_combout\ & 
-- ((!\ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\) # (!\draminstance|dram~6_regout\))) # (!\ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[5]~2_combout\ & (!\draminstance|dram~6_regout\ & 
-- !\ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[5]~2_combout\,
	datab => \draminstance|dram~6_regout\,
	datad => VCC,
	cin => \ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\,
	combout => \ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	cout => \ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\);

-- Location: LCCOMB_X47_Y12_N12
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

-- Location: LCCOMB_X47_Y12_N4
\ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[10]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[10]~4_combout\ = (\draminstance|dram~7_regout\ & (\ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[5]~2_combout\)) # (!\draminstance|dram~7_regout\ & 
-- ((\ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[5]~2_combout\)) # 
-- (!\ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[5]~2_combout\,
	datab => \draminstance|dram~7_regout\,
	datac => \ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	datad => \ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	combout => \ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[10]~4_combout\);

-- Location: LCCOMB_X47_Y12_N16
\ulainstance|divinstance|Div0|auto_generated|divider|divider|selnose[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|divinstance|Div0|auto_generated|divider|divider|selnose[5]~0_combout\ = (\draminstance|dram~7_regout\) # ((\draminstance|dram~6_regout\) # ((!\draminstance|dram~3_regout\ & \draminstance|dram~5_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \draminstance|dram~7_regout\,
	datab => \draminstance|dram~3_regout\,
	datac => \draminstance|dram~5_regout\,
	datad => \draminstance|dram~6_regout\,
	combout => \ulainstance|divinstance|Div0|auto_generated|divider|divider|selnose[5]~0_combout\);

-- Location: LCCOMB_X47_Y12_N14
\ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[4]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[4]~3_combout\ = (\draminstance|dram~2_regout\ & ((\ulainstance|divinstance|Div0|auto_generated|divider|divider|selnose[5]~0_combout\) # (!\draminstance|dram~4_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \draminstance|dram~2_regout\,
	datac => \draminstance|dram~4_regout\,
	datad => \ulainstance|divinstance|Div0|auto_generated|divider|divider|selnose[5]~0_combout\,
	combout => \ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[4]~3_combout\);

-- Location: LCCOMB_X47_Y12_N2
\ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[9]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[9]~5_combout\ = (\draminstance|dram~7_regout\ & (\ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[4]~3_combout\)) # (!\draminstance|dram~7_regout\ & 
-- ((\ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[4]~3_combout\)) # 
-- (!\ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \draminstance|dram~7_regout\,
	datab => \ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[4]~3_combout\,
	datac => \ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	datad => \ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	combout => \ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[9]~5_combout\);

-- Location: LCCOMB_X47_Y12_N28
\ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[8]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[8]~6_combout\ = (\draminstance|dram~7_regout\ & (((\draminstance|dram~1_regout\)))) # (!\draminstance|dram~7_regout\ & 
-- ((\ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\draminstance|dram~1_regout\))) # (!\ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & 
-- (\ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	datab => \draminstance|dram~1_regout\,
	datac => \draminstance|dram~7_regout\,
	datad => \ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	combout => \ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[8]~6_combout\);

-- Location: LCCOMB_X47_Y12_N18
\ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\ = CARRY((\draminstance|dram~0_regout\) # (!\draminstance|dram~4_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \draminstance|dram~0_regout\,
	datab => \draminstance|dram~4_regout\,
	datad => VCC,
	cout => \ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\);

-- Location: LCCOMB_X47_Y12_N20
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

-- Location: LCCOMB_X47_Y12_N22
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

-- Location: LCCOMB_X47_Y12_N24
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

-- Location: LCCOMB_X47_Y12_N26
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

-- Location: LCCOMB_X48_Y12_N18
\ulainstance|Mux8~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|Mux8~9_combout\ = (\ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\) # ((!\draminstance|dram~6_regout\ & (!\draminstance|dram~7_regout\ & 
-- \ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[5]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \draminstance|dram~6_regout\,
	datab => \draminstance|dram~7_regout\,
	datac => \ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[5]~0_combout\,
	datad => \ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	combout => \ulainstance|Mux8~9_combout\);

-- Location: LCCOMB_X48_Y12_N0
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

-- Location: LCCOMB_X48_Y12_N24
\ulainstance|Mux8~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|Mux8~8_combout\ = (opcode(2) & (((\ulainstance|Mux8~5_combout\)))) # (!opcode(2) & ((\ulainstance|Mux8~6_combout\) # ((\ulainstance|Mux8~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulainstance|Mux8~6_combout\,
	datab => opcode(2),
	datac => \ulainstance|Mux8~7_combout\,
	datad => \ulainstance|Mux8~5_combout\,
	combout => \ulainstance|Mux8~8_combout\);

-- Location: LCFF_X48_Y12_N25
\ulainstance|out_ula[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ulainstance|Mux8~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ulainstance|out_ula\(0));

-- Location: LCCOMB_X49_Y15_N4
\disp0[0]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp0[0]~reg0feeder_combout\ = \ulainstance|out_ula\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ulainstance|out_ula\(0),
	combout => \disp0[0]~reg0feeder_combout\);

-- Location: LCFF_X49_Y15_N5
\disp0[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \disp0[0]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \disp0[0]~reg0_regout\);

-- Location: LCCOMB_X49_Y13_N8
\ulainstance|out_ula[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|out_ula[1]~0_combout\ = (opcode(1) & !opcode(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => opcode(1),
	datad => opcode(2),
	combout => \ulainstance|out_ula[1]~0_combout\);

-- Location: LCCOMB_X46_Y12_N30
\ulainstance|multinstance|Mult0|mult_core|decoder_node[1][0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|multinstance|Mult0|mult_core|decoder_node[1][0]~combout\ = (\draminstance|dram~0_regout\ & \draminstance|dram~5_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \draminstance|dram~0_regout\,
	datad => \draminstance|dram~5_regout\,
	combout => \ulainstance|multinstance|Mult0|mult_core|decoder_node[1][0]~combout\);

-- Location: LCCOMB_X46_Y12_N22
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

-- Location: LCCOMB_X48_Y13_N26
\ulainstance|out_ula[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|out_ula[1]~2_combout\ = (opcode(2)) # ((opcode(0) & !opcode(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => opcode(2),
	datac => opcode(0),
	datad => opcode(1),
	combout => \ulainstance|out_ula[1]~2_combout\);

-- Location: LCCOMB_X48_Y13_N4
\ulainstance|out_ula[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|out_ula[1]~3_combout\ = (opcode(2)) # ((opcode(0) & opcode(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => opcode(2),
	datac => opcode(0),
	datad => opcode(1),
	combout => \ulainstance|out_ula[1]~3_combout\);

-- Location: LCCOMB_X48_Y13_N18
\ulainstance|op_xorinstance|out[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|op_xorinstance|out\(1) = \draminstance|dram~5_regout\ $ (\draminstance|dram~1_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \draminstance|dram~5_regout\,
	datad => \draminstance|dram~1_regout\,
	combout => \ulainstance|op_xorinstance|out\(1));

-- Location: LCCOMB_X48_Y13_N8
\ulainstance|out_ula[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|out_ula[1]~1_combout\ = (opcode(1) & (((!opcode(0)) # (!\ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[5]~0_combout\)) # (!\ulainstance|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulainstance|Mux5~0_combout\,
	datab => \ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[5]~0_combout\,
	datac => opcode(0),
	datad => opcode(1),
	combout => \ulainstance|out_ula[1]~1_combout\);

-- Location: LCCOMB_X48_Y13_N10
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

-- Location: LCCOMB_X48_Y13_N12
\ulainstance|Mux7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|Mux7~1_combout\ = (\ulainstance|out_ula[1]~1_combout\ & ((\ulainstance|Mux7~0_combout\ & ((\ulainstance|op_xorinstance|out\(1)))) # (!\ulainstance|Mux7~0_combout\ & 
-- (!\ulainstance|divinstance|Div0|auto_generated|divider|divider|selnose\(10))))) # (!\ulainstance|out_ula[1]~1_combout\ & (((\ulainstance|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulainstance|divinstance|Div0|auto_generated|divider|divider|selnose\(10),
	datab => \ulainstance|op_xorinstance|out\(1),
	datac => \ulainstance|out_ula[1]~1_combout\,
	datad => \ulainstance|Mux7~0_combout\,
	combout => \ulainstance|Mux7~1_combout\);

-- Location: LCCOMB_X48_Y13_N30
\ulainstance|Mux7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|Mux7~2_combout\ = (\ulainstance|out_ula[1]~2_combout\ & ((\ulainstance|out_ula[1]~3_combout\ & ((\ulainstance|Mux7~1_combout\))) # (!\ulainstance|out_ula[1]~3_combout\ & (\ulainstance|somadorinstance|Add0~2_combout\)))) # 
-- (!\ulainstance|out_ula[1]~2_combout\ & (((\ulainstance|out_ula[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulainstance|somadorinstance|Add0~2_combout\,
	datab => \ulainstance|out_ula[1]~2_combout\,
	datac => \ulainstance|out_ula[1]~3_combout\,
	datad => \ulainstance|Mux7~1_combout\,
	combout => \ulainstance|Mux7~2_combout\);

-- Location: LCCOMB_X48_Y13_N28
\ulainstance|Mux7~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|Mux7~3_combout\ = (\ulainstance|out_ula[1]~0_combout\ & ((\ulainstance|Mux7~2_combout\ & ((\ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\))) # (!\ulainstance|Mux7~2_combout\ & 
-- (\ulainstance|subtratorinstance|out\(1))))) # (!\ulainstance|out_ula[1]~0_combout\ & (((\ulainstance|Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulainstance|subtratorinstance|out\(1),
	datab => \ulainstance|out_ula[1]~0_combout\,
	datac => \ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	datad => \ulainstance|Mux7~2_combout\,
	combout => \ulainstance|Mux7~3_combout\);

-- Location: LCFF_X48_Y13_N29
\ulainstance|out_ula[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ulainstance|Mux7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ulainstance|out_ula\(1));

-- Location: LCCOMB_X49_Y13_N6
\disp0[1]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp0[1]~reg0feeder_combout\ = \ulainstance|out_ula\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ulainstance|out_ula\(1),
	combout => \disp0[1]~reg0feeder_combout\);

-- Location: LCFF_X49_Y13_N7
\disp0[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \disp0[1]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \disp0[1]~reg0_regout\);

-- Location: LCCOMB_X49_Y12_N14
\ulainstance|subtratorinstance|resultado[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|subtratorinstance|resultado[0]~5_combout\ = (\draminstance|dram~0_regout\ & ((GND) # (!\draminstance|dram~4_regout\))) # (!\draminstance|dram~0_regout\ & (\draminstance|dram~4_regout\ $ (GND)))
-- \ulainstance|subtratorinstance|resultado[0]~6\ = CARRY((\draminstance|dram~0_regout\) # (!\draminstance|dram~4_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \draminstance|dram~0_regout\,
	datab => \draminstance|dram~4_regout\,
	datad => VCC,
	combout => \ulainstance|subtratorinstance|resultado[0]~5_combout\,
	cout => \ulainstance|subtratorinstance|resultado[0]~6\);

-- Location: LCCOMB_X49_Y12_N18
\ulainstance|subtratorinstance|resultado[2]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|subtratorinstance|resultado[2]~9_combout\ = ((\draminstance|dram~2_regout\ $ (\draminstance|dram~6_regout\ $ (\ulainstance|subtratorinstance|resultado[1]~8\)))) # (GND)
-- \ulainstance|subtratorinstance|resultado[2]~10\ = CARRY((\draminstance|dram~2_regout\ & ((!\ulainstance|subtratorinstance|resultado[1]~8\) # (!\draminstance|dram~6_regout\))) # (!\draminstance|dram~2_regout\ & (!\draminstance|dram~6_regout\ & 
-- !\ulainstance|subtratorinstance|resultado[1]~8\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \draminstance|dram~2_regout\,
	datab => \draminstance|dram~6_regout\,
	datad => VCC,
	cin => \ulainstance|subtratorinstance|resultado[1]~8\,
	combout => \ulainstance|subtratorinstance|resultado[2]~9_combout\,
	cout => \ulainstance|subtratorinstance|resultado[2]~10\);

-- Location: LCCOMB_X49_Y12_N20
\ulainstance|subtratorinstance|resultado[3]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|subtratorinstance|resultado[3]~11_combout\ = (\draminstance|dram~3_regout\ & ((\draminstance|dram~7_regout\ & (!\ulainstance|subtratorinstance|resultado[2]~10\)) # (!\draminstance|dram~7_regout\ & 
-- (\ulainstance|subtratorinstance|resultado[2]~10\ & VCC)))) # (!\draminstance|dram~3_regout\ & ((\draminstance|dram~7_regout\ & ((\ulainstance|subtratorinstance|resultado[2]~10\) # (GND))) # (!\draminstance|dram~7_regout\ & 
-- (!\ulainstance|subtratorinstance|resultado[2]~10\))))
-- \ulainstance|subtratorinstance|resultado[3]~12\ = CARRY((\draminstance|dram~3_regout\ & (\draminstance|dram~7_regout\ & !\ulainstance|subtratorinstance|resultado[2]~10\)) # (!\draminstance|dram~3_regout\ & ((\draminstance|dram~7_regout\) # 
-- (!\ulainstance|subtratorinstance|resultado[2]~10\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \draminstance|dram~3_regout\,
	datab => \draminstance|dram~7_regout\,
	datad => VCC,
	cin => \ulainstance|subtratorinstance|resultado[2]~10\,
	combout => \ulainstance|subtratorinstance|resultado[3]~11_combout\,
	cout => \ulainstance|subtratorinstance|resultado[3]~12\);

-- Location: LCCOMB_X49_Y12_N22
\ulainstance|subtratorinstance|resultado[4]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|subtratorinstance|resultado[4]~13_combout\ = \ulainstance|subtratorinstance|resultado[3]~12\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \ulainstance|subtratorinstance|resultado[3]~12\,
	combout => \ulainstance|subtratorinstance|resultado[4]~13_combout\);

-- Location: LCFF_X49_Y12_N23
\ulainstance|subtratorinstance|resultado[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ulainstance|subtratorinstance|resultado[4]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ulainstance|subtratorinstance|resultado\(4));

-- Location: LCCOMB_X48_Y12_N4
\ulainstance|subtratorinstance|s~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|subtratorinstance|s~0_combout\ = (!opcode(2) & (\ulainstance|subtratorinstance|resultado\(4) & (!opcode(0) & opcode(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcode(2),
	datab => \ulainstance|subtratorinstance|resultado\(4),
	datac => opcode(0),
	datad => opcode(1),
	combout => \ulainstance|subtratorinstance|s~0_combout\);

-- Location: LCFF_X48_Y12_N5
\ulainstance|subtratorinstance|s\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ulainstance|subtratorinstance|s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ulainstance|subtratorinstance|s~regout\);

-- Location: LCFF_X49_Y12_N15
\ulainstance|subtratorinstance|resultado[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ulainstance|subtratorinstance|resultado[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ulainstance|subtratorinstance|resultado\(0));

-- Location: LCFF_X49_Y12_N19
\ulainstance|subtratorinstance|resultado[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ulainstance|subtratorinstance|resultado[2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ulainstance|subtratorinstance|resultado\(2));

-- Location: LCCOMB_X48_Y12_N20
\ulainstance|subtratorinstance|out~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|subtratorinstance|out~1_combout\ = \ulainstance|subtratorinstance|resultado\(2) $ (((\ulainstance|subtratorinstance|s~regout\ & ((\ulainstance|subtratorinstance|resultado\(1)) # (\ulainstance|subtratorinstance|resultado\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulainstance|subtratorinstance|resultado\(1),
	datab => \ulainstance|subtratorinstance|s~regout\,
	datac => \ulainstance|subtratorinstance|resultado\(0),
	datad => \ulainstance|subtratorinstance|resultado\(2),
	combout => \ulainstance|subtratorinstance|out~1_combout\);

-- Location: LCFF_X48_Y12_N21
\ulainstance|subtratorinstance|out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ulainstance|subtratorinstance|out~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ulainstance|subtratorinstance|out\(2));

-- Location: LCCOMB_X48_Y13_N20
\ulainstance|op_xorinstance|out[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|op_xorinstance|out\(2) = \draminstance|dram~2_regout\ $ (\draminstance|dram~6_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \draminstance|dram~2_regout\,
	datad => \draminstance|dram~6_regout\,
	combout => \ulainstance|op_xorinstance|out\(2));

-- Location: LCCOMB_X48_Y13_N22
\ulainstance|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|Mux6~0_combout\ = (opcode(0) & (!opcode(1) & ((\draminstance|dram~2_regout\) # (\draminstance|dram~6_regout\)))) # (!opcode(0) & ((opcode(1)) # ((\draminstance|dram~2_regout\ & \draminstance|dram~6_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \draminstance|dram~2_regout\,
	datab => \draminstance|dram~6_regout\,
	datac => opcode(0),
	datad => opcode(1),
	combout => \ulainstance|Mux6~0_combout\);

-- Location: LCCOMB_X48_Y13_N0
\ulainstance|Mux6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|Mux6~1_combout\ = (\ulainstance|out_ula[1]~1_combout\ & ((\ulainstance|Mux6~0_combout\ & ((\ulainstance|op_xorinstance|out\(2)))) # (!\ulainstance|Mux6~0_combout\ & 
-- (!\ulainstance|divinstance|Div0|auto_generated|divider|divider|selnose[5]~1_combout\)))) # (!\ulainstance|out_ula[1]~1_combout\ & (((\ulainstance|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulainstance|divinstance|Div0|auto_generated|divider|divider|selnose[5]~1_combout\,
	datab => \ulainstance|op_xorinstance|out\(2),
	datac => \ulainstance|out_ula[1]~1_combout\,
	datad => \ulainstance|Mux6~0_combout\,
	combout => \ulainstance|Mux6~1_combout\);

-- Location: LCCOMB_X48_Y13_N2
\ulainstance|Mux6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|Mux6~2_combout\ = (\ulainstance|out_ula[1]~2_combout\ & ((\ulainstance|out_ula[1]~3_combout\ & ((\ulainstance|Mux6~1_combout\))) # (!\ulainstance|out_ula[1]~3_combout\ & (\ulainstance|somadorinstance|Add0~4_combout\)))) # 
-- (!\ulainstance|out_ula[1]~2_combout\ & (((\ulainstance|out_ula[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulainstance|somadorinstance|Add0~4_combout\,
	datab => \ulainstance|out_ula[1]~2_combout\,
	datac => \ulainstance|out_ula[1]~3_combout\,
	datad => \ulainstance|Mux6~1_combout\,
	combout => \ulainstance|Mux6~2_combout\);

-- Location: LCCOMB_X48_Y13_N6
\ulainstance|Mux6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|Mux6~3_combout\ = (\ulainstance|out_ula[1]~0_combout\ & ((\ulainstance|Mux6~2_combout\ & (\ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\)) # (!\ulainstance|Mux6~2_combout\ & 
-- ((\ulainstance|subtratorinstance|out\(2)))))) # (!\ulainstance|out_ula[1]~0_combout\ & (((\ulainstance|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\,
	datab => \ulainstance|out_ula[1]~0_combout\,
	datac => \ulainstance|subtratorinstance|out\(2),
	datad => \ulainstance|Mux6~2_combout\,
	combout => \ulainstance|Mux6~3_combout\);

-- Location: LCFF_X48_Y13_N7
\ulainstance|out_ula[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ulainstance|Mux6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ulainstance|out_ula\(2));

-- Location: LCFF_X49_Y13_N9
\disp0[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \ulainstance|out_ula\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \disp0[2]~reg0_regout\);

-- Location: LCCOMB_X48_Y12_N2
\ulainstance|Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|Mux5~1_combout\ = (!\draminstance|dram~6_regout\ & (!\draminstance|dram~7_regout\ & (opcode(0) & opcode(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \draminstance|dram~6_regout\,
	datab => \draminstance|dram~7_regout\,
	datac => opcode(0),
	datad => opcode(1),
	combout => \ulainstance|Mux5~1_combout\);

-- Location: LCCOMB_X49_Y12_N10
\ulainstance|Mux5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|Mux5~2_combout\ = (!\draminstance|dram~5_regout\ & (\draminstance|dram~4_regout\ & (\draminstance|dram~3_regout\ & opcode(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \draminstance|dram~5_regout\,
	datab => \draminstance|dram~4_regout\,
	datac => \draminstance|dram~3_regout\,
	datad => opcode(2),
	combout => \ulainstance|Mux5~2_combout\);

-- Location: LCFF_X49_Y12_N21
\ulainstance|subtratorinstance|resultado[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ulainstance|subtratorinstance|resultado[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ulainstance|subtratorinstance|resultado\(3));

-- Location: LCCOMB_X48_Y12_N8
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

-- Location: LCCOMB_X48_Y12_N22
\ulainstance|subtratorinstance|out~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|subtratorinstance|out~2_combout\ = (\ulainstance|subtratorinstance|s~regout\ & (\ulainstance|subtratorinstance|Add1~0_combout\)) # (!\ulainstance|subtratorinstance|s~regout\ & ((\ulainstance|subtratorinstance|resultado\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ulainstance|subtratorinstance|s~regout\,
	datac => \ulainstance|subtratorinstance|Add1~0_combout\,
	datad => \ulainstance|subtratorinstance|resultado\(3),
	combout => \ulainstance|subtratorinstance|out~2_combout\);

-- Location: LCFF_X48_Y12_N23
\ulainstance|subtratorinstance|out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ulainstance|subtratorinstance|out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ulainstance|subtratorinstance|out\(3));

-- Location: LCCOMB_X46_Y12_N0
\ulainstance|multinstance|Mult0|mult_core|decoder_node[1][2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|multinstance|Mult0|mult_core|decoder_node[1][2]~combout\ = (\draminstance|dram~2_regout\ & \draminstance|dram~5_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \draminstance|dram~2_regout\,
	datad => \draminstance|dram~5_regout\,
	combout => \ulainstance|multinstance|Mult0|mult_core|decoder_node[1][2]~combout\);

-- Location: LCCOMB_X46_Y12_N18
\ulainstance|multinstance|Mult0|mult_core|decoder_node[1][1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|multinstance|Mult0|mult_core|decoder_node[1][1]~combout\ = (\draminstance|dram~5_regout\ & \draminstance|dram~1_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \draminstance|dram~5_regout\,
	datad => \draminstance|dram~1_regout\,
	combout => \ulainstance|multinstance|Mult0|mult_core|decoder_node[1][1]~combout\);

-- Location: LCCOMB_X46_Y12_N26
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

-- Location: LCCOMB_X46_Y12_N2
\ulainstance|multinstance|Mult0|mult_core|decoder_node[2][0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|multinstance|Mult0|mult_core|decoder_node[2][0]~combout\ = (\draminstance|dram~6_regout\ & \draminstance|dram~0_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \draminstance|dram~6_regout\,
	datac => \draminstance|dram~0_regout\,
	combout => \ulainstance|multinstance|Mult0|mult_core|decoder_node[2][0]~combout\);

-- Location: LCCOMB_X46_Y12_N6
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

-- Location: LCCOMB_X48_Y12_N12
\ulainstance|Mux5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|Mux5~3_combout\ = (opcode(0) & ((opcode(1) & ((\ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\))) # (!opcode(1) & (\ulainstance|somadorinstance|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ulainstance|somadorinstance|Add0~6_combout\,
	datab => \ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\,
	datac => opcode(1),
	datad => opcode(0),
	combout => \ulainstance|Mux5~3_combout\);

-- Location: LCCOMB_X48_Y12_N28
\ulainstance|Mux5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|Mux5~4_combout\ = (\ulainstance|Mux5~3_combout\) # ((opcode(1) & (\ulainstance|subtratorinstance|out\(3) & !opcode(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcode(1),
	datab => \ulainstance|subtratorinstance|out\(3),
	datac => opcode(0),
	datad => \ulainstance|Mux5~3_combout\,
	combout => \ulainstance|Mux5~4_combout\);

-- Location: LCCOMB_X48_Y12_N30
\ulainstance|Mux5~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|Mux5~5_combout\ = (opcode(2) & (\ulainstance|Mux5~1_combout\ & (\ulainstance|Mux5~2_combout\))) # (!opcode(2) & ((\ulainstance|Mux5~4_combout\) # ((\ulainstance|Mux5~1_combout\ & \ulainstance|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => opcode(2),
	datab => \ulainstance|Mux5~1_combout\,
	datac => \ulainstance|Mux5~2_combout\,
	datad => \ulainstance|Mux5~4_combout\,
	combout => \ulainstance|Mux5~5_combout\);

-- Location: LCFF_X48_Y12_N31
\ulainstance|out_ula[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ulainstance|Mux5~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ulainstance|out_ula\(3));

-- Location: LCCOMB_X49_Y15_N30
\disp0[3]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp0[3]~reg0feeder_combout\ = \ulainstance|out_ula\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ulainstance|out_ula\(3),
	combout => \disp0[3]~reg0feeder_combout\);

-- Location: LCFF_X49_Y15_N31
\disp0[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \disp0[3]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \disp0[3]~reg0_regout\);

-- Location: LCCOMB_X46_Y12_N28
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

-- Location: LCCOMB_X46_Y12_N8
\ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\ = ((\ulainstance|multinstance|Mult0|mult_core|decoder_node[2][2]~combout\ $ 
-- (\ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ $ (!\ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\)))) # (GND)
-- \ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\ = CARRY((\ulainstance|multinstance|Mult0|mult_core|decoder_node[2][2]~combout\ & 
-- ((\ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\) # (!\ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\))) # 
-- (!\ulainstance|multinstance|Mult0|mult_core|decoder_node[2][2]~combout\ & (\ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & 
-- !\ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ulainstance|multinstance|Mult0|mult_core|decoder_node[2][2]~combout\,
	datab => \ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	datad => VCC,
	cin => \ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\,
	combout => \ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\,
	cout => \ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\);

-- Location: LCCOMB_X49_Y12_N8
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

-- Location: LCFF_X49_Y12_N9
\ulainstance|out_ula[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ulainstance|Mux4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ulainstance|out_ula\(4));

-- Location: LCCOMB_X49_Y13_N18
\disp1[1]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp1[1]~reg0feeder_combout\ = \ulainstance|out_ula\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ulainstance|out_ula\(4),
	combout => \disp1[1]~reg0feeder_combout\);

-- Location: LCFF_X49_Y13_N19
\disp1[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \disp1[1]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \disp1[1]~reg0_regout\);

-- Location: LCCOMB_X46_Y12_N10
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

-- Location: LCCOMB_X49_Y12_N26
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

-- Location: LCFF_X49_Y12_N27
\ulainstance|out_ula[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \ulainstance|Mux3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ulainstance|out_ula\(5));

-- Location: LCFF_X49_Y13_N1
\disp1[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \ulainstance|out_ula\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \disp1[2]~reg0_regout\);

-- Location: LCCOMB_X49_Y12_N30
\disp2[0]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp2[0]~reg0feeder_combout\ = \draminstance|dram~4_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \draminstance|dram~4_regout\,
	combout => \disp2[0]~reg0feeder_combout\);

-- Location: LCFF_X49_Y12_N31
\disp2[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \disp2[0]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \disp2[0]~reg0_regout\);

-- Location: LCFF_X49_Y13_N23
\disp2[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \draminstance|dram~5_regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \disp2[1]~reg0_regout\);

-- Location: LCFF_X49_Y13_N29
\disp2[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \draminstance|dram~6_regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \disp2[2]~reg0_regout\);

-- Location: LCFF_X49_Y15_N17
\disp2[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \draminstance|dram~7_regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \disp2[3]~reg0_regout\);

-- Location: LCFF_X49_Y15_N11
\disp3[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \draminstance|dram~0_regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \disp3[0]~reg0_regout\);

-- Location: LCFF_X49_Y13_N27
\disp3[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \draminstance|dram~1_regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \disp3[1]~reg0_regout\);

-- Location: LCCOMB_X49_Y13_N16
\disp3[2]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp3[2]~reg0feeder_combout\ = \draminstance|dram~2_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \draminstance|dram~2_regout\,
	combout => \disp3[2]~reg0feeder_combout\);

-- Location: LCFF_X49_Y13_N17
\disp3[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \disp3[2]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \disp3[2]~reg0_regout\);

-- Location: LCCOMB_X49_Y15_N20
\disp3[3]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp3[3]~reg0feeder_combout\ = \draminstance|dram~3_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \draminstance|dram~3_regout\,
	combout => \disp3[3]~reg0feeder_combout\);

-- Location: LCFF_X49_Y15_N21
\disp3[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \disp3[3]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \disp3[3]~reg0_regout\);

-- Location: LCCOMB_X49_Y15_N8
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

-- Location: LCFF_X49_Y15_N9
\seg7instance|display_state.01\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \seg7instance|display_state.01~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|display_state.01~regout\);

-- Location: LCCOMB_X49_Y15_N6
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

-- Location: LCFF_X49_Y15_N7
\seg7instance|display_state.10\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \seg7instance|display_state.10~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|display_state.10~regout\);

-- Location: LCFF_X49_Y15_N15
\seg7instance|display_state.11\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \seg7instance|display_state.10~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|display_state.11~regout\);

-- Location: LCCOMB_X49_Y15_N24
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

-- Location: LCFF_X49_Y15_N25
\seg7instance|display_state.00\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \seg7instance|display_state.00~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|display_state.00~regout\);

-- Location: LCCOMB_X49_Y15_N22
\seg7instance|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|Selector0~0_combout\ = (\disp3[3]~reg0_regout\ & ((\seg7instance|display_state.11~regout\) # ((\disp2[3]~reg0_regout\ & \seg7instance|display_state.10~regout\)))) # (!\disp3[3]~reg0_regout\ & (((\disp2[3]~reg0_regout\ & 
-- \seg7instance|display_state.10~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp3[3]~reg0_regout\,
	datab => \seg7instance|display_state.11~regout\,
	datac => \disp2[3]~reg0_regout\,
	datad => \seg7instance|display_state.10~regout\,
	combout => \seg7instance|Selector0~0_combout\);

-- Location: LCCOMB_X49_Y15_N2
\seg7instance|Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|Selector0~1_combout\ = (\seg7instance|Selector0~0_combout\) # ((\disp0[3]~reg0_regout\ & !\seg7instance|display_state.00~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp0[3]~reg0_regout\,
	datac => \seg7instance|display_state.00~regout\,
	datad => \seg7instance|Selector0~0_combout\,
	combout => \seg7instance|Selector0~1_combout\);

-- Location: LCCOMB_X49_Y15_N28
\seg7instance|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|Selector1~0_combout\ = (\seg7instance|display_state.01~regout\ & ((\seg7instance|display_state.11~regout\) # (!\seg7instance|display_state.10~regout\))) # (!\seg7instance|display_state.01~regout\ & (\seg7instance|display_state.11~regout\ & 
-- !\seg7instance|display_state.10~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seg7instance|display_state.01~regout\,
	datac => \seg7instance|display_state.11~regout\,
	datad => \seg7instance|display_state.10~regout\,
	combout => \seg7instance|Selector1~0_combout\);

-- Location: LCCOMB_X49_Y15_N26
\seg7instance|Selector1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|Selector1~1_combout\ = \seg7instance|display_state.11~regout\ $ (\seg7instance|display_state.10~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \seg7instance|display_state.11~regout\,
	datad => \seg7instance|display_state.10~regout\,
	combout => \seg7instance|Selector1~1_combout\);

-- Location: LCCOMB_X49_Y15_N0
\seg7instance|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|Selector3~0_combout\ = (\seg7instance|Selector1~1_combout\ & ((\disp2[0]~reg0_regout\) # ((\seg7instance|Selector1~0_combout\)))) # (!\seg7instance|Selector1~1_combout\ & (((\disp0[0]~reg0_regout\ & !\seg7instance|Selector1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp2[0]~reg0_regout\,
	datab => \seg7instance|Selector1~1_combout\,
	datac => \disp0[0]~reg0_regout\,
	datad => \seg7instance|Selector1~0_combout\,
	combout => \seg7instance|Selector3~0_combout\);

-- Location: LCCOMB_X49_Y15_N10
\seg7instance|Selector3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|Selector3~1_combout\ = (\seg7instance|Selector1~0_combout\ & ((\seg7instance|Selector3~0_combout\ & ((\disp3[0]~reg0_regout\))) # (!\seg7instance|Selector3~0_combout\ & (\disp0[3]~reg0_regout\)))) # (!\seg7instance|Selector1~0_combout\ & 
-- (((\seg7instance|Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp0[3]~reg0_regout\,
	datab => \seg7instance|Selector1~0_combout\,
	datac => \disp3[0]~reg0_regout\,
	datad => \seg7instance|Selector3~0_combout\,
	combout => \seg7instance|Selector3~1_combout\);

-- Location: LCCOMB_X49_Y13_N30
\seg7instance|Selector1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|Selector1~2_combout\ = (\seg7instance|Selector1~1_combout\ & (((\disp2[2]~reg0_regout\) # (\seg7instance|Selector1~0_combout\)))) # (!\seg7instance|Selector1~1_combout\ & (\disp0[2]~reg0_regout\ & ((!\seg7instance|Selector1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp0[2]~reg0_regout\,
	datab => \disp2[2]~reg0_regout\,
	datac => \seg7instance|Selector1~1_combout\,
	datad => \seg7instance|Selector1~0_combout\,
	combout => \seg7instance|Selector1~2_combout\);

-- Location: LCCOMB_X49_Y13_N0
\seg7instance|Selector1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|Selector1~3_combout\ = (\seg7instance|Selector1~0_combout\ & ((\seg7instance|Selector1~2_combout\ & (\disp3[2]~reg0_regout\)) # (!\seg7instance|Selector1~2_combout\ & ((\disp1[2]~reg0_regout\))))) # (!\seg7instance|Selector1~0_combout\ & 
-- (((\seg7instance|Selector1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp3[2]~reg0_regout\,
	datab => \seg7instance|Selector1~0_combout\,
	datac => \disp1[2]~reg0_regout\,
	datad => \seg7instance|Selector1~2_combout\,
	combout => \seg7instance|Selector1~3_combout\);

-- Location: LCCOMB_X2_Y19_N2
\seg7instance|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|WideOr6~0_combout\ = (\seg7instance|Selector0~1_combout\ & (\seg7instance|Selector3~1_combout\ & (\seg7instance|Selector2~1_combout\ $ (\seg7instance|Selector1~3_combout\)))) # (!\seg7instance|Selector0~1_combout\ & 
-- (!\seg7instance|Selector2~1_combout\ & (\seg7instance|Selector3~1_combout\ $ (\seg7instance|Selector1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg7instance|Selector2~1_combout\,
	datab => \seg7instance|Selector0~1_combout\,
	datac => \seg7instance|Selector3~1_combout\,
	datad => \seg7instance|Selector1~3_combout\,
	combout => \seg7instance|WideOr6~0_combout\);

-- Location: LCCOMB_X1_Y19_N16
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

-- Location: LCFF_X1_Y19_N17
\seg7instance|hex_out0[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \seg7instance|hex_out0[0]~feeder_combout\,
	ena => \seg7instance|ALT_INV_display_state.00~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out0\(0));

-- Location: LCCOMB_X49_Y13_N12
\seg7instance|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|Selector2~0_combout\ = (\seg7instance|Selector1~1_combout\ & (((\seg7instance|Selector1~0_combout\)))) # (!\seg7instance|Selector1~1_combout\ & ((\seg7instance|Selector1~0_combout\ & ((\disp1[1]~reg0_regout\))) # 
-- (!\seg7instance|Selector1~0_combout\ & (\disp0[1]~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp0[1]~reg0_regout\,
	datab => \disp1[1]~reg0_regout\,
	datac => \seg7instance|Selector1~1_combout\,
	datad => \seg7instance|Selector1~0_combout\,
	combout => \seg7instance|Selector2~0_combout\);

-- Location: LCCOMB_X49_Y13_N22
\seg7instance|Selector2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|Selector2~1_combout\ = (\seg7instance|Selector1~1_combout\ & ((\seg7instance|Selector2~0_combout\ & (\disp3[1]~reg0_regout\)) # (!\seg7instance|Selector2~0_combout\ & ((\disp2[1]~reg0_regout\))))) # (!\seg7instance|Selector1~1_combout\ & 
-- (((\seg7instance|Selector2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg7instance|Selector1~1_combout\,
	datab => \disp3[1]~reg0_regout\,
	datac => \disp2[1]~reg0_regout\,
	datad => \seg7instance|Selector2~0_combout\,
	combout => \seg7instance|Selector2~1_combout\);

-- Location: LCCOMB_X2_Y19_N28
\seg7instance|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|WideOr5~0_combout\ = (\seg7instance|Selector0~1_combout\ & ((\seg7instance|Selector3~1_combout\ & (\seg7instance|Selector2~1_combout\)) # (!\seg7instance|Selector3~1_combout\ & ((\seg7instance|Selector1~3_combout\))))) # 
-- (!\seg7instance|Selector0~1_combout\ & (\seg7instance|Selector1~3_combout\ & (\seg7instance|Selector3~1_combout\ $ (\seg7instance|Selector2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg7instance|Selector3~1_combout\,
	datab => \seg7instance|Selector0~1_combout\,
	datac => \seg7instance|Selector2~1_combout\,
	datad => \seg7instance|Selector1~3_combout\,
	combout => \seg7instance|WideOr5~0_combout\);

-- Location: LCCOMB_X1_Y19_N10
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

-- Location: LCFF_X1_Y19_N11
\seg7instance|hex_out0[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \seg7instance|hex_out0[1]~feeder_combout\,
	ena => \seg7instance|ALT_INV_display_state.00~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out0\(1));

-- Location: LCCOMB_X2_Y19_N18
\seg7instance|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|WideOr4~0_combout\ = (\seg7instance|Selector0~1_combout\ & (\seg7instance|Selector1~3_combout\ & ((\seg7instance|Selector2~1_combout\) # (!\seg7instance|Selector3~1_combout\)))) # (!\seg7instance|Selector0~1_combout\ & 
-- (!\seg7instance|Selector3~1_combout\ & (\seg7instance|Selector2~1_combout\ & !\seg7instance|Selector1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg7instance|Selector3~1_combout\,
	datab => \seg7instance|Selector0~1_combout\,
	datac => \seg7instance|Selector2~1_combout\,
	datad => \seg7instance|Selector1~3_combout\,
	combout => \seg7instance|WideOr4~0_combout\);

-- Location: LCCOMB_X1_Y19_N12
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

-- Location: LCFF_X1_Y19_N13
\seg7instance|hex_out0[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \seg7instance|hex_out0[2]~feeder_combout\,
	ena => \seg7instance|ALT_INV_display_state.00~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out0\(2));

-- Location: LCCOMB_X2_Y19_N24
\seg7instance|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|WideOr3~0_combout\ = (\seg7instance|Selector2~1_combout\ & ((\seg7instance|Selector3~1_combout\ & ((\seg7instance|Selector1~3_combout\))) # (!\seg7instance|Selector3~1_combout\ & (\seg7instance|Selector0~1_combout\ & 
-- !\seg7instance|Selector1~3_combout\)))) # (!\seg7instance|Selector2~1_combout\ & (!\seg7instance|Selector0~1_combout\ & (\seg7instance|Selector3~1_combout\ $ (\seg7instance|Selector1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg7instance|Selector3~1_combout\,
	datab => \seg7instance|Selector0~1_combout\,
	datac => \seg7instance|Selector1~3_combout\,
	datad => \seg7instance|Selector2~1_combout\,
	combout => \seg7instance|WideOr3~0_combout\);

-- Location: LCCOMB_X1_Y19_N22
\seg7instance|hex_out0[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|hex_out0[3]~feeder_combout\ = \seg7instance|WideOr3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \seg7instance|WideOr3~0_combout\,
	combout => \seg7instance|hex_out0[3]~feeder_combout\);

-- Location: LCFF_X1_Y19_N23
\seg7instance|hex_out0[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \seg7instance|hex_out0[3]~feeder_combout\,
	ena => \seg7instance|ALT_INV_display_state.00~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out0\(3));

-- Location: LCCOMB_X2_Y19_N6
\seg7instance|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|WideOr2~0_combout\ = (\seg7instance|Selector2~1_combout\ & (\seg7instance|Selector3~1_combout\ & (!\seg7instance|Selector0~1_combout\))) # (!\seg7instance|Selector2~1_combout\ & ((\seg7instance|Selector1~3_combout\ & 
-- ((!\seg7instance|Selector0~1_combout\))) # (!\seg7instance|Selector1~3_combout\ & (\seg7instance|Selector3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg7instance|Selector3~1_combout\,
	datab => \seg7instance|Selector0~1_combout\,
	datac => \seg7instance|Selector1~3_combout\,
	datad => \seg7instance|Selector2~1_combout\,
	combout => \seg7instance|WideOr2~0_combout\);

-- Location: LCCOMB_X1_Y19_N24
\seg7instance|hex_out0[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|hex_out0[4]~feeder_combout\ = \seg7instance|WideOr2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \seg7instance|WideOr2~0_combout\,
	combout => \seg7instance|hex_out0[4]~feeder_combout\);

-- Location: LCFF_X1_Y19_N25
\seg7instance|hex_out0[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \seg7instance|hex_out0[4]~feeder_combout\,
	ena => \seg7instance|ALT_INV_display_state.00~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out0\(4));

-- Location: LCCOMB_X2_Y19_N4
\seg7instance|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|WideOr1~0_combout\ = (\seg7instance|Selector3~1_combout\ & (\seg7instance|Selector0~1_combout\ $ (((\seg7instance|Selector2~1_combout\) # (!\seg7instance|Selector1~3_combout\))))) # (!\seg7instance|Selector3~1_combout\ & 
-- (!\seg7instance|Selector0~1_combout\ & (\seg7instance|Selector2~1_combout\ & !\seg7instance|Selector1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg7instance|Selector3~1_combout\,
	datab => \seg7instance|Selector0~1_combout\,
	datac => \seg7instance|Selector2~1_combout\,
	datad => \seg7instance|Selector1~3_combout\,
	combout => \seg7instance|WideOr1~0_combout\);

-- Location: LCCOMB_X1_Y19_N2
\seg7instance|hex_out0[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|hex_out0[5]~feeder_combout\ = \seg7instance|WideOr1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \seg7instance|WideOr1~0_combout\,
	combout => \seg7instance|hex_out0[5]~feeder_combout\);

-- Location: LCFF_X1_Y19_N3
\seg7instance|hex_out0[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \seg7instance|hex_out0[5]~feeder_combout\,
	ena => \seg7instance|ALT_INV_display_state.00~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out0\(5));

-- Location: LCCOMB_X2_Y19_N30
\seg7instance|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|WideOr0~0_combout\ = (\seg7instance|Selector3~1_combout\ & (!\seg7instance|Selector0~1_combout\ & (\seg7instance|Selector1~3_combout\ $ (!\seg7instance|Selector2~1_combout\)))) # (!\seg7instance|Selector3~1_combout\ & 
-- (!\seg7instance|Selector2~1_combout\ & (\seg7instance|Selector0~1_combout\ $ (!\seg7instance|Selector1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg7instance|Selector3~1_combout\,
	datab => \seg7instance|Selector0~1_combout\,
	datac => \seg7instance|Selector1~3_combout\,
	datad => \seg7instance|Selector2~1_combout\,
	combout => \seg7instance|WideOr0~0_combout\);

-- Location: LCCOMB_X1_Y19_N0
\seg7instance|hex_out0[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|hex_out0[6]~feeder_combout\ = \seg7instance|WideOr0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \seg7instance|WideOr0~0_combout\,
	combout => \seg7instance|hex_out0[6]~feeder_combout\);

-- Location: LCFF_X1_Y19_N1
\seg7instance|hex_out0[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \seg7instance|hex_out0[6]~feeder_combout\,
	ena => \seg7instance|ALT_INV_display_state.00~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out0\(6));

-- Location: LCCOMB_X1_Y19_N6
\seg7instance|hex_out1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|hex_out1~0_combout\ = (\ulainstance|subtratorinstance|s~regout\) # (\seg7instance|WideOr6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ulainstance|subtratorinstance|s~regout\,
	datad => \seg7instance|WideOr6~0_combout\,
	combout => \seg7instance|hex_out1~0_combout\);

-- Location: LCFF_X1_Y19_N7
\seg7instance|hex_out1[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \seg7instance|hex_out1~0_combout\,
	ena => \seg7instance|display_state.01~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out1\(0));

-- Location: LCCOMB_X1_Y19_N20
\seg7instance|hex_out1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|hex_out1~1_combout\ = (\ulainstance|subtratorinstance|s~regout\) # (\seg7instance|WideOr5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ulainstance|subtratorinstance|s~regout\,
	datad => \seg7instance|WideOr5~0_combout\,
	combout => \seg7instance|hex_out1~1_combout\);

-- Location: LCFF_X1_Y19_N21
\seg7instance|hex_out1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \seg7instance|hex_out1~1_combout\,
	ena => \seg7instance|display_state.01~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out1\(1));

-- Location: LCCOMB_X1_Y19_N30
\seg7instance|hex_out1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|hex_out1~2_combout\ = (\ulainstance|subtratorinstance|s~regout\) # (\seg7instance|WideOr4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ulainstance|subtratorinstance|s~regout\,
	datad => \seg7instance|WideOr4~0_combout\,
	combout => \seg7instance|hex_out1~2_combout\);

-- Location: LCFF_X1_Y19_N31
\seg7instance|hex_out1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \seg7instance|hex_out1~2_combout\,
	ena => \seg7instance|display_state.01~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out1\(2));

-- Location: LCCOMB_X1_Y19_N28
\seg7instance|hex_out1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|hex_out1~3_combout\ = (\ulainstance|subtratorinstance|s~regout\) # (\seg7instance|WideOr3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ulainstance|subtratorinstance|s~regout\,
	datad => \seg7instance|WideOr3~0_combout\,
	combout => \seg7instance|hex_out1~3_combout\);

-- Location: LCFF_X1_Y19_N29
\seg7instance|hex_out1[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \seg7instance|hex_out1~3_combout\,
	ena => \seg7instance|display_state.01~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out1\(3));

-- Location: LCCOMB_X1_Y19_N14
\seg7instance|hex_out1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|hex_out1~4_combout\ = (\ulainstance|subtratorinstance|s~regout\) # (\seg7instance|WideOr2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ulainstance|subtratorinstance|s~regout\,
	datad => \seg7instance|WideOr2~0_combout\,
	combout => \seg7instance|hex_out1~4_combout\);

-- Location: LCFF_X1_Y19_N15
\seg7instance|hex_out1[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \seg7instance|hex_out1~4_combout\,
	ena => \seg7instance|display_state.01~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out1\(4));

-- Location: LCCOMB_X1_Y19_N8
\seg7instance|hex_out1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|hex_out1~5_combout\ = (\ulainstance|subtratorinstance|s~regout\) # (\seg7instance|WideOr1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ulainstance|subtratorinstance|s~regout\,
	datad => \seg7instance|WideOr1~0_combout\,
	combout => \seg7instance|hex_out1~5_combout\);

-- Location: LCFF_X1_Y19_N9
\seg7instance|hex_out1[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \seg7instance|hex_out1~5_combout\,
	ena => \seg7instance|display_state.01~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out1\(5));

-- Location: LCCOMB_X1_Y19_N18
\seg7instance|hex_out1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|hex_out1~6_combout\ = (!\ulainstance|subtratorinstance|s~regout\ & \seg7instance|WideOr0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ulainstance|subtratorinstance|s~regout\,
	datad => \seg7instance|WideOr0~0_combout\,
	combout => \seg7instance|hex_out1~6_combout\);

-- Location: LCFF_X1_Y19_N19
\seg7instance|hex_out1[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \seg7instance|hex_out1~6_combout\,
	ena => \seg7instance|display_state.01~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out1\(6));

-- Location: LCCOMB_X2_Y19_N8
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

-- Location: LCFF_X2_Y19_N9
\seg7instance|hex_out2[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \seg7instance|hex_out2[0]~feeder_combout\,
	ena => \seg7instance|display_state.10~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out2\(0));

-- Location: LCCOMB_X2_Y19_N26
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

-- Location: LCFF_X2_Y19_N27
\seg7instance|hex_out2[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \seg7instance|hex_out2[1]~feeder_combout\,
	ena => \seg7instance|display_state.10~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out2\(1));

-- Location: LCCOMB_X2_Y19_N20
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

-- Location: LCFF_X2_Y19_N21
\seg7instance|hex_out2[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \seg7instance|hex_out2[2]~feeder_combout\,
	ena => \seg7instance|display_state.10~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out2\(2));

-- Location: LCFF_X2_Y19_N23
\seg7instance|hex_out2[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \seg7instance|WideOr3~0_combout\,
	sload => VCC,
	ena => \seg7instance|display_state.10~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out2\(3));

-- Location: LCCOMB_X2_Y19_N16
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

-- Location: LCFF_X2_Y19_N17
\seg7instance|hex_out2[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \seg7instance|hex_out2[4]~feeder_combout\,
	ena => \seg7instance|display_state.10~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out2\(4));

-- Location: LCFF_X2_Y19_N11
\seg7instance|hex_out2[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \seg7instance|WideOr1~0_combout\,
	sload => VCC,
	ena => \seg7instance|display_state.10~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out2\(5));

-- Location: LCCOMB_X2_Y19_N0
\seg7instance|hex_out2[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|hex_out2[6]~feeder_combout\ = \seg7instance|WideOr0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \seg7instance|WideOr0~0_combout\,
	combout => \seg7instance|hex_out2[6]~feeder_combout\);

-- Location: LCFF_X2_Y19_N1
\seg7instance|hex_out2[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \seg7instance|hex_out2[6]~feeder_combout\,
	ena => \seg7instance|display_state.10~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out2\(6));

-- Location: LCFF_X2_Y19_N3
\seg7instance|hex_out3[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \seg7instance|WideOr6~0_combout\,
	ena => \seg7instance|display_state.11~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out3\(0));

-- Location: LCFF_X2_Y19_N29
\seg7instance|hex_out3[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \seg7instance|WideOr5~0_combout\,
	ena => \seg7instance|display_state.11~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out3\(1));

-- Location: LCFF_X2_Y19_N19
\seg7instance|hex_out3[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \seg7instance|WideOr4~0_combout\,
	ena => \seg7instance|display_state.11~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out3\(2));

-- Location: LCFF_X2_Y19_N25
\seg7instance|hex_out3[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \seg7instance|WideOr3~0_combout\,
	ena => \seg7instance|display_state.11~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out3\(3));

-- Location: LCFF_X2_Y19_N7
\seg7instance|hex_out3[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \seg7instance|WideOr2~0_combout\,
	ena => \seg7instance|display_state.11~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out3\(4));

-- Location: LCFF_X2_Y19_N5
\seg7instance|hex_out3[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \seg7instance|WideOr1~0_combout\,
	ena => \seg7instance|display_state.11~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out3\(5));

-- Location: LCFF_X2_Y19_N31
\seg7instance|hex_out3[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \seg7instance|WideOr0~0_combout\,
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

-- Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_M19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_P15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \disp0[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp1(0));

-- Location: PIN_N22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_V9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_N21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_M18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_L18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_N15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_J19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AA11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_N4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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


