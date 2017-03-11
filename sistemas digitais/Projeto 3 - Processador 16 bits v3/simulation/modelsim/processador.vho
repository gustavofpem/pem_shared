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

-- DATE "11/25/2016 20:54:36"

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

ENTITY 	DE1_TOP IS
    PORT (
	CLOCK_24 : IN std_logic_vector(1 DOWNTO 0);
	CLOCK_27 : IN std_logic_vector(1 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	EXT_CLOCK : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	SW : IN std_logic_vector(9 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	LEDG : OUT std_logic_vector(7 DOWNTO 0);
	LEDR : OUT std_logic_vector(9 DOWNTO 0);
	UART_TXD : OUT std_logic;
	UART_RXD : IN std_logic;
	DRAM_DQ : INOUT std_logic_vector(15 DOWNTO 0);
	DRAM_ADDR : OUT std_logic_vector(11 DOWNTO 0);
	DRAM_LDQM : OUT std_logic;
	DRAM_UDQM : OUT std_logic;
	DRAM_WE_N : OUT std_logic;
	DRAM_CAS_N : OUT std_logic;
	DRAM_RAS_N : OUT std_logic;
	DRAM_CS_N : OUT std_logic;
	DRAM_BA_0 : OUT std_logic;
	DRAM_BA_1 : OUT std_logic;
	DRAM_CLK : OUT std_logic;
	DRAM_CKE : OUT std_logic;
	FL_DQ : INOUT std_logic_vector(7 DOWNTO 0);
	FL_ADDR : OUT std_logic_vector(21 DOWNTO 0);
	FL_WE_N : OUT std_logic;
	FL_RST_N : OUT std_logic;
	FL_OE_N : OUT std_logic;
	FL_CE_N : OUT std_logic;
	SRAM_DQ : INOUT std_logic_vector(15 DOWNTO 0);
	SRAM_ADDR : OUT std_logic_vector(17 DOWNTO 0);
	SRAM_UB_N : OUT std_logic;
	SRAM_LB_N : OUT std_logic;
	SRAM_WE_N : OUT std_logic;
	SRAM_CE_N : OUT std_logic;
	SRAM_OE_N : OUT std_logic;
	SD_DAT : INOUT std_logic;
	SD_DAT3 : INOUT std_logic;
	SD_CMD : INOUT std_logic;
	SD_CLK : OUT std_logic;
	TDI : IN std_logic;
	TCK : IN std_logic;
	TCS : IN std_logic;
	TDO : OUT std_logic;
	I2C_SDAT : INOUT std_logic;
	I2C_SCLK : OUT std_logic;
	PS2_DAT : IN std_logic;
	PS2_CLK : IN std_logic;
	VGA_HS : OUT std_logic;
	VGA_VS : OUT std_logic;
	VGA_R : OUT std_logic_vector(3 DOWNTO 0);
	VGA_G : OUT std_logic_vector(3 DOWNTO 0);
	VGA_B : OUT std_logic_vector(3 DOWNTO 0);
	AUD_ADCLRCK : INOUT std_logic;
	AUD_ADCDAT : IN std_logic;
	AUD_DACLRCK : INOUT std_logic;
	AUD_DACDAT : OUT std_logic;
	AUD_BCLK : INOUT std_logic;
	AUD_XCK : OUT std_logic;
	GPIO_0 : INOUT std_logic_vector(35 DOWNTO 0);
	GPIO_1 : INOUT std_logic_vector(35 DOWNTO 0)
	);
END DE1_TOP;

-- Design Ports Information
-- SD_DAT3	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SD_CMD	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DRAM_DQ[0]	=>  Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DRAM_DQ[1]	=>  Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DRAM_DQ[2]	=>  Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DRAM_DQ[3]	=>  Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DRAM_DQ[4]	=>  Location: PIN_W1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DRAM_DQ[5]	=>  Location: PIN_W2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DRAM_DQ[6]	=>  Location: PIN_Y1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DRAM_DQ[7]	=>  Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DRAM_DQ[8]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DRAM_DQ[9]	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DRAM_DQ[10]	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DRAM_DQ[11]	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DRAM_DQ[12]	=>  Location: PIN_R1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DRAM_DQ[13]	=>  Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DRAM_DQ[14]	=>  Location: PIN_T1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DRAM_DQ[15]	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FL_DQ[0]	=>  Location: PIN_AB16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FL_DQ[1]	=>  Location: PIN_AA16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FL_DQ[2]	=>  Location: PIN_AB17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FL_DQ[3]	=>  Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FL_DQ[4]	=>  Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FL_DQ[5]	=>  Location: PIN_AA18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FL_DQ[6]	=>  Location: PIN_AB19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FL_DQ[7]	=>  Location: PIN_AA19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[0]	=>  Location: PIN_AA6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[1]	=>  Location: PIN_AB6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[2]	=>  Location: PIN_AA7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[3]	=>  Location: PIN_AB7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[4]	=>  Location: PIN_AA8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[5]	=>  Location: PIN_AB8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[6]	=>  Location: PIN_AA9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[7]	=>  Location: PIN_AB9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[8]	=>  Location: PIN_Y9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[9]	=>  Location: PIN_W9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[10]	=>  Location: PIN_V9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[11]	=>  Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[12]	=>  Location: PIN_R9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[13]	=>  Location: PIN_W8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[14]	=>  Location: PIN_V8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[15]	=>  Location: PIN_U8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SD_DAT	=>  Location: PIN_G8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- I2C_SDAT	=>  Location: PIN_B3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AUD_ADCLRCK	=>  Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AUD_DACLRCK	=>  Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AUD_BCLK	=>  Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[0]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[1]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[2]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[3]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[4]	=>  Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[5]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[6]	=>  Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[7]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[8]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[9]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[10]	=>  Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[11]	=>  Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[12]	=>  Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[13]	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[14]	=>  Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[15]	=>  Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[16]	=>  Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[17]	=>  Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[18]	=>  Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[19]	=>  Location: PIN_D22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[20]	=>  Location: PIN_E21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[21]	=>  Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[22]	=>  Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[23]	=>  Location: PIN_F22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[24]	=>  Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[25]	=>  Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[26]	=>  Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[27]	=>  Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[28]	=>  Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[29]	=>  Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[30]	=>  Location: PIN_J19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[31]	=>  Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[32]	=>  Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[33]	=>  Location: PIN_K20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[34]	=>  Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_0[35]	=>  Location: PIN_L18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[0]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[1]	=>  Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[2]	=>  Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[3]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[4]	=>  Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[5]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[6]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[7]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[8]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[9]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[10]	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[11]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[12]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[13]	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[14]	=>  Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[15]	=>  Location: PIN_C18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[16]	=>  Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[17]	=>  Location: PIN_C20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[18]	=>  Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[19]	=>  Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[20]	=>  Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[21]	=>  Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[22]	=>  Location: PIN_E19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[23]	=>  Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[24]	=>  Location: PIN_G20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[25]	=>  Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[26]	=>  Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[27]	=>  Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[28]	=>  Location: PIN_J15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[29]	=>  Location: PIN_H18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[30]	=>  Location: PIN_N22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[31]	=>  Location: PIN_N21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[32]	=>  Location: PIN_P15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[33]	=>  Location: PIN_N15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[34]	=>  Location: PIN_P17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GPIO_1[35]	=>  Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CLOCK_24[0]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK_24[1]	=>  Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK_27[0]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK_27[1]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- EXT_CLOCK	=>  Location: PIN_M21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_U11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[1]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[2]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[3]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[4]	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[5]	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[6]	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[0]	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[1]	=>  Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[2]	=>  Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[3]	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[4]	=>  Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[5]	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[6]	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[0]	=>  Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[1]	=>  Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[2]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[3]	=>  Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[4]	=>  Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[5]	=>  Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[6]	=>  Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[0]	=>  Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[1]	=>  Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[2]	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[3]	=>  Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[4]	=>  Location: PIN_L8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[5]	=>  Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[6]	=>  Location: PIN_D4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[0]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[1]	=>  Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[2]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[3]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[4]	=>  Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[5]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[6]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[7]	=>  Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[0]	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[1]	=>  Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[2]	=>  Location: PIN_U19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[3]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[4]	=>  Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[5]	=>  Location: PIN_V19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[6]	=>  Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[7]	=>  Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[8]	=>  Location: PIN_R18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[9]	=>  Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- UART_TXD	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- UART_RXD	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DRAM_ADDR[0]	=>  Location: PIN_W4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DRAM_ADDR[1]	=>  Location: PIN_W5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DRAM_ADDR[2]	=>  Location: PIN_Y3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DRAM_ADDR[3]	=>  Location: PIN_Y4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DRAM_ADDR[4]	=>  Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DRAM_ADDR[5]	=>  Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DRAM_ADDR[6]	=>  Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DRAM_ADDR[7]	=>  Location: PIN_P5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DRAM_ADDR[8]	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DRAM_ADDR[9]	=>  Location: PIN_N4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DRAM_ADDR[10]	=>  Location: PIN_W3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DRAM_ADDR[11]	=>  Location: PIN_N6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DRAM_LDQM	=>  Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DRAM_UDQM	=>  Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DRAM_WE_N	=>  Location: PIN_R8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DRAM_CAS_N	=>  Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DRAM_RAS_N	=>  Location: PIN_T5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DRAM_CS_N	=>  Location: PIN_T6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DRAM_BA_0	=>  Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DRAM_BA_1	=>  Location: PIN_V4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DRAM_CLK	=>  Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DRAM_CKE	=>  Location: PIN_N3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FL_ADDR[0]	=>  Location: PIN_AB20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FL_ADDR[1]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FL_ADDR[2]	=>  Location: PIN_Y16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FL_ADDR[3]	=>  Location: PIN_R15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FL_ADDR[4]	=>  Location: PIN_T15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FL_ADDR[5]	=>  Location: PIN_U15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FL_ADDR[6]	=>  Location: PIN_V15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FL_ADDR[7]	=>  Location: PIN_W15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FL_ADDR[8]	=>  Location: PIN_R14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FL_ADDR[9]	=>  Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FL_ADDR[10]	=>  Location: PIN_R12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FL_ADDR[11]	=>  Location: PIN_T12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FL_ADDR[12]	=>  Location: PIN_AB14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FL_ADDR[13]	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FL_ADDR[14]	=>  Location: PIN_AB13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FL_ADDR[15]	=>  Location: PIN_AA12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FL_ADDR[16]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FL_ADDR[17]	=>  Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FL_ADDR[18]	=>  Location: PIN_U14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FL_ADDR[19]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FL_ADDR[20]	=>  Location: PIN_U13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FL_ADDR[21]	=>  Location: PIN_R13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FL_WE_N	=>  Location: PIN_Y14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FL_RST_N	=>  Location: PIN_W14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FL_OE_N	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- FL_CE_N	=>  Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[0]	=>  Location: PIN_AA3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[1]	=>  Location: PIN_AB3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[2]	=>  Location: PIN_AA4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[3]	=>  Location: PIN_AB4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[4]	=>  Location: PIN_AA5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[5]	=>  Location: PIN_AB10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[6]	=>  Location: PIN_AA11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[7]	=>  Location: PIN_AB11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[8]	=>  Location: PIN_V11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[9]	=>  Location: PIN_W11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[10]	=>  Location: PIN_R11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[11]	=>  Location: PIN_T11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[12]	=>  Location: PIN_Y10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[13]	=>  Location: PIN_U10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[14]	=>  Location: PIN_R10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[15]	=>  Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[16]	=>  Location: PIN_Y6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[17]	=>  Location: PIN_Y5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_UB_N	=>  Location: PIN_W7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_LB_N	=>  Location: PIN_Y7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_WE_N	=>  Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_CE_N	=>  Location: PIN_AB5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_OE_N	=>  Location: PIN_T8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SD_CLK	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TDI	=>  Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TCK	=>  Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TCS	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TDO	=>  Location: PIN_D7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- I2C_SCLK	=>  Location: PIN_A3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PS2_DAT	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PS2_CLK	=>  Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- VGA_HS	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_VS	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_R[0]	=>  Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_R[1]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_R[2]	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_R[3]	=>  Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_G[0]	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_G[1]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_G[2]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_G[3]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_B[0]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_B[1]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_B[2]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_B[3]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AUD_ADCDAT	=>  Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- AUD_DACDAT	=>  Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- AUD_XCK	=>  Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- KEY[0]	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF DE1_TOP IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_24 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_CLOCK_27 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_EXT_CLOCK : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_UART_TXD : std_logic;
SIGNAL ww_UART_RXD : std_logic;
SIGNAL ww_DRAM_ADDR : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_DRAM_LDQM : std_logic;
SIGNAL ww_DRAM_UDQM : std_logic;
SIGNAL ww_DRAM_WE_N : std_logic;
SIGNAL ww_DRAM_CAS_N : std_logic;
SIGNAL ww_DRAM_RAS_N : std_logic;
SIGNAL ww_DRAM_CS_N : std_logic;
SIGNAL ww_DRAM_BA_0 : std_logic;
SIGNAL ww_DRAM_BA_1 : std_logic;
SIGNAL ww_DRAM_CLK : std_logic;
SIGNAL ww_DRAM_CKE : std_logic;
SIGNAL ww_FL_ADDR : std_logic_vector(21 DOWNTO 0);
SIGNAL ww_FL_WE_N : std_logic;
SIGNAL ww_FL_RST_N : std_logic;
SIGNAL ww_FL_OE_N : std_logic;
SIGNAL ww_FL_CE_N : std_logic;
SIGNAL ww_SRAM_ADDR : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_SRAM_UB_N : std_logic;
SIGNAL ww_SRAM_LB_N : std_logic;
SIGNAL ww_SRAM_WE_N : std_logic;
SIGNAL ww_SRAM_CE_N : std_logic;
SIGNAL ww_SRAM_OE_N : std_logic;
SIGNAL ww_SD_CLK : std_logic;
SIGNAL ww_TDI : std_logic;
SIGNAL ww_TCK : std_logic;
SIGNAL ww_TCS : std_logic;
SIGNAL ww_TDO : std_logic;
SIGNAL ww_I2C_SCLK : std_logic;
SIGNAL ww_PS2_DAT : std_logic;
SIGNAL ww_PS2_CLK : std_logic;
SIGNAL ww_VGA_HS : std_logic;
SIGNAL ww_VGA_VS : std_logic;
SIGNAL ww_VGA_R : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_VGA_G : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_VGA_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_AUD_ADCDAT : std_logic;
SIGNAL ww_AUD_DACDAT : std_logic;
SIGNAL ww_AUD_XCK : std_logic;
SIGNAL \processadorinstance|draminstance|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \processadorinstance|draminstance|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \processadorinstance|draminstance|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \processadorinstance|data_reg[0]~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \processadorinstance|addr_reg[0]~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \processadorinstance|we_d~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \processadorinstance|regfileinstance|regfile[3][0]~regout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[3][2]~regout\ : std_logic;
SIGNAL \processadorinstance|LEDG~0_combout\ : std_logic;
SIGNAL \processadorinstance|LEDG~2_combout\ : std_logic;
SIGNAL \processadorinstance|LEDG~6_combout\ : std_logic;
SIGNAL \processadorinstance|prominstance|prom~2_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[7][0]~_emulated_regout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[7][0]~14_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[5][2]~_emulated_regout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[5][2]~38_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[7][3]~_emulated_regout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[7][3]~62_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[5][4]~_emulated_regout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[5][4]~70_combout\ : std_logic;
SIGNAL \processadorinstance|prominstance|prom~6_combout\ : std_logic;
SIGNAL \processadorinstance|prominstance|prom~12_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[7][0]~15_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile~117_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[5][2]~39_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile~121_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[7][3]~63_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile~126_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile~128_combout\ : std_logic;
SIGNAL \processadorinstance|Decoder0~1_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[7][0]~13_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[5][2]~37_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[7][3]~61_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[5][4]~69_combout\ : std_logic;
SIGNAL \processadorinstance|we_d~combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[3][2]~feeder_combout\ : std_logic;
SIGNAL \processadorinstance|pcinstance|pc[1]~7_combout\ : std_logic;
SIGNAL \processadorinstance|pcinstance|pc[1]~8\ : std_logic;
SIGNAL \processadorinstance|pcinstance|pc[2]~9_combout\ : std_logic;
SIGNAL \processadorinstance|pcinstance|pc[2]~10\ : std_logic;
SIGNAL \processadorinstance|pcinstance|pc[3]~12\ : std_logic;
SIGNAL \processadorinstance|pcinstance|pc[4]~13_combout\ : std_logic;
SIGNAL \processadorinstance|pcinstance|pc[4]~14\ : std_logic;
SIGNAL \processadorinstance|pcinstance|pc[5]~16\ : std_logic;
SIGNAL \processadorinstance|pcinstance|pc[6]~18\ : std_logic;
SIGNAL \processadorinstance|pcinstance|pc[7]~19_combout\ : std_logic;
SIGNAL \processadorinstance|pcinstance|pc[6]~17_combout\ : std_logic;
SIGNAL \processadorinstance|pcinstance|pc[0]~21_combout\ : std_logic;
SIGNAL \processadorinstance|prominstance|prom~10_combout\ : std_logic;
SIGNAL \processadorinstance|prominstance|prom~11_combout\ : std_logic;
SIGNAL \processadorinstance|pcinstance|pc[5]~15_combout\ : std_logic;
SIGNAL \processadorinstance|prominstance|prom~0_combout\ : std_logic;
SIGNAL \processadorinstance|prominstance|prom~7_combout\ : std_logic;
SIGNAL \processadorinstance|Decoder0~0_combout\ : std_logic;
SIGNAL \processadorinstance|prominstance|prom~3_combout\ : std_logic;
SIGNAL \processadorinstance|prominstance|prom~4_combout\ : std_logic;
SIGNAL \processadorinstance|addr_reg[0]~0_combout\ : std_logic;
SIGNAL \processadorinstance|addr_reg[0]~0clkctrl_outclk\ : std_logic;
SIGNAL \processadorinstance|prominstance|prom~8_combout\ : std_logic;
SIGNAL \processadorinstance|prominstance|prom~9_combout\ : std_logic;
SIGNAL \processadorinstance|Mux0~0_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \processadorinstance|prominstance|prom~13_combout\ : std_logic;
SIGNAL \processadorinstance|we_d~0_combout\ : std_logic;
SIGNAL \processadorinstance|we_d~0clkctrl_outclk\ : std_logic;
SIGNAL \processadorinstance|addr_d~combout\ : std_logic;
SIGNAL \processadorinstance|Mux0~1_combout\ : std_logic;
SIGNAL \processadorinstance|data_reg[0]~0_combout\ : std_logic;
SIGNAL \processadorinstance|data_reg[0]~0clkctrl_outclk\ : std_logic;
SIGNAL \processadorinstance|WideOr1~0_combout\ : std_logic;
SIGNAL \processadorinstance|we_reg~combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|Decoder1~1_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[2][0]~regout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|Decoder1~2_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[1][0]~regout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|Mux7~2_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|Mux7~3_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[0][0]~1_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[0][0]~3_combout\ : std_logic;
SIGNAL \processadorinstance|pcinstance|pc[3]~11_combout\ : std_logic;
SIGNAL \processadorinstance|prominstance|prom~5_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|Decoder1~7_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[0][0]~_emulated_regout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[0][0]~2_combout\ : std_logic;
SIGNAL \processadorinstance|Mux2~0_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[0][1]~17_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[0][1]~19_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[0][1]~_emulated_regout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[0][1]~18_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile~115_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[5][0]~5_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[5][0]~7_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|Decoder1~4_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[5][0]~_emulated_regout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[5][0]~6_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[4][0]~feeder_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|Decoder1~0_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[4][0]~regout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[0][3]~49_combout\ : std_logic;
SIGNAL \processadorinstance|Mux4~2_combout\ : std_logic;
SIGNAL \processadorinstance|Mux4~3_combout\ : std_logic;
SIGNAL \processadorinstance|Mux4~4_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[0][3]~51_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[0][3]~_emulated_regout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[0][3]~50_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[0][4]~65_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[0][4]~_emulated_regout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[0][4]~66_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[0][2]~33_combout\ : std_logic;
SIGNAL \processadorinstance|prominstance|prom~1_combout\ : std_logic;
SIGNAL \processadorinstance|Mux3~0_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[0][2]~35_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[0][2]~_emulated_regout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[0][2]~34_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|Decoder0~0_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile~116_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[6][0]~9_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[6][0]~11_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|Decoder1~5_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[6][0]~_emulated_regout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[6][0]~10_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|Mux7~0_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|Mux7~1_combout\ : std_logic;
SIGNAL \processadorinstance|LEDG~1_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[2][1]~regout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|Decoder1~3_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[3][1]~regout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[1][1]~regout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|Mux6~2_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|Mux6~3_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile~120_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[7][1]~29_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[7][1]~31_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|Decoder1~6_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[7][1]~_emulated_regout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[7][1]~30_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile~119_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[6][1]~25_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[6][1]~27_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[6][1]~_emulated_regout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[6][1]~26_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[4][1]~regout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|Mux6~0_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile~118_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[5][1]~21_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[5][1]~23_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[5][1]~_emulated_regout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[5][1]~22_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|Mux6~1_combout\ : std_logic;
SIGNAL \processadorinstance|LEDG~3_combout\ : std_logic;
SIGNAL \processadorinstance|LEDG~4_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[2][2]~regout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[1][2]~regout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|Mux5~2_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|Mux5~3_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile~123_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[7][2]~45_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[7][2]~47_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[7][2]~_emulated_regout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[7][2]~46_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile~122_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[6][2]~41_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[6][2]~43_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[6][2]~_emulated_regout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[6][2]~42_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[4][2]~regout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|Mux5~0_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|Mux5~1_combout\ : std_logic;
SIGNAL \processadorinstance|LEDG~5_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[2][3]~regout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[3][3]~regout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[1][3]~regout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|Mux4~2_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|Mux4~3_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile~125_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[6][3]~57_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[6][3]~59_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[6][3]~_emulated_regout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[6][3]~58_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[4][3]~feeder_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[4][3]~regout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|Mux4~0_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile~124_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[5][3]~53_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[5][3]~55_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[5][3]~_emulated_regout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[5][3]~54_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|Mux4~1_combout\ : std_logic;
SIGNAL \processadorinstance|LEDG~7_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile~127_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[7][4]~77_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[7][4]~_emulated_regout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[7][4]~78_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|Mux3~0_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile~129_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[6][4]~73_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[6][4]~_emulated_regout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[6][4]~74_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|Mux3~1_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|Mux3~2_combout\ : std_logic;
SIGNAL \processadorinstance|LEDG~8_combout\ : std_logic;
SIGNAL \processadorinstance|LEDR[0]~0_combout\ : std_logic;
SIGNAL \processadorinstance|LEDR[1]~1_combout\ : std_logic;
SIGNAL \processadorinstance|LEDR[2]~2_combout\ : std_logic;
SIGNAL \processadorinstance|LEDR[3]~3_combout\ : std_logic;
SIGNAL \processadorinstance|LEDR[4]~4_combout\ : std_logic;
SIGNAL \processadorinstance|data_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \processadorinstance|addr_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \processadorinstance|OPCODE\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \processadorinstance|LEDG\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \processadorinstance|pcinstance|pc\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \processadorinstance|prominstance|addr_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \processadorinstance|draminstance|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \KEY~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_KEY~combout\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_CLOCK_24 <= CLOCK_24;
ww_CLOCK_27 <= CLOCK_27;
ww_CLOCK_50 <= CLOCK_50;
ww_EXT_CLOCK <= EXT_CLOCK;
ww_KEY <= KEY;
ww_SW <= SW;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
LEDG <= ww_LEDG;
LEDR <= ww_LEDR;
UART_TXD <= ww_UART_TXD;
ww_UART_RXD <= UART_RXD;
DRAM_ADDR <= ww_DRAM_ADDR;
DRAM_LDQM <= ww_DRAM_LDQM;
DRAM_UDQM <= ww_DRAM_UDQM;
DRAM_WE_N <= ww_DRAM_WE_N;
DRAM_CAS_N <= ww_DRAM_CAS_N;
DRAM_RAS_N <= ww_DRAM_RAS_N;
DRAM_CS_N <= ww_DRAM_CS_N;
DRAM_BA_0 <= ww_DRAM_BA_0;
DRAM_BA_1 <= ww_DRAM_BA_1;
DRAM_CLK <= ww_DRAM_CLK;
DRAM_CKE <= ww_DRAM_CKE;
FL_ADDR <= ww_FL_ADDR;
FL_WE_N <= ww_FL_WE_N;
FL_RST_N <= ww_FL_RST_N;
FL_OE_N <= ww_FL_OE_N;
FL_CE_N <= ww_FL_CE_N;
SRAM_ADDR <= ww_SRAM_ADDR;
SRAM_UB_N <= ww_SRAM_UB_N;
SRAM_LB_N <= ww_SRAM_LB_N;
SRAM_WE_N <= ww_SRAM_WE_N;
SRAM_CE_N <= ww_SRAM_CE_N;
SRAM_OE_N <= ww_SRAM_OE_N;
SD_CLK <= ww_SD_CLK;
ww_TDI <= TDI;
ww_TCK <= TCK;
ww_TCS <= TCS;
TDO <= ww_TDO;
I2C_SCLK <= ww_I2C_SCLK;
ww_PS2_DAT <= PS2_DAT;
ww_PS2_CLK <= PS2_CLK;
VGA_HS <= ww_VGA_HS;
VGA_VS <= ww_VGA_VS;
VGA_R <= ww_VGA_R;
VGA_G <= ww_VGA_G;
VGA_B <= ww_VGA_B;
ww_AUD_ADCDAT <= AUD_ADCDAT;
AUD_DACDAT <= ww_AUD_DACDAT;
AUD_XCK <= ww_AUD_XCK;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\processadorinstance|draminstance|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\processadorinstance|draminstance|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\(0) <= \processadorinstance|addr_d~combout\;

\processadorinstance|draminstance|altsyncram_component|auto_generated|q_a\(0) <= \processadorinstance|draminstance|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\processadorinstance|draminstance|altsyncram_component|auto_generated|q_a\(1) <= \processadorinstance|draminstance|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\processadorinstance|draminstance|altsyncram_component|auto_generated|q_a\(2) <= \processadorinstance|draminstance|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\processadorinstance|draminstance|altsyncram_component|auto_generated|q_a\(3) <= \processadorinstance|draminstance|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);

\processadorinstance|data_reg[0]~0clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \processadorinstance|data_reg[0]~0_combout\);

