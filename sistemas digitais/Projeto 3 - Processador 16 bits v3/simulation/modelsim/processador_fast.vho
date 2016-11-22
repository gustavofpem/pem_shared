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

-- DATE "11/16/2016 21:48:27"

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
-- SD_DAT3	=>  Location: PIN_R16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SD_CMD	=>  Location: PIN_G8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
-- SD_DAT	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
-- EXT_CLOCK	=>  Location: PIN_M21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
-- SD_CLK	=>  Location: PIN_W16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
-- CLOCK_50	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_U11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL \CLOCK_50~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \processadorinstance|ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ : std_logic;
SIGNAL \processadorinstance|ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\ : std_logic;
SIGNAL \processadorinstance|ulainstance|somadorinstance|out[1]~2_combout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|somadorinstance|out[2]~5\ : std_logic;
SIGNAL \processadorinstance|ulainstance|somadorinstance|out[3]~6_combout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|somadorinstance|out[3]~7\ : std_logic;
SIGNAL \processadorinstance|ulainstance|somadorinstance|out[4]~8_combout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|subtratorinstance|resultado[0]~5_combout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|subtratorinstance|resultado[3]~11_combout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|subtratorinstance|out[1]~7_combout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|subtratorinstance|out[2]~9_combout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|subtratorinstance|out[3]~11_combout\ : std_logic;
SIGNAL \processadorinstance|seg7instance|Selector2~0_combout\ : std_logic;
SIGNAL \processadorinstance|seg7instance|Selector2~2_combout\ : std_logic;
SIGNAL \processadorinstance|seg7instance|Selector0~0_combout\ : std_logic;
SIGNAL \processadorinstance|seg7instance|Selector0~1_combout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|Mux1~0_combout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|selnose[5]~0_combout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[4]~3_combout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|Mux4~4_combout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|Mux3~0_combout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|Mux3~1_combout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|out_ula[2]~4_combout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|Mux3~2_combout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|Mux3~3_combout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|selnose[5]~1_combout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|Mux1~1_combout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|Mux1~2_combout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|Mux1~3_combout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|subtratorinstance|Add1~0_combout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|multinstance|Mult0|mult_core|decoder_node[1][1]~combout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|multinstance|Mult0|mult_core|decoder_node[1][0]~combout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|multinstance|Mult0|mult_core|decoder_node[2][1]~combout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|multinstance|Mult0|mult_core|decoder_node[2][0]~combout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|multinstance|Mult0|mult_core|decoder_node[0][0]~combout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|out_ula~6_combout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|Mux1~4_combout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|Mux1~5_combout\ : std_logic;
SIGNAL \processadorinstance|disp2[3]~feeder_combout\ : std_logic;
SIGNAL \processadorinstance|disp1[1]~feeder_combout\ : std_logic;
SIGNAL \CLOCK_50~combout\ : std_logic;
SIGNAL \CLOCK_50~clkctrl_outclk\ : std_logic;
SIGNAL \processadorinstance|pc~0_combout\ : std_logic;
SIGNAL \processadorinstance|pc~1_combout\ : std_logic;
SIGNAL \processadorinstance|pc~2_combout\ : std_logic;
SIGNAL \processadorinstance|prominstance|addr_reg[1]~feeder_combout\ : std_logic;
SIGNAL \processadorinstance|prominstance|prom~1_combout\ : std_logic;
SIGNAL \processadorinstance|prominstance|prom~2_combout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|out_ula[2]~2_combout\ : std_logic;
SIGNAL \processadorinstance|draminstance|dram~4feeder_combout\ : std_logic;
SIGNAL \processadorinstance|we_d~regout\ : std_logic;
SIGNAL \processadorinstance|draminstance|dram~4_regout\ : std_logic;
SIGNAL \processadorinstance|data[2]~feeder_combout\ : std_logic;
SIGNAL \processadorinstance|draminstance|dram~2feeder_combout\ : std_logic;
SIGNAL \processadorinstance|draminstance|dram~2_regout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|multinstance|Mult0|mult_core|decoder_node[0][2]~combout\ : std_logic;
SIGNAL \processadorinstance|data[1]~feeder_combout\ : std_logic;
SIGNAL \processadorinstance|draminstance|dram~1feeder_combout\ : std_logic;
SIGNAL \processadorinstance|draminstance|dram~1_regout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|multinstance|Mult0|mult_core|decoder_node[0][1]~combout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ : std_logic;
SIGNAL \processadorinstance|ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|out_ula[2]~5_combout\ : std_logic;
SIGNAL \processadorinstance|draminstance|dram~0feeder_combout\ : std_logic;
SIGNAL \processadorinstance|draminstance|dram~0_regout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|somadorinstance|out[0]~1\ : std_logic;
SIGNAL \processadorinstance|ulainstance|somadorinstance|out[1]~3\ : std_logic;
SIGNAL \processadorinstance|ulainstance|somadorinstance|out[2]~4_combout\ : std_logic;
SIGNAL \processadorinstance|prominstance|prom~0_combout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|Mux2~0_combout\ : std_logic;
SIGNAL \processadorinstance|data[5]~feeder_combout\ : std_logic;
SIGNAL \processadorinstance|draminstance|dram~5feeder_combout\ : std_logic;
SIGNAL \processadorinstance|draminstance|dram~5_regout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[5]~0_combout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|out_ula[2]~3_combout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|Mux2~1_combout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|Mux2~2_combout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|Mux2~3_combout\ : std_logic;
SIGNAL \processadorinstance|disp0[2]~feeder_combout\ : std_logic;
SIGNAL \processadorinstance|data[6]~feeder_combout\ : std_logic;
SIGNAL \processadorinstance|draminstance|dram~6feeder_combout\ : std_logic;
SIGNAL \processadorinstance|draminstance|dram~6_regout\ : std_logic;
SIGNAL \processadorinstance|seg7instance|display_state.11~feeder_combout\ : std_logic;
SIGNAL \processadorinstance|seg7instance|display_state.11~regout\ : std_logic;
SIGNAL \processadorinstance|seg7instance|display_state.00~0_combout\ : std_logic;
SIGNAL \processadorinstance|seg7instance|display_state.00~regout\ : std_logic;
SIGNAL \processadorinstance|seg7instance|display_state.01~0_combout\ : std_logic;
SIGNAL \processadorinstance|seg7instance|display_state.01~regout\ : std_logic;
SIGNAL \processadorinstance|seg7instance|display_state.10~regout\ : std_logic;
SIGNAL \processadorinstance|seg7instance|Selector1~0_combout\ : std_logic;
SIGNAL \processadorinstance|seg7instance|Selector1~1_combout\ : std_logic;
SIGNAL \processadorinstance|seg7instance|Selector2~1_combout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|subtratorinstance|s~0_combout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|subtratorinstance|s~regout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|subtratorinstance|out[0]~5_combout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|Mux4~6_combout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|Mux4~7_combout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|somadorinstance|out[0]~0_combout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ : std_logic;
SIGNAL \processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ : std_logic;
SIGNAL \processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ : std_logic;
SIGNAL \processadorinstance|data[7]~feeder_combout\ : std_logic;
SIGNAL \processadorinstance|draminstance|dram~7_regout\ : std_logic;
SIGNAL \processadorinstance|data[3]~feeder_combout\ : std_logic;
SIGNAL \processadorinstance|draminstance|dram~3feeder_combout\ : std_logic;
SIGNAL \processadorinstance|draminstance|dram~3_regout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[5]~1_combout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[5]~2_combout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ : std_logic;
SIGNAL \processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[10]~4_combout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[9]~5_combout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[8]~6_combout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|Mux4~9_combout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|Mux4~5_combout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|Mux4~8_combout\ : std_logic;
SIGNAL \processadorinstance|seg7instance|Selector3~0_combout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|subtratorinstance|resultado[0]~6\ : std_logic;
SIGNAL \processadorinstance|ulainstance|subtratorinstance|resultado[1]~8\ : std_logic;
SIGNAL \processadorinstance|ulainstance|subtratorinstance|resultado[2]~10\ : std_logic;
SIGNAL \processadorinstance|ulainstance|subtratorinstance|resultado[3]~12\ : std_logic;
SIGNAL \processadorinstance|ulainstance|subtratorinstance|resultado[4]~13_combout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|subtratorinstance|resultado[2]~9_combout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|subtratorinstance|resultado[1]~7_combout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|subtratorinstance|out[0]~6\ : std_logic;
SIGNAL \processadorinstance|ulainstance|subtratorinstance|out[1]~8\ : std_logic;
SIGNAL \processadorinstance|ulainstance|subtratorinstance|out[2]~10\ : std_logic;
SIGNAL \processadorinstance|ulainstance|subtratorinstance|out[3]~12\ : std_logic;
SIGNAL \processadorinstance|ulainstance|subtratorinstance|out[4]~13_combout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|multinstance|Mult0|mult_core|decoder_node[2][2]~combout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|multinstance|Mult0|mult_core|decoder_node[1][2]~combout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ : std_logic;
SIGNAL \processadorinstance|ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\ : std_logic;
SIGNAL \processadorinstance|ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\ : std_logic;
SIGNAL \processadorinstance|ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|Mux0~0_combout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|Mux0~1_combout\ : std_logic;
SIGNAL \processadorinstance|seg7instance|Selector3~1_combout\ : std_logic;
SIGNAL \processadorinstance|seg7instance|Selector2~3_combout\ : std_logic;
SIGNAL \processadorinstance|seg7instance|WideOr6~0_combout\ : std_logic;
SIGNAL \processadorinstance|seg7instance|WideOr5~0_combout\ : std_logic;
SIGNAL \processadorinstance|seg7instance|WideOr4~0_combout\ : std_logic;
SIGNAL \processadorinstance|seg7instance|hex_out0[2]~feeder_combout\ : std_logic;
SIGNAL \processadorinstance|seg7instance|WideOr3~0_combout\ : std_logic;
SIGNAL \processadorinstance|seg7instance|hex_out0[3]~feeder_combout\ : std_logic;
SIGNAL \processadorinstance|seg7instance|WideOr2~0_combout\ : std_logic;
SIGNAL \processadorinstance|seg7instance|WideOr1~0_combout\ : std_logic;
SIGNAL \processadorinstance|seg7instance|hex_out0[5]~feeder_combout\ : std_logic;
SIGNAL \processadorinstance|seg7instance|WideOr0~0_combout\ : std_logic;
SIGNAL \processadorinstance|seg7instance|hex_out0[6]~feeder_combout\ : std_logic;
SIGNAL \processadorinstance|seg7instance|hex_out1~0_combout\ : std_logic;
SIGNAL \processadorinstance|seg7instance|hex_out1~1_combout\ : std_logic;
SIGNAL \processadorinstance|seg7instance|hex_out1~2_combout\ : std_logic;
SIGNAL \processadorinstance|seg7instance|hex_out1~3_combout\ : std_logic;
SIGNAL \processadorinstance|seg7instance|hex_out1~4_combout\ : std_logic;
SIGNAL \processadorinstance|seg7instance|hex_out1~5_combout\ : std_logic;
SIGNAL \processadorinstance|seg7instance|hex_out1~6_combout\ : std_logic;
SIGNAL \processadorinstance|seg7instance|hex_out2[0]~feeder_combout\ : std_logic;
SIGNAL \processadorinstance|seg7instance|hex_out2[1]~feeder_combout\ : std_logic;
SIGNAL \processadorinstance|seg7instance|hex_out3[0]~feeder_combout\ : std_logic;
SIGNAL \processadorinstance|seg7instance|hex_out3[1]~feeder_combout\ : std_logic;
SIGNAL \processadorinstance|seg7instance|hex_out3[3]~feeder_combout\ : std_logic;
SIGNAL \processadorinstance|seg7instance|hex_out3[6]~feeder_combout\ : std_logic;
SIGNAL \processadorinstance|LEDR[2]~feeder_combout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|selnose\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \processadorinstance|pc\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \processadorinstance|opcode\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \processadorinstance|disp3\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \processadorinstance|disp2\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \processadorinstance|disp1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \processadorinstance|disp0\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \processadorinstance|data\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \processadorinstance|addr_p\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \processadorinstance|LEDR\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \processadorinstance|LEDG\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \processadorinstance|prominstance|addr_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \processadorinstance|ulainstance|out_ula\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \processadorinstance|ulainstance|subtratorinstance|resultado\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \processadorinstance|ulainstance|subtratorinstance|out\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \processadorinstance|ulainstance|op_xorinstance|out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \processadorinstance|seg7instance|hex_out3\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \processadorinstance|seg7instance|hex_out2\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \processadorinstance|seg7instance|hex_out1\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \processadorinstance|seg7instance|hex_out0\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \SW~combout\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \KEY~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_KEY~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \processadorinstance|ALT_INV_we_d~regout\ : std_logic;
SIGNAL \processadorinstance|seg7instance|ALT_INV_display_state.00~regout\ : std_logic;

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

\CLOCK_50~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLOCK_50~combout\);
\ALT_INV_KEY~combout\(2) <= NOT \KEY~combout\(2);
\ALT_INV_KEY~combout\(0) <= NOT \KEY~combout\(0);
\ALT_INV_KEY~combout\(3) <= NOT \KEY~combout\(3);
\processadorinstance|ALT_INV_we_d~regout\ <= NOT \processadorinstance|we_d~regout\;
\processadorinstance|seg7instance|ALT_INV_display_state.00~regout\ <= NOT \processadorinstance|seg7instance|display_state.00~regout\;

-- Location: LCCOMB_X16_Y13_N0
\processadorinstance|ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ = (\processadorinstance|ulainstance|multinstance|Mult0|mult_core|decoder_node[1][0]~combout\ & 
-- (\processadorinstance|ulainstance|multinstance|Mult0|mult_core|decoder_node[0][1]~combout\ $ (VCC))) # (!\processadorinstance|ulainstance|multinstance|Mult0|mult_core|decoder_node[1][0]~combout\ & 
-- (\processadorinstance|ulainstance|multinstance|Mult0|mult_core|decoder_node[0][1]~combout\ & VCC))
-- \processadorinstance|ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ = CARRY((\processadorinstance|ulainstance|multinstance|Mult0|mult_core|decoder_node[1][0]~combout\ & 
-- \processadorinstance|ulainstance|multinstance|Mult0|mult_core|decoder_node[0][1]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|ulainstance|multinstance|Mult0|mult_core|decoder_node[1][0]~combout\,
	datab => \processadorinstance|ulainstance|multinstance|Mult0|mult_core|decoder_node[0][1]~combout\,
	datad => VCC,
	combout => \processadorinstance|ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	cout => \processadorinstance|ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\);

-- Location: LCCOMB_X16_Y13_N4
\processadorinstance|ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ = (\processadorinstance|ulainstance|multinstance|Mult0|mult_core|decoder_node[1][2]~combout\ & 
-- (\processadorinstance|ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ $ (GND))) # (!\processadorinstance|ulainstance|multinstance|Mult0|mult_core|decoder_node[1][2]~combout\ & 
-- (!\processadorinstance|ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ & VCC))
-- \processadorinstance|ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ = CARRY((\processadorinstance|ulainstance|multinstance|Mult0|mult_core|decoder_node[1][2]~combout\ & 
-- !\processadorinstance|ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \processadorinstance|ulainstance|multinstance|Mult0|mult_core|decoder_node[1][2]~combout\,
	datad => VCC,
	cin => \processadorinstance|ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\,
	combout => \processadorinstance|ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	cout => \processadorinstance|ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\);

-- Location: LCCOMB_X16_Y13_N6
\processadorinstance|ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ = \processadorinstance|ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \processadorinstance|ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\,
	combout => \processadorinstance|ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\);

