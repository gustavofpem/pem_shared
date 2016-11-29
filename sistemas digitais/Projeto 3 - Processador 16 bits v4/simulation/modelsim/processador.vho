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

-- DATE "11/29/2016 15:02:20"

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
-- SD_DAT3	=>  Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SD_CMD	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
-- SD_DAT	=>  Location: PIN_E9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
SIGNAL \processadorinstance|draminstance|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \processadorinstance|draminstance|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \processadorinstance|draminstance|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \processadorinstance|disp0[3]~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \processadorinstance|Decoder1~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \processadorinstance|ACC2[3]~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \processadorinstance|data_reg[0]~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \processadorinstance|ulainstance|Add0~6_combout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|Add0~8_combout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|Add0~10_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[5][0]~regout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[0][0]~regout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[5][1]~regout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[2][1]~regout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[5][2]~regout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[1][2]~regout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[6][3]~regout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[7][3]~regout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[0][3]~regout\ : std_logic;
SIGNAL \processadorinstance|prominstance|prom~18_combout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|Add0~1_combout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|Add0~2_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile~58_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile~59_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile~67_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile~68_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile~69_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile~70_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile~71_combout\ : std_logic;
SIGNAL \processadorinstance|Equal0~0_combout\ : std_logic;
SIGNAL \processadorinstance|prominstance|prom~26_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile~79_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile~5_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile~80_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile~23_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile~81_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile~41_combout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|Mux6~8_combout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|Mux6~6_combout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|Mux6~11_combout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|Mux6~20_combout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|Mux6~3_combout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|Mux6~9_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile~82_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile~83_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile~84_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile~85_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile~86_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile~87_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile~88_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile~89_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile~90_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile~91_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile~92_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile~93_combout\ : std_logic;
SIGNAL \processadorinstance|pcinstance|pc[0]~21_combout\ : std_logic;
SIGNAL \processadorinstance|pcinstance|pc[1]~7_combout\ : std_logic;
SIGNAL \processadorinstance|pcinstance|pc[1]~8\ : std_logic;
SIGNAL \processadorinstance|pcinstance|pc[2]~10\ : std_logic;
SIGNAL \processadorinstance|pcinstance|pc[3]~11_combout\ : std_logic;
SIGNAL \processadorinstance|prominstance|prom~16_combout\ : std_logic;
SIGNAL \processadorinstance|pcinstance|pc[3]~12\ : std_logic;
SIGNAL \processadorinstance|pcinstance|pc[4]~13_combout\ : std_logic;
SIGNAL \processadorinstance|pcinstance|pc[4]~14\ : std_logic;
SIGNAL \processadorinstance|pcinstance|pc[5]~15_combout\ : std_logic;
SIGNAL \processadorinstance|pcinstance|pc[5]~16\ : std_logic;
SIGNAL \processadorinstance|pcinstance|pc[6]~17_combout\ : std_logic;
SIGNAL \processadorinstance|prominstance|prom~13_combout\ : std_logic;
SIGNAL \processadorinstance|pcinstance|pc[2]~9_combout\ : std_logic;
SIGNAL \processadorinstance|prominstance|prom~14_combout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|Mux8~2_combout\ : std_logic;
SIGNAL \processadorinstance|prominstance|prom~20_combout\ : std_logic;
SIGNAL \processadorinstance|prominstance|prom~7_combout\ : std_logic;
SIGNAL \processadorinstance|prominstance|prom~21_combout\ : std_logic;
SIGNAL \processadorinstance|disp0[3]~0_combout\ : std_logic;
SIGNAL \processadorinstance|disp0[3]~0clkctrl_outclk\ : std_logic;
SIGNAL \processadorinstance|prominstance|prom~17_combout\ : std_logic;
SIGNAL \processadorinstance|prominstance|prom~15_combout\ : std_logic;
SIGNAL \processadorinstance|pcinstance|pc[6]~18\ : std_logic;
SIGNAL \processadorinstance|pcinstance|pc[7]~19_combout\ : std_logic;
SIGNAL \processadorinstance|prominstance|prom~19_combout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|Mux4~12_combout\ : std_logic;
SIGNAL \processadorinstance|prominstance|prom~11_combout\ : std_logic;
SIGNAL \processadorinstance|prominstance|prom~12_combout\ : std_logic;
SIGNAL \processadorinstance|prominstance|prom~6_combout\ : std_logic;
SIGNAL \processadorinstance|prominstance|prom~8_combout\ : std_logic;
SIGNAL \processadorinstance|prominstance|prom~9_combout\ : std_logic;
SIGNAL \processadorinstance|prominstance|prom~10_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|Mux2~0_combout\ : std_logic;
SIGNAL \processadorinstance|WideOr1~0_combout\ : std_logic;
SIGNAL \processadorinstance|ACC2[3]~0_combout\ : std_logic;
SIGNAL \processadorinstance|ACC2[3]~0clkctrl_outclk\ : std_logic;
SIGNAL \processadorinstance|WideOr0~0_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|Mux3~0_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|Mux3~1_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[5][0]~57_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \processadorinstance|prominstance|prom~22_combout\ : std_logic;
SIGNAL \processadorinstance|prominstance|prom~24_combout\ : std_logic;
SIGNAL \processadorinstance|prominstance|prom~27_combout\ : std_logic;
SIGNAL \processadorinstance|prominstance|prom~23_combout\ : std_logic;
SIGNAL \processadorinstance|prominstance|prom~25_combout\ : std_logic;
SIGNAL \processadorinstance|Mux4~0_combout\ : std_logic;
SIGNAL \processadorinstance|Mux1~0_combout\ : std_logic;
SIGNAL \processadorinstance|data_reg[0]~0_combout\ : std_logic;
SIGNAL \processadorinstance|data_reg[0]~0clkctrl_outclk\ : std_logic;
SIGNAL \processadorinstance|Mux3~2_combout\ : std_logic;
SIGNAL \processadorinstance|Mux3~3_combout\ : std_logic;
SIGNAL \processadorinstance|we_reg~0_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[0][0]~65_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[0][2]~regout\ : std_logic;
SIGNAL \processadorinstance|Mux2~2_combout\ : std_logic;
SIGNAL \processadorinstance|Mux2~3_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[0][1]~regout\ : std_logic;
SIGNAL \processadorinstance|Mux0~2_combout\ : std_logic;
SIGNAL \processadorinstance|Mux0~3_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[7][0]~62_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[7][0]~regout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[6][0]~feeder_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[6][0]~60_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[6][0]~regout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[4][0]~61_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[4][0]~regout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|Mux7~0_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|Mux7~1_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[3][0]~66_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[3][0]~regout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[2][0]~63_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[2][0]~regout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[1][0]~feeder_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[1][0]~64_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[1][0]~regout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|Mux7~2_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|Mux7~3_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|Mux7~4_combout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|Add0~3_combout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|Add0~5_cout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|Add0~7\ : std_logic;
SIGNAL \processadorinstance|ulainstance|Add0~9\ : std_logic;
SIGNAL \processadorinstance|ulainstance|Add0~11\ : std_logic;
SIGNAL \processadorinstance|ulainstance|Add0~12_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile~72_combout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|Mux4~14_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile~78_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile~56_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile~73_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[5][3]~regout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[4][3]~regout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|Mux4~0_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|Mux4~1_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[2][3]~feeder_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[2][3]~regout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[3][3]~regout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[1][3]~regout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|Mux4~2_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|Mux4~3_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|Mux4~4_combout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|Add0~0_combout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|Add0~13\ : std_logic;
SIGNAL \processadorinstance|ulainstance|Add0~14_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile~74_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[5][4]~regout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|Mux3~2_combout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|Add0~15\ : std_logic;
SIGNAL \processadorinstance|ulainstance|Add0~16_combout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|Mux4~15_combout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|Mux4~10_combout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|Mux3~0_combout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|Mux3~1_combout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|Mux1~0_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|Mux0~0_combout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|Mux2~0_combout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|Add0~17\ : std_logic;
SIGNAL \processadorinstance|ulainstance|Add0~18_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile~76_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[5][6]~regout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|Mux1~0_combout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|Add0~19\ : std_logic;
SIGNAL \processadorinstance|ulainstance|Add0~20_combout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|Mux1~1_combout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|Mux2~1_combout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|Mux4~11_combout\ : std_logic;
SIGNAL \processadorinstance|ulainstance|Mux4~13_combout\ : std_logic;
SIGNAL \processadorinstance|seg7instance1|WideOr6~0_combout\ : std_logic;
SIGNAL \processadorinstance|seg7instance1|WideOr5~0_combout\ : std_logic;
SIGNAL \processadorinstance|seg7instance1|WideOr4~0_combout\ : std_logic;
SIGNAL \processadorinstance|seg7instance1|WideOr3~0_combout\ : std_logic;
SIGNAL \processadorinstance|seg7instance1|WideOr2~0_combout\ : std_logic;
SIGNAL \processadorinstance|seg7instance1|WideOr1~0_combout\ : std_logic;
SIGNAL \processadorinstance|seg7instance1|WideOr0~0_combout\ : std_logic;
SIGNAL \processadorinstance|Decoder1~0_combout\ : std_logic;
SIGNAL \processadorinstance|Decoder1~0clkctrl_outclk\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[7][1]~regout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[6][1]~regout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[4][1]~regout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|Mux6~0_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|Mux6~1_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[3][1]~regout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[1][1]~regout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|Mux6~2_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|Mux6~3_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|Mux6~4_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[3][2]~feeder_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[3][2]~regout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[2][2]~regout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|Mux5~2_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|Mux5~3_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[7][2]~regout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[6][2]~feeder_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[6][2]~regout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[4][2]~regout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|Mux5~0_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|Mux5~1_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|Mux5~4_combout\ : std_logic;
SIGNAL \processadorinstance|LEDR[0]~0_combout\ : std_logic;
SIGNAL \processadorinstance|LEDR[1]~1_combout\ : std_logic;
SIGNAL \processadorinstance|LEDR[2]~2_combout\ : std_logic;
SIGNAL \processadorinstance|LEDR[3]~3_combout\ : std_logic;
SIGNAL \processadorinstance|LEDR[4]~4_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile~75_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[5][5]~regout\ : std_logic;
SIGNAL \processadorinstance|LEDR[5]~5_combout\ : std_logic;
SIGNAL \processadorinstance|LEDR[6]~6_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile~77_combout\ : std_logic;
SIGNAL \processadorinstance|regfileinstance|regfile[5][7]~regout\ : std_logic;
SIGNAL \processadorinstance|LEDR[7]~7_combout\ : std_logic;
SIGNAL \processadorinstance|disp1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \processadorinstance|data_reg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \processadorinstance|LEDG\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \processadorinstance|ACC2\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \processadorinstance|pcinstance|pc\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \processadorinstance|prominstance|addr_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \processadorinstance|draminstance|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \SW~combout\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \KEY~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_KEY~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \processadorinstance|seg7instance1|ALT_INV_WideOr0~0_combout\ : std_logic;

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

\processadorinstance|draminstance|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\processadorinstance|prominstance|prom~25_combout\ & \processadorinstance|prominstance|prom~27_combout\ & 
\processadorinstance|prominstance|prom~24_combout\);

\processadorinstance|draminstance|altsyncram_component|auto_generated|q_a\(0) <= \processadorinstance|draminstance|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\processadorinstance|draminstance|altsyncram_component|auto_generated|q_a\(1) <= \processadorinstance|draminstance|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\processadorinstance|draminstance|altsyncram_component|auto_generated|q_a\(2) <= \processadorinstance|draminstance|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\processadorinstance|draminstance|altsyncram_component|auto_generated|q_a\(3) <= \processadorinstance|draminstance|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);

\processadorinstance|disp0[3]~0clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \processadorinstance|disp0[3]~0_combout\);

\processadorinstance|Decoder1~0clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \processadorinstance|Decoder1~0_combout\);

\processadorinstance|ACC2[3]~0clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \processadorinstance|ACC2[3]~0_combout\);

\processadorinstance|data_reg[0]~0clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \processadorinstance|data_reg[0]~0_combout\);
\ALT_INV_KEY~combout\(3) <= NOT \KEY~combout\(3);
\ALT_INV_KEY~combout\(0) <= NOT \KEY~combout\(0);
\processadorinstance|seg7instance1|ALT_INV_WideOr0~0_combout\ <= NOT \processadorinstance|seg7instance1|WideOr0~0_combout\;

