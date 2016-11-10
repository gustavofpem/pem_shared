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

-- DATE "11/10/2016 19:00:38"

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
-- disp0[0]	=>  Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp0[1]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp0[2]	=>  Location: PIN_AA6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp0[3]	=>  Location: PIN_W1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp1[0]	=>  Location: PIN_Y1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp1[1]	=>  Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp1[2]	=>  Location: PIN_W4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp1[3]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp2[0]	=>  Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp2[1]	=>  Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp2[2]	=>  Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp2[3]	=>  Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp3[0]	=>  Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp3[1]	=>  Location: PIN_A3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp3[2]	=>  Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp3[3]	=>  Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[0]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[1]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[2]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[3]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[4]	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[5]	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[6]	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[7]	=>  Location: PIN_F22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[0]	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[1]	=>  Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[2]	=>  Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[3]	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[4]	=>  Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[5]	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[6]	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[7]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[0]	=>  Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[1]	=>  Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[2]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[3]	=>  Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[4]	=>  Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[5]	=>  Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[6]	=>  Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[7]	=>  Location: PIN_T1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[0]	=>  Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[1]	=>  Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[2]	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[3]	=>  Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[4]	=>  Location: PIN_L8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[5]	=>  Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[6]	=>  Location: PIN_D4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[7]	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
SIGNAL \pc~2_combout\ : std_logic;
SIGNAL \pc~1_combout\ : std_logic;
SIGNAL \pc~0_combout\ : std_logic;
SIGNAL \LEDG[0]~reg0feeder_combout\ : std_logic;
SIGNAL \LEDG[0]~reg0_regout\ : std_logic;
SIGNAL \LEDG[1]~reg0feeder_combout\ : std_logic;
SIGNAL \LEDG[1]~reg0_regout\ : std_logic;
SIGNAL \LEDG[2]~reg0feeder_combout\ : std_logic;
SIGNAL \LEDG[2]~reg0_regout\ : std_logic;
SIGNAL \CLOCK_50~combout\ : std_logic;
SIGNAL \CLOCK_50~clkctrl_outclk\ : std_logic;
SIGNAL \data[0]~feeder_combout\ : std_logic;
SIGNAL \draminstance|dram~0feeder_combout\ : std_logic;
SIGNAL \we_d~0_combout\ : std_logic;
SIGNAL \we_d~regout\ : std_logic;
SIGNAL \draminstance|dram~0_regout\ : std_logic;
SIGNAL \LEDR[0]~reg0feeder_combout\ : std_logic;
SIGNAL \LEDR[0]~reg0_regout\ : std_logic;
SIGNAL \data[1]~feeder_combout\ : std_logic;
SIGNAL \draminstance|dram~1_regout\ : std_logic;
SIGNAL \LEDR[1]~reg0_regout\ : std_logic;
SIGNAL \draminstance|dram~2feeder_combout\ : std_logic;
SIGNAL \draminstance|dram~2_regout\ : std_logic;
SIGNAL \LEDR[2]~reg0feeder_combout\ : std_logic;
SIGNAL \LEDR[2]~reg0_regout\ : std_logic;
SIGNAL \data[3]~feeder_combout\ : std_logic;
SIGNAL \draminstance|dram~3feeder_combout\ : std_logic;
SIGNAL \draminstance|dram~3_regout\ : std_logic;
SIGNAL \LEDR[3]~reg0feeder_combout\ : std_logic;
SIGNAL \LEDR[3]~reg0_regout\ : std_logic;
SIGNAL \data[4]~feeder_combout\ : std_logic;
SIGNAL \draminstance|dram~4feeder_combout\ : std_logic;
SIGNAL \draminstance|dram~4_regout\ : std_logic;
SIGNAL \LEDR[4]~reg0feeder_combout\ : std_logic;
SIGNAL \LEDR[4]~reg0_regout\ : std_logic;
SIGNAL \data[5]~feeder_combout\ : std_logic;
SIGNAL \draminstance|dram~5feeder_combout\ : std_logic;
SIGNAL \draminstance|dram~5_regout\ : std_logic;
SIGNAL \LEDR[5]~reg0feeder_combout\ : std_logic;
SIGNAL \LEDR[5]~reg0_regout\ : std_logic;
SIGNAL \data[6]~feeder_combout\ : std_logic;
SIGNAL \draminstance|dram~6feeder_combout\ : std_logic;
SIGNAL \draminstance|dram~6_regout\ : std_logic;
SIGNAL \LEDR[6]~reg0_regout\ : std_logic;
SIGNAL \draminstance|dram~7_regout\ : std_logic;
SIGNAL \LEDR[7]~reg0feeder_combout\ : std_logic;
SIGNAL \LEDR[7]~reg0_regout\ : std_logic;
SIGNAL \disp2[0]~reg0_regout\ : std_logic;
SIGNAL \disp2[1]~reg0_regout\ : std_logic;
SIGNAL \disp2[2]~reg0_regout\ : std_logic;
SIGNAL \disp2[3]~reg0_regout\ : std_logic;
SIGNAL \disp3[0]~reg0feeder_combout\ : std_logic;
SIGNAL \disp3[0]~reg0_regout\ : std_logic;
SIGNAL \disp3[1]~reg0feeder_combout\ : std_logic;
SIGNAL \disp3[1]~reg0_regout\ : std_logic;
SIGNAL \disp3[2]~reg0feeder_combout\ : std_logic;
SIGNAL \disp3[2]~reg0_regout\ : std_logic;
SIGNAL \disp3[3]~reg0feeder_combout\ : std_logic;
SIGNAL \disp3[3]~reg0_regout\ : std_logic;
SIGNAL \seg7instance|display_state.11~feeder_combout\ : std_logic;
SIGNAL \seg7instance|display_state.11~regout\ : std_logic;
SIGNAL \seg7instance|display_state.00~0_combout\ : std_logic;
SIGNAL \seg7instance|display_state.00~regout\ : std_logic;
SIGNAL \seg7instance|display_state.01~0_combout\ : std_logic;
SIGNAL \seg7instance|display_state.01~regout\ : std_logic;
SIGNAL \seg7instance|display_state.10~regout\ : std_logic;
SIGNAL \seg7instance|Selector2~0_combout\ : std_logic;
SIGNAL \seg7instance|Selector3~0_combout\ : std_logic;
SIGNAL \seg7instance|Selector1~0_combout\ : std_logic;
SIGNAL \seg7instance|WideOr6~0_combout\ : std_logic;
SIGNAL \seg7instance|hex_out0[0]~feeder_combout\ : std_logic;
SIGNAL \seg7instance|WideOr5~0_combout\ : std_logic;
SIGNAL \seg7instance|hex_out0[1]~feeder_combout\ : std_logic;
SIGNAL \seg7instance|WideOr4~0_combout\ : std_logic;
SIGNAL \seg7instance|hex_out0[2]~feeder_combout\ : std_logic;
SIGNAL \seg7instance|Selector0~0_combout\ : std_logic;
SIGNAL \seg7instance|WideOr3~0_combout\ : std_logic;
SIGNAL \seg7instance|hex_out0[3]~feeder_combout\ : std_logic;
SIGNAL \seg7instance|WideOr2~0_combout\ : std_logic;
SIGNAL \seg7instance|hex_out0[4]~feeder_combout\ : std_logic;
SIGNAL \seg7instance|WideOr1~0_combout\ : std_logic;
SIGNAL \seg7instance|hex_out0[5]~feeder_combout\ : std_logic;
SIGNAL \seg7instance|WideOr0~0_combout\ : std_logic;
SIGNAL \seg7instance|hex_out0[6]~feeder_combout\ : std_logic;
SIGNAL \seg7instance|hex_out1[0]~feeder_combout\ : std_logic;
SIGNAL \seg7instance|hex_out1[2]~feeder_combout\ : std_logic;
SIGNAL \seg7instance|hex_out1[3]~feeder_combout\ : std_logic;
SIGNAL \seg7instance|hex_out1[6]~feeder_combout\ : std_logic;
SIGNAL \seg7instance|hex_out2[0]~feeder_combout\ : std_logic;
SIGNAL \seg7instance|hex_out2[2]~feeder_combout\ : std_logic;
SIGNAL \seg7instance|hex_out3[1]~feeder_combout\ : std_logic;
SIGNAL \seg7instance|hex_out3[3]~feeder_combout\ : std_logic;
SIGNAL \seg7instance|hex_out3[4]~feeder_combout\ : std_logic;
SIGNAL \seg7instance|hex_out3[5]~feeder_combout\ : std_logic;
SIGNAL \seg7instance|hex_out3[6]~feeder_combout\ : std_logic;
SIGNAL pc : std_logic_vector(2 DOWNTO 0);
SIGNAL data : std_logic_vector(8 DOWNTO 0);
SIGNAL \seg7instance|hex_out3\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \seg7instance|hex_out2\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \seg7instance|hex_out1\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \seg7instance|hex_out0\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \KEY~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW~combout\ : std_logic_vector(7 DOWNTO 0);
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