\processadorinstance|addr_reg[0]~0clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \processadorinstance|addr_reg[0]~0_combout\);

\processadorinstance|we_d~0clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \processadorinstance|we_d~0_combout\);
\ALT_INV_KEY~combout\(3) <= NOT \KEY~combout\(3);
\ALT_INV_KEY~combout\(0) <= NOT \KEY~combout\(0);

-- Location: LCFF_X47_Y7_N5
\processadorinstance|regfileinstance|regfile[3][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	sdata => \processadorinstance|data_reg\(0),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \processadorinstance|regfileinstance|Decoder1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|regfileinstance|regfile[3][0]~regout\);

-- Location: LCFF_X45_Y8_N1
\processadorinstance|regfileinstance|regfile[3][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	datain => \processadorinstance|regfileinstance|regfile[3][2]~feeder_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \processadorinstance|regfileinstance|Decoder1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|regfileinstance|regfile[3][2]~regout\);

-- Location: LCCOMB_X46_Y9_N10
\processadorinstance|LEDG~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|LEDG~0_combout\ = (\processadorinstance|Decoder0~0_combout\ & ((\processadorinstance|addr_reg\(2)))) # (!\processadorinstance|Decoder0~0_combout\ & (\processadorinstance|regfileinstance|regfile[0][0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processadorinstance|regfileinstance|regfile[0][0]~2_combout\,
	datac => \processadorinstance|addr_reg\(2),
	datad => \processadorinstance|Decoder0~0_combout\,
	combout => \processadorinstance|LEDG~0_combout\);

-- Location: LCCOMB_X48_Y10_N10
\processadorinstance|LEDG~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|LEDG~2_combout\ = (\processadorinstance|Decoder0~0_combout\ & ((\processadorinstance|addr_reg\(2)))) # (!\processadorinstance|Decoder0~0_combout\ & (\processadorinstance|regfileinstance|regfile[0][1]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processadorinstance|regfileinstance|regfile[0][1]~18_combout\,
	datac => \processadorinstance|Decoder0~0_combout\,
	datad => \processadorinstance|addr_reg\(2),
	combout => \processadorinstance|LEDG~2_combout\);

-- Location: LCCOMB_X48_Y10_N30
\processadorinstance|LEDG~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|LEDG~6_combout\ = (\processadorinstance|Decoder0~0_combout\ & ((\processadorinstance|addr_reg\(2)))) # (!\processadorinstance|Decoder0~0_combout\ & (\processadorinstance|regfileinstance|regfile[0][3]~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|regfileinstance|regfile[0][3]~50_combout\,
	datac => \processadorinstance|Decoder0~0_combout\,
	datad => \processadorinstance|addr_reg\(2),
	combout => \processadorinstance|LEDG~6_combout\);

-- Location: LCCOMB_X46_Y10_N28
\processadorinstance|prominstance|prom~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|prominstance|prom~2_combout\ = (\processadorinstance|prominstance|addr_reg\(2) & (!\processadorinstance|prominstance|addr_reg\(1) & \processadorinstance|prominstance|prom~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|prominstance|addr_reg\(2),
	datab => \processadorinstance|prominstance|addr_reg\(1),
	datad => \processadorinstance|prominstance|prom~1_combout\,
	combout => \processadorinstance|prominstance|prom~2_combout\);

-- Location: LCFF_X49_Y9_N9
\processadorinstance|regfileinstance|regfile[7][0]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	datain => \processadorinstance|regfileinstance|regfile[7][0]~15_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \processadorinstance|regfileinstance|Decoder1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|regfileinstance|regfile[7][0]~_emulated_regout\);

-- Location: LCCOMB_X49_Y9_N30
\processadorinstance|regfileinstance|regfile[7][0]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile[7][0]~14_combout\ = (\KEY~combout\(0) & (\processadorinstance|regfileinstance|regfile[7][0]~13_combout\ $ (((\processadorinstance|regfileinstance|regfile[7][0]~_emulated_regout\))))) # (!\KEY~combout\(0) & 
-- (((\processadorinstance|regfileinstance|regfile~117_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|regfileinstance|regfile[7][0]~13_combout\,
	datab => \processadorinstance|regfileinstance|regfile~117_combout\,
	datac => \processadorinstance|regfileinstance|regfile[7][0]~_emulated_regout\,
	datad => \KEY~combout\(0),
	combout => \processadorinstance|regfileinstance|regfile[7][0]~14_combout\);

-- Location: LCFF_X48_Y8_N1
\processadorinstance|regfileinstance|regfile[5][2]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	datain => \processadorinstance|regfileinstance|regfile[5][2]~39_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \processadorinstance|regfileinstance|Decoder1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|regfileinstance|regfile[5][2]~_emulated_regout\);

-- Location: LCCOMB_X48_Y8_N30
\processadorinstance|regfileinstance|regfile[5][2]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile[5][2]~38_combout\ = (\KEY~combout\(0) & ((\processadorinstance|regfileinstance|regfile[5][2]~37_combout\ $ (\processadorinstance|regfileinstance|regfile[5][2]~_emulated_regout\)))) # (!\KEY~combout\(0) & 
-- (\processadorinstance|regfileinstance|regfile~121_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|regfileinstance|regfile~121_combout\,
	datab => \processadorinstance|regfileinstance|regfile[5][2]~37_combout\,
	datac => \KEY~combout\(0),
	datad => \processadorinstance|regfileinstance|regfile[5][2]~_emulated_regout\,
	combout => \processadorinstance|regfileinstance|regfile[5][2]~38_combout\);

-- Location: LCFF_X49_Y9_N11
\processadorinstance|regfileinstance|regfile[7][3]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	datain => \processadorinstance|regfileinstance|regfile[7][3]~63_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \processadorinstance|regfileinstance|Decoder1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|regfileinstance|regfile[7][3]~_emulated_regout\);

