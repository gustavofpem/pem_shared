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

-- DATE "11/04/2016 20:51:16"

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

ENTITY 	ula_3bits IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	SW : IN std_logic_vector(5 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0);
	LEDG : OUT std_logic_vector(2 DOWNTO 0);
	disp0 : OUT std_logic_vector(8 DOWNTO 0);
	disp1 : OUT std_logic_vector(8 DOWNTO 0);
	disp2 : OUT std_logic_vector(3 DOWNTO 0);
	disp3 : OUT std_logic_vector(3 DOWNTO 0);
	HEX0 : OUT std_logic_vector(7 DOWNTO 0);
	HEX1 : OUT std_logic_vector(7 DOWNTO 0);
	HEX2 : OUT std_logic_vector(7 DOWNTO 0);
	HEX3 : OUT std_logic_vector(7 DOWNTO 0)
	);
END ula_3bits;

-- Design Ports Information
-- rst	=>  Location: PIN_AB6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[1]	=>  Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[2]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp0[0]	=>  Location: PIN_R12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp0[1]	=>  Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp0[2]	=>  Location: PIN_AB14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp0[3]	=>  Location: PIN_U13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp0[4]	=>  Location: PIN_N3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp0[5]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp0[6]	=>  Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp0[7]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp0[8]	=>  Location: PIN_V15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp1[0]	=>  Location: PIN_AB13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp1[1]	=>  Location: PIN_AA12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp1[2]	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp1[3]	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp1[4]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp1[5]	=>  Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp1[6]	=>  Location: PIN_K20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp1[7]	=>  Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp1[8]	=>  Location: PIN_T5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp2[0]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp2[1]	=>  Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp2[2]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp2[3]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp3[0]	=>  Location: PIN_M6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp3[1]	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp3[2]	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp3[3]	=>  Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[0]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[1]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[2]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[3]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[4]	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[5]	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[6]	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[7]	=>  Location: PIN_Y9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[0]	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[1]	=>  Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[2]	=>  Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[3]	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[4]	=>  Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[5]	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[6]	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[7]	=>  Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[0]	=>  Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[1]	=>  Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[2]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[3]	=>  Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[4]	=>  Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[5]	=>  Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[6]	=>  Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[7]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[0]	=>  Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[1]	=>  Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[2]	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[3]	=>  Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[4]	=>  Location: PIN_L8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[5]	=>  Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[6]	=>  Location: PIN_D4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[7]	=>  Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SW[0]	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF ula_3bits IS
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
SIGNAL ww_SW : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_disp0 : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_disp1 : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_disp2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_disp3 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\ : std_logic;
SIGNAL \multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_8_result_int[1]~1_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_8_result_int[2]~3_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_8_result_int[3]~5_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[33]~17_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[32]~19_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[31]~21_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[30]~23_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[38]~24_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[35]~29_combout\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[33]~16_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[32]~18_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[31]~21_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[30]~23_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[38]~24_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[37]~25_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[36]~26_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[36]~27_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[35]~28_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[35]~29_combout\ : std_logic;
SIGNAL \multinstance|Mult0|mult_core|decoder_node[0][1]~combout\ : std_logic;
SIGNAL \multinstance|Mult0|mult_core|decoder_node[1][2]~combout\ : std_logic;
SIGNAL \multinstance|Mult0|mult_core|decoder_node[0][2]~combout\ : std_logic;
SIGNAL \multinstance|Mult0|mult_core|decoder_node[2][0]~combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[37]~32_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[38]~30_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[37]~31_combout\ : std_logic;
SIGNAL \pc[0]~0_combout\ : std_logic;
SIGNAL \LEDG[0]~0_combout\ : std_logic;
SIGNAL \LEDG[0]~reg0_regout\ : std_logic;
SIGNAL \pc[1]~feeder_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \LEDG[1]~reg0_regout\ : std_logic;
SIGNAL \multinstance|Mult0|mult_core|decoder_node[0][0]~combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \draminstance|dram~0_regout\ : std_logic;
SIGNAL \draminstance|dram~3_regout\ : std_logic;
SIGNAL \draminstance|dram~5_regout\ : std_logic;
SIGNAL \draminstance|dram~2_regout\ : std_logic;
SIGNAL \draminstance|dram~4_regout\ : std_logic;
SIGNAL \subtratorinstance|Add0~0_combout\ : std_logic;
SIGNAL \subtratorinstance|Add0~1_combout\ : std_logic;
SIGNAL \draminstance|dram~1_regout\ : std_logic;
SIGNAL \subtratorinstance|Add1~0_combout\ : std_logic;
SIGNAL \subtratorinstance|out[2]~0_combout\ : std_logic;
SIGNAL \subtratorinstance|Add0~2_combout\ : std_logic;
SIGNAL \subtratorinstance|out[1]~1_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[12]~0_combout\ : std_logic;
SIGNAL \somadorinstance|Add0~0_combout\ : std_logic;
SIGNAL \somadorinstance|Add0~1_combout\ : std_logic;
SIGNAL \somadorinstance|Add0~2_combout\ : std_logic;
SIGNAL \somadorinstance|Add0~3_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[12]~0_combout\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \Mux12~2_combout\ : std_logic;
SIGNAL \Mux12~3_combout\ : std_logic;
SIGNAL \multinstance|Mult0|mult_core|decoder_node[1][1]~combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux11~2_combout\ : std_logic;
SIGNAL \Mux11~3_combout\ : std_logic;
SIGNAL \Mux11~4_combout\ : std_logic;
SIGNAL \multinstance|Mult0|mult_core|decoder_node[2][2]~combout\ : std_logic;
SIGNAL \multinstance|Mult0|mult_core|decoder_node[1][0]~combout\ : std_logic;
SIGNAL \multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ : std_logic;
SIGNAL \multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ : std_logic;
SIGNAL \multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ : std_logic;
SIGNAL \multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \multinstance|Mult0|mult_core|decoder_node[2][1]~combout\ : std_logic;
SIGNAL \multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\ : std_logic;
SIGNAL \multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\ : std_logic;
SIGNAL \multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[30]~22_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\ : std_logic;
SIGNAL \multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[33]~16_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[32]~18_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[31]~20_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[36]~27_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[36]~26_combout\ : std_logic;
SIGNAL \multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[35]~28_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[42]~30_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[14]~1_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \Mux10~2_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[37]~25_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[38]~31_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mux9~3_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\ : std_logic;
SIGNAL \Mux9~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\ : std_logic;
SIGNAL \Mux9~2_combout\ : std_logic;
SIGNAL \Mux9~5_combout\ : std_logic;
SIGNAL \subtratorinstance|Add1~1_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[33]~17_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[32]~19_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[31]~20_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[30]~22_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \seg7instance|WideOr6~0_combout\ : std_logic;
SIGNAL \seg7instance|WideOr5~0_combout\ : std_logic;
SIGNAL \seg7instance|WideOr4~0_combout\ : std_logic;
SIGNAL \seg7instance|WideOr3~0_combout\ : std_logic;
SIGNAL \seg7instance|WideOr2~0_combout\ : std_logic;
SIGNAL \seg7instance|WideOr1~0_combout\ : std_logic;
SIGNAL \seg7instance|WideOr0~0_combout\ : std_logic;
SIGNAL \seg7instance|WideOr13~0_combout\ : std_logic;
SIGNAL \seg7instance|WideOr12~0_combout\ : std_logic;
SIGNAL \seg7instance|WideOr11~0_combout\ : std_logic;
SIGNAL \seg7instance|WideOr10~0_combout\ : std_logic;
SIGNAL \seg7instance|WideOr9~0_combout\ : std_logic;
SIGNAL \seg7instance|WideOr8~0_combout\ : std_logic;
SIGNAL \seg7instance|WideOr7~0_combout\ : std_logic;
SIGNAL \seg7instance|WideOr20~0_combout\ : std_logic;
SIGNAL \seg7instance|WideOr19~0_combout\ : std_logic;
SIGNAL \seg7instance|Decoder2~0_combout\ : std_logic;
SIGNAL \seg7instance|WideOr17~0_combout\ : std_logic;
SIGNAL \seg7instance|WideOr16~0_combout\ : std_logic;
SIGNAL \seg7instance|WideOr15~0_combout\ : std_logic;
SIGNAL \seg7instance|WideOr14~0_combout\ : std_logic;
SIGNAL \seg7instance|WideOr27~0_combout\ : std_logic;
SIGNAL \seg7instance|WideOr26~0_combout\ : std_logic;
SIGNAL \seg7instance|Decoder3~0_combout\ : std_logic;
SIGNAL \seg7instance|WideOr24~0_combout\ : std_logic;
SIGNAL \seg7instance|WideOr23~0_combout\ : std_logic;
SIGNAL \seg7instance|WideOr22~0_combout\ : std_logic;
SIGNAL \seg7instance|WideOr21~0_combout\ : std_logic;
SIGNAL pc : std_logic_vector(2 DOWNTO 0);
SIGNAL data : std_logic_vector(7 DOWNTO 0);
SIGNAL \prominstance|addr_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \op_xorinstance|out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \seg7instance|hex_out3\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \seg7instance|hex_out2\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \seg7instance|hex_out1\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \seg7instance|hex_out0\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \KEY~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW~combout\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \ALT_INV_KEY~combout\ : std_logic_vector(3 DOWNTO 2);
SIGNAL \ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux8~1_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_SW <= SW;
ww_KEY <= KEY;
LEDG <= ww_LEDG;
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

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
\ALT_INV_KEY~combout\(2) <= NOT \KEY~combout\(2);
\ALT_INV_KEY~combout\(3) <= NOT \KEY~combout\(3);
\ALT_INV_Mux5~0_combout\ <= NOT \Mux5~0_combout\;
\ALT_INV_Mux6~0_combout\ <= NOT \Mux6~0_combout\;
\ALT_INV_Mux7~0_combout\ <= NOT \Mux7~0_combout\;
\ALT_INV_Mux8~1_combout\ <= NOT \Mux8~1_combout\;

-- Location: LCCOMB_X35_Y10_N6
\Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\ = \draminstance|dram~0_regout\ $ (\draminstance|dram~3_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \draminstance|dram~0_regout\,
	datac => \draminstance|dram~3_regout\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\);