-- Location: LCCOMB_X49_Y9_N30
\pc~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc~2_combout\ = (pc(0) & (!pc(2) & pc(1))) # (!pc(0) & (pc(2) & !pc(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => pc(0),
	datac => pc(2),
	datad => pc(1),
	combout => \pc~2_combout\);

-- Location: LCFF_X49_Y9_N31
\pc[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	datain => \pc~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => pc(2));

-- Location: LCCOMB_X49_Y9_N28
\pc~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \pc~1_combout\ = (!pc(2) & (pc(0) $ (pc(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => pc(0),
	datac => pc(1),
	datad => pc(2),
	combout => \pc~1_combout\);

-- Location: LCFF_X49_Y9_N29
\pc[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	datain => \pc~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => pc(1));

-- Location: LCCOMB_X49_Y9_N18
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

-- Location: LCFF_X49_Y9_N19
\pc[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	datain => \pc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => pc(0));

-- Location: LCCOMB_X49_Y9_N12
\LEDG[0]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \LEDG[0]~reg0feeder_combout\ = pc(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => pc(0),
	combout => \LEDG[0]~reg0feeder_combout\);

-- Location: LCFF_X49_Y9_N13
\LEDG[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	datain => \LEDG[0]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LEDG[0]~reg0_regout\);

-- Location: LCCOMB_X49_Y9_N22
\LEDG[1]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \LEDG[1]~reg0feeder_combout\ = pc(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => pc(1),
	combout => \LEDG[1]~reg0feeder_combout\);

-- Location: LCFF_X49_Y9_N23
\LEDG[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	datain => \LEDG[1]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LEDG[1]~reg0_regout\);

-- Location: LCCOMB_X49_Y9_N16
\LEDG[2]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \LEDG[2]~reg0feeder_combout\ = pc(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => pc(2),
	combout => \LEDG[2]~reg0feeder_combout\);

-- Location: LCFF_X49_Y9_N17
\LEDG[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	datain => \LEDG[2]~reg0feeder_combout\,
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

-- Location: LCCOMB_X22_Y21_N28
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

-- Location: LCFF_X22_Y21_N29
\data[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \data[0]~feeder_combout\,
	ena => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => data(0));

-- Location: LCCOMB_X22_Y21_N26
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

-- Location: LCCOMB_X23_Y21_N12
\we_d~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \we_d~0_combout\ = !\KEY~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY~combout\(2),
	combout => \we_d~0_combout\);

-- Location: LCFF_X23_Y21_N13
we_d : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \we_d~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \we_d~regout\);

-- Location: LCFF_X22_Y21_N27
\draminstance|dram~0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \draminstance|dram~0feeder_combout\,
	ena => \we_d~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \draminstance|dram~0_regout\);

-- Location: LCCOMB_X22_Y21_N0
\LEDR[0]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \LEDR[0]~reg0feeder_combout\ = \draminstance|dram~0_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \draminstance|dram~0_regout\,
	combout => \LEDR[0]~reg0feeder_combout\);