-- Location: LCCOMB_X49_Y10_N22
\processadorinstance|regfileinstance|regfile[7][3]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile[7][3]~62_combout\ = (\KEY~combout\(0) & (\processadorinstance|regfileinstance|regfile[7][3]~61_combout\ $ (((\processadorinstance|regfileinstance|regfile[7][3]~_emulated_regout\))))) # (!\KEY~combout\(0) & 
-- (((\processadorinstance|regfileinstance|regfile~126_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|regfileinstance|regfile[7][3]~61_combout\,
	datab => \processadorinstance|regfileinstance|regfile~126_combout\,
	datac => \KEY~combout\(0),
	datad => \processadorinstance|regfileinstance|regfile[7][3]~_emulated_regout\,
	combout => \processadorinstance|regfileinstance|regfile[7][3]~62_combout\);

-- Location: LCFF_X48_Y9_N7
\processadorinstance|regfileinstance|regfile[5][4]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	sdata => \processadorinstance|regfileinstance|regfile[5][4]~69_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \processadorinstance|regfileinstance|Decoder1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|regfileinstance|regfile[5][4]~_emulated_regout\);

-- Location: LCCOMB_X48_Y9_N20
\processadorinstance|regfileinstance|regfile[5][4]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile[5][4]~70_combout\ = (\KEY~combout\(0) & ((\processadorinstance|regfileinstance|regfile[5][4]~69_combout\ $ (\processadorinstance|regfileinstance|regfile[5][4]~_emulated_regout\)))) # (!\KEY~combout\(0) & 
-- (\processadorinstance|regfileinstance|regfile~128_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|regfileinstance|regfile~128_combout\,
	datab => \processadorinstance|regfileinstance|regfile[5][4]~69_combout\,
	datac => \KEY~combout\(0),
	datad => \processadorinstance|regfileinstance|regfile[5][4]~_emulated_regout\,
	combout => \processadorinstance|regfileinstance|regfile[5][4]~70_combout\);

-- Location: LCCOMB_X46_Y10_N16
\processadorinstance|prominstance|prom~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|prominstance|prom~6_combout\ = (\processadorinstance|prominstance|addr_reg\(2) & (!\processadorinstance|prominstance|addr_reg\(3) & ((!\processadorinstance|prominstance|addr_reg\(0)) # 
-- (!\processadorinstance|prominstance|addr_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|prominstance|addr_reg\(2),
	datab => \processadorinstance|prominstance|addr_reg\(1),
	datac => \processadorinstance|prominstance|addr_reg\(3),
	datad => \processadorinstance|prominstance|addr_reg\(0),
	combout => \processadorinstance|prominstance|prom~6_combout\);

-- Location: LCCOMB_X45_Y10_N20
\processadorinstance|prominstance|prom~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|prominstance|prom~12_combout\ = (!\processadorinstance|prominstance|addr_reg\(3) & (!\processadorinstance|prominstance|addr_reg\(2) & (\processadorinstance|prominstance|addr_reg\(0) $ 
-- (\processadorinstance|prominstance|addr_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|prominstance|addr_reg\(3),
	datab => \processadorinstance|prominstance|addr_reg\(0),
	datac => \processadorinstance|prominstance|addr_reg\(2),
	datad => \processadorinstance|prominstance|addr_reg\(1),
	combout => \processadorinstance|prominstance|prom~12_combout\);

-- Location: LCCOMB_X49_Y9_N8
\processadorinstance|regfileinstance|regfile[7][0]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile[7][0]~15_combout\ = \processadorinstance|data_reg\(0) $ (\processadorinstance|regfileinstance|regfile[7][0]~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \processadorinstance|data_reg\(0),
	datad => \processadorinstance|regfileinstance|regfile[7][0]~13_combout\,
	combout => \processadorinstance|regfileinstance|regfile[7][0]~15_combout\);

-- Location: LCCOMB_X48_Y9_N26
\processadorinstance|regfileinstance|regfile~117\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile~117_combout\ = (\processadorinstance|regfileinstance|regfile[7][0]~14_combout\ & (((!\processadorinstance|regfileinstance|Decoder0~0_combout\) # (!\processadorinstance|regfileinstance|regfile[0][0]~2_combout\)) 
-- # (!\processadorinstance|regfileinstance|regfile[0][1]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|regfileinstance|regfile[0][1]~18_combout\,
	datab => \processadorinstance|regfileinstance|regfile[0][0]~2_combout\,
	datac => \processadorinstance|regfileinstance|regfile[7][0]~14_combout\,
	datad => \processadorinstance|regfileinstance|Decoder0~0_combout\,
	combout => \processadorinstance|regfileinstance|regfile~117_combout\);

-- Location: LCCOMB_X48_Y8_N0
\processadorinstance|regfileinstance|regfile[5][2]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile[5][2]~39_combout\ = \processadorinstance|regfileinstance|regfile[5][2]~37_combout\ $ (\processadorinstance|data_reg\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \processadorinstance|regfileinstance|regfile[5][2]~37_combout\,
	datad => \processadorinstance|data_reg\(2),
	combout => \processadorinstance|regfileinstance|regfile[5][2]~39_combout\);

-- Location: LCCOMB_X48_Y8_N6
\processadorinstance|regfileinstance|regfile~121\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile~121_combout\ = (\processadorinstance|regfileinstance|regfile[5][2]~38_combout\ & (((\processadorinstance|regfileinstance|regfile[0][1]~18_combout\) # (!\processadorinstance|regfileinstance|Decoder0~0_combout\)) 
-- # (!\processadorinstance|regfileinstance|regfile[0][0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|regfileinstance|regfile[0][0]~2_combout\,
	datab => \processadorinstance|regfileinstance|regfile[5][2]~38_combout\,
	datac => \processadorinstance|regfileinstance|regfile[0][1]~18_combout\,
	datad => \processadorinstance|regfileinstance|Decoder0~0_combout\,
	combout => \processadorinstance|regfileinstance|regfile~121_combout\);

-- Location: LCCOMB_X49_Y9_N10
\processadorinstance|regfileinstance|regfile[7][3]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile[7][3]~63_combout\ = \processadorinstance|regfileinstance|regfile[7][3]~61_combout\ $ (\processadorinstance|data_reg\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \processadorinstance|regfileinstance|regfile[7][3]~61_combout\,
	datad => \processadorinstance|data_reg\(3),
	combout => \processadorinstance|regfileinstance|regfile[7][3]~63_combout\);

-- Location: LCCOMB_X49_Y10_N30
\processadorinstance|regfileinstance|regfile~126\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile~126_combout\ = (\processadorinstance|regfileinstance|regfile[7][3]~62_combout\ & (((!\processadorinstance|regfileinstance|Decoder0~0_combout\) # 
-- (!\processadorinstance|regfileinstance|regfile[0][1]~18_combout\)) # (!\processadorinstance|regfileinstance|regfile[0][0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|regfileinstance|regfile[0][0]~2_combout\,
	datab => \processadorinstance|regfileinstance|regfile[7][3]~62_combout\,
	datac => \processadorinstance|regfileinstance|regfile[0][1]~18_combout\,
	datad => \processadorinstance|regfileinstance|Decoder0~0_combout\,
	combout => \processadorinstance|regfileinstance|regfile~126_combout\);

-- Location: LCCOMB_X48_Y9_N30
\processadorinstance|regfileinstance|regfile~128\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile~128_combout\ = (\processadorinstance|regfileinstance|regfile[5][4]~70_combout\ & (((\processadorinstance|regfileinstance|regfile[0][1]~18_combout\) # 
-- (!\processadorinstance|regfileinstance|regfile[0][0]~2_combout\)) # (!\processadorinstance|regfileinstance|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|regfileinstance|Decoder0~0_combout\,
	datab => \processadorinstance|regfileinstance|regfile[0][0]~2_combout\,
	datac => \processadorinstance|regfileinstance|regfile[5][4]~70_combout\,
	datad => \processadorinstance|regfileinstance|regfile[0][1]~18_combout\,
	combout => \processadorinstance|regfileinstance|regfile~128_combout\);

-- Location: LCCOMB_X45_Y10_N18
\processadorinstance|Decoder0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|Decoder0~1_combout\ = (!\processadorinstance|OPCODE\(1) & (\processadorinstance|OPCODE\(3) & \processadorinstance|OPCODE\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|OPCODE\(1),
	datab => \processadorinstance|OPCODE\(3),
	datad => \processadorinstance|OPCODE\(0),
	combout => \processadorinstance|Decoder0~1_combout\);

-- Location: LCCOMB_X48_Y9_N10
\processadorinstance|regfileinstance|regfile[7][0]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile[7][0]~13_combout\ = (\KEY~combout\(0) & (\processadorinstance|regfileinstance|regfile[7][0]~13_combout\)) # (!\KEY~combout\(0) & ((\processadorinstance|regfileinstance|regfile~117_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|regfileinstance|regfile[7][0]~13_combout\,
	datac => \KEY~combout\(0),
	datad => \processadorinstance|regfileinstance|regfile~117_combout\,
	combout => \processadorinstance|regfileinstance|regfile[7][0]~13_combout\);

-- Location: LCCOMB_X48_Y8_N14
\processadorinstance|regfileinstance|regfile[5][2]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile[5][2]~37_combout\ = (\KEY~combout\(0) & (\processadorinstance|regfileinstance|regfile[5][2]~37_combout\)) # (!\KEY~combout\(0) & ((\processadorinstance|regfileinstance|regfile~121_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processadorinstance|regfileinstance|regfile[5][2]~37_combout\,
	datac => \KEY~combout\(0),
	datad => \processadorinstance|regfileinstance|regfile~121_combout\,
	combout => \processadorinstance|regfileinstance|regfile[5][2]~37_combout\);

-- Location: LCCOMB_X49_Y10_N16
\processadorinstance|regfileinstance|regfile[7][3]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile[7][3]~61_combout\ = (\KEY~combout\(0) & (\processadorinstance|regfileinstance|regfile[7][3]~61_combout\)) # (!\KEY~combout\(0) & ((\processadorinstance|regfileinstance|regfile~126_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY~combout\(0),
	datac => \processadorinstance|regfileinstance|regfile[7][3]~61_combout\,
	datad => \processadorinstance|regfileinstance|regfile~126_combout\,
	combout => \processadorinstance|regfileinstance|regfile[7][3]~61_combout\);

-- Location: LCCOMB_X48_Y9_N14
\processadorinstance|regfileinstance|regfile[5][4]~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile[5][4]~69_combout\ = (\KEY~combout\(0) & (\processadorinstance|regfileinstance|regfile[5][4]~69_combout\)) # (!\KEY~combout\(0) & ((\processadorinstance|regfileinstance|regfile~128_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(0),
	datab => \processadorinstance|regfileinstance|regfile[5][4]~69_combout\,
	datad => \processadorinstance|regfileinstance|regfile~128_combout\,
	combout => \processadorinstance|regfileinstance|regfile[5][4]~69_combout\);

-- Location: LCCOMB_X40_Y9_N20
\processadorinstance|we_d\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|we_d~combout\ = (GLOBAL(\processadorinstance|we_d~0clkctrl_outclk\) & (!\processadorinstance|Decoder0~1_combout\)) # (!GLOBAL(\processadorinstance|we_d~0clkctrl_outclk\) & ((\processadorinstance|we_d~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processadorinstance|Decoder0~1_combout\,
	datac => \processadorinstance|we_d~combout\,
	datad => \processadorinstance|we_d~0clkctrl_outclk\,
	combout => \processadorinstance|we_d~combout\);

-- Location: LCCOMB_X45_Y8_N0
\processadorinstance|regfileinstance|regfile[3][2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile[3][2]~feeder_combout\ = \processadorinstance|data_reg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \processadorinstance|data_reg\(2),
	combout => \processadorinstance|regfileinstance|regfile[3][2]~feeder_combout\);

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
	padio => ww_KEY(0),
	combout => \KEY~combout\(0));

-- Location: LCCOMB_X47_Y8_N2
\processadorinstance|pcinstance|pc[1]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|pcinstance|pc[1]~7_combout\ = (\processadorinstance|pcinstance|pc\(0) & (\processadorinstance|pcinstance|pc\(1) $ (VCC))) # (!\processadorinstance|pcinstance|pc\(0) & (\processadorinstance|pcinstance|pc\(1) & VCC))
-- \processadorinstance|pcinstance|pc[1]~8\ = CARRY((\processadorinstance|pcinstance|pc\(0) & \processadorinstance|pcinstance|pc\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|pcinstance|pc\(0),
	datab => \processadorinstance|pcinstance|pc\(1),
	datad => VCC,
	combout => \processadorinstance|pcinstance|pc[1]~7_combout\,
	cout => \processadorinstance|pcinstance|pc[1]~8\);

-- Location: LCFF_X47_Y8_N3
\processadorinstance|pcinstance|pc[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	datain => \processadorinstance|pcinstance|pc[1]~7_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|pcinstance|pc\(1));

-- Location: LCCOMB_X47_Y8_N4
\processadorinstance|pcinstance|pc[2]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|pcinstance|pc[2]~9_combout\ = (\processadorinstance|pcinstance|pc\(2) & (!\processadorinstance|pcinstance|pc[1]~8\)) # (!\processadorinstance|pcinstance|pc\(2) & ((\processadorinstance|pcinstance|pc[1]~8\) # (GND)))
-- \processadorinstance|pcinstance|pc[2]~10\ = CARRY((!\processadorinstance|pcinstance|pc[1]~8\) # (!\processadorinstance|pcinstance|pc\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \processadorinstance|pcinstance|pc\(2),
	datad => VCC,
	cin => \processadorinstance|pcinstance|pc[1]~8\,
	combout => \processadorinstance|pcinstance|pc[2]~9_combout\,
	cout => \processadorinstance|pcinstance|pc[2]~10\);

-- Location: LCFF_X47_Y8_N5
\processadorinstance|pcinstance|pc[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	datain => \processadorinstance|pcinstance|pc[2]~9_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|pcinstance|pc\(2));

-- Location: LCCOMB_X47_Y8_N6
\processadorinstance|pcinstance|pc[3]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|pcinstance|pc[3]~11_combout\ = (\processadorinstance|pcinstance|pc\(3) & (\processadorinstance|pcinstance|pc[2]~10\ $ (GND))) # (!\processadorinstance|pcinstance|pc\(3) & (!\processadorinstance|pcinstance|pc[2]~10\ & VCC))
-- \processadorinstance|pcinstance|pc[3]~12\ = CARRY((\processadorinstance|pcinstance|pc\(3) & !\processadorinstance|pcinstance|pc[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|pcinstance|pc\(3),
	datad => VCC,
	cin => \processadorinstance|pcinstance|pc[2]~10\,
	combout => \processadorinstance|pcinstance|pc[3]~11_combout\,
	cout => \processadorinstance|pcinstance|pc[3]~12\);

-- Location: LCCOMB_X47_Y8_N8
\processadorinstance|pcinstance|pc[4]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|pcinstance|pc[4]~13_combout\ = (\processadorinstance|pcinstance|pc\(4) & (!\processadorinstance|pcinstance|pc[3]~12\)) # (!\processadorinstance|pcinstance|pc\(4) & ((\processadorinstance|pcinstance|pc[3]~12\) # (GND)))
-- \processadorinstance|pcinstance|pc[4]~14\ = CARRY((!\processadorinstance|pcinstance|pc[3]~12\) # (!\processadorinstance|pcinstance|pc\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \processadorinstance|pcinstance|pc\(4),
	datad => VCC,
	cin => \processadorinstance|pcinstance|pc[3]~12\,
	combout => \processadorinstance|pcinstance|pc[4]~13_combout\,
	cout => \processadorinstance|pcinstance|pc[4]~14\);

-- Location: LCFF_X47_Y8_N9
\processadorinstance|pcinstance|pc[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	datain => \processadorinstance|pcinstance|pc[4]~13_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|pcinstance|pc\(4));

-- Location: LCCOMB_X47_Y8_N10
\processadorinstance|pcinstance|pc[5]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|pcinstance|pc[5]~15_combout\ = (\processadorinstance|pcinstance|pc\(5) & (\processadorinstance|pcinstance|pc[4]~14\ $ (GND))) # (!\processadorinstance|pcinstance|pc\(5) & (!\processadorinstance|pcinstance|pc[4]~14\ & VCC))
-- \processadorinstance|pcinstance|pc[5]~16\ = CARRY((\processadorinstance|pcinstance|pc\(5) & !\processadorinstance|pcinstance|pc[4]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|pcinstance|pc\(5),
	datad => VCC,
	cin => \processadorinstance|pcinstance|pc[4]~14\,
	combout => \processadorinstance|pcinstance|pc[5]~15_combout\,
	cout => \processadorinstance|pcinstance|pc[5]~16\);

-- Location: LCCOMB_X47_Y8_N12
\processadorinstance|pcinstance|pc[6]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|pcinstance|pc[6]~17_combout\ = (\processadorinstance|pcinstance|pc\(6) & (!\processadorinstance|pcinstance|pc[5]~16\)) # (!\processadorinstance|pcinstance|pc\(6) & ((\processadorinstance|pcinstance|pc[5]~16\) # (GND)))
-- \processadorinstance|pcinstance|pc[6]~18\ = CARRY((!\processadorinstance|pcinstance|pc[5]~16\) # (!\processadorinstance|pcinstance|pc\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|pcinstance|pc\(6),
	datad => VCC,
	cin => \processadorinstance|pcinstance|pc[5]~16\,
	combout => \processadorinstance|pcinstance|pc[6]~17_combout\,
	cout => \processadorinstance|pcinstance|pc[6]~18\);

-- Location: LCCOMB_X47_Y8_N14
\processadorinstance|pcinstance|pc[7]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|pcinstance|pc[7]~19_combout\ = \processadorinstance|pcinstance|pc\(7) $ (!\processadorinstance|pcinstance|pc[6]~18\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \processadorinstance|pcinstance|pc\(7),
	cin => \processadorinstance|pcinstance|pc[6]~18\,
	combout => \processadorinstance|pcinstance|pc[7]~19_combout\);

-- Location: LCFF_X47_Y8_N15
\processadorinstance|pcinstance|pc[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	datain => \processadorinstance|pcinstance|pc[7]~19_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|pcinstance|pc\(7));

-- Location: LCFF_X46_Y10_N29
\processadorinstance|prominstance|addr_reg[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	sdata => \processadorinstance|pcinstance|pc\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|prominstance|addr_reg\(7));

-- Location: LCFF_X47_Y8_N13
\processadorinstance|pcinstance|pc[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	datain => \processadorinstance|pcinstance|pc[6]~17_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|pcinstance|pc\(6));

-- Location: LCFF_X46_Y10_N3
\processadorinstance|prominstance|addr_reg[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	sdata => \processadorinstance|pcinstance|pc\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|prominstance|addr_reg\(6));

-- Location: LCFF_X46_Y10_N19
\processadorinstance|prominstance|addr_reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	sdata => \processadorinstance|pcinstance|pc\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|prominstance|addr_reg\(1));

-- Location: LCFF_X46_Y10_N31
\processadorinstance|prominstance|addr_reg[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	sdata => \processadorinstance|pcinstance|pc\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|prominstance|addr_reg\(4));

-- Location: LCCOMB_X47_Y8_N20
\processadorinstance|pcinstance|pc[0]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|pcinstance|pc[0]~21_combout\ = !\processadorinstance|pcinstance|pc\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \processadorinstance|pcinstance|pc\(0),
	combout => \processadorinstance|pcinstance|pc[0]~21_combout\);

-- Location: LCFF_X47_Y8_N21
\processadorinstance|pcinstance|pc[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	datain => \processadorinstance|pcinstance|pc[0]~21_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|pcinstance|pc\(0));

-- Location: LCFF_X46_Y10_N11
\processadorinstance|prominstance|addr_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	sdata => \processadorinstance|pcinstance|pc\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|prominstance|addr_reg\(0));

-- Location: LCCOMB_X46_Y10_N30
\processadorinstance|prominstance|prom~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|prominstance|prom~10_combout\ = (\processadorinstance|prominstance|addr_reg\(3)) # ((\processadorinstance|prominstance|addr_reg\(4)) # ((\processadorinstance|prominstance|addr_reg\(1) & 
-- \processadorinstance|prominstance|addr_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|prominstance|addr_reg\(3),
	datab => \processadorinstance|prominstance|addr_reg\(1),
	datac => \processadorinstance|prominstance|addr_reg\(4),
	datad => \processadorinstance|prominstance|addr_reg\(0),
	combout => \processadorinstance|prominstance|prom~10_combout\);

-- Location: LCCOMB_X46_Y10_N12
\processadorinstance|prominstance|prom~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|prominstance|prom~11_combout\ = (\processadorinstance|prominstance|addr_reg\(5)) # ((\processadorinstance|prominstance|addr_reg\(7)) # ((\processadorinstance|prominstance|addr_reg\(6)) # 
-- (\processadorinstance|prominstance|prom~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|prominstance|addr_reg\(5),
	datab => \processadorinstance|prominstance|addr_reg\(7),
	datac => \processadorinstance|prominstance|addr_reg\(6),
	datad => \processadorinstance|prominstance|prom~10_combout\,
	combout => \processadorinstance|prominstance|prom~11_combout\);

-- Location: LCCOMB_X46_Y10_N4
\processadorinstance|OPCODE[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|OPCODE\(3) = (\KEY~combout\(0) & ((!\processadorinstance|prominstance|prom~11_combout\))) # (!\KEY~combout\(0) & (\processadorinstance|OPCODE\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(0),
	datab => \processadorinstance|OPCODE\(3),
	datad => \processadorinstance|prominstance|prom~11_combout\,
	combout => \processadorinstance|OPCODE\(3));

-- Location: LCFF_X47_Y8_N11
\processadorinstance|pcinstance|pc[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	datain => \processadorinstance|pcinstance|pc[5]~15_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|pcinstance|pc\(5));

-- Location: LCFF_X46_Y10_N21
\processadorinstance|prominstance|addr_reg[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	sdata => \processadorinstance|pcinstance|pc\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|prominstance|addr_reg\(5));

-- Location: LCCOMB_X46_Y10_N26
\processadorinstance|prominstance|prom~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|prominstance|prom~0_combout\ = (!\processadorinstance|prominstance|addr_reg\(4) & (!\processadorinstance|prominstance|addr_reg\(6) & (!\processadorinstance|prominstance|addr_reg\(5) & !\processadorinstance|prominstance|addr_reg\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|prominstance|addr_reg\(4),
	datab => \processadorinstance|prominstance|addr_reg\(6),
	datac => \processadorinstance|prominstance|addr_reg\(5),
	datad => \processadorinstance|prominstance|addr_reg\(7),
	combout => \processadorinstance|prominstance|prom~0_combout\);

-- Location: LCCOMB_X46_Y10_N22
\processadorinstance|prominstance|prom~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|prominstance|prom~7_combout\ = (\processadorinstance|prominstance|prom~6_combout\ & \processadorinstance|prominstance|prom~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|prominstance|prom~6_combout\,
	datad => \processadorinstance|prominstance|prom~0_combout\,
	combout => \processadorinstance|prominstance|prom~7_combout\);

-- Location: LCCOMB_X46_Y10_N24
\processadorinstance|OPCODE[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|OPCODE\(1) = (\KEY~combout\(0) & ((\processadorinstance|prominstance|prom~7_combout\))) # (!\KEY~combout\(0) & (\processadorinstance|OPCODE\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|OPCODE\(1),
	datab => \KEY~combout\(0),
	datad => \processadorinstance|prominstance|prom~7_combout\,
	combout => \processadorinstance|OPCODE\(1));

-- Location: LCCOMB_X46_Y10_N2
\processadorinstance|Decoder0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|Decoder0~0_combout\ = (\processadorinstance|OPCODE\(0) & (\processadorinstance|OPCODE\(3) & \processadorinstance|OPCODE\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|OPCODE\(0),
	datab => \processadorinstance|OPCODE\(3),
	datad => \processadorinstance|OPCODE\(1),
	combout => \processadorinstance|Decoder0~0_combout\);

-- Location: LCFF_X46_Y10_N15
\processadorinstance|prominstance|addr_reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	sdata => \processadorinstance|pcinstance|pc\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|prominstance|addr_reg\(2));

-- Location: LCCOMB_X45_Y10_N26
\processadorinstance|prominstance|prom~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|prominstance|prom~3_combout\ = (!\processadorinstance|prominstance|addr_reg\(3) & ((\processadorinstance|prominstance|addr_reg\(2) & (\processadorinstance|prominstance|addr_reg\(0) & !\processadorinstance|prominstance|addr_reg\(1))) # 
-- (!\processadorinstance|prominstance|addr_reg\(2) & ((\processadorinstance|prominstance|addr_reg\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|prominstance|addr_reg\(3),
	datab => \processadorinstance|prominstance|addr_reg\(0),
	datac => \processadorinstance|prominstance|addr_reg\(2),
	datad => \processadorinstance|prominstance|addr_reg\(1),
	combout => \processadorinstance|prominstance|prom~3_combout\);

-- Location: LCCOMB_X46_Y10_N18
\processadorinstance|prominstance|prom~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|prominstance|prom~4_combout\ = (\processadorinstance|prominstance|prom~0_combout\ & \processadorinstance|prominstance|prom~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processadorinstance|prominstance|prom~0_combout\,
	datad => \processadorinstance|prominstance|prom~3_combout\,
	combout => \processadorinstance|prominstance|prom~4_combout\);

-- Location: LCCOMB_X46_Y10_N20
\processadorinstance|addr_reg[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|addr_reg[0]~0_combout\ = (\KEY~combout\(0) & ((\processadorinstance|OPCODE\(0)) # (\processadorinstance|OPCODE\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|OPCODE\(0),
	datab => \processadorinstance|OPCODE\(3),
	datad => \KEY~combout\(0),
	combout => \processadorinstance|addr_reg[0]~0_combout\);

-- Location: CLKCTRL_G4
\processadorinstance|addr_reg[0]~0clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \processadorinstance|addr_reg[0]~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \processadorinstance|addr_reg[0]~0clkctrl_outclk\);

-- Location: LCCOMB_X47_Y9_N30
\processadorinstance|addr_reg[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|addr_reg\(1) = (GLOBAL(\processadorinstance|addr_reg[0]~0clkctrl_outclk\) & (\processadorinstance|prominstance|prom~4_combout\)) # (!GLOBAL(\processadorinstance|addr_reg[0]~0clkctrl_outclk\) & ((\processadorinstance|addr_reg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processadorinstance|prominstance|prom~4_combout\,
	datac => \processadorinstance|addr_reg\(1),
	datad => \processadorinstance|addr_reg[0]~0clkctrl_outclk\,
	combout => \processadorinstance|addr_reg\(1));

-- Location: LCCOMB_X46_Y10_N6
\processadorinstance|prominstance|prom~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|prominstance|prom~8_combout\ = (!\processadorinstance|prominstance|addr_reg\(3) & ((\processadorinstance|prominstance|addr_reg\(1) & (!\processadorinstance|prominstance|addr_reg\(2) & \processadorinstance|prominstance|addr_reg\(0))) # 
-- (!\processadorinstance|prominstance|addr_reg\(1) & (\processadorinstance|prominstance|addr_reg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|prominstance|addr_reg\(3),
	datab => \processadorinstance|prominstance|addr_reg\(1),
	datac => \processadorinstance|prominstance|addr_reg\(2),
	datad => \processadorinstance|prominstance|addr_reg\(0),
	combout => \processadorinstance|prominstance|prom~8_combout\);

-- Location: LCCOMB_X45_Y10_N12
\processadorinstance|prominstance|prom~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|prominstance|prom~9_combout\ = (\processadorinstance|prominstance|prom~0_combout\ & \processadorinstance|prominstance|prom~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \processadorinstance|prominstance|prom~0_combout\,
	datad => \processadorinstance|prominstance|prom~8_combout\,
	combout => \processadorinstance|prominstance|prom~9_combout\);

-- Location: LCCOMB_X45_Y10_N30
\processadorinstance|OPCODE[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|OPCODE\(0) = (\KEY~combout\(0) & ((\processadorinstance|prominstance|prom~9_combout\))) # (!\KEY~combout\(0) & (\processadorinstance|OPCODE\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processadorinstance|OPCODE\(0),
	datac => \KEY~combout\(0),
	datad => \processadorinstance|prominstance|prom~9_combout\,
	combout => \processadorinstance|OPCODE\(0));

-- Location: LCCOMB_X45_Y10_N14
\processadorinstance|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|Mux0~0_combout\ = (\processadorinstance|OPCODE\(1)) # (\processadorinstance|OPCODE\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \processadorinstance|OPCODE\(1),
	datad => \processadorinstance|OPCODE\(0),
	combout => \processadorinstance|Mux0~0_combout\);

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

-- Location: LCCOMB_X42_Y9_N26
\~GND\ : cycloneii_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X45_Y10_N16
\processadorinstance|prominstance|prom~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|prominstance|prom~13_combout\ = (\processadorinstance|prominstance|prom~12_combout\ & \processadorinstance|prominstance|prom~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|prominstance|prom~12_combout\,
	datac => \processadorinstance|prominstance|prom~0_combout\,
	combout => \processadorinstance|prominstance|prom~13_combout\);

-- Location: LCCOMB_X46_Y10_N0
\processadorinstance|we_d~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|we_d~0_combout\ = (\processadorinstance|OPCODE\(3) & (\KEY~combout\(0) & (\processadorinstance|OPCODE\(0) $ (\processadorinstance|OPCODE\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|OPCODE\(0),
	datab => \processadorinstance|OPCODE\(1),
	datac => \processadorinstance|OPCODE\(3),
	datad => \KEY~combout\(0),
	combout => \processadorinstance|we_d~0_combout\);

-- Location: CLKCTRL_G6
\processadorinstance|we_d~0clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \processadorinstance|we_d~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \processadorinstance|we_d~0clkctrl_outclk\);

-- Location: LCCOMB_X42_Y9_N16
\processadorinstance|addr_d\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|addr_d~combout\ = (GLOBAL(\processadorinstance|we_d~0clkctrl_outclk\) & (\processadorinstance|prominstance|prom~13_combout\)) # (!GLOBAL(\processadorinstance|we_d~0clkctrl_outclk\) & ((\processadorinstance|addr_d~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processadorinstance|prominstance|prom~13_combout\,
	datac => \processadorinstance|addr_d~combout\,
	datad => \processadorinstance|we_d~0clkctrl_outclk\,
	combout => \processadorinstance|addr_d~combout\);

-- Location: M4K_X41_Y9
\processadorinstance|draminstance|altsyncram_component|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "processador:processadorinstance|dram:draminstance|altsyncram:altsyncram_component|altsyncram_r4a1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 1,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 1,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_width => 1,
	port_b_data_width => 4,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \processadorinstance|we_d~combout\,
	clk0 => \ALT_INV_KEY~combout\(3),
	portadatain => \processadorinstance|draminstance|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \processadorinstance|draminstance|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \processadorinstance|draminstance|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X45_Y10_N6
\processadorinstance|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|Mux0~1_combout\ = (\processadorinstance|Mux0~0_combout\ & (((\processadorinstance|draminstance|altsyncram_component|auto_generated|q_a\(0))))) # (!\processadorinstance|Mux0~0_combout\ & 
-- (\processadorinstance|prominstance|prom~12_combout\ & ((\processadorinstance|prominstance|prom~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|prominstance|prom~12_combout\,
	datab => \processadorinstance|Mux0~0_combout\,
	datac => \processadorinstance|draminstance|altsyncram_component|auto_generated|q_a\(0),
	datad => \processadorinstance|prominstance|prom~0_combout\,
	combout => \processadorinstance|Mux0~1_combout\);

-- Location: LCCOMB_X46_Y10_N8
\processadorinstance|data_reg[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|data_reg[0]~0_combout\ = (\processadorinstance|OPCODE\(3) & (\KEY~combout\(0) & ((!\processadorinstance|OPCODE\(1)) # (!\processadorinstance|OPCODE\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|OPCODE\(0),
	datab => \processadorinstance|OPCODE\(1),
	datac => \processadorinstance|OPCODE\(3),
	datad => \KEY~combout\(0),
	combout => \processadorinstance|data_reg[0]~0_combout\);

-- Location: CLKCTRL_G7
\processadorinstance|data_reg[0]~0clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \processadorinstance|data_reg[0]~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \processadorinstance|data_reg[0]~0clkctrl_outclk\);

-- Location: LCCOMB_X46_Y9_N0
\processadorinstance|data_reg[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|data_reg\(0) = (GLOBAL(\processadorinstance|data_reg[0]~0clkctrl_outclk\) & ((\processadorinstance|Mux0~1_combout\))) # (!GLOBAL(\processadorinstance|data_reg[0]~0clkctrl_outclk\) & (\processadorinstance|data_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processadorinstance|data_reg\(0),
	datac => \processadorinstance|Mux0~1_combout\,
	datad => \processadorinstance|data_reg[0]~0clkctrl_outclk\,
	combout => \processadorinstance|data_reg\(0));

-- Location: LCCOMB_X45_Y10_N28
\processadorinstance|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|WideOr1~0_combout\ = (!\processadorinstance|OPCODE\(1) & \processadorinstance|OPCODE\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|OPCODE\(1),
	datac => \processadorinstance|OPCODE\(3),
	combout => \processadorinstance|WideOr1~0_combout\);

-- Location: LCCOMB_X48_Y9_N24
\processadorinstance|we_reg\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|we_reg~combout\ = (GLOBAL(\processadorinstance|addr_reg[0]~0clkctrl_outclk\) & (\processadorinstance|WideOr1~0_combout\)) # (!GLOBAL(\processadorinstance|addr_reg[0]~0clkctrl_outclk\) & ((\processadorinstance|we_reg~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processadorinstance|WideOr1~0_combout\,
	datac => \processadorinstance|we_reg~combout\,
	datad => \processadorinstance|addr_reg[0]~0clkctrl_outclk\,
	combout => \processadorinstance|we_reg~combout\);

-- Location: LCCOMB_X47_Y9_N0
\processadorinstance|addr_reg[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|addr_reg\(0) = (GLOBAL(\processadorinstance|addr_reg[0]~0clkctrl_outclk\) & (\processadorinstance|prominstance|prom~2_combout\)) # (!GLOBAL(\processadorinstance|addr_reg[0]~0clkctrl_outclk\) & ((\processadorinstance|addr_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|prominstance|prom~2_combout\,
	datab => \processadorinstance|addr_reg\(0),
	datad => \processadorinstance|addr_reg[0]~0clkctrl_outclk\,
	combout => \processadorinstance|addr_reg\(0));

-- Location: LCCOMB_X47_Y9_N12
\processadorinstance|regfileinstance|Decoder1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|Decoder1~1_combout\ = (!\processadorinstance|addr_reg\(2) & (\processadorinstance|we_reg~combout\ & (!\processadorinstance|addr_reg\(0) & \processadorinstance|addr_reg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|addr_reg\(2),
	datab => \processadorinstance|we_reg~combout\,
	datac => \processadorinstance|addr_reg\(0),
	datad => \processadorinstance|addr_reg\(1),
	combout => \processadorinstance|regfileinstance|Decoder1~1_combout\);

-- Location: LCFF_X46_Y7_N9
\processadorinstance|regfileinstance|regfile[2][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	sdata => \processadorinstance|data_reg\(0),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \processadorinstance|regfileinstance|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|regfileinstance|regfile[2][0]~regout\);

-- Location: LCCOMB_X47_Y9_N26
\processadorinstance|regfileinstance|Decoder1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|Decoder1~2_combout\ = (!\processadorinstance|addr_reg\(2) & (\processadorinstance|addr_reg\(0) & (\processadorinstance|we_reg~combout\ & !\processadorinstance|addr_reg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|addr_reg\(2),
	datab => \processadorinstance|addr_reg\(0),
	datac => \processadorinstance|we_reg~combout\,
	datad => \processadorinstance|addr_reg\(1),
	combout => \processadorinstance|regfileinstance|Decoder1~2_combout\);

-- Location: LCFF_X47_Y9_N29
\processadorinstance|regfileinstance|regfile[1][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	sdata => \processadorinstance|data_reg\(0),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \processadorinstance|regfileinstance|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|regfileinstance|regfile[1][0]~regout\);

-- Location: LCCOMB_X47_Y9_N28
\processadorinstance|regfileinstance|Mux7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|Mux7~2_combout\ = (\processadorinstance|addr_reg\(0) & (((\processadorinstance|regfileinstance|regfile[1][0]~regout\) # (\processadorinstance|addr_reg\(1))))) # (!\processadorinstance|addr_reg\(0) & 
-- (\processadorinstance|regfileinstance|regfile[0][0]~2_combout\ & ((!\processadorinstance|addr_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|regfileinstance|regfile[0][0]~2_combout\,
	datab => \processadorinstance|addr_reg\(0),
	datac => \processadorinstance|regfileinstance|regfile[1][0]~regout\,
	datad => \processadorinstance|addr_reg\(1),
	combout => \processadorinstance|regfileinstance|Mux7~2_combout\);

-- Location: LCCOMB_X46_Y7_N8
\processadorinstance|regfileinstance|Mux7~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|Mux7~3_combout\ = (\processadorinstance|addr_reg\(1) & ((\processadorinstance|regfileinstance|Mux7~2_combout\ & (\processadorinstance|regfileinstance|regfile[3][0]~regout\)) # 
-- (!\processadorinstance|regfileinstance|Mux7~2_combout\ & ((\processadorinstance|regfileinstance|regfile[2][0]~regout\))))) # (!\processadorinstance|addr_reg\(1) & (((\processadorinstance|regfileinstance|Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|regfileinstance|regfile[3][0]~regout\,
	datab => \processadorinstance|addr_reg\(1),
	datac => \processadorinstance|regfileinstance|regfile[2][0]~regout\,
	datad => \processadorinstance|regfileinstance|Mux7~2_combout\,
	combout => \processadorinstance|regfileinstance|Mux7~3_combout\);

-- Location: LCCOMB_X49_Y7_N20
\processadorinstance|regfileinstance|regfile[0][0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile[0][0]~1_combout\ = (\KEY~combout\(0) & ((\processadorinstance|regfileinstance|regfile[0][0]~1_combout\))) # (!\KEY~combout\(0) & (\processadorinstance|regfileinstance|regfile[0][0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processadorinstance|regfileinstance|regfile[0][0]~2_combout\,
	datac => \KEY~combout\(0),
	datad => \processadorinstance|regfileinstance|regfile[0][0]~1_combout\,
	combout => \processadorinstance|regfileinstance|regfile[0][0]~1_combout\);

-- Location: LCCOMB_X49_Y7_N28
\processadorinstance|regfileinstance|regfile[0][0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile[0][0]~3_combout\ = \processadorinstance|regfileinstance|regfile[0][0]~1_combout\ $ (\processadorinstance|data_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \processadorinstance|regfileinstance|regfile[0][0]~1_combout\,
	datad => \processadorinstance|data_reg\(0),
	combout => \processadorinstance|regfileinstance|regfile[0][0]~3_combout\);

-- Location: LCFF_X47_Y8_N7
\processadorinstance|pcinstance|pc[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	datain => \processadorinstance|pcinstance|pc[3]~11_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|pcinstance|pc\(3));

-- Location: LCFF_X46_Y10_N25
\processadorinstance|prominstance|addr_reg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	sdata => \processadorinstance|pcinstance|pc\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|prominstance|addr_reg\(3));

-- Location: LCCOMB_X45_Y10_N2
\processadorinstance|prominstance|prom~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|prominstance|prom~5_combout\ = (\processadorinstance|prominstance|prom~0_combout\ & (!\processadorinstance|prominstance|addr_reg\(0) & (\processadorinstance|prominstance|addr_reg\(2) & 
-- !\processadorinstance|prominstance|addr_reg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|prominstance|prom~0_combout\,
	datab => \processadorinstance|prominstance|addr_reg\(0),
	datac => \processadorinstance|prominstance|addr_reg\(2),
	datad => \processadorinstance|prominstance|addr_reg\(3),
	combout => \processadorinstance|prominstance|prom~5_combout\);

-- Location: LCCOMB_X47_Y9_N24
\processadorinstance|addr_reg[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|addr_reg\(2) = (GLOBAL(\processadorinstance|addr_reg[0]~0clkctrl_outclk\) & (\processadorinstance|prominstance|prom~5_combout\)) # (!GLOBAL(\processadorinstance|addr_reg[0]~0clkctrl_outclk\) & ((\processadorinstance|addr_reg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processadorinstance|prominstance|prom~5_combout\,
	datac => \processadorinstance|addr_reg\(2),
	datad => \processadorinstance|addr_reg[0]~0clkctrl_outclk\,
	combout => \processadorinstance|addr_reg\(2));

-- Location: LCCOMB_X48_Y7_N0
\processadorinstance|regfileinstance|Decoder1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|Decoder1~7_combout\ = (!\processadorinstance|addr_reg\(1) & (!\processadorinstance|addr_reg\(0) & (\processadorinstance|we_reg~combout\ & !\processadorinstance|addr_reg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|addr_reg\(1),
	datab => \processadorinstance|addr_reg\(0),
	datac => \processadorinstance|we_reg~combout\,
	datad => \processadorinstance|addr_reg\(2),
	combout => \processadorinstance|regfileinstance|Decoder1~7_combout\);

-- Location: LCFF_X49_Y7_N29
\processadorinstance|regfileinstance|regfile[0][0]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	datain => \processadorinstance|regfileinstance|regfile[0][0]~3_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \processadorinstance|regfileinstance|Decoder1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|regfileinstance|regfile[0][0]~_emulated_regout\);

-- Location: LCCOMB_X49_Y7_N10
\processadorinstance|regfileinstance|regfile[0][0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile[0][0]~2_combout\ = (\KEY~combout\(0) & (\processadorinstance|regfileinstance|regfile[0][0]~1_combout\ $ (((\processadorinstance|regfileinstance|regfile[0][0]~_emulated_regout\))))) # (!\KEY~combout\(0) & 
-- (((\processadorinstance|regfileinstance|regfile[0][0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|regfileinstance|regfile[0][0]~1_combout\,
	datab => \processadorinstance|regfileinstance|regfile[0][0]~2_combout\,
	datac => \KEY~combout\(0),
	datad => \processadorinstance|regfileinstance|regfile[0][0]~_emulated_regout\,
	combout => \processadorinstance|regfileinstance|regfile[0][0]~2_combout\);

-- Location: LCCOMB_X49_Y9_N20
\processadorinstance|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|Mux2~0_combout\ = (\processadorinstance|draminstance|altsyncram_component|auto_generated|q_a\(1) & ((\processadorinstance|OPCODE\(1)) # (\processadorinstance|OPCODE\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processadorinstance|OPCODE\(1),
	datac => \processadorinstance|OPCODE\(0),
	datad => \processadorinstance|draminstance|altsyncram_component|auto_generated|q_a\(1),
	combout => \processadorinstance|Mux2~0_combout\);

-- Location: LCCOMB_X49_Y9_N24
\processadorinstance|data_reg[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|data_reg\(1) = (GLOBAL(\processadorinstance|data_reg[0]~0clkctrl_outclk\) & ((\processadorinstance|Mux2~0_combout\))) # (!GLOBAL(\processadorinstance|data_reg[0]~0clkctrl_outclk\) & (\processadorinstance|data_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|data_reg\(1),
	datac => \processadorinstance|Mux2~0_combout\,
	datad => \processadorinstance|data_reg[0]~0clkctrl_outclk\,
	combout => \processadorinstance|data_reg\(1));

-- Location: LCCOMB_X49_Y7_N30
\processadorinstance|regfileinstance|regfile[0][1]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile[0][1]~17_combout\ = (\KEY~combout\(0) & ((\processadorinstance|regfileinstance|regfile[0][1]~17_combout\))) # (!\KEY~combout\(0) & (\processadorinstance|regfileinstance|regfile[0][1]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processadorinstance|regfileinstance|regfile[0][1]~18_combout\,
	datac => \KEY~combout\(0),
	datad => \processadorinstance|regfileinstance|regfile[0][1]~17_combout\,
	combout => \processadorinstance|regfileinstance|regfile[0][1]~17_combout\);

-- Location: LCCOMB_X49_Y7_N12
\processadorinstance|regfileinstance|regfile[0][1]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile[0][1]~19_combout\ = \processadorinstance|data_reg\(1) $ (\processadorinstance|regfileinstance|regfile[0][1]~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \processadorinstance|data_reg\(1),
	datad => \processadorinstance|regfileinstance|regfile[0][1]~17_combout\,
	combout => \processadorinstance|regfileinstance|regfile[0][1]~19_combout\);

-- Location: LCFF_X49_Y7_N13
\processadorinstance|regfileinstance|regfile[0][1]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	datain => \processadorinstance|regfileinstance|regfile[0][1]~19_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \processadorinstance|regfileinstance|Decoder1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|regfileinstance|regfile[0][1]~_emulated_regout\);

-- Location: LCCOMB_X49_Y7_N22
\processadorinstance|regfileinstance|regfile[0][1]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile[0][1]~18_combout\ = (\KEY~combout\(0) & (\processadorinstance|regfileinstance|regfile[0][1]~17_combout\ $ (((\processadorinstance|regfileinstance|regfile[0][1]~_emulated_regout\))))) # (!\KEY~combout\(0) & 
-- (((\processadorinstance|regfileinstance|regfile[0][1]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|regfileinstance|regfile[0][1]~17_combout\,
	datab => \processadorinstance|regfileinstance|regfile[0][1]~18_combout\,
	datac => \KEY~combout\(0),
	datad => \processadorinstance|regfileinstance|regfile[0][1]~_emulated_regout\,
	combout => \processadorinstance|regfileinstance|regfile[0][1]~18_combout\);

-- Location: LCCOMB_X46_Y9_N22
\processadorinstance|regfileinstance|regfile~115\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile~115_combout\ = (\processadorinstance|regfileinstance|regfile[5][0]~6_combout\ & (((\processadorinstance|regfileinstance|regfile[0][1]~18_combout\) # 
-- (!\processadorinstance|regfileinstance|regfile[0][0]~2_combout\)) # (!\processadorinstance|regfileinstance|Decoder0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|regfileinstance|Decoder0~0_combout\,
	datab => \processadorinstance|regfileinstance|regfile[5][0]~6_combout\,
	datac => \processadorinstance|regfileinstance|regfile[0][0]~2_combout\,
	datad => \processadorinstance|regfileinstance|regfile[0][1]~18_combout\,
	combout => \processadorinstance|regfileinstance|regfile~115_combout\);

-- Location: LCCOMB_X46_Y9_N26
\processadorinstance|regfileinstance|regfile[5][0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile[5][0]~5_combout\ = (\KEY~combout\(0) & (\processadorinstance|regfileinstance|regfile[5][0]~5_combout\)) # (!\KEY~combout\(0) & ((\processadorinstance|regfileinstance|regfile~115_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(0),
	datab => \processadorinstance|regfileinstance|regfile[5][0]~5_combout\,
	datad => \processadorinstance|regfileinstance|regfile~115_combout\,
	combout => \processadorinstance|regfileinstance|regfile[5][0]~5_combout\);

-- Location: LCCOMB_X46_Y9_N18
\processadorinstance|regfileinstance|regfile[5][0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile[5][0]~7_combout\ = \processadorinstance|data_reg\(0) $ (\processadorinstance|regfileinstance|regfile[5][0]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processadorinstance|data_reg\(0),
	datad => \processadorinstance|regfileinstance|regfile[5][0]~5_combout\,
	combout => \processadorinstance|regfileinstance|regfile[5][0]~7_combout\);

-- Location: LCCOMB_X47_Y9_N18
\processadorinstance|regfileinstance|Decoder1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|Decoder1~4_combout\ = (\processadorinstance|addr_reg\(2) & (\processadorinstance|we_reg~combout\ & (\processadorinstance|addr_reg\(0) & !\processadorinstance|addr_reg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|addr_reg\(2),
	datab => \processadorinstance|we_reg~combout\,
	datac => \processadorinstance|addr_reg\(0),
	datad => \processadorinstance|addr_reg\(1),
	combout => \processadorinstance|regfileinstance|Decoder1~4_combout\);

-- Location: LCFF_X46_Y9_N19
\processadorinstance|regfileinstance|regfile[5][0]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	datain => \processadorinstance|regfileinstance|regfile[5][0]~7_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \processadorinstance|regfileinstance|Decoder1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|regfileinstance|regfile[5][0]~_emulated_regout\);

-- Location: LCCOMB_X46_Y9_N24
\processadorinstance|regfileinstance|regfile[5][0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile[5][0]~6_combout\ = (\KEY~combout\(0) & ((\processadorinstance|regfileinstance|regfile[5][0]~5_combout\ $ (\processadorinstance|regfileinstance|regfile[5][0]~_emulated_regout\)))) # (!\KEY~combout\(0) & 
-- (\processadorinstance|regfileinstance|regfile~115_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|regfileinstance|regfile~115_combout\,
	datab => \processadorinstance|regfileinstance|regfile[5][0]~5_combout\,
	datac => \KEY~combout\(0),
	datad => \processadorinstance|regfileinstance|regfile[5][0]~_emulated_regout\,
	combout => \processadorinstance|regfileinstance|regfile[5][0]~6_combout\);

-- Location: LCCOMB_X47_Y8_N0
\processadorinstance|regfileinstance|regfile[4][0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile[4][0]~feeder_combout\ = \processadorinstance|data_reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \processadorinstance|data_reg\(0),
	combout => \processadorinstance|regfileinstance|regfile[4][0]~feeder_combout\);

-- Location: LCCOMB_X47_Y8_N22
\processadorinstance|regfileinstance|Decoder1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|Decoder1~0_combout\ = (\processadorinstance|addr_reg\(2) & (!\processadorinstance|addr_reg\(0) & (!\processadorinstance|addr_reg\(1) & \processadorinstance|we_reg~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|addr_reg\(2),
	datab => \processadorinstance|addr_reg\(0),
	datac => \processadorinstance|addr_reg\(1),
	datad => \processadorinstance|we_reg~combout\,
	combout => \processadorinstance|regfileinstance|Decoder1~0_combout\);

-- Location: LCFF_X47_Y8_N1
\processadorinstance|regfileinstance|regfile[4][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	datain => \processadorinstance|regfileinstance|regfile[4][0]~feeder_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \processadorinstance|regfileinstance|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|regfileinstance|regfile[4][0]~regout\);

-- Location: LCCOMB_X49_Y7_N18
\processadorinstance|regfileinstance|regfile[0][3]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile[0][3]~49_combout\ = (\KEY~combout\(0) & ((\processadorinstance|regfileinstance|regfile[0][3]~49_combout\))) # (!\KEY~combout\(0) & (\processadorinstance|regfileinstance|regfile[0][3]~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|regfileinstance|regfile[0][3]~50_combout\,
	datab => \processadorinstance|regfileinstance|regfile[0][3]~49_combout\,
	datac => \KEY~combout\(0),
	combout => \processadorinstance|regfileinstance|regfile[0][3]~49_combout\);

-- Location: LCCOMB_X45_Y10_N10
\processadorinstance|Mux4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|Mux4~2_combout\ = (!\processadorinstance|OPCODE\(1) & (\processadorinstance|prominstance|addr_reg\(0) & (!\processadorinstance|prominstance|addr_reg\(2) & !\processadorinstance|OPCODE\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|OPCODE\(1),
	datab => \processadorinstance|prominstance|addr_reg\(0),
	datac => \processadorinstance|prominstance|addr_reg\(2),
	datad => \processadorinstance|OPCODE\(0),
	combout => \processadorinstance|Mux4~2_combout\);

-- Location: LCCOMB_X45_Y10_N22
\processadorinstance|Mux4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|Mux4~3_combout\ = (!\processadorinstance|prominstance|addr_reg\(3) & (!\processadorinstance|prominstance|addr_reg\(1) & (\processadorinstance|prominstance|prom~0_combout\ & \processadorinstance|Mux4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|prominstance|addr_reg\(3),
	datab => \processadorinstance|prominstance|addr_reg\(1),
	datac => \processadorinstance|prominstance|prom~0_combout\,
	datad => \processadorinstance|Mux4~2_combout\,
	combout => \processadorinstance|Mux4~3_combout\);

-- Location: LCCOMB_X45_Y10_N24
\processadorinstance|Mux4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|Mux4~4_combout\ = (\processadorinstance|Mux4~3_combout\) # ((\processadorinstance|draminstance|altsyncram_component|auto_generated|q_a\(3) & ((\processadorinstance|OPCODE\(1)) # (\processadorinstance|OPCODE\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|OPCODE\(1),
	datab => \processadorinstance|OPCODE\(0),
	datac => \processadorinstance|draminstance|altsyncram_component|auto_generated|q_a\(3),
	datad => \processadorinstance|Mux4~3_combout\,
	combout => \processadorinstance|Mux4~4_combout\);

-- Location: LCCOMB_X48_Y10_N16
\processadorinstance|data_reg[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|data_reg\(3) = (GLOBAL(\processadorinstance|data_reg[0]~0clkctrl_outclk\) & (\processadorinstance|Mux4~4_combout\)) # (!GLOBAL(\processadorinstance|data_reg[0]~0clkctrl_outclk\) & ((\processadorinstance|data_reg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processadorinstance|Mux4~4_combout\,
	datac => \processadorinstance|data_reg\(3),
	datad => \processadorinstance|data_reg[0]~0clkctrl_outclk\,
	combout => \processadorinstance|data_reg\(3));

-- Location: LCCOMB_X49_Y7_N16
\processadorinstance|regfileinstance|regfile[0][3]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile[0][3]~51_combout\ = \processadorinstance|data_reg\(3) $ (\processadorinstance|regfileinstance|regfile[0][3]~49_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processadorinstance|data_reg\(3),
	datad => \processadorinstance|regfileinstance|regfile[0][3]~49_combout\,
	combout => \processadorinstance|regfileinstance|regfile[0][3]~51_combout\);

-- Location: LCFF_X49_Y7_N17
\processadorinstance|regfileinstance|regfile[0][3]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	datain => \processadorinstance|regfileinstance|regfile[0][3]~51_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \processadorinstance|regfileinstance|Decoder1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|regfileinstance|regfile[0][3]~_emulated_regout\);

-- Location: LCCOMB_X49_Y7_N14
\processadorinstance|regfileinstance|regfile[0][3]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile[0][3]~50_combout\ = (\KEY~combout\(0) & ((\processadorinstance|regfileinstance|regfile[0][3]~49_combout\ $ (\processadorinstance|regfileinstance|regfile[0][3]~_emulated_regout\)))) # (!\KEY~combout\(0) & 
-- (\processadorinstance|regfileinstance|regfile[0][3]~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|regfileinstance|regfile[0][3]~50_combout\,
	datab => \processadorinstance|regfileinstance|regfile[0][3]~49_combout\,
	datac => \processadorinstance|regfileinstance|regfile[0][3]~_emulated_regout\,
	datad => \KEY~combout\(0),
	combout => \processadorinstance|regfileinstance|regfile[0][3]~50_combout\);

-- Location: LCCOMB_X49_Y7_N8
\processadorinstance|regfileinstance|regfile[0][4]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile[0][4]~65_combout\ = (\KEY~combout\(0) & ((\processadorinstance|regfileinstance|regfile[0][4]~65_combout\))) # (!\KEY~combout\(0) & (\processadorinstance|regfileinstance|regfile[0][4]~66_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|regfileinstance|regfile[0][4]~66_combout\,
	datac => \KEY~combout\(0),
	datad => \processadorinstance|regfileinstance|regfile[0][4]~65_combout\,
	combout => \processadorinstance|regfileinstance|regfile[0][4]~65_combout\);

-- Location: LCFF_X49_Y7_N25
\processadorinstance|regfileinstance|regfile[0][4]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	sdata => \processadorinstance|regfileinstance|regfile[0][4]~65_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \processadorinstance|regfileinstance|Decoder1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|regfileinstance|regfile[0][4]~_emulated_regout\);

-- Location: LCCOMB_X49_Y7_N24
\processadorinstance|regfileinstance|regfile[0][4]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile[0][4]~66_combout\ = (\KEY~combout\(0) & ((\processadorinstance|regfileinstance|regfile[0][4]~65_combout\ $ (\processadorinstance|regfileinstance|regfile[0][4]~_emulated_regout\)))) # (!\KEY~combout\(0) & 
-- (\processadorinstance|regfileinstance|regfile[0][4]~66_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|regfileinstance|regfile[0][4]~66_combout\,
	datab => \processadorinstance|regfileinstance|regfile[0][4]~65_combout\,
	datac => \processadorinstance|regfileinstance|regfile[0][4]~_emulated_regout\,
	datad => \KEY~combout\(0),
	combout => \processadorinstance|regfileinstance|regfile[0][4]~66_combout\);

-- Location: LCCOMB_X49_Y7_N4
\processadorinstance|regfileinstance|regfile[0][2]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile[0][2]~33_combout\ = (\KEY~combout\(0) & ((\processadorinstance|regfileinstance|regfile[0][2]~33_combout\))) # (!\KEY~combout\(0) & (\processadorinstance|regfileinstance|regfile[0][2]~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processadorinstance|regfileinstance|regfile[0][2]~34_combout\,
	datac => \KEY~combout\(0),
	datad => \processadorinstance|regfileinstance|regfile[0][2]~33_combout\,
	combout => \processadorinstance|regfileinstance|regfile[0][2]~33_combout\);

-- Location: LCCOMB_X46_Y10_N10
\processadorinstance|prominstance|prom~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|prominstance|prom~1_combout\ = (!\processadorinstance|prominstance|addr_reg\(3) & (!\processadorinstance|prominstance|addr_reg\(0) & \processadorinstance|prominstance|prom~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|prominstance|addr_reg\(3),
	datac => \processadorinstance|prominstance|addr_reg\(0),
	datad => \processadorinstance|prominstance|prom~0_combout\,
	combout => \processadorinstance|prominstance|prom~1_combout\);

-- Location: LCCOMB_X46_Y10_N14
\processadorinstance|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|Mux3~0_combout\ = (\processadorinstance|Mux0~0_combout\ & (\processadorinstance|draminstance|altsyncram_component|auto_generated|q_a\(2))) # (!\processadorinstance|Mux0~0_combout\ & (((!\processadorinstance|prominstance|addr_reg\(2) & 
-- \processadorinstance|prominstance|prom~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|Mux0~0_combout\,
	datab => \processadorinstance|draminstance|altsyncram_component|auto_generated|q_a\(2),
	datac => \processadorinstance|prominstance|addr_reg\(2),
	datad => \processadorinstance|prominstance|prom~1_combout\,
	combout => \processadorinstance|Mux3~0_combout\);

-- Location: LCCOMB_X49_Y9_N16
\processadorinstance|data_reg[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|data_reg\(2) = (GLOBAL(\processadorinstance|data_reg[0]~0clkctrl_outclk\) & (\processadorinstance|Mux3~0_combout\)) # (!GLOBAL(\processadorinstance|data_reg[0]~0clkctrl_outclk\) & ((\processadorinstance|data_reg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processadorinstance|Mux3~0_combout\,
	datac => \processadorinstance|data_reg\(2),
	datad => \processadorinstance|data_reg[0]~0clkctrl_outclk\,
	combout => \processadorinstance|data_reg\(2));

-- Location: LCCOMB_X49_Y7_N0
\processadorinstance|regfileinstance|regfile[0][2]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile[0][2]~35_combout\ = \processadorinstance|regfileinstance|regfile[0][2]~33_combout\ $ (\processadorinstance|data_reg\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \processadorinstance|regfileinstance|regfile[0][2]~33_combout\,
	datad => \processadorinstance|data_reg\(2),
	combout => \processadorinstance|regfileinstance|regfile[0][2]~35_combout\);

-- Location: LCFF_X49_Y7_N1
\processadorinstance|regfileinstance|regfile[0][2]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	datain => \processadorinstance|regfileinstance|regfile[0][2]~35_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \processadorinstance|regfileinstance|Decoder1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|regfileinstance|regfile[0][2]~_emulated_regout\);

-- Location: LCCOMB_X49_Y7_N26
\processadorinstance|regfileinstance|regfile[0][2]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile[0][2]~34_combout\ = (\KEY~combout\(0) & ((\processadorinstance|regfileinstance|regfile[0][2]~33_combout\ $ (\processadorinstance|regfileinstance|regfile[0][2]~_emulated_regout\)))) # (!\KEY~combout\(0) & 
-- (\processadorinstance|regfileinstance|regfile[0][2]~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|regfileinstance|regfile[0][2]~34_combout\,
	datab => \processadorinstance|regfileinstance|regfile[0][2]~33_combout\,
	datac => \KEY~combout\(0),
	datad => \processadorinstance|regfileinstance|regfile[0][2]~_emulated_regout\,
	combout => \processadorinstance|regfileinstance|regfile[0][2]~34_combout\);

-- Location: LCCOMB_X49_Y7_N6
\processadorinstance|regfileinstance|Decoder0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|Decoder0~0_combout\ = (!\processadorinstance|regfileinstance|regfile[0][3]~50_combout\ & (!\processadorinstance|regfileinstance|regfile[0][4]~66_combout\ & 
-- \processadorinstance|regfileinstance|regfile[0][2]~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processadorinstance|regfileinstance|regfile[0][3]~50_combout\,
	datac => \processadorinstance|regfileinstance|regfile[0][4]~66_combout\,
	datad => \processadorinstance|regfileinstance|regfile[0][2]~34_combout\,
	combout => \processadorinstance|regfileinstance|Decoder0~0_combout\);

-- Location: LCCOMB_X47_Y10_N26
\processadorinstance|regfileinstance|regfile~116\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile~116_combout\ = (\processadorinstance|regfileinstance|regfile[6][0]~10_combout\ & ((\processadorinstance|regfileinstance|regfile[0][0]~2_combout\) # ((!\processadorinstance|regfileinstance|Decoder0~0_combout\) # 
-- (!\processadorinstance|regfileinstance|regfile[0][1]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|regfileinstance|regfile[6][0]~10_combout\,
	datab => \processadorinstance|regfileinstance|regfile[0][0]~2_combout\,
	datac => \processadorinstance|regfileinstance|regfile[0][1]~18_combout\,
	datad => \processadorinstance|regfileinstance|Decoder0~0_combout\,
	combout => \processadorinstance|regfileinstance|regfile~116_combout\);

-- Location: LCCOMB_X47_Y10_N14
\processadorinstance|regfileinstance|regfile[6][0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile[6][0]~9_combout\ = (\KEY~combout\(0) & (\processadorinstance|regfileinstance|regfile[6][0]~9_combout\)) # (!\KEY~combout\(0) & ((\processadorinstance|regfileinstance|regfile~116_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(0),
	datac => \processadorinstance|regfileinstance|regfile[6][0]~9_combout\,
	datad => \processadorinstance|regfileinstance|regfile~116_combout\,
	combout => \processadorinstance|regfileinstance|regfile[6][0]~9_combout\);

-- Location: LCCOMB_X47_Y10_N30
\processadorinstance|regfileinstance|regfile[6][0]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile[6][0]~11_combout\ = \processadorinstance|regfileinstance|regfile[6][0]~9_combout\ $ (\processadorinstance|data_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \processadorinstance|regfileinstance|regfile[6][0]~9_combout\,
	datad => \processadorinstance|data_reg\(0),
	combout => \processadorinstance|regfileinstance|regfile[6][0]~11_combout\);

-- Location: LCCOMB_X48_Y9_N22
\processadorinstance|regfileinstance|Decoder1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|Decoder1~5_combout\ = (!\processadorinstance|addr_reg\(0) & (\processadorinstance|we_reg~combout\ & (\processadorinstance|addr_reg\(1) & \processadorinstance|addr_reg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|addr_reg\(0),
	datab => \processadorinstance|we_reg~combout\,
	datac => \processadorinstance|addr_reg\(1),
	datad => \processadorinstance|addr_reg\(2),
	combout => \processadorinstance|regfileinstance|Decoder1~5_combout\);

-- Location: LCFF_X47_Y10_N31
\processadorinstance|regfileinstance|regfile[6][0]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	datain => \processadorinstance|regfileinstance|regfile[6][0]~11_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \processadorinstance|regfileinstance|Decoder1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|regfileinstance|regfile[6][0]~_emulated_regout\);

-- Location: LCCOMB_X47_Y10_N16
\processadorinstance|regfileinstance|regfile[6][0]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile[6][0]~10_combout\ = (\KEY~combout\(0) & ((\processadorinstance|regfileinstance|regfile[6][0]~9_combout\ $ (\processadorinstance|regfileinstance|regfile[6][0]~_emulated_regout\)))) # (!\KEY~combout\(0) & 
-- (\processadorinstance|regfileinstance|regfile~116_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|regfileinstance|regfile~116_combout\,
	datab => \processadorinstance|regfileinstance|regfile[6][0]~9_combout\,
	datac => \KEY~combout\(0),
	datad => \processadorinstance|regfileinstance|regfile[6][0]~_emulated_regout\,
	combout => \processadorinstance|regfileinstance|regfile[6][0]~10_combout\);

-- Location: LCCOMB_X46_Y9_N28
\processadorinstance|regfileinstance|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|Mux7~0_combout\ = (\processadorinstance|addr_reg\(1) & ((\processadorinstance|addr_reg\(0)) # ((\processadorinstance|regfileinstance|regfile[6][0]~10_combout\)))) # (!\processadorinstance|addr_reg\(1) & 
-- (!\processadorinstance|addr_reg\(0) & (\processadorinstance|regfileinstance|regfile[4][0]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|addr_reg\(1),
	datab => \processadorinstance|addr_reg\(0),
	datac => \processadorinstance|regfileinstance|regfile[4][0]~regout\,
	datad => \processadorinstance|regfileinstance|regfile[6][0]~10_combout\,
	combout => \processadorinstance|regfileinstance|Mux7~0_combout\);

-- Location: LCCOMB_X46_Y9_N30
\processadorinstance|regfileinstance|Mux7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|Mux7~1_combout\ = (\processadorinstance|addr_reg\(0) & ((\processadorinstance|regfileinstance|Mux7~0_combout\ & (\processadorinstance|regfileinstance|regfile[7][0]~14_combout\)) # 
-- (!\processadorinstance|regfileinstance|Mux7~0_combout\ & ((\processadorinstance|regfileinstance|regfile[5][0]~6_combout\))))) # (!\processadorinstance|addr_reg\(0) & (((\processadorinstance|regfileinstance|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|regfileinstance|regfile[7][0]~14_combout\,
	datab => \processadorinstance|regfileinstance|regfile[5][0]~6_combout\,
	datac => \processadorinstance|addr_reg\(0),
	datad => \processadorinstance|regfileinstance|Mux7~0_combout\,
	combout => \processadorinstance|regfileinstance|Mux7~1_combout\);

-- Location: LCCOMB_X46_Y9_N12
\processadorinstance|LEDG~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|LEDG~1_combout\ = (\processadorinstance|LEDG~0_combout\ & (((\processadorinstance|regfileinstance|Mux7~1_combout\)) # (!\processadorinstance|Decoder0~0_combout\))) # (!\processadorinstance|LEDG~0_combout\ & 
-- (\processadorinstance|Decoder0~0_combout\ & (\processadorinstance|regfileinstance|Mux7~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|LEDG~0_combout\,
	datab => \processadorinstance|Decoder0~0_combout\,
	datac => \processadorinstance|regfileinstance|Mux7~3_combout\,
	datad => \processadorinstance|regfileinstance|Mux7~1_combout\,
	combout => \processadorinstance|LEDG~1_combout\);

-- Location: LCCOMB_X46_Y9_N16
\processadorinstance|LEDG[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|LEDG\(0) = (\KEY~combout\(0) & ((\processadorinstance|LEDG~1_combout\))) # (!\KEY~combout\(0) & (\processadorinstance|LEDG\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(0),
	datac => \processadorinstance|LEDG\(0),
	datad => \processadorinstance|LEDG~1_combout\,
	combout => \processadorinstance|LEDG\(0));

-- Location: LCFF_X46_Y10_N23
\processadorinstance|regfileinstance|regfile[2][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	sdata => \processadorinstance|data_reg\(1),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \processadorinstance|regfileinstance|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|regfileinstance|regfile[2][1]~regout\);

-- Location: LCCOMB_X47_Y9_N16
\processadorinstance|regfileinstance|Decoder1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|Decoder1~3_combout\ = (!\processadorinstance|addr_reg\(2) & (\processadorinstance|we_reg~combout\ & (\processadorinstance|addr_reg\(0) & \processadorinstance|addr_reg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|addr_reg\(2),
	datab => \processadorinstance|we_reg~combout\,
	datac => \processadorinstance|addr_reg\(0),
	datad => \processadorinstance|addr_reg\(1),
	combout => \processadorinstance|regfileinstance|Decoder1~3_combout\);

-- Location: LCFF_X48_Y10_N13
\processadorinstance|regfileinstance|regfile[3][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	sdata => \processadorinstance|data_reg\(1),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \processadorinstance|regfileinstance|Decoder1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|regfileinstance|regfile[3][1]~regout\);

-- Location: LCFF_X47_Y9_N23
\processadorinstance|regfileinstance|regfile[1][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	sdata => \processadorinstance|data_reg\(1),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \processadorinstance|regfileinstance|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|regfileinstance|regfile[1][1]~regout\);

-- Location: LCCOMB_X47_Y9_N22
\processadorinstance|regfileinstance|Mux6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|Mux6~2_combout\ = (\processadorinstance|addr_reg\(0) & (((\processadorinstance|regfileinstance|regfile[1][1]~regout\) # (\processadorinstance|addr_reg\(1))))) # (!\processadorinstance|addr_reg\(0) & 
-- (\processadorinstance|regfileinstance|regfile[0][1]~18_combout\ & ((!\processadorinstance|addr_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|regfileinstance|regfile[0][1]~18_combout\,
	datab => \processadorinstance|addr_reg\(0),
	datac => \processadorinstance|regfileinstance|regfile[1][1]~regout\,
	datad => \processadorinstance|addr_reg\(1),
	combout => \processadorinstance|regfileinstance|Mux6~2_combout\);

-- Location: LCCOMB_X47_Y10_N4
\processadorinstance|regfileinstance|Mux6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|Mux6~3_combout\ = (\processadorinstance|addr_reg\(1) & ((\processadorinstance|regfileinstance|Mux6~2_combout\ & ((\processadorinstance|regfileinstance|regfile[3][1]~regout\))) # 
-- (!\processadorinstance|regfileinstance|Mux6~2_combout\ & (\processadorinstance|regfileinstance|regfile[2][1]~regout\)))) # (!\processadorinstance|addr_reg\(1) & (((\processadorinstance|regfileinstance|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|addr_reg\(1),
	datab => \processadorinstance|regfileinstance|regfile[2][1]~regout\,
	datac => \processadorinstance|regfileinstance|regfile[3][1]~regout\,
	datad => \processadorinstance|regfileinstance|Mux6~2_combout\,
	combout => \processadorinstance|regfileinstance|Mux6~3_combout\);

-- Location: LCCOMB_X49_Y9_N2
\processadorinstance|regfileinstance|regfile~120\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile~120_combout\ = (\processadorinstance|regfileinstance|regfile[7][1]~30_combout\ & (((!\processadorinstance|regfileinstance|Decoder0~0_combout\) # 
-- (!\processadorinstance|regfileinstance|regfile[0][1]~18_combout\)) # (!\processadorinstance|regfileinstance|regfile[0][0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|regfileinstance|regfile[7][1]~30_combout\,
	datab => \processadorinstance|regfileinstance|regfile[0][0]~2_combout\,
	datac => \processadorinstance|regfileinstance|regfile[0][1]~18_combout\,
	datad => \processadorinstance|regfileinstance|Decoder0~0_combout\,
	combout => \processadorinstance|regfileinstance|regfile~120_combout\);

-- Location: LCCOMB_X49_Y9_N18
\processadorinstance|regfileinstance|regfile[7][1]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile[7][1]~29_combout\ = (\KEY~combout\(0) & (\processadorinstance|regfileinstance|regfile[7][1]~29_combout\)) # (!\KEY~combout\(0) & ((\processadorinstance|regfileinstance|regfile~120_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY~combout\(0),
	datac => \processadorinstance|regfileinstance|regfile[7][1]~29_combout\,
	datad => \processadorinstance|regfileinstance|regfile~120_combout\,
	combout => \processadorinstance|regfileinstance|regfile[7][1]~29_combout\);

-- Location: LCCOMB_X49_Y9_N0
\processadorinstance|regfileinstance|regfile[7][1]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile[7][1]~31_combout\ = \processadorinstance|data_reg\(1) $ (\processadorinstance|regfileinstance|regfile[7][1]~29_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \processadorinstance|data_reg\(1),
	datad => \processadorinstance|regfileinstance|regfile[7][1]~29_combout\,
	combout => \processadorinstance|regfileinstance|regfile[7][1]~31_combout\);

-- Location: LCCOMB_X48_Y9_N16
\processadorinstance|regfileinstance|Decoder1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|Decoder1~6_combout\ = (\processadorinstance|addr_reg\(1) & (\processadorinstance|we_reg~combout\ & (\processadorinstance|addr_reg\(0) & \processadorinstance|addr_reg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|addr_reg\(1),
	datab => \processadorinstance|we_reg~combout\,
	datac => \processadorinstance|addr_reg\(0),
	datad => \processadorinstance|addr_reg\(2),
	combout => \processadorinstance|regfileinstance|Decoder1~6_combout\);

-- Location: LCFF_X49_Y9_N1
\processadorinstance|regfileinstance|regfile[7][1]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	datain => \processadorinstance|regfileinstance|regfile[7][1]~31_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \processadorinstance|regfileinstance|Decoder1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|regfileinstance|regfile[7][1]~_emulated_regout\);

-- Location: LCCOMB_X49_Y10_N10
\processadorinstance|regfileinstance|regfile[7][1]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile[7][1]~30_combout\ = (\KEY~combout\(0) & ((\processadorinstance|regfileinstance|regfile[7][1]~29_combout\ $ (\processadorinstance|regfileinstance|regfile[7][1]~_emulated_regout\)))) # (!\KEY~combout\(0) & 
-- (\processadorinstance|regfileinstance|regfile~120_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|regfileinstance|regfile~120_combout\,
	datab => \KEY~combout\(0),
	datac => \processadorinstance|regfileinstance|regfile[7][1]~29_combout\,
	datad => \processadorinstance|regfileinstance|regfile[7][1]~_emulated_regout\,
	combout => \processadorinstance|regfileinstance|regfile[7][1]~30_combout\);

-- Location: LCCOMB_X48_Y10_N26
\processadorinstance|regfileinstance|regfile~119\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile~119_combout\ = (\processadorinstance|regfileinstance|regfile[6][1]~26_combout\ & (((\processadorinstance|regfileinstance|regfile[0][0]~2_combout\) # (!\processadorinstance|regfileinstance|Decoder0~0_combout\)) 
-- # (!\processadorinstance|regfileinstance|regfile[0][1]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|regfileinstance|regfile[6][1]~26_combout\,
	datab => \processadorinstance|regfileinstance|regfile[0][1]~18_combout\,
	datac => \processadorinstance|regfileinstance|regfile[0][0]~2_combout\,
	datad => \processadorinstance|regfileinstance|Decoder0~0_combout\,
	combout => \processadorinstance|regfileinstance|regfile~119_combout\);

-- Location: LCCOMB_X48_Y10_N14
\processadorinstance|regfileinstance|regfile[6][1]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile[6][1]~25_combout\ = (\KEY~combout\(0) & (\processadorinstance|regfileinstance|regfile[6][1]~25_combout\)) # (!\KEY~combout\(0) & ((\processadorinstance|regfileinstance|regfile~119_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY~combout\(0),
	datac => \processadorinstance|regfileinstance|regfile[6][1]~25_combout\,
	datad => \processadorinstance|regfileinstance|regfile~119_combout\,
	combout => \processadorinstance|regfileinstance|regfile[6][1]~25_combout\);

-- Location: LCCOMB_X49_Y10_N24
\processadorinstance|regfileinstance|regfile[6][1]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile[6][1]~27_combout\ = \processadorinstance|data_reg\(1) $ (\processadorinstance|regfileinstance|regfile[6][1]~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processadorinstance|data_reg\(1),
	datad => \processadorinstance|regfileinstance|regfile[6][1]~25_combout\,
	combout => \processadorinstance|regfileinstance|regfile[6][1]~27_combout\);

-- Location: LCFF_X49_Y10_N25
\processadorinstance|regfileinstance|regfile[6][1]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	datain => \processadorinstance|regfileinstance|regfile[6][1]~27_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \processadorinstance|regfileinstance|Decoder1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|regfileinstance|regfile[6][1]~_emulated_regout\);

-- Location: LCCOMB_X48_Y10_N24
\processadorinstance|regfileinstance|regfile[6][1]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile[6][1]~26_combout\ = (\KEY~combout\(0) & ((\processadorinstance|regfileinstance|regfile[6][1]~25_combout\ $ (\processadorinstance|regfileinstance|regfile[6][1]~_emulated_regout\)))) # (!\KEY~combout\(0) & 
-- (\processadorinstance|regfileinstance|regfile~119_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|regfileinstance|regfile~119_combout\,
	datab => \processadorinstance|regfileinstance|regfile[6][1]~25_combout\,
	datac => \KEY~combout\(0),
	datad => \processadorinstance|regfileinstance|regfile[6][1]~_emulated_regout\,
	combout => \processadorinstance|regfileinstance|regfile[6][1]~26_combout\);

-- Location: LCFF_X47_Y8_N29
\processadorinstance|regfileinstance|regfile[4][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	sdata => \processadorinstance|data_reg\(1),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \processadorinstance|regfileinstance|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|regfileinstance|regfile[4][1]~regout\);

-- Location: LCCOMB_X48_Y10_N8
\processadorinstance|regfileinstance|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|Mux6~0_combout\ = (\processadorinstance|addr_reg\(1) & ((\processadorinstance|addr_reg\(0)) # ((\processadorinstance|regfileinstance|regfile[6][1]~26_combout\)))) # (!\processadorinstance|addr_reg\(1) & 
-- (!\processadorinstance|addr_reg\(0) & ((\processadorinstance|regfileinstance|regfile[4][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|addr_reg\(1),
	datab => \processadorinstance|addr_reg\(0),
	datac => \processadorinstance|regfileinstance|regfile[6][1]~26_combout\,
	datad => \processadorinstance|regfileinstance|regfile[4][1]~regout\,
	combout => \processadorinstance|regfileinstance|Mux6~0_combout\);

-- Location: LCCOMB_X48_Y8_N12
\processadorinstance|regfileinstance|regfile~118\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile~118_combout\ = (\processadorinstance|regfileinstance|regfile[5][1]~22_combout\ & (((\processadorinstance|regfileinstance|regfile[0][1]~18_combout\) # (!\processadorinstance|regfileinstance|Decoder0~0_combout\)) 
-- # (!\processadorinstance|regfileinstance|regfile[0][0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|regfileinstance|regfile[0][0]~2_combout\,
	datab => \processadorinstance|regfileinstance|regfile[5][1]~22_combout\,
	datac => \processadorinstance|regfileinstance|regfile[0][1]~18_combout\,
	datad => \processadorinstance|regfileinstance|Decoder0~0_combout\,
	combout => \processadorinstance|regfileinstance|regfile~118_combout\);

-- Location: LCCOMB_X48_Y8_N24
\processadorinstance|regfileinstance|regfile[5][1]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile[5][1]~21_combout\ = (\KEY~combout\(0) & (\processadorinstance|regfileinstance|regfile[5][1]~21_combout\)) # (!\KEY~combout\(0) & ((\processadorinstance|regfileinstance|regfile~118_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|regfileinstance|regfile[5][1]~21_combout\,
	datac => \KEY~combout\(0),
	datad => \processadorinstance|regfileinstance|regfile~118_combout\,
	combout => \processadorinstance|regfileinstance|regfile[5][1]~21_combout\);

-- Location: LCCOMB_X48_Y8_N20
\processadorinstance|regfileinstance|regfile[5][1]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile[5][1]~23_combout\ = \processadorinstance|data_reg\(1) $ (\processadorinstance|regfileinstance|regfile[5][1]~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processadorinstance|data_reg\(1),
	datac => \processadorinstance|regfileinstance|regfile[5][1]~21_combout\,
	combout => \processadorinstance|regfileinstance|regfile[5][1]~23_combout\);

-- Location: LCFF_X48_Y8_N21
\processadorinstance|regfileinstance|regfile[5][1]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	datain => \processadorinstance|regfileinstance|regfile[5][1]~23_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \processadorinstance|regfileinstance|Decoder1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|regfileinstance|regfile[5][1]~_emulated_regout\);

-- Location: LCCOMB_X48_Y8_N2
\processadorinstance|regfileinstance|regfile[5][1]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile[5][1]~22_combout\ = (\KEY~combout\(0) & (\processadorinstance|regfileinstance|regfile[5][1]~21_combout\ $ (((\processadorinstance|regfileinstance|regfile[5][1]~_emulated_regout\))))) # (!\KEY~combout\(0) & 
-- (((\processadorinstance|regfileinstance|regfile~118_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|regfileinstance|regfile[5][1]~21_combout\,
	datab => \processadorinstance|regfileinstance|regfile~118_combout\,
	datac => \processadorinstance|regfileinstance|regfile[5][1]~_emulated_regout\,
	datad => \KEY~combout\(0),
	combout => \processadorinstance|regfileinstance|regfile[5][1]~22_combout\);

-- Location: LCCOMB_X48_Y10_N22
\processadorinstance|regfileinstance|Mux6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|Mux6~1_combout\ = (\processadorinstance|addr_reg\(0) & ((\processadorinstance|regfileinstance|Mux6~0_combout\ & (\processadorinstance|regfileinstance|regfile[7][1]~30_combout\)) # 
-- (!\processadorinstance|regfileinstance|Mux6~0_combout\ & ((\processadorinstance|regfileinstance|regfile[5][1]~22_combout\))))) # (!\processadorinstance|addr_reg\(0) & (((\processadorinstance|regfileinstance|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|addr_reg\(0),
	datab => \processadorinstance|regfileinstance|regfile[7][1]~30_combout\,
	datac => \processadorinstance|regfileinstance|Mux6~0_combout\,
	datad => \processadorinstance|regfileinstance|regfile[5][1]~22_combout\,
	combout => \processadorinstance|regfileinstance|Mux6~1_combout\);

-- Location: LCCOMB_X48_Y10_N28
\processadorinstance|LEDG~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|LEDG~3_combout\ = (\processadorinstance|LEDG~2_combout\ & (((\processadorinstance|regfileinstance|Mux6~1_combout\)) # (!\processadorinstance|Decoder0~0_combout\))) # (!\processadorinstance|LEDG~2_combout\ & 
-- (\processadorinstance|Decoder0~0_combout\ & (\processadorinstance|regfileinstance|Mux6~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|LEDG~2_combout\,
	datab => \processadorinstance|Decoder0~0_combout\,
	datac => \processadorinstance|regfileinstance|Mux6~3_combout\,
	datad => \processadorinstance|regfileinstance|Mux6~1_combout\,
	combout => \processadorinstance|LEDG~3_combout\);

-- Location: LCCOMB_X48_Y10_N20
\processadorinstance|LEDG[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|LEDG\(1) = (\KEY~combout\(0) & ((\processadorinstance|LEDG~3_combout\))) # (!\KEY~combout\(0) & (\processadorinstance|LEDG\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY~combout\(0),
	datac => \processadorinstance|LEDG\(1),
	datad => \processadorinstance|LEDG~3_combout\,
	combout => \processadorinstance|LEDG\(1));

-- Location: LCCOMB_X49_Y8_N24
\processadorinstance|LEDG~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|LEDG~4_combout\ = (\processadorinstance|Decoder0~0_combout\ & ((\processadorinstance|addr_reg\(2)))) # (!\processadorinstance|Decoder0~0_combout\ & (\processadorinstance|regfileinstance|regfile[0][2]~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processadorinstance|regfileinstance|regfile[0][2]~34_combout\,
	datac => \processadorinstance|Decoder0~0_combout\,
	datad => \processadorinstance|addr_reg\(2),
	combout => \processadorinstance|LEDG~4_combout\);

-- Location: LCFF_X46_Y8_N21
\processadorinstance|regfileinstance|regfile[2][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	sdata => \processadorinstance|data_reg\(2),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \processadorinstance|regfileinstance|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|regfileinstance|regfile[2][2]~regout\);

-- Location: LCFF_X47_Y9_N21
\processadorinstance|regfileinstance|regfile[1][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	sdata => \processadorinstance|data_reg\(2),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \processadorinstance|regfileinstance|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|regfileinstance|regfile[1][2]~regout\);

-- Location: LCCOMB_X47_Y9_N20
\processadorinstance|regfileinstance|Mux5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|Mux5~2_combout\ = (\processadorinstance|addr_reg\(0) & (((\processadorinstance|regfileinstance|regfile[1][2]~regout\) # (\processadorinstance|addr_reg\(1))))) # (!\processadorinstance|addr_reg\(0) & 
-- (\processadorinstance|regfileinstance|regfile[0][2]~34_combout\ & ((!\processadorinstance|addr_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|regfileinstance|regfile[0][2]~34_combout\,
	datab => \processadorinstance|addr_reg\(0),
	datac => \processadorinstance|regfileinstance|regfile[1][2]~regout\,
	datad => \processadorinstance|addr_reg\(1),
	combout => \processadorinstance|regfileinstance|Mux5~2_combout\);

-- Location: LCCOMB_X46_Y8_N20
\processadorinstance|regfileinstance|Mux5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|Mux5~3_combout\ = (\processadorinstance|addr_reg\(1) & ((\processadorinstance|regfileinstance|Mux5~2_combout\ & (\processadorinstance|regfileinstance|regfile[3][2]~regout\)) # 
-- (!\processadorinstance|regfileinstance|Mux5~2_combout\ & ((\processadorinstance|regfileinstance|regfile[2][2]~regout\))))) # (!\processadorinstance|addr_reg\(1) & (((\processadorinstance|regfileinstance|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|regfileinstance|regfile[3][2]~regout\,
	datab => \processadorinstance|addr_reg\(1),
	datac => \processadorinstance|regfileinstance|regfile[2][2]~regout\,
	datad => \processadorinstance|regfileinstance|Mux5~2_combout\,
	combout => \processadorinstance|regfileinstance|Mux5~3_combout\);

-- Location: LCCOMB_X49_Y9_N12
\processadorinstance|regfileinstance|regfile~123\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile~123_combout\ = (\processadorinstance|regfileinstance|regfile[7][2]~46_combout\ & (((!\processadorinstance|regfileinstance|Decoder0~0_combout\) # (!\processadorinstance|regfileinstance|regfile[0][0]~2_combout\)) 
-- # (!\processadorinstance|regfileinstance|regfile[0][1]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|regfileinstance|regfile[7][2]~46_combout\,
	datab => \processadorinstance|regfileinstance|regfile[0][1]~18_combout\,
	datac => \processadorinstance|regfileinstance|regfile[0][0]~2_combout\,
	datad => \processadorinstance|regfileinstance|Decoder0~0_combout\,
	combout => \processadorinstance|regfileinstance|regfile~123_combout\);

-- Location: LCCOMB_X49_Y9_N22
\processadorinstance|regfileinstance|regfile[7][2]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile[7][2]~45_combout\ = (\KEY~combout\(0) & (\processadorinstance|regfileinstance|regfile[7][2]~45_combout\)) # (!\KEY~combout\(0) & ((\processadorinstance|regfileinstance|regfile~123_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processadorinstance|regfileinstance|regfile[7][2]~45_combout\,
	datac => \KEY~combout\(0),
	datad => \processadorinstance|regfileinstance|regfile~123_combout\,
	combout => \processadorinstance|regfileinstance|regfile[7][2]~45_combout\);

-- Location: LCCOMB_X49_Y9_N14
\processadorinstance|regfileinstance|regfile[7][2]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile[7][2]~47_combout\ = \processadorinstance|data_reg\(2) $ (\processadorinstance|regfileinstance|regfile[7][2]~45_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \processadorinstance|data_reg\(2),
	datad => \processadorinstance|regfileinstance|regfile[7][2]~45_combout\,
	combout => \processadorinstance|regfileinstance|regfile[7][2]~47_combout\);

-- Location: LCFF_X49_Y9_N15
\processadorinstance|regfileinstance|regfile[7][2]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	datain => \processadorinstance|regfileinstance|regfile[7][2]~47_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \processadorinstance|regfileinstance|Decoder1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|regfileinstance|regfile[7][2]~_emulated_regout\);

-- Location: LCCOMB_X49_Y9_N4
\processadorinstance|regfileinstance|regfile[7][2]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile[7][2]~46_combout\ = (\KEY~combout\(0) & ((\processadorinstance|regfileinstance|regfile[7][2]~45_combout\ $ (\processadorinstance|regfileinstance|regfile[7][2]~_emulated_regout\)))) # (!\KEY~combout\(0) & 
-- (\processadorinstance|regfileinstance|regfile~123_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|regfileinstance|regfile~123_combout\,
	datab => \processadorinstance|regfileinstance|regfile[7][2]~45_combout\,
	datac => \processadorinstance|regfileinstance|regfile[7][2]~_emulated_regout\,
	datad => \KEY~combout\(0),
	combout => \processadorinstance|regfileinstance|regfile[7][2]~46_combout\);

-- Location: LCCOMB_X49_Y8_N28
\processadorinstance|regfileinstance|regfile~122\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile~122_combout\ = (\processadorinstance|regfileinstance|regfile[6][2]~42_combout\ & ((\processadorinstance|regfileinstance|regfile[0][0]~2_combout\) # ((!\processadorinstance|regfileinstance|Decoder0~0_combout\) # 
-- (!\processadorinstance|regfileinstance|regfile[0][1]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|regfileinstance|regfile[0][0]~2_combout\,
	datab => \processadorinstance|regfileinstance|regfile[6][2]~42_combout\,
	datac => \processadorinstance|regfileinstance|regfile[0][1]~18_combout\,
	datad => \processadorinstance|regfileinstance|Decoder0~0_combout\,
	combout => \processadorinstance|regfileinstance|regfile~122_combout\);

-- Location: LCCOMB_X49_Y8_N0
\processadorinstance|regfileinstance|regfile[6][2]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile[6][2]~41_combout\ = (\KEY~combout\(0) & (\processadorinstance|regfileinstance|regfile[6][2]~41_combout\)) # (!\KEY~combout\(0) & ((\processadorinstance|regfileinstance|regfile~122_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(0),
	datab => \processadorinstance|regfileinstance|regfile[6][2]~41_combout\,
	datad => \processadorinstance|regfileinstance|regfile~122_combout\,
	combout => \processadorinstance|regfileinstance|regfile[6][2]~41_combout\);

-- Location: LCCOMB_X49_Y8_N12
\processadorinstance|regfileinstance|regfile[6][2]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile[6][2]~43_combout\ = \processadorinstance|data_reg\(2) $ (\processadorinstance|regfileinstance|regfile[6][2]~41_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|data_reg\(2),
	datad => \processadorinstance|regfileinstance|regfile[6][2]~41_combout\,
	combout => \processadorinstance|regfileinstance|regfile[6][2]~43_combout\);

-- Location: LCFF_X49_Y8_N13
\processadorinstance|regfileinstance|regfile[6][2]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	datain => \processadorinstance|regfileinstance|regfile[6][2]~43_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \processadorinstance|regfileinstance|Decoder1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|regfileinstance|regfile[6][2]~_emulated_regout\);

-- Location: LCCOMB_X49_Y8_N14
\processadorinstance|regfileinstance|regfile[6][2]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile[6][2]~42_combout\ = (\KEY~combout\(0) & (\processadorinstance|regfileinstance|regfile[6][2]~41_combout\ $ (((\processadorinstance|regfileinstance|regfile[6][2]~_emulated_regout\))))) # (!\KEY~combout\(0) & 
-- (((\processadorinstance|regfileinstance|regfile~122_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(0),
	datab => \processadorinstance|regfileinstance|regfile[6][2]~41_combout\,
	datac => \processadorinstance|regfileinstance|regfile~122_combout\,
	datad => \processadorinstance|regfileinstance|regfile[6][2]~_emulated_regout\,
	combout => \processadorinstance|regfileinstance|regfile[6][2]~42_combout\);

-- Location: LCFF_X47_Y8_N27
\processadorinstance|regfileinstance|regfile[4][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	sdata => \processadorinstance|data_reg\(2),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \processadorinstance|regfileinstance|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|regfileinstance|regfile[4][2]~regout\);

-- Location: LCCOMB_X49_Y8_N20
\processadorinstance|regfileinstance|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|Mux5~0_combout\ = (\processadorinstance|addr_reg\(1) & ((\processadorinstance|addr_reg\(0)) # ((\processadorinstance|regfileinstance|regfile[6][2]~42_combout\)))) # (!\processadorinstance|addr_reg\(1) & 
-- (!\processadorinstance|addr_reg\(0) & ((\processadorinstance|regfileinstance|regfile[4][2]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|addr_reg\(1),
	datab => \processadorinstance|addr_reg\(0),
	datac => \processadorinstance|regfileinstance|regfile[6][2]~42_combout\,
	datad => \processadorinstance|regfileinstance|regfile[4][2]~regout\,
	combout => \processadorinstance|regfileinstance|Mux5~0_combout\);

-- Location: LCCOMB_X49_Y8_N18
\processadorinstance|regfileinstance|Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|Mux5~1_combout\ = (\processadorinstance|regfileinstance|Mux5~0_combout\ & (((\processadorinstance|regfileinstance|regfile[7][2]~46_combout\) # (!\processadorinstance|addr_reg\(0))))) # 
-- (!\processadorinstance|regfileinstance|Mux5~0_combout\ & (\processadorinstance|regfileinstance|regfile[5][2]~38_combout\ & ((\processadorinstance|addr_reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|regfileinstance|regfile[5][2]~38_combout\,
	datab => \processadorinstance|regfileinstance|regfile[7][2]~46_combout\,
	datac => \processadorinstance|regfileinstance|Mux5~0_combout\,
	datad => \processadorinstance|addr_reg\(0),
	combout => \processadorinstance|regfileinstance|Mux5~1_combout\);

-- Location: LCCOMB_X49_Y8_N22
\processadorinstance|LEDG~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|LEDG~5_combout\ = (\processadorinstance|Decoder0~0_combout\ & ((\processadorinstance|LEDG~4_combout\ & ((\processadorinstance|regfileinstance|Mux5~1_combout\))) # (!\processadorinstance|LEDG~4_combout\ & 
-- (\processadorinstance|regfileinstance|Mux5~3_combout\)))) # (!\processadorinstance|Decoder0~0_combout\ & (\processadorinstance|LEDG~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|Decoder0~0_combout\,
	datab => \processadorinstance|LEDG~4_combout\,
	datac => \processadorinstance|regfileinstance|Mux5~3_combout\,
	datad => \processadorinstance|regfileinstance|Mux5~1_combout\,
	combout => \processadorinstance|LEDG~5_combout\);

-- Location: LCCOMB_X49_Y8_N26
\processadorinstance|LEDG[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|LEDG\(2) = (\KEY~combout\(0) & ((\processadorinstance|LEDG~5_combout\))) # (!\KEY~combout\(0) & (\processadorinstance|LEDG\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(0),
	datab => \processadorinstance|LEDG\(2),
	datad => \processadorinstance|LEDG~5_combout\,
	combout => \processadorinstance|LEDG\(2));

-- Location: LCFF_X46_Y10_N5
\processadorinstance|regfileinstance|regfile[2][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	sdata => \processadorinstance|data_reg\(3),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \processadorinstance|regfileinstance|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|regfileinstance|regfile[2][3]~regout\);

-- Location: LCFF_X48_Y10_N5
\processadorinstance|regfileinstance|regfile[3][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	sdata => \processadorinstance|data_reg\(3),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \processadorinstance|regfileinstance|Decoder1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|regfileinstance|regfile[3][3]~regout\);

-- Location: LCFF_X47_Y9_N11
\processadorinstance|regfileinstance|regfile[1][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	sdata => \processadorinstance|data_reg\(3),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \processadorinstance|regfileinstance|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|regfileinstance|regfile[1][3]~regout\);

-- Location: LCCOMB_X47_Y9_N10
\processadorinstance|regfileinstance|Mux4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|Mux4~2_combout\ = (\processadorinstance|addr_reg\(0) & (((\processadorinstance|regfileinstance|regfile[1][3]~regout\) # (\processadorinstance|addr_reg\(1))))) # (!\processadorinstance|addr_reg\(0) & 
-- (\processadorinstance|regfileinstance|regfile[0][3]~50_combout\ & ((!\processadorinstance|addr_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|regfileinstance|regfile[0][3]~50_combout\,
	datab => \processadorinstance|addr_reg\(0),
	datac => \processadorinstance|regfileinstance|regfile[1][3]~regout\,
	datad => \processadorinstance|addr_reg\(1),
	combout => \processadorinstance|regfileinstance|Mux4~2_combout\);

-- Location: LCCOMB_X48_Y10_N4
\processadorinstance|regfileinstance|Mux4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|Mux4~3_combout\ = (\processadorinstance|addr_reg\(1) & ((\processadorinstance|regfileinstance|Mux4~2_combout\ & ((\processadorinstance|regfileinstance|regfile[3][3]~regout\))) # 
-- (!\processadorinstance|regfileinstance|Mux4~2_combout\ & (\processadorinstance|regfileinstance|regfile[2][3]~regout\)))) # (!\processadorinstance|addr_reg\(1) & (((\processadorinstance|regfileinstance|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|addr_reg\(1),
	datab => \processadorinstance|regfileinstance|regfile[2][3]~regout\,
	datac => \processadorinstance|regfileinstance|regfile[3][3]~regout\,
	datad => \processadorinstance|regfileinstance|Mux4~2_combout\,
	combout => \processadorinstance|regfileinstance|Mux4~3_combout\);

-- Location: LCCOMB_X49_Y10_N12
\processadorinstance|regfileinstance|regfile~125\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile~125_combout\ = (\processadorinstance|regfileinstance|regfile[6][3]~58_combout\ & ((\processadorinstance|regfileinstance|regfile[0][0]~2_combout\) # ((!\processadorinstance|regfileinstance|Decoder0~0_combout\) # 
-- (!\processadorinstance|regfileinstance|regfile[0][1]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|regfileinstance|regfile[0][0]~2_combout\,
	datab => \processadorinstance|regfileinstance|regfile[6][3]~58_combout\,
	datac => \processadorinstance|regfileinstance|regfile[0][1]~18_combout\,
	datad => \processadorinstance|regfileinstance|Decoder0~0_combout\,
	combout => \processadorinstance|regfileinstance|regfile~125_combout\);

-- Location: LCCOMB_X49_Y10_N14
\processadorinstance|regfileinstance|regfile[6][3]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile[6][3]~57_combout\ = (\KEY~combout\(0) & (\processadorinstance|regfileinstance|regfile[6][3]~57_combout\)) # (!\KEY~combout\(0) & ((\processadorinstance|regfileinstance|regfile~125_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY~combout\(0),
	datac => \processadorinstance|regfileinstance|regfile[6][3]~57_combout\,
	datad => \processadorinstance|regfileinstance|regfile~125_combout\,
	combout => \processadorinstance|regfileinstance|regfile[6][3]~57_combout\);

-- Location: LCCOMB_X49_Y10_N6
\processadorinstance|regfileinstance|regfile[6][3]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile[6][3]~59_combout\ = \processadorinstance|regfileinstance|regfile[6][3]~57_combout\ $ (\processadorinstance|data_reg\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processadorinstance|regfileinstance|regfile[6][3]~57_combout\,
	datac => \processadorinstance|data_reg\(3),
	combout => \processadorinstance|regfileinstance|regfile[6][3]~59_combout\);

-- Location: LCFF_X49_Y10_N7
\processadorinstance|regfileinstance|regfile[6][3]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	datain => \processadorinstance|regfileinstance|regfile[6][3]~59_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \processadorinstance|regfileinstance|Decoder1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|regfileinstance|regfile[6][3]~_emulated_regout\);

-- Location: LCCOMB_X49_Y10_N8
\processadorinstance|regfileinstance|regfile[6][3]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile[6][3]~58_combout\ = (\KEY~combout\(0) & ((\processadorinstance|regfileinstance|regfile[6][3]~57_combout\ $ (\processadorinstance|regfileinstance|regfile[6][3]~_emulated_regout\)))) # (!\KEY~combout\(0) & 
-- (\processadorinstance|regfileinstance|regfile~125_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|regfileinstance|regfile~125_combout\,
	datab => \KEY~combout\(0),
	datac => \processadorinstance|regfileinstance|regfile[6][3]~57_combout\,
	datad => \processadorinstance|regfileinstance|regfile[6][3]~_emulated_regout\,
	combout => \processadorinstance|regfileinstance|regfile[6][3]~58_combout\);

-- Location: LCCOMB_X47_Y8_N24
\processadorinstance|regfileinstance|regfile[4][3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile[4][3]~feeder_combout\ = \processadorinstance|data_reg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \processadorinstance|data_reg\(3),
	combout => \processadorinstance|regfileinstance|regfile[4][3]~feeder_combout\);

-- Location: LCFF_X47_Y8_N25
\processadorinstance|regfileinstance|regfile[4][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	datain => \processadorinstance|regfileinstance|regfile[4][3]~feeder_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \processadorinstance|regfileinstance|Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|regfileinstance|regfile[4][3]~regout\);

-- Location: LCCOMB_X49_Y10_N20
\processadorinstance|regfileinstance|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|Mux4~0_combout\ = (\processadorinstance|addr_reg\(1) & ((\processadorinstance|addr_reg\(0)) # ((\processadorinstance|regfileinstance|regfile[6][3]~58_combout\)))) # (!\processadorinstance|addr_reg\(1) & 
-- (!\processadorinstance|addr_reg\(0) & ((\processadorinstance|regfileinstance|regfile[4][3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|addr_reg\(1),
	datab => \processadorinstance|addr_reg\(0),
	datac => \processadorinstance|regfileinstance|regfile[6][3]~58_combout\,
	datad => \processadorinstance|regfileinstance|regfile[4][3]~regout\,
	combout => \processadorinstance|regfileinstance|Mux4~0_combout\);

-- Location: LCCOMB_X48_Y9_N28
\processadorinstance|regfileinstance|regfile~124\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile~124_combout\ = (\processadorinstance|regfileinstance|regfile[5][3]~54_combout\ & ((\processadorinstance|regfileinstance|regfile[0][1]~18_combout\) # ((!\processadorinstance|regfileinstance|Decoder0~0_combout\) 
-- # (!\processadorinstance|regfileinstance|regfile[0][0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|regfileinstance|regfile[0][1]~18_combout\,
	datab => \processadorinstance|regfileinstance|regfile[5][3]~54_combout\,
	datac => \processadorinstance|regfileinstance|regfile[0][0]~2_combout\,
	datad => \processadorinstance|regfileinstance|Decoder0~0_combout\,
	combout => \processadorinstance|regfileinstance|regfile~124_combout\);

-- Location: LCCOMB_X48_Y9_N12
\processadorinstance|regfileinstance|regfile[5][3]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile[5][3]~53_combout\ = (\KEY~combout\(0) & (\processadorinstance|regfileinstance|regfile[5][3]~53_combout\)) # (!\KEY~combout\(0) & ((\processadorinstance|regfileinstance|regfile~124_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|regfileinstance|regfile[5][3]~53_combout\,
	datac => \KEY~combout\(0),
	datad => \processadorinstance|regfileinstance|regfile~124_combout\,
	combout => \processadorinstance|regfileinstance|regfile[5][3]~53_combout\);

-- Location: LCCOMB_X48_Y9_N0
\processadorinstance|regfileinstance|regfile[5][3]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile[5][3]~55_combout\ = \processadorinstance|data_reg\(3) $ (\processadorinstance|regfileinstance|regfile[5][3]~53_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \processadorinstance|data_reg\(3),
	datad => \processadorinstance|regfileinstance|regfile[5][3]~53_combout\,
	combout => \processadorinstance|regfileinstance|regfile[5][3]~55_combout\);

-- Location: LCFF_X48_Y9_N1
\processadorinstance|regfileinstance|regfile[5][3]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	datain => \processadorinstance|regfileinstance|regfile[5][3]~55_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \processadorinstance|regfileinstance|Decoder1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|regfileinstance|regfile[5][3]~_emulated_regout\);

-- Location: LCCOMB_X49_Y10_N28
\processadorinstance|regfileinstance|regfile[5][3]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile[5][3]~54_combout\ = (\KEY~combout\(0) & ((\processadorinstance|regfileinstance|regfile[5][3]~_emulated_regout\ $ (\processadorinstance|regfileinstance|regfile[5][3]~53_combout\)))) # (!\KEY~combout\(0) & 
-- (\processadorinstance|regfileinstance|regfile~124_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|regfileinstance|regfile~124_combout\,
	datab => \KEY~combout\(0),
	datac => \processadorinstance|regfileinstance|regfile[5][3]~_emulated_regout\,
	datad => \processadorinstance|regfileinstance|regfile[5][3]~53_combout\,
	combout => \processadorinstance|regfileinstance|regfile[5][3]~54_combout\);

-- Location: LCCOMB_X49_Y10_N26
\processadorinstance|regfileinstance|Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|Mux4~1_combout\ = (\processadorinstance|addr_reg\(0) & ((\processadorinstance|regfileinstance|Mux4~0_combout\ & (\processadorinstance|regfileinstance|regfile[7][3]~62_combout\)) # 
-- (!\processadorinstance|regfileinstance|Mux4~0_combout\ & ((\processadorinstance|regfileinstance|regfile[5][3]~54_combout\))))) # (!\processadorinstance|addr_reg\(0) & (((\processadorinstance|regfileinstance|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|regfileinstance|regfile[7][3]~62_combout\,
	datab => \processadorinstance|addr_reg\(0),
	datac => \processadorinstance|regfileinstance|Mux4~0_combout\,
	datad => \processadorinstance|regfileinstance|regfile[5][3]~54_combout\,
	combout => \processadorinstance|regfileinstance|Mux4~1_combout\);

-- Location: LCCOMB_X49_Y10_N2
\processadorinstance|LEDG~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|LEDG~7_combout\ = (\processadorinstance|LEDG~6_combout\ & (((\processadorinstance|regfileinstance|Mux4~1_combout\)) # (!\processadorinstance|Decoder0~0_combout\))) # (!\processadorinstance|LEDG~6_combout\ & 
-- (\processadorinstance|Decoder0~0_combout\ & (\processadorinstance|regfileinstance|Mux4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|LEDG~6_combout\,
	datab => \processadorinstance|Decoder0~0_combout\,
	datac => \processadorinstance|regfileinstance|Mux4~3_combout\,
	datad => \processadorinstance|regfileinstance|Mux4~1_combout\,
	combout => \processadorinstance|LEDG~7_combout\);

-- Location: LCCOMB_X49_Y10_N4
\processadorinstance|LEDG[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|LEDG\(3) = (\KEY~combout\(0) & ((\processadorinstance|LEDG~7_combout\))) # (!\KEY~combout\(0) & (\processadorinstance|LEDG\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY~combout\(0),
	datac => \processadorinstance|LEDG\(3),
	datad => \processadorinstance|LEDG~7_combout\,
	combout => \processadorinstance|LEDG\(3));

-- Location: LCCOMB_X49_Y9_N26
\processadorinstance|regfileinstance|regfile~127\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile~127_combout\ = (\processadorinstance|regfileinstance|regfile[7][4]~78_combout\ & (((!\processadorinstance|regfileinstance|Decoder0~0_combout\) # (!\processadorinstance|regfileinstance|regfile[0][0]~2_combout\)) 
-- # (!\processadorinstance|regfileinstance|regfile[0][1]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|regfileinstance|regfile[7][4]~78_combout\,
	datab => \processadorinstance|regfileinstance|regfile[0][1]~18_combout\,
	datac => \processadorinstance|regfileinstance|regfile[0][0]~2_combout\,
	datad => \processadorinstance|regfileinstance|Decoder0~0_combout\,
	combout => \processadorinstance|regfileinstance|regfile~127_combout\);

-- Location: LCCOMB_X49_Y9_N28
\processadorinstance|regfileinstance|regfile[7][4]~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile[7][4]~77_combout\ = (\KEY~combout\(0) & (\processadorinstance|regfileinstance|regfile[7][4]~77_combout\)) # (!\KEY~combout\(0) & ((\processadorinstance|regfileinstance|regfile~127_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|regfileinstance|regfile[7][4]~77_combout\,
	datac => \KEY~combout\(0),
	datad => \processadorinstance|regfileinstance|regfile~127_combout\,
	combout => \processadorinstance|regfileinstance|regfile[7][4]~77_combout\);

-- Location: LCFF_X49_Y9_N29
\processadorinstance|regfileinstance|regfile[7][4]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	datain => \processadorinstance|regfileinstance|regfile[7][4]~77_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \processadorinstance|regfileinstance|Decoder1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|regfileinstance|regfile[7][4]~_emulated_regout\);

-- Location: LCCOMB_X49_Y9_N6
\processadorinstance|regfileinstance|regfile[7][4]~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile[7][4]~78_combout\ = (\KEY~combout\(0) & ((\processadorinstance|regfileinstance|regfile[7][4]~77_combout\ $ (\processadorinstance|regfileinstance|regfile[7][4]~_emulated_regout\)))) # (!\KEY~combout\(0) & 
-- (\processadorinstance|regfileinstance|regfile~127_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|regfileinstance|regfile~127_combout\,
	datab => \KEY~combout\(0),
	datac => \processadorinstance|regfileinstance|regfile[7][4]~77_combout\,
	datad => \processadorinstance|regfileinstance|regfile[7][4]~_emulated_regout\,
	combout => \processadorinstance|regfileinstance|regfile[7][4]~78_combout\);

-- Location: LCCOMB_X48_Y9_N4
\processadorinstance|regfileinstance|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|Mux3~0_combout\ = (\processadorinstance|addr_reg\(1) & ((\processadorinstance|regfileinstance|regfile[7][4]~78_combout\))) # (!\processadorinstance|addr_reg\(1) & 
-- (\processadorinstance|regfileinstance|regfile[5][4]~70_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|regfileinstance|regfile[5][4]~70_combout\,
	datac => \processadorinstance|addr_reg\(1),
	datad => \processadorinstance|regfileinstance|regfile[7][4]~78_combout\,
	combout => \processadorinstance|regfileinstance|Mux3~0_combout\);

-- Location: LCCOMB_X47_Y10_N0
\processadorinstance|regfileinstance|regfile~129\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile~129_combout\ = (\processadorinstance|regfileinstance|regfile[6][4]~74_combout\ & (((\processadorinstance|regfileinstance|regfile[0][0]~2_combout\) # (!\processadorinstance|regfileinstance|Decoder0~0_combout\)) 
-- # (!\processadorinstance|regfileinstance|regfile[0][1]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|regfileinstance|regfile[0][1]~18_combout\,
	datab => \processadorinstance|regfileinstance|regfile[6][4]~74_combout\,
	datac => \processadorinstance|regfileinstance|regfile[0][0]~2_combout\,
	datad => \processadorinstance|regfileinstance|Decoder0~0_combout\,
	combout => \processadorinstance|regfileinstance|regfile~129_combout\);

-- Location: LCCOMB_X47_Y10_N8
\processadorinstance|regfileinstance|regfile[6][4]~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile[6][4]~73_combout\ = (\KEY~combout\(0) & (\processadorinstance|regfileinstance|regfile[6][4]~73_combout\)) # (!\KEY~combout\(0) & ((\processadorinstance|regfileinstance|regfile~129_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processadorinstance|regfileinstance|regfile[6][4]~73_combout\,
	datac => \KEY~combout\(0),
	datad => \processadorinstance|regfileinstance|regfile~129_combout\,
	combout => \processadorinstance|regfileinstance|regfile[6][4]~73_combout\);

-- Location: LCFF_X47_Y10_N7
\processadorinstance|regfileinstance|regfile[6][4]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	sdata => \processadorinstance|regfileinstance|regfile[6][4]~73_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \processadorinstance|regfileinstance|Decoder1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|regfileinstance|regfile[6][4]~_emulated_regout\);

-- Location: LCCOMB_X47_Y10_N28
\processadorinstance|regfileinstance|regfile[6][4]~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile[6][4]~74_combout\ = (\KEY~combout\(0) & ((\processadorinstance|regfileinstance|regfile[6][4]~73_combout\ $ (\processadorinstance|regfileinstance|regfile[6][4]~_emulated_regout\)))) # (!\KEY~combout\(0) & 
-- (\processadorinstance|regfileinstance|regfile~129_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|regfileinstance|regfile~129_combout\,
	datab => \KEY~combout\(0),
	datac => \processadorinstance|regfileinstance|regfile[6][4]~73_combout\,
	datad => \processadorinstance|regfileinstance|regfile[6][4]~_emulated_regout\,
	combout => \processadorinstance|regfileinstance|regfile[6][4]~74_combout\);

-- Location: LCCOMB_X48_Y9_N18
\processadorinstance|regfileinstance|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|Mux3~1_combout\ = (\processadorinstance|addr_reg\(2) & (((\processadorinstance|addr_reg\(1) & \processadorinstance|regfileinstance|regfile[6][4]~74_combout\)))) # (!\processadorinstance|addr_reg\(2) & 
-- (\processadorinstance|regfileinstance|regfile[0][4]~66_combout\ & (!\processadorinstance|addr_reg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|regfileinstance|regfile[0][4]~66_combout\,
	datab => \processadorinstance|addr_reg\(2),
	datac => \processadorinstance|addr_reg\(1),
	datad => \processadorinstance|regfileinstance|regfile[6][4]~74_combout\,
	combout => \processadorinstance|regfileinstance|Mux3~1_combout\);

-- Location: LCCOMB_X48_Y9_N8
\processadorinstance|regfileinstance|Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|Mux3~2_combout\ = (\processadorinstance|addr_reg\(0) & (\processadorinstance|addr_reg\(2) & (\processadorinstance|regfileinstance|Mux3~0_combout\))) # (!\processadorinstance|addr_reg\(0) & 
-- (((\processadorinstance|regfileinstance|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|addr_reg\(2),
	datab => \processadorinstance|regfileinstance|Mux3~0_combout\,
	datac => \processadorinstance|addr_reg\(0),
	datad => \processadorinstance|regfileinstance|Mux3~1_combout\,
	combout => \processadorinstance|regfileinstance|Mux3~2_combout\);

-- Location: LCCOMB_X48_Y9_N2
\processadorinstance|LEDG~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|LEDG~8_combout\ = (\processadorinstance|Decoder0~0_combout\ & ((\processadorinstance|regfileinstance|Mux3~2_combout\))) # (!\processadorinstance|Decoder0~0_combout\ & (\processadorinstance|regfileinstance|regfile[0][4]~66_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|regfileinstance|regfile[0][4]~66_combout\,
	datac => \processadorinstance|regfileinstance|Mux3~2_combout\,
	datad => \processadorinstance|Decoder0~0_combout\,
	combout => \processadorinstance|LEDG~8_combout\);

-- Location: LCCOMB_X48_Y9_N6
\processadorinstance|LEDG[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|LEDG\(4) = (\KEY~combout\(0) & ((\processadorinstance|LEDG~8_combout\))) # (!\KEY~combout\(0) & (\processadorinstance|LEDG\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(0),
	datab => \processadorinstance|LEDG\(4),
	datad => \processadorinstance|LEDG~8_combout\,
	combout => \processadorinstance|LEDG\(4));

-- Location: LCCOMB_X46_Y9_N20
\processadorinstance|LEDR[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|LEDR[0]~0_combout\ = ((\processadorinstance|addr_reg\(2) & ((\processadorinstance|regfileinstance|Mux7~1_combout\))) # (!\processadorinstance|addr_reg\(2) & (\processadorinstance|regfileinstance|Mux7~3_combout\))) # 
-- (!\KEY~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|regfileinstance|Mux7~3_combout\,
	datab => \processadorinstance|regfileinstance|Mux7~1_combout\,
	datac => \processadorinstance|addr_reg\(2),
	datad => \KEY~combout\(0),
	combout => \processadorinstance|LEDR[0]~0_combout\);

-- Location: LCCOMB_X48_Y10_N18
\processadorinstance|LEDR[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|LEDR[1]~1_combout\ = ((\processadorinstance|addr_reg\(2) & (\processadorinstance|regfileinstance|Mux6~1_combout\)) # (!\processadorinstance|addr_reg\(2) & ((\processadorinstance|regfileinstance|Mux6~3_combout\)))) # 
-- (!\KEY~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|regfileinstance|Mux6~1_combout\,
	datab => \KEY~combout\(0),
	datac => \processadorinstance|regfileinstance|Mux6~3_combout\,
	datad => \processadorinstance|addr_reg\(2),
	combout => \processadorinstance|LEDR[1]~1_combout\);

-- Location: LCCOMB_X49_Y8_N16
\processadorinstance|LEDR[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|LEDR[2]~2_combout\ = ((\processadorinstance|addr_reg\(2) & ((\processadorinstance|regfileinstance|Mux5~1_combout\))) # (!\processadorinstance|addr_reg\(2) & (\processadorinstance|regfileinstance|Mux5~3_combout\))) # 
-- (!\KEY~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|regfileinstance|Mux5~3_combout\,
	datab => \processadorinstance|addr_reg\(2),
	datac => \KEY~combout\(0),
	datad => \processadorinstance|regfileinstance|Mux5~1_combout\,
	combout => \processadorinstance|LEDR[2]~2_combout\);

-- Location: LCCOMB_X49_Y10_N0
\processadorinstance|LEDR[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|LEDR[3]~3_combout\ = ((\processadorinstance|addr_reg\(2) & ((\processadorinstance|regfileinstance|Mux4~1_combout\))) # (!\processadorinstance|addr_reg\(2) & (\processadorinstance|regfileinstance|Mux4~3_combout\))) # 
-- (!\KEY~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|addr_reg\(2),
	datab => \processadorinstance|regfileinstance|Mux4~3_combout\,
	datac => \processadorinstance|regfileinstance|Mux4~1_combout\,
	datad => \KEY~combout\(0),
	combout => \processadorinstance|LEDR[3]~3_combout\);

-- Location: LCCOMB_X49_Y8_N30
\processadorinstance|LEDR[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|LEDR[4]~4_combout\ = (\processadorinstance|regfileinstance|Mux3~2_combout\) # (!\KEY~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY~combout\(0),
	datad => \processadorinstance|regfileinstance|Mux3~2_combout\,
	combout => \processadorinstance|LEDR[4]~4_combout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SD_DAT3~I\ : cycloneii_io
-- pragma translate_off
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
	padio => SD_DAT3);

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SD_CMD~I\ : cycloneii_io
-- pragma translate_off
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
	padio => SD_CMD);

-- Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DRAM_DQ[0]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => DRAM_DQ(0));

-- Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DRAM_DQ[1]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => DRAM_DQ(1));

-- Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DRAM_DQ[2]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => DRAM_DQ(2));

-- Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DRAM_DQ[3]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => DRAM_DQ(3));

-- Location: PIN_W1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DRAM_DQ[4]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => DRAM_DQ(4));

-- Location: PIN_W2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DRAM_DQ[5]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => DRAM_DQ(5));

-- Location: PIN_Y1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DRAM_DQ[6]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => DRAM_DQ(6));

-- Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DRAM_DQ[7]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => DRAM_DQ(7));

-- Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DRAM_DQ[8]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => DRAM_DQ(8));

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DRAM_DQ[9]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => DRAM_DQ(9));

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DRAM_DQ[10]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => DRAM_DQ(10));

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DRAM_DQ[11]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => DRAM_DQ(11));

-- Location: PIN_R1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DRAM_DQ[12]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => DRAM_DQ(12));

-- Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DRAM_DQ[13]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => DRAM_DQ(13));

-- Location: PIN_T1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DRAM_DQ[14]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => DRAM_DQ(14));

-- Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DRAM_DQ[15]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => DRAM_DQ(15));

-- Location: PIN_AB16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FL_DQ[0]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => FL_DQ(0));

-- Location: PIN_AA16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FL_DQ[1]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => FL_DQ(1));

-- Location: PIN_AB17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FL_DQ[2]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => FL_DQ(2));

-- Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FL_DQ[3]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => FL_DQ(3));

-- Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FL_DQ[4]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => FL_DQ(4));

-- Location: PIN_AA18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FL_DQ[5]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => FL_DQ(5));

-- Location: PIN_AB19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FL_DQ[6]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => FL_DQ(6));

-- Location: PIN_AA19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FL_DQ[7]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => FL_DQ(7));

-- Location: PIN_AA6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[0]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => SRAM_DQ(0));

-- Location: PIN_AB6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[1]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => SRAM_DQ(1));

-- Location: PIN_AA7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[2]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => SRAM_DQ(2));

-- Location: PIN_AB7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[3]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => SRAM_DQ(3));

-- Location: PIN_AA8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[4]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => SRAM_DQ(4));

-- Location: PIN_AB8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[5]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => SRAM_DQ(5));

-- Location: PIN_AA9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[6]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => SRAM_DQ(6));

-- Location: PIN_AB9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[7]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => SRAM_DQ(7));

-- Location: PIN_Y9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[8]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => SRAM_DQ(8));

-- Location: PIN_W9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[9]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => SRAM_DQ(9));

-- Location: PIN_V9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[10]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => SRAM_DQ(10));

-- Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[11]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => SRAM_DQ(11));

-- Location: PIN_R9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[12]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => SRAM_DQ(12));

-- Location: PIN_W8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[13]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => SRAM_DQ(13));

-- Location: PIN_V8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[14]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => SRAM_DQ(14));

-- Location: PIN_U8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[15]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => SRAM_DQ(15));

-- Location: PIN_G8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SD_DAT~I\ : cycloneii_io
-- pragma translate_off
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
	padio => SD_DAT);

-- Location: PIN_B3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\I2C_SDAT~I\ : cycloneii_io
-- pragma translate_off
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
	padio => I2C_SDAT);

-- Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AUD_ADCLRCK~I\ : cycloneii_io
-- pragma translate_off
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
	padio => AUD_ADCLRCK);

-- Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AUD_DACLRCK~I\ : cycloneii_io
-- pragma translate_off
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
	padio => AUD_DACLRCK);

-- Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AUD_BCLK~I\ : cycloneii_io
-- pragma translate_off
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
	padio => AUD_BCLK);

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_0(3));

-- Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	padio => GPIO_0(4));

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	padio => GPIO_0(5));

-- Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	padio => GPIO_0(6));

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	padio => GPIO_0(7));

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	padio => GPIO_0(8));

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	padio => GPIO_0(9));

-- Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	padio => GPIO_0(10));

-- Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	padio => GPIO_0(11));

-- Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	padio => GPIO_0(12));

-- Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	padio => GPIO_0(13));

-- Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	padio => GPIO_0(14));

-- Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	padio => GPIO_0(15));

-- Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	padio => GPIO_0(16));

-- Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	padio => GPIO_0(17));

-- Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	padio => GPIO_0(18));

-- Location: PIN_D22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	padio => GPIO_0(19));

-- Location: PIN_E21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	padio => GPIO_0(20));

-- Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	padio => GPIO_0(21));

-- Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	padio => GPIO_0(22));

-- Location: PIN_F22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	padio => GPIO_0(23));

-- Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	padio => GPIO_0(24));

-- Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	padio => GPIO_0(25));

-- Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	padio => GPIO_0(26));

-- Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	padio => GPIO_0(27));

-- Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	padio => GPIO_0(28));

-- Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	padio => GPIO_0(29));

-- Location: PIN_J19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	padio => GPIO_0(30));

-- Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	padio => GPIO_0(31));

-- Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	padio => GPIO_0(32));

-- Location: PIN_K20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	padio => GPIO_0(33));

-- Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => GPIO_0(34));

-- Location: PIN_L18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	padio => GPIO_0(35));

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[0]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => GPIO_1(0));

-- Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[1]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => GPIO_1(1));

-- Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[2]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => GPIO_1(2));

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[3]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => GPIO_1(3));

-- Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[4]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => GPIO_1(4));

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[5]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => GPIO_1(5));

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[6]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => GPIO_1(6));

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[7]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => GPIO_1(7));

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[8]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => GPIO_1(8));

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[9]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => GPIO_1(9));

-- Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[10]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => GPIO_1(10));

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[11]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => GPIO_1(11));

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[12]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => GPIO_1(12));

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[13]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => GPIO_1(13));

-- Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[14]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => GPIO_1(14));

-- Location: PIN_C18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[15]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => GPIO_1(15));

-- Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[16]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => GPIO_1(16));

-- Location: PIN_C20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[17]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => GPIO_1(17));

-- Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[18]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => GPIO_1(18));

-- Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[19]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => GPIO_1(19));

-- Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[20]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => GPIO_1(20));

-- Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[21]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => GPIO_1(21));

-- Location: PIN_E19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[22]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => GPIO_1(22));

-- Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[23]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => GPIO_1(23));

-- Location: PIN_G20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[24]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => GPIO_1(24));

-- Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[25]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => GPIO_1(25));

-- Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[26]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => GPIO_1(26));

-- Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[27]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => GPIO_1(27));

-- Location: PIN_J15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[28]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => GPIO_1(28));

-- Location: PIN_H18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[29]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => GPIO_1(29));

-- Location: PIN_N22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[30]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => GPIO_1(30));

-- Location: PIN_N21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[31]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => GPIO_1(31));

-- Location: PIN_P15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[32]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => GPIO_1(32));

-- Location: PIN_N15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[33]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => GPIO_1(33));

-- Location: PIN_P17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[34]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => GPIO_1(34));

-- Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\GPIO_1[35]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => GPIO_1(35));

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLOCK_24[0]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_CLOCK_24(0));

-- Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLOCK_24[1]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_CLOCK_24(1));

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLOCK_27[0]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_CLOCK_27(0));

-- Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLOCK_27[1]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_CLOCK_27(1));

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
	padio => ww_CLOCK_50);