-- Location: LCCOMB_X48_Y8_N14
\processadorinstance|ulainstance|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|Add0~6_combout\ = (\processadorinstance|regfileinstance|regfile[0][0]~regout\ & ((\processadorinstance|ulainstance|Add0~3_combout\ & (!\processadorinstance|ulainstance|Add0~5_cout\)) # 
-- (!\processadorinstance|ulainstance|Add0~3_combout\ & (\processadorinstance|ulainstance|Add0~5_cout\ & VCC)))) # (!\processadorinstance|regfileinstance|regfile[0][0]~regout\ & ((\processadorinstance|ulainstance|Add0~3_combout\ & 
-- ((\processadorinstance|ulainstance|Add0~5_cout\) # (GND))) # (!\processadorinstance|ulainstance|Add0~3_combout\ & (!\processadorinstance|ulainstance|Add0~5_cout\))))
-- \processadorinstance|ulainstance|Add0~7\ = CARRY((\processadorinstance|regfileinstance|regfile[0][0]~regout\ & (\processadorinstance|ulainstance|Add0~3_combout\ & !\processadorinstance|ulainstance|Add0~5_cout\)) # 
-- (!\processadorinstance|regfileinstance|regfile[0][0]~regout\ & ((\processadorinstance|ulainstance|Add0~3_combout\) # (!\processadorinstance|ulainstance|Add0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|regfileinstance|regfile[0][0]~regout\,
	datab => \processadorinstance|ulainstance|Add0~3_combout\,
	datad => VCC,
	cin => \processadorinstance|ulainstance|Add0~5_cout\,
	combout => \processadorinstance|ulainstance|Add0~6_combout\,
	cout => \processadorinstance|ulainstance|Add0~7\);

-- Location: LCCOMB_X48_Y8_N16
\processadorinstance|ulainstance|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|Add0~8_combout\ = ((\processadorinstance|ulainstance|Add0~2_combout\ $ (\processadorinstance|regfileinstance|regfile[0][1]~regout\ $ (\processadorinstance|ulainstance|Add0~7\)))) # (GND)
-- \processadorinstance|ulainstance|Add0~9\ = CARRY((\processadorinstance|ulainstance|Add0~2_combout\ & (\processadorinstance|regfileinstance|regfile[0][1]~regout\ & !\processadorinstance|ulainstance|Add0~7\)) # 
-- (!\processadorinstance|ulainstance|Add0~2_combout\ & ((\processadorinstance|regfileinstance|regfile[0][1]~regout\) # (!\processadorinstance|ulainstance|Add0~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|ulainstance|Add0~2_combout\,
	datab => \processadorinstance|regfileinstance|regfile[0][1]~regout\,
	datad => VCC,
	cin => \processadorinstance|ulainstance|Add0~7\,
	combout => \processadorinstance|ulainstance|Add0~8_combout\,
	cout => \processadorinstance|ulainstance|Add0~9\);

-- Location: LCCOMB_X48_Y8_N18
\processadorinstance|ulainstance|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|Add0~10_combout\ = (\processadorinstance|ulainstance|Add0~1_combout\ & ((\processadorinstance|regfileinstance|regfile[0][2]~regout\ & (!\processadorinstance|ulainstance|Add0~9\)) # 
-- (!\processadorinstance|regfileinstance|regfile[0][2]~regout\ & ((\processadorinstance|ulainstance|Add0~9\) # (GND))))) # (!\processadorinstance|ulainstance|Add0~1_combout\ & ((\processadorinstance|regfileinstance|regfile[0][2]~regout\ & 
-- (\processadorinstance|ulainstance|Add0~9\ & VCC)) # (!\processadorinstance|regfileinstance|regfile[0][2]~regout\ & (!\processadorinstance|ulainstance|Add0~9\))))
-- \processadorinstance|ulainstance|Add0~11\ = CARRY((\processadorinstance|ulainstance|Add0~1_combout\ & ((!\processadorinstance|ulainstance|Add0~9\) # (!\processadorinstance|regfileinstance|regfile[0][2]~regout\))) # 
-- (!\processadorinstance|ulainstance|Add0~1_combout\ & (!\processadorinstance|regfileinstance|regfile[0][2]~regout\ & !\processadorinstance|ulainstance|Add0~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|ulainstance|Add0~1_combout\,
	datab => \processadorinstance|regfileinstance|regfile[0][2]~regout\,
	datad => VCC,
	cin => \processadorinstance|ulainstance|Add0~9\,
	combout => \processadorinstance|ulainstance|Add0~10_combout\,
	cout => \processadorinstance|ulainstance|Add0~11\);

-- Location: LCFF_X49_Y7_N17
\processadorinstance|regfileinstance|regfile[5][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	datain => \processadorinstance|regfileinstance|regfile~59_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|regfileinstance|regfile[5][0]~regout\);

-- Location: LCFF_X48_Y8_N5
\processadorinstance|regfileinstance|regfile[0][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	sdata => \processadorinstance|data_reg\(0),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \processadorinstance|regfileinstance|regfile[0][0]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|regfileinstance|regfile[0][0]~regout\);

-- Location: LCFF_X48_Y7_N21
\processadorinstance|regfileinstance|regfile[5][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	datain => \processadorinstance|regfileinstance|regfile~68_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|regfileinstance|regfile[5][1]~regout\);

-- Location: LCFF_X48_Y6_N29
\processadorinstance|regfileinstance|regfile[2][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	sdata => \processadorinstance|data_reg\(1),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \processadorinstance|regfileinstance|regfile[2][0]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|regfileinstance|regfile[2][1]~regout\);

-- Location: LCFF_X49_Y9_N5
\processadorinstance|regfileinstance|regfile[5][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	datain => \processadorinstance|regfileinstance|regfile~71_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|regfileinstance|regfile[5][2]~regout\);

-- Location: LCFF_X49_Y6_N1
\processadorinstance|regfileinstance|regfile[1][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	sdata => \processadorinstance|data_reg\(2),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \processadorinstance|regfileinstance|regfile[1][0]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|regfileinstance|regfile[1][2]~regout\);

-- Location: LCFF_X49_Y9_N23
\processadorinstance|regfileinstance|regfile[6][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	sdata => \processadorinstance|data_reg\(3),
	sload => VCC,
	ena => \processadorinstance|regfileinstance|regfile[6][0]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|regfileinstance|regfile[6][3]~regout\);

-- Location: LCFF_X48_Y7_N7
\processadorinstance|regfileinstance|regfile[7][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	sdata => \processadorinstance|data_reg\(3),
	sload => VCC,
	ena => \processadorinstance|regfileinstance|regfile[7][0]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|regfileinstance|regfile[7][3]~regout\);

-- Location: LCFF_X48_Y8_N11
\processadorinstance|regfileinstance|regfile[0][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	sdata => \processadorinstance|data_reg\(3),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \processadorinstance|regfileinstance|regfile[0][0]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|regfileinstance|regfile[0][3]~regout\);

-- Location: LCCOMB_X48_Y10_N0
\processadorinstance|prominstance|prom~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|prominstance|prom~18_combout\ = (\processadorinstance|prominstance|addr_reg\(3) & (((!\processadorinstance|prominstance|addr_reg\(2))))) # (!\processadorinstance|prominstance|addr_reg\(3) & 
-- ((\processadorinstance|prominstance|addr_reg\(0)) # (\processadorinstance|prominstance|addr_reg\(1) $ (\processadorinstance|prominstance|addr_reg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|prominstance|addr_reg\(1),
	datab => \processadorinstance|prominstance|addr_reg\(2),
	datac => \processadorinstance|prominstance|addr_reg\(0),
	datad => \processadorinstance|prominstance|addr_reg\(3),
	combout => \processadorinstance|prominstance|prom~18_combout\);

-- Location: LCCOMB_X47_Y8_N14
\processadorinstance|ulainstance|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|Add0~1_combout\ = \processadorinstance|ACC2\(2) $ (((!\processadorinstance|prominstance|prom~7_combout\) # (!\processadorinstance|prominstance|prom~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processadorinstance|ACC2\(2),
	datac => \processadorinstance|prominstance|prom~16_combout\,
	datad => \processadorinstance|prominstance|prom~7_combout\,
	combout => \processadorinstance|ulainstance|Add0~1_combout\);

-- Location: LCCOMB_X48_Y8_N10
\processadorinstance|ulainstance|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|Add0~2_combout\ = \processadorinstance|ACC2\(1) $ (((!\processadorinstance|prominstance|prom~16_combout\) # (!\processadorinstance|prominstance|prom~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|prominstance|prom~7_combout\,
	datab => \processadorinstance|ACC2\(1),
	datad => \processadorinstance|prominstance|prom~16_combout\,
	combout => \processadorinstance|ulainstance|Add0~2_combout\);

-- Location: LCCOMB_X49_Y7_N14
\processadorinstance|regfileinstance|regfile~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile~58_combout\ = (\processadorinstance|regfileinstance|regfile[5][0]~57_combout\ & (((\processadorinstance|ulainstance|Mux4~12_combout\ & \processadorinstance|ulainstance|Add0~6_combout\)))) # 
-- (!\processadorinstance|regfileinstance|regfile[5][0]~57_combout\ & (\processadorinstance|data_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|data_reg\(0),
	datab => \processadorinstance|ulainstance|Mux4~12_combout\,
	datac => \processadorinstance|regfileinstance|regfile[5][0]~57_combout\,
	datad => \processadorinstance|ulainstance|Add0~6_combout\,
	combout => \processadorinstance|regfileinstance|regfile~58_combout\);

-- Location: LCCOMB_X49_Y7_N16
\processadorinstance|regfileinstance|regfile~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile~59_combout\ = (\processadorinstance|regfileinstance|regfile~58_combout\) # ((!\processadorinstance|regfileinstance|regfile~79_combout\ & \processadorinstance|regfileinstance|regfile~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processadorinstance|regfileinstance|regfile~79_combout\,
	datac => \processadorinstance|regfileinstance|regfile~58_combout\,
	datad => \processadorinstance|regfileinstance|regfile~56_combout\,
	combout => \processadorinstance|regfileinstance|regfile~59_combout\);

-- Location: LCCOMB_X48_Y7_N18
\processadorinstance|regfileinstance|regfile~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile~67_combout\ = (\processadorinstance|regfileinstance|regfile[5][0]~57_combout\ & (((\processadorinstance|ulainstance|Mux4~12_combout\ & \processadorinstance|ulainstance|Add0~8_combout\)))) # 
-- (!\processadorinstance|regfileinstance|regfile[5][0]~57_combout\ & (\processadorinstance|data_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|data_reg\(1),
	datab => \processadorinstance|ulainstance|Mux4~12_combout\,
	datac => \processadorinstance|ulainstance|Add0~8_combout\,
	datad => \processadorinstance|regfileinstance|regfile[5][0]~57_combout\,
	combout => \processadorinstance|regfileinstance|regfile~67_combout\);

-- Location: LCCOMB_X48_Y7_N20
\processadorinstance|regfileinstance|regfile~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile~68_combout\ = (\processadorinstance|regfileinstance|regfile~67_combout\) # ((\processadorinstance|regfileinstance|regfile~56_combout\ & !\processadorinstance|regfileinstance|regfile~80_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|regfileinstance|regfile~56_combout\,
	datab => \processadorinstance|regfileinstance|regfile~80_combout\,
	datad => \processadorinstance|regfileinstance|regfile~67_combout\,
	combout => \processadorinstance|regfileinstance|regfile~68_combout\);

-- Location: LCCOMB_X49_Y9_N12
\processadorinstance|regfileinstance|regfile~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile~69_combout\ = (!\processadorinstance|prominstance|prom~21_combout\ & (!\processadorinstance|ulainstance|Mux4~14_combout\ & (\processadorinstance|regfileinstance|regfile[5][0]~57_combout\ & 
-- \processadorinstance|ulainstance|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|prominstance|prom~21_combout\,
	datab => \processadorinstance|ulainstance|Mux4~14_combout\,
	datac => \processadorinstance|regfileinstance|regfile[5][0]~57_combout\,
	datad => \processadorinstance|ulainstance|Add0~10_combout\,
	combout => \processadorinstance|regfileinstance|regfile~69_combout\);

-- Location: LCCOMB_X49_Y9_N14
\processadorinstance|regfileinstance|regfile~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile~70_combout\ = (!\processadorinstance|regfileinstance|regfile[5][0]~57_combout\ & \processadorinstance|data_reg\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \processadorinstance|regfileinstance|regfile[5][0]~57_combout\,
	datad => \processadorinstance|data_reg\(2),
	combout => \processadorinstance|regfileinstance|regfile~70_combout\);

-- Location: LCCOMB_X49_Y9_N4
\processadorinstance|regfileinstance|regfile~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile~71_combout\ = (\processadorinstance|regfileinstance|regfile~70_combout\) # ((\processadorinstance|regfileinstance|regfile~69_combout\) # ((\processadorinstance|regfileinstance|regfile~56_combout\ & 
-- \processadorinstance|ulainstance|Mux6~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|regfileinstance|regfile~56_combout\,
	datab => \processadorinstance|ulainstance|Mux6~20_combout\,
	datac => \processadorinstance|regfileinstance|regfile~70_combout\,
	datad => \processadorinstance|regfileinstance|regfile~69_combout\,
	combout => \processadorinstance|regfileinstance|regfile~71_combout\);

-- Location: LCCOMB_X46_Y10_N8
\processadorinstance|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|Equal0~0_combout\ = (!\processadorinstance|prominstance|prom~21_combout\ & (\processadorinstance|prominstance|prom~19_combout\ & (!\processadorinstance|prominstance|prom~17_combout\ & 
-- !\processadorinstance|prominstance|prom~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|prominstance|prom~21_combout\,
	datab => \processadorinstance|prominstance|prom~19_combout\,
	datac => \processadorinstance|prominstance|prom~17_combout\,
	datad => \processadorinstance|prominstance|prom~15_combout\,
	combout => \processadorinstance|Equal0~0_combout\);

-- Location: LCCOMB_X48_Y10_N24
\processadorinstance|prominstance|prom~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|prominstance|prom~26_combout\ = (!\processadorinstance|prominstance|addr_reg\(5) & (!\processadorinstance|prominstance|addr_reg\(6) & (\processadorinstance|prominstance|prom~18_combout\ & 
-- !\processadorinstance|prominstance|addr_reg\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|prominstance|addr_reg\(5),
	datab => \processadorinstance|prominstance|addr_reg\(6),
	datac => \processadorinstance|prominstance|prom~18_combout\,
	datad => \processadorinstance|prominstance|addr_reg\(4),
	combout => \processadorinstance|prominstance|prom~26_combout\);

-- Location: LCCOMB_X48_Y7_N24
\processadorinstance|regfileinstance|regfile~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile~79_combout\ = (\processadorinstance|prominstance|addr_reg\(4)) # ((\processadorinstance|prominstance|addr_reg\(7)) # ((\processadorinstance|prominstance|addr_reg\(5)) # 
-- (\processadorinstance|regfileinstance|regfile~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|prominstance|addr_reg\(4),
	datab => \processadorinstance|prominstance|addr_reg\(7),
	datac => \processadorinstance|prominstance|addr_reg\(5),
	datad => \processadorinstance|regfileinstance|regfile~5_combout\,
	combout => \processadorinstance|regfileinstance|regfile~79_combout\);

-- Location: LCCOMB_X47_Y7_N24
\processadorinstance|regfileinstance|regfile~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile~5_combout\ = (\processadorinstance|prominstance|addr_reg\(6)) # ((\processadorinstance|regfileinstance|regfile[0][0]~regout\ & ((\processadorinstance|regfileinstance|regfile~91_combout\))) # 
-- (!\processadorinstance|regfileinstance|regfile[0][0]~regout\ & (\processadorinstance|regfileinstance|regfile~93_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|regfileinstance|regfile[0][0]~regout\,
	datab => \processadorinstance|prominstance|addr_reg\(6),
	datac => \processadorinstance|regfileinstance|regfile~93_combout\,
	datad => \processadorinstance|regfileinstance|regfile~91_combout\,
	combout => \processadorinstance|regfileinstance|regfile~5_combout\);

-- Location: LCCOMB_X48_Y7_N26
\processadorinstance|regfileinstance|regfile~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile~80_combout\ = (\processadorinstance|prominstance|addr_reg\(4)) # ((\processadorinstance|prominstance|addr_reg\(7)) # ((\processadorinstance|prominstance|addr_reg\(5)) # 
-- (\processadorinstance|regfileinstance|regfile~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|prominstance|addr_reg\(4),
	datab => \processadorinstance|prominstance|addr_reg\(7),
	datac => \processadorinstance|prominstance|addr_reg\(5),
	datad => \processadorinstance|regfileinstance|regfile~23_combout\,
	combout => \processadorinstance|regfileinstance|regfile~80_combout\);

-- Location: LCCOMB_X47_Y7_N10
\processadorinstance|regfileinstance|regfile~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile~23_combout\ = (\processadorinstance|prominstance|addr_reg\(6)) # ((\processadorinstance|regfileinstance|regfile[0][1]~regout\ & ((\processadorinstance|regfileinstance|regfile~87_combout\))) # 
-- (!\processadorinstance|regfileinstance|regfile[0][1]~regout\ & (\processadorinstance|regfileinstance|regfile~89_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|regfileinstance|regfile[0][1]~regout\,
	datab => \processadorinstance|regfileinstance|regfile~89_combout\,
	datac => \processadorinstance|prominstance|addr_reg\(6),
	datad => \processadorinstance|regfileinstance|regfile~87_combout\,
	combout => \processadorinstance|regfileinstance|regfile~23_combout\);

-- Location: LCCOMB_X48_Y9_N18
\processadorinstance|regfileinstance|regfile~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile~81_combout\ = (\processadorinstance|prominstance|addr_reg\(7)) # ((\processadorinstance|prominstance|addr_reg\(4)) # ((\processadorinstance|prominstance|addr_reg\(5)) # 
-- (\processadorinstance|regfileinstance|regfile~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|prominstance|addr_reg\(7),
	datab => \processadorinstance|prominstance|addr_reg\(4),
	datac => \processadorinstance|prominstance|addr_reg\(5),
	datad => \processadorinstance|regfileinstance|regfile~41_combout\,
	combout => \processadorinstance|regfileinstance|regfile~81_combout\);

-- Location: LCCOMB_X48_Y9_N12
\processadorinstance|regfileinstance|regfile~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile~41_combout\ = (\processadorinstance|prominstance|addr_reg\(6)) # ((\processadorinstance|regfileinstance|regfile[0][3]~regout\ & ((\processadorinstance|regfileinstance|regfile~83_combout\))) # 
-- (!\processadorinstance|regfileinstance|regfile[0][3]~regout\ & (\processadorinstance|regfileinstance|regfile~85_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|prominstance|addr_reg\(6),
	datab => \processadorinstance|regfileinstance|regfile[0][3]~regout\,
	datac => \processadorinstance|regfileinstance|regfile~85_combout\,
	datad => \processadorinstance|regfileinstance|regfile~83_combout\,
	combout => \processadorinstance|regfileinstance|regfile~41_combout\);

-- Location: LCCOMB_X48_Y9_N30
\processadorinstance|ulainstance|Mux6~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|Mux6~8_combout\ = (\processadorinstance|prominstance|addr_reg\(1) & ((\processadorinstance|regfileinstance|regfile[0][2]~regout\ & ((\processadorinstance|ACC2\(2)) # (!\processadorinstance|prominstance|addr_reg\(0)))) # 
-- (!\processadorinstance|regfileinstance|regfile[0][2]~regout\ & (!\processadorinstance|prominstance|addr_reg\(0) & \processadorinstance|ACC2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|regfileinstance|regfile[0][2]~regout\,
	datab => \processadorinstance|prominstance|addr_reg\(0),
	datac => \processadorinstance|prominstance|addr_reg\(1),
	datad => \processadorinstance|ACC2\(2),
	combout => \processadorinstance|ulainstance|Mux6~8_combout\);

-- Location: LCCOMB_X48_Y9_N8
\processadorinstance|ulainstance|Mux6~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|Mux6~6_combout\ = (\processadorinstance|prominstance|addr_reg\(2) & \processadorinstance|ulainstance|Mux6~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \processadorinstance|prominstance|addr_reg\(2),
	datad => \processadorinstance|ulainstance|Mux6~8_combout\,
	combout => \processadorinstance|ulainstance|Mux6~6_combout\);

-- Location: LCCOMB_X48_Y9_N16
\processadorinstance|ulainstance|Mux6~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|Mux6~11_combout\ = (!\processadorinstance|prominstance|addr_reg\(0) & (!\processadorinstance|prominstance|addr_reg\(1) & ((\processadorinstance|regfileinstance|regfile[0][2]~regout\) # (\processadorinstance|ACC2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|prominstance|addr_reg\(0),
	datab => \processadorinstance|prominstance|addr_reg\(1),
	datac => \processadorinstance|regfileinstance|regfile[0][2]~regout\,
	datad => \processadorinstance|ACC2\(2),
	combout => \processadorinstance|ulainstance|Mux6~11_combout\);

-- Location: LCCOMB_X48_Y9_N22
\processadorinstance|ulainstance|Mux6~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|Mux6~20_combout\ = (!\processadorinstance|prominstance|addr_reg\(6) & (!\processadorinstance|prominstance|addr_reg\(4) & (\processadorinstance|ulainstance|Mux6~3_combout\ & 
-- !\processadorinstance|prominstance|addr_reg\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|prominstance|addr_reg\(6),
	datab => \processadorinstance|prominstance|addr_reg\(4),
	datac => \processadorinstance|ulainstance|Mux6~3_combout\,
	datad => \processadorinstance|prominstance|addr_reg\(5),
	combout => \processadorinstance|ulainstance|Mux6~20_combout\);

-- Location: LCCOMB_X48_Y9_N24
\processadorinstance|ulainstance|Mux6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|Mux6~3_combout\ = (!\processadorinstance|prominstance|addr_reg\(7) & ((\processadorinstance|prominstance|addr_reg\(3) & ((\processadorinstance|ulainstance|Mux6~9_combout\))) # 
-- (!\processadorinstance|prominstance|addr_reg\(3) & (\processadorinstance|ulainstance|Mux6~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|prominstance|addr_reg\(7),
	datab => \processadorinstance|prominstance|addr_reg\(3),
	datac => \processadorinstance|ulainstance|Mux6~6_combout\,
	datad => \processadorinstance|ulainstance|Mux6~9_combout\,
	combout => \processadorinstance|ulainstance|Mux6~3_combout\);

-- Location: LCCOMB_X48_Y9_N26
\processadorinstance|ulainstance|Mux6~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|Mux6~9_combout\ = (\processadorinstance|prominstance|addr_reg\(2) & (((\processadorinstance|ulainstance|Mux6~11_combout\)))) # (!\processadorinstance|prominstance|addr_reg\(2) & 
-- (\processadorinstance|regfileinstance|regfile[0][2]~regout\ & ((\processadorinstance|ACC2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|regfileinstance|regfile[0][2]~regout\,
	datab => \processadorinstance|prominstance|addr_reg\(2),
	datac => \processadorinstance|ulainstance|Mux6~11_combout\,
	datad => \processadorinstance|ACC2\(2),
	combout => \processadorinstance|ulainstance|Mux6~9_combout\);

-- Location: LCCOMB_X48_Y9_N0
\processadorinstance|regfileinstance|regfile~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile~82_combout\ = (\processadorinstance|prominstance|addr_reg\(2) & (\processadorinstance|prominstance|addr_reg\(0) & ((!\processadorinstance|ACC2\(3)) # (!\processadorinstance|prominstance|addr_reg\(1))))) # 
-- (!\processadorinstance|prominstance|addr_reg\(2) & (((!\processadorinstance|ACC2\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|prominstance|addr_reg\(0),
	datab => \processadorinstance|prominstance|addr_reg\(2),
	datac => \processadorinstance|prominstance|addr_reg\(1),
	datad => \processadorinstance|ACC2\(3),
	combout => \processadorinstance|regfileinstance|regfile~82_combout\);

-- Location: LCCOMB_X48_Y9_N6
\processadorinstance|regfileinstance|regfile~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile~83_combout\ = (\processadorinstance|regfileinstance|regfile~82_combout\) # (\processadorinstance|prominstance|addr_reg\(3) $ (((!\processadorinstance|prominstance|addr_reg\(2)) # 
-- (!\processadorinstance|prominstance|addr_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|prominstance|addr_reg\(1),
	datab => \processadorinstance|prominstance|addr_reg\(3),
	datac => \processadorinstance|prominstance|addr_reg\(2),
	datad => \processadorinstance|regfileinstance|regfile~82_combout\,
	combout => \processadorinstance|regfileinstance|regfile~83_combout\);

-- Location: LCCOMB_X48_Y9_N28
\processadorinstance|regfileinstance|regfile~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile~84_combout\ = ((\processadorinstance|prominstance|addr_reg\(3) $ (!\processadorinstance|prominstance|addr_reg\(1))) # (!\processadorinstance|ACC2\(3))) # (!\processadorinstance|prominstance|addr_reg\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|prominstance|addr_reg\(3),
	datab => \processadorinstance|prominstance|addr_reg\(2),
	datac => \processadorinstance|ACC2\(3),
	datad => \processadorinstance|prominstance|addr_reg\(1),
	combout => \processadorinstance|regfileinstance|regfile~84_combout\);

-- Location: LCCOMB_X48_Y9_N14
\processadorinstance|regfileinstance|regfile~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile~85_combout\ = (\processadorinstance|regfileinstance|regfile~84_combout\) # ((\processadorinstance|prominstance|addr_reg\(0) & \processadorinstance|prominstance|addr_reg\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|prominstance|addr_reg\(0),
	datac => \processadorinstance|prominstance|addr_reg\(2),
	datad => \processadorinstance|regfileinstance|regfile~84_combout\,
	combout => \processadorinstance|regfileinstance|regfile~85_combout\);

-- Location: LCCOMB_X47_Y7_N16
\processadorinstance|regfileinstance|regfile~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile~86_combout\ = (\processadorinstance|prominstance|addr_reg\(2) & (\processadorinstance|prominstance|addr_reg\(0) & ((!\processadorinstance|prominstance|addr_reg\(1)) # (!\processadorinstance|ACC2\(1))))) # 
-- (!\processadorinstance|prominstance|addr_reg\(2) & (((!\processadorinstance|ACC2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|prominstance|addr_reg\(0),
	datab => \processadorinstance|ACC2\(1),
	datac => \processadorinstance|prominstance|addr_reg\(1),
	datad => \processadorinstance|prominstance|addr_reg\(2),
	combout => \processadorinstance|regfileinstance|regfile~86_combout\);

-- Location: LCCOMB_X47_Y7_N6
\processadorinstance|regfileinstance|regfile~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile~87_combout\ = (\processadorinstance|regfileinstance|regfile~86_combout\) # (\processadorinstance|prominstance|addr_reg\(3) $ (((!\processadorinstance|prominstance|addr_reg\(1)) # 
-- (!\processadorinstance|prominstance|addr_reg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|prominstance|addr_reg\(3),
	datab => \processadorinstance|prominstance|addr_reg\(2),
	datac => \processadorinstance|regfileinstance|regfile~86_combout\,
	datad => \processadorinstance|prominstance|addr_reg\(1),
	combout => \processadorinstance|regfileinstance|regfile~87_combout\);

-- Location: LCCOMB_X47_Y7_N28
\processadorinstance|regfileinstance|regfile~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile~88_combout\ = ((\processadorinstance|prominstance|addr_reg\(3) $ (!\processadorinstance|prominstance|addr_reg\(1))) # (!\processadorinstance|ACC2\(1))) # (!\processadorinstance|prominstance|addr_reg\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|prominstance|addr_reg\(2),
	datab => \processadorinstance|prominstance|addr_reg\(3),
	datac => \processadorinstance|ACC2\(1),
	datad => \processadorinstance|prominstance|addr_reg\(1),
	combout => \processadorinstance|regfileinstance|regfile~88_combout\);

-- Location: LCCOMB_X47_Y7_N18
\processadorinstance|regfileinstance|regfile~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile~89_combout\ = (\processadorinstance|regfileinstance|regfile~88_combout\) # ((\processadorinstance|prominstance|addr_reg\(2) & \processadorinstance|prominstance|addr_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processadorinstance|prominstance|addr_reg\(2),
	datac => \processadorinstance|prominstance|addr_reg\(0),
	datad => \processadorinstance|regfileinstance|regfile~88_combout\,
	combout => \processadorinstance|regfileinstance|regfile~89_combout\);

-- Location: LCCOMB_X47_Y7_N20
\processadorinstance|regfileinstance|regfile~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile~90_combout\ = (\processadorinstance|prominstance|addr_reg\(2) & (\processadorinstance|prominstance|addr_reg\(0) & ((!\processadorinstance|ACC2\(0)) # (!\processadorinstance|prominstance|addr_reg\(1))))) # 
-- (!\processadorinstance|prominstance|addr_reg\(2) & (((!\processadorinstance|ACC2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|prominstance|addr_reg\(0),
	datab => \processadorinstance|prominstance|addr_reg\(1),
	datac => \processadorinstance|prominstance|addr_reg\(2),
	datad => \processadorinstance|ACC2\(0),
	combout => \processadorinstance|regfileinstance|regfile~90_combout\);

-- Location: LCCOMB_X47_Y7_N2
\processadorinstance|regfileinstance|regfile~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile~91_combout\ = (\processadorinstance|regfileinstance|regfile~90_combout\) # (\processadorinstance|prominstance|addr_reg\(3) $ (((!\processadorinstance|prominstance|addr_reg\(2)) # 
-- (!\processadorinstance|prominstance|addr_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|prominstance|addr_reg\(1),
	datab => \processadorinstance|prominstance|addr_reg\(2),
	datac => \processadorinstance|regfileinstance|regfile~90_combout\,
	datad => \processadorinstance|prominstance|addr_reg\(3),
	combout => \processadorinstance|regfileinstance|regfile~91_combout\);

-- Location: LCCOMB_X47_Y7_N0
\processadorinstance|regfileinstance|regfile~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile~92_combout\ = ((\processadorinstance|prominstance|addr_reg\(3) $ (!\processadorinstance|prominstance|addr_reg\(1))) # (!\processadorinstance|ACC2\(0))) # (!\processadorinstance|prominstance|addr_reg\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|prominstance|addr_reg\(3),
	datab => \processadorinstance|prominstance|addr_reg\(2),
	datac => \processadorinstance|prominstance|addr_reg\(1),
	datad => \processadorinstance|ACC2\(0),
	combout => \processadorinstance|regfileinstance|regfile~92_combout\);

-- Location: LCCOMB_X47_Y7_N14
\processadorinstance|regfileinstance|regfile~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile~93_combout\ = (\processadorinstance|regfileinstance|regfile~92_combout\) # ((\processadorinstance|prominstance|addr_reg\(2) & \processadorinstance|prominstance|addr_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processadorinstance|prominstance|addr_reg\(2),
	datac => \processadorinstance|prominstance|addr_reg\(0),
	datad => \processadorinstance|regfileinstance|regfile~92_combout\,
	combout => \processadorinstance|regfileinstance|regfile~93_combout\);

-- Location: LCCOMB_X48_Y6_N8
\processadorinstance|ACC2[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ACC2\(2) = (GLOBAL(\processadorinstance|ACC2[3]~0clkctrl_outclk\) & ((\processadorinstance|regfileinstance|Mux5~4_combout\))) # (!GLOBAL(\processadorinstance|ACC2[3]~0clkctrl_outclk\) & (\processadorinstance|ACC2\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processadorinstance|ACC2\(2),
	datac => \processadorinstance|ACC2[3]~0clkctrl_outclk\,
	datad => \processadorinstance|regfileinstance|Mux5~4_combout\,
	combout => \processadorinstance|ACC2\(2));

-- Location: LCCOMB_X48_Y7_N0
\processadorinstance|ACC2[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ACC2\(1) = (GLOBAL(\processadorinstance|ACC2[3]~0clkctrl_outclk\) & ((\processadorinstance|regfileinstance|Mux6~4_combout\))) # (!GLOBAL(\processadorinstance|ACC2[3]~0clkctrl_outclk\) & (\processadorinstance|ACC2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|ACC2\(1),
	datab => \processadorinstance|ACC2[3]~0clkctrl_outclk\,
	datad => \processadorinstance|regfileinstance|Mux6~4_combout\,
	combout => \processadorinstance|ACC2\(1));

-- Location: LCCOMB_X49_Y9_N8
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

-- Location: LCFF_X49_Y9_N9
\processadorinstance|pcinstance|pc[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	datain => \processadorinstance|pcinstance|pc[0]~21_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|pcinstance|pc\(0));

-- Location: LCFF_X48_Y10_N1
\processadorinstance|prominstance|addr_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	sdata => \processadorinstance|pcinstance|pc\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|prominstance|addr_reg\(0));

-- Location: LCCOMB_X49_Y11_N10
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

-- Location: LCFF_X49_Y11_N11
\processadorinstance|pcinstance|pc[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	datain => \processadorinstance|pcinstance|pc[1]~7_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|pcinstance|pc\(1));

-- Location: LCFF_X48_Y10_N17
\processadorinstance|prominstance|addr_reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	sdata => \processadorinstance|pcinstance|pc\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|prominstance|addr_reg\(1));

-- Location: LCCOMB_X49_Y11_N12
\processadorinstance|pcinstance|pc[2]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|pcinstance|pc[2]~9_combout\ = (\processadorinstance|pcinstance|pc\(2) & (!\processadorinstance|pcinstance|pc[1]~8\)) # (!\processadorinstance|pcinstance|pc\(2) & ((\processadorinstance|pcinstance|pc[1]~8\) # (GND)))
-- \processadorinstance|pcinstance|pc[2]~10\ = CARRY((!\processadorinstance|pcinstance|pc[1]~8\) # (!\processadorinstance|pcinstance|pc\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|pcinstance|pc\(2),
	datad => VCC,
	cin => \processadorinstance|pcinstance|pc[1]~8\,
	combout => \processadorinstance|pcinstance|pc[2]~9_combout\,
	cout => \processadorinstance|pcinstance|pc[2]~10\);

-- Location: LCCOMB_X49_Y11_N14
\processadorinstance|pcinstance|pc[3]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|pcinstance|pc[3]~11_combout\ = (\processadorinstance|pcinstance|pc\(3) & (\processadorinstance|pcinstance|pc[2]~10\ $ (GND))) # (!\processadorinstance|pcinstance|pc\(3) & (!\processadorinstance|pcinstance|pc[2]~10\ & VCC))
-- \processadorinstance|pcinstance|pc[3]~12\ = CARRY((\processadorinstance|pcinstance|pc\(3) & !\processadorinstance|pcinstance|pc[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \processadorinstance|pcinstance|pc\(3),
	datad => VCC,
	cin => \processadorinstance|pcinstance|pc[2]~10\,
	combout => \processadorinstance|pcinstance|pc[3]~11_combout\,
	cout => \processadorinstance|pcinstance|pc[3]~12\);

-- Location: LCFF_X49_Y11_N15
\processadorinstance|pcinstance|pc[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	datain => \processadorinstance|pcinstance|pc[3]~11_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|pcinstance|pc\(3));

-- Location: LCFF_X48_Y10_N3
\processadorinstance|prominstance|addr_reg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	sdata => \processadorinstance|pcinstance|pc\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|prominstance|addr_reg\(3));

-- Location: LCCOMB_X48_Y10_N16
\processadorinstance|prominstance|prom~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|prominstance|prom~16_combout\ = (\processadorinstance|prominstance|addr_reg\(2) & (\processadorinstance|prominstance|addr_reg\(0) & (\processadorinstance|prominstance|addr_reg\(1) & !\processadorinstance|prominstance|addr_reg\(3)))) # 
-- (!\processadorinstance|prominstance|addr_reg\(2) & (((\processadorinstance|prominstance|addr_reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|prominstance|addr_reg\(2),
	datab => \processadorinstance|prominstance|addr_reg\(0),
	datac => \processadorinstance|prominstance|addr_reg\(1),
	datad => \processadorinstance|prominstance|addr_reg\(3),
	combout => \processadorinstance|prominstance|prom~16_combout\);

-- Location: LCCOMB_X49_Y11_N16
\processadorinstance|pcinstance|pc[4]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|pcinstance|pc[4]~13_combout\ = (\processadorinstance|pcinstance|pc\(4) & (!\processadorinstance|pcinstance|pc[3]~12\)) # (!\processadorinstance|pcinstance|pc\(4) & ((\processadorinstance|pcinstance|pc[3]~12\) # (GND)))
-- \processadorinstance|pcinstance|pc[4]~14\ = CARRY((!\processadorinstance|pcinstance|pc[3]~12\) # (!\processadorinstance|pcinstance|pc\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|pcinstance|pc\(4),
	datad => VCC,
	cin => \processadorinstance|pcinstance|pc[3]~12\,
	combout => \processadorinstance|pcinstance|pc[4]~13_combout\,
	cout => \processadorinstance|pcinstance|pc[4]~14\);

-- Location: LCFF_X49_Y11_N17
\processadorinstance|pcinstance|pc[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	datain => \processadorinstance|pcinstance|pc[4]~13_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|pcinstance|pc\(4));

-- Location: LCFF_X48_Y10_N9
\processadorinstance|prominstance|addr_reg[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	sdata => \processadorinstance|pcinstance|pc\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|prominstance|addr_reg\(4));

-- Location: LCCOMB_X49_Y11_N18
\processadorinstance|pcinstance|pc[5]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|pcinstance|pc[5]~15_combout\ = (\processadorinstance|pcinstance|pc\(5) & (\processadorinstance|pcinstance|pc[4]~14\ $ (GND))) # (!\processadorinstance|pcinstance|pc\(5) & (!\processadorinstance|pcinstance|pc[4]~14\ & VCC))
-- \processadorinstance|pcinstance|pc[5]~16\ = CARRY((\processadorinstance|pcinstance|pc\(5) & !\processadorinstance|pcinstance|pc[4]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \processadorinstance|pcinstance|pc\(5),
	datad => VCC,
	cin => \processadorinstance|pcinstance|pc[4]~14\,
	combout => \processadorinstance|pcinstance|pc[5]~15_combout\,
	cout => \processadorinstance|pcinstance|pc[5]~16\);

-- Location: LCFF_X49_Y11_N19
\processadorinstance|pcinstance|pc[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	datain => \processadorinstance|pcinstance|pc[5]~15_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|pcinstance|pc\(5));

-- Location: LCCOMB_X49_Y11_N20
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

-- Location: LCFF_X49_Y11_N21
\processadorinstance|pcinstance|pc[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	datain => \processadorinstance|pcinstance|pc[6]~17_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|pcinstance|pc\(6));

-- Location: LCFF_X48_Y10_N31
\processadorinstance|prominstance|addr_reg[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	sdata => \processadorinstance|pcinstance|pc\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|prominstance|addr_reg\(6));

-- Location: LCFF_X48_Y10_N11
\processadorinstance|prominstance|addr_reg[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	sdata => \processadorinstance|pcinstance|pc\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|prominstance|addr_reg\(5));

-- Location: LCCOMB_X48_Y10_N30
\processadorinstance|prominstance|prom~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|prominstance|prom~13_combout\ = (!\processadorinstance|prominstance|addr_reg\(4) & (!\processadorinstance|prominstance|addr_reg\(6) & !\processadorinstance|prominstance|addr_reg\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processadorinstance|prominstance|addr_reg\(4),
	datac => \processadorinstance|prominstance|addr_reg\(6),
	datad => \processadorinstance|prominstance|addr_reg\(5),
	combout => \processadorinstance|prominstance|prom~13_combout\);

-- Location: LCFF_X49_Y11_N13
\processadorinstance|pcinstance|pc[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	datain => \processadorinstance|pcinstance|pc[2]~9_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|pcinstance|pc\(2));

-- Location: LCFF_X48_Y10_N23
\processadorinstance|prominstance|addr_reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	sdata => \processadorinstance|pcinstance|pc\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|prominstance|addr_reg\(2));

-- Location: LCCOMB_X48_Y10_N2
\processadorinstance|prominstance|prom~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|prominstance|prom~14_combout\ = (\processadorinstance|prominstance|addr_reg\(2) & (!\processadorinstance|prominstance|addr_reg\(0) & (\processadorinstance|prominstance|addr_reg\(1) $ (\processadorinstance|prominstance|addr_reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|prominstance|addr_reg\(1),
	datab => \processadorinstance|prominstance|addr_reg\(2),
	datac => \processadorinstance|prominstance|addr_reg\(3),
	datad => \processadorinstance|prominstance|addr_reg\(0),
	combout => \processadorinstance|prominstance|prom~14_combout\);

-- Location: LCCOMB_X48_Y10_N14
\processadorinstance|ulainstance|Mux8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|Mux8~2_combout\ = (!\processadorinstance|prominstance|addr_reg\(7) & (!\processadorinstance|prominstance|prom~16_combout\ & (\processadorinstance|prominstance|prom~13_combout\ & 
-- \processadorinstance|prominstance|prom~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|prominstance|addr_reg\(7),
	datab => \processadorinstance|prominstance|prom~16_combout\,
	datac => \processadorinstance|prominstance|prom~13_combout\,
	datad => \processadorinstance|prominstance|prom~14_combout\,
	combout => \processadorinstance|ulainstance|Mux8~2_combout\);

-- Location: LCCOMB_X48_Y10_N20
\processadorinstance|prominstance|prom~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|prominstance|prom~20_combout\ = (\processadorinstance|prominstance|addr_reg\(2) & ((\processadorinstance|prominstance|addr_reg\(1) & (\processadorinstance|prominstance|addr_reg\(0) & !\processadorinstance|prominstance|addr_reg\(3))) # 
-- (!\processadorinstance|prominstance|addr_reg\(1) & (!\processadorinstance|prominstance|addr_reg\(0) & \processadorinstance|prominstance|addr_reg\(3))))) # (!\processadorinstance|prominstance|addr_reg\(2) & 
-- (((\processadorinstance|prominstance|addr_reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|prominstance|addr_reg\(1),
	datab => \processadorinstance|prominstance|addr_reg\(2),
	datac => \processadorinstance|prominstance|addr_reg\(0),
	datad => \processadorinstance|prominstance|addr_reg\(3),
	combout => \processadorinstance|prominstance|prom~20_combout\);

-- Location: LCCOMB_X48_Y10_N28
\processadorinstance|prominstance|prom~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|prominstance|prom~7_combout\ = (!\processadorinstance|prominstance|addr_reg\(7) & (!\processadorinstance|prominstance|addr_reg\(6) & (!\processadorinstance|prominstance|addr_reg\(4) & !\processadorinstance|prominstance|addr_reg\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|prominstance|addr_reg\(7),
	datab => \processadorinstance|prominstance|addr_reg\(6),
	datac => \processadorinstance|prominstance|addr_reg\(4),
	datad => \processadorinstance|prominstance|addr_reg\(5),
	combout => \processadorinstance|prominstance|prom~7_combout\);

-- Location: LCCOMB_X49_Y10_N6
\processadorinstance|prominstance|prom~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|prominstance|prom~21_combout\ = (\processadorinstance|prominstance|prom~20_combout\ & \processadorinstance|prominstance|prom~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \processadorinstance|prominstance|prom~20_combout\,
	datad => \processadorinstance|prominstance|prom~7_combout\,
	combout => \processadorinstance|prominstance|prom~21_combout\);

-- Location: LCCOMB_X47_Y10_N14
\processadorinstance|disp0[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|disp0[3]~0_combout\ = (!\processadorinstance|prominstance|prom~19_combout\ & (\processadorinstance|ulainstance|Mux8~2_combout\ & (\processadorinstance|prominstance|prom~21_combout\ & \KEY~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|prominstance|prom~19_combout\,
	datab => \processadorinstance|ulainstance|Mux8~2_combout\,
	datac => \processadorinstance|prominstance|prom~21_combout\,
	datad => \KEY~combout\(0),
	combout => \processadorinstance|disp0[3]~0_combout\);

-- Location: CLKCTRL_G7
\processadorinstance|disp0[3]~0clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \processadorinstance|disp0[3]~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \processadorinstance|disp0[3]~0clkctrl_outclk\);

-- Location: LCCOMB_X48_Y10_N22
\processadorinstance|prominstance|prom~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|prominstance|prom~17_combout\ = (!\processadorinstance|prominstance|prom~16_combout\) # (!\processadorinstance|prominstance|prom~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processadorinstance|prominstance|prom~7_combout\,
	datad => \processadorinstance|prominstance|prom~16_combout\,
	combout => \processadorinstance|prominstance|prom~17_combout\);

-- Location: LCCOMB_X49_Y10_N16
\processadorinstance|prominstance|prom~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|prominstance|prom~15_combout\ = (!\processadorinstance|prominstance|addr_reg\(7) & (\processadorinstance|prominstance|prom~13_combout\ & \processadorinstance|prominstance|prom~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|prominstance|addr_reg\(7),
	datac => \processadorinstance|prominstance|prom~13_combout\,
	datad => \processadorinstance|prominstance|prom~14_combout\,
	combout => \processadorinstance|prominstance|prom~15_combout\);

-- Location: LCCOMB_X49_Y11_N22
\processadorinstance|pcinstance|pc[7]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|pcinstance|pc[7]~19_combout\ = \processadorinstance|pcinstance|pc[6]~18\ $ (!\processadorinstance|pcinstance|pc\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \processadorinstance|pcinstance|pc\(7),
	cin => \processadorinstance|pcinstance|pc[6]~18\,
	combout => \processadorinstance|pcinstance|pc[7]~19_combout\);

-- Location: LCFF_X49_Y11_N23
\processadorinstance|pcinstance|pc[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	datain => \processadorinstance|pcinstance|pc[7]~19_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|pcinstance|pc\(7));

-- Location: LCFF_X49_Y10_N15
\processadorinstance|prominstance|addr_reg[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	sdata => \processadorinstance|pcinstance|pc\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|prominstance|addr_reg\(7));

-- Location: LCCOMB_X49_Y10_N14
\processadorinstance|prominstance|prom~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|prominstance|prom~19_combout\ = (\processadorinstance|prominstance|prom~18_combout\ & (!\processadorinstance|prominstance|addr_reg\(7) & \processadorinstance|prominstance|prom~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|prominstance|prom~18_combout\,
	datac => \processadorinstance|prominstance|addr_reg\(7),
	datad => \processadorinstance|prominstance|prom~13_combout\,
	combout => \processadorinstance|prominstance|prom~19_combout\);

-- Location: LCCOMB_X48_Y10_N12
\processadorinstance|ulainstance|Mux4~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|Mux4~12_combout\ = (!\processadorinstance|prominstance|prom~21_combout\ & (!\processadorinstance|prominstance|prom~15_combout\ & (\processadorinstance|prominstance|prom~17_combout\ $ 
-- (!\processadorinstance|prominstance|prom~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|prominstance|prom~21_combout\,
	datab => \processadorinstance|prominstance|prom~17_combout\,
	datac => \processadorinstance|prominstance|prom~15_combout\,
	datad => \processadorinstance|prominstance|prom~19_combout\,
	combout => \processadorinstance|ulainstance|Mux4~12_combout\);

-- Location: LCCOMB_X49_Y9_N22
\processadorinstance|prominstance|prom~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|prominstance|prom~11_combout\ = (\processadorinstance|prominstance|addr_reg\(1) & !\processadorinstance|prominstance|addr_reg\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processadorinstance|prominstance|addr_reg\(1),
	datad => \processadorinstance|prominstance|addr_reg\(2),
	combout => \processadorinstance|prominstance|prom~11_combout\);

-- Location: LCCOMB_X49_Y9_N24
\processadorinstance|prominstance|prom~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|prominstance|prom~12_combout\ = (\processadorinstance|prominstance|addr_reg\(0) & (\processadorinstance|prominstance|prom~11_combout\ & (\processadorinstance|prominstance|addr_reg\(3) & 
-- \processadorinstance|prominstance|prom~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|prominstance|addr_reg\(0),
	datab => \processadorinstance|prominstance|prom~11_combout\,
	datac => \processadorinstance|prominstance|addr_reg\(3),
	datad => \processadorinstance|prominstance|prom~7_combout\,
	combout => \processadorinstance|prominstance|prom~12_combout\);

-- Location: LCCOMB_X48_Y10_N6
\processadorinstance|prominstance|prom~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|prominstance|prom~6_combout\ = (!\processadorinstance|prominstance|addr_reg\(0) & ((\processadorinstance|prominstance|addr_reg\(3) & ((!\processadorinstance|prominstance|addr_reg\(2)))) # 
-- (!\processadorinstance|prominstance|addr_reg\(3) & ((\processadorinstance|prominstance|addr_reg\(1)) # (\processadorinstance|prominstance|addr_reg\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|prominstance|addr_reg\(0),
	datab => \processadorinstance|prominstance|addr_reg\(3),
	datac => \processadorinstance|prominstance|addr_reg\(1),
	datad => \processadorinstance|prominstance|addr_reg\(2),
	combout => \processadorinstance|prominstance|prom~6_combout\);

-- Location: LCCOMB_X48_Y10_N8
\processadorinstance|prominstance|prom~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|prominstance|prom~8_combout\ = (\processadorinstance|prominstance|prom~7_combout\ & \processadorinstance|prominstance|prom~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processadorinstance|prominstance|prom~7_combout\,
	datad => \processadorinstance|prominstance|prom~6_combout\,
	combout => \processadorinstance|prominstance|prom~8_combout\);

-- Location: LCCOMB_X48_Y10_N4
\processadorinstance|prominstance|prom~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|prominstance|prom~9_combout\ = (!\processadorinstance|prominstance|addr_reg\(3) & ((\processadorinstance|prominstance|addr_reg\(0) & (\processadorinstance|prominstance|addr_reg\(1) & !\processadorinstance|prominstance|addr_reg\(2))) # 
-- (!\processadorinstance|prominstance|addr_reg\(0) & (!\processadorinstance|prominstance|addr_reg\(1) & \processadorinstance|prominstance|addr_reg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|prominstance|addr_reg\(0),
	datab => \processadorinstance|prominstance|addr_reg\(3),
	datac => \processadorinstance|prominstance|addr_reg\(1),
	datad => \processadorinstance|prominstance|addr_reg\(2),
	combout => \processadorinstance|prominstance|prom~9_combout\);

-- Location: LCCOMB_X48_Y10_N10
\processadorinstance|prominstance|prom~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|prominstance|prom~10_combout\ = (\processadorinstance|prominstance|prom~9_combout\ & \processadorinstance|prominstance|prom~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processadorinstance|prominstance|prom~9_combout\,
	datad => \processadorinstance|prominstance|prom~7_combout\,
	combout => \processadorinstance|prominstance|prom~10_combout\);

-- Location: LCCOMB_X49_Y6_N20
\processadorinstance|regfileinstance|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|Mux2~0_combout\ = (\processadorinstance|regfileinstance|regfile[5][5]~regout\ & (\processadorinstance|prominstance|prom~12_combout\ & (\processadorinstance|prominstance|prom~8_combout\ & 
-- !\processadorinstance|prominstance|prom~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|regfileinstance|regfile[5][5]~regout\,
	datab => \processadorinstance|prominstance|prom~12_combout\,
	datac => \processadorinstance|prominstance|prom~8_combout\,
	datad => \processadorinstance|prominstance|prom~10_combout\,
	combout => \processadorinstance|regfileinstance|Mux2~0_combout\);

-- Location: LCCOMB_X49_Y10_N10
\processadorinstance|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|WideOr1~0_combout\ = (\processadorinstance|prominstance|prom~21_combout\ & (((!\processadorinstance|prominstance|prom~15_combout\ & \processadorinstance|prominstance|prom~17_combout\)))) # 
-- (!\processadorinstance|prominstance|prom~21_combout\ & (\processadorinstance|prominstance|prom~15_combout\ & ((!\processadorinstance|prominstance|prom~17_combout\) # (!\processadorinstance|prominstance|prom~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|prominstance|prom~21_combout\,
	datab => \processadorinstance|prominstance|prom~19_combout\,
	datac => \processadorinstance|prominstance|prom~15_combout\,
	datad => \processadorinstance|prominstance|prom~17_combout\,
	combout => \processadorinstance|WideOr1~0_combout\);

-- Location: LCCOMB_X49_Y14_N6
\processadorinstance|ACC2[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ACC2[3]~0_combout\ = (\KEY~combout\(0) & \processadorinstance|WideOr1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY~combout\(0),
	datad => \processadorinstance|WideOr1~0_combout\,
	combout => \processadorinstance|ACC2[3]~0_combout\);

-- Location: CLKCTRL_G5
\processadorinstance|ACC2[3]~0clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \processadorinstance|ACC2[3]~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \processadorinstance|ACC2[3]~0clkctrl_outclk\);

-- Location: LCCOMB_X49_Y6_N10
\processadorinstance|ACC2[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ACC2\(5) = (GLOBAL(\processadorinstance|ACC2[3]~0clkctrl_outclk\) & ((\processadorinstance|regfileinstance|Mux2~0_combout\))) # (!GLOBAL(\processadorinstance|ACC2[3]~0clkctrl_outclk\) & (\processadorinstance|ACC2\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|ACC2\(5),
	datac => \processadorinstance|regfileinstance|Mux2~0_combout\,
	datad => \processadorinstance|ACC2[3]~0clkctrl_outclk\,
	combout => \processadorinstance|ACC2\(5));

-- Location: LCCOMB_X49_Y10_N8
\processadorinstance|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|WideOr0~0_combout\ = (\processadorinstance|prominstance|prom~15_combout\) # ((\processadorinstance|prominstance|prom~19_combout\ & ((\processadorinstance|prominstance|prom~21_combout\) # 
-- (!\processadorinstance|prominstance|prom~17_combout\))) # (!\processadorinstance|prominstance|prom~19_combout\ & ((\processadorinstance|prominstance|prom~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|prominstance|prom~15_combout\,
	datab => \processadorinstance|prominstance|prom~21_combout\,
	datac => \processadorinstance|prominstance|prom~19_combout\,
	datad => \processadorinstance|prominstance|prom~17_combout\,
	combout => \processadorinstance|WideOr0~0_combout\);

-- Location: LCCOMB_X49_Y9_N2
\processadorinstance|regfileinstance|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|Mux3~0_combout\ = (\processadorinstance|prominstance|addr_reg\(0) & \processadorinstance|prominstance|addr_reg\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|prominstance|addr_reg\(0),
	datad => \processadorinstance|prominstance|addr_reg\(3),
	combout => \processadorinstance|regfileinstance|Mux3~0_combout\);

-- Location: LCCOMB_X49_Y9_N0
\processadorinstance|regfileinstance|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|Mux3~1_combout\ = (\processadorinstance|prominstance|prom~7_combout\ & (\processadorinstance|regfileinstance|Mux3~0_combout\ & (!\processadorinstance|prominstance|prom~9_combout\ & 
-- \processadorinstance|prominstance|prom~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|prominstance|prom~7_combout\,
	datab => \processadorinstance|regfileinstance|Mux3~0_combout\,
	datac => \processadorinstance|prominstance|prom~9_combout\,
	datad => \processadorinstance|prominstance|prom~11_combout\,
	combout => \processadorinstance|regfileinstance|Mux3~1_combout\);

-- Location: LCCOMB_X49_Y10_N28
\processadorinstance|regfileinstance|regfile[5][0]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile[5][0]~57_combout\ = ((\processadorinstance|WideOr0~0_combout\) # ((!\processadorinstance|regfileinstance|Mux3~1_combout\) # (!\KEY~combout\(0)))) # (!\processadorinstance|prominstance|prom~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|prominstance|prom~8_combout\,
	datab => \processadorinstance|WideOr0~0_combout\,
	datac => \KEY~combout\(0),
	datad => \processadorinstance|regfileinstance|Mux3~1_combout\,
	combout => \processadorinstance|regfileinstance|regfile[5][0]~57_combout\);

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

-- Location: LCCOMB_X40_Y10_N0
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

-- Location: LCCOMB_X47_Y10_N24
\processadorinstance|prominstance|prom~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|prominstance|prom~22_combout\ = (!\processadorinstance|prominstance|addr_reg\(3) & (\processadorinstance|prominstance|addr_reg\(0) & (\processadorinstance|prominstance|addr_reg\(2) $ (\processadorinstance|prominstance|addr_reg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|prominstance|addr_reg\(3),
	datab => \processadorinstance|prominstance|addr_reg\(0),
	datac => \processadorinstance|prominstance|addr_reg\(2),
	datad => \processadorinstance|prominstance|addr_reg\(1),
	combout => \processadorinstance|prominstance|prom~22_combout\);

-- Location: LCCOMB_X47_Y10_N20
\processadorinstance|prominstance|prom~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|prominstance|prom~24_combout\ = (\processadorinstance|prominstance|prom~22_combout\ & \processadorinstance|prominstance|prom~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \processadorinstance|prominstance|prom~22_combout\,
	datad => \processadorinstance|prominstance|prom~7_combout\,
	combout => \processadorinstance|prominstance|prom~24_combout\);

-- Location: LCCOMB_X47_Y10_N4
\processadorinstance|prominstance|prom~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|prominstance|prom~27_combout\ = (!\processadorinstance|prominstance|addr_reg\(3) & (\processadorinstance|prominstance|addr_reg\(1) & (!\processadorinstance|prominstance|addr_reg\(2) & 
-- \processadorinstance|prominstance|prom~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|prominstance|addr_reg\(3),
	datab => \processadorinstance|prominstance|addr_reg\(1),
	datac => \processadorinstance|prominstance|addr_reg\(2),
	datad => \processadorinstance|prominstance|prom~7_combout\,
	combout => \processadorinstance|prominstance|prom~27_combout\);

-- Location: LCCOMB_X47_Y10_N12
\processadorinstance|prominstance|prom~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|prominstance|prom~23_combout\ = (!\processadorinstance|prominstance|addr_reg\(3) & (!\processadorinstance|prominstance|addr_reg\(1) & (\processadorinstance|prominstance|addr_reg\(0) $ 
-- (\processadorinstance|prominstance|addr_reg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|prominstance|addr_reg\(3),
	datab => \processadorinstance|prominstance|addr_reg\(0),
	datac => \processadorinstance|prominstance|addr_reg\(2),
	datad => \processadorinstance|prominstance|addr_reg\(1),
	combout => \processadorinstance|prominstance|prom~23_combout\);

-- Location: LCCOMB_X47_Y10_N26
\processadorinstance|prominstance|prom~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|prominstance|prom~25_combout\ = (\processadorinstance|prominstance|prom~7_combout\ & \processadorinstance|prominstance|prom~23_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processadorinstance|prominstance|prom~7_combout\,
	datad => \processadorinstance|prominstance|prom~23_combout\,
	combout => \processadorinstance|prominstance|prom~25_combout\);

-- Location: M4K_X41_Y10
\processadorinstance|draminstance|altsyncram_component|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "processador:processadorinstance|dram:draminstance|altsyncram:altsyncram_component|altsyncram_r4a1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 3,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 7,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_width => 3,
	port_b_data_width => 4,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \processadorinstance|Equal0~0_combout\,
	clk0 => \ALT_INV_KEY~combout\(3),
	portadatain => \processadorinstance|draminstance|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \processadorinstance|draminstance|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \processadorinstance|draminstance|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

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

-- Location: LCCOMB_X47_Y10_N6
\processadorinstance|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|Mux4~0_combout\ = (!\processadorinstance|prominstance|prom~17_combout\ & ((\processadorinstance|prominstance|prom~21_combout\ & ((\SW~combout\(3)))) # (!\processadorinstance|prominstance|prom~21_combout\ & 
-- (\processadorinstance|draminstance|altsyncram_component|auto_generated|q_a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|prominstance|prom~17_combout\,
	datab => \processadorinstance|draminstance|altsyncram_component|auto_generated|q_a\(3),
	datac => \processadorinstance|prominstance|prom~21_combout\,
	datad => \SW~combout\(3),
	combout => \processadorinstance|Mux4~0_combout\);

-- Location: LCCOMB_X49_Y10_N4
\processadorinstance|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|Mux1~0_combout\ = (\processadorinstance|prominstance|prom~15_combout\) # ((\processadorinstance|prominstance|prom~19_combout\ & (\processadorinstance|prominstance|prom~21_combout\)) # 
-- (!\processadorinstance|prominstance|prom~19_combout\ & ((\processadorinstance|prominstance|prom~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|prominstance|prom~21_combout\,
	datab => \processadorinstance|prominstance|prom~19_combout\,
	datac => \processadorinstance|prominstance|prom~15_combout\,
	datad => \processadorinstance|prominstance|prom~17_combout\,
	combout => \processadorinstance|Mux1~0_combout\);

-- Location: LCCOMB_X49_Y14_N14
\processadorinstance|data_reg[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|data_reg[0]~0_combout\ = (\KEY~combout\(0) & !\processadorinstance|Mux1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY~combout\(0),
	datad => \processadorinstance|Mux1~0_combout\,
	combout => \processadorinstance|data_reg[0]~0_combout\);

-- Location: CLKCTRL_G4
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

-- Location: LCCOMB_X48_Y7_N30
\processadorinstance|data_reg[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|data_reg\(3) = (GLOBAL(\processadorinstance|data_reg[0]~0clkctrl_outclk\) & (\processadorinstance|Mux4~0_combout\)) # (!GLOBAL(\processadorinstance|data_reg[0]~0clkctrl_outclk\) & ((\processadorinstance|data_reg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processadorinstance|Mux4~0_combout\,
	datac => \processadorinstance|data_reg[0]~0clkctrl_outclk\,
	datad => \processadorinstance|data_reg\(3),
	combout => \processadorinstance|data_reg\(3));

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

-- Location: LCCOMB_X47_Y10_N28
\processadorinstance|Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|Mux3~2_combout\ = (\processadorinstance|prominstance|prom~7_combout\ & ((\processadorinstance|prominstance|prom~16_combout\ & ((\processadorinstance|draminstance|altsyncram_component|auto_generated|q_a\(2)))) # 
-- (!\processadorinstance|prominstance|prom~16_combout\ & (\processadorinstance|prominstance|prom~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|prominstance|prom~23_combout\,
	datab => \processadorinstance|prominstance|prom~7_combout\,
	datac => \processadorinstance|prominstance|prom~16_combout\,
	datad => \processadorinstance|draminstance|altsyncram_component|auto_generated|q_a\(2),
	combout => \processadorinstance|Mux3~2_combout\);

-- Location: LCCOMB_X47_Y10_N18
\processadorinstance|Mux3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|Mux3~3_combout\ = (\processadorinstance|prominstance|prom~20_combout\ & ((\processadorinstance|prominstance|prom~7_combout\ & (\SW~combout\(2))) # (!\processadorinstance|prominstance|prom~7_combout\ & 
-- ((\processadorinstance|Mux3~2_combout\))))) # (!\processadorinstance|prominstance|prom~20_combout\ & (((\processadorinstance|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|prominstance|prom~20_combout\,
	datab => \processadorinstance|prominstance|prom~7_combout\,
	datac => \SW~combout\(2),
	datad => \processadorinstance|Mux3~2_combout\,
	combout => \processadorinstance|Mux3~3_combout\);

-- Location: LCCOMB_X48_Y9_N10
\processadorinstance|data_reg[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|data_reg\(2) = (GLOBAL(\processadorinstance|data_reg[0]~0clkctrl_outclk\) & ((\processadorinstance|Mux3~3_combout\))) # (!GLOBAL(\processadorinstance|data_reg[0]~0clkctrl_outclk\) & (\processadorinstance|data_reg\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|data_reg\(2),
	datac => \processadorinstance|Mux3~3_combout\,
	datad => \processadorinstance|data_reg[0]~0clkctrl_outclk\,
	combout => \processadorinstance|data_reg\(2));

-- Location: LCCOMB_X49_Y10_N26
\processadorinstance|we_reg~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|we_reg~0_combout\ = (!\processadorinstance|WideOr0~0_combout\ & \KEY~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \processadorinstance|WideOr0~0_combout\,
	datad => \KEY~combout\(0),
	combout => \processadorinstance|we_reg~0_combout\);

-- Location: LCCOMB_X49_Y10_N30
\processadorinstance|regfileinstance|regfile[0][0]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile[0][0]~65_combout\ = (!\processadorinstance|prominstance|prom~10_combout\ & (!\processadorinstance|prominstance|prom~8_combout\ & (!\processadorinstance|prominstance|prom~12_combout\ & 
-- \processadorinstance|we_reg~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|prominstance|prom~10_combout\,
	datab => \processadorinstance|prominstance|prom~8_combout\,
	datac => \processadorinstance|prominstance|prom~12_combout\,
	datad => \processadorinstance|we_reg~0_combout\,
	combout => \processadorinstance|regfileinstance|regfile[0][0]~65_combout\);

-- Location: LCFF_X48_Y9_N17
\processadorinstance|regfileinstance|regfile[0][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	sdata => \processadorinstance|data_reg\(2),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \processadorinstance|regfileinstance|regfile[0][0]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|regfileinstance|regfile[0][2]~regout\);

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

-- Location: LCCOMB_X48_Y9_N2
\processadorinstance|Mux2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|Mux2~2_combout\ = (\processadorinstance|prominstance|prom~16_combout\ & (((\processadorinstance|draminstance|altsyncram_component|auto_generated|q_a\(1))))) # (!\processadorinstance|prominstance|prom~16_combout\ & 
-- (!\processadorinstance|prominstance|addr_reg\(3) & (\processadorinstance|prominstance|prom~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|prominstance|addr_reg\(3),
	datab => \processadorinstance|prominstance|prom~11_combout\,
	datac => \processadorinstance|prominstance|prom~16_combout\,
	datad => \processadorinstance|draminstance|altsyncram_component|auto_generated|q_a\(1),
	combout => \processadorinstance|Mux2~2_combout\);

-- Location: LCCOMB_X48_Y9_N4
\processadorinstance|Mux2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|Mux2~3_combout\ = (\processadorinstance|prominstance|prom~7_combout\ & ((\processadorinstance|prominstance|prom~20_combout\ & (\SW~combout\(1))) # (!\processadorinstance|prominstance|prom~20_combout\ & 
-- ((\processadorinstance|Mux2~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|prominstance|prom~7_combout\,
	datab => \SW~combout\(1),
	datac => \processadorinstance|prominstance|prom~20_combout\,
	datad => \processadorinstance|Mux2~2_combout\,
	combout => \processadorinstance|Mux2~3_combout\);

-- Location: LCCOMB_X48_Y9_N20
\processadorinstance|data_reg[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|data_reg\(1) = (GLOBAL(\processadorinstance|data_reg[0]~0clkctrl_outclk\) & (\processadorinstance|Mux2~3_combout\)) # (!GLOBAL(\processadorinstance|data_reg[0]~0clkctrl_outclk\) & ((\processadorinstance|data_reg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processadorinstance|Mux2~3_combout\,
	datac => \processadorinstance|data_reg\(1),
	datad => \processadorinstance|data_reg[0]~0clkctrl_outclk\,
	combout => \processadorinstance|data_reg\(1));

-- Location: LCFF_X49_Y8_N17
\processadorinstance|regfileinstance|regfile[0][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	sdata => \processadorinstance|data_reg\(1),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \processadorinstance|regfileinstance|regfile[0][0]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|regfileinstance|regfile[0][1]~regout\);

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

-- Location: LCCOMB_X47_Y10_N10
\processadorinstance|Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|Mux0~2_combout\ = (\processadorinstance|prominstance|prom~7_combout\ & ((\processadorinstance|prominstance|prom~16_combout\ & ((\processadorinstance|draminstance|altsyncram_component|auto_generated|q_a\(0)))) # 
-- (!\processadorinstance|prominstance|prom~16_combout\ & (\processadorinstance|prominstance|prom~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|prominstance|prom~22_combout\,
	datab => \processadorinstance|prominstance|prom~7_combout\,
	datac => \processadorinstance|prominstance|prom~16_combout\,
	datad => \processadorinstance|draminstance|altsyncram_component|auto_generated|q_a\(0),
	combout => \processadorinstance|Mux0~2_combout\);

-- Location: LCCOMB_X47_Y10_N16
\processadorinstance|Mux0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|Mux0~3_combout\ = (\processadorinstance|prominstance|prom~20_combout\ & ((\processadorinstance|prominstance|prom~7_combout\ & (\SW~combout\(0))) # (!\processadorinstance|prominstance|prom~7_combout\ & 
-- ((\processadorinstance|Mux0~2_combout\))))) # (!\processadorinstance|prominstance|prom~20_combout\ & (((\processadorinstance|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|prominstance|prom~20_combout\,
	datab => \processadorinstance|prominstance|prom~7_combout\,
	datac => \SW~combout\(0),
	datad => \processadorinstance|Mux0~2_combout\,
	combout => \processadorinstance|Mux0~3_combout\);

-- Location: LCCOMB_X48_Y7_N28
\processadorinstance|data_reg[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|data_reg\(0) = (GLOBAL(\processadorinstance|data_reg[0]~0clkctrl_outclk\) & ((\processadorinstance|Mux0~3_combout\))) # (!GLOBAL(\processadorinstance|data_reg[0]~0clkctrl_outclk\) & (\processadorinstance|data_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processadorinstance|data_reg\(0),
	datac => \processadorinstance|data_reg[0]~0clkctrl_outclk\,
	datad => \processadorinstance|Mux0~3_combout\,
	combout => \processadorinstance|data_reg\(0));

-- Location: LCCOMB_X48_Y7_N16
\processadorinstance|regfileinstance|regfile[7][0]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile[7][0]~62_combout\ = (\processadorinstance|prominstance|prom~12_combout\ & (\processadorinstance|prominstance|prom~8_combout\ & (\processadorinstance|we_reg~0_combout\ & 
-- \processadorinstance|prominstance|prom~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|prominstance|prom~12_combout\,
	datab => \processadorinstance|prominstance|prom~8_combout\,
	datac => \processadorinstance|we_reg~0_combout\,
	datad => \processadorinstance|prominstance|prom~10_combout\,
	combout => \processadorinstance|regfileinstance|regfile[7][0]~62_combout\);

-- Location: LCFF_X48_Y7_N5
\processadorinstance|regfileinstance|regfile[7][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	sdata => \processadorinstance|data_reg\(0),
	sload => VCC,
	ena => \processadorinstance|regfileinstance|regfile[7][0]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|regfileinstance|regfile[7][0]~regout\);

-- Location: LCCOMB_X49_Y9_N20
\processadorinstance|regfileinstance|regfile[6][0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile[6][0]~feeder_combout\ = \processadorinstance|data_reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \processadorinstance|data_reg\(0),
	combout => \processadorinstance|regfileinstance|regfile[6][0]~feeder_combout\);

-- Location: LCCOMB_X49_Y9_N30
\processadorinstance|regfileinstance|regfile[6][0]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile[6][0]~60_combout\ = (\processadorinstance|prominstance|prom~12_combout\ & (\processadorinstance|prominstance|prom~10_combout\ & (!\processadorinstance|prominstance|prom~8_combout\ & 
-- \processadorinstance|we_reg~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|prominstance|prom~12_combout\,
	datab => \processadorinstance|prominstance|prom~10_combout\,
	datac => \processadorinstance|prominstance|prom~8_combout\,
	datad => \processadorinstance|we_reg~0_combout\,
	combout => \processadorinstance|regfileinstance|regfile[6][0]~60_combout\);

-- Location: LCFF_X49_Y9_N21
\processadorinstance|regfileinstance|regfile[6][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	datain => \processadorinstance|regfileinstance|regfile[6][0]~feeder_combout\,
	ena => \processadorinstance|regfileinstance|regfile[6][0]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|regfileinstance|regfile[6][0]~regout\);

-- Location: LCCOMB_X47_Y10_N22
\processadorinstance|regfileinstance|regfile[4][0]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile[4][0]~61_combout\ = (!\processadorinstance|prominstance|prom~8_combout\ & (\processadorinstance|regfileinstance|Mux3~1_combout\ & (\KEY~combout\(0) & !\processadorinstance|WideOr0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|prominstance|prom~8_combout\,
	datab => \processadorinstance|regfileinstance|Mux3~1_combout\,
	datac => \KEY~combout\(0),
	datad => \processadorinstance|WideOr0~0_combout\,
	combout => \processadorinstance|regfileinstance|regfile[4][0]~61_combout\);

-- Location: LCFF_X49_Y10_N3
\processadorinstance|regfileinstance|regfile[4][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	sdata => \processadorinstance|data_reg\(0),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \processadorinstance|regfileinstance|regfile[4][0]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|regfileinstance|regfile[4][0]~regout\);

-- Location: LCCOMB_X49_Y10_N2
\processadorinstance|regfileinstance|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|Mux7~0_combout\ = (\processadorinstance|prominstance|prom~8_combout\ & (((\processadorinstance|prominstance|prom~10_combout\)))) # (!\processadorinstance|prominstance|prom~8_combout\ & 
-- ((\processadorinstance|prominstance|prom~10_combout\ & (\processadorinstance|regfileinstance|regfile[6][0]~regout\)) # (!\processadorinstance|prominstance|prom~10_combout\ & ((\processadorinstance|regfileinstance|regfile[4][0]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|prominstance|prom~8_combout\,
	datab => \processadorinstance|regfileinstance|regfile[6][0]~regout\,
	datac => \processadorinstance|regfileinstance|regfile[4][0]~regout\,
	datad => \processadorinstance|prominstance|prom~10_combout\,
	combout => \processadorinstance|regfileinstance|Mux7~0_combout\);

-- Location: LCCOMB_X48_Y7_N4
\processadorinstance|regfileinstance|Mux7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|Mux7~1_combout\ = (\processadorinstance|prominstance|prom~8_combout\ & ((\processadorinstance|regfileinstance|Mux7~0_combout\ & ((\processadorinstance|regfileinstance|regfile[7][0]~regout\))) # 
-- (!\processadorinstance|regfileinstance|Mux7~0_combout\ & (\processadorinstance|regfileinstance|regfile[5][0]~regout\)))) # (!\processadorinstance|prominstance|prom~8_combout\ & (((\processadorinstance|regfileinstance|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|regfileinstance|regfile[5][0]~regout\,
	datab => \processadorinstance|prominstance|prom~8_combout\,
	datac => \processadorinstance|regfileinstance|regfile[7][0]~regout\,
	datad => \processadorinstance|regfileinstance|Mux7~0_combout\,
	combout => \processadorinstance|regfileinstance|Mux7~1_combout\);

-- Location: LCCOMB_X49_Y7_N28
\processadorinstance|regfileinstance|regfile[3][0]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile[3][0]~66_combout\ = (\processadorinstance|prominstance|prom~8_combout\ & (\processadorinstance|prominstance|prom~10_combout\ & (!\processadorinstance|prominstance|prom~12_combout\ & 
-- \processadorinstance|we_reg~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|prominstance|prom~8_combout\,
	datab => \processadorinstance|prominstance|prom~10_combout\,
	datac => \processadorinstance|prominstance|prom~12_combout\,
	datad => \processadorinstance|we_reg~0_combout\,
	combout => \processadorinstance|regfileinstance|regfile[3][0]~66_combout\);

-- Location: LCFF_X49_Y7_N23
\processadorinstance|regfileinstance|regfile[3][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	sdata => \processadorinstance|data_reg\(0),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \processadorinstance|regfileinstance|regfile[3][0]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|regfileinstance|regfile[3][0]~regout\);

-- Location: LCCOMB_X48_Y6_N12
\processadorinstance|regfileinstance|regfile[2][0]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile[2][0]~63_combout\ = (!\processadorinstance|prominstance|prom~8_combout\ & (!\processadorinstance|prominstance|prom~12_combout\ & (\processadorinstance|we_reg~0_combout\ & 
-- \processadorinstance|prominstance|prom~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|prominstance|prom~8_combout\,
	datab => \processadorinstance|prominstance|prom~12_combout\,
	datac => \processadorinstance|we_reg~0_combout\,
	datad => \processadorinstance|prominstance|prom~10_combout\,
	combout => \processadorinstance|regfileinstance|regfile[2][0]~63_combout\);

-- Location: LCFF_X48_Y6_N5
\processadorinstance|regfileinstance|regfile[2][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	sdata => \processadorinstance|data_reg\(0),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \processadorinstance|regfileinstance|regfile[2][0]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|regfileinstance|regfile[2][0]~regout\);

-- Location: LCCOMB_X49_Y6_N16
\processadorinstance|regfileinstance|regfile[1][0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile[1][0]~feeder_combout\ = \processadorinstance|data_reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \processadorinstance|data_reg\(0),
	combout => \processadorinstance|regfileinstance|regfile[1][0]~feeder_combout\);

-- Location: LCCOMB_X49_Y6_N2
\processadorinstance|regfileinstance|regfile[1][0]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile[1][0]~64_combout\ = (!\processadorinstance|prominstance|prom~10_combout\ & (!\processadorinstance|prominstance|prom~12_combout\ & (\processadorinstance|prominstance|prom~8_combout\ & 
-- \processadorinstance|we_reg~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|prominstance|prom~10_combout\,
	datab => \processadorinstance|prominstance|prom~12_combout\,
	datac => \processadorinstance|prominstance|prom~8_combout\,
	datad => \processadorinstance|we_reg~0_combout\,
	combout => \processadorinstance|regfileinstance|regfile[1][0]~64_combout\);

-- Location: LCFF_X49_Y6_N17
\processadorinstance|regfileinstance|regfile[1][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	datain => \processadorinstance|regfileinstance|regfile[1][0]~feeder_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \processadorinstance|regfileinstance|regfile[1][0]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|regfileinstance|regfile[1][0]~regout\);

-- Location: LCCOMB_X48_Y6_N2
\processadorinstance|regfileinstance|Mux7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|Mux7~2_combout\ = (\processadorinstance|prominstance|prom~8_combout\ & (((\processadorinstance|regfileinstance|regfile[1][0]~regout\) # (\processadorinstance|prominstance|prom~10_combout\)))) # 
-- (!\processadorinstance|prominstance|prom~8_combout\ & (\processadorinstance|regfileinstance|regfile[0][0]~regout\ & ((!\processadorinstance|prominstance|prom~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|regfileinstance|regfile[0][0]~regout\,
	datab => \processadorinstance|regfileinstance|regfile[1][0]~regout\,
	datac => \processadorinstance|prominstance|prom~8_combout\,
	datad => \processadorinstance|prominstance|prom~10_combout\,
	combout => \processadorinstance|regfileinstance|Mux7~2_combout\);

-- Location: LCCOMB_X48_Y6_N4
\processadorinstance|regfileinstance|Mux7~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|Mux7~3_combout\ = (\processadorinstance|prominstance|prom~10_combout\ & ((\processadorinstance|regfileinstance|Mux7~2_combout\ & (\processadorinstance|regfileinstance|regfile[3][0]~regout\)) # 
-- (!\processadorinstance|regfileinstance|Mux7~2_combout\ & ((\processadorinstance|regfileinstance|regfile[2][0]~regout\))))) # (!\processadorinstance|prominstance|prom~10_combout\ & (((\processadorinstance|regfileinstance|Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|prominstance|prom~10_combout\,
	datab => \processadorinstance|regfileinstance|regfile[3][0]~regout\,
	datac => \processadorinstance|regfileinstance|regfile[2][0]~regout\,
	datad => \processadorinstance|regfileinstance|Mux7~2_combout\,
	combout => \processadorinstance|regfileinstance|Mux7~3_combout\);

-- Location: LCCOMB_X48_Y7_N6
\processadorinstance|regfileinstance|Mux7~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|Mux7~4_combout\ = (\processadorinstance|prominstance|prom~12_combout\ & (\processadorinstance|regfileinstance|Mux7~1_combout\)) # (!\processadorinstance|prominstance|prom~12_combout\ & 
-- ((\processadorinstance|regfileinstance|Mux7~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|prominstance|prom~12_combout\,
	datab => \processadorinstance|regfileinstance|Mux7~1_combout\,
	datad => \processadorinstance|regfileinstance|Mux7~3_combout\,
	combout => \processadorinstance|regfileinstance|Mux7~4_combout\);

-- Location: LCCOMB_X48_Y7_N2
\processadorinstance|ACC2[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ACC2\(0) = (GLOBAL(\processadorinstance|ACC2[3]~0clkctrl_outclk\) & ((\processadorinstance|regfileinstance|Mux7~4_combout\))) # (!GLOBAL(\processadorinstance|ACC2[3]~0clkctrl_outclk\) & (\processadorinstance|ACC2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processadorinstance|ACC2[3]~0clkctrl_outclk\,
	datac => \processadorinstance|ACC2\(0),
	datad => \processadorinstance|regfileinstance|Mux7~4_combout\,
	combout => \processadorinstance|ACC2\(0));

-- Location: LCCOMB_X47_Y8_N4
\processadorinstance|ulainstance|Add0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|Add0~3_combout\ = \processadorinstance|ACC2\(0) $ (((!\processadorinstance|prominstance|prom~7_combout\) # (!\processadorinstance|prominstance|prom~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processadorinstance|ACC2\(0),
	datac => \processadorinstance|prominstance|prom~16_combout\,
	datad => \processadorinstance|prominstance|prom~7_combout\,
	combout => \processadorinstance|ulainstance|Add0~3_combout\);

-- Location: LCCOMB_X48_Y8_N12
\processadorinstance|ulainstance|Add0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|Add0~5_cout\ = CARRY((\processadorinstance|prominstance|addr_reg\(7)) # (!\processadorinstance|prominstance|prom~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|prominstance|prom~26_combout\,
	datab => \processadorinstance|prominstance|addr_reg\(7),
	datad => VCC,
	cout => \processadorinstance|ulainstance|Add0~5_cout\);

-- Location: LCCOMB_X48_Y8_N20
\processadorinstance|ulainstance|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|Add0~12_combout\ = ((\processadorinstance|regfileinstance|regfile[0][3]~regout\ $ (\processadorinstance|ulainstance|Add0~0_combout\ $ (\processadorinstance|ulainstance|Add0~11\)))) # (GND)
-- \processadorinstance|ulainstance|Add0~13\ = CARRY((\processadorinstance|regfileinstance|regfile[0][3]~regout\ & ((!\processadorinstance|ulainstance|Add0~11\) # (!\processadorinstance|ulainstance|Add0~0_combout\))) # 
-- (!\processadorinstance|regfileinstance|regfile[0][3]~regout\ & (!\processadorinstance|ulainstance|Add0~0_combout\ & !\processadorinstance|ulainstance|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|regfileinstance|regfile[0][3]~regout\,
	datab => \processadorinstance|ulainstance|Add0~0_combout\,
	datad => VCC,
	cin => \processadorinstance|ulainstance|Add0~11\,
	combout => \processadorinstance|ulainstance|Add0~12_combout\,
	cout => \processadorinstance|ulainstance|Add0~13\);

-- Location: LCCOMB_X49_Y8_N24
\processadorinstance|regfileinstance|regfile~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile~72_combout\ = (\processadorinstance|regfileinstance|regfile[5][0]~57_combout\ & (\processadorinstance|ulainstance|Mux4~12_combout\ & ((\processadorinstance|ulainstance|Add0~12_combout\)))) # 
-- (!\processadorinstance|regfileinstance|regfile[5][0]~57_combout\ & (((\processadorinstance|data_reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|ulainstance|Mux4~12_combout\,
	datab => \processadorinstance|data_reg\(3),
	datac => \processadorinstance|ulainstance|Add0~12_combout\,
	datad => \processadorinstance|regfileinstance|regfile[5][0]~57_combout\,
	combout => \processadorinstance|regfileinstance|regfile~72_combout\);

-- Location: LCCOMB_X49_Y10_N0
\processadorinstance|ulainstance|Mux4~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|Mux4~14_combout\ = (\processadorinstance|prominstance|prom~15_combout\) # (\processadorinstance|prominstance|prom~19_combout\ $ (((!\processadorinstance|prominstance|prom~16_combout\) # 
-- (!\processadorinstance|prominstance|prom~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|prominstance|prom~7_combout\,
	datab => \processadorinstance|prominstance|prom~19_combout\,
	datac => \processadorinstance|prominstance|prom~15_combout\,
	datad => \processadorinstance|prominstance|prom~16_combout\,
	combout => \processadorinstance|ulainstance|Mux4~14_combout\);

-- Location: LCCOMB_X49_Y9_N28
\processadorinstance|regfileinstance|regfile~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile~78_combout\ = (((!\KEY~combout\(0)) # (!\processadorinstance|prominstance|prom~6_combout\)) # (!\processadorinstance|regfileinstance|Mux3~1_combout\)) # (!\processadorinstance|prominstance|prom~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|prominstance|prom~7_combout\,
	datab => \processadorinstance|regfileinstance|Mux3~1_combout\,
	datac => \processadorinstance|prominstance|prom~6_combout\,
	datad => \KEY~combout\(0),
	combout => \processadorinstance|regfileinstance|regfile~78_combout\);

-- Location: LCCOMB_X49_Y9_N18
\processadorinstance|regfileinstance|regfile~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile~56_combout\ = (!\processadorinstance|prominstance|prom~21_combout\ & (\processadorinstance|ulainstance|Mux4~14_combout\ & ((\processadorinstance|WideOr0~0_combout\) # 
-- (\processadorinstance|regfileinstance|regfile~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|prominstance|prom~21_combout\,
	datab => \processadorinstance|WideOr0~0_combout\,
	datac => \processadorinstance|ulainstance|Mux4~14_combout\,
	datad => \processadorinstance|regfileinstance|regfile~78_combout\,
	combout => \processadorinstance|regfileinstance|regfile~56_combout\);

-- Location: LCCOMB_X49_Y8_N26
\processadorinstance|regfileinstance|regfile~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile~73_combout\ = (\processadorinstance|regfileinstance|regfile~72_combout\) # ((!\processadorinstance|regfileinstance|regfile~81_combout\ & \processadorinstance|regfileinstance|regfile~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|regfileinstance|regfile~81_combout\,
	datac => \processadorinstance|regfileinstance|regfile~72_combout\,
	datad => \processadorinstance|regfileinstance|regfile~56_combout\,
	combout => \processadorinstance|regfileinstance|regfile~73_combout\);

-- Location: LCFF_X49_Y8_N27
\processadorinstance|regfileinstance|regfile[5][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	datain => \processadorinstance|regfileinstance|regfile~73_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|regfileinstance|regfile[5][3]~regout\);

-- Location: LCFF_X48_Y10_N19
\processadorinstance|regfileinstance|regfile[4][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	sdata => \processadorinstance|data_reg\(3),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \processadorinstance|regfileinstance|regfile[4][0]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|regfileinstance|regfile[4][3]~regout\);

-- Location: LCCOMB_X48_Y10_N18
\processadorinstance|regfileinstance|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|Mux4~0_combout\ = (\processadorinstance|prominstance|prom~10_combout\ & ((\processadorinstance|regfileinstance|regfile[6][3]~regout\) # ((\processadorinstance|prominstance|prom~8_combout\)))) # 
-- (!\processadorinstance|prominstance|prom~10_combout\ & (((\processadorinstance|regfileinstance|regfile[4][3]~regout\ & !\processadorinstance|prominstance|prom~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|regfileinstance|regfile[6][3]~regout\,
	datab => \processadorinstance|prominstance|prom~10_combout\,
	datac => \processadorinstance|regfileinstance|regfile[4][3]~regout\,
	datad => \processadorinstance|prominstance|prom~8_combout\,
	combout => \processadorinstance|regfileinstance|Mux4~0_combout\);

-- Location: LCCOMB_X49_Y6_N14
\processadorinstance|regfileinstance|Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|Mux4~1_combout\ = (\processadorinstance|prominstance|prom~8_combout\ & ((\processadorinstance|regfileinstance|Mux4~0_combout\ & (\processadorinstance|regfileinstance|regfile[7][3]~regout\)) # 
-- (!\processadorinstance|regfileinstance|Mux4~0_combout\ & ((\processadorinstance|regfileinstance|regfile[5][3]~regout\))))) # (!\processadorinstance|prominstance|prom~8_combout\ & (((\processadorinstance|regfileinstance|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|regfileinstance|regfile[7][3]~regout\,
	datab => \processadorinstance|regfileinstance|regfile[5][3]~regout\,
	datac => \processadorinstance|prominstance|prom~8_combout\,
	datad => \processadorinstance|regfileinstance|Mux4~0_combout\,
	combout => \processadorinstance|regfileinstance|Mux4~1_combout\);

-- Location: LCCOMB_X48_Y6_N30
\processadorinstance|regfileinstance|regfile[2][3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile[2][3]~feeder_combout\ = \processadorinstance|data_reg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \processadorinstance|data_reg\(3),
	combout => \processadorinstance|regfileinstance|regfile[2][3]~feeder_combout\);

-- Location: LCFF_X48_Y6_N31
\processadorinstance|regfileinstance|regfile[2][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	datain => \processadorinstance|regfileinstance|regfile[2][3]~feeder_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \processadorinstance|regfileinstance|regfile[2][0]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|regfileinstance|regfile[2][3]~regout\);

-- Location: LCFF_X49_Y7_N1
\processadorinstance|regfileinstance|regfile[3][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	sdata => \processadorinstance|data_reg\(3),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \processadorinstance|regfileinstance|regfile[3][0]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|regfileinstance|regfile[3][3]~regout\);

-- Location: LCFF_X49_Y6_N13
\processadorinstance|regfileinstance|regfile[1][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	sdata => \processadorinstance|data_reg\(3),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \processadorinstance|regfileinstance|regfile[1][0]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|regfileinstance|regfile[1][3]~regout\);

-- Location: LCCOMB_X49_Y6_N12
\processadorinstance|regfileinstance|Mux4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|Mux4~2_combout\ = (\processadorinstance|prominstance|prom~8_combout\ & (((\processadorinstance|regfileinstance|regfile[1][3]~regout\) # (\processadorinstance|prominstance|prom~10_combout\)))) # 
-- (!\processadorinstance|prominstance|prom~8_combout\ & (\processadorinstance|regfileinstance|regfile[0][3]~regout\ & ((!\processadorinstance|prominstance|prom~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|regfileinstance|regfile[0][3]~regout\,
	datab => \processadorinstance|prominstance|prom~8_combout\,
	datac => \processadorinstance|regfileinstance|regfile[1][3]~regout\,
	datad => \processadorinstance|prominstance|prom~10_combout\,
	combout => \processadorinstance|regfileinstance|Mux4~2_combout\);

-- Location: LCCOMB_X49_Y6_N22
\processadorinstance|regfileinstance|Mux4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|Mux4~3_combout\ = (\processadorinstance|prominstance|prom~10_combout\ & ((\processadorinstance|regfileinstance|Mux4~2_combout\ & ((\processadorinstance|regfileinstance|regfile[3][3]~regout\))) # 
-- (!\processadorinstance|regfileinstance|Mux4~2_combout\ & (\processadorinstance|regfileinstance|regfile[2][3]~regout\)))) # (!\processadorinstance|prominstance|prom~10_combout\ & (((\processadorinstance|regfileinstance|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|prominstance|prom~10_combout\,
	datab => \processadorinstance|regfileinstance|regfile[2][3]~regout\,
	datac => \processadorinstance|regfileinstance|regfile[3][3]~regout\,
	datad => \processadorinstance|regfileinstance|Mux4~2_combout\,
	combout => \processadorinstance|regfileinstance|Mux4~3_combout\);

-- Location: LCCOMB_X49_Y6_N0
\processadorinstance|regfileinstance|Mux4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|Mux4~4_combout\ = (\processadorinstance|prominstance|prom~12_combout\ & (\processadorinstance|regfileinstance|Mux4~1_combout\)) # (!\processadorinstance|prominstance|prom~12_combout\ & 
-- ((\processadorinstance|regfileinstance|Mux4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|prominstance|prom~12_combout\,
	datab => \processadorinstance|regfileinstance|Mux4~1_combout\,
	datad => \processadorinstance|regfileinstance|Mux4~3_combout\,
	combout => \processadorinstance|regfileinstance|Mux4~4_combout\);

-- Location: LCCOMB_X49_Y6_N4
\processadorinstance|ACC2[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ACC2\(3) = (GLOBAL(\processadorinstance|ACC2[3]~0clkctrl_outclk\) & (\processadorinstance|regfileinstance|Mux4~4_combout\)) # (!GLOBAL(\processadorinstance|ACC2[3]~0clkctrl_outclk\) & ((\processadorinstance|ACC2\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processadorinstance|regfileinstance|Mux4~4_combout\,
	datac => \processadorinstance|ACC2\(3),
	datad => \processadorinstance|ACC2[3]~0clkctrl_outclk\,
	combout => \processadorinstance|ACC2\(3));

-- Location: LCCOMB_X48_Y8_N4
\processadorinstance|ulainstance|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|Add0~0_combout\ = \processadorinstance|ACC2\(3) $ (((!\processadorinstance|prominstance|prom~16_combout\) # (!\processadorinstance|prominstance|prom~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|prominstance|prom~7_combout\,
	datab => \processadorinstance|prominstance|prom~16_combout\,
	datad => \processadorinstance|ACC2\(3),
	combout => \processadorinstance|ulainstance|Add0~0_combout\);

-- Location: LCCOMB_X48_Y8_N22
\processadorinstance|ulainstance|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|Add0~14_combout\ = (\processadorinstance|ulainstance|Add0~13\ & (\processadorinstance|prominstance|prom~17_combout\ $ ((\processadorinstance|ACC2\(4))))) # (!\processadorinstance|ulainstance|Add0~13\ & 
-- ((\processadorinstance|prominstance|prom~17_combout\ $ (!\processadorinstance|ACC2\(4))) # (GND)))
-- \processadorinstance|ulainstance|Add0~15\ = CARRY((\processadorinstance|prominstance|prom~17_combout\ $ (\processadorinstance|ACC2\(4))) # (!\processadorinstance|ulainstance|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|prominstance|prom~17_combout\,
	datab => \processadorinstance|ACC2\(4),
	datad => VCC,
	cin => \processadorinstance|ulainstance|Add0~13\,
	combout => \processadorinstance|ulainstance|Add0~14_combout\,
	cout => \processadorinstance|ulainstance|Add0~15\);

-- Location: LCCOMB_X49_Y8_N4
\processadorinstance|regfileinstance|regfile~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile~74_combout\ = (\processadorinstance|regfileinstance|regfile[5][0]~57_combout\ & ((\processadorinstance|ulainstance|Mux4~11_combout\) # ((\processadorinstance|ulainstance|Mux4~12_combout\ & 
-- \processadorinstance|ulainstance|Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|ulainstance|Mux4~11_combout\,
	datab => \processadorinstance|ulainstance|Mux4~12_combout\,
	datac => \processadorinstance|regfileinstance|regfile[5][0]~57_combout\,
	datad => \processadorinstance|ulainstance|Add0~14_combout\,
	combout => \processadorinstance|regfileinstance|regfile~74_combout\);

-- Location: LCFF_X49_Y8_N5
\processadorinstance|regfileinstance|regfile[5][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	datain => \processadorinstance|regfileinstance|regfile~74_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|regfileinstance|regfile[5][4]~regout\);

-- Location: LCCOMB_X49_Y6_N18
\processadorinstance|regfileinstance|Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|Mux3~2_combout\ = (!\processadorinstance|prominstance|prom~10_combout\ & (\processadorinstance|regfileinstance|regfile[5][4]~regout\ & (\processadorinstance|prominstance|prom~8_combout\ & 
-- \processadorinstance|prominstance|prom~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|prominstance|prom~10_combout\,
	datab => \processadorinstance|regfileinstance|regfile[5][4]~regout\,
	datac => \processadorinstance|prominstance|prom~8_combout\,
	datad => \processadorinstance|prominstance|prom~12_combout\,
	combout => \processadorinstance|regfileinstance|Mux3~2_combout\);

-- Location: LCCOMB_X49_Y8_N14
\processadorinstance|ACC2[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ACC2\(4) = (GLOBAL(\processadorinstance|ACC2[3]~0clkctrl_outclk\) & ((\processadorinstance|regfileinstance|Mux3~2_combout\))) # (!GLOBAL(\processadorinstance|ACC2[3]~0clkctrl_outclk\) & (\processadorinstance|ACC2\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processadorinstance|ACC2\(4),
	datac => \processadorinstance|regfileinstance|Mux3~2_combout\,
	datad => \processadorinstance|ACC2[3]~0clkctrl_outclk\,
	combout => \processadorinstance|ACC2\(4));

-- Location: LCCOMB_X48_Y8_N24
\processadorinstance|ulainstance|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|Add0~16_combout\ = (\processadorinstance|ulainstance|Add0~15\ & ((\processadorinstance|prominstance|prom~17_combout\ $ (!\processadorinstance|ACC2\(5))))) # (!\processadorinstance|ulainstance|Add0~15\ & 
-- (\processadorinstance|prominstance|prom~17_combout\ $ (\processadorinstance|ACC2\(5) $ (GND))))
-- \processadorinstance|ulainstance|Add0~17\ = CARRY((!\processadorinstance|ulainstance|Add0~15\ & (\processadorinstance|prominstance|prom~17_combout\ $ (!\processadorinstance|ACC2\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|prominstance|prom~17_combout\,
	datab => \processadorinstance|ACC2\(5),
	datad => VCC,
	cin => \processadorinstance|ulainstance|Add0~15\,
	combout => \processadorinstance|ulainstance|Add0~16_combout\,
	cout => \processadorinstance|ulainstance|Add0~17\);

-- Location: LCCOMB_X49_Y10_N22
\processadorinstance|ulainstance|Mux4~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|Mux4~15_combout\ = ((\processadorinstance|prominstance|prom~7_combout\ & ((\processadorinstance|prominstance|prom~20_combout\) # (\processadorinstance|prominstance|prom~16_combout\)))) # 
-- (!\processadorinstance|prominstance|prom~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|prominstance|prom~20_combout\,
	datab => \processadorinstance|prominstance|prom~16_combout\,
	datac => \processadorinstance|prominstance|prom~19_combout\,
	datad => \processadorinstance|prominstance|prom~7_combout\,
	combout => \processadorinstance|ulainstance|Mux4~15_combout\);

-- Location: LCCOMB_X49_Y10_N18
\processadorinstance|ulainstance|Mux4~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|Mux4~10_combout\ = (!\processadorinstance|prominstance|prom~21_combout\ & (!\processadorinstance|prominstance|prom~19_combout\ & ((\processadorinstance|prominstance|prom~15_combout\) # 
-- (!\processadorinstance|prominstance|prom~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|prominstance|prom~21_combout\,
	datab => \processadorinstance|prominstance|prom~19_combout\,
	datac => \processadorinstance|prominstance|prom~15_combout\,
	datad => \processadorinstance|prominstance|prom~17_combout\,
	combout => \processadorinstance|ulainstance|Mux4~10_combout\);

-- Location: LCCOMB_X49_Y10_N12
\processadorinstance|ulainstance|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|Mux3~0_combout\ = (\processadorinstance|ulainstance|Mux4~14_combout\ & (((\processadorinstance|ACC2\(5) & \processadorinstance|ulainstance|Mux4~10_combout\)) # (!\processadorinstance|ulainstance|Mux4~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|ACC2\(5),
	datab => \processadorinstance|ulainstance|Mux4~14_combout\,
	datac => \processadorinstance|ulainstance|Mux4~15_combout\,
	datad => \processadorinstance|ulainstance|Mux4~10_combout\,
	combout => \processadorinstance|ulainstance|Mux3~0_combout\);

-- Location: LCCOMB_X48_Y8_N0
\processadorinstance|ulainstance|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|Mux3~1_combout\ = (\processadorinstance|ulainstance|Mux3~0_combout\) # ((\processadorinstance|ulainstance|Mux4~12_combout\ & \processadorinstance|ulainstance|Add0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processadorinstance|ulainstance|Mux4~12_combout\,
	datac => \processadorinstance|ulainstance|Add0~16_combout\,
	datad => \processadorinstance|ulainstance|Mux3~0_combout\,
	combout => \processadorinstance|ulainstance|Mux3~1_combout\);

-- Location: LCCOMB_X48_Y8_N30
\processadorinstance|disp1[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|disp1\(1) = (GLOBAL(\processadorinstance|disp0[3]~0clkctrl_outclk\) & ((\processadorinstance|ulainstance|Mux3~1_combout\))) # (!GLOBAL(\processadorinstance|disp0[3]~0clkctrl_outclk\) & (\processadorinstance|disp1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processadorinstance|disp1\(1),
	datac => \processadorinstance|disp0[3]~0clkctrl_outclk\,
	datad => \processadorinstance|ulainstance|Mux3~1_combout\,
	combout => \processadorinstance|disp1\(1));

-- Location: LCCOMB_X49_Y10_N20
\processadorinstance|ulainstance|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|Mux1~0_combout\ = (\processadorinstance|ulainstance|Mux4~14_combout\ & (((\processadorinstance|ACC2\(7) & \processadorinstance|ulainstance|Mux4~10_combout\)) # (!\processadorinstance|ulainstance|Mux4~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|ACC2\(7),
	datab => \processadorinstance|ulainstance|Mux4~14_combout\,
	datac => \processadorinstance|ulainstance|Mux4~10_combout\,
	datad => \processadorinstance|ulainstance|Mux4~15_combout\,
	combout => \processadorinstance|ulainstance|Mux1~0_combout\);

-- Location: LCCOMB_X49_Y8_N30
\processadorinstance|regfileinstance|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|Mux0~0_combout\ = (\processadorinstance|regfileinstance|regfile[5][7]~regout\ & (\processadorinstance|prominstance|prom~8_combout\ & (!\processadorinstance|prominstance|prom~10_combout\ & 
-- \processadorinstance|prominstance|prom~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|regfileinstance|regfile[5][7]~regout\,
	datab => \processadorinstance|prominstance|prom~8_combout\,
	datac => \processadorinstance|prominstance|prom~10_combout\,
	datad => \processadorinstance|prominstance|prom~12_combout\,
	combout => \processadorinstance|regfileinstance|Mux0~0_combout\);

-- Location: LCCOMB_X49_Y8_N6
\processadorinstance|ACC2[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ACC2\(7) = (GLOBAL(\processadorinstance|ACC2[3]~0clkctrl_outclk\) & ((\processadorinstance|regfileinstance|Mux0~0_combout\))) # (!GLOBAL(\processadorinstance|ACC2[3]~0clkctrl_outclk\) & (\processadorinstance|ACC2\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|ACC2\(7),
	datab => \processadorinstance|regfileinstance|Mux0~0_combout\,
	datad => \processadorinstance|ACC2[3]~0clkctrl_outclk\,
	combout => \processadorinstance|ACC2\(7));

-- Location: LCCOMB_X49_Y8_N0
\processadorinstance|ulainstance|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|Mux2~0_combout\ = (\processadorinstance|ulainstance|Mux4~14_combout\ & (((\processadorinstance|ACC2\(6) & \processadorinstance|ulainstance|Mux4~10_combout\)) # (!\processadorinstance|ulainstance|Mux4~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|ulainstance|Mux4~15_combout\,
	datab => \processadorinstance|ACC2\(6),
	datac => \processadorinstance|ulainstance|Mux4~10_combout\,
	datad => \processadorinstance|ulainstance|Mux4~14_combout\,
	combout => \processadorinstance|ulainstance|Mux2~0_combout\);

-- Location: LCCOMB_X48_Y8_N26
\processadorinstance|ulainstance|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|Add0~18_combout\ = (\processadorinstance|ulainstance|Add0~17\ & (\processadorinstance|prominstance|prom~17_combout\ $ ((\processadorinstance|ACC2\(6))))) # (!\processadorinstance|ulainstance|Add0~17\ & 
-- ((\processadorinstance|prominstance|prom~17_combout\ $ (!\processadorinstance|ACC2\(6))) # (GND)))
-- \processadorinstance|ulainstance|Add0~19\ = CARRY((\processadorinstance|prominstance|prom~17_combout\ $ (\processadorinstance|ACC2\(6))) # (!\processadorinstance|ulainstance|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|prominstance|prom~17_combout\,
	datab => \processadorinstance|ACC2\(6),
	datad => VCC,
	cin => \processadorinstance|ulainstance|Add0~17\,
	combout => \processadorinstance|ulainstance|Add0~18_combout\,
	cout => \processadorinstance|ulainstance|Add0~19\);

-- Location: LCCOMB_X49_Y8_N20
\processadorinstance|regfileinstance|regfile~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile~76_combout\ = (\processadorinstance|regfileinstance|regfile[5][0]~57_combout\ & ((\processadorinstance|ulainstance|Mux2~0_combout\) # ((\processadorinstance|ulainstance|Mux4~12_combout\ & 
-- \processadorinstance|ulainstance|Add0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|ulainstance|Mux4~12_combout\,
	datab => \processadorinstance|ulainstance|Mux2~0_combout\,
	datac => \processadorinstance|regfileinstance|regfile[5][0]~57_combout\,
	datad => \processadorinstance|ulainstance|Add0~18_combout\,
	combout => \processadorinstance|regfileinstance|regfile~76_combout\);

-- Location: LCFF_X49_Y8_N21
\processadorinstance|regfileinstance|regfile[5][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	datain => \processadorinstance|regfileinstance|regfile~76_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|regfileinstance|regfile[5][6]~regout\);

-- Location: LCCOMB_X49_Y9_N16
\processadorinstance|regfileinstance|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|Mux1~0_combout\ = (\processadorinstance|prominstance|prom~8_combout\ & (\processadorinstance|regfileinstance|regfile[5][6]~regout\ & (\processadorinstance|prominstance|prom~12_combout\ & 
-- !\processadorinstance|prominstance|prom~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|prominstance|prom~8_combout\,
	datab => \processadorinstance|regfileinstance|regfile[5][6]~regout\,
	datac => \processadorinstance|prominstance|prom~12_combout\,
	datad => \processadorinstance|prominstance|prom~10_combout\,
	combout => \processadorinstance|regfileinstance|Mux1~0_combout\);

-- Location: LCCOMB_X49_Y8_N28
\processadorinstance|ACC2[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ACC2\(6) = (GLOBAL(\processadorinstance|ACC2[3]~0clkctrl_outclk\) & ((\processadorinstance|regfileinstance|Mux1~0_combout\))) # (!GLOBAL(\processadorinstance|ACC2[3]~0clkctrl_outclk\) & (\processadorinstance|ACC2\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processadorinstance|ACC2\(6),
	datac => \processadorinstance|regfileinstance|Mux1~0_combout\,
	datad => \processadorinstance|ACC2[3]~0clkctrl_outclk\,
	combout => \processadorinstance|ACC2\(6));

-- Location: LCCOMB_X48_Y8_N28
\processadorinstance|ulainstance|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|Add0~20_combout\ = \processadorinstance|prominstance|prom~17_combout\ $ (\processadorinstance|ACC2\(7) $ (\processadorinstance|ulainstance|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|prominstance|prom~17_combout\,
	datab => \processadorinstance|ACC2\(7),
	cin => \processadorinstance|ulainstance|Add0~19\,
	combout => \processadorinstance|ulainstance|Add0~20_combout\);

-- Location: LCCOMB_X49_Y8_N12
\processadorinstance|ulainstance|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|Mux1~1_combout\ = (\processadorinstance|ulainstance|Mux1~0_combout\) # ((\processadorinstance|ulainstance|Mux4~12_combout\ & \processadorinstance|ulainstance|Add0~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processadorinstance|ulainstance|Mux1~0_combout\,
	datac => \processadorinstance|ulainstance|Mux4~12_combout\,
	datad => \processadorinstance|ulainstance|Add0~20_combout\,
	combout => \processadorinstance|ulainstance|Mux1~1_combout\);

-- Location: LCCOMB_X49_Y8_N8
\processadorinstance|disp1[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|disp1\(3) = (GLOBAL(\processadorinstance|disp0[3]~0clkctrl_outclk\) & ((\processadorinstance|ulainstance|Mux1~1_combout\))) # (!GLOBAL(\processadorinstance|disp0[3]~0clkctrl_outclk\) & (\processadorinstance|disp1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processadorinstance|disp1\(3),
	datac => \processadorinstance|disp0[3]~0clkctrl_outclk\,
	datad => \processadorinstance|ulainstance|Mux1~1_combout\,
	combout => \processadorinstance|disp1\(3));

-- Location: LCCOMB_X49_Y8_N22
\processadorinstance|ulainstance|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|Mux2~1_combout\ = (\processadorinstance|ulainstance|Mux2~0_combout\) # ((\processadorinstance|ulainstance|Mux4~12_combout\ & \processadorinstance|ulainstance|Add0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processadorinstance|ulainstance|Mux2~0_combout\,
	datac => \processadorinstance|ulainstance|Mux4~12_combout\,
	datad => \processadorinstance|ulainstance|Add0~18_combout\,
	combout => \processadorinstance|ulainstance|Mux2~1_combout\);

-- Location: LCCOMB_X49_Y8_N2
\processadorinstance|disp1[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|disp1\(2) = (GLOBAL(\processadorinstance|disp0[3]~0clkctrl_outclk\) & ((\processadorinstance|ulainstance|Mux2~1_combout\))) # (!GLOBAL(\processadorinstance|disp0[3]~0clkctrl_outclk\) & (\processadorinstance|disp1\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processadorinstance|disp1\(2),
	datac => \processadorinstance|disp0[3]~0clkctrl_outclk\,
	datad => \processadorinstance|ulainstance|Mux2~1_combout\,
	combout => \processadorinstance|disp1\(2));

-- Location: LCCOMB_X48_Y8_N8
\processadorinstance|ulainstance|Mux4~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|Mux4~11_combout\ = (\processadorinstance|ulainstance|Mux4~14_combout\ & (((\processadorinstance|ulainstance|Mux4~10_combout\ & \processadorinstance|ACC2\(4))) # (!\processadorinstance|ulainstance|Mux4~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|ulainstance|Mux4~10_combout\,
	datab => \processadorinstance|ACC2\(4),
	datac => \processadorinstance|ulainstance|Mux4~14_combout\,
	datad => \processadorinstance|ulainstance|Mux4~15_combout\,
	combout => \processadorinstance|ulainstance|Mux4~11_combout\);

-- Location: LCCOMB_X48_Y8_N2
\processadorinstance|ulainstance|Mux4~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|ulainstance|Mux4~13_combout\ = (\processadorinstance|ulainstance|Mux4~11_combout\) # ((\processadorinstance|ulainstance|Mux4~12_combout\ & \processadorinstance|ulainstance|Add0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processadorinstance|ulainstance|Mux4~11_combout\,
	datac => \processadorinstance|ulainstance|Mux4~12_combout\,
	datad => \processadorinstance|ulainstance|Add0~14_combout\,
	combout => \processadorinstance|ulainstance|Mux4~13_combout\);

-- Location: LCCOMB_X48_Y8_N6
\processadorinstance|disp1[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|disp1\(0) = (GLOBAL(\processadorinstance|disp0[3]~0clkctrl_outclk\) & ((\processadorinstance|ulainstance|Mux4~13_combout\))) # (!GLOBAL(\processadorinstance|disp0[3]~0clkctrl_outclk\) & (\processadorinstance|disp1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|disp1\(0),
	datac => \processadorinstance|disp0[3]~0clkctrl_outclk\,
	datad => \processadorinstance|ulainstance|Mux4~13_combout\,
	combout => \processadorinstance|disp1\(0));

-- Location: LCCOMB_X47_Y8_N24
\processadorinstance|seg7instance1|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|seg7instance1|WideOr6~0_combout\ = (\processadorinstance|disp1\(3) & (\processadorinstance|disp1\(0) & (\processadorinstance|disp1\(1) $ (\processadorinstance|disp1\(2))))) # (!\processadorinstance|disp1\(3) & 
-- (!\processadorinstance|disp1\(1) & (\processadorinstance|disp1\(2) $ (\processadorinstance|disp1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|disp1\(1),
	datab => \processadorinstance|disp1\(3),
	datac => \processadorinstance|disp1\(2),
	datad => \processadorinstance|disp1\(0),
	combout => \processadorinstance|seg7instance1|WideOr6~0_combout\);

-- Location: LCCOMB_X47_Y8_N22
\processadorinstance|seg7instance1|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|seg7instance1|WideOr5~0_combout\ = (\processadorinstance|disp1\(1) & ((\processadorinstance|disp1\(0) & (\processadorinstance|disp1\(3))) # (!\processadorinstance|disp1\(0) & ((\processadorinstance|disp1\(2)))))) # 
-- (!\processadorinstance|disp1\(1) & (\processadorinstance|disp1\(2) & (\processadorinstance|disp1\(3) $ (\processadorinstance|disp1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|disp1\(1),
	datab => \processadorinstance|disp1\(3),
	datac => \processadorinstance|disp1\(2),
	datad => \processadorinstance|disp1\(0),
	combout => \processadorinstance|seg7instance1|WideOr5~0_combout\);

-- Location: LCCOMB_X47_Y8_N0
\processadorinstance|seg7instance1|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|seg7instance1|WideOr4~0_combout\ = (\processadorinstance|disp1\(3) & (\processadorinstance|disp1\(2) & ((\processadorinstance|disp1\(1)) # (!\processadorinstance|disp1\(0))))) # (!\processadorinstance|disp1\(3) & 
-- (\processadorinstance|disp1\(1) & (!\processadorinstance|disp1\(2) & !\processadorinstance|disp1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|disp1\(1),
	datab => \processadorinstance|disp1\(3),
	datac => \processadorinstance|disp1\(2),
	datad => \processadorinstance|disp1\(0),
	combout => \processadorinstance|seg7instance1|WideOr4~0_combout\);

-- Location: LCCOMB_X47_Y8_N30
\processadorinstance|seg7instance1|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|seg7instance1|WideOr3~0_combout\ = (\processadorinstance|disp1\(1) & ((\processadorinstance|disp1\(2) & ((\processadorinstance|disp1\(0)))) # (!\processadorinstance|disp1\(2) & (\processadorinstance|disp1\(3) & 
-- !\processadorinstance|disp1\(0))))) # (!\processadorinstance|disp1\(1) & (!\processadorinstance|disp1\(3) & (\processadorinstance|disp1\(2) $ (\processadorinstance|disp1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|disp1\(1),
	datab => \processadorinstance|disp1\(3),
	datac => \processadorinstance|disp1\(2),
	datad => \processadorinstance|disp1\(0),
	combout => \processadorinstance|seg7instance1|WideOr3~0_combout\);

-- Location: LCCOMB_X47_Y8_N12
\processadorinstance|seg7instance1|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|seg7instance1|WideOr2~0_combout\ = (\processadorinstance|disp1\(1) & (!\processadorinstance|disp1\(3) & ((\processadorinstance|disp1\(0))))) # (!\processadorinstance|disp1\(1) & ((\processadorinstance|disp1\(2) & 
-- (!\processadorinstance|disp1\(3))) # (!\processadorinstance|disp1\(2) & ((\processadorinstance|disp1\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|disp1\(1),
	datab => \processadorinstance|disp1\(3),
	datac => \processadorinstance|disp1\(2),
	datad => \processadorinstance|disp1\(0),
	combout => \processadorinstance|seg7instance1|WideOr2~0_combout\);

-- Location: LCCOMB_X47_Y8_N10
\processadorinstance|seg7instance1|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|seg7instance1|WideOr1~0_combout\ = (\processadorinstance|disp1\(1) & (!\processadorinstance|disp1\(3) & ((\processadorinstance|disp1\(0)) # (!\processadorinstance|disp1\(2))))) # (!\processadorinstance|disp1\(1) & 
-- (\processadorinstance|disp1\(0) & (\processadorinstance|disp1\(3) $ (!\processadorinstance|disp1\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|disp1\(1),
	datab => \processadorinstance|disp1\(3),
	datac => \processadorinstance|disp1\(2),
	datad => \processadorinstance|disp1\(0),
	combout => \processadorinstance|seg7instance1|WideOr1~0_combout\);

-- Location: LCCOMB_X47_Y8_N16
\processadorinstance|seg7instance1|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|seg7instance1|WideOr0~0_combout\ = (\processadorinstance|disp1\(0) & ((\processadorinstance|disp1\(3)) # (\processadorinstance|disp1\(1) $ (\processadorinstance|disp1\(2))))) # (!\processadorinstance|disp1\(0) & 
-- ((\processadorinstance|disp1\(1)) # (\processadorinstance|disp1\(3) $ (\processadorinstance|disp1\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|disp1\(1),
	datab => \processadorinstance|disp1\(3),
	datac => \processadorinstance|disp1\(2),
	datad => \processadorinstance|disp1\(0),
	combout => \processadorinstance|seg7instance1|WideOr0~0_combout\);

-- Location: LCCOMB_X49_Y10_N24
\processadorinstance|Decoder1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|Decoder1~0_combout\ = (\processadorinstance|prominstance|prom~21_combout\ & (\processadorinstance|prominstance|prom~19_combout\ & (!\processadorinstance|prominstance|prom~15_combout\ & 
-- !\processadorinstance|prominstance|prom~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|prominstance|prom~21_combout\,
	datab => \processadorinstance|prominstance|prom~19_combout\,
	datac => \processadorinstance|prominstance|prom~15_combout\,
	datad => \processadorinstance|prominstance|prom~17_combout\,
	combout => \processadorinstance|Decoder1~0_combout\);

-- Location: CLKCTRL_G6
\processadorinstance|Decoder1~0clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \processadorinstance|Decoder1~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \processadorinstance|Decoder1~0clkctrl_outclk\);

-- Location: LCCOMB_X48_Y7_N8
\processadorinstance|LEDG[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|LEDG\(0) = (\KEY~combout\(0) & ((GLOBAL(\processadorinstance|Decoder1~0clkctrl_outclk\) & ((\processadorinstance|regfileinstance|Mux7~4_combout\))) # (!GLOBAL(\processadorinstance|Decoder1~0clkctrl_outclk\) & 
-- (\processadorinstance|LEDG\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|LEDG\(0),
	datab => \KEY~combout\(0),
	datac => \processadorinstance|Decoder1~0clkctrl_outclk\,
	datad => \processadorinstance|regfileinstance|Mux7~4_combout\,
	combout => \processadorinstance|LEDG\(0));

-- Location: LCFF_X48_Y7_N15
\processadorinstance|regfileinstance|regfile[7][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	sdata => \processadorinstance|data_reg\(1),
	sload => VCC,
	ena => \processadorinstance|regfileinstance|regfile[7][0]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|regfileinstance|regfile[7][1]~regout\);

-- Location: LCFF_X49_Y9_N3
\processadorinstance|regfileinstance|regfile[6][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	sdata => \processadorinstance|data_reg\(1),
	sload => VCC,
	ena => \processadorinstance|regfileinstance|regfile[6][0]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|regfileinstance|regfile[6][1]~regout\);

-- Location: LCFF_X48_Y10_N27
\processadorinstance|regfileinstance|regfile[4][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	sdata => \processadorinstance|data_reg\(1),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \processadorinstance|regfileinstance|regfile[4][0]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|regfileinstance|regfile[4][1]~regout\);

-- Location: LCCOMB_X48_Y10_N26
\processadorinstance|regfileinstance|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|Mux6~0_combout\ = (\processadorinstance|prominstance|prom~8_combout\ & (((\processadorinstance|prominstance|prom~10_combout\)))) # (!\processadorinstance|prominstance|prom~8_combout\ & 
-- ((\processadorinstance|prominstance|prom~10_combout\ & (\processadorinstance|regfileinstance|regfile[6][1]~regout\)) # (!\processadorinstance|prominstance|prom~10_combout\ & ((\processadorinstance|regfileinstance|regfile[4][1]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|prominstance|prom~8_combout\,
	datab => \processadorinstance|regfileinstance|regfile[6][1]~regout\,
	datac => \processadorinstance|regfileinstance|regfile[4][1]~regout\,
	datad => \processadorinstance|prominstance|prom~10_combout\,
	combout => \processadorinstance|regfileinstance|Mux6~0_combout\);

-- Location: LCCOMB_X48_Y7_N14
\processadorinstance|regfileinstance|Mux6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|Mux6~1_combout\ = (\processadorinstance|prominstance|prom~8_combout\ & ((\processadorinstance|regfileinstance|Mux6~0_combout\ & ((\processadorinstance|regfileinstance|regfile[7][1]~regout\))) # 
-- (!\processadorinstance|regfileinstance|Mux6~0_combout\ & (\processadorinstance|regfileinstance|regfile[5][1]~regout\)))) # (!\processadorinstance|prominstance|prom~8_combout\ & (((\processadorinstance|regfileinstance|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|regfileinstance|regfile[5][1]~regout\,
	datab => \processadorinstance|prominstance|prom~8_combout\,
	datac => \processadorinstance|regfileinstance|regfile[7][1]~regout\,
	datad => \processadorinstance|regfileinstance|Mux6~0_combout\,
	combout => \processadorinstance|regfileinstance|Mux6~1_combout\);

-- Location: LCFF_X49_Y7_N19
\processadorinstance|regfileinstance|regfile[3][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	sdata => \processadorinstance|data_reg\(1),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \processadorinstance|regfileinstance|regfile[3][0]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|regfileinstance|regfile[3][1]~regout\);

-- Location: LCFF_X49_Y6_N27
\processadorinstance|regfileinstance|regfile[1][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	sdata => \processadorinstance|data_reg\(1),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \processadorinstance|regfileinstance|regfile[1][0]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|regfileinstance|regfile[1][1]~regout\);

-- Location: LCCOMB_X49_Y7_N12
\processadorinstance|regfileinstance|Mux6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|Mux6~2_combout\ = (\processadorinstance|prominstance|prom~10_combout\ & (((\processadorinstance|prominstance|prom~8_combout\)))) # (!\processadorinstance|prominstance|prom~10_combout\ & 
-- ((\processadorinstance|prominstance|prom~8_combout\ & ((\processadorinstance|regfileinstance|regfile[1][1]~regout\))) # (!\processadorinstance|prominstance|prom~8_combout\ & (\processadorinstance|regfileinstance|regfile[0][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|regfileinstance|regfile[0][1]~regout\,
	datab => \processadorinstance|regfileinstance|regfile[1][1]~regout\,
	datac => \processadorinstance|prominstance|prom~10_combout\,
	datad => \processadorinstance|prominstance|prom~8_combout\,
	combout => \processadorinstance|regfileinstance|Mux6~2_combout\);

-- Location: LCCOMB_X49_Y7_N18
\processadorinstance|regfileinstance|Mux6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|Mux6~3_combout\ = (\processadorinstance|prominstance|prom~10_combout\ & ((\processadorinstance|regfileinstance|Mux6~2_combout\ & ((\processadorinstance|regfileinstance|regfile[3][1]~regout\))) # 
-- (!\processadorinstance|regfileinstance|Mux6~2_combout\ & (\processadorinstance|regfileinstance|regfile[2][1]~regout\)))) # (!\processadorinstance|prominstance|prom~10_combout\ & (((\processadorinstance|regfileinstance|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|regfileinstance|regfile[2][1]~regout\,
	datab => \processadorinstance|prominstance|prom~10_combout\,
	datac => \processadorinstance|regfileinstance|regfile[3][1]~regout\,
	datad => \processadorinstance|regfileinstance|Mux6~2_combout\,
	combout => \processadorinstance|regfileinstance|Mux6~3_combout\);

-- Location: LCCOMB_X48_Y7_N12
\processadorinstance|regfileinstance|Mux6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|Mux6~4_combout\ = (\processadorinstance|prominstance|prom~12_combout\ & (\processadorinstance|regfileinstance|Mux6~1_combout\)) # (!\processadorinstance|prominstance|prom~12_combout\ & 
-- ((\processadorinstance|regfileinstance|Mux6~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|prominstance|prom~12_combout\,
	datab => \processadorinstance|regfileinstance|Mux6~1_combout\,
	datad => \processadorinstance|regfileinstance|Mux6~3_combout\,
	combout => \processadorinstance|regfileinstance|Mux6~4_combout\);

-- Location: LCCOMB_X48_Y7_N10
\processadorinstance|LEDG[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|LEDG\(1) = (\KEY~combout\(0) & ((GLOBAL(\processadorinstance|Decoder1~0clkctrl_outclk\) & ((\processadorinstance|regfileinstance|Mux6~4_combout\))) # (!GLOBAL(\processadorinstance|Decoder1~0clkctrl_outclk\) & 
-- (\processadorinstance|LEDG\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|LEDG\(1),
	datab => \KEY~combout\(0),
	datac => \processadorinstance|Decoder1~0clkctrl_outclk\,
	datad => \processadorinstance|regfileinstance|Mux6~4_combout\,
	combout => \processadorinstance|LEDG\(1));

-- Location: LCCOMB_X49_Y7_N26
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

-- Location: LCFF_X49_Y7_N27
\processadorinstance|regfileinstance|regfile[3][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	datain => \processadorinstance|regfileinstance|regfile[3][2]~feeder_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \processadorinstance|regfileinstance|regfile[3][0]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|regfileinstance|regfile[3][2]~regout\);

-- Location: LCFF_X48_Y6_N21
\processadorinstance|regfileinstance|regfile[2][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	sdata => \processadorinstance|data_reg\(2),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \processadorinstance|regfileinstance|regfile[2][0]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|regfileinstance|regfile[2][2]~regout\);

-- Location: LCCOMB_X48_Y6_N26
\processadorinstance|regfileinstance|Mux5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|Mux5~2_combout\ = (\processadorinstance|prominstance|prom~8_combout\ & ((\processadorinstance|regfileinstance|regfile[1][2]~regout\) # ((\processadorinstance|prominstance|prom~10_combout\)))) # 
-- (!\processadorinstance|prominstance|prom~8_combout\ & (((\processadorinstance|regfileinstance|regfile[0][2]~regout\ & !\processadorinstance|prominstance|prom~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|regfileinstance|regfile[1][2]~regout\,
	datab => \processadorinstance|regfileinstance|regfile[0][2]~regout\,
	datac => \processadorinstance|prominstance|prom~8_combout\,
	datad => \processadorinstance|prominstance|prom~10_combout\,
	combout => \processadorinstance|regfileinstance|Mux5~2_combout\);

-- Location: LCCOMB_X48_Y6_N20
\processadorinstance|regfileinstance|Mux5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|Mux5~3_combout\ = (\processadorinstance|prominstance|prom~10_combout\ & ((\processadorinstance|regfileinstance|Mux5~2_combout\ & (\processadorinstance|regfileinstance|regfile[3][2]~regout\)) # 
-- (!\processadorinstance|regfileinstance|Mux5~2_combout\ & ((\processadorinstance|regfileinstance|regfile[2][2]~regout\))))) # (!\processadorinstance|prominstance|prom~10_combout\ & (((\processadorinstance|regfileinstance|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|prominstance|prom~10_combout\,
	datab => \processadorinstance|regfileinstance|regfile[3][2]~regout\,
	datac => \processadorinstance|regfileinstance|regfile[2][2]~regout\,
	datad => \processadorinstance|regfileinstance|Mux5~2_combout\,
	combout => \processadorinstance|regfileinstance|Mux5~3_combout\);

-- Location: LCFF_X48_Y7_N13
\processadorinstance|regfileinstance|regfile[7][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	sdata => \processadorinstance|data_reg\(2),
	sload => VCC,
	ena => \processadorinstance|regfileinstance|regfile[7][0]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|regfileinstance|regfile[7][2]~regout\);

-- Location: LCCOMB_X49_Y9_N26
\processadorinstance|regfileinstance|regfile[6][2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile[6][2]~feeder_combout\ = \processadorinstance|data_reg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \processadorinstance|data_reg\(2),
	combout => \processadorinstance|regfileinstance|regfile[6][2]~feeder_combout\);

-- Location: LCFF_X49_Y9_N27
\processadorinstance|regfileinstance|regfile[6][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	datain => \processadorinstance|regfileinstance|regfile[6][2]~feeder_combout\,
	ena => \processadorinstance|regfileinstance|regfile[6][0]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|regfileinstance|regfile[6][2]~regout\);

-- Location: LCFF_X47_Y10_N9
\processadorinstance|regfileinstance|regfile[4][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	sdata => \processadorinstance|data_reg\(2),
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	ena => \processadorinstance|regfileinstance|regfile[4][0]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|regfileinstance|regfile[4][2]~regout\);

-- Location: LCCOMB_X47_Y10_N8
\processadorinstance|regfileinstance|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|Mux5~0_combout\ = (\processadorinstance|prominstance|prom~10_combout\ & ((\processadorinstance|regfileinstance|regfile[6][2]~regout\) # ((\processadorinstance|prominstance|prom~8_combout\)))) # 
-- (!\processadorinstance|prominstance|prom~10_combout\ & (((\processadorinstance|regfileinstance|regfile[4][2]~regout\ & !\processadorinstance|prominstance|prom~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|prominstance|prom~10_combout\,
	datab => \processadorinstance|regfileinstance|regfile[6][2]~regout\,
	datac => \processadorinstance|regfileinstance|regfile[4][2]~regout\,
	datad => \processadorinstance|prominstance|prom~8_combout\,
	combout => \processadorinstance|regfileinstance|Mux5~0_combout\);

-- Location: LCCOMB_X48_Y6_N6
\processadorinstance|regfileinstance|Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|Mux5~1_combout\ = (\processadorinstance|prominstance|prom~8_combout\ & ((\processadorinstance|regfileinstance|Mux5~0_combout\ & ((\processadorinstance|regfileinstance|regfile[7][2]~regout\))) # 
-- (!\processadorinstance|regfileinstance|Mux5~0_combout\ & (\processadorinstance|regfileinstance|regfile[5][2]~regout\)))) # (!\processadorinstance|prominstance|prom~8_combout\ & (((\processadorinstance|regfileinstance|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|regfileinstance|regfile[5][2]~regout\,
	datab => \processadorinstance|prominstance|prom~8_combout\,
	datac => \processadorinstance|regfileinstance|regfile[7][2]~regout\,
	datad => \processadorinstance|regfileinstance|Mux5~0_combout\,
	combout => \processadorinstance|regfileinstance|Mux5~1_combout\);

-- Location: LCCOMB_X48_Y6_N18
\processadorinstance|regfileinstance|Mux5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|Mux5~4_combout\ = (\processadorinstance|prominstance|prom~12_combout\ & ((\processadorinstance|regfileinstance|Mux5~1_combout\))) # (!\processadorinstance|prominstance|prom~12_combout\ & 
-- (\processadorinstance|regfileinstance|Mux5~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \processadorinstance|prominstance|prom~12_combout\,
	datac => \processadorinstance|regfileinstance|Mux5~3_combout\,
	datad => \processadorinstance|regfileinstance|Mux5~1_combout\,
	combout => \processadorinstance|regfileinstance|Mux5~4_combout\);

-- Location: LCCOMB_X48_Y6_N14
\processadorinstance|LEDG[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|LEDG\(2) = (\KEY~combout\(0) & ((GLOBAL(\processadorinstance|Decoder1~0clkctrl_outclk\) & ((\processadorinstance|regfileinstance|Mux5~4_combout\))) # (!GLOBAL(\processadorinstance|Decoder1~0clkctrl_outclk\) & 
-- (\processadorinstance|LEDG\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|LEDG\(2),
	datab => \KEY~combout\(0),
	datac => \processadorinstance|Decoder1~0clkctrl_outclk\,
	datad => \processadorinstance|regfileinstance|Mux5~4_combout\,
	combout => \processadorinstance|LEDG\(2));

-- Location: LCCOMB_X49_Y6_N28
\processadorinstance|LEDG[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|LEDG\(3) = (\KEY~combout\(0) & ((GLOBAL(\processadorinstance|Decoder1~0clkctrl_outclk\) & ((\processadorinstance|regfileinstance|Mux4~4_combout\))) # (!GLOBAL(\processadorinstance|Decoder1~0clkctrl_outclk\) & 
-- (\processadorinstance|LEDG\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|LEDG\(3),
	datab => \KEY~combout\(0),
	datac => \processadorinstance|Decoder1~0clkctrl_outclk\,
	datad => \processadorinstance|regfileinstance|Mux4~4_combout\,
	combout => \processadorinstance|LEDG\(3));

-- Location: LCCOMB_X49_Y6_N6
\processadorinstance|LEDG[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|LEDG\(4) = (\KEY~combout\(0) & ((GLOBAL(\processadorinstance|Decoder1~0clkctrl_outclk\) & ((\processadorinstance|regfileinstance|Mux3~2_combout\))) # (!GLOBAL(\processadorinstance|Decoder1~0clkctrl_outclk\) & 
-- (\processadorinstance|LEDG\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|LEDG\(4),
	datab => \KEY~combout\(0),
	datac => \processadorinstance|Decoder1~0clkctrl_outclk\,
	datad => \processadorinstance|regfileinstance|Mux3~2_combout\,
	combout => \processadorinstance|LEDG\(4));

-- Location: LCCOMB_X49_Y6_N24
\processadorinstance|LEDG[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|LEDG\(5) = (\KEY~combout\(0) & ((GLOBAL(\processadorinstance|Decoder1~0clkctrl_outclk\) & (\processadorinstance|regfileinstance|Mux2~0_combout\)) # (!GLOBAL(\processadorinstance|Decoder1~0clkctrl_outclk\) & 
-- ((\processadorinstance|LEDG\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|regfileinstance|Mux2~0_combout\,
	datab => \KEY~combout\(0),
	datac => \processadorinstance|Decoder1~0clkctrl_outclk\,
	datad => \processadorinstance|LEDG\(5),
	combout => \processadorinstance|LEDG\(5));

-- Location: LCCOMB_X49_Y9_N6
\processadorinstance|LEDG[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|LEDG\(6) = (\KEY~combout\(0) & ((GLOBAL(\processadorinstance|Decoder1~0clkctrl_outclk\) & ((\processadorinstance|regfileinstance|Mux1~0_combout\))) # (!GLOBAL(\processadorinstance|Decoder1~0clkctrl_outclk\) & 
-- (\processadorinstance|LEDG\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|LEDG\(6),
	datab => \processadorinstance|regfileinstance|Mux1~0_combout\,
	datac => \KEY~combout\(0),
	datad => \processadorinstance|Decoder1~0clkctrl_outclk\,
	combout => \processadorinstance|LEDG\(6));

-- Location: LCCOMB_X49_Y6_N30
\processadorinstance|LEDG[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|LEDG\(7) = (\KEY~combout\(0) & ((GLOBAL(\processadorinstance|Decoder1~0clkctrl_outclk\) & (\processadorinstance|regfileinstance|Mux0~0_combout\)) # (!GLOBAL(\processadorinstance|Decoder1~0clkctrl_outclk\) & 
-- ((\processadorinstance|LEDG\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|regfileinstance|Mux0~0_combout\,
	datab => \KEY~combout\(0),
	datac => \processadorinstance|Decoder1~0clkctrl_outclk\,
	datad => \processadorinstance|LEDG\(7),
	combout => \processadorinstance|LEDG\(7));

-- Location: LCCOMB_X48_Y7_N22
\processadorinstance|LEDR[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|LEDR[0]~0_combout\ = ((\processadorinstance|prominstance|prom~12_combout\ & ((\processadorinstance|regfileinstance|Mux7~1_combout\))) # (!\processadorinstance|prominstance|prom~12_combout\ & 
-- (\processadorinstance|regfileinstance|Mux7~3_combout\))) # (!\KEY~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|regfileinstance|Mux7~3_combout\,
	datab => \KEY~combout\(0),
	datac => \processadorinstance|regfileinstance|Mux7~1_combout\,
	datad => \processadorinstance|prominstance|prom~12_combout\,
	combout => \processadorinstance|LEDR[0]~0_combout\);

-- Location: LCCOMB_X49_Y7_N20
\processadorinstance|LEDR[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|LEDR[1]~1_combout\ = ((\processadorinstance|prominstance|prom~12_combout\ & ((\processadorinstance|regfileinstance|Mux6~1_combout\))) # (!\processadorinstance|prominstance|prom~12_combout\ & 
-- (\processadorinstance|regfileinstance|Mux6~3_combout\))) # (!\KEY~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(0),
	datab => \processadorinstance|regfileinstance|Mux6~3_combout\,
	datac => \processadorinstance|prominstance|prom~12_combout\,
	datad => \processadorinstance|regfileinstance|Mux6~1_combout\,
	combout => \processadorinstance|LEDR[1]~1_combout\);

-- Location: LCCOMB_X48_Y6_N16
\processadorinstance|LEDR[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|LEDR[2]~2_combout\ = ((\processadorinstance|prominstance|prom~12_combout\ & ((\processadorinstance|regfileinstance|Mux5~1_combout\))) # (!\processadorinstance|prominstance|prom~12_combout\ & 
-- (\processadorinstance|regfileinstance|Mux5~3_combout\))) # (!\KEY~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|regfileinstance|Mux5~3_combout\,
	datab => \KEY~combout\(0),
	datac => \processadorinstance|regfileinstance|Mux5~1_combout\,
	datad => \processadorinstance|prominstance|prom~12_combout\,
	combout => \processadorinstance|LEDR[2]~2_combout\);

-- Location: LCCOMB_X48_Y6_N24
\processadorinstance|LEDR[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|LEDR[3]~3_combout\ = ((\processadorinstance|prominstance|prom~12_combout\ & (\processadorinstance|regfileinstance|Mux4~1_combout\)) # (!\processadorinstance|prominstance|prom~12_combout\ & 
-- ((\processadorinstance|regfileinstance|Mux4~3_combout\)))) # (!\KEY~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(0),
	datab => \processadorinstance|prominstance|prom~12_combout\,
	datac => \processadorinstance|regfileinstance|Mux4~1_combout\,
	datad => \processadorinstance|regfileinstance|Mux4~3_combout\,
	combout => \processadorinstance|LEDR[3]~3_combout\);

-- Location: LCCOMB_X49_Y7_N30
\processadorinstance|LEDR[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|LEDR[4]~4_combout\ = ((\processadorinstance|prominstance|prom~8_combout\ & (\processadorinstance|regfileinstance|Mux3~1_combout\ & \processadorinstance|regfileinstance|regfile[5][4]~regout\))) # (!\KEY~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(0),
	datab => \processadorinstance|prominstance|prom~8_combout\,
	datac => \processadorinstance|regfileinstance|Mux3~1_combout\,
	datad => \processadorinstance|regfileinstance|regfile[5][4]~regout\,
	combout => \processadorinstance|LEDR[4]~4_combout\);

-- Location: LCCOMB_X49_Y8_N18
\processadorinstance|regfileinstance|regfile~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile~75_combout\ = (\processadorinstance|regfileinstance|regfile[5][0]~57_combout\ & ((\processadorinstance|ulainstance|Mux3~0_combout\) # ((\processadorinstance|ulainstance|Mux4~12_combout\ & 
-- \processadorinstance|ulainstance|Add0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|regfileinstance|regfile[5][0]~57_combout\,
	datab => \processadorinstance|ulainstance|Mux4~12_combout\,
	datac => \processadorinstance|ulainstance|Mux3~0_combout\,
	datad => \processadorinstance|ulainstance|Add0~16_combout\,
	combout => \processadorinstance|regfileinstance|regfile~75_combout\);

-- Location: LCFF_X49_Y8_N19
\processadorinstance|regfileinstance|regfile[5][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	datain => \processadorinstance|regfileinstance|regfile~75_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|regfileinstance|regfile[5][5]~regout\);

-- Location: LCCOMB_X49_Y6_N8
\processadorinstance|LEDR[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|LEDR[5]~5_combout\ = ((\processadorinstance|regfileinstance|regfile[5][5]~regout\ & (\processadorinstance|regfileinstance|Mux3~1_combout\ & \processadorinstance|prominstance|prom~8_combout\))) # (!\KEY~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|regfileinstance|regfile[5][5]~regout\,
	datab => \processadorinstance|regfileinstance|Mux3~1_combout\,
	datac => \processadorinstance|prominstance|prom~8_combout\,
	datad => \KEY~combout\(0),
	combout => \processadorinstance|LEDR[5]~5_combout\);

-- Location: LCCOMB_X49_Y9_N10
\processadorinstance|LEDR[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|LEDR[6]~6_combout\ = ((\processadorinstance|prominstance|prom~8_combout\ & (\processadorinstance|regfileinstance|Mux3~1_combout\ & \processadorinstance|regfileinstance|regfile[5][6]~regout\))) # (!\KEY~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|prominstance|prom~8_combout\,
	datab => \processadorinstance|regfileinstance|Mux3~1_combout\,
	datac => \processadorinstance|regfileinstance|regfile[5][6]~regout\,
	datad => \KEY~combout\(0),
	combout => \processadorinstance|LEDR[6]~6_combout\);

-- Location: LCCOMB_X49_Y8_N10
\processadorinstance|regfileinstance|regfile~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|regfileinstance|regfile~77_combout\ = (\processadorinstance|regfileinstance|regfile[5][0]~57_combout\ & ((\processadorinstance|ulainstance|Mux1~0_combout\) # ((\processadorinstance|ulainstance|Mux4~12_combout\ & 
-- \processadorinstance|ulainstance|Add0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processadorinstance|regfileinstance|regfile[5][0]~57_combout\,
	datab => \processadorinstance|ulainstance|Mux4~12_combout\,
	datac => \processadorinstance|ulainstance|Mux1~0_combout\,
	datad => \processadorinstance|ulainstance|Add0~20_combout\,
	combout => \processadorinstance|regfileinstance|regfile~77_combout\);

-- Location: LCFF_X49_Y8_N11
\processadorinstance|regfileinstance|regfile[5][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(3),
	datain => \processadorinstance|regfileinstance|regfile~77_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \processadorinstance|regfileinstance|regfile[5][7]~regout\);

-- Location: LCCOMB_X49_Y7_N24
\processadorinstance|LEDR[7]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \processadorinstance|LEDR[7]~7_combout\ = ((\processadorinstance|regfileinstance|Mux3~1_combout\ & (\processadorinstance|regfileinstance|regfile[5][7]~regout\ & \processadorinstance|prominstance|prom~8_combout\))) # (!\KEY~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY~combout\(0),
	datab => \processadorinstance|regfileinstance|Mux3~1_combout\,
	datac => \processadorinstance|regfileinstance|regfile[5][7]~regout\,
	datad => \processadorinstance|prominstance|prom~8_combout\,
	combout => \processadorinstance|LEDR[7]~7_combout\);

-- Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_E9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \processadorinstance|seg7instance1|WideOr6~0_combout\,
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
	datain => \processadorinstance|seg7instance1|WideOr5~0_combout\,
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
	datain => \processadorinstance|seg7instance1|WideOr4~0_combout\,
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
	datain => \processadorinstance|seg7instance1|WideOr3~0_combout\,
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
	datain => \processadorinstance|seg7instance1|WideOr2~0_combout\,
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
	datain => \processadorinstance|seg7instance1|WideOr1~0_combout\,
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
	datain => \processadorinstance|seg7instance1|ALT_INV_WideOr0~0_combout\,
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
	datain => \processadorinstance|LEDG\(5),
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
	datain => \processadorinstance|LEDG\(6),
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
	datain => \processadorinstance|LEDG\(7),
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
	datain => \processadorinstance|LEDR[5]~5_combout\,
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
	datain => \processadorinstance|LEDR[6]~6_combout\,
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
	datain => \processadorinstance|LEDR[7]~7_combout\,
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