-- Location: LCFF_X22_Y21_N1
\LEDR[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \LEDR[0]~reg0feeder_combout\,
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

-- Location: LCCOMB_X22_Y21_N14
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

-- Location: LCFF_X22_Y21_N15
\data[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \data[1]~feeder_combout\,
	ena => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => data(1));

-- Location: LCFF_X22_Y21_N25
\draminstance|dram~1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => data(1),
	sload => VCC,
	ena => \we_d~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \draminstance|dram~1_regout\);

-- Location: LCFF_X22_Y21_N3
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

-- Location: LCFF_X23_Y21_N31
\data[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \SW~combout\(6),
	sload => VCC,
	ena => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => data(2));

-- Location: LCCOMB_X22_Y21_N22
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

-- Location: LCFF_X22_Y21_N23
\draminstance|dram~2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \draminstance|dram~2feeder_combout\,
	ena => \we_d~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \draminstance|dram~2_regout\);

-- Location: LCCOMB_X22_Y21_N8
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

-- Location: LCFF_X22_Y21_N9
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

-- Location: LCCOMB_X21_Y21_N0
\data[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \data[3]~feeder_combout\ = \SW~combout\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW~combout\(7),
	combout => \data[3]~feeder_combout\);

-- Location: LCFF_X21_Y21_N1
\data[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \data[3]~feeder_combout\,
	ena => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => data(3));

-- Location: LCCOMB_X21_Y21_N6
\draminstance|dram~3feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \draminstance|dram~3feeder_combout\ = data(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => data(3),
	combout => \draminstance|dram~3feeder_combout\);

-- Location: LCFF_X21_Y21_N7
\draminstance|dram~3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \draminstance|dram~3feeder_combout\,
	ena => \we_d~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \draminstance|dram~3_regout\);