-- Location: PIN_M21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\EXT_CLOCK~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_EXT_CLOCK);

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
	padio => ww_KEY(2));

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
	padio => ww_SW(0));

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
	padio => ww_SW(1));

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
	padio => ww_SW(2));

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
	padio => ww_SW(3));

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
	padio => ww_SW(4));

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
	padio => ww_SW(5));

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
	padio => ww_SW(6));

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
	padio => ww_SW(7));

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[8]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_SW(8));

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[9]~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_SW(9));

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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(6));

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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(6));

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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(6));

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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(6));

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
	datain => \processadorinstance|LEDG\(0),
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
	datain => \processadorinstance|LEDG\(1),
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
	datain => \processadorinstance|LEDG\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(2));

-- Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \processadorinstance|LEDG\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(3));

-- Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \processadorinstance|LEDG\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(4));

-- Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \processadorinstance|LEDG\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(5));

-- Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \processadorinstance|LEDG\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(6));

-- Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \processadorinstance|LEDG\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(7));

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
	datain => \processadorinstance|LEDR[0]~0_combout\,
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
	datain => \processadorinstance|LEDR[1]~1_combout\,
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
	datain => \processadorinstance|LEDR[2]~2_combout\,
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
	datain => \processadorinstance|LEDR[3]~3_combout\,
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
	datain => \processadorinstance|LEDR[4]~4_combout\,
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
	datain => \processadorinstance|LEDR[4]~4_combout\,
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
	datain => \processadorinstance|LEDR[4]~4_combout\,
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
	datain => \processadorinstance|LEDR[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(7));