-- Location: LCCOMB_X16_Y13_N24
\processadorinstance|ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ = (\processadorinstance|ulainstance|multinstance|Mult0|mult_core|decoder_node[2][1]~combout\ & 
-- ((\processadorinstance|ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & (\processadorinstance|ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\ & VCC)) # 
-- (!\processadorinstance|ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & (!\processadorinstance|ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\)))) # 
-- (!\processadorinstance|ulainstance|multinstance|Mult0|mult_core|decoder_node[2][1]~combout\ & ((\processadorinstance|ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & 
-- (!\processadorinstance|ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\)) # (!\processadorinstance|ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & 
-- ((\processadorinstance|ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\) # (GND)))))
-- \processadorinstance|ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\ = CARRY((\processadorinstance|ulainstance|multinstance|Mult0|mult_core|decoder_node[2][1]~combout\ & 
-- (!\processadorinstance|ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & !\processadorinstance|ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\)) # 
-- (!\processadorinstance|ulainstance|multinstance|Mult0|mult_core|decoder_node[2][1]~combout\ & ((!\processadorinstance|ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\) # 
-- (!\processadorinstance|ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|ulainstance|multinstance|Mult0|mult_core|decoder_node[2][1]~combout\,
	datab => \processadorinstance|ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	datad => VCC,
	cin => \processadorinstance|ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\,
	combout => \processadorinstance|ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\,
	cout => \processadorinstance|ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\);

-- Location: LCCOMB_X16_Y13_N26
\processadorinstance|ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\ = ((\processadorinstance|ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ $ 
-- (\processadorinstance|ulainstance|multinstance|Mult0|mult_core|decoder_node[2][2]~combout\ $ (!\processadorinstance|ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\)))) # (GND)
-- \processadorinstance|ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\ = CARRY((\processadorinstance|ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & 
-- ((\processadorinstance|ulainstance|multinstance|Mult0|mult_core|decoder_node[2][2]~combout\) # (!\processadorinstance|ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\))) # 
-- (!\processadorinstance|ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & (\processadorinstance|ulainstance|multinstance|Mult0|mult_core|decoder_node[2][2]~combout\ & 
-- !\processadorinstance|ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	datab => \processadorinstance|ulainstance|multinstance|Mult0|mult_core|decoder_node[2][2]~combout\,
	datad => VCC,
	cin => \processadorinstance|ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\,
	combout => \processadorinstance|ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\,
	cout => \processadorinstance|ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\);

-- Location: LCCOMB_X22_Y13_N6
\processadorinstance|ulainstance|somadorinstance|out[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|somadorinstance|out[1]~2_combout\ = (\processadorinstance|draminstance|dram~5_regout\ & ((\processadorinstance|draminstance|dram~1_regout\ & (\processadorinstance|ulainstance|somadorinstance|out[0]~1\ & VCC)) # 
-- (!\processadorinstance|draminstance|dram~1_regout\ & (!\processadorinstance|ulainstance|somadorinstance|out[0]~1\)))) # (!\processadorinstance|draminstance|dram~5_regout\ & ((\processadorinstance|draminstance|dram~1_regout\ & 
-- (!\processadorinstance|ulainstance|somadorinstance|out[0]~1\)) # (!\processadorinstance|draminstance|dram~1_regout\ & ((\processadorinstance|ulainstance|somadorinstance|out[0]~1\) # (GND)))))
-- \processadorinstance|ulainstance|somadorinstance|out[1]~3\ = CARRY((\processadorinstance|draminstance|dram~5_regout\ & (!\processadorinstance|draminstance|dram~1_regout\ & !\processadorinstance|ulainstance|somadorinstance|out[0]~1\)) # 
-- (!\processadorinstance|draminstance|dram~5_regout\ & ((!\processadorinstance|ulainstance|somadorinstance|out[0]~1\) # (!\processadorinstance|draminstance|dram~1_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|draminstance|dram~5_regout\,
	datab => \processadorinstance|draminstance|dram~1_regout\,
	datad => VCC,
	cin => \processadorinstance|ulainstance|somadorinstance|out[0]~1\,
	combout => \processadorinstance|ulainstance|somadorinstance|out[1]~2_combout\,
	cout => \processadorinstance|ulainstance|somadorinstance|out[1]~3\);

-- Location: LCCOMB_X22_Y13_N8
\processadorinstance|ulainstance|somadorinstance|out[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|somadorinstance|out[2]~4_combout\ = ((\processadorinstance|draminstance|dram~6_regout\ $ (\processadorinstance|draminstance|dram~2_regout\ $ (!\processadorinstance|ulainstance|somadorinstance|out[1]~3\)))) # (GND)
-- \processadorinstance|ulainstance|somadorinstance|out[2]~5\ = CARRY((\processadorinstance|draminstance|dram~6_regout\ & ((\processadorinstance|draminstance|dram~2_regout\) # (!\processadorinstance|ulainstance|somadorinstance|out[1]~3\))) # 
-- (!\processadorinstance|draminstance|dram~6_regout\ & (\processadorinstance|draminstance|dram~2_regout\ & !\processadorinstance|ulainstance|somadorinstance|out[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|draminstance|dram~6_regout\,
	datab => \processadorinstance|draminstance|dram~2_regout\,
	datad => VCC,
	cin => \processadorinstance|ulainstance|somadorinstance|out[1]~3\,
	combout => \processadorinstance|ulainstance|somadorinstance|out[2]~4_combout\,
	cout => \processadorinstance|ulainstance|somadorinstance|out[2]~5\);

-- Location: LCCOMB_X22_Y13_N10
\processadorinstance|ulainstance|somadorinstance|out[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|somadorinstance|out[3]~6_combout\ = (\processadorinstance|draminstance|dram~7_regout\ & ((\processadorinstance|draminstance|dram~3_regout\ & (\processadorinstance|ulainstance|somadorinstance|out[2]~5\ & VCC)) # 
-- (!\processadorinstance|draminstance|dram~3_regout\ & (!\processadorinstance|ulainstance|somadorinstance|out[2]~5\)))) # (!\processadorinstance|draminstance|dram~7_regout\ & ((\processadorinstance|draminstance|dram~3_regout\ & 
-- (!\processadorinstance|ulainstance|somadorinstance|out[2]~5\)) # (!\processadorinstance|draminstance|dram~3_regout\ & ((\processadorinstance|ulainstance|somadorinstance|out[2]~5\) # (GND)))))
-- \processadorinstance|ulainstance|somadorinstance|out[3]~7\ = CARRY((\processadorinstance|draminstance|dram~7_regout\ & (!\processadorinstance|draminstance|dram~3_regout\ & !\processadorinstance|ulainstance|somadorinstance|out[2]~5\)) # 
-- (!\processadorinstance|draminstance|dram~7_regout\ & ((!\processadorinstance|ulainstance|somadorinstance|out[2]~5\) # (!\processadorinstance|draminstance|dram~3_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|draminstance|dram~7_regout\,
	datab => \processadorinstance|draminstance|dram~3_regout\,
	datad => VCC,
	cin => \processadorinstance|ulainstance|somadorinstance|out[2]~5\,
	combout => \processadorinstance|ulainstance|somadorinstance|out[3]~6_combout\,
	cout => \processadorinstance|ulainstance|somadorinstance|out[3]~7\);

-- Location: LCCOMB_X22_Y13_N12
\processadorinstance|ulainstance|somadorinstance|out[4]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|somadorinstance|out[4]~8_combout\ = !\processadorinstance|ulainstance|somadorinstance|out[3]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \processadorinstance|ulainstance|somadorinstance|out[3]~7\,
	combout => \processadorinstance|ulainstance|somadorinstance|out[4]~8_combout\);

-- Location: LCCOMB_X16_Y13_N28
\processadorinstance|ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ = \processadorinstance|ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \processadorinstance|ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\,
	combout => \processadorinstance|ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\);

-- Location: LCFF_X21_Y14_N19
\processadorinstance|ulainstance|subtratorinstance|out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \processadorinstance|ulainstance|subtratorinstance|out[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|ulainstance|subtratorinstance|out\(1));

-- Location: LCFF_X21_Y14_N21
\processadorinstance|ulainstance|subtratorinstance|out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \processadorinstance|ulainstance|subtratorinstance|out[2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|ulainstance|subtratorinstance|out\(2));

-- Location: LCFF_X21_Y14_N23
\processadorinstance|ulainstance|subtratorinstance|out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \processadorinstance|ulainstance|subtratorinstance|out[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|ulainstance|subtratorinstance|out\(3));

-- Location: LCCOMB_X21_Y14_N0
\processadorinstance|ulainstance|subtratorinstance|resultado[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|subtratorinstance|resultado[0]~5_combout\ = (\processadorinstance|draminstance|dram~0_regout\ & ((GND) # (!\processadorinstance|draminstance|dram~4_regout\))) # (!\processadorinstance|draminstance|dram~0_regout\ & 
-- (\processadorinstance|draminstance|dram~4_regout\ $ (GND)))
-- \processadorinstance|ulainstance|subtratorinstance|resultado[0]~6\ = CARRY((\processadorinstance|draminstance|dram~0_regout\) # (!\processadorinstance|draminstance|dram~4_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|draminstance|dram~0_regout\,
	datab => \processadorinstance|draminstance|dram~4_regout\,
	datad => VCC,
	combout => \processadorinstance|ulainstance|subtratorinstance|resultado[0]~5_combout\,
	cout => \processadorinstance|ulainstance|subtratorinstance|resultado[0]~6\);

-- Location: LCCOMB_X21_Y14_N6
\processadorinstance|ulainstance|subtratorinstance|resultado[3]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|subtratorinstance|resultado[3]~11_combout\ = (\processadorinstance|draminstance|dram~7_regout\ & ((\processadorinstance|draminstance|dram~3_regout\ & (!\processadorinstance|ulainstance|subtratorinstance|resultado[2]~10\)) 
-- # (!\processadorinstance|draminstance|dram~3_regout\ & ((\processadorinstance|ulainstance|subtratorinstance|resultado[2]~10\) # (GND))))) # (!\processadorinstance|draminstance|dram~7_regout\ & ((\processadorinstance|draminstance|dram~3_regout\ & 
-- (\processadorinstance|ulainstance|subtratorinstance|resultado[2]~10\ & VCC)) # (!\processadorinstance|draminstance|dram~3_regout\ & (!\processadorinstance|ulainstance|subtratorinstance|resultado[2]~10\))))
-- \processadorinstance|ulainstance|subtratorinstance|resultado[3]~12\ = CARRY((\processadorinstance|draminstance|dram~7_regout\ & ((!\processadorinstance|ulainstance|subtratorinstance|resultado[2]~10\) # (!\processadorinstance|draminstance|dram~3_regout\))) 
-- # (!\processadorinstance|draminstance|dram~7_regout\ & (!\processadorinstance|draminstance|dram~3_regout\ & !\processadorinstance|ulainstance|subtratorinstance|resultado[2]~10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|draminstance|dram~7_regout\,
	datab => \processadorinstance|draminstance|dram~3_regout\,
	datad => VCC,
	cin => \processadorinstance|ulainstance|subtratorinstance|resultado[2]~10\,
	combout => \processadorinstance|ulainstance|subtratorinstance|resultado[3]~11_combout\,
	cout => \processadorinstance|ulainstance|subtratorinstance|resultado[3]~12\);

-- Location: LCFF_X21_Y14_N7
\processadorinstance|ulainstance|subtratorinstance|resultado[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \processadorinstance|ulainstance|subtratorinstance|resultado[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|ulainstance|subtratorinstance|resultado\(3));

-- Location: LCFF_X21_Y14_N1
\processadorinstance|ulainstance|subtratorinstance|resultado[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \processadorinstance|ulainstance|subtratorinstance|resultado[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|ulainstance|subtratorinstance|resultado\(0));

-- Location: LCCOMB_X21_Y14_N18
\processadorinstance|ulainstance|subtratorinstance|out[1]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|subtratorinstance|out[1]~7_combout\ = (\processadorinstance|ulainstance|subtratorinstance|out[0]~6\ & (\processadorinstance|ulainstance|subtratorinstance|s~regout\ $ 
-- ((!\processadorinstance|ulainstance|subtratorinstance|resultado\(1))))) # (!\processadorinstance|ulainstance|subtratorinstance|out[0]~6\ & ((\processadorinstance|ulainstance|subtratorinstance|s~regout\ $ 
-- (\processadorinstance|ulainstance|subtratorinstance|resultado\(1))) # (GND)))
-- \processadorinstance|ulainstance|subtratorinstance|out[1]~8\ = CARRY((\processadorinstance|ulainstance|subtratorinstance|s~regout\ $ (!\processadorinstance|ulainstance|subtratorinstance|resultado\(1))) # 
-- (!\processadorinstance|ulainstance|subtratorinstance|out[0]~6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|ulainstance|subtratorinstance|s~regout\,
	datab => \processadorinstance|ulainstance|subtratorinstance|resultado\(1),
	datad => VCC,
	cin => \processadorinstance|ulainstance|subtratorinstance|out[0]~6\,
	combout => \processadorinstance|ulainstance|subtratorinstance|out[1]~7_combout\,
	cout => \processadorinstance|ulainstance|subtratorinstance|out[1]~8\);

-- Location: LCCOMB_X21_Y14_N20
\processadorinstance|ulainstance|subtratorinstance|out[2]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|subtratorinstance|out[2]~9_combout\ = (\processadorinstance|ulainstance|subtratorinstance|out[1]~8\ & ((\processadorinstance|ulainstance|subtratorinstance|s~regout\ $ 
-- (\processadorinstance|ulainstance|subtratorinstance|resultado\(2))))) # (!\processadorinstance|ulainstance|subtratorinstance|out[1]~8\ & (\processadorinstance|ulainstance|subtratorinstance|s~regout\ $ 
-- (\processadorinstance|ulainstance|subtratorinstance|resultado\(2) $ (VCC))))
-- \processadorinstance|ulainstance|subtratorinstance|out[2]~10\ = CARRY((!\processadorinstance|ulainstance|subtratorinstance|out[1]~8\ & (\processadorinstance|ulainstance|subtratorinstance|s~regout\ $ 
-- (\processadorinstance|ulainstance|subtratorinstance|resultado\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|ulainstance|subtratorinstance|s~regout\,
	datab => \processadorinstance|ulainstance|subtratorinstance|resultado\(2),
	datad => VCC,
	cin => \processadorinstance|ulainstance|subtratorinstance|out[1]~8\,
	combout => \processadorinstance|ulainstance|subtratorinstance|out[2]~9_combout\,
	cout => \processadorinstance|ulainstance|subtratorinstance|out[2]~10\);

-- Location: LCCOMB_X21_Y14_N22
\processadorinstance|ulainstance|subtratorinstance|out[3]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|subtratorinstance|out[3]~11_combout\ = (\processadorinstance|ulainstance|subtratorinstance|out[2]~10\ & (\processadorinstance|ulainstance|subtratorinstance|resultado\(3) $ 
-- ((!\processadorinstance|ulainstance|subtratorinstance|s~regout\)))) # (!\processadorinstance|ulainstance|subtratorinstance|out[2]~10\ & ((\processadorinstance|ulainstance|subtratorinstance|resultado\(3) $ 
-- (\processadorinstance|ulainstance|subtratorinstance|s~regout\)) # (GND)))
-- \processadorinstance|ulainstance|subtratorinstance|out[3]~12\ = CARRY((\processadorinstance|ulainstance|subtratorinstance|resultado\(3) $ (!\processadorinstance|ulainstance|subtratorinstance|s~regout\)) # 
-- (!\processadorinstance|ulainstance|subtratorinstance|out[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|ulainstance|subtratorinstance|resultado\(3),
	datab => \processadorinstance|ulainstance|subtratorinstance|s~regout\,
	datad => VCC,
	cin => \processadorinstance|ulainstance|subtratorinstance|out[2]~10\,
	combout => \processadorinstance|ulainstance|subtratorinstance|out[3]~11_combout\,
	cout => \processadorinstance|ulainstance|subtratorinstance|out[3]~12\);

-- Location: LCCOMB_X16_Y17_N20
\processadorinstance|seg7instance|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|seg7instance|Selector2~0_combout\ = (\processadorinstance|seg7instance|display_state.01~regout\ & ((\processadorinstance|seg7instance|display_state.11~regout\) # (!\processadorinstance|seg7instance|display_state.10~regout\))) # 
-- (!\processadorinstance|seg7instance|display_state.01~regout\ & (\processadorinstance|seg7instance|display_state.11~regout\ & !\processadorinstance|seg7instance|display_state.10~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|seg7instance|display_state.01~regout\,
	datab => \processadorinstance|seg7instance|display_state.11~regout\,
	datad => \processadorinstance|seg7instance|display_state.10~regout\,
	combout => \processadorinstance|seg7instance|Selector2~0_combout\);

-- Location: LCFF_X16_Y17_N3
\processadorinstance|disp1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \processadorinstance|disp1[1]~feeder_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|disp1\(1));

-- Location: LCFF_X16_Y17_N25
\processadorinstance|disp0[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \processadorinstance|ulainstance|out_ula\(1),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|disp0\(1));

-- Location: LCCOMB_X16_Y17_N24
\processadorinstance|seg7instance|Selector2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|seg7instance|Selector2~2_combout\ = (\processadorinstance|seg7instance|Selector2~0_combout\ & ((\processadorinstance|disp1\(1)) # ((\processadorinstance|seg7instance|Selector2~1_combout\)))) # 
-- (!\processadorinstance|seg7instance|Selector2~0_combout\ & (((\processadorinstance|disp0\(1) & !\processadorinstance|seg7instance|Selector2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|seg7instance|Selector2~0_combout\,
	datab => \processadorinstance|disp1\(1),
	datac => \processadorinstance|disp0\(1),
	datad => \processadorinstance|seg7instance|Selector2~1_combout\,
	combout => \processadorinstance|seg7instance|Selector2~2_combout\);

-- Location: LCFF_X16_Y17_N31
\processadorinstance|disp3[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \processadorinstance|draminstance|dram~3_regout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|disp3\(3));

-- Location: LCFF_X16_Y17_N9
\processadorinstance|disp2[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \processadorinstance|disp2[3]~feeder_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|disp2\(3));

-- Location: LCFF_X16_Y17_N27
\processadorinstance|disp0[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \processadorinstance|ulainstance|out_ula\(3),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|disp0\(3));

-- Location: LCCOMB_X16_Y17_N26
\processadorinstance|seg7instance|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|seg7instance|Selector0~0_combout\ = (\processadorinstance|seg7instance|display_state.10~regout\ & (((\processadorinstance|disp2\(3))))) # (!\processadorinstance|seg7instance|display_state.10~regout\ & 
-- (!\processadorinstance|seg7instance|display_state.01~regout\ & ((\processadorinstance|disp0\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|seg7instance|display_state.01~regout\,
	datab => \processadorinstance|disp2\(3),
	datac => \processadorinstance|disp0\(3),
	datad => \processadorinstance|seg7instance|display_state.10~regout\,
	combout => \processadorinstance|seg7instance|Selector0~0_combout\);

-- Location: LCCOMB_X16_Y17_N30
\processadorinstance|seg7instance|Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|seg7instance|Selector0~1_combout\ = (\processadorinstance|seg7instance|display_state.11~regout\ & (\processadorinstance|disp3\(3))) # (!\processadorinstance|seg7instance|display_state.11~regout\ & 
-- ((\processadorinstance|seg7instance|Selector0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processadorinstance|seg7instance|display_state.11~regout\,
	datac => \processadorinstance|disp3\(3),
	datad => \processadorinstance|seg7instance|Selector0~0_combout\,
	combout => \processadorinstance|seg7instance|Selector0~1_combout\);

-- Location: LCFF_X16_Y13_N13
\processadorinstance|ulainstance|out_ula[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \processadorinstance|ulainstance|out_ula~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|ulainstance|out_ula\(5));

-- Location: LCFF_X21_Y13_N7
\processadorinstance|ulainstance|out_ula[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \processadorinstance|ulainstance|Mux3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|ulainstance|out_ula\(1));

-- Location: LCFF_X21_Y13_N31
\processadorinstance|ulainstance|out_ula[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \processadorinstance|ulainstance|Mux1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|ulainstance|out_ula\(3));

-- Location: LCCOMB_X20_Y13_N12
\processadorinstance|ulainstance|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|Mux1~0_combout\ = (!\processadorinstance|draminstance|dram~7_regout\ & !\processadorinstance|draminstance|dram~6_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processadorinstance|draminstance|dram~7_regout\,
	datad => \processadorinstance|draminstance|dram~6_regout\,
	combout => \processadorinstance|ulainstance|Mux1~0_combout\);

-- Location: LCCOMB_X18_Y13_N28
\processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|selnose[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|selnose[5]~0_combout\ = (\processadorinstance|draminstance|dram~7_regout\) # ((\processadorinstance|draminstance|dram~6_regout\) # 
-- ((!\processadorinstance|draminstance|dram~3_regout\ & \processadorinstance|draminstance|dram~5_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|draminstance|dram~3_regout\,
	datab => \processadorinstance|draminstance|dram~7_regout\,
	datac => \processadorinstance|draminstance|dram~5_regout\,
	datad => \processadorinstance|draminstance|dram~6_regout\,
	combout => \processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|selnose[5]~0_combout\);

-- Location: LCCOMB_X18_Y13_N10
\processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[4]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[4]~3_combout\ = (\processadorinstance|draminstance|dram~2_regout\ & 
-- ((\processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|selnose[5]~0_combout\) # (!\processadorinstance|draminstance|dram~4_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processadorinstance|draminstance|dram~2_regout\,
	datac => \processadorinstance|draminstance|dram~4_regout\,
	datad => \processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|selnose[5]~0_combout\,
	combout => \processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[4]~3_combout\);

-- Location: LCCOMB_X20_Y13_N14
\processadorinstance|ulainstance|Mux4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|Mux4~4_combout\ = (\processadorinstance|draminstance|dram~0_regout\ & ((\processadorinstance|opcode\(0)) # ((\processadorinstance|draminstance|dram~4_regout\ & !\processadorinstance|opcode\(1))))) # 
-- (!\processadorinstance|draminstance|dram~0_regout\ & (\processadorinstance|opcode\(0) & ((\processadorinstance|draminstance|dram~4_regout\) # (\processadorinstance|opcode\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|draminstance|dram~0_regout\,
	datab => \processadorinstance|draminstance|dram~4_regout\,
	datac => \processadorinstance|opcode\(0),
	datad => \processadorinstance|opcode\(1),
	combout => \processadorinstance|ulainstance|Mux4~4_combout\);

-- Location: LCCOMB_X20_Y13_N6
\processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|selnose[10]\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|selnose\(10) = (\processadorinstance|draminstance|dram~7_regout\) # 
-- (\processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processadorinstance|draminstance|dram~7_regout\,
	datad => \processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	combout => \processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|selnose\(10));

-- Location: LCCOMB_X22_Y13_N18
\processadorinstance|ulainstance|op_xorinstance|out[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|op_xorinstance|out\(1) = \processadorinstance|draminstance|dram~5_regout\ $ (\processadorinstance|draminstance|dram~1_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|draminstance|dram~5_regout\,
	datad => \processadorinstance|draminstance|dram~1_regout\,
	combout => \processadorinstance|ulainstance|op_xorinstance|out\(1));

-- Location: LCCOMB_X20_Y13_N30
\processadorinstance|ulainstance|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|Mux3~0_combout\ = (\processadorinstance|opcode\(0) & (!\processadorinstance|opcode\(1) & ((\processadorinstance|draminstance|dram~1_regout\) # (\processadorinstance|draminstance|dram~5_regout\)))) # 
-- (!\processadorinstance|opcode\(0) & ((\processadorinstance|opcode\(1)) # ((\processadorinstance|draminstance|dram~1_regout\ & \processadorinstance|draminstance|dram~5_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|draminstance|dram~1_regout\,
	datab => \processadorinstance|draminstance|dram~5_regout\,
	datac => \processadorinstance|opcode\(0),
	datad => \processadorinstance|opcode\(1),
	combout => \processadorinstance|ulainstance|Mux3~0_combout\);

-- Location: LCCOMB_X21_Y13_N12
\processadorinstance|ulainstance|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|Mux3~1_combout\ = (\processadorinstance|ulainstance|Mux3~0_combout\ & (((\processadorinstance|ulainstance|op_xorinstance|out\(1)) # (!\processadorinstance|ulainstance|out_ula[2]~3_combout\)))) # 
-- (!\processadorinstance|ulainstance|Mux3~0_combout\ & (!\processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|selnose\(10) & ((\processadorinstance|ulainstance|out_ula[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|selnose\(10),
	datab => \processadorinstance|ulainstance|op_xorinstance|out\(1),
	datac => \processadorinstance|ulainstance|Mux3~0_combout\,
	datad => \processadorinstance|ulainstance|out_ula[2]~3_combout\,
	combout => \processadorinstance|ulainstance|Mux3~1_combout\);

-- Location: LCCOMB_X20_Y13_N8
\processadorinstance|ulainstance|out_ula[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|out_ula[2]~4_combout\ = (\processadorinstance|opcode\(2)) # ((\processadorinstance|opcode\(0) & !\processadorinstance|opcode\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|opcode\(2),
	datab => \processadorinstance|opcode\(0),
	datad => \processadorinstance|opcode\(1),
	combout => \processadorinstance|ulainstance|out_ula[2]~4_combout\);

-- Location: LCCOMB_X21_Y13_N18
\processadorinstance|ulainstance|Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|Mux3~2_combout\ = (\processadorinstance|ulainstance|out_ula[2]~4_combout\ & ((\processadorinstance|ulainstance|out_ula[2]~5_combout\ & ((\processadorinstance|ulainstance|Mux3~1_combout\))) # 
-- (!\processadorinstance|ulainstance|out_ula[2]~5_combout\ & (\processadorinstance|ulainstance|somadorinstance|out[1]~2_combout\)))) # (!\processadorinstance|ulainstance|out_ula[2]~4_combout\ & (\processadorinstance|ulainstance|out_ula[2]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|ulainstance|out_ula[2]~4_combout\,
	datab => \processadorinstance|ulainstance|out_ula[2]~5_combout\,
	datac => \processadorinstance|ulainstance|somadorinstance|out[1]~2_combout\,
	datad => \processadorinstance|ulainstance|Mux3~1_combout\,
	combout => \processadorinstance|ulainstance|Mux3~2_combout\);

-- Location: LCCOMB_X21_Y13_N6
\processadorinstance|ulainstance|Mux3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|Mux3~3_combout\ = (\processadorinstance|ulainstance|out_ula[2]~2_combout\ & ((\processadorinstance|ulainstance|Mux3~2_combout\ & 
-- (\processadorinstance|ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\)) # (!\processadorinstance|ulainstance|Mux3~2_combout\ & ((\processadorinstance|ulainstance|subtratorinstance|out\(1)))))) # 
-- (!\processadorinstance|ulainstance|out_ula[2]~2_combout\ & (((\processadorinstance|ulainstance|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	datab => \processadorinstance|ulainstance|out_ula[2]~2_combout\,
	datac => \processadorinstance|ulainstance|subtratorinstance|out\(1),
	datad => \processadorinstance|ulainstance|Mux3~2_combout\,
	combout => \processadorinstance|ulainstance|Mux3~3_combout\);

-- Location: LCCOMB_X18_Y13_N4
\processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|selnose[5]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|selnose[5]~1_combout\ = (\processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|selnose[5]~0_combout\) # 
-- ((!\processadorinstance|draminstance|dram~2_regout\ & \processadorinstance|draminstance|dram~4_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|draminstance|dram~2_regout\,
	datab => \processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|selnose[5]~0_combout\,
	datad => \processadorinstance|draminstance|dram~4_regout\,
	combout => \processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|selnose[5]~1_combout\);

-- Location: LCCOMB_X20_Y13_N18
\processadorinstance|ulainstance|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|Mux1~1_combout\ = (\processadorinstance|draminstance|dram~3_regout\ & (!\processadorinstance|draminstance|dram~6_regout\ & (!\processadorinstance|draminstance|dram~7_regout\ & \processadorinstance|opcode\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|draminstance|dram~3_regout\,
	datab => \processadorinstance|draminstance|dram~6_regout\,
	datac => \processadorinstance|draminstance|dram~7_regout\,
	datad => \processadorinstance|opcode\(2),
	combout => \processadorinstance|ulainstance|Mux1~1_combout\);

-- Location: LCCOMB_X21_Y13_N24
\processadorinstance|ulainstance|Mux1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|Mux1~2_combout\ = (\processadorinstance|draminstance|dram~4_regout\ & (!\processadorinstance|draminstance|dram~5_regout\ & \processadorinstance|ulainstance|Mux1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|draminstance|dram~4_regout\,
	datab => \processadorinstance|draminstance|dram~5_regout\,
	datad => \processadorinstance|ulainstance|Mux1~1_combout\,
	combout => \processadorinstance|ulainstance|Mux1~2_combout\);

-- Location: LCCOMB_X21_Y13_N16
\processadorinstance|ulainstance|Mux1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|Mux1~3_combout\ = (\processadorinstance|opcode\(0) & ((\processadorinstance|ulainstance|Mux1~2_combout\) # ((!\processadorinstance|opcode\(2) & 
-- \processadorinstance|ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|opcode\(2),
	datab => \processadorinstance|opcode\(0),
	datac => \processadorinstance|ulainstance|Mux1~2_combout\,
	datad => \processadorinstance|ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\,
	combout => \processadorinstance|ulainstance|Mux1~3_combout\);

-- Location: LCCOMB_X21_Y14_N30
\processadorinstance|ulainstance|subtratorinstance|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|subtratorinstance|Add1~0_combout\ = \processadorinstance|ulainstance|subtratorinstance|resultado\(0) $ (\processadorinstance|ulainstance|subtratorinstance|s~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processadorinstance|ulainstance|subtratorinstance|resultado\(0),
	datad => \processadorinstance|ulainstance|subtratorinstance|s~regout\,
	combout => \processadorinstance|ulainstance|subtratorinstance|Add1~0_combout\);

-- Location: LCCOMB_X16_Y13_N20
\processadorinstance|ulainstance|multinstance|Mult0|mult_core|decoder_node[1][1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|multinstance|Mult0|mult_core|decoder_node[1][1]~combout\ = (\processadorinstance|draminstance|dram~5_regout\ & \processadorinstance|draminstance|dram~1_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \processadorinstance|draminstance|dram~5_regout\,
	datad => \processadorinstance|draminstance|dram~1_regout\,
	combout => \processadorinstance|ulainstance|multinstance|Mult0|mult_core|decoder_node[1][1]~combout\);

-- Location: LCCOMB_X18_Y13_N18
\processadorinstance|ulainstance|multinstance|Mult0|mult_core|decoder_node[1][0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|multinstance|Mult0|mult_core|decoder_node[1][0]~combout\ = (\processadorinstance|draminstance|dram~0_regout\ & \processadorinstance|draminstance|dram~5_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \processadorinstance|draminstance|dram~0_regout\,
	datad => \processadorinstance|draminstance|dram~5_regout\,
	combout => \processadorinstance|ulainstance|multinstance|Mult0|mult_core|decoder_node[1][0]~combout\);

-- Location: LCCOMB_X16_Y13_N10
\processadorinstance|ulainstance|multinstance|Mult0|mult_core|decoder_node[2][1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|multinstance|Mult0|mult_core|decoder_node[2][1]~combout\ = (\processadorinstance|draminstance|dram~1_regout\ & \processadorinstance|draminstance|dram~6_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processadorinstance|draminstance|dram~1_regout\,
	datad => \processadorinstance|draminstance|dram~6_regout\,
	combout => \processadorinstance|ulainstance|multinstance|Mult0|mult_core|decoder_node[2][1]~combout\);

-- Location: LCCOMB_X18_Y13_N12
\processadorinstance|ulainstance|multinstance|Mult0|mult_core|decoder_node[2][0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|multinstance|Mult0|mult_core|decoder_node[2][0]~combout\ = (\processadorinstance|draminstance|dram~0_regout\ & \processadorinstance|draminstance|dram~6_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \processadorinstance|draminstance|dram~0_regout\,
	datad => \processadorinstance|draminstance|dram~6_regout\,
	combout => \processadorinstance|ulainstance|multinstance|Mult0|mult_core|decoder_node[2][0]~combout\);

-- Location: LCCOMB_X20_Y13_N22
\processadorinstance|ulainstance|multinstance|Mult0|mult_core|decoder_node[0][0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|multinstance|Mult0|mult_core|decoder_node[0][0]~combout\ = (\processadorinstance|draminstance|dram~0_regout\ & \processadorinstance|draminstance|dram~4_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|draminstance|dram~0_regout\,
	datad => \processadorinstance|draminstance|dram~4_regout\,
	combout => \processadorinstance|ulainstance|multinstance|Mult0|mult_core|decoder_node[0][0]~combout\);

-- Location: LCCOMB_X16_Y13_N12
\processadorinstance|ulainstance|out_ula~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|out_ula~6_combout\ = (\processadorinstance|opcode\(1) & (\processadorinstance|opcode\(0) & (!\processadorinstance|opcode\(2) & 
-- \processadorinstance|ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|opcode\(1),
	datab => \processadorinstance|opcode\(0),
	datac => \processadorinstance|opcode\(2),
	datad => \processadorinstance|ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\,
	combout => \processadorinstance|ulainstance|out_ula~6_combout\);

-- Location: LCCOMB_X21_Y13_N2
\processadorinstance|ulainstance|Mux1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|Mux1~4_combout\ = (!\processadorinstance|opcode\(2) & ((\processadorinstance|opcode\(0) & ((\processadorinstance|ulainstance|somadorinstance|out[3]~6_combout\))) # (!\processadorinstance|opcode\(0) & 
-- (\processadorinstance|ulainstance|subtratorinstance|out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|opcode\(0),
	datab => \processadorinstance|ulainstance|subtratorinstance|out\(3),
	datac => \processadorinstance|ulainstance|somadorinstance|out[3]~6_combout\,
	datad => \processadorinstance|opcode\(2),
	combout => \processadorinstance|ulainstance|Mux1~4_combout\);

-- Location: LCCOMB_X21_Y13_N30
\processadorinstance|ulainstance|Mux1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|Mux1~5_combout\ = (\processadorinstance|opcode\(1) & ((\processadorinstance|ulainstance|Mux1~3_combout\) # ((!\processadorinstance|opcode\(0) & \processadorinstance|ulainstance|Mux1~4_combout\)))) # 
-- (!\processadorinstance|opcode\(1) & (\processadorinstance|opcode\(0) & ((\processadorinstance|ulainstance|Mux1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|opcode\(0),
	datab => \processadorinstance|opcode\(1),
	datac => \processadorinstance|ulainstance|Mux1~3_combout\,
	datad => \processadorinstance|ulainstance|Mux1~4_combout\,
	combout => \processadorinstance|ulainstance|Mux1~5_combout\);

-- Location: LCCOMB_X16_Y17_N8
\processadorinstance|disp2[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|disp2[3]~feeder_combout\ = \processadorinstance|draminstance|dram~7_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \processadorinstance|draminstance|dram~7_regout\,
	combout => \processadorinstance|disp2[3]~feeder_combout\);

-- Location: LCCOMB_X16_Y17_N2
\processadorinstance|disp1[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|disp1[1]~feeder_combout\ = \processadorinstance|ulainstance|out_ula\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \processadorinstance|ulainstance|out_ula\(5),
	combout => \processadorinstance|disp1[1]~feeder_combout\);

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

-- Location: LCCOMB_X22_Y13_N0
\processadorinstance|pc~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|pc~0_combout\ = (!\processadorinstance|addr_p\(0) & !\processadorinstance|pc\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \processadorinstance|addr_p\(0),
	datad => \processadorinstance|pc\(2),
	combout => \processadorinstance|pc~0_combout\);

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

-- Location: LCFF_X22_Y13_N1
\processadorinstance|addr_p[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	datain => \processadorinstance|pc~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|addr_p\(0));

-- Location: LCCOMB_X22_Y13_N26
\processadorinstance|pc~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|pc~1_combout\ = (\processadorinstance|pc\(1) & (!\processadorinstance|pc\(2) & \processadorinstance|addr_p\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processadorinstance|pc\(1),
	datac => \processadorinstance|pc\(2),
	datad => \processadorinstance|addr_p\(0),
	combout => \processadorinstance|pc~1_combout\);

-- Location: LCFF_X22_Y13_N27
\processadorinstance|pc[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	datain => \processadorinstance|pc~1_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|pc\(2));

-- Location: LCCOMB_X22_Y13_N28
\processadorinstance|pc~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|pc~2_combout\ = (!\processadorinstance|pc\(2) & (\processadorinstance|pc\(1) $ (\processadorinstance|addr_p\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processadorinstance|pc\(2),
	datac => \processadorinstance|pc\(1),
	datad => \processadorinstance|addr_p\(0),
	combout => \processadorinstance|pc~2_combout\);

-- Location: LCFF_X22_Y13_N29
\processadorinstance|pc[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	datain => \processadorinstance|pc~2_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|pc\(1));

-- Location: LCCOMB_X21_Y13_N8
\processadorinstance|prominstance|addr_reg[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|prominstance|addr_reg[1]~feeder_combout\ = \processadorinstance|pc\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \processadorinstance|pc\(1),
	combout => \processadorinstance|prominstance|addr_reg[1]~feeder_combout\);

-- Location: LCFF_X21_Y13_N9
\processadorinstance|prominstance|addr_reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \processadorinstance|prominstance|addr_reg[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|prominstance|addr_reg\(1));

-- Location: LCFF_X21_Y13_N21
\processadorinstance|prominstance|addr_reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \processadorinstance|pc\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|prominstance|addr_reg\(2));

-- Location: LCFF_X21_Y13_N11
\processadorinstance|prominstance|addr_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \processadorinstance|addr_p\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|prominstance|addr_reg\(0));

-- Location: LCCOMB_X21_Y13_N14
\processadorinstance|prominstance|prom~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|prominstance|prom~1_combout\ = (!\processadorinstance|prominstance|addr_reg\(2) & (\processadorinstance|prominstance|addr_reg\(1) $ (\processadorinstance|prominstance|addr_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processadorinstance|prominstance|addr_reg\(1),
	datac => \processadorinstance|prominstance|addr_reg\(2),
	datad => \processadorinstance|prominstance|addr_reg\(0),
	combout => \processadorinstance|prominstance|prom~1_combout\);

-- Location: LCFF_X20_Y13_N23
\processadorinstance|opcode[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	sdata => \processadorinstance|prominstance|prom~1_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|opcode\(1));

-- Location: LCCOMB_X21_Y13_N0
\processadorinstance|prominstance|prom~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|prominstance|prom~2_combout\ = (\processadorinstance|prominstance|addr_reg\(1) & (!\processadorinstance|prominstance|addr_reg\(2) & \processadorinstance|prominstance|addr_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processadorinstance|prominstance|addr_reg\(1),
	datac => \processadorinstance|prominstance|addr_reg\(2),
	datad => \processadorinstance|prominstance|addr_reg\(0),
	combout => \processadorinstance|prominstance|prom~2_combout\);

-- Location: LCFF_X20_Y13_N13
\processadorinstance|opcode[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	sdata => \processadorinstance|prominstance|prom~2_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|opcode\(2));

-- Location: LCCOMB_X21_Y13_N10
\processadorinstance|ulainstance|out_ula[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|out_ula[2]~2_combout\ = (\processadorinstance|opcode\(1) & !\processadorinstance|opcode\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processadorinstance|opcode\(1),
	datad => \processadorinstance|opcode\(2),
	combout => \processadorinstance|ulainstance|out_ula[2]~2_combout\);

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

-- Location: LCFF_X25_Y13_N19
\processadorinstance|data[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \SW~combout\(0),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|data\(4));

-- Location: LCCOMB_X18_Y13_N22
\processadorinstance|draminstance|dram~4feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|draminstance|dram~4feeder_combout\ = \processadorinstance|data\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \processadorinstance|data\(4),
	combout => \processadorinstance|draminstance|dram~4feeder_combout\);

-- Location: LCFF_X25_Y13_N5
\processadorinstance|we_d\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \KEY~combout\(2),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|we_d~regout\);

-- Location: LCFF_X18_Y13_N23
\processadorinstance|draminstance|dram~4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \processadorinstance|draminstance|dram~4feeder_combout\,
	ena => \processadorinstance|ALT_INV_we_d~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|draminstance|dram~4_regout\);

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

-- Location: LCCOMB_X22_Y13_N2
\processadorinstance|data[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|data[2]~feeder_combout\ = \SW~combout\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW~combout\(6),
	combout => \processadorinstance|data[2]~feeder_combout\);

-- Location: LCFF_X22_Y13_N3
\processadorinstance|data[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \processadorinstance|data[2]~feeder_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|data\(2));

-- Location: LCCOMB_X18_Y13_N14
\processadorinstance|draminstance|dram~2feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|draminstance|dram~2feeder_combout\ = \processadorinstance|data\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \processadorinstance|data\(2),
	combout => \processadorinstance|draminstance|dram~2feeder_combout\);

-- Location: LCFF_X18_Y13_N15
\processadorinstance|draminstance|dram~2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \processadorinstance|draminstance|dram~2feeder_combout\,
	ena => \processadorinstance|ALT_INV_we_d~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|draminstance|dram~2_regout\);

-- Location: LCCOMB_X18_Y13_N24
\processadorinstance|ulainstance|multinstance|Mult0|mult_core|decoder_node[0][2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|multinstance|Mult0|mult_core|decoder_node[0][2]~combout\ = (\processadorinstance|draminstance|dram~4_regout\ & \processadorinstance|draminstance|dram~2_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processadorinstance|draminstance|dram~4_regout\,
	datac => \processadorinstance|draminstance|dram~2_regout\,
	combout => \processadorinstance|ulainstance|multinstance|Mult0|mult_core|decoder_node[0][2]~combout\);

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

-- Location: LCCOMB_X22_Y13_N16
\processadorinstance|data[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|data[1]~feeder_combout\ = \SW~combout\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW~combout\(5),
	combout => \processadorinstance|data[1]~feeder_combout\);

-- Location: LCFF_X22_Y13_N17
\processadorinstance|data[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \processadorinstance|data[1]~feeder_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|data\(1));

-- Location: LCCOMB_X19_Y13_N16
\processadorinstance|draminstance|dram~1feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|draminstance|dram~1feeder_combout\ = \processadorinstance|data\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \processadorinstance|data\(1),
	combout => \processadorinstance|draminstance|dram~1feeder_combout\);

-- Location: LCFF_X19_Y13_N17
\processadorinstance|draminstance|dram~1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \processadorinstance|draminstance|dram~1feeder_combout\,
	ena => \processadorinstance|ALT_INV_we_d~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|draminstance|dram~1_regout\);

-- Location: LCCOMB_X16_Y13_N14
\processadorinstance|ulainstance|multinstance|Mult0|mult_core|decoder_node[0][1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|multinstance|Mult0|mult_core|decoder_node[0][1]~combout\ = (\processadorinstance|draminstance|dram~4_regout\ & \processadorinstance|draminstance|dram~1_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \processadorinstance|draminstance|dram~4_regout\,
	datad => \processadorinstance|draminstance|dram~1_regout\,
	combout => \processadorinstance|ulainstance|multinstance|Mult0|mult_core|decoder_node[0][1]~combout\);

-- Location: LCCOMB_X16_Y13_N2
\processadorinstance|ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ = (\processadorinstance|ulainstance|multinstance|Mult0|mult_core|decoder_node[1][1]~combout\ & 
-- ((\processadorinstance|ulainstance|multinstance|Mult0|mult_core|decoder_node[0][2]~combout\ & (\processadorinstance|ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ & VCC)) # 
-- (!\processadorinstance|ulainstance|multinstance|Mult0|mult_core|decoder_node[0][2]~combout\ & (!\processadorinstance|ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)))) # 
-- (!\processadorinstance|ulainstance|multinstance|Mult0|mult_core|decoder_node[1][1]~combout\ & ((\processadorinstance|ulainstance|multinstance|Mult0|mult_core|decoder_node[0][2]~combout\ & 
-- (!\processadorinstance|ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)) # (!\processadorinstance|ulainstance|multinstance|Mult0|mult_core|decoder_node[0][2]~combout\ & 
-- ((\processadorinstance|ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\) # (GND)))))
-- \processadorinstance|ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ = CARRY((\processadorinstance|ulainstance|multinstance|Mult0|mult_core|decoder_node[1][1]~combout\ & 
-- (!\processadorinstance|ulainstance|multinstance|Mult0|mult_core|decoder_node[0][2]~combout\ & !\processadorinstance|ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)) # 
-- (!\processadorinstance|ulainstance|multinstance|Mult0|mult_core|decoder_node[1][1]~combout\ & ((!\processadorinstance|ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\) # 
-- (!\processadorinstance|ulainstance|multinstance|Mult0|mult_core|decoder_node[0][2]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|ulainstance|multinstance|Mult0|mult_core|decoder_node[1][1]~combout\,
	datab => \processadorinstance|ulainstance|multinstance|Mult0|mult_core|decoder_node[0][2]~combout\,
	datad => VCC,
	cin => \processadorinstance|ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\,
	combout => \processadorinstance|ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	cout => \processadorinstance|ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\);

-- Location: LCCOMB_X16_Y13_N22
\processadorinstance|ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\ = (\processadorinstance|ulainstance|multinstance|Mult0|mult_core|decoder_node[2][0]~combout\ & 
-- (\processadorinstance|ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ $ (VCC))) # (!\processadorinstance|ulainstance|multinstance|Mult0|mult_core|decoder_node[2][0]~combout\ & 
-- (\processadorinstance|ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & VCC))
-- \processadorinstance|ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\ = CARRY((\processadorinstance|ulainstance|multinstance|Mult0|mult_core|decoder_node[2][0]~combout\ & 
-- \processadorinstance|ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|ulainstance|multinstance|Mult0|mult_core|decoder_node[2][0]~combout\,
	datab => \processadorinstance|ulainstance|multinstance|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	datad => VCC,
	combout => \processadorinstance|ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\,
	cout => \processadorinstance|ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\);

-- Location: LCCOMB_X21_Y13_N20
\processadorinstance|ulainstance|out_ula[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|out_ula[2]~5_combout\ = (\processadorinstance|opcode\(2)) # ((\processadorinstance|opcode\(0) & \processadorinstance|opcode\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|opcode\(0),
	datab => \processadorinstance|opcode\(1),
	datad => \processadorinstance|opcode\(2),
	combout => \processadorinstance|ulainstance|out_ula[2]~5_combout\);

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

-- Location: LCFF_X22_Y13_N19
\processadorinstance|data[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \SW~combout\(4),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|data\(0));

-- Location: LCCOMB_X18_Y13_N8
\processadorinstance|draminstance|dram~0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|draminstance|dram~0feeder_combout\ = \processadorinstance|data\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \processadorinstance|data\(0),
	combout => \processadorinstance|draminstance|dram~0feeder_combout\);

-- Location: LCFF_X18_Y13_N9
\processadorinstance|draminstance|dram~0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \processadorinstance|draminstance|dram~0feeder_combout\,
	ena => \processadorinstance|ALT_INV_we_d~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|draminstance|dram~0_regout\);

-- Location: LCCOMB_X22_Y13_N4
\processadorinstance|ulainstance|somadorinstance|out[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|somadorinstance|out[0]~0_combout\ = (\processadorinstance|draminstance|dram~4_regout\ & (\processadorinstance|draminstance|dram~0_regout\ $ (VCC))) # (!\processadorinstance|draminstance|dram~4_regout\ & 
-- (\processadorinstance|draminstance|dram~0_regout\ & VCC))
-- \processadorinstance|ulainstance|somadorinstance|out[0]~1\ = CARRY((\processadorinstance|draminstance|dram~4_regout\ & \processadorinstance|draminstance|dram~0_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|draminstance|dram~4_regout\,
	datab => \processadorinstance|draminstance|dram~0_regout\,
	datad => VCC,
	combout => \processadorinstance|ulainstance|somadorinstance|out[0]~0_combout\,
	cout => \processadorinstance|ulainstance|somadorinstance|out[0]~1\);

-- Location: LCCOMB_X22_Y13_N30
\processadorinstance|ulainstance|op_xorinstance|out[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|op_xorinstance|out\(2) = \processadorinstance|draminstance|dram~6_regout\ $ (\processadorinstance|draminstance|dram~2_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|draminstance|dram~6_regout\,
	datad => \processadorinstance|draminstance|dram~2_regout\,
	combout => \processadorinstance|ulainstance|op_xorinstance|out\(2));

-- Location: LCCOMB_X21_Y13_N26
\processadorinstance|prominstance|prom~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|prominstance|prom~0_combout\ = (!\processadorinstance|prominstance|addr_reg\(2) & !\processadorinstance|prominstance|addr_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \processadorinstance|prominstance|addr_reg\(2),
	datad => \processadorinstance|prominstance|addr_reg\(0),
	combout => \processadorinstance|prominstance|prom~0_combout\);

-- Location: LCFF_X20_Y13_N15
\processadorinstance|opcode[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	sdata => \processadorinstance|prominstance|prom~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|opcode\(0));

-- Location: LCCOMB_X20_Y13_N20
\processadorinstance|ulainstance|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|Mux2~0_combout\ = (\processadorinstance|opcode\(0) & (!\processadorinstance|opcode\(1) & ((\processadorinstance|draminstance|dram~6_regout\) # (\processadorinstance|draminstance|dram~2_regout\)))) # 
-- (!\processadorinstance|opcode\(0) & ((\processadorinstance|opcode\(1)) # ((\processadorinstance|draminstance|dram~6_regout\ & \processadorinstance|draminstance|dram~2_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|draminstance|dram~6_regout\,
	datab => \processadorinstance|draminstance|dram~2_regout\,
	datac => \processadorinstance|opcode\(0),
	datad => \processadorinstance|opcode\(1),
	combout => \processadorinstance|ulainstance|Mux2~0_combout\);

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

-- Location: LCCOMB_X25_Y13_N16
\processadorinstance|data[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|data[5]~feeder_combout\ = \SW~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW~combout\(1),
	combout => \processadorinstance|data[5]~feeder_combout\);

-- Location: LCFF_X25_Y13_N17
\processadorinstance|data[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \processadorinstance|data[5]~feeder_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|data\(5));

-- Location: LCCOMB_X18_Y13_N16
\processadorinstance|draminstance|dram~5feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|draminstance|dram~5feeder_combout\ = \processadorinstance|data\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \processadorinstance|data\(5),
	combout => \processadorinstance|draminstance|dram~5feeder_combout\);

-- Location: LCFF_X18_Y13_N17
\processadorinstance|draminstance|dram~5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \processadorinstance|draminstance|dram~5feeder_combout\,
	ena => \processadorinstance|ALT_INV_we_d~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|draminstance|dram~5_regout\);

-- Location: LCCOMB_X19_Y13_N30
\processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[5]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[5]~0_combout\ = (!\processadorinstance|draminstance|dram~4_regout\ & !\processadorinstance|draminstance|dram~5_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processadorinstance|draminstance|dram~4_regout\,
	datad => \processadorinstance|draminstance|dram~5_regout\,
	combout => \processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[5]~0_combout\);

-- Location: LCCOMB_X20_Y13_N16
\processadorinstance|ulainstance|out_ula[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|out_ula[2]~3_combout\ = (\processadorinstance|opcode\(1) & (((!\processadorinstance|opcode\(0)) # (!\processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[5]~0_combout\)) # 
-- (!\processadorinstance|ulainstance|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|ulainstance|Mux1~0_combout\,
	datab => \processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[5]~0_combout\,
	datac => \processadorinstance|opcode\(0),
	datad => \processadorinstance|opcode\(1),
	combout => \processadorinstance|ulainstance|out_ula[2]~3_combout\);

-- Location: LCCOMB_X21_Y13_N28
\processadorinstance|ulainstance|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|Mux2~1_combout\ = (\processadorinstance|ulainstance|Mux2~0_combout\ & (((\processadorinstance|ulainstance|op_xorinstance|out\(2)) # (!\processadorinstance|ulainstance|out_ula[2]~3_combout\)))) # 
-- (!\processadorinstance|ulainstance|Mux2~0_combout\ & (!\processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|selnose[5]~1_combout\ & ((\processadorinstance|ulainstance|out_ula[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|selnose[5]~1_combout\,
	datab => \processadorinstance|ulainstance|op_xorinstance|out\(2),
	datac => \processadorinstance|ulainstance|Mux2~0_combout\,
	datad => \processadorinstance|ulainstance|out_ula[2]~3_combout\,
	combout => \processadorinstance|ulainstance|Mux2~1_combout\);

-- Location: LCCOMB_X21_Y13_N22
\processadorinstance|ulainstance|Mux2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|Mux2~2_combout\ = (\processadorinstance|ulainstance|out_ula[2]~4_combout\ & ((\processadorinstance|ulainstance|out_ula[2]~5_combout\ & ((\processadorinstance|ulainstance|Mux2~1_combout\))) # 
-- (!\processadorinstance|ulainstance|out_ula[2]~5_combout\ & (\processadorinstance|ulainstance|somadorinstance|out[2]~4_combout\)))) # (!\processadorinstance|ulainstance|out_ula[2]~4_combout\ & (\processadorinstance|ulainstance|out_ula[2]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|ulainstance|out_ula[2]~4_combout\,
	datab => \processadorinstance|ulainstance|out_ula[2]~5_combout\,
	datac => \processadorinstance|ulainstance|somadorinstance|out[2]~4_combout\,
	datad => \processadorinstance|ulainstance|Mux2~1_combout\,
	combout => \processadorinstance|ulainstance|Mux2~2_combout\);

-- Location: LCCOMB_X21_Y13_N4
\processadorinstance|ulainstance|Mux2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|Mux2~3_combout\ = (\processadorinstance|ulainstance|out_ula[2]~2_combout\ & ((\processadorinstance|ulainstance|Mux2~2_combout\ & 
-- ((\processadorinstance|ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\))) # (!\processadorinstance|ulainstance|Mux2~2_combout\ & (\processadorinstance|ulainstance|subtratorinstance|out\(2))))) # 
-- (!\processadorinstance|ulainstance|out_ula[2]~2_combout\ & (((\processadorinstance|ulainstance|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|ulainstance|subtratorinstance|out\(2),
	datab => \processadorinstance|ulainstance|out_ula[2]~2_combout\,
	datac => \processadorinstance|ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\,
	datad => \processadorinstance|ulainstance|Mux2~2_combout\,
	combout => \processadorinstance|ulainstance|Mux2~3_combout\);

-- Location: LCFF_X21_Y13_N5
\processadorinstance|ulainstance|out_ula[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \processadorinstance|ulainstance|Mux2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|ulainstance|out_ula\(2));

-- Location: LCCOMB_X16_Y17_N28
\processadorinstance|disp0[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|disp0[2]~feeder_combout\ = \processadorinstance|ulainstance|out_ula\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \processadorinstance|ulainstance|out_ula\(2),
	combout => \processadorinstance|disp0[2]~feeder_combout\);

-- Location: LCFF_X16_Y17_N29
\processadorinstance|disp0[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \processadorinstance|disp0[2]~feeder_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|disp0\(2));

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

-- Location: LCCOMB_X25_Y13_N10
\processadorinstance|data[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|data[6]~feeder_combout\ = \SW~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW~combout\(2),
	combout => \processadorinstance|data[6]~feeder_combout\);

-- Location: LCFF_X25_Y13_N11
\processadorinstance|data[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \processadorinstance|data[6]~feeder_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|data\(6));

-- Location: LCCOMB_X18_Y13_N30
\processadorinstance|draminstance|dram~6feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|draminstance|dram~6feeder_combout\ = \processadorinstance|data\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \processadorinstance|data\(6),
	combout => \processadorinstance|draminstance|dram~6feeder_combout\);

-- Location: LCFF_X18_Y13_N31
\processadorinstance|draminstance|dram~6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \processadorinstance|draminstance|dram~6feeder_combout\,
	ena => \processadorinstance|ALT_INV_we_d~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|draminstance|dram~6_regout\);

-- Location: LCFF_X16_Y17_N15
\processadorinstance|disp2[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \processadorinstance|draminstance|dram~6_regout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|disp2\(2));

-- Location: LCCOMB_X16_Y17_N18
\processadorinstance|seg7instance|display_state.11~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|seg7instance|display_state.11~feeder_combout\ = \processadorinstance|seg7instance|display_state.10~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \processadorinstance|seg7instance|display_state.10~regout\,
	combout => \processadorinstance|seg7instance|display_state.11~feeder_combout\);

-- Location: LCFF_X16_Y17_N19
\processadorinstance|seg7instance|display_state.11\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \processadorinstance|seg7instance|display_state.11~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|seg7instance|display_state.11~regout\);

-- Location: LCCOMB_X12_Y21_N16
\processadorinstance|seg7instance|display_state.00~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|seg7instance|display_state.00~0_combout\ = !\processadorinstance|seg7instance|display_state.11~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \processadorinstance|seg7instance|display_state.11~regout\,
	combout => \processadorinstance|seg7instance|display_state.00~0_combout\);

-- Location: LCFF_X12_Y21_N17
\processadorinstance|seg7instance|display_state.00\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \processadorinstance|seg7instance|display_state.00~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|seg7instance|display_state.00~regout\);

-- Location: LCCOMB_X12_Y21_N10
\processadorinstance|seg7instance|display_state.01~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|seg7instance|display_state.01~0_combout\ = !\processadorinstance|seg7instance|display_state.00~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \processadorinstance|seg7instance|display_state.00~regout\,
	combout => \processadorinstance|seg7instance|display_state.01~0_combout\);

-- Location: LCFF_X16_Y17_N17
\processadorinstance|seg7instance|display_state.01\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \processadorinstance|seg7instance|display_state.01~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|seg7instance|display_state.01~regout\);

-- Location: LCFF_X16_Y17_N11
\processadorinstance|seg7instance|display_state.10\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \processadorinstance|seg7instance|display_state.01~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|seg7instance|display_state.10~regout\);

-- Location: LCCOMB_X16_Y17_N14
\processadorinstance|seg7instance|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|seg7instance|Selector1~0_combout\ = (\processadorinstance|seg7instance|display_state.10~regout\ & (((\processadorinstance|disp2\(2))))) # (!\processadorinstance|seg7instance|display_state.10~regout\ & 
-- (!\processadorinstance|seg7instance|display_state.01~regout\ & (\processadorinstance|disp0\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|seg7instance|display_state.01~regout\,
	datab => \processadorinstance|disp0\(2),
	datac => \processadorinstance|disp2\(2),
	datad => \processadorinstance|seg7instance|display_state.10~regout\,
	combout => \processadorinstance|seg7instance|Selector1~0_combout\);

-- Location: LCFF_X16_Y17_N1
\processadorinstance|disp3[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \processadorinstance|draminstance|dram~2_regout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|disp3\(2));

-- Location: LCCOMB_X16_Y17_N0
\processadorinstance|seg7instance|Selector1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|seg7instance|Selector1~1_combout\ = (\processadorinstance|seg7instance|display_state.11~regout\ & ((\processadorinstance|disp3\(2)))) # (!\processadorinstance|seg7instance|display_state.11~regout\ & 
-- (\processadorinstance|seg7instance|Selector1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processadorinstance|seg7instance|Selector1~0_combout\,
	datac => \processadorinstance|disp3\(2),
	datad => \processadorinstance|seg7instance|display_state.11~regout\,
	combout => \processadorinstance|seg7instance|Selector1~1_combout\);

-- Location: LCCOMB_X16_Y17_N22
\processadorinstance|seg7instance|Selector2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|seg7instance|Selector2~1_combout\ = \processadorinstance|seg7instance|display_state.11~regout\ $ (\processadorinstance|seg7instance|display_state.10~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processadorinstance|seg7instance|display_state.11~regout\,
	datad => \processadorinstance|seg7instance|display_state.10~regout\,
	combout => \processadorinstance|seg7instance|Selector2~1_combout\);

-- Location: LCCOMB_X20_Y13_N4
\processadorinstance|ulainstance|subtratorinstance|s~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|subtratorinstance|s~0_combout\ = (\processadorinstance|ulainstance|subtratorinstance|resultado\(4) & (!\processadorinstance|opcode\(2) & (!\processadorinstance|opcode\(0) & \processadorinstance|opcode\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|ulainstance|subtratorinstance|resultado\(4),
	datab => \processadorinstance|opcode\(2),
	datac => \processadorinstance|opcode\(0),
	datad => \processadorinstance|opcode\(1),
	combout => \processadorinstance|ulainstance|subtratorinstance|s~0_combout\);

-- Location: LCFF_X20_Y13_N5
\processadorinstance|ulainstance|subtratorinstance|s\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \processadorinstance|ulainstance|subtratorinstance|s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|ulainstance|subtratorinstance|s~regout\);

-- Location: LCCOMB_X21_Y14_N16
\processadorinstance|ulainstance|subtratorinstance|out[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|subtratorinstance|out[0]~5_combout\ = (\processadorinstance|ulainstance|subtratorinstance|Add1~0_combout\ & (\processadorinstance|ulainstance|subtratorinstance|s~regout\ $ (VCC))) # 
-- (!\processadorinstance|ulainstance|subtratorinstance|Add1~0_combout\ & (\processadorinstance|ulainstance|subtratorinstance|s~regout\ & VCC))
-- \processadorinstance|ulainstance|subtratorinstance|out[0]~6\ = CARRY((\processadorinstance|ulainstance|subtratorinstance|Add1~0_combout\ & \processadorinstance|ulainstance|subtratorinstance|s~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|ulainstance|subtratorinstance|Add1~0_combout\,
	datab => \processadorinstance|ulainstance|subtratorinstance|s~regout\,
	datad => VCC,
	combout => \processadorinstance|ulainstance|subtratorinstance|out[0]~5_combout\,
	cout => \processadorinstance|ulainstance|subtratorinstance|out[0]~6\);

-- Location: LCFF_X21_Y14_N17
\processadorinstance|ulainstance|subtratorinstance|out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \processadorinstance|ulainstance|subtratorinstance|out[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|ulainstance|subtratorinstance|out\(0));

-- Location: LCCOMB_X20_Y13_N24
\processadorinstance|ulainstance|Mux4~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|Mux4~6_combout\ = (\processadorinstance|opcode\(1) & ((\processadorinstance|opcode\(0) & (\processadorinstance|ulainstance|multinstance|Mult0|mult_core|decoder_node[0][0]~combout\)) # (!\processadorinstance|opcode\(0) & 
-- ((\processadorinstance|ulainstance|subtratorinstance|out\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|ulainstance|multinstance|Mult0|mult_core|decoder_node[0][0]~combout\,
	datab => \processadorinstance|opcode\(0),
	datac => \processadorinstance|ulainstance|subtratorinstance|out\(0),
	datad => \processadorinstance|opcode\(1),
	combout => \processadorinstance|ulainstance|Mux4~6_combout\);

-- Location: LCCOMB_X20_Y13_N26
\processadorinstance|ulainstance|Mux4~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|Mux4~7_combout\ = (\processadorinstance|ulainstance|Mux4~6_combout\) # ((\processadorinstance|ulainstance|somadorinstance|out[0]~0_combout\ & (\processadorinstance|opcode\(0) & !\processadorinstance|opcode\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|ulainstance|somadorinstance|out[0]~0_combout\,
	datab => \processadorinstance|opcode\(0),
	datac => \processadorinstance|ulainstance|Mux4~6_combout\,
	datad => \processadorinstance|opcode\(1),
	combout => \processadorinstance|ulainstance|Mux4~7_combout\);

-- Location: LCCOMB_X19_Y13_N22
\processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ = (\processadorinstance|draminstance|dram~1_regout\ & ((GND) # (!\processadorinstance|draminstance|dram~4_regout\))) # 
-- (!\processadorinstance|draminstance|dram~1_regout\ & (\processadorinstance|draminstance|dram~4_regout\ $ (GND)))
-- \processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ = CARRY((\processadorinstance|draminstance|dram~1_regout\) # (!\processadorinstance|draminstance|dram~4_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|draminstance|dram~1_regout\,
	datab => \processadorinstance|draminstance|dram~4_regout\,
	datad => VCC,
	combout => \processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	cout => \processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\);

-- Location: LCCOMB_X19_Y13_N24
\processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ = (\processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[4]~3_combout\ & 
-- ((\processadorinstance|draminstance|dram~5_regout\ & (!\processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)) # (!\processadorinstance|draminstance|dram~5_regout\ & 
-- (\processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ & VCC)))) # (!\processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[4]~3_combout\ & 
-- ((\processadorinstance|draminstance|dram~5_regout\ & ((\processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\) # (GND))) # (!\processadorinstance|draminstance|dram~5_regout\ & 
-- (!\processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\))))
-- \processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ = CARRY((\processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[4]~3_combout\ & 
-- (\processadorinstance|draminstance|dram~5_regout\ & !\processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)) # 
-- (!\processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[4]~3_combout\ & ((\processadorinstance|draminstance|dram~5_regout\) # 
-- (!\processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[4]~3_combout\,
	datab => \processadorinstance|draminstance|dram~5_regout\,
	datad => VCC,
	cin => \processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\,
	combout => \processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	cout => \processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\);

-- Location: LCCOMB_X19_Y13_N26
\processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ = ((\processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[5]~2_combout\ $ 
-- (\processadorinstance|draminstance|dram~6_regout\ $ (\processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)))) # (GND)
-- \processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ = CARRY((\processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[5]~2_combout\ & 
-- ((!\processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\) # (!\processadorinstance|draminstance|dram~6_regout\))) # 
-- (!\processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[5]~2_combout\ & (!\processadorinstance|draminstance|dram~6_regout\ & 
-- !\processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[5]~2_combout\,
	datab => \processadorinstance|draminstance|dram~6_regout\,
	datad => VCC,
	cin => \processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\,
	combout => \processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	cout => \processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\);

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

-- Location: LCCOMB_X22_Y13_N22
\processadorinstance|data[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|data[7]~feeder_combout\ = \SW~combout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW~combout\(3),
	combout => \processadorinstance|data[7]~feeder_combout\);

-- Location: LCFF_X22_Y13_N23
\processadorinstance|data[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \processadorinstance|data[7]~feeder_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|data\(7));

-- Location: LCFF_X18_Y13_N5
\processadorinstance|draminstance|dram~7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \processadorinstance|data\(7),
	sload => VCC,
	ena => \processadorinstance|ALT_INV_we_d~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|draminstance|dram~7_regout\);

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

-- Location: LCCOMB_X22_Y13_N24
\processadorinstance|data[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|data[3]~feeder_combout\ = \SW~combout\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW~combout\(7),
	combout => \processadorinstance|data[3]~feeder_combout\);

-- Location: LCFF_X22_Y13_N25
\processadorinstance|data[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \processadorinstance|data[3]~feeder_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|data\(3));

-- Location: LCCOMB_X18_Y13_N20
\processadorinstance|draminstance|dram~3feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|draminstance|dram~3feeder_combout\ = \processadorinstance|data\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \processadorinstance|data\(3),
	combout => \processadorinstance|draminstance|dram~3feeder_combout\);

-- Location: LCFF_X18_Y13_N21
\processadorinstance|draminstance|dram~3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \processadorinstance|draminstance|dram~3feeder_combout\,
	ena => \processadorinstance|ALT_INV_we_d~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|draminstance|dram~3_regout\);

-- Location: LCCOMB_X18_Y13_N2
\processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[5]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[5]~1_combout\ = (\processadorinstance|draminstance|dram~5_regout\ & (!\processadorinstance|draminstance|dram~2_regout\ & 
-- \processadorinstance|draminstance|dram~4_regout\)) # (!\processadorinstance|draminstance|dram~5_regout\ & ((!\processadorinstance|draminstance|dram~4_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processadorinstance|draminstance|dram~2_regout\,
	datac => \processadorinstance|draminstance|dram~5_regout\,
	datad => \processadorinstance|draminstance|dram~4_regout\,
	combout => \processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[5]~1_combout\);

-- Location: LCCOMB_X19_Y13_N20
\processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[5]~2_combout\ = (\processadorinstance|draminstance|dram~3_regout\ & ((\processadorinstance|draminstance|dram~6_regout\) # 
-- ((\processadorinstance|draminstance|dram~7_regout\) # (\processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[5]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|draminstance|dram~6_regout\,
	datab => \processadorinstance|draminstance|dram~7_regout\,
	datac => \processadorinstance|draminstance|dram~3_regout\,
	datad => \processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[5]~1_combout\,
	combout => \processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[5]~2_combout\);

-- Location: LCCOMB_X19_Y13_N28
\processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ = !\processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\,
	combout => \processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\);

-- Location: LCCOMB_X19_Y13_N4
\processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[10]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[10]~4_combout\ = (\processadorinstance|draminstance|dram~7_regout\ & 
-- (((\processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[5]~2_combout\)))) # (!\processadorinstance|draminstance|dram~7_regout\ & 
-- ((\processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[5]~2_combout\))) # 
-- (!\processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|draminstance|dram~7_regout\,
	datab => \processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	datac => \processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[5]~2_combout\,
	datad => \processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	combout => \processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[10]~4_combout\);

-- Location: LCCOMB_X19_Y13_N2
\processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[9]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[9]~5_combout\ = (\processadorinstance|draminstance|dram~7_regout\ & 
-- (\processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[4]~3_combout\)) # (!\processadorinstance|draminstance|dram~7_regout\ & 
-- ((\processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[4]~3_combout\)) # 
-- (!\processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[4]~3_combout\,
	datab => \processadorinstance|draminstance|dram~7_regout\,
	datac => \processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	datad => \processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	combout => \processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[9]~5_combout\);

-- Location: LCCOMB_X19_Y13_N0
\processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[8]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[8]~6_combout\ = (\processadorinstance|draminstance|dram~7_regout\ & (((\processadorinstance|draminstance|dram~1_regout\)))) # 
-- (!\processadorinstance|draminstance|dram~7_regout\ & ((\processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((\processadorinstance|draminstance|dram~1_regout\))) # 
-- (!\processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|draminstance|dram~7_regout\,
	datab => \processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	datac => \processadorinstance|draminstance|dram~1_regout\,
	datad => \processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	combout => \processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[8]~6_combout\);

-- Location: LCCOMB_X19_Y13_N6
\processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\ = CARRY((\processadorinstance|draminstance|dram~0_regout\) # (!\processadorinstance|draminstance|dram~4_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|draminstance|dram~4_regout\,
	datab => \processadorinstance|draminstance|dram~0_regout\,
	datad => VCC,
	cout => \processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\);

-- Location: LCCOMB_X19_Y13_N8
\processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\ = CARRY((\processadorinstance|draminstance|dram~5_regout\ & 
-- ((!\processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\) # (!\processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[8]~6_combout\))) # 
-- (!\processadorinstance|draminstance|dram~5_regout\ & (!\processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[8]~6_combout\ & 
-- !\processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|draminstance|dram~5_regout\,
	datab => \processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[8]~6_combout\,
	datad => VCC,
	cin => \processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\,
	cout => \processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\);

-- Location: LCCOMB_X19_Y13_N10
\processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\ = CARRY((\processadorinstance|draminstance|dram~6_regout\ & 
-- (\processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[9]~5_combout\ & !\processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\)) # 
-- (!\processadorinstance|draminstance|dram~6_regout\ & ((\processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[9]~5_combout\) # 
-- (!\processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|draminstance|dram~6_regout\,
	datab => \processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[9]~5_combout\,
	datad => VCC,
	cin => \processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\,
	cout => \processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\);

-- Location: LCCOMB_X19_Y13_N12
\processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\ = CARRY((\processadorinstance|draminstance|dram~7_regout\ & 
-- ((!\processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\) # (!\processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[10]~4_combout\))) # 
-- (!\processadorinstance|draminstance|dram~7_regout\ & (!\processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[10]~4_combout\ & 
-- !\processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|draminstance|dram~7_regout\,
	datab => \processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[10]~4_combout\,
	datad => VCC,
	cin => \processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\,
	cout => \processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\);

-- Location: LCCOMB_X19_Y13_N14
\processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ = \processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\,
	combout => \processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\);

-- Location: LCCOMB_X19_Y13_N18
\processadorinstance|ulainstance|Mux4~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|Mux4~9_combout\ = (\processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\) # ((!\processadorinstance|draminstance|dram~7_regout\ & 
-- (\processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[5]~0_combout\ & !\processadorinstance|draminstance|dram~6_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|draminstance|dram~7_regout\,
	datab => \processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|StageOut[5]~0_combout\,
	datac => \processadorinstance|ulainstance|divinstance|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datad => \processadorinstance|draminstance|dram~6_regout\,
	combout => \processadorinstance|ulainstance|Mux4~9_combout\);

-- Location: LCCOMB_X20_Y13_N2
\processadorinstance|ulainstance|Mux4~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|Mux4~5_combout\ = (\processadorinstance|ulainstance|Mux4~4_combout\ & (((!\processadorinstance|ulainstance|Mux4~9_combout\)) # (!\processadorinstance|opcode\(1)))) # (!\processadorinstance|ulainstance|Mux4~4_combout\ & 
-- (\processadorinstance|opcode\(1) & (\processadorinstance|ulainstance|somadorinstance|out[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|ulainstance|Mux4~4_combout\,
	datab => \processadorinstance|opcode\(1),
	datac => \processadorinstance|ulainstance|somadorinstance|out[0]~0_combout\,
	datad => \processadorinstance|ulainstance|Mux4~9_combout\,
	combout => \processadorinstance|ulainstance|Mux4~5_combout\);

-- Location: LCCOMB_X20_Y13_N28
\processadorinstance|ulainstance|Mux4~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|Mux4~8_combout\ = (\processadorinstance|opcode\(2) & ((\processadorinstance|ulainstance|Mux4~5_combout\))) # (!\processadorinstance|opcode\(2) & (\processadorinstance|ulainstance|Mux4~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processadorinstance|ulainstance|Mux4~7_combout\,
	datac => \processadorinstance|opcode\(2),
	datad => \processadorinstance|ulainstance|Mux4~5_combout\,
	combout => \processadorinstance|ulainstance|Mux4~8_combout\);

-- Location: LCFF_X20_Y13_N29
\processadorinstance|ulainstance|out_ula[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \processadorinstance|ulainstance|Mux4~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|ulainstance|out_ula\(0));

-- Location: LCFF_X16_Y17_N5
\processadorinstance|disp0[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \processadorinstance|ulainstance|out_ula\(0),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|disp0\(0));

-- Location: LCFF_X16_Y17_N21
\processadorinstance|disp2[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \processadorinstance|draminstance|dram~4_regout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|disp2\(0));

-- Location: LCCOMB_X16_Y17_N4
\processadorinstance|seg7instance|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|seg7instance|Selector3~0_combout\ = (\processadorinstance|seg7instance|Selector2~0_combout\ & (\processadorinstance|seg7instance|Selector2~1_combout\)) # (!\processadorinstance|seg7instance|Selector2~0_combout\ & 
-- ((\processadorinstance|seg7instance|Selector2~1_combout\ & ((\processadorinstance|disp2\(0)))) # (!\processadorinstance|seg7instance|Selector2~1_combout\ & (\processadorinstance|disp0\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|seg7instance|Selector2~0_combout\,
	datab => \processadorinstance|seg7instance|Selector2~1_combout\,
	datac => \processadorinstance|disp0\(0),
	datad => \processadorinstance|disp2\(0),
	combout => \processadorinstance|seg7instance|Selector3~0_combout\);

-- Location: LCCOMB_X21_Y14_N2
\processadorinstance|ulainstance|subtratorinstance|resultado[1]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|subtratorinstance|resultado[1]~7_combout\ = (\processadorinstance|draminstance|dram~1_regout\ & ((\processadorinstance|draminstance|dram~5_regout\ & (!\processadorinstance|ulainstance|subtratorinstance|resultado[0]~6\)) # 
-- (!\processadorinstance|draminstance|dram~5_regout\ & (\processadorinstance|ulainstance|subtratorinstance|resultado[0]~6\ & VCC)))) # (!\processadorinstance|draminstance|dram~1_regout\ & ((\processadorinstance|draminstance|dram~5_regout\ & 
-- ((\processadorinstance|ulainstance|subtratorinstance|resultado[0]~6\) # (GND))) # (!\processadorinstance|draminstance|dram~5_regout\ & (!\processadorinstance|ulainstance|subtratorinstance|resultado[0]~6\))))
-- \processadorinstance|ulainstance|subtratorinstance|resultado[1]~8\ = CARRY((\processadorinstance|draminstance|dram~1_regout\ & (\processadorinstance|draminstance|dram~5_regout\ & !\processadorinstance|ulainstance|subtratorinstance|resultado[0]~6\)) # 
-- (!\processadorinstance|draminstance|dram~1_regout\ & ((\processadorinstance|draminstance|dram~5_regout\) # (!\processadorinstance|ulainstance|subtratorinstance|resultado[0]~6\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|draminstance|dram~1_regout\,
	datab => \processadorinstance|draminstance|dram~5_regout\,
	datad => VCC,
	cin => \processadorinstance|ulainstance|subtratorinstance|resultado[0]~6\,
	combout => \processadorinstance|ulainstance|subtratorinstance|resultado[1]~7_combout\,
	cout => \processadorinstance|ulainstance|subtratorinstance|resultado[1]~8\);

-- Location: LCCOMB_X21_Y14_N4
\processadorinstance|ulainstance|subtratorinstance|resultado[2]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|subtratorinstance|resultado[2]~9_combout\ = ((\processadorinstance|draminstance|dram~6_regout\ $ (\processadorinstance|draminstance|dram~2_regout\ $ (\processadorinstance|ulainstance|subtratorinstance|resultado[1]~8\)))) # 
-- (GND)
-- \processadorinstance|ulainstance|subtratorinstance|resultado[2]~10\ = CARRY((\processadorinstance|draminstance|dram~6_regout\ & (\processadorinstance|draminstance|dram~2_regout\ & !\processadorinstance|ulainstance|subtratorinstance|resultado[1]~8\)) # 
-- (!\processadorinstance|draminstance|dram~6_regout\ & ((\processadorinstance|draminstance|dram~2_regout\) # (!\processadorinstance|ulainstance|subtratorinstance|resultado[1]~8\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|draminstance|dram~6_regout\,
	datab => \processadorinstance|draminstance|dram~2_regout\,
	datad => VCC,
	cin => \processadorinstance|ulainstance|subtratorinstance|resultado[1]~8\,
	combout => \processadorinstance|ulainstance|subtratorinstance|resultado[2]~9_combout\,
	cout => \processadorinstance|ulainstance|subtratorinstance|resultado[2]~10\);

-- Location: LCCOMB_X21_Y14_N8
\processadorinstance|ulainstance|subtratorinstance|resultado[4]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|subtratorinstance|resultado[4]~13_combout\ = \processadorinstance|ulainstance|subtratorinstance|resultado[3]~12\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \processadorinstance|ulainstance|subtratorinstance|resultado[3]~12\,
	combout => \processadorinstance|ulainstance|subtratorinstance|resultado[4]~13_combout\);

-- Location: LCFF_X21_Y14_N9
\processadorinstance|ulainstance|subtratorinstance|resultado[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \processadorinstance|ulainstance|subtratorinstance|resultado[4]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|ulainstance|subtratorinstance|resultado\(4));

-- Location: LCFF_X21_Y14_N5
\processadorinstance|ulainstance|subtratorinstance|resultado[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \processadorinstance|ulainstance|subtratorinstance|resultado[2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|ulainstance|subtratorinstance|resultado\(2));

-- Location: LCFF_X21_Y14_N3
\processadorinstance|ulainstance|subtratorinstance|resultado[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \processadorinstance|ulainstance|subtratorinstance|resultado[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|ulainstance|subtratorinstance|resultado\(1));

-- Location: LCCOMB_X21_Y14_N24
\processadorinstance|ulainstance|subtratorinstance|out[4]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|subtratorinstance|out[4]~13_combout\ = \processadorinstance|ulainstance|subtratorinstance|s~regout\ $ (\processadorinstance|ulainstance|subtratorinstance|out[3]~12\ $ 
-- (!\processadorinstance|ulainstance|subtratorinstance|resultado\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \processadorinstance|ulainstance|subtratorinstance|s~regout\,
	datad => \processadorinstance|ulainstance|subtratorinstance|resultado\(4),
	cin => \processadorinstance|ulainstance|subtratorinstance|out[3]~12\,
	combout => \processadorinstance|ulainstance|subtratorinstance|out[4]~13_combout\);

-- Location: LCFF_X21_Y14_N25
\processadorinstance|ulainstance|subtratorinstance|out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \processadorinstance|ulainstance|subtratorinstance|out[4]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|ulainstance|subtratorinstance|out\(4));

-- Location: LCCOMB_X16_Y13_N8
\processadorinstance|ulainstance|multinstance|Mult0|mult_core|decoder_node[2][2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|multinstance|Mult0|mult_core|decoder_node[2][2]~combout\ = (\processadorinstance|draminstance|dram~6_regout\ & \processadorinstance|draminstance|dram~2_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processadorinstance|draminstance|dram~6_regout\,
	datad => \processadorinstance|draminstance|dram~2_regout\,
	combout => \processadorinstance|ulainstance|multinstance|Mult0|mult_core|decoder_node[2][2]~combout\);

-- Location: LCCOMB_X16_Y13_N30
\processadorinstance|ulainstance|multinstance|Mult0|mult_core|decoder_node[1][2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|multinstance|Mult0|mult_core|decoder_node[1][2]~combout\ = (\processadorinstance|draminstance|dram~5_regout\ & \processadorinstance|draminstance|dram~2_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \processadorinstance|draminstance|dram~5_regout\,
	datad => \processadorinstance|draminstance|dram~2_regout\,
	combout => \processadorinstance|ulainstance|multinstance|Mult0|mult_core|decoder_node[1][2]~combout\);

-- Location: LCCOMB_X20_Y13_N0
\processadorinstance|ulainstance|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|Mux0~0_combout\ = (\processadorinstance|opcode\(1) & (((\processadorinstance|ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\) # (!\processadorinstance|opcode\(0))))) # 
-- (!\processadorinstance|opcode\(1) & (\processadorinstance|ulainstance|somadorinstance|out[4]~8_combout\ & (\processadorinstance|opcode\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|ulainstance|somadorinstance|out[4]~8_combout\,
	datab => \processadorinstance|opcode\(1),
	datac => \processadorinstance|opcode\(0),
	datad => \processadorinstance|ulainstance|multinstance|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\,
	combout => \processadorinstance|ulainstance|Mux0~0_combout\);

-- Location: LCCOMB_X20_Y13_N10
\processadorinstance|ulainstance|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|Mux0~1_combout\ = (!\processadorinstance|opcode\(2) & (\processadorinstance|ulainstance|Mux0~0_combout\ & ((\processadorinstance|ulainstance|subtratorinstance|out\(4)) # (\processadorinstance|opcode\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|opcode\(2),
	datab => \processadorinstance|ulainstance|subtratorinstance|out\(4),
	datac => \processadorinstance|opcode\(0),
	datad => \processadorinstance|ulainstance|Mux0~0_combout\,
	combout => \processadorinstance|ulainstance|Mux0~1_combout\);

-- Location: LCFF_X20_Y13_N11
\processadorinstance|ulainstance|out_ula[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \processadorinstance|ulainstance|Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|ulainstance|out_ula\(4));

-- Location: LCFF_X16_Y17_N13
\processadorinstance|disp1[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \processadorinstance|ulainstance|out_ula\(4),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|disp1\(0));

-- Location: LCFF_X20_Y13_N9
\processadorinstance|disp3[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \processadorinstance|draminstance|dram~0_regout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|disp3\(0));

-- Location: LCCOMB_X16_Y17_N12
\processadorinstance|seg7instance|Selector3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|seg7instance|Selector3~1_combout\ = (\processadorinstance|seg7instance|Selector2~0_combout\ & ((\processadorinstance|seg7instance|Selector3~0_combout\ & ((\processadorinstance|disp3\(0)))) # 
-- (!\processadorinstance|seg7instance|Selector3~0_combout\ & (\processadorinstance|disp1\(0))))) # (!\processadorinstance|seg7instance|Selector2~0_combout\ & (\processadorinstance|seg7instance|Selector3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|seg7instance|Selector2~0_combout\,
	datab => \processadorinstance|seg7instance|Selector3~0_combout\,
	datac => \processadorinstance|disp1\(0),
	datad => \processadorinstance|disp3\(0),
	combout => \processadorinstance|seg7instance|Selector3~1_combout\);

-- Location: LCFF_X16_Y17_N7
\processadorinstance|disp3[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \processadorinstance|draminstance|dram~1_regout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|disp3\(1));

-- Location: LCFF_X20_Y13_N7
\processadorinstance|disp2[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \processadorinstance|draminstance|dram~5_regout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|disp2\(1));

-- Location: LCCOMB_X16_Y17_N6
\processadorinstance|seg7instance|Selector2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|seg7instance|Selector2~3_combout\ = (\processadorinstance|seg7instance|Selector2~2_combout\ & (((\processadorinstance|disp3\(1))) # (!\processadorinstance|seg7instance|Selector2~1_combout\))) # 
-- (!\processadorinstance|seg7instance|Selector2~2_combout\ & (\processadorinstance|seg7instance|Selector2~1_combout\ & ((\processadorinstance|disp2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|seg7instance|Selector2~2_combout\,
	datab => \processadorinstance|seg7instance|Selector2~1_combout\,
	datac => \processadorinstance|disp3\(1),
	datad => \processadorinstance|disp2\(1),
	combout => \processadorinstance|seg7instance|Selector2~3_combout\);

-- Location: LCCOMB_X1_Y21_N16
\processadorinstance|seg7instance|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|seg7instance|WideOr6~0_combout\ = (\processadorinstance|seg7instance|Selector0~1_combout\ & (\processadorinstance|seg7instance|Selector3~1_combout\ & (\processadorinstance|seg7instance|Selector1~1_combout\ $ 
-- (\processadorinstance|seg7instance|Selector2~3_combout\)))) # (!\processadorinstance|seg7instance|Selector0~1_combout\ & (!\processadorinstance|seg7instance|Selector2~3_combout\ & (\processadorinstance|seg7instance|Selector1~1_combout\ $ 
-- (\processadorinstance|seg7instance|Selector3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|seg7instance|Selector0~1_combout\,
	datab => \processadorinstance|seg7instance|Selector1~1_combout\,
	datac => \processadorinstance|seg7instance|Selector3~1_combout\,
	datad => \processadorinstance|seg7instance|Selector2~3_combout\,
	combout => \processadorinstance|seg7instance|WideOr6~0_combout\);

-- Location: LCFF_X1_Y21_N17
\processadorinstance|seg7instance|hex_out0[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \processadorinstance|seg7instance|WideOr6~0_combout\,
	ena => \processadorinstance|seg7instance|ALT_INV_display_state.00~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|seg7instance|hex_out0\(0));

-- Location: LCCOMB_X1_Y21_N22
\processadorinstance|seg7instance|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|seg7instance|WideOr5~0_combout\ = (\processadorinstance|seg7instance|Selector0~1_combout\ & ((\processadorinstance|seg7instance|Selector3~1_combout\ & ((\processadorinstance|seg7instance|Selector2~3_combout\))) # 
-- (!\processadorinstance|seg7instance|Selector3~1_combout\ & (\processadorinstance|seg7instance|Selector1~1_combout\)))) # (!\processadorinstance|seg7instance|Selector0~1_combout\ & (\processadorinstance|seg7instance|Selector1~1_combout\ & 
-- (\processadorinstance|seg7instance|Selector3~1_combout\ $ (\processadorinstance|seg7instance|Selector2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|seg7instance|Selector0~1_combout\,
	datab => \processadorinstance|seg7instance|Selector1~1_combout\,
	datac => \processadorinstance|seg7instance|Selector3~1_combout\,
	datad => \processadorinstance|seg7instance|Selector2~3_combout\,
	combout => \processadorinstance|seg7instance|WideOr5~0_combout\);

-- Location: LCFF_X1_Y21_N23
\processadorinstance|seg7instance|hex_out0[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \processadorinstance|seg7instance|WideOr5~0_combout\,
	ena => \processadorinstance|seg7instance|ALT_INV_display_state.00~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|seg7instance|hex_out0\(1));

-- Location: LCCOMB_X2_Y21_N24
\processadorinstance|seg7instance|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|seg7instance|WideOr4~0_combout\ = (\processadorinstance|seg7instance|Selector0~1_combout\ & (\processadorinstance|seg7instance|Selector1~1_combout\ & ((\processadorinstance|seg7instance|Selector2~3_combout\) # 
-- (!\processadorinstance|seg7instance|Selector3~1_combout\)))) # (!\processadorinstance|seg7instance|Selector0~1_combout\ & (!\processadorinstance|seg7instance|Selector1~1_combout\ & (\processadorinstance|seg7instance|Selector2~3_combout\ & 
-- !\processadorinstance|seg7instance|Selector3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|seg7instance|Selector0~1_combout\,
	datab => \processadorinstance|seg7instance|Selector1~1_combout\,
	datac => \processadorinstance|seg7instance|Selector2~3_combout\,
	datad => \processadorinstance|seg7instance|Selector3~1_combout\,
	combout => \processadorinstance|seg7instance|WideOr4~0_combout\);

-- Location: LCCOMB_X1_Y21_N4
\processadorinstance|seg7instance|hex_out0[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|seg7instance|hex_out0[2]~feeder_combout\ = \processadorinstance|seg7instance|WideOr4~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \processadorinstance|seg7instance|WideOr4~0_combout\,
	combout => \processadorinstance|seg7instance|hex_out0[2]~feeder_combout\);

-- Location: LCFF_X1_Y21_N5
\processadorinstance|seg7instance|hex_out0[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \processadorinstance|seg7instance|hex_out0[2]~feeder_combout\,
	ena => \processadorinstance|seg7instance|ALT_INV_display_state.00~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|seg7instance|hex_out0\(2));

-- Location: LCCOMB_X2_Y21_N30
\processadorinstance|seg7instance|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|seg7instance|WideOr3~0_combout\ = (\processadorinstance|seg7instance|Selector2~3_combout\ & ((\processadorinstance|seg7instance|Selector1~1_combout\ & ((\processadorinstance|seg7instance|Selector3~1_combout\))) # 
-- (!\processadorinstance|seg7instance|Selector1~1_combout\ & (\processadorinstance|seg7instance|Selector0~1_combout\ & !\processadorinstance|seg7instance|Selector3~1_combout\)))) # (!\processadorinstance|seg7instance|Selector2~3_combout\ & 
-- (!\processadorinstance|seg7instance|Selector0~1_combout\ & (\processadorinstance|seg7instance|Selector1~1_combout\ $ (\processadorinstance|seg7instance|Selector3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|seg7instance|Selector0~1_combout\,
	datab => \processadorinstance|seg7instance|Selector1~1_combout\,
	datac => \processadorinstance|seg7instance|Selector2~3_combout\,
	datad => \processadorinstance|seg7instance|Selector3~1_combout\,
	combout => \processadorinstance|seg7instance|WideOr3~0_combout\);

-- Location: LCCOMB_X1_Y21_N14
\processadorinstance|seg7instance|hex_out0[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|seg7instance|hex_out0[3]~feeder_combout\ = \processadorinstance|seg7instance|WideOr3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \processadorinstance|seg7instance|WideOr3~0_combout\,
	combout => \processadorinstance|seg7instance|hex_out0[3]~feeder_combout\);

-- Location: LCFF_X1_Y21_N15
\processadorinstance|seg7instance|hex_out0[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \processadorinstance|seg7instance|hex_out0[3]~feeder_combout\,
	ena => \processadorinstance|seg7instance|ALT_INV_display_state.00~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|seg7instance|hex_out0\(3));

-- Location: LCCOMB_X2_Y21_N14
\processadorinstance|seg7instance|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|seg7instance|WideOr2~0_combout\ = (\processadorinstance|seg7instance|Selector2~3_combout\ & (!\processadorinstance|seg7instance|Selector0~1_combout\ & ((\processadorinstance|seg7instance|Selector3~1_combout\)))) # 
-- (!\processadorinstance|seg7instance|Selector2~3_combout\ & ((\processadorinstance|seg7instance|Selector1~1_combout\ & (!\processadorinstance|seg7instance|Selector0~1_combout\)) # (!\processadorinstance|seg7instance|Selector1~1_combout\ & 
-- ((\processadorinstance|seg7instance|Selector3~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|seg7instance|Selector0~1_combout\,
	datab => \processadorinstance|seg7instance|Selector1~1_combout\,
	datac => \processadorinstance|seg7instance|Selector2~3_combout\,
	datad => \processadorinstance|seg7instance|Selector3~1_combout\,
	combout => \processadorinstance|seg7instance|WideOr2~0_combout\);

-- Location: LCFF_X1_Y21_N9
\processadorinstance|seg7instance|hex_out0[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \processadorinstance|seg7instance|WideOr2~0_combout\,
	sload => VCC,
	ena => \processadorinstance|seg7instance|ALT_INV_display_state.00~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|seg7instance|hex_out0\(4));

-- Location: LCCOMB_X2_Y21_N4
\processadorinstance|seg7instance|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|seg7instance|WideOr1~0_combout\ = (\processadorinstance|seg7instance|Selector1~1_combout\ & (\processadorinstance|seg7instance|Selector3~1_combout\ & (\processadorinstance|seg7instance|Selector0~1_combout\ $ 
-- (\processadorinstance|seg7instance|Selector2~3_combout\)))) # (!\processadorinstance|seg7instance|Selector1~1_combout\ & (!\processadorinstance|seg7instance|Selector0~1_combout\ & ((\processadorinstance|seg7instance|Selector2~3_combout\) # 
-- (\processadorinstance|seg7instance|Selector3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|seg7instance|Selector0~1_combout\,
	datab => \processadorinstance|seg7instance|Selector1~1_combout\,
	datac => \processadorinstance|seg7instance|Selector2~3_combout\,
	datad => \processadorinstance|seg7instance|Selector3~1_combout\,
	combout => \processadorinstance|seg7instance|WideOr1~0_combout\);

-- Location: LCCOMB_X1_Y21_N18
\processadorinstance|seg7instance|hex_out0[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|seg7instance|hex_out0[5]~feeder_combout\ = \processadorinstance|seg7instance|WideOr1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \processadorinstance|seg7instance|WideOr1~0_combout\,
	combout => \processadorinstance|seg7instance|hex_out0[5]~feeder_combout\);

-- Location: LCFF_X1_Y21_N19
\processadorinstance|seg7instance|hex_out0[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \processadorinstance|seg7instance|hex_out0[5]~feeder_combout\,
	ena => \processadorinstance|seg7instance|ALT_INV_display_state.00~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|seg7instance|hex_out0\(5));

-- Location: LCCOMB_X2_Y21_N28
\processadorinstance|seg7instance|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|seg7instance|WideOr0~0_combout\ = (\processadorinstance|seg7instance|Selector3~1_combout\ & (!\processadorinstance|seg7instance|Selector0~1_combout\ & (\processadorinstance|seg7instance|Selector1~1_combout\ $ 
-- (!\processadorinstance|seg7instance|Selector2~3_combout\)))) # (!\processadorinstance|seg7instance|Selector3~1_combout\ & (!\processadorinstance|seg7instance|Selector2~3_combout\ & (\processadorinstance|seg7instance|Selector0~1_combout\ $ 
-- (!\processadorinstance|seg7instance|Selector1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|seg7instance|Selector0~1_combout\,
	datab => \processadorinstance|seg7instance|Selector1~1_combout\,
	datac => \processadorinstance|seg7instance|Selector2~3_combout\,
	datad => \processadorinstance|seg7instance|Selector3~1_combout\,
	combout => \processadorinstance|seg7instance|WideOr0~0_combout\);

-- Location: LCCOMB_X1_Y21_N12
\processadorinstance|seg7instance|hex_out0[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|seg7instance|hex_out0[6]~feeder_combout\ = \processadorinstance|seg7instance|WideOr0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \processadorinstance|seg7instance|WideOr0~0_combout\,
	combout => \processadorinstance|seg7instance|hex_out0[6]~feeder_combout\);

-- Location: LCFF_X1_Y21_N13
\processadorinstance|seg7instance|hex_out0[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \processadorinstance|seg7instance|hex_out0[6]~feeder_combout\,
	ena => \processadorinstance|seg7instance|ALT_INV_display_state.00~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|seg7instance|hex_out0\(6));

-- Location: LCCOMB_X1_Y21_N6
\processadorinstance|seg7instance|hex_out1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|seg7instance|hex_out1~0_combout\ = (\processadorinstance|ulainstance|subtratorinstance|s~regout\) # (\processadorinstance|seg7instance|WideOr6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processadorinstance|ulainstance|subtratorinstance|s~regout\,
	datac => \processadorinstance|seg7instance|WideOr6~0_combout\,
	combout => \processadorinstance|seg7instance|hex_out1~0_combout\);

-- Location: LCFF_X1_Y21_N7
\processadorinstance|seg7instance|hex_out1[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \processadorinstance|seg7instance|hex_out1~0_combout\,
	ena => \processadorinstance|seg7instance|display_state.01~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|seg7instance|hex_out1\(0));

-- Location: LCCOMB_X1_Y21_N28
\processadorinstance|seg7instance|hex_out1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|seg7instance|hex_out1~1_combout\ = (\processadorinstance|ulainstance|subtratorinstance|s~regout\) # (\processadorinstance|seg7instance|WideOr5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \processadorinstance|ulainstance|subtratorinstance|s~regout\,
	datad => \processadorinstance|seg7instance|WideOr5~0_combout\,
	combout => \processadorinstance|seg7instance|hex_out1~1_combout\);

-- Location: LCFF_X1_Y21_N29
\processadorinstance|seg7instance|hex_out1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \processadorinstance|seg7instance|hex_out1~1_combout\,
	ena => \processadorinstance|seg7instance|display_state.01~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|seg7instance|hex_out1\(1));

-- Location: LCCOMB_X1_Y21_N10
\processadorinstance|seg7instance|hex_out1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|seg7instance|hex_out1~2_combout\ = (\processadorinstance|ulainstance|subtratorinstance|s~regout\) # (\processadorinstance|seg7instance|WideOr4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \processadorinstance|ulainstance|subtratorinstance|s~regout\,
	datad => \processadorinstance|seg7instance|WideOr4~0_combout\,
	combout => \processadorinstance|seg7instance|hex_out1~2_combout\);

-- Location: LCFF_X1_Y21_N11
\processadorinstance|seg7instance|hex_out1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \processadorinstance|seg7instance|hex_out1~2_combout\,
	ena => \processadorinstance|seg7instance|display_state.01~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|seg7instance|hex_out1\(2));

-- Location: LCCOMB_X1_Y21_N20
\processadorinstance|seg7instance|hex_out1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|seg7instance|hex_out1~3_combout\ = (\processadorinstance|ulainstance|subtratorinstance|s~regout\) # (\processadorinstance|seg7instance|WideOr3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \processadorinstance|ulainstance|subtratorinstance|s~regout\,
	datad => \processadorinstance|seg7instance|WideOr3~0_combout\,
	combout => \processadorinstance|seg7instance|hex_out1~3_combout\);

-- Location: LCFF_X1_Y21_N21
\processadorinstance|seg7instance|hex_out1[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \processadorinstance|seg7instance|hex_out1~3_combout\,
	ena => \processadorinstance|seg7instance|display_state.01~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|seg7instance|hex_out1\(3));

-- Location: LCCOMB_X1_Y21_N26
\processadorinstance|seg7instance|hex_out1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|seg7instance|hex_out1~4_combout\ = (\processadorinstance|ulainstance|subtratorinstance|s~regout\) # (\processadorinstance|seg7instance|WideOr2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processadorinstance|ulainstance|subtratorinstance|s~regout\,
	datac => \processadorinstance|seg7instance|WideOr2~0_combout\,
	combout => \processadorinstance|seg7instance|hex_out1~4_combout\);

-- Location: LCFF_X1_Y21_N27
\processadorinstance|seg7instance|hex_out1[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \processadorinstance|seg7instance|hex_out1~4_combout\,
	ena => \processadorinstance|seg7instance|display_state.01~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|seg7instance|hex_out1\(4));

-- Location: LCCOMB_X1_Y21_N24
\processadorinstance|seg7instance|hex_out1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|seg7instance|hex_out1~5_combout\ = (\processadorinstance|ulainstance|subtratorinstance|s~regout\) # (\processadorinstance|seg7instance|WideOr1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \processadorinstance|ulainstance|subtratorinstance|s~regout\,
	datad => \processadorinstance|seg7instance|WideOr1~0_combout\,
	combout => \processadorinstance|seg7instance|hex_out1~5_combout\);

-- Location: LCFF_X1_Y21_N25
\processadorinstance|seg7instance|hex_out1[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \processadorinstance|seg7instance|hex_out1~5_combout\,
	ena => \processadorinstance|seg7instance|display_state.01~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|seg7instance|hex_out1\(5));

-- Location: LCCOMB_X1_Y21_N30
\processadorinstance|seg7instance|hex_out1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|seg7instance|hex_out1~6_combout\ = (!\processadorinstance|ulainstance|subtratorinstance|s~regout\ & \processadorinstance|seg7instance|WideOr0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \processadorinstance|ulainstance|subtratorinstance|s~regout\,
	datad => \processadorinstance|seg7instance|WideOr0~0_combout\,
	combout => \processadorinstance|seg7instance|hex_out1~6_combout\);

-- Location: LCFF_X1_Y21_N31
\processadorinstance|seg7instance|hex_out1[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \processadorinstance|seg7instance|hex_out1~6_combout\,
	ena => \processadorinstance|seg7instance|display_state.01~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|seg7instance|hex_out1\(6));

-- Location: LCCOMB_X2_Y21_N16
\processadorinstance|seg7instance|hex_out2[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|seg7instance|hex_out2[0]~feeder_combout\ = \processadorinstance|seg7instance|WideOr6~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \processadorinstance|seg7instance|WideOr6~0_combout\,
	combout => \processadorinstance|seg7instance|hex_out2[0]~feeder_combout\);

-- Location: LCFF_X2_Y21_N17
\processadorinstance|seg7instance|hex_out2[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \processadorinstance|seg7instance|hex_out2[0]~feeder_combout\,
	ena => \processadorinstance|seg7instance|display_state.10~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|seg7instance|hex_out2\(0));

-- Location: LCCOMB_X2_Y21_N18
\processadorinstance|seg7instance|hex_out2[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|seg7instance|hex_out2[1]~feeder_combout\ = \processadorinstance|seg7instance|WideOr5~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \processadorinstance|seg7instance|WideOr5~0_combout\,
	combout => \processadorinstance|seg7instance|hex_out2[1]~feeder_combout\);

-- Location: LCFF_X2_Y21_N19
\processadorinstance|seg7instance|hex_out2[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \processadorinstance|seg7instance|hex_out2[1]~feeder_combout\,
	ena => \processadorinstance|seg7instance|display_state.10~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|seg7instance|hex_out2\(1));

-- Location: LCFF_X2_Y21_N25
\processadorinstance|seg7instance|hex_out2[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \processadorinstance|seg7instance|WideOr4~0_combout\,
	ena => \processadorinstance|seg7instance|display_state.10~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|seg7instance|hex_out2\(2));

-- Location: LCFF_X2_Y21_N31
\processadorinstance|seg7instance|hex_out2[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \processadorinstance|seg7instance|WideOr3~0_combout\,
	ena => \processadorinstance|seg7instance|display_state.10~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|seg7instance|hex_out2\(3));

-- Location: LCFF_X2_Y21_N13
\processadorinstance|seg7instance|hex_out2[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \processadorinstance|seg7instance|WideOr2~0_combout\,
	sload => VCC,
	ena => \processadorinstance|seg7instance|display_state.10~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|seg7instance|hex_out2\(4));

-- Location: LCFF_X2_Y21_N27
\processadorinstance|seg7instance|hex_out2[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \processadorinstance|seg7instance|WideOr1~0_combout\,
	sload => VCC,
	ena => \processadorinstance|seg7instance|display_state.10~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|seg7instance|hex_out2\(5));

-- Location: LCFF_X2_Y21_N29
\processadorinstance|seg7instance|hex_out2[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \processadorinstance|seg7instance|WideOr0~0_combout\,
	ena => \processadorinstance|seg7instance|display_state.10~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|seg7instance|hex_out2\(6));

-- Location: LCCOMB_X2_Y21_N22
\processadorinstance|seg7instance|hex_out3[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|seg7instance|hex_out3[0]~feeder_combout\ = \processadorinstance|seg7instance|WideOr6~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \processadorinstance|seg7instance|WideOr6~0_combout\,
	combout => \processadorinstance|seg7instance|hex_out3[0]~feeder_combout\);

-- Location: LCFF_X2_Y21_N23
\processadorinstance|seg7instance|hex_out3[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \processadorinstance|seg7instance|hex_out3[0]~feeder_combout\,
	ena => \processadorinstance|seg7instance|display_state.11~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|seg7instance|hex_out3\(0));

-- Location: LCCOMB_X2_Y21_N8
\processadorinstance|seg7instance|hex_out3[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|seg7instance|hex_out3[1]~feeder_combout\ = \processadorinstance|seg7instance|WideOr5~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \processadorinstance|seg7instance|WideOr5~0_combout\,
	combout => \processadorinstance|seg7instance|hex_out3[1]~feeder_combout\);

-- Location: LCFF_X2_Y21_N9
\processadorinstance|seg7instance|hex_out3[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \processadorinstance|seg7instance|hex_out3[1]~feeder_combout\,
	ena => \processadorinstance|seg7instance|display_state.11~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|seg7instance|hex_out3\(1));

-- Location: LCFF_X2_Y21_N11
\processadorinstance|seg7instance|hex_out3[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \processadorinstance|seg7instance|WideOr4~0_combout\,
	sload => VCC,
	ena => \processadorinstance|seg7instance|display_state.11~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|seg7instance|hex_out3\(2));

-- Location: LCCOMB_X2_Y21_N20
\processadorinstance|seg7instance|hex_out3[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|seg7instance|hex_out3[3]~feeder_combout\ = \processadorinstance|seg7instance|WideOr3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \processadorinstance|seg7instance|WideOr3~0_combout\,
	combout => \processadorinstance|seg7instance|hex_out3[3]~feeder_combout\);

-- Location: LCFF_X2_Y21_N21
\processadorinstance|seg7instance|hex_out3[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \processadorinstance|seg7instance|hex_out3[3]~feeder_combout\,
	ena => \processadorinstance|seg7instance|display_state.11~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|seg7instance|hex_out3\(3));

-- Location: LCFF_X2_Y21_N15
\processadorinstance|seg7instance|hex_out3[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \processadorinstance|seg7instance|WideOr2~0_combout\,
	ena => \processadorinstance|seg7instance|display_state.11~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|seg7instance|hex_out3\(4));

-- Location: LCFF_X2_Y21_N5
\processadorinstance|seg7instance|hex_out3[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \processadorinstance|seg7instance|WideOr1~0_combout\,
	ena => \processadorinstance|seg7instance|display_state.11~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|seg7instance|hex_out3\(5));

-- Location: LCCOMB_X2_Y21_N6
\processadorinstance|seg7instance|hex_out3[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|seg7instance|hex_out3[6]~feeder_combout\ = \processadorinstance|seg7instance|WideOr0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \processadorinstance|seg7instance|WideOr0~0_combout\,
	combout => \processadorinstance|seg7instance|hex_out3[6]~feeder_combout\);

-- Location: LCFF_X2_Y21_N7
\processadorinstance|seg7instance|hex_out3[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \processadorinstance|seg7instance|hex_out3[6]~feeder_combout\,
	ena => \processadorinstance|seg7instance|display_state.11~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|seg7instance|hex_out3\(6));

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

-- Location: LCFF_X21_Y13_N25
\processadorinstance|LEDG[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	sdata => \processadorinstance|prominstance|prom~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|LEDG\(0));

-- Location: LCFF_X21_Y13_N15
\processadorinstance|LEDG[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	datain => \processadorinstance|prominstance|prom~1_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|LEDG\(1));

-- Location: LCFF_X21_Y13_N1
\processadorinstance|LEDG[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	datain => \processadorinstance|prominstance|prom~2_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|LEDG\(2));

-- Location: LCFF_X22_Y13_N21
\processadorinstance|LEDR[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \processadorinstance|draminstance|dram~0_regout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|LEDR\(0));

-- Location: LCFF_X22_Y13_N31
\processadorinstance|LEDR[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \processadorinstance|draminstance|dram~1_regout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|LEDR\(1));

-- Location: LCCOMB_X22_Y13_N14
\processadorinstance|LEDR[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|LEDR[2]~feeder_combout\ = \processadorinstance|draminstance|dram~2_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \processadorinstance|draminstance|dram~2_regout\,
	combout => \processadorinstance|LEDR[2]~feeder_combout\);

-- Location: LCFF_X22_Y13_N15
\processadorinstance|LEDR[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \processadorinstance|LEDR[2]~feeder_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|LEDR\(2));

-- Location: LCFF_X22_Y13_N5
\processadorinstance|LEDR[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \processadorinstance|draminstance|dram~3_regout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|LEDR\(3));

-- Location: LCFF_X22_Y13_N7
\processadorinstance|LEDR[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \processadorinstance|draminstance|dram~4_regout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|LEDR\(4));

-- Location: LCFF_X22_Y13_N9
\processadorinstance|LEDR[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \processadorinstance|draminstance|dram~5_regout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|LEDR\(5));

-- Location: LCFF_X22_Y13_N11
\processadorinstance|LEDR[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \processadorinstance|draminstance|dram~6_regout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|LEDR\(6));

-- Location: LCFF_X22_Y13_N13
\processadorinstance|LEDR[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	sdata => \processadorinstance|draminstance|dram~7_regout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \ALT_INV_KEY~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|LEDR\(7));

-- Location: PIN_R16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_G8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \processadorinstance|seg7instance|hex_out0\(0),
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
	datain => \processadorinstance|seg7instance|hex_out0\(1),
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
	datain => \processadorinstance|seg7instance|hex_out0\(2),
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
	datain => \processadorinstance|seg7instance|hex_out0\(3),
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
	datain => \processadorinstance|seg7instance|hex_out0\(4),
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
	datain => \processadorinstance|seg7instance|hex_out0\(5),
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
	datain => \processadorinstance|seg7instance|hex_out0\(6),
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
	datain => \processadorinstance|seg7instance|hex_out1\(0),
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
	datain => \processadorinstance|seg7instance|hex_out1\(1),
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
	datain => \processadorinstance|seg7instance|hex_out1\(2),
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
	datain => \processadorinstance|seg7instance|hex_out1\(3),
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
	datain => \processadorinstance|seg7instance|hex_out1\(4),
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
	datain => \processadorinstance|seg7instance|hex_out1\(5),
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
	datain => \processadorinstance|seg7instance|hex_out1\(6),
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
	datain => \processadorinstance|seg7instance|hex_out2\(0),
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
	datain => \processadorinstance|seg7instance|hex_out2\(1),
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
	datain => \processadorinstance|seg7instance|hex_out2\(2),
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
	datain => \processadorinstance|seg7instance|hex_out2\(3),
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
	datain => \processadorinstance|seg7instance|hex_out2\(4),
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
	datain => \processadorinstance|seg7instance|hex_out2\(5),
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
	datain => \processadorinstance|seg7instance|hex_out2\(6),
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
	datain => \processadorinstance|seg7instance|hex_out3\(0),
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
	datain => \processadorinstance|seg7instance|hex_out3\(1),
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
	datain => \processadorinstance|seg7instance|hex_out3\(2),
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
	datain => \processadorinstance|seg7instance|hex_out3\(3),
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
	datain => \processadorinstance|seg7instance|hex_out3\(4),
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
	datain => \processadorinstance|seg7instance|hex_out3\(5),
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
	datain => \processadorinstance|seg7instance|hex_out3\(6),
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => GND,
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
	datain => \processadorinstance|LEDR\(0),
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
	datain => \processadorinstance|LEDR\(1),
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
	datain => \processadorinstance|LEDR\(2),
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
	datain => \processadorinstance|LEDR\(3),
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
	datain => \processadorinstance|LEDR\(4),
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
	datain => \processadorinstance|LEDR\(5),
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
	datain => \processadorinstance|LEDR\(6),
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
	datain => \processadorinstance|LEDR\(7),
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
	datain => GND,
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
	datain => GND,
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

-- Location: PIN_W16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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