-- Location: LCCOMB_X33_Y8_N24
\multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ = (\multinstance|Mult0|mult_core|decoder_node[1][2]~combout\ & (\multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ $ (GND))) # 
-- (!\multinstance|Mult0|mult_core|decoder_node[1][2]~combout\ & (!\multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ & VCC))
-- \multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ = CARRY((\multinstance|Mult0|mult_core|decoder_node[1][2]~combout\ & !\multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multinstance|Mult0|mult_core|decoder_node[1][2]~combout\,
	datad => VCC,
	cin => \multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\,
	combout => \multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	cout => \multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\);

-- Location: LCCOMB_X32_Y9_N0
\Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = \multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ $ (VCC)
-- \Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY(\multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\,
	datad => VCC,
	combout => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X32_Y9_N4
\Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ & (\Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ $ (GND))) # 
-- (!\multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ & (!\Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & VCC))
-- \Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((\multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ & !\Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\,
	datad => VCC,
	cin => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X32_Y9_N24
\Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & (((\Mod2|auto_generated|divider|divider|StageOut[32]~19_combout\) # 
-- (\Mod2|auto_generated|divider|divider|StageOut[32]~18_combout\)))) # (!\Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\Mod2|auto_generated|divider|divider|StageOut[32]~19_combout\) # 
-- (\Mod2|auto_generated|divider|divider|StageOut[32]~18_combout\)))))
-- \Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((\Mod2|auto_generated|divider|divider|StageOut[32]~19_combout\) # 
-- (\Mod2|auto_generated|divider|divider|StageOut[32]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[32]~19_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[32]~18_combout\,
	datad => VCC,
	cin => \Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X33_Y9_N8
\Mod2|auto_generated|divider|divider|add_sub_8_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ = (((\Mod2|auto_generated|divider|divider|StageOut[35]~29_combout\) # (\Mod2|auto_generated|divider|divider|StageOut[35]~28_combout\)))
-- \Mod2|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ = CARRY((\Mod2|auto_generated|divider|divider|StageOut[35]~29_combout\) # (\Mod2|auto_generated|divider|divider|StageOut[35]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[35]~29_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[35]~28_combout\,
	datad => VCC,
	combout => \Mod2|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_8_result_int[1]~1\);

-- Location: LCCOMB_X32_Y8_N22
\Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = \multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ $ (VCC)
-- \Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY(\multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\,
	datad => VCC,
	combout => \Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X32_Y8_N6
\Div2|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\Div2|auto_generated|divider|divider|StageOut[30]~23_combout\) # (\Div2|auto_generated|divider|divider|StageOut[30]~22_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[30]~23_combout\) # (\Div2|auto_generated|divider|divider|StageOut[30]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[30]~23_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[30]~22_combout\,
	datad => VCC,
	combout => \Div2|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X32_Y8_N8
\Div2|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\Div2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (((\Div2|auto_generated|divider|divider|StageOut[31]~21_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[31]~20_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (!\Div2|auto_generated|divider|divider|StageOut[31]~21_combout\ & 
-- (!\Div2|auto_generated|divider|divider|StageOut[31]~20_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[31]~21_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[31]~20_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[31]~21_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[31]~20_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \Div2|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X32_Y8_N10
\Div2|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\Div2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & (((\Div2|auto_generated|divider|divider|StageOut[32]~18_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[32]~19_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\Div2|auto_generated|divider|divider|StageOut[32]~18_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[32]~19_combout\)))))
-- \Div2|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\Div2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((\Div2|auto_generated|divider|divider|StageOut[32]~18_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[32]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[32]~18_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[32]~19_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \Div2|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X31_Y8_N20
\Div2|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_8_result_int[1]~1_cout\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[35]~28_combout\) # (\Div2|auto_generated|divider|divider|StageOut[35]~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[35]~28_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[35]~29_combout\,
	datad => VCC,
	cout => \Div2|auto_generated|divider|divider|add_sub_8_result_int[1]~1_cout\);

-- Location: LCCOMB_X31_Y8_N22
\Div2|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_8_result_int[2]~3_cout\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[36]~27_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[36]~26_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_8_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[36]~27_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[36]~26_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_8_result_int[1]~1_cout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_8_result_int[2]~3_cout\);

-- Location: LCCOMB_X31_Y8_N24
\Div2|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_8_result_int[3]~5_cout\ = CARRY((!\Div2|auto_generated|divider|divider|add_sub_8_result_int[2]~3_cout\ & ((\Div2|auto_generated|divider|divider|StageOut[37]~25_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[37]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[37]~25_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[37]~31_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_8_result_int[2]~3_cout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_8_result_int[3]~5_cout\);

-- Location: LCCOMB_X31_Y8_N26
\Div2|auto_generated|divider|divider|add_sub_8_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[38]~30_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[38]~24_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_8_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[38]~30_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[38]~24_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_8_result_int[3]~5_cout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\);

-- Location: LCCOMB_X31_Y8_N28
\Div2|auto_generated|divider|divider|add_sub_8_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ = \Div2|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div2|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\,
	combout => \Div2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\);

-- Location: LCCOMB_X32_Y9_N16
\Mod2|auto_generated|divider|divider|StageOut[33]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[33]~17_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datac => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[33]~17_combout\);

-- Location: LCCOMB_X32_Y9_N12
\Mod2|auto_generated|divider|divider|StageOut[32]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[32]~19_combout\ = (!\Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[32]~19_combout\);

-- Location: LCCOMB_X32_Y9_N10
\Mod2|auto_generated|divider|divider|StageOut[31]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[31]~21_combout\ = (!\Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[31]~21_combout\);

-- Location: LCCOMB_X31_Y9_N14
\Mod2|auto_generated|divider|divider|StageOut[30]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[30]~23_combout\ = (!\Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[30]~23_combout\);

-- Location: LCCOMB_X33_Y9_N20
\Mod2|auto_generated|divider|divider|StageOut[38]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[38]~24_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ & !\Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[38]~24_combout\);

-- Location: LCCOMB_X33_Y9_N24
\Mod2|auto_generated|divider|divider|StageOut[35]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[35]~29_combout\ = (!\Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & \multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[35]~29_combout\);

-- Location: LCCOMB_X33_Y9_N2
\Mux11~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & (\multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\)) # (!\Mod2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & 
-- ((\Mod2|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datab => \multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	datac => \Mod2|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	combout => \Mux11~1_combout\);

-- Location: LCCOMB_X32_Y10_N12
\op_xorinstance|out[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \op_xorinstance|out\(2) = \SW~combout\(5) $ (\SW~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(5),
	datac => \SW~combout\(2),
	combout => \op_xorinstance|out\(2));

-- Location: LCCOMB_X32_Y8_N20
\Div2|auto_generated|divider|divider|StageOut[33]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[33]~16_combout\ = (\multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ & \Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[33]~16_combout\);

-- Location: LCCOMB_X32_Y8_N16
\Div2|auto_generated|divider|divider|StageOut[32]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[32]~18_combout\ = (\Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[32]~18_combout\);

-- Location: LCCOMB_X32_Y8_N2
\Div2|auto_generated|divider|divider|StageOut[31]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[31]~21_combout\ = (\Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & !\Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[31]~21_combout\);

-- Location: LCCOMB_X31_Y8_N30
\Div2|auto_generated|divider|divider|StageOut[30]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[30]~23_combout\ = (\multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\ & !\Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[30]~23_combout\);

-- Location: LCCOMB_X31_Y8_N8
\Div2|auto_generated|divider|divider|StageOut[38]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[38]~24_combout\ = (\Div2|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ & !\Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[38]~24_combout\);

-- Location: LCCOMB_X31_Y8_N10
\Div2|auto_generated|divider|divider|StageOut[37]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[37]~25_combout\ = (\Div2|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ & !\Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[37]~25_combout\);

-- Location: LCCOMB_X31_Y8_N4
\Div2|auto_generated|divider|divider|StageOut[36]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[36]~26_combout\ = (\multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\ & \Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[36]~26_combout\);

-- Location: LCCOMB_X31_Y8_N6
\Div2|auto_generated|divider|divider|StageOut[36]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[36]~27_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & \Div2|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[36]~27_combout\);

-- Location: LCCOMB_X31_Y8_N12
\Div2|auto_generated|divider|divider|StageOut[35]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[35]~28_combout\ = (\Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & \multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[35]~28_combout\);

-- Location: LCCOMB_X31_Y8_N18
\Div2|auto_generated|divider|divider|StageOut[35]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[35]~29_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & \multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[35]~29_combout\);

-- Location: LCCOMB_X33_Y8_N12
\multinstance|Mult0|mult_core|decoder_node[0][1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \multinstance|Mult0|mult_core|decoder_node[0][1]~combout\ = (\SW~combout\(3) & \SW~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW~combout\(3),
	datad => \SW~combout\(1),
	combout => \multinstance|Mult0|mult_core|decoder_node[0][1]~combout\);

-- Location: LCCOMB_X33_Y8_N16
\multinstance|Mult0|mult_core|decoder_node[1][2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \multinstance|Mult0|mult_core|decoder_node[1][2]~combout\ = (\SW~combout\(4) & \SW~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(4),
	datac => \SW~combout\(2),
	combout => \multinstance|Mult0|mult_core|decoder_node[1][2]~combout\);

-- Location: LCCOMB_X33_Y8_N10
\multinstance|Mult0|mult_core|decoder_node[0][2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \multinstance|Mult0|mult_core|decoder_node[0][2]~combout\ = (\SW~combout\(2) & \SW~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(2),
	datac => \SW~combout\(3),
	combout => \multinstance|Mult0|mult_core|decoder_node[0][2]~combout\);

-- Location: LCCOMB_X33_Y8_N18
\multinstance|Mult0|mult_core|decoder_node[2][0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \multinstance|Mult0|mult_core|decoder_node[2][0]~combout\ = (\SW~combout\(5) & \SW~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW~combout\(5),
	datad => \SW~combout\(0),
	combout => \multinstance|Mult0|mult_core|decoder_node[2][0]~combout\);

-- Location: LCCOMB_X33_Y9_N6
\Mod2|auto_generated|divider|divider|StageOut[37]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[37]~32_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- ((\multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\))) # (!\Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (\Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[37]~32_combout\);

-- Location: LCCOMB_X31_Y8_N0
\Div2|auto_generated|divider|divider|StageOut[38]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[38]~30_combout\ = (\Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- ((\multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\))) # (!\Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (\Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[38]~30_combout\);

-- Location: LCCOMB_X31_Y8_N14
\Div2|auto_generated|divider|divider|StageOut[37]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[37]~31_combout\ = (\Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- ((\multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\))) # (!\Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (\Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[37]~31_combout\);

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

-- Location: LCCOMB_X33_Y10_N24
\pc[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc[0]~0_combout\ = !pc(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => pc(0),
	combout => \pc[0]~0_combout\);

-- Location: LCFF_X33_Y10_N25
\pc[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	datain => \pc[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => pc(0));

-- Location: LCCOMB_X32_Y10_N0
\LEDG[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LEDG[0]~0_combout\ = !pc(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => pc(0),
	combout => \LEDG[0]~0_combout\);

-- Location: LCFF_X32_Y10_N1
\LEDG[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	datain => \LEDG[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LEDG[0]~reg0_regout\);

-- Location: LCCOMB_X32_Y10_N20
\pc[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc[1]~feeder_combout\ = \Add0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~0_combout\,
	combout => \pc[1]~feeder_combout\);

-- Location: LCFF_X32_Y10_N21
\pc[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	datain => \pc[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => pc(1));

-- Location: LCCOMB_X32_Y10_N22
\Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = pc(1) $ (pc(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => pc(1),
	datad => pc(0),
	combout => \Add0~0_combout\);

-- Location: LCFF_X32_Y10_N23
\LEDG[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	datain => \Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LEDG[1]~reg0_regout\);

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

-- Location: LCCOMB_X34_Y9_N0
\multinstance|Mult0|mult_core|decoder_node[0][0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \multinstance|Mult0|mult_core|decoder_node[0][0]~combout\ = (\SW~combout\(3) & \SW~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW~combout\(3),
	datad => \SW~combout\(0),
	combout => \multinstance|Mult0|mult_core|decoder_node[0][0]~combout\);

-- Location: LCFF_X32_Y10_N25
\prominstance|addr_reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => pc(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \prominstance|addr_reg\(1));

-- Location: LCFF_X33_Y10_N23
\prominstance|addr_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => pc(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \prominstance|addr_reg\(0));

-- Location: LCCOMB_X34_Y9_N10
\op_xorinstance|out[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \op_xorinstance|out\(0) = \SW~combout\(3) $ (\SW~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW~combout\(3),
	datad => \SW~combout\(0),
	combout => \op_xorinstance|out\(0));

-- Location: LCCOMB_X32_Y10_N26
\Mux12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (!\prominstance|addr_reg\(0) & \prominstance|addr_reg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \prominstance|addr_reg\(0),
	datad => \prominstance|addr_reg\(1),
	combout => \Mux12~0_combout\);

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

-- Location: LCCOMB_X35_Y10_N22
\data[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- data(0) = (\KEY~combout\(2) & (data(0))) # (!\KEY~combout\(2) & ((\SW~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => data(0),
	datac => \SW~combout\(0),
	datad => \KEY~combout\(2),
	combout => data(0));

-- Location: LCFF_X34_Y10_N1
\draminstance|dram~0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => data(0),
	sload => VCC,
	ena => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \draminstance|dram~0_regout\);

-- Location: LCCOMB_X34_Y10_N6
\data[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- data(4) = (\KEY~combout\(2) & ((data(4)))) # (!\KEY~combout\(2) & (\SW~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(3),
	datac => data(4),
	datad => \KEY~combout\(2),
	combout => data(4));

-- Location: LCFF_X34_Y10_N7
\draminstance|dram~3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => data(4),
	ena => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \draminstance|dram~3_regout\);

-- Location: LCCOMB_X35_Y10_N30
\data[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- data(6) = (\KEY~combout\(2) & ((data(6)))) # (!\KEY~combout\(2) & (\SW~combout\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(5),
	datac => data(6),
	datad => \KEY~combout\(2),
	combout => data(6));

-- Location: LCFF_X35_Y10_N31
\draminstance|dram~5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => data(6),
	ena => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \draminstance|dram~5_regout\);

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

-- Location: LCCOMB_X35_Y10_N0
\data[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- data(2) = (\KEY~combout\(2) & (data(2))) # (!\KEY~combout\(2) & ((\SW~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => data(2),
	datac => \SW~combout\(2),
	datad => \KEY~combout\(2),
	combout => data(2));

-- Location: LCFF_X35_Y10_N1
\draminstance|dram~2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => data(2),
	ena => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \draminstance|dram~2_regout\);

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

-- Location: LCCOMB_X35_Y10_N26
\data[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- data(5) = (\KEY~combout\(2) & (data(5))) # (!\KEY~combout\(2) & ((\SW~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => data(5),
	datac => \SW~combout\(4),
	datad => \KEY~combout\(2),
	combout => data(5));

-- Location: LCFF_X34_Y10_N31
\draminstance|dram~4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => data(5),
	sload => VCC,
	ena => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \draminstance|dram~4_regout\);

-- Location: LCCOMB_X34_Y10_N0
\subtratorinstance|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \subtratorinstance|Add0~0_combout\ = (\draminstance|dram~1_regout\ & (\draminstance|dram~4_regout\ & ((\draminstance|dram~3_regout\) # (!\draminstance|dram~0_regout\)))) # (!\draminstance|dram~1_regout\ & ((\draminstance|dram~4_regout\) # 
-- ((\draminstance|dram~3_regout\) # (!\draminstance|dram~0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \draminstance|dram~1_regout\,
	datab => \draminstance|dram~4_regout\,
	datac => \draminstance|dram~0_regout\,
	datad => \draminstance|dram~3_regout\,
	combout => \subtratorinstance|Add0~0_combout\);

-- Location: LCCOMB_X34_Y10_N10
\subtratorinstance|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \subtratorinstance|Add0~1_combout\ = (\draminstance|dram~5_regout\ & ((\subtratorinstance|Add0~0_combout\) # (!\draminstance|dram~2_regout\))) # (!\draminstance|dram~5_regout\ & (!\draminstance|dram~2_regout\ & \subtratorinstance|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \draminstance|dram~5_regout\,
	datac => \draminstance|dram~2_regout\,
	datad => \subtratorinstance|Add0~0_combout\,
	combout => \subtratorinstance|Add0~1_combout\);

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

-- Location: LCCOMB_X35_Y10_N16
\data[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- data(1) = (\KEY~combout\(2) & ((data(1)))) # (!\KEY~combout\(2) & (\SW~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(1),
	datac => data(1),
	datad => \KEY~combout\(2),
	combout => data(1));

-- Location: LCFF_X34_Y10_N13
\draminstance|dram~1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => data(1),
	sload => VCC,
	ena => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \draminstance|dram~1_regout\);

-- Location: LCCOMB_X34_Y10_N12
\subtratorinstance|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \subtratorinstance|Add1~0_combout\ = (\draminstance|dram~3_regout\ & (\draminstance|dram~0_regout\ & (\draminstance|dram~4_regout\ $ (!\draminstance|dram~1_regout\)))) # (!\draminstance|dram~3_regout\ & (!\draminstance|dram~0_regout\ & 
-- (\draminstance|dram~4_regout\ $ (!\draminstance|dram~1_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \draminstance|dram~3_regout\,
	datab => \draminstance|dram~4_regout\,
	datac => \draminstance|dram~1_regout\,
	datad => \draminstance|dram~0_regout\,
	combout => \subtratorinstance|Add1~0_combout\);

-- Location: LCCOMB_X34_Y10_N14
\subtratorinstance|out[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \subtratorinstance|out[2]~0_combout\ = (\subtratorinstance|Add1~0_combout\ & (\draminstance|dram~2_regout\ $ (\draminstance|dram~5_regout\ $ (!\subtratorinstance|Add0~0_combout\)))) # (!\subtratorinstance|Add1~0_combout\ & ((\draminstance|dram~2_regout\ & 
-- (!\draminstance|dram~5_regout\ & !\subtratorinstance|Add0~0_combout\)) # (!\draminstance|dram~2_regout\ & (\draminstance|dram~5_regout\ & \subtratorinstance|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \draminstance|dram~2_regout\,
	datab => \draminstance|dram~5_regout\,
	datac => \subtratorinstance|Add0~0_combout\,
	datad => \subtratorinstance|Add1~0_combout\,
	combout => \subtratorinstance|out[2]~0_combout\);

-- Location: LCCOMB_X34_Y10_N4
\subtratorinstance|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \subtratorinstance|Add0~2_combout\ = \draminstance|dram~4_regout\ $ (\draminstance|dram~1_regout\ $ (((\draminstance|dram~3_regout\) # (!\draminstance|dram~0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110001100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \draminstance|dram~3_regout\,
	datab => \draminstance|dram~4_regout\,
	datac => \draminstance|dram~0_regout\,
	datad => \draminstance|dram~1_regout\,
	combout => \subtratorinstance|Add0~2_combout\);

-- Location: LCCOMB_X34_Y10_N18
\subtratorinstance|out[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \subtratorinstance|out[1]~1_combout\ = \subtratorinstance|Add0~2_combout\ $ (((!\subtratorinstance|Add0~1_combout\ & (\draminstance|dram~3_regout\ $ (\draminstance|dram~0_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \draminstance|dram~3_regout\,
	datab => \draminstance|dram~0_regout\,
	datac => \subtratorinstance|Add0~2_combout\,
	datad => \subtratorinstance|Add0~1_combout\,
	combout => \subtratorinstance|out[1]~1_combout\);

-- Location: LCCOMB_X34_Y10_N20
\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\ = CARRY(!\subtratorinstance|out[1]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \subtratorinstance|out[1]~1_combout\,
	datad => VCC,
	cout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\);

-- Location: LCCOMB_X34_Y10_N22
\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\ = (\subtratorinstance|out[2]~0_combout\ & (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\ & VCC)) # (!\subtratorinstance|out[2]~0_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\))
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ = CARRY((!\subtratorinstance|out[2]~0_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \subtratorinstance|out[2]~0_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~5\);

-- Location: LCCOMB_X34_Y10_N24
\Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ & (\subtratorinstance|Add1~1_combout\ & (!\subtratorinstance|Add0~1_combout\ & VCC))) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ & ((((\subtratorinstance|Add1~1_combout\ & !\subtratorinstance|Add0~1_combout\)))))
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ = CARRY((\subtratorinstance|Add1~1_combout\ & (!\subtratorinstance|Add0~1_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \subtratorinstance|Add1~1_combout\,
	datab => \subtratorinstance|Add0~1_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~5\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~7\);

-- Location: LCCOMB_X34_Y10_N26
\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ = !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~7\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\);

-- Location: LCCOMB_X34_Y10_N8
\Mod1|auto_generated|divider|divider|StageOut[12]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[12]~0_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\draminstance|dram~0_regout\ $ (\draminstance|dram~3_regout\)))) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\,
	datab => \draminstance|dram~0_regout\,
	datac => \draminstance|dram~3_regout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[12]~0_combout\);

-- Location: LCCOMB_X35_Y10_N28
\somadorinstance|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \somadorinstance|Add0~0_combout\ = (\draminstance|dram~4_regout\ & ((\draminstance|dram~1_regout\) # ((\draminstance|dram~3_regout\ & \draminstance|dram~0_regout\)))) # (!\draminstance|dram~4_regout\ & (\draminstance|dram~3_regout\ & 
-- (\draminstance|dram~0_regout\ & \draminstance|dram~1_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \draminstance|dram~4_regout\,
	datab => \draminstance|dram~3_regout\,
	datac => \draminstance|dram~0_regout\,
	datad => \draminstance|dram~1_regout\,
	combout => \somadorinstance|Add0~0_combout\);

-- Location: LCCOMB_X35_Y10_N2
\somadorinstance|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \somadorinstance|Add0~1_combout\ = (\draminstance|dram~5_regout\ & ((\draminstance|dram~2_regout\) # (\somadorinstance|Add0~0_combout\))) # (!\draminstance|dram~5_regout\ & (\draminstance|dram~2_regout\ & \somadorinstance|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \draminstance|dram~5_regout\,
	datac => \draminstance|dram~2_regout\,
	datad => \somadorinstance|Add0~0_combout\,
	combout => \somadorinstance|Add0~1_combout\);

-- Location: LCCOMB_X35_Y10_N4
\somadorinstance|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \somadorinstance|Add0~2_combout\ = \draminstance|dram~5_regout\ $ (\draminstance|dram~2_regout\ $ (\somadorinstance|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \draminstance|dram~5_regout\,
	datac => \draminstance|dram~2_regout\,
	datad => \somadorinstance|Add0~0_combout\,
	combout => \somadorinstance|Add0~2_combout\);

-- Location: LCCOMB_X35_Y10_N18
\somadorinstance|Add0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \somadorinstance|Add0~3_combout\ = \draminstance|dram~4_regout\ $ (\draminstance|dram~1_regout\ $ (((\draminstance|dram~0_regout\ & \draminstance|dram~3_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \draminstance|dram~0_regout\,
	datab => \draminstance|dram~3_regout\,
	datac => \draminstance|dram~4_regout\,
	datad => \draminstance|dram~1_regout\,
	combout => \somadorinstance|Add0~3_combout\);

-- Location: LCCOMB_X35_Y10_N8
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\ = \somadorinstance|Add0~3_combout\ $ (VCC)
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ = CARRY(\somadorinstance|Add0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \somadorinstance|Add0~3_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\);

-- Location: LCCOMB_X35_Y10_N10
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\ = (\somadorinstance|Add0~2_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ & VCC)) # (!\somadorinstance|Add0~2_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\))
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ = CARRY((!\somadorinstance|Add0~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \somadorinstance|Add0~2_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\);

-- Location: LCCOMB_X35_Y10_N12
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\ = (\somadorinstance|Add0~1_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ $ (GND))) # (!\somadorinstance|Add0~1_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ & VCC))
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ = CARRY((\somadorinstance|Add0~1_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \somadorinstance|Add0~1_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\);

-- Location: LCCOMB_X35_Y10_N14
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ = !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\);

-- Location: LCCOMB_X35_Y10_N20
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\ = \draminstance|dram~0_regout\ $ (\draminstance|dram~3_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \draminstance|dram~0_regout\,
	datac => \draminstance|dram~3_regout\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\);

-- Location: LCCOMB_X34_Y10_N28
\Mod0|auto_generated|divider|divider|StageOut[12]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[12]~0_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\draminstance|dram~0_regout\ $ ((\draminstance|dram~3_regout\)))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \draminstance|dram~0_regout\,
	datab => \draminstance|dram~3_regout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[12]~0_combout\);

-- Location: LCCOMB_X33_Y10_N0
\Mux12~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = (\prominstance|addr_reg\(0) & ((\prominstance|addr_reg\(1) & ((\Mod0|auto_generated|divider|divider|StageOut[12]~0_combout\))) # (!\prominstance|addr_reg\(1) & (\Mod1|auto_generated|divider|divider|StageOut[12]~0_combout\)))) # 
-- (!\prominstance|addr_reg\(0) & (!\prominstance|addr_reg\(1) & ((\Mod0|auto_generated|divider|divider|StageOut[12]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prominstance|addr_reg\(0),
	datab => \prominstance|addr_reg\(1),
	datac => \Mod1|auto_generated|divider|divider|StageOut[12]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[12]~0_combout\,
	combout => \Mux12~1_combout\);

-- Location: LCCOMB_X33_Y10_N6
\Mux12~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux12~2_combout\ = (\Mux12~0_combout\ & ((\Mux12~1_combout\ & ((\op_xorinstance|out\(0)))) # (!\Mux12~1_combout\ & (\multinstance|Mult0|mult_core|decoder_node[0][0]~combout\)))) # (!\Mux12~0_combout\ & (((\Mux12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multinstance|Mult0|mult_core|decoder_node[0][0]~combout\,
	datab => \op_xorinstance|out\(0),
	datac => \Mux12~0_combout\,
	datad => \Mux12~1_combout\,
	combout => \Mux12~2_combout\);

-- Location: LCCOMB_X33_Y10_N18
\Mux12~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux12~3_combout\ = (\prominstance|addr_reg\(1) & ((\prominstance|addr_reg\(0) & (\multinstance|Mult0|mult_core|decoder_node[0][0]~combout\)) # (!\prominstance|addr_reg\(0) & ((\Mux12~2_combout\))))) # (!\prominstance|addr_reg\(1) & 
-- (((\Mux12~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multinstance|Mult0|mult_core|decoder_node[0][0]~combout\,
	datab => \prominstance|addr_reg\(1),
	datac => \prominstance|addr_reg\(0),
	datad => \Mux12~2_combout\,
	combout => \Mux12~3_combout\);

-- Location: LCCOMB_X33_Y8_N28
\multinstance|Mult0|mult_core|decoder_node[1][1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \multinstance|Mult0|mult_core|decoder_node[1][1]~combout\ = (\SW~combout\(4) & \SW~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(4),
	datad => \SW~combout\(1),
	combout => \multinstance|Mult0|mult_core|decoder_node[1][1]~combout\);

-- Location: LCCOMB_X35_Y10_N24
\Mux11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\somadorinstance|Add0~3_combout\))) # (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & 
-- (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datad => \somadorinstance|Add0~3_combout\,
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X33_Y10_N30
\Mux11~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux11~2_combout\ = (\prominstance|addr_reg\(1) & (\Mux11~1_combout\)) # (!\prominstance|addr_reg\(1) & ((\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ $ (\subtratorinstance|out[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \prominstance|addr_reg\(1),
	datac => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datad => \subtratorinstance|out[1]~1_combout\,
	combout => \Mux11~2_combout\);

-- Location: LCCOMB_X32_Y10_N28
\Mux11~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux11~3_combout\ = (\prominstance|addr_reg\(1) & ((\prominstance|addr_reg\(0) & (\Mux11~0_combout\)) # (!\prominstance|addr_reg\(0) & ((\Mux11~2_combout\))))) # (!\prominstance|addr_reg\(1) & ((\prominstance|addr_reg\(0) & ((\Mux11~2_combout\))) # 
-- (!\prominstance|addr_reg\(0) & (\Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prominstance|addr_reg\(1),
	datab => \prominstance|addr_reg\(0),
	datac => \Mux11~0_combout\,
	datad => \Mux11~2_combout\,
	combout => \Mux11~3_combout\);

-- Location: LCCOMB_X32_Y10_N30
\Mux11~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux11~4_combout\ = (\prominstance|addr_reg\(1) & ((\prominstance|addr_reg\(0) & (\multinstance|Mult0|mult_core|decoder_node[1][1]~combout\)) # (!\prominstance|addr_reg\(0) & ((\Mux11~3_combout\))))) # (!\prominstance|addr_reg\(1) & 
-- (((\Mux11~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prominstance|addr_reg\(1),
	datab => \multinstance|Mult0|mult_core|decoder_node[1][1]~combout\,
	datac => \prominstance|addr_reg\(0),
	datad => \Mux11~3_combout\,
	combout => \Mux11~4_combout\);

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

-- Location: LCCOMB_X33_Y8_N14
\multinstance|Mult0|mult_core|decoder_node[2][2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \multinstance|Mult0|mult_core|decoder_node[2][2]~combout\ = (\SW~combout\(2) & \SW~combout\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(2),
	datac => \SW~combout\(5),
	combout => \multinstance|Mult0|mult_core|decoder_node[2][2]~combout\);

-- Location: LCCOMB_X33_Y8_N30
\multinstance|Mult0|mult_core|decoder_node[1][0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \multinstance|Mult0|mult_core|decoder_node[1][0]~combout\ = (\SW~combout\(4) & \SW~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(4),
	datad => \SW~combout\(0),
	combout => \multinstance|Mult0|mult_core|decoder_node[1][0]~combout\);

-- Location: LCCOMB_X33_Y8_N20
\multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ = (\multinstance|Mult0|mult_core|decoder_node[0][1]~combout\ & (\multinstance|Mult0|mult_core|decoder_node[1][0]~combout\ $ (VCC))) # 
-- (!\multinstance|Mult0|mult_core|decoder_node[0][1]~combout\ & (\multinstance|Mult0|mult_core|decoder_node[1][0]~combout\ & VCC))
-- \multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ = CARRY((\multinstance|Mult0|mult_core|decoder_node[0][1]~combout\ & \multinstance|Mult0|mult_core|decoder_node[1][0]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multinstance|Mult0|mult_core|decoder_node[0][1]~combout\,
	datab => \multinstance|Mult0|mult_core|decoder_node[1][0]~combout\,
	datad => VCC,
	combout => \multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	cout => \multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\);

-- Location: LCCOMB_X33_Y8_N22
\multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ = (\multinstance|Mult0|mult_core|decoder_node[0][2]~combout\ & ((\multinstance|Mult0|mult_core|decoder_node[1][1]~combout\ & 
-- (\multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ & VCC)) # (!\multinstance|Mult0|mult_core|decoder_node[1][1]~combout\ & (!\multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)))) # 
-- (!\multinstance|Mult0|mult_core|decoder_node[0][2]~combout\ & ((\multinstance|Mult0|mult_core|decoder_node[1][1]~combout\ & (!\multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)) # 
-- (!\multinstance|Mult0|mult_core|decoder_node[1][1]~combout\ & ((\multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\) # (GND)))))
-- \multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ = CARRY((\multinstance|Mult0|mult_core|decoder_node[0][2]~combout\ & (!\multinstance|Mult0|mult_core|decoder_node[1][1]~combout\ & 
-- !\multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)) # (!\multinstance|Mult0|mult_core|decoder_node[0][2]~combout\ & ((!\multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\) # 
-- (!\multinstance|Mult0|mult_core|decoder_node[1][1]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multinstance|Mult0|mult_core|decoder_node[0][2]~combout\,
	datab => \multinstance|Mult0|mult_core|decoder_node[1][1]~combout\,
	datad => VCC,
	cin => \multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\,
	combout => \multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	cout => \multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\);

-- Location: LCCOMB_X33_Y8_N26
\multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ = \multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\,
	combout => \multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\);

-- Location: LCCOMB_X33_Y8_N0
\multinstance|Mult0|mult_core|decoder_node[2][1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \multinstance|Mult0|mult_core|decoder_node[2][1]~combout\ = (\SW~combout\(5) & \SW~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW~combout\(5),
	datad => \SW~combout\(1),
	combout => \multinstance|Mult0|mult_core|decoder_node[2][1]~combout\);

-- Location: LCCOMB_X33_Y8_N2
\multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\ = (\multinstance|Mult0|mult_core|decoder_node[2][0]~combout\ & (\multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ $ (VCC))) # 
-- (!\multinstance|Mult0|mult_core|decoder_node[2][0]~combout\ & (\multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & VCC))
-- \multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\ = CARRY((\multinstance|Mult0|mult_core|decoder_node[2][0]~combout\ & \multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multinstance|Mult0|mult_core|decoder_node[2][0]~combout\,
	datab => \multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	datad => VCC,
	combout => \multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\,
	cout => \multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\);

-- Location: LCCOMB_X33_Y8_N4
\multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ = (\multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & ((\multinstance|Mult0|mult_core|decoder_node[2][1]~combout\ & 
-- (\multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\ & VCC)) # (!\multinstance|Mult0|mult_core|decoder_node[2][1]~combout\ & (!\multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\)))) # 
-- (!\multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & ((\multinstance|Mult0|mult_core|decoder_node[2][1]~combout\ & (!\multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\)) # 
-- (!\multinstance|Mult0|mult_core|decoder_node[2][1]~combout\ & ((\multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\) # (GND)))))
-- \multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\ = CARRY((\multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & (!\multinstance|Mult0|mult_core|decoder_node[2][1]~combout\ & 
-- !\multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\)) # (!\multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & ((!\multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\) # 
-- (!\multinstance|Mult0|mult_core|decoder_node[2][1]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	datab => \multinstance|Mult0|mult_core|decoder_node[2][1]~combout\,
	datad => VCC,
	cin => \multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\,
	combout => \multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\,
	cout => \multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\);

-- Location: LCCOMB_X33_Y8_N6
\multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\ = ((\multinstance|Mult0|mult_core|decoder_node[2][2]~combout\ $ (\multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ $ 
-- (!\multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\)))) # (GND)
-- \multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\ = CARRY((\multinstance|Mult0|mult_core|decoder_node[2][2]~combout\ & ((\multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\) # 
-- (!\multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\))) # (!\multinstance|Mult0|mult_core|decoder_node[2][2]~combout\ & (\multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & 
-- !\multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multinstance|Mult0|mult_core|decoder_node[2][2]~combout\,
	datab => \multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	datad => VCC,
	cin => \multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\,
	combout => \multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\,
	cout => \multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\);

-- Location: LCCOMB_X32_Y9_N2
\Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\ & (\Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & VCC)) # 
-- (!\multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\ & (!\Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\))
-- \Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\ & !\Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\,
	datad => VCC,
	cin => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X32_Y9_N6
\Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY(!\Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X32_Y9_N8
\Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	combout => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\);

-- Location: LCCOMB_X31_Y9_N16
\Mod2|auto_generated|divider|divider|StageOut[30]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[30]~22_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[30]~22_combout\);

-- Location: LCCOMB_X32_Y9_N20
\Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\Mod2|auto_generated|divider|divider|StageOut[30]~23_combout\) # (\Mod2|auto_generated|divider|divider|StageOut[30]~22_combout\)))
-- \Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\Mod2|auto_generated|divider|divider|StageOut[30]~23_combout\) # (\Mod2|auto_generated|divider|divider|StageOut[30]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[30]~23_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[30]~22_combout\,
	datad => VCC,
	combout => \Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X33_Y8_N8
\multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ = \multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\,
	combout => \multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\);

-- Location: LCCOMB_X32_Y9_N14
\Mod2|auto_generated|divider|divider|StageOut[33]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[33]~16_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[33]~16_combout\);

-- Location: LCCOMB_X32_Y9_N30
\Mod2|auto_generated|divider|divider|StageOut[32]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[32]~18_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[32]~18_combout\);

-- Location: LCCOMB_X32_Y9_N18
\Mod2|auto_generated|divider|divider|StageOut[31]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[31]~20_combout\ = (\multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ & \Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\,
	datac => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[31]~20_combout\);

-- Location: LCCOMB_X32_Y9_N22
\Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (((\Mod2|auto_generated|divider|divider|StageOut[31]~21_combout\) # 
-- (\Mod2|auto_generated|divider|divider|StageOut[31]~20_combout\)))) # (!\Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (!\Mod2|auto_generated|divider|divider|StageOut[31]~21_combout\ & 
-- (!\Mod2|auto_generated|divider|divider|StageOut[31]~20_combout\)))
-- \Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\Mod2|auto_generated|divider|divider|StageOut[31]~21_combout\ & (!\Mod2|auto_generated|divider|divider|StageOut[31]~20_combout\ & 
-- !\Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[31]~21_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[31]~20_combout\,
	datad => VCC,
	cin => \Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X32_Y9_N26
\Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\Mod2|auto_generated|divider|divider|StageOut[33]~17_combout\ & (!\Mod2|auto_generated|divider|divider|StageOut[33]~16_combout\ & 
-- !\Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[33]~17_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[33]~16_combout\,
	datad => VCC,
	cin => \Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X32_Y9_N28
\Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = \Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	combout => \Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\);

-- Location: LCCOMB_X33_Y9_N18
\Mod2|auto_generated|divider|divider|StageOut[36]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[36]~27_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ & !\Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[36]~27_combout\);

-- Location: LCCOMB_X33_Y9_N4
\Mod2|auto_generated|divider|divider|StageOut[36]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[36]~26_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & \multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[36]~26_combout\);

-- Location: LCCOMB_X33_Y9_N30
\Mod2|auto_generated|divider|divider|StageOut[35]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[35]~28_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & \multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[35]~28_combout\);

-- Location: LCCOMB_X33_Y9_N10
\Mod2|auto_generated|divider|divider|add_sub_8_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ & (((\Mod2|auto_generated|divider|divider|StageOut[36]~27_combout\) # 
-- (\Mod2|auto_generated|divider|divider|StageOut[36]~26_combout\)))) # (!\Mod2|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ & (!\Mod2|auto_generated|divider|divider|StageOut[36]~27_combout\ & 
-- (!\Mod2|auto_generated|divider|divider|StageOut[36]~26_combout\)))
-- \Mod2|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ = CARRY((!\Mod2|auto_generated|divider|divider|StageOut[36]~27_combout\ & (!\Mod2|auto_generated|divider|divider|StageOut[36]~26_combout\ & 
-- !\Mod2|auto_generated|divider|divider|add_sub_8_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[36]~27_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[36]~26_combout\,
	datad => VCC,
	cin => \Mod2|auto_generated|divider|divider|add_sub_8_result_int[1]~1\,
	combout => \Mod2|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_8_result_int[2]~3\);

-- Location: LCCOMB_X33_Y9_N0
\Mod2|auto_generated|divider|divider|StageOut[42]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[42]~30_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & ((\Mod2|auto_generated|divider|divider|StageOut[36]~27_combout\) # 
-- ((\Mod2|auto_generated|divider|divider|StageOut[36]~26_combout\)))) # (!\Mod2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & (((\Mod2|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[36]~27_combout\,
	datac => \Mod2|auto_generated|divider|divider|StageOut[36]~26_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[42]~30_combout\);

-- Location: LCCOMB_X34_Y10_N30
\Mod0|auto_generated|divider|divider|StageOut[14]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\somadorinstance|Add0~2_combout\)) # (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & 
-- ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somadorinstance|Add0~2_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\);

-- Location: LCCOMB_X34_Y10_N2
\Mod1|auto_generated|divider|divider|StageOut[14]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[14]~1_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\subtratorinstance|out[2]~0_combout\))) # (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ 
-- & (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\,
	datac => \subtratorinstance|out[2]~0_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[14]~1_combout\);

-- Location: LCCOMB_X33_Y10_N22
\Mux10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\prominstance|addr_reg\(1) & (\Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\ & (\prominstance|addr_reg\(0)))) # (!\prominstance|addr_reg\(1) & ((\prominstance|addr_reg\(0) & 
-- ((\Mod1|auto_generated|divider|divider|StageOut[14]~1_combout\))) # (!\prominstance|addr_reg\(0) & (\Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prominstance|addr_reg\(1),
	datab => \Mod0|auto_generated|divider|divider|StageOut[14]~1_combout\,
	datac => \prominstance|addr_reg\(0),
	datad => \Mod1|auto_generated|divider|divider|StageOut[14]~1_combout\,
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X33_Y10_N12
\Mux10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = (\Mux12~0_combout\ & ((\Mux10~0_combout\ & (\op_xorinstance|out\(2))) # (!\Mux10~0_combout\ & ((\Mod2|auto_generated|divider|divider|StageOut[42]~30_combout\))))) # (!\Mux12~0_combout\ & (((\Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op_xorinstance|out\(2),
	datab => \Mod2|auto_generated|divider|divider|StageOut[42]~30_combout\,
	datac => \Mux12~0_combout\,
	datad => \Mux10~0_combout\,
	combout => \Mux10~1_combout\);

-- Location: LCCOMB_X33_Y10_N4
\Mux10~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux10~2_combout\ = (\prominstance|addr_reg\(1) & ((\prominstance|addr_reg\(0) & (\multinstance|Mult0|mult_core|decoder_node[2][2]~combout\)) # (!\prominstance|addr_reg\(0) & ((\Mux10~1_combout\))))) # (!\prominstance|addr_reg\(1) & 
-- (((\Mux10~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multinstance|Mult0|mult_core|decoder_node[2][2]~combout\,
	datab => \prominstance|addr_reg\(1),
	datac => \prominstance|addr_reg\(0),
	datad => \Mux10~1_combout\,
	combout => \Mux10~2_combout\);

-- Location: LCCOMB_X33_Y9_N22
\Mod2|auto_generated|divider|divider|StageOut[37]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[37]~25_combout\ = (!\Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & \Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[37]~25_combout\);

-- Location: LCCOMB_X33_Y9_N28
\Mod2|auto_generated|divider|divider|StageOut[38]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[38]~31_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- (\multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\)) # (!\Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[38]~31_combout\);

-- Location: LCCOMB_X33_Y9_N12
\Mod2|auto_generated|divider|divider|add_sub_8_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & (((\Mod2|auto_generated|divider|divider|StageOut[37]~32_combout\) # 
-- (\Mod2|auto_generated|divider|divider|StageOut[37]~25_combout\)))) # (!\Mod2|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & ((((\Mod2|auto_generated|divider|divider|StageOut[37]~32_combout\) # 
-- (\Mod2|auto_generated|divider|divider|StageOut[37]~25_combout\)))))
-- \Mod2|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ = CARRY((!\Mod2|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & ((\Mod2|auto_generated|divider|divider|StageOut[37]~32_combout\) # 
-- (\Mod2|auto_generated|divider|divider|StageOut[37]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[37]~32_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[37]~25_combout\,
	datad => VCC,
	cin => \Mod2|auto_generated|divider|divider|add_sub_8_result_int[2]~3\,
	combout => \Mod2|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_8_result_int[3]~5\);

-- Location: LCCOMB_X33_Y9_N14
\Mod2|auto_generated|divider|divider|add_sub_8_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\ = CARRY((!\Mod2|auto_generated|divider|divider|StageOut[38]~24_combout\ & (!\Mod2|auto_generated|divider|divider|StageOut[38]~31_combout\ & 
-- !\Mod2|auto_generated|divider|divider|add_sub_8_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[38]~24_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[38]~31_combout\,
	datad => VCC,
	cin => \Mod2|auto_generated|divider|divider|add_sub_8_result_int[3]~5\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\);

-- Location: LCCOMB_X33_Y9_N16
\Mod2|auto_generated|divider|divider|add_sub_8_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ = \Mod2|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod2|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\,
	combout => \Mod2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\);

-- Location: LCCOMB_X33_Y9_N26
\Mux9~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~3_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & ((\Mod2|auto_generated|divider|divider|StageOut[37]~32_combout\) # ((\Mod2|auto_generated|divider|divider|StageOut[37]~25_combout\)))) # 
-- (!\Mod2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\ & (((\Mod2|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[37]~32_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[37]~25_combout\,
	datac => \Mod2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	combout => \Mux9~3_combout\);

-- Location: LCCOMB_X33_Y10_N14
\Mux9~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~4_combout\ = (\prominstance|addr_reg\(0) & (((!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\)))) # (!\prominstance|addr_reg\(0) & (\Mux9~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prominstance|addr_reg\(0),
	datab => \Mux9~3_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\,
	combout => \Mux9~4_combout\);

-- Location: LCCOMB_X32_Y10_N18
\Mux9~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\somadorinstance|Add0~1_combout\)) # (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & 
-- ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \somadorinstance|Add0~1_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\,
	combout => \Mux9~2_combout\);

-- Location: LCCOMB_X32_Y10_N14
\Mux9~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux9~5_combout\ = (\prominstance|addr_reg\(0) & (!\prominstance|addr_reg\(1) & (\Mux9~4_combout\))) # (!\prominstance|addr_reg\(0) & ((\prominstance|addr_reg\(1) & (\Mux9~4_combout\)) # (!\prominstance|addr_reg\(1) & ((\Mux9~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prominstance|addr_reg\(0),
	datab => \prominstance|addr_reg\(1),
	datac => \Mux9~4_combout\,
	datad => \Mux9~2_combout\,
	combout => \Mux9~5_combout\);

-- Location: LCCOMB_X34_Y10_N16
\subtratorinstance|Add1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \subtratorinstance|Add1~1_combout\ = (\draminstance|dram~2_regout\ & ((\draminstance|dram~5_regout\ & (\subtratorinstance|Add0~0_combout\ & !\subtratorinstance|Add1~0_combout\)) # (!\draminstance|dram~5_regout\ & (!\subtratorinstance|Add0~0_combout\ & 
-- \subtratorinstance|Add1~0_combout\)))) # (!\draminstance|dram~2_regout\ & ((\draminstance|dram~5_regout\ & ((\subtratorinstance|Add0~0_combout\) # (!\subtratorinstance|Add1~0_combout\))) # (!\draminstance|dram~5_regout\ & 
-- (\subtratorinstance|Add0~0_combout\ & !\subtratorinstance|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \draminstance|dram~2_regout\,
	datab => \draminstance|dram~5_regout\,
	datac => \subtratorinstance|Add0~0_combout\,
	datad => \subtratorinstance|Add1~0_combout\,
	combout => \subtratorinstance|Add1~1_combout\);

-- Location: LCCOMB_X30_Y10_N10
\Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1_cout\ = CARRY(!\subtratorinstance|out[1]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \subtratorinstance|out[1]~1_combout\,
	datad => VCC,
	cout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1_cout\);

-- Location: LCCOMB_X30_Y10_N12
\Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3_cout\ = CARRY((!\subtratorinstance|out[2]~0_combout\ & !\Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \subtratorinstance|out[2]~0_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1_cout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3_cout\);

-- Location: LCCOMB_X30_Y10_N14
\Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5_cout\ = CARRY((!\subtratorinstance|Add0~1_combout\ & (\subtratorinstance|Add1~1_combout\ & !\Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \subtratorinstance|Add0~1_combout\,
	datab => \subtratorinstance|Add1~1_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3_cout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5_cout\);

-- Location: LCCOMB_X30_Y10_N16
\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5_cout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X31_Y10_N16
\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1_cout\ = CARRY(\somadorinstance|Add0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \somadorinstance|Add0~3_combout\,
	datad => VCC,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1_cout\);

-- Location: LCCOMB_X31_Y10_N18
\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3_cout\ = CARRY((!\somadorinstance|Add0~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \somadorinstance|Add0~2_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3_cout\);

-- Location: LCCOMB_X31_Y10_N20
\Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5_cout\ = CARRY((\somadorinstance|Add0~1_combout\ & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \somadorinstance|Add0~1_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5_cout\);

-- Location: LCCOMB_X31_Y10_N22
\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X30_Y10_N0
\Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\prominstance|addr_reg\(0) & (((\prominstance|addr_reg\(1))))) # (!\prominstance|addr_reg\(0) & ((\prominstance|addr_reg\(1) & (\Div2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\)) # (!\prominstance|addr_reg\(1) & 
-- ((\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_8_result_int[5]~8_combout\,
	datab => \prominstance|addr_reg\(0),
	datac => \prominstance|addr_reg\(1),
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X30_Y10_N22
\Mux8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = (\Mux8~0_combout\) # ((\subtratorinstance|Add0~1_combout\ & (\prominstance|addr_reg\(0) & \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \subtratorinstance|Add0~1_combout\,
	datab => \prominstance|addr_reg\(0),
	datac => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mux8~0_combout\,
	combout => \Mux8~1_combout\);

-- Location: LCCOMB_X32_Y8_N24
\Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\ & (\Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & VCC)) # 
-- (!\multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\ & (!\Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\))
-- \Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\ & !\Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X32_Y8_N26
\Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ & (\Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ $ (GND))) # 
-- (!\multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ & (!\Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & VCC))
-- \Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((\multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ & !\Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X32_Y8_N28
\Div2|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY(!\Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \Div2|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X32_Y8_N30
\Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \Div2|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div2|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	combout => \Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\);

-- Location: LCCOMB_X32_Y8_N18
\Div2|auto_generated|divider|divider|StageOut[33]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[33]~17_combout\ = (\Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[33]~17_combout\);

-- Location: LCCOMB_X31_Y8_N16
\Div2|auto_generated|divider|divider|StageOut[32]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[32]~19_combout\ = (\Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[32]~19_combout\);

-- Location: LCCOMB_X32_Y8_N0
\Div2|auto_generated|divider|divider|StageOut[31]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[31]~20_combout\ = (\Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[31]~20_combout\);

-- Location: LCCOMB_X32_Y8_N4
\Div2|auto_generated|divider|divider|StageOut[30]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[30]~22_combout\ = (\Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[30]~22_combout\);

-- Location: LCCOMB_X32_Y8_N12
\Div2|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[33]~16_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[33]~17_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[33]~16_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[33]~17_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	cout => \Div2|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X32_Y8_N14
\Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = \Div2|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div2|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	combout => \Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\);

-- Location: LCCOMB_X30_Y10_N20
\Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\prominstance|addr_reg\(1) & ((\Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\) # ((\prominstance|addr_reg\(0))))) # (!\prominstance|addr_reg\(1) & (((\subtratorinstance|Add0~1_combout\) # 
-- (!\prominstance|addr_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datab => \subtratorinstance|Add0~1_combout\,
	datac => \prominstance|addr_reg\(1),
	datad => \prominstance|addr_reg\(0),
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X30_Y10_N6
\Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\prominstance|addr_reg\(1) & ((\Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\) # ((\prominstance|addr_reg\(0))))) # (!\prominstance|addr_reg\(1) & (((\subtratorinstance|Add0~1_combout\) # 
-- (!\prominstance|addr_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \subtratorinstance|Add0~1_combout\,
	datac => \prominstance|addr_reg\(1),
	datad => \prominstance|addr_reg\(0),
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X30_Y10_N28
\Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = ((\prominstance|addr_reg\(1)) # (\subtratorinstance|Add0~1_combout\)) # (!\prominstance|addr_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \prominstance|addr_reg\(0),
	datac => \prominstance|addr_reg\(1),
	datad => \subtratorinstance|Add0~1_combout\,
	combout => \Mux5~0_combout\);

-- Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G2
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: LCCOMB_X33_Y10_N10
\seg7instance|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|WideOr6~0_combout\ = (\Mux9~5_combout\ & (\Mux12~3_combout\ & (\Mux10~2_combout\ $ (\Mux11~4_combout\)))) # (!\Mux9~5_combout\ & (!\Mux11~4_combout\ & (\Mux10~2_combout\ $ (\Mux12~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~5_combout\,
	datab => \Mux10~2_combout\,
	datac => \Mux11~4_combout\,
	datad => \Mux12~3_combout\,
	combout => \seg7instance|WideOr6~0_combout\);

-- Location: LCFF_X33_Y10_N11
\seg7instance|hex_out0[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \seg7instance|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out0\(0));

-- Location: LCCOMB_X33_Y10_N8
\seg7instance|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|WideOr5~0_combout\ = (\Mux9~5_combout\ & ((\Mux12~3_combout\ & ((\Mux11~4_combout\))) # (!\Mux12~3_combout\ & (\Mux10~2_combout\)))) # (!\Mux9~5_combout\ & (\Mux10~2_combout\ & (\Mux11~4_combout\ $ (\Mux12~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~5_combout\,
	datab => \Mux10~2_combout\,
	datac => \Mux11~4_combout\,
	datad => \Mux12~3_combout\,
	combout => \seg7instance|WideOr5~0_combout\);

-- Location: LCFF_X33_Y10_N9
\seg7instance|hex_out0[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \seg7instance|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out0\(1));

-- Location: LCCOMB_X33_Y10_N2
\seg7instance|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|WideOr4~0_combout\ = (\Mux10~2_combout\ & (\Mux9~5_combout\ & ((\Mux11~4_combout\) # (!\Mux12~3_combout\)))) # (!\Mux10~2_combout\ & (\Mux11~4_combout\ & (!\Mux12~3_combout\ & !\Mux9~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~4_combout\,
	datab => \Mux12~3_combout\,
	datac => \Mux10~2_combout\,
	datad => \Mux9~5_combout\,
	combout => \seg7instance|WideOr4~0_combout\);

-- Location: LCFF_X33_Y10_N3
\seg7instance|hex_out0[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \seg7instance|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out0\(2));

-- Location: LCCOMB_X33_Y10_N16
\seg7instance|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|WideOr3~0_combout\ = (\Mux11~4_combout\ & ((\Mux10~2_combout\ & ((\Mux12~3_combout\))) # (!\Mux10~2_combout\ & (\Mux9~5_combout\ & !\Mux12~3_combout\)))) # (!\Mux11~4_combout\ & (!\Mux9~5_combout\ & (\Mux10~2_combout\ $ 
-- (\Mux12~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~5_combout\,
	datab => \Mux10~2_combout\,
	datac => \Mux11~4_combout\,
	datad => \Mux12~3_combout\,
	combout => \seg7instance|WideOr3~0_combout\);

-- Location: LCFF_X33_Y10_N17
\seg7instance|hex_out0[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \seg7instance|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out0\(3));

-- Location: LCCOMB_X33_Y10_N28
\seg7instance|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|WideOr2~0_combout\ = (\Mux11~4_combout\ & (!\Mux9~5_combout\ & ((\Mux12~3_combout\)))) # (!\Mux11~4_combout\ & ((\Mux10~2_combout\ & (!\Mux9~5_combout\)) # (!\Mux10~2_combout\ & ((\Mux12~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~5_combout\,
	datab => \Mux10~2_combout\,
	datac => \Mux11~4_combout\,
	datad => \Mux12~3_combout\,
	combout => \seg7instance|WideOr2~0_combout\);

-- Location: LCFF_X33_Y10_N29
\seg7instance|hex_out0[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \seg7instance|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out0\(4));

-- Location: LCCOMB_X33_Y10_N26
\seg7instance|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|WideOr1~0_combout\ = (\Mux10~2_combout\ & (\Mux12~3_combout\ & (\Mux9~5_combout\ $ (\Mux11~4_combout\)))) # (!\Mux10~2_combout\ & (!\Mux9~5_combout\ & ((\Mux11~4_combout\) # (\Mux12~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~5_combout\,
	datab => \Mux10~2_combout\,
	datac => \Mux11~4_combout\,
	datad => \Mux12~3_combout\,
	combout => \seg7instance|WideOr1~0_combout\);

-- Location: LCFF_X33_Y10_N27
\seg7instance|hex_out0[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \seg7instance|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out0\(5));

-- Location: LCCOMB_X33_Y10_N20
\seg7instance|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|WideOr0~0_combout\ = (\Mux12~3_combout\ & (!\Mux9~5_combout\ & (\Mux10~2_combout\ $ (!\Mux11~4_combout\)))) # (!\Mux12~3_combout\ & (!\Mux11~4_combout\ & (\Mux9~5_combout\ $ (!\Mux10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~5_combout\,
	datab => \Mux10~2_combout\,
	datac => \Mux11~4_combout\,
	datad => \Mux12~3_combout\,
	combout => \seg7instance|WideOr0~0_combout\);

-- Location: LCFF_X33_Y10_N21
\seg7instance|hex_out0[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \seg7instance|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out0\(6));

-- Location: LCCOMB_X30_Y10_N26
\seg7instance|WideOr13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|WideOr13~0_combout\ = (\Mux5~0_combout\ & (\Mux7~0_combout\ & (\Mux6~0_combout\ $ (\Mux8~1_combout\)))) # (!\Mux5~0_combout\ & (!\Mux8~1_combout\ & ((!\Mux7~0_combout\) # (!\Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~0_combout\,
	datab => \Mux5~0_combout\,
	datac => \Mux7~0_combout\,
	datad => \Mux8~1_combout\,
	combout => \seg7instance|WideOr13~0_combout\);

-- Location: LCFF_X30_Y10_N27
\seg7instance|hex_out1[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \seg7instance|WideOr13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out1\(0));

-- Location: LCCOMB_X30_Y10_N24
\seg7instance|WideOr12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|WideOr12~0_combout\ = (\Mux5~0_combout\ & (!\Mux6~0_combout\ & (\Mux7~0_combout\ $ (\Mux8~1_combout\)))) # (!\Mux5~0_combout\ & ((\Mux8~1_combout\ & (!\Mux6~0_combout\)) # (!\Mux8~1_combout\ & ((!\Mux7~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~0_combout\,
	datab => \Mux5~0_combout\,
	datac => \Mux7~0_combout\,
	datad => \Mux8~1_combout\,
	combout => \seg7instance|WideOr12~0_combout\);

-- Location: LCFF_X30_Y10_N25
\seg7instance|hex_out1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \seg7instance|WideOr12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out1\(1));

-- Location: LCCOMB_X30_Y10_N30
\seg7instance|WideOr11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|WideOr11~0_combout\ = (\Mux6~0_combout\ & (\Mux5~0_combout\ & (!\Mux7~0_combout\ & \Mux8~1_combout\))) # (!\Mux6~0_combout\ & (!\Mux5~0_combout\ & ((\Mux8~1_combout\) # (!\Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~0_combout\,
	datab => \Mux5~0_combout\,
	datac => \Mux7~0_combout\,
	datad => \Mux8~1_combout\,
	combout => \seg7instance|WideOr11~0_combout\);

-- Location: LCFF_X30_Y10_N31
\seg7instance|hex_out1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \seg7instance|WideOr11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out1\(2));

-- Location: LCCOMB_X30_Y10_N8
\seg7instance|WideOr10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|WideOr10~0_combout\ = (\Mux7~0_combout\ & (\Mux5~0_combout\ & (\Mux6~0_combout\ $ (\Mux8~1_combout\)))) # (!\Mux7~0_combout\ & ((\Mux6~0_combout\ & (!\Mux5~0_combout\ & \Mux8~1_combout\)) # (!\Mux6~0_combout\ & ((!\Mux8~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~0_combout\,
	datab => \Mux5~0_combout\,
	datac => \Mux7~0_combout\,
	datad => \Mux8~1_combout\,
	combout => \seg7instance|WideOr10~0_combout\);

-- Location: LCFF_X30_Y10_N9
\seg7instance|hex_out1[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \seg7instance|WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out1\(3));

-- Location: LCCOMB_X30_Y10_N18
\seg7instance|WideOr9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|WideOr9~0_combout\ = (\Mux6~0_combout\ & (!\Mux8~1_combout\ & ((\Mux5~0_combout\) # (\Mux7~0_combout\)))) # (!\Mux6~0_combout\ & ((\Mux7~0_combout\ & (\Mux5~0_combout\)) # (!\Mux7~0_combout\ & ((!\Mux8~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~0_combout\,
	datab => \Mux5~0_combout\,
	datac => \Mux7~0_combout\,
	datad => \Mux8~1_combout\,
	combout => \seg7instance|WideOr9~0_combout\);

-- Location: LCFF_X30_Y10_N19
\seg7instance|hex_out1[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \seg7instance|WideOr9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out1\(4));

-- Location: LCCOMB_X30_Y10_N4
\seg7instance|WideOr8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|WideOr8~0_combout\ = (\Mux6~0_combout\ & (\Mux5~0_combout\ & ((!\Mux8~1_combout\) # (!\Mux7~0_combout\)))) # (!\Mux6~0_combout\ & (!\Mux8~1_combout\ & ((!\Mux7~0_combout\) # (!\Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~0_combout\,
	datab => \Mux5~0_combout\,
	datac => \Mux7~0_combout\,
	datad => \Mux8~1_combout\,
	combout => \seg7instance|WideOr8~0_combout\);

-- Location: LCFF_X30_Y10_N5
\seg7instance|hex_out1[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \seg7instance|WideOr8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out1\(5));

-- Location: LCCOMB_X30_Y10_N2
\seg7instance|WideOr7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|WideOr7~0_combout\ = (\Mux8~1_combout\ & (\Mux7~0_combout\ & (\Mux6~0_combout\ $ (!\Mux5~0_combout\)))) # (!\Mux8~1_combout\ & (\Mux5~0_combout\ & (\Mux6~0_combout\ $ (!\Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~0_combout\,
	datab => \Mux5~0_combout\,
	datac => \Mux7~0_combout\,
	datad => \Mux8~1_combout\,
	combout => \seg7instance|WideOr7~0_combout\);

-- Location: LCFF_X30_Y10_N3
\seg7instance|hex_out1[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \seg7instance|WideOr7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out1\(6));

-- Location: LCCOMB_X31_Y10_N24
\seg7instance|WideOr20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|WideOr20~0_combout\ = (!\draminstance|dram~1_regout\ & (\draminstance|dram~0_regout\ $ (\draminstance|dram~2_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \draminstance|dram~0_regout\,
	datac => \draminstance|dram~1_regout\,
	datad => \draminstance|dram~2_regout\,
	combout => \seg7instance|WideOr20~0_combout\);

-- Location: LCFF_X31_Y10_N25
\seg7instance|hex_out2[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \seg7instance|WideOr20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out2\(0));

-- Location: LCCOMB_X31_Y10_N6
\seg7instance|WideOr19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|WideOr19~0_combout\ = (\draminstance|dram~2_regout\ & (\draminstance|dram~0_regout\ $ (\draminstance|dram~1_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \draminstance|dram~0_regout\,
	datac => \draminstance|dram~1_regout\,
	datad => \draminstance|dram~2_regout\,
	combout => \seg7instance|WideOr19~0_combout\);

-- Location: LCFF_X31_Y10_N7
\seg7instance|hex_out2[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \seg7instance|WideOr19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out2\(1));

-- Location: LCCOMB_X31_Y10_N0
\seg7instance|Decoder2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|Decoder2~0_combout\ = (!\draminstance|dram~0_regout\ & (\draminstance|dram~1_regout\ & !\draminstance|dram~2_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \draminstance|dram~0_regout\,
	datac => \draminstance|dram~1_regout\,
	datad => \draminstance|dram~2_regout\,
	combout => \seg7instance|Decoder2~0_combout\);

-- Location: LCFF_X31_Y10_N1
\seg7instance|hex_out2[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \seg7instance|Decoder2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out2\(2));

-- Location: LCCOMB_X31_Y10_N10
\seg7instance|WideOr17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|WideOr17~0_combout\ = (\draminstance|dram~0_regout\ & (\draminstance|dram~1_regout\ $ (!\draminstance|dram~2_regout\))) # (!\draminstance|dram~0_regout\ & (!\draminstance|dram~1_regout\ & \draminstance|dram~2_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \draminstance|dram~0_regout\,
	datac => \draminstance|dram~1_regout\,
	datad => \draminstance|dram~2_regout\,
	combout => \seg7instance|WideOr17~0_combout\);

-- Location: LCFF_X31_Y10_N11
\seg7instance|hex_out2[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \seg7instance|WideOr17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out2\(3));

-- Location: LCCOMB_X31_Y10_N4
\seg7instance|WideOr16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|WideOr16~0_combout\ = (\draminstance|dram~0_regout\) # ((!\draminstance|dram~1_regout\ & \draminstance|dram~2_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \draminstance|dram~0_regout\,
	datac => \draminstance|dram~1_regout\,
	datad => \draminstance|dram~2_regout\,
	combout => \seg7instance|WideOr16~0_combout\);

-- Location: LCFF_X31_Y10_N5
\seg7instance|hex_out2[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \seg7instance|WideOr16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out2\(4));

-- Location: LCCOMB_X31_Y10_N26
\seg7instance|WideOr15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|WideOr15~0_combout\ = (\draminstance|dram~0_regout\ & ((\draminstance|dram~1_regout\) # (!\draminstance|dram~2_regout\))) # (!\draminstance|dram~0_regout\ & (\draminstance|dram~1_regout\ & !\draminstance|dram~2_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \draminstance|dram~0_regout\,
	datac => \draminstance|dram~1_regout\,
	datad => \draminstance|dram~2_regout\,
	combout => \seg7instance|WideOr15~0_combout\);

-- Location: LCFF_X31_Y10_N27
\seg7instance|hex_out2[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \seg7instance|WideOr15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out2\(5));

-- Location: LCCOMB_X31_Y10_N12
\seg7instance|WideOr14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|WideOr14~0_combout\ = (\draminstance|dram~1_regout\ & (\draminstance|dram~0_regout\ & \draminstance|dram~2_regout\)) # (!\draminstance|dram~1_regout\ & ((!\draminstance|dram~2_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \draminstance|dram~0_regout\,
	datac => \draminstance|dram~1_regout\,
	datad => \draminstance|dram~2_regout\,
	combout => \seg7instance|WideOr14~0_combout\);

-- Location: LCFF_X31_Y10_N13
\seg7instance|hex_out2[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \seg7instance|WideOr14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out2\(6));

-- Location: LCCOMB_X1_Y18_N24
\seg7instance|WideOr27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|WideOr27~0_combout\ = (!\draminstance|dram~4_regout\ & (\draminstance|dram~3_regout\ $ (\draminstance|dram~5_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \draminstance|dram~3_regout\,
	datac => \draminstance|dram~5_regout\,
	datad => \draminstance|dram~4_regout\,
	combout => \seg7instance|WideOr27~0_combout\);

-- Location: LCFF_X1_Y18_N25
\seg7instance|hex_out3[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \seg7instance|WideOr27~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out3\(0));

-- Location: LCCOMB_X1_Y18_N6
\seg7instance|WideOr26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|WideOr26~0_combout\ = (\draminstance|dram~5_regout\ & (\draminstance|dram~3_regout\ $ (\draminstance|dram~4_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \draminstance|dram~3_regout\,
	datac => \draminstance|dram~5_regout\,
	datad => \draminstance|dram~4_regout\,
	combout => \seg7instance|WideOr26~0_combout\);

-- Location: LCFF_X1_Y18_N7
\seg7instance|hex_out3[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \seg7instance|WideOr26~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out3\(1));

-- Location: LCCOMB_X1_Y18_N4
\seg7instance|Decoder3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|Decoder3~0_combout\ = (!\draminstance|dram~3_regout\ & (!\draminstance|dram~5_regout\ & \draminstance|dram~4_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \draminstance|dram~3_regout\,
	datac => \draminstance|dram~5_regout\,
	datad => \draminstance|dram~4_regout\,
	combout => \seg7instance|Decoder3~0_combout\);

-- Location: LCFF_X1_Y18_N5
\seg7instance|hex_out3[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \seg7instance|Decoder3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out3\(2));

-- Location: LCCOMB_X1_Y18_N26
\seg7instance|WideOr24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|WideOr24~0_combout\ = (\draminstance|dram~3_regout\ & (\draminstance|dram~5_regout\ $ (!\draminstance|dram~4_regout\))) # (!\draminstance|dram~3_regout\ & (\draminstance|dram~5_regout\ & !\draminstance|dram~4_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \draminstance|dram~3_regout\,
	datac => \draminstance|dram~5_regout\,
	datad => \draminstance|dram~4_regout\,
	combout => \seg7instance|WideOr24~0_combout\);

-- Location: LCFF_X1_Y18_N27
\seg7instance|hex_out3[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \seg7instance|WideOr24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out3\(3));

-- Location: LCCOMB_X1_Y18_N0
\seg7instance|WideOr23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|WideOr23~0_combout\ = (\draminstance|dram~3_regout\) # ((\draminstance|dram~5_regout\ & !\draminstance|dram~4_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \draminstance|dram~3_regout\,
	datac => \draminstance|dram~5_regout\,
	datad => \draminstance|dram~4_regout\,
	combout => \seg7instance|WideOr23~0_combout\);

-- Location: LCFF_X1_Y18_N1
\seg7instance|hex_out3[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \seg7instance|WideOr23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out3\(4));

-- Location: LCCOMB_X1_Y18_N10
\seg7instance|WideOr22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|WideOr22~0_combout\ = (\draminstance|dram~3_regout\ & ((\draminstance|dram~4_regout\) # (!\draminstance|dram~5_regout\))) # (!\draminstance|dram~3_regout\ & (!\draminstance|dram~5_regout\ & \draminstance|dram~4_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \draminstance|dram~3_regout\,
	datac => \draminstance|dram~5_regout\,
	datad => \draminstance|dram~4_regout\,
	combout => \seg7instance|WideOr22~0_combout\);

-- Location: LCFF_X1_Y18_N11
\seg7instance|hex_out3[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \seg7instance|WideOr22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out3\(5));

-- Location: LCCOMB_X1_Y18_N8
\seg7instance|WideOr21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|WideOr21~0_combout\ = (\draminstance|dram~5_regout\ & (\draminstance|dram~3_regout\ & \draminstance|dram~4_regout\)) # (!\draminstance|dram~5_regout\ & ((!\draminstance|dram~4_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \draminstance|dram~3_regout\,
	datac => \draminstance|dram~5_regout\,
	datad => \draminstance|dram~4_regout\,
	combout => \seg7instance|WideOr21~0_combout\);

-- Location: LCFF_X1_Y18_N9
\seg7instance|hex_out3[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \seg7instance|WideOr21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out3\(6));

-- Location: PIN_AB6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rst~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_rst);

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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(2));

-- Location: PIN_R12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \Mux12~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp0(0));

-- Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \Mux11~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp0(1));

-- Location: PIN_AB14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \Mux10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp0(2));

-- Location: PIN_U13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \Mux9~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp0(3));

-- Location: PIN_N3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp0[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_disp0(4));

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp0[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_disp0(5));

-- Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp0[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_disp0(6));

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp0[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_disp0(7));

-- Location: PIN_V15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp0[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_disp0(8));

-- Location: PIN_AB13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALT_INV_Mux8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp1(0));

-- Location: PIN_AA12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALT_INV_Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp1(1));

-- Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALT_INV_Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp1(2));

-- Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \ALT_INV_Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp1(3));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp1[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_disp1(4));

-- Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp1[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_disp1(5));

-- Location: PIN_K20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp1[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_disp1(6));

-- Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp1[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_disp1(7));

-- Location: PIN_T5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp1[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_disp1(8));

-- Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \draminstance|dram~0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp2(0));

-- Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \draminstance|dram~1_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp2(1));

-- Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \draminstance|dram~2_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp2(2));

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp2(3));

-- Location: PIN_M6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \draminstance|dram~3_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp3(0));

-- Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \draminstance|dram~4_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp3(1));

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \draminstance|dram~5_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp3(2));

-- Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
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

-- Location: PIN_Y9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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