-- Location: PIN_R18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(8));

-- Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(9));

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\UART_TXD~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_UART_TXD);

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\UART_RXD~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_UART_RXD);

-- Location: PIN_W4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DRAM_ADDR[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_DRAM_ADDR(0));

-- Location: PIN_W5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DRAM_ADDR[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_DRAM_ADDR(1));

-- Location: PIN_Y3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DRAM_ADDR[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_DRAM_ADDR(2));

-- Location: PIN_Y4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DRAM_ADDR[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_DRAM_ADDR(3));

-- Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DRAM_ADDR[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_DRAM_ADDR(4));

-- Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DRAM_ADDR[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_DRAM_ADDR(5));

-- Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DRAM_ADDR[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_DRAM_ADDR(6));

-- Location: PIN_P5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DRAM_ADDR[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_DRAM_ADDR(7));

-- Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DRAM_ADDR[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_DRAM_ADDR(8));

-- Location: PIN_N4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DRAM_ADDR[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_DRAM_ADDR(9));

-- Location: PIN_W3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DRAM_ADDR[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_DRAM_ADDR(10));

-- Location: PIN_N6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DRAM_ADDR[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_DRAM_ADDR(11));

-- Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DRAM_LDQM~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_DRAM_LDQM);

-- Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DRAM_UDQM~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_DRAM_UDQM);