-- Location: LCCOMB_X21_Y21_N24
\LEDR[3]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \LEDR[3]~reg0feeder_combout\ = \draminstance|dram~3_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \draminstance|dram~3_regout\,
	combout => \LEDR[3]~reg0feeder_combout\);

-- Location: LCFF_X21_Y21_N25
\LEDR[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \LEDR[3]~reg0feeder_combout\,
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

-- Location: LCCOMB_X23_Y21_N4
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

-- Location: LCFF_X23_Y21_N5
\data[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \data[4]~feeder_combout\,
	ena => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => data(4));

-- Location: LCCOMB_X22_Y21_N12
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

-- Location: LCFF_X22_Y21_N13
\draminstance|dram~4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \draminstance|dram~4feeder_combout\,
	ena => \we_d~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \draminstance|dram~4_regout\);

-- Location: LCCOMB_X22_Y21_N18
\LEDR[4]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \LEDR[4]~reg0feeder_combout\ = \draminstance|dram~4_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \draminstance|dram~4_regout\,
	combout => \LEDR[4]~reg0feeder_combout\);

-- Location: LCFF_X22_Y21_N19
\LEDR[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \LEDR[4]~reg0feeder_combout\,
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

-- Location: LCCOMB_X23_Y21_N22
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

-- Location: LCFF_X23_Y21_N23
\data[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \data[5]~feeder_combout\,
	ena => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => data(5));

-- Location: LCCOMB_X22_Y21_N6
\draminstance|dram~5feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \draminstance|dram~5feeder_combout\ = data(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => data(5),
	combout => \draminstance|dram~5feeder_combout\);

-- Location: LCFF_X22_Y21_N7
\draminstance|dram~5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \draminstance|dram~5feeder_combout\,
	ena => \we_d~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \draminstance|dram~5_regout\);

-- Location: LCCOMB_X22_Y21_N4
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

-- Location: LCFF_X22_Y21_N5
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

-- Location: LCCOMB_X23_Y21_N24
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

-- Location: LCFF_X23_Y21_N25
\data[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \data[6]~feeder_combout\,
	ena => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => data(6));

-- Location: LCCOMB_X22_Y21_N16
\draminstance|dram~6feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \draminstance|dram~6feeder_combout\ = data(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => data(6),
	combout => \draminstance|dram~6feeder_combout\);

-- Location: LCFF_X22_Y21_N17
\draminstance|dram~6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \draminstance|dram~6feeder_combout\,
	ena => \we_d~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \draminstance|dram~6_regout\);

-- Location: LCFF_X22_Y21_N11
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

-- Location: LCFF_X23_Y21_N11
\data[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \SW~combout\(3),
	sload => VCC,
	ena => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => data(7));

-- Location: LCFF_X22_Y21_N31
\draminstance|dram~7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => data(7),
	sload => VCC,
	ena => \we_d~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \draminstance|dram~7_regout\);

-- Location: LCCOMB_X22_Y21_N20
\LEDR[7]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \LEDR[7]~reg0feeder_combout\ = \draminstance|dram~7_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \draminstance|dram~7_regout\,
	combout => \LEDR[7]~reg0feeder_combout\);

-- Location: LCFF_X22_Y21_N21
\LEDR[7]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \LEDR[7]~reg0feeder_combout\,
	ena => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LEDR[7]~reg0_regout\);

-- Location: LCFF_X3_Y21_N9
\disp2[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \draminstance|dram~4_regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \disp2[0]~reg0_regout\);

-- Location: LCFF_X3_Y21_N11
\disp2[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \draminstance|dram~5_regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \disp2[1]~reg0_regout\);

-- Location: LCFF_X3_Y21_N21
\disp2[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \draminstance|dram~6_regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \disp2[2]~reg0_regout\);

-- Location: LCFF_X3_Y21_N27
\disp2[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \draminstance|dram~7_regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \disp2[3]~reg0_regout\);

-- Location: LCCOMB_X3_Y21_N12
\disp3[0]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp3[0]~reg0feeder_combout\ = \draminstance|dram~0_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \draminstance|dram~0_regout\,
	combout => \disp3[0]~reg0feeder_combout\);

-- Location: LCFF_X3_Y21_N13
\disp3[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \disp3[0]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \disp3[0]~reg0_regout\);

-- Location: LCCOMB_X3_Y21_N2
\disp3[1]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \disp3[1]~reg0feeder_combout\ = \draminstance|dram~1_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \draminstance|dram~1_regout\,
	combout => \disp3[1]~reg0feeder_combout\);

-- Location: LCFF_X3_Y21_N3
\disp3[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \disp3[1]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \disp3[1]~reg0_regout\);

-- Location: LCCOMB_X3_Y21_N0
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

-- Location: LCFF_X3_Y21_N1
\disp3[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \disp3[2]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \disp3[2]~reg0_regout\);

-- Location: LCCOMB_X3_Y21_N6
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

-- Location: LCFF_X3_Y21_N7
\disp3[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \disp3[3]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \disp3[3]~reg0_regout\);

-- Location: LCCOMB_X3_Y21_N28
\seg7instance|display_state.11~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|display_state.11~feeder_combout\ = \seg7instance|display_state.10~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \seg7instance|display_state.10~regout\,
	combout => \seg7instance|display_state.11~feeder_combout\);

-- Location: LCFF_X3_Y21_N29
\seg7instance|display_state.11\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \seg7instance|display_state.11~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|display_state.11~regout\);

-- Location: LCCOMB_X3_Y21_N16
\seg7instance|display_state.00~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|display_state.00~0_combout\ = !\seg7instance|display_state.11~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \seg7instance|display_state.11~regout\,
	combout => \seg7instance|display_state.00~0_combout\);

-- Location: LCFF_X3_Y21_N17
\seg7instance|display_state.00\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \seg7instance|display_state.00~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|display_state.00~regout\);

-- Location: LCCOMB_X3_Y21_N18
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

-- Location: LCFF_X3_Y21_N19
\seg7instance|display_state.01\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \seg7instance|display_state.01~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|display_state.01~regout\);

-- Location: LCFF_X3_Y21_N23
\seg7instance|display_state.10\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \seg7instance|display_state.01~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|display_state.10~regout\);