-- Location: PIN_R8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DRAM_WE_N~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_DRAM_WE_N);

-- Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DRAM_CAS_N~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_DRAM_CAS_N);

-- Location: PIN_T5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DRAM_RAS_N~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_DRAM_RAS_N);

-- Location: PIN_T6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DRAM_CS_N~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_DRAM_CS_N);

-- Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DRAM_BA_0~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_DRAM_BA_0);

-- Location: PIN_V4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DRAM_BA_1~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_DRAM_BA_1);

-- Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DRAM_CLK~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_DRAM_CLK);

-- Location: PIN_N3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DRAM_CKE~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_DRAM_CKE);

-- Location: PIN_AB20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FL_ADDR[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_FL_ADDR(0));

-- Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FL_ADDR[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_FL_ADDR(1));

-- Location: PIN_Y16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FL_ADDR[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_FL_ADDR(2));

-- Location: PIN_R15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FL_ADDR[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_FL_ADDR(3));

-- Location: PIN_T15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FL_ADDR[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_FL_ADDR(4));

-- Location: PIN_U15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FL_ADDR[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_FL_ADDR(5));

-- Location: PIN_V15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FL_ADDR[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_FL_ADDR(6));

-- Location: PIN_W15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FL_ADDR[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_FL_ADDR(7));

-- Location: PIN_R14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FL_ADDR[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_FL_ADDR(8));

-- Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FL_ADDR[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_FL_ADDR(9));

-- Location: PIN_R12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FL_ADDR[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_FL_ADDR(10));

-- Location: PIN_T12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FL_ADDR[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_FL_ADDR(11));

-- Location: PIN_AB14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FL_ADDR[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_FL_ADDR(12));

-- Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FL_ADDR[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_FL_ADDR(13));

-- Location: PIN_AB13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FL_ADDR[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_FL_ADDR(14));

-- Location: PIN_AA12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FL_ADDR[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_FL_ADDR(15));

-- Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FL_ADDR[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_FL_ADDR(16));

-- Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FL_ADDR[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_FL_ADDR(17));

-- Location: PIN_U14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FL_ADDR[18]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_FL_ADDR(18));

-- Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FL_ADDR[19]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_FL_ADDR(19));

-- Location: PIN_U13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FL_ADDR[20]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_FL_ADDR(20));

-- Location: PIN_R13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FL_ADDR[21]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_FL_ADDR(21));

-- Location: PIN_Y14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FL_WE_N~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_FL_WE_N);

-- Location: PIN_W14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FL_RST_N~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_FL_RST_N);

-- Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FL_OE_N~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_FL_OE_N);

-- Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FL_CE_N~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_FL_CE_N);

-- Location: PIN_AA3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_SRAM_ADDR(0));

-- Location: PIN_AB3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_SRAM_ADDR(1));

-- Location: PIN_AA4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_SRAM_ADDR(2));

-- Location: PIN_AB4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_SRAM_ADDR(3));

-- Location: PIN_AA5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_SRAM_ADDR(4));

-- Location: PIN_AB10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_SRAM_ADDR(5));

-- Location: PIN_AA11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_SRAM_ADDR(6));

-- Location: PIN_AB11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_SRAM_ADDR(7));

-- Location: PIN_V11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_SRAM_ADDR(8));

-- Location: PIN_W11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_SRAM_ADDR(9));

-- Location: PIN_R11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_SRAM_ADDR(10));

-- Location: PIN_T11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_SRAM_ADDR(11));

-- Location: PIN_Y10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_SRAM_ADDR(12));

-- Location: PIN_U10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_SRAM_ADDR(13));

-- Location: PIN_R10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_SRAM_ADDR(14));

-- Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_SRAM_ADDR(15));

-- Location: PIN_Y6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_SRAM_ADDR(16));

-- Location: PIN_Y5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_SRAM_ADDR(17));

-- Location: PIN_W7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_UB_N~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_SRAM_UB_N);

-- Location: PIN_Y7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_LB_N~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_SRAM_LB_N);

-- Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_WE_N~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_SRAM_WE_N);

-- Location: PIN_AB5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_CE_N~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_SRAM_CE_N);

-- Location: PIN_T8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_OE_N~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_SRAM_OE_N);

-- Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SD_CLK~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_SD_CLK);

-- Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TDI~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_TDI);

-- Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TCK~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_TCK);

-- Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TCS~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_TCS);

-- Location: PIN_D7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\TDO~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_TDO);

-- Location: PIN_A3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\I2C_SCLK~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_I2C_SCLK);

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PS2_DAT~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_PS2_DAT);

-- Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PS2_CLK~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_PS2_CLK);

-- Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_HS~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_VGA_HS);

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_VS~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_VGA_VS);

-- Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_R[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_VGA_R(0));

-- Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_R[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_VGA_R(1));

-- Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_R[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_VGA_R(2));

-- Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_R[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_VGA_R(3));

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_G[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_VGA_G(0));

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_G[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_VGA_G(1));

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_G[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_VGA_G(2));

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_G[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_VGA_G(3));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_B[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_VGA_B(0));

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_B[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_VGA_B(1));

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_B[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_VGA_B(2));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_B[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_VGA_B(3));

-- Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\AUD_ADCDAT~I\ : cycloneii_io
-- pragma translate_off
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
	padio => ww_AUD_ADCDAT);

-- Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AUD_DACDAT~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_AUD_DACDAT);

-- Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\AUD_XCK~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
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
	padio => ww_AUD_XCK);
END structure;