-- Location: LCCOMB_X3_Y21_N10
\seg7instance|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|Selector2~0_combout\ = (\disp3[1]~reg0_regout\ & ((\seg7instance|display_state.11~regout\) # ((\seg7instance|display_state.10~regout\ & \disp2[1]~reg0_regout\)))) # (!\disp3[1]~reg0_regout\ & (\seg7instance|display_state.10~regout\ & 
-- (\disp2[1]~reg0_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \disp3[1]~reg0_regout\,
	datab => \seg7instance|display_state.10~regout\,
	datac => \disp2[1]~reg0_regout\,
	datad => \seg7instance|display_state.11~regout\,
	combout => \seg7instance|Selector2~0_combout\);

-- Location: LCCOMB_X3_Y21_N8
\seg7instance|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|Selector3~0_combout\ = (\seg7instance|display_state.10~regout\ & ((\disp2[0]~reg0_regout\) # ((\seg7instance|display_state.11~regout\ & \disp3[0]~reg0_regout\)))) # (!\seg7instance|display_state.10~regout\ & 
-- (\seg7instance|display_state.11~regout\ & ((\disp3[0]~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg7instance|display_state.10~regout\,
	datab => \seg7instance|display_state.11~regout\,
	datac => \disp2[0]~reg0_regout\,
	datad => \disp3[0]~reg0_regout\,
	combout => \seg7instance|Selector3~0_combout\);

-- Location: LCCOMB_X3_Y21_N20
\seg7instance|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|Selector1~0_combout\ = (\seg7instance|display_state.10~regout\ & ((\disp2[2]~reg0_regout\) # ((\disp3[2]~reg0_regout\ & \seg7instance|display_state.11~regout\)))) # (!\seg7instance|display_state.10~regout\ & (\disp3[2]~reg0_regout\ & 
-- ((\seg7instance|display_state.11~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg7instance|display_state.10~regout\,
	datab => \disp3[2]~reg0_regout\,
	datac => \disp2[2]~reg0_regout\,
	datad => \seg7instance|display_state.11~regout\,
	combout => \seg7instance|Selector1~0_combout\);

-- Location: LCCOMB_X2_Y21_N6
\seg7instance|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|WideOr6~0_combout\ = (\seg7instance|Selector0~0_combout\ & (\seg7instance|Selector3~0_combout\ & (\seg7instance|Selector2~0_combout\ $ (\seg7instance|Selector1~0_combout\)))) # (!\seg7instance|Selector0~0_combout\ & 
-- (!\seg7instance|Selector2~0_combout\ & (\seg7instance|Selector3~0_combout\ $ (\seg7instance|Selector1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg7instance|Selector0~0_combout\,
	datab => \seg7instance|Selector2~0_combout\,
	datac => \seg7instance|Selector3~0_combout\,
	datad => \seg7instance|Selector1~0_combout\,
	combout => \seg7instance|WideOr6~0_combout\);

-- Location: LCCOMB_X2_Y21_N20
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

-- Location: LCFF_X2_Y21_N21
\seg7instance|hex_out0[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \seg7instance|hex_out0[0]~feeder_combout\,
	ena => \seg7instance|ALT_INV_display_state.00~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out0\(0));

-- Location: LCCOMB_X1_Y21_N14
\seg7instance|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|WideOr5~0_combout\ = (\seg7instance|Selector0~0_combout\ & ((\seg7instance|Selector3~0_combout\ & (\seg7instance|Selector2~0_combout\)) # (!\seg7instance|Selector3~0_combout\ & ((\seg7instance|Selector1~0_combout\))))) # 
-- (!\seg7instance|Selector0~0_combout\ & (\seg7instance|Selector1~0_combout\ & (\seg7instance|Selector2~0_combout\ $ (\seg7instance|Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg7instance|Selector0~0_combout\,
	datab => \seg7instance|Selector2~0_combout\,
	datac => \seg7instance|Selector1~0_combout\,
	datad => \seg7instance|Selector3~0_combout\,
	combout => \seg7instance|WideOr5~0_combout\);

-- Location: LCCOMB_X2_Y21_N26
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

-- Location: LCFF_X2_Y21_N27
\seg7instance|hex_out0[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \seg7instance|hex_out0[1]~feeder_combout\,
	ena => \seg7instance|ALT_INV_display_state.00~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out0\(1));

-- Location: LCCOMB_X2_Y21_N30
\seg7instance|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|WideOr4~0_combout\ = (\seg7instance|Selector0~0_combout\ & (\seg7instance|Selector1~0_combout\ & ((\seg7instance|Selector2~0_combout\) # (!\seg7instance|Selector3~0_combout\)))) # (!\seg7instance|Selector0~0_combout\ & 
-- (\seg7instance|Selector2~0_combout\ & (!\seg7instance|Selector3~0_combout\ & !\seg7instance|Selector1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg7instance|Selector0~0_combout\,
	datab => \seg7instance|Selector2~0_combout\,
	datac => \seg7instance|Selector3~0_combout\,
	datad => \seg7instance|Selector1~0_combout\,
	combout => \seg7instance|WideOr4~0_combout\);

-- Location: LCCOMB_X2_Y21_N28
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

-- Location: LCFF_X2_Y21_N29
\seg7instance|hex_out0[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \seg7instance|hex_out0[2]~feeder_combout\,
	ena => \seg7instance|ALT_INV_display_state.00~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out0\(2));

-- Location: LCCOMB_X3_Y21_N26
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

-- Location: LCCOMB_X3_Y21_N24
\seg7instance|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|WideOr3~0_combout\ = (\seg7instance|Selector2~0_combout\ & ((\seg7instance|Selector1~0_combout\ & ((\seg7instance|Selector3~0_combout\))) # (!\seg7instance|Selector1~0_combout\ & (\seg7instance|Selector0~0_combout\ & 
-- !\seg7instance|Selector3~0_combout\)))) # (!\seg7instance|Selector2~0_combout\ & (!\seg7instance|Selector0~0_combout\ & (\seg7instance|Selector1~0_combout\ $ (\seg7instance|Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg7instance|Selector1~0_combout\,
	datab => \seg7instance|Selector0~0_combout\,
	datac => \seg7instance|Selector3~0_combout\,
	datad => \seg7instance|Selector2~0_combout\,
	combout => \seg7instance|WideOr3~0_combout\);

-- Location: LCCOMB_X2_Y21_N18
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

-- Location: LCFF_X2_Y21_N19
\seg7instance|hex_out0[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \seg7instance|hex_out0[3]~feeder_combout\,
	ena => \seg7instance|ALT_INV_display_state.00~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out0\(3));

-- Location: LCCOMB_X3_Y21_N30
\seg7instance|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|WideOr2~0_combout\ = (\seg7instance|Selector2~0_combout\ & (((!\seg7instance|Selector0~0_combout\ & \seg7instance|Selector3~0_combout\)))) # (!\seg7instance|Selector2~0_combout\ & ((\seg7instance|Selector1~0_combout\ & 
-- (!\seg7instance|Selector0~0_combout\)) # (!\seg7instance|Selector1~0_combout\ & ((\seg7instance|Selector3~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg7instance|Selector1~0_combout\,
	datab => \seg7instance|Selector0~0_combout\,
	datac => \seg7instance|Selector3~0_combout\,
	datad => \seg7instance|Selector2~0_combout\,
	combout => \seg7instance|WideOr2~0_combout\);

-- Location: LCCOMB_X2_Y21_N24
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

-- Location: LCFF_X2_Y21_N25
\seg7instance|hex_out0[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \seg7instance|hex_out0[4]~feeder_combout\,
	ena => \seg7instance|ALT_INV_display_state.00~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out0\(4));

-- Location: LCCOMB_X3_Y21_N4
\seg7instance|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|WideOr1~0_combout\ = (\seg7instance|Selector1~0_combout\ & (\seg7instance|Selector3~0_combout\ & (\seg7instance|Selector0~0_combout\ $ (\seg7instance|Selector2~0_combout\)))) # (!\seg7instance|Selector1~0_combout\ & 
-- (!\seg7instance|Selector0~0_combout\ & ((\seg7instance|Selector3~0_combout\) # (\seg7instance|Selector2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg7instance|Selector1~0_combout\,
	datab => \seg7instance|Selector0~0_combout\,
	datac => \seg7instance|Selector3~0_combout\,
	datad => \seg7instance|Selector2~0_combout\,
	combout => \seg7instance|WideOr1~0_combout\);

-- Location: LCCOMB_X2_Y21_N10
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

-- Location: LCFF_X2_Y21_N11
\seg7instance|hex_out0[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \seg7instance|hex_out0[5]~feeder_combout\,
	ena => \seg7instance|ALT_INV_display_state.00~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out0\(5));

-- Location: LCCOMB_X3_Y21_N14
\seg7instance|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|WideOr0~0_combout\ = (\seg7instance|Selector3~0_combout\ & (!\seg7instance|Selector0~0_combout\ & (\seg7instance|Selector1~0_combout\ $ (!\seg7instance|Selector2~0_combout\)))) # (!\seg7instance|Selector3~0_combout\ & 
-- (!\seg7instance|Selector2~0_combout\ & (\seg7instance|Selector1~0_combout\ $ (!\seg7instance|Selector0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg7instance|Selector1~0_combout\,
	datab => \seg7instance|Selector0~0_combout\,
	datac => \seg7instance|Selector3~0_combout\,
	datad => \seg7instance|Selector2~0_combout\,
	combout => \seg7instance|WideOr0~0_combout\);

-- Location: LCCOMB_X2_Y21_N12
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

-- Location: LCFF_X2_Y21_N13
\seg7instance|hex_out0[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \seg7instance|hex_out0[6]~feeder_combout\,
	ena => \seg7instance|ALT_INV_display_state.00~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out0\(6));

-- Location: LCCOMB_X1_Y21_N8
\seg7instance|hex_out1[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|hex_out1[0]~feeder_combout\ = \seg7instance|WideOr6~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \seg7instance|WideOr6~0_combout\,
	combout => \seg7instance|hex_out1[0]~feeder_combout\);

-- Location: LCFF_X1_Y21_N9
\seg7instance|hex_out1[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \seg7instance|hex_out1[0]~feeder_combout\,
	ena => \seg7instance|display_state.01~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out1\(0));

-- Location: LCFF_X1_Y21_N15
\seg7instance|hex_out1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \seg7instance|WideOr5~0_combout\,
	ena => \seg7instance|display_state.01~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out1\(1));

-- Location: LCCOMB_X1_Y21_N28
\seg7instance|hex_out1[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|hex_out1[2]~feeder_combout\ = \seg7instance|WideOr4~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \seg7instance|WideOr4~0_combout\,
	combout => \seg7instance|hex_out1[2]~feeder_combout\);

-- Location: LCFF_X1_Y21_N29
\seg7instance|hex_out1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \seg7instance|hex_out1[2]~feeder_combout\,
	ena => \seg7instance|display_state.01~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out1\(2));

-- Location: LCCOMB_X4_Y21_N4
\seg7instance|hex_out1[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|hex_out1[3]~feeder_combout\ = \seg7instance|WideOr3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \seg7instance|WideOr3~0_combout\,
	combout => \seg7instance|hex_out1[3]~feeder_combout\);

-- Location: LCFF_X4_Y21_N5
\seg7instance|hex_out1[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \seg7instance|hex_out1[3]~feeder_combout\,
	ena => \seg7instance|display_state.01~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out1\(3));

-- Location: LCFF_X4_Y21_N3
\seg7instance|hex_out1[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \seg7instance|WideOr2~0_combout\,
	sload => VCC,
	ena => \seg7instance|display_state.01~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out1\(4));

-- Location: LCFF_X4_Y21_N1
\seg7instance|hex_out1[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \seg7instance|WideOr1~0_combout\,
	sload => VCC,
	ena => \seg7instance|display_state.01~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out1\(5));

-- Location: LCCOMB_X4_Y21_N18
\seg7instance|hex_out1[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|hex_out1[6]~feeder_combout\ = \seg7instance|WideOr0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \seg7instance|WideOr0~0_combout\,
	combout => \seg7instance|hex_out1[6]~feeder_combout\);

-- Location: LCFF_X4_Y21_N19
\seg7instance|hex_out1[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \seg7instance|hex_out1[6]~feeder_combout\,
	ena => \seg7instance|display_state.01~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out1\(6));

-- Location: LCCOMB_X1_Y21_N26
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

-- Location: LCFF_X1_Y21_N27
\seg7instance|hex_out2[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \seg7instance|hex_out2[0]~feeder_combout\,
	ena => \seg7instance|display_state.10~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out2\(0));

-- Location: LCFF_X1_Y21_N25
\seg7instance|hex_out2[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \seg7instance|WideOr5~0_combout\,
	sload => VCC,
	ena => \seg7instance|display_state.10~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out2\(1));

-- Location: LCCOMB_X1_Y21_N22
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

-- Location: LCFF_X1_Y21_N23
\seg7instance|hex_out2[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \seg7instance|hex_out2[2]~feeder_combout\,
	ena => \seg7instance|display_state.10~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out2\(2));

-- Location: LCFF_X3_Y21_N25
\seg7instance|hex_out2[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \seg7instance|WideOr3~0_combout\,
	ena => \seg7instance|display_state.10~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out2\(3));

-- Location: LCFF_X3_Y21_N31
\seg7instance|hex_out2[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \seg7instance|WideOr2~0_combout\,
	ena => \seg7instance|display_state.10~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out2\(4));

-- Location: LCFF_X3_Y21_N5
\seg7instance|hex_out2[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \seg7instance|WideOr1~0_combout\,
	ena => \seg7instance|display_state.10~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out2\(5));

-- Location: LCFF_X3_Y21_N15
\seg7instance|hex_out2[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \seg7instance|WideOr0~0_combout\,
	ena => \seg7instance|display_state.10~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out2\(6));

-- Location: LCFF_X2_Y21_N7
\seg7instance|hex_out3[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \seg7instance|WideOr6~0_combout\,
	ena => \seg7instance|display_state.11~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out3\(0));

-- Location: LCCOMB_X2_Y21_N8
\seg7instance|hex_out3[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|hex_out3[1]~feeder_combout\ = \seg7instance|WideOr5~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \seg7instance|WideOr5~0_combout\,
	combout => \seg7instance|hex_out3[1]~feeder_combout\);

-- Location: LCFF_X2_Y21_N9
\seg7instance|hex_out3[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \seg7instance|hex_out3[1]~feeder_combout\,
	ena => \seg7instance|display_state.11~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out3\(1));

-- Location: LCFF_X2_Y21_N31
\seg7instance|hex_out3[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \seg7instance|WideOr4~0_combout\,
	ena => \seg7instance|display_state.11~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out3\(2));

-- Location: LCCOMB_X2_Y21_N4
\seg7instance|hex_out3[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|hex_out3[3]~feeder_combout\ = \seg7instance|WideOr3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \seg7instance|WideOr3~0_combout\,
	combout => \seg7instance|hex_out3[3]~feeder_combout\);

-- Location: LCFF_X2_Y21_N5
\seg7instance|hex_out3[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \seg7instance|hex_out3[3]~feeder_combout\,
	ena => \seg7instance|display_state.11~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out3\(3));

-- Location: LCCOMB_X2_Y21_N14
\seg7instance|hex_out3[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|hex_out3[4]~feeder_combout\ = \seg7instance|WideOr2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \seg7instance|WideOr2~0_combout\,
	combout => \seg7instance|hex_out3[4]~feeder_combout\);

-- Location: LCFF_X2_Y21_N15
\seg7instance|hex_out3[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \seg7instance|hex_out3[4]~feeder_combout\,
	ena => \seg7instance|display_state.11~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out3\(4));

-- Location: LCCOMB_X2_Y21_N0
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

-- Location: LCFF_X2_Y21_N1
\seg7instance|hex_out3[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \seg7instance|hex_out3[5]~feeder_combout\,
	ena => \seg7instance|display_state.11~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \seg7instance|hex_out3\(5));

-- Location: LCCOMB_X2_Y21_N22
\seg7instance|hex_out3[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg7instance|hex_out3[6]~feeder_combout\ = \seg7instance|WideOr0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \seg7instance|WideOr0~0_combout\,
	combout => \seg7instance|hex_out3[6]~feeder_combout\);

-- Location: LCFF_X2_Y21_N23
\seg7instance|hex_out3[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \seg7instance|hex_out3[6]~feeder_combout\,
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

-- Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp0(0));

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp0(1));

-- Location: PIN_AA6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp0(2));

-- Location: PIN_W1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp0(3));

-- Location: PIN_Y1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp1(0));

-- Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp1(1));

-- Location: PIN_W4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp1(2));

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_A3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_F22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_T1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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


