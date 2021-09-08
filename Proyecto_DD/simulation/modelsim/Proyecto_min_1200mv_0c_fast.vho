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
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "09/08/2021 11:52:18"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	calculator IS
    PORT (
	digit_1 : IN std_logic_vector(3 DOWNTO 0);
	digit_2 : IN std_logic_vector(3 DOWNTO 0);
	result_1 : OUT std_logic_vector(6 DOWNTO 0);
	result_2 : OUT std_logic_vector(6 DOWNTO 0);
	result_3 : OUT std_logic_vector(6 DOWNTO 0);
	result_4 : OUT std_logic_vector(6 DOWNTO 0);
	symbol : IN std_logic_vector(1 DOWNTO 0)
	);
END calculator;

-- Design Ports Information
-- result_1[0]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_1[1]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_1[2]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_1[3]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_1[4]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_1[5]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_1[6]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_2[0]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_2[1]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_2[2]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_2[3]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_2[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_2[5]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_2[6]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_3[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_3[1]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_3[2]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_3[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_3[4]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_3[5]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_3[6]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_4[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_4[1]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_4[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_4[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_4[4]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_4[5]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result_4[6]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digit_1[0]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digit_1[1]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digit_1[2]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digit_1[3]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digit_2[0]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digit_2[1]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digit_2[2]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- digit_2[3]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- symbol[1]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- symbol[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF calculator IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_digit_1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_digit_2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_result_1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_result_2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_result_3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_result_4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_symbol : std_logic_vector(1 DOWNTO 0);
SIGNAL \result_1[0]~output_o\ : std_logic;
SIGNAL \result_1[1]~output_o\ : std_logic;
SIGNAL \result_1[2]~output_o\ : std_logic;
SIGNAL \result_1[3]~output_o\ : std_logic;
SIGNAL \result_1[4]~output_o\ : std_logic;
SIGNAL \result_1[5]~output_o\ : std_logic;
SIGNAL \result_1[6]~output_o\ : std_logic;
SIGNAL \result_2[0]~output_o\ : std_logic;
SIGNAL \result_2[1]~output_o\ : std_logic;
SIGNAL \result_2[2]~output_o\ : std_logic;
SIGNAL \result_2[3]~output_o\ : std_logic;
SIGNAL \result_2[4]~output_o\ : std_logic;
SIGNAL \result_2[5]~output_o\ : std_logic;
SIGNAL \result_2[6]~output_o\ : std_logic;
SIGNAL \result_3[0]~output_o\ : std_logic;
SIGNAL \result_3[1]~output_o\ : std_logic;
SIGNAL \result_3[2]~output_o\ : std_logic;
SIGNAL \result_3[3]~output_o\ : std_logic;
SIGNAL \result_3[4]~output_o\ : std_logic;
SIGNAL \result_3[5]~output_o\ : std_logic;
SIGNAL \result_3[6]~output_o\ : std_logic;
SIGNAL \result_4[0]~output_o\ : std_logic;
SIGNAL \result_4[1]~output_o\ : std_logic;
SIGNAL \result_4[2]~output_o\ : std_logic;
SIGNAL \result_4[3]~output_o\ : std_logic;
SIGNAL \result_4[4]~output_o\ : std_logic;
SIGNAL \result_4[5]~output_o\ : std_logic;
SIGNAL \result_4[6]~output_o\ : std_logic;
SIGNAL \digit_1[2]~input_o\ : std_logic;
SIGNAL \digit_1[3]~input_o\ : std_logic;
SIGNAL \digit_1[1]~input_o\ : std_logic;
SIGNAL \digit_1[0]~input_o\ : std_logic;
SIGNAL \number_1|Mux6~0_combout\ : std_logic;
SIGNAL \number_1|Mux5~0_combout\ : std_logic;
SIGNAL \number_1|Mux4~0_combout\ : std_logic;
SIGNAL \number_1|Mux3~0_combout\ : std_logic;
SIGNAL \number_1|Mux2~0_combout\ : std_logic;
SIGNAL \number_1|Mux1~0_combout\ : std_logic;
SIGNAL \number_1|Mux0~0_combout\ : std_logic;
SIGNAL \digit_2[0]~input_o\ : std_logic;
SIGNAL \digit_2[1]~input_o\ : std_logic;
SIGNAL \digit_2[2]~input_o\ : std_logic;
SIGNAL \digit_2[3]~input_o\ : std_logic;
SIGNAL \number_2|Mux6~0_combout\ : std_logic;
SIGNAL \number_2|Mux5~0_combout\ : std_logic;
SIGNAL \number_2|Mux4~0_combout\ : std_logic;
SIGNAL \number_2|Mux3~0_combout\ : std_logic;
SIGNAL \number_2|Mux2~0_combout\ : std_logic;
SIGNAL \number_2|Mux1~0_combout\ : std_logic;
SIGNAL \number_2|Mux0~0_combout\ : std_logic;
SIGNAL \symbol[1]~input_o\ : std_logic;
SIGNAL \symbol[0]~input_o\ : std_logic;
SIGNAL \selector|multiplication|adittion_1|full1|S~0_combout\ : std_logic;
SIGNAL \selector|multiplication|adittion_1|full2|Cout~0_combout\ : std_logic;
SIGNAL \selector|multiplication|adittion_1|full3|Cout~0_combout\ : std_logic;
SIGNAL \selector|multiplication|adittion_2|full4|Cout~2_combout\ : std_logic;
SIGNAL \selector|multiplication|adittion_2|full3|Cout~0_combout\ : std_logic;
SIGNAL \selector|multiplication|adittion_1|full3|S~0_combout\ : std_logic;
SIGNAL \selector|multiplication|adittion_1|full2|S~0_combout\ : std_logic;
SIGNAL \selector|multiplication|adittion_2|full1|S~0_combout\ : std_logic;
SIGNAL \selector|multiplication|adittion_2|full2|Cout~0_combout\ : std_logic;
SIGNAL \selector|multiplication|adittion_2|full4|Cout~4_combout\ : std_logic;
SIGNAL \selector|multiplication|adittion_2|full4|Cout~3_combout\ : std_logic;
SIGNAL \selector|multiplication|adittion_2|full4|S~0_combout\ : std_logic;
SIGNAL \selector|multiplication|adittion_2|full4|S~1_combout\ : std_logic;
SIGNAL \selector|multiplication|adittion_2|full2|S~0_combout\ : std_logic;
SIGNAL \selector|multiplication|adittion_3|full1|S~0_combout\ : std_logic;
SIGNAL \selector|multiplication|adittion_2|full3|S~0_combout\ : std_logic;
SIGNAL \selector|multiplication|adittion_3|full2|S~1_cout\ : std_logic;
SIGNAL \selector|multiplication|adittion_3|full2|S~3\ : std_logic;
SIGNAL \selector|multiplication|adittion_3|full2|S~5\ : std_logic;
SIGNAL \selector|multiplication|adittion_3|full2|S~6_combout\ : std_logic;
SIGNAL \selector|multiplication|adittion_3|full2|S~4_combout\ : std_logic;
SIGNAL \selector|multiplication|adittion_3|full2|S~2_combout\ : std_logic;
SIGNAL \selector|multiplication|adittion_2|full1|S~1_combout\ : std_logic;
SIGNAL \selector|multiplication|adittion_3|full1|S~1_combout\ : std_logic;
SIGNAL \selector|multiplication|adittion_1|full1|S~1_combout\ : std_logic;
SIGNAL \selector|decen_uni_multiplicacion|Mux3~1_combout\ : std_logic;
SIGNAL \selector|decen_uni_multiplicacion|Mux3~0_combout\ : std_logic;
SIGNAL \selector|result_1[0]~0_combout\ : std_logic;
SIGNAL \selector|multiplication|adittion_3|full2|S~7\ : std_logic;
SIGNAL \selector|multiplication|adittion_3|full2|S~8_combout\ : std_logic;
SIGNAL \selector|decen_uni_multiplicacion|Mux3~2_combout\ : std_logic;
SIGNAL \selector|result_1[0]~1_combout\ : std_logic;
SIGNAL \selector|adittion|full1|S~0_combout\ : std_logic;
SIGNAL \selector|adittion|full2|S~1_cout\ : std_logic;
SIGNAL \selector|adittion|full2|S~3\ : std_logic;
SIGNAL \selector|adittion|full2|S~5\ : std_logic;
SIGNAL \selector|adittion|full2|S~6_combout\ : std_logic;
SIGNAL \selector|adittion|full2|S~4_combout\ : std_logic;
SIGNAL \selector|adittion|full2|S~7\ : std_logic;
SIGNAL \selector|adittion|full2|S~8_combout\ : std_logic;
SIGNAL \selector|adittion|full2|S~2_combout\ : std_logic;
SIGNAL \selector|decen_uni_suma|Mux3~0_combout\ : std_logic;
SIGNAL \selector|result_1[0]~2_combout\ : std_logic;
SIGNAL \selector|Equal1~0_combout\ : std_logic;
SIGNAL \selector|result_1[1]~9_combout\ : std_logic;
SIGNAL \selector|decen_uni_multiplicacion|Mux7~2_combout\ : std_logic;
SIGNAL \selector|result_1[1]~3_combout\ : std_logic;
SIGNAL \selector|result_1[1]~4_combout\ : std_logic;
SIGNAL \selector|result_1[1]~5_combout\ : std_logic;
SIGNAL \selector|result_1[3]~6_combout\ : std_logic;
SIGNAL \selector|result_1[3]~7_combout\ : std_logic;
SIGNAL \selector|result_1[3]~8_combout\ : std_logic;
SIGNAL \selector|result_1[1]~10_combout\ : std_logic;
SIGNAL \selector|decen_uni_multiplicacion|Mux0~0_combout\ : std_logic;
SIGNAL \selector|result_1[3]~14_combout\ : std_logic;
SIGNAL \selector|result_1[2]~11_combout\ : std_logic;
SIGNAL \selector|result_1[2]~12_combout\ : std_logic;
SIGNAL \selector|result_1[2]~13_combout\ : std_logic;
SIGNAL \number_3|Mux6~0_combout\ : std_logic;
SIGNAL \number_3|Mux5~0_combout\ : std_logic;
SIGNAL \number_3|Mux4~0_combout\ : std_logic;
SIGNAL \number_3|Mux3~0_combout\ : std_logic;
SIGNAL \number_3|Mux2~0_combout\ : std_logic;
SIGNAL \number_3|Mux1~0_combout\ : std_logic;
SIGNAL \number_3|Mux0~0_combout\ : std_logic;
SIGNAL \selector|decen_uni_multiplicacion|Mux4~2_combout\ : std_logic;
SIGNAL \selector|decen_uni_multiplicacion|Mux4~3_combout\ : std_logic;
SIGNAL \selector|decen_uni_multiplicacion|Mux4~5_combout\ : std_logic;
SIGNAL \selector|decen_uni_multiplicacion|Mux4~4_combout\ : std_logic;
SIGNAL \selector|decen_uni_multiplicacion|Mux4~6_combout\ : std_logic;
SIGNAL \selector|substraction|full2|Cout~0_combout\ : std_logic;
SIGNAL \selector|decision|Mayor~0_combout\ : std_logic;
SIGNAL \selector|substraction|full4|S~0_combout\ : std_logic;
SIGNAL \selector|result_2[3]~0_combout\ : std_logic;
SIGNAL \selector|result_2[3]~7_combout\ : std_logic;
SIGNAL \selector|substraction|full1|Cout~0_combout\ : std_logic;
SIGNAL \selector|substraction|full2|S~0_combout\ : std_logic;
SIGNAL \selector|substraction|full3|S~0_combout\ : std_logic;
SIGNAL \selector|complemento|Mux0~0_combout\ : std_logic;
SIGNAL \selector|decen_uni_suma|Mux4~0_combout\ : std_logic;
SIGNAL \selector|result_2[3]~8_combout\ : std_logic;
SIGNAL \selector|complemento|Mux1~0_combout\ : std_logic;
SIGNAL \selector|decen_uni_multiplicacion|Mux7~5_combout\ : std_logic;
SIGNAL \selector|decen_uni_multiplicacion|Mux6~4_combout\ : std_logic;
SIGNAL \selector|decen_uni_multiplicacion|Mux5~1_combout\ : std_logic;
SIGNAL \selector|decen_uni_multiplicacion|Mux5~0_combout\ : std_logic;
SIGNAL \selector|decen_uni_multiplicacion|Mux5~2_combout\ : std_logic;
SIGNAL \selector|decen_uni_multiplicacion|Mux5~3_combout\ : std_logic;
SIGNAL \selector|decen_uni_multiplicacion|Mux5~4_combout\ : std_logic;
SIGNAL \selector|result_2[2]~5_combout\ : std_logic;
SIGNAL \selector|decen_uni_suma|Mux5~0_combout\ : std_logic;
SIGNAL \selector|result_2[2]~6_combout\ : std_logic;
SIGNAL \selector|decen_uni_suma|Mux6~0_combout\ : std_logic;
SIGNAL \selector|decen_uni_multiplicacion|Mux6~3_combout\ : std_logic;
SIGNAL \selector|decen_uni_multiplicacion|Mux6~1_combout\ : std_logic;
SIGNAL \selector|decen_uni_multiplicacion|Mux6~0_combout\ : std_logic;
SIGNAL \selector|decen_uni_multiplicacion|Mux6~2_combout\ : std_logic;
SIGNAL \selector|decen_uni_multiplicacion|Mux6~5_combout\ : std_logic;
SIGNAL \selector|result_2[1]~3_combout\ : std_logic;
SIGNAL \selector|complemento|Mux2~0_combout\ : std_logic;
SIGNAL \selector|result_2[1]~4_combout\ : std_logic;
SIGNAL \selector|complemento|Mux3~0_combout\ : std_logic;
SIGNAL \selector|decen_uni_multiplicacion|Mux7~3_combout\ : std_logic;
SIGNAL \selector|decen_uni_multiplicacion|Mux7~4_combout\ : std_logic;
SIGNAL \selector|decen_uni_multiplicacion|Mux7~6_combout\ : std_logic;
SIGNAL \selector|decen_uni_suma|Mux7~0_combout\ : std_logic;
SIGNAL \selector|decen_uni_suma|Mux7~1_combout\ : std_logic;
SIGNAL \selector|result_2[0]~1_combout\ : std_logic;
SIGNAL \selector|result_2[0]~2_combout\ : std_logic;
SIGNAL \number_4|Mux6~0_combout\ : std_logic;
SIGNAL \number_4|Mux5~0_combout\ : std_logic;
SIGNAL \number_4|Mux4~0_combout\ : std_logic;
SIGNAL \number_4|Mux3~0_combout\ : std_logic;
SIGNAL \number_4|Mux2~0_combout\ : std_logic;
SIGNAL \number_4|Mux1~0_combout\ : std_logic;
SIGNAL \number_4|Mux0~0_combout\ : std_logic;
SIGNAL \selector|multiplication|e_1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \selector|multiplication|e_3\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \selector|multiplication|e_2\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \number_4|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \number_3|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \number_2|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \number_1|ALT_INV_Mux0~0_combout\ : std_logic;

BEGIN

ww_digit_1 <= digit_1;
ww_digit_2 <= digit_2;
result_1 <= ww_result_1;
result_2 <= ww_result_2;
result_3 <= ww_result_3;
result_4 <= ww_result_4;
ww_symbol <= symbol;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\number_4|ALT_INV_Mux0~0_combout\ <= NOT \number_4|Mux0~0_combout\;
\number_3|ALT_INV_Mux0~0_combout\ <= NOT \number_3|Mux0~0_combout\;
\number_2|ALT_INV_Mux0~0_combout\ <= NOT \number_2|Mux0~0_combout\;
\number_1|ALT_INV_Mux0~0_combout\ <= NOT \number_1|Mux0~0_combout\;

-- Location: IOOBUF_X32_Y29_N23
\result_1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \number_1|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \result_1[0]~output_o\);

-- Location: IOOBUF_X39_Y29_N16
\result_1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \number_1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \result_1[1]~output_o\);

-- Location: IOOBUF_X32_Y29_N9
\result_1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \number_1|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \result_1[2]~output_o\);

-- Location: IOOBUF_X32_Y29_N2
\result_1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \number_1|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \result_1[3]~output_o\);

-- Location: IOOBUF_X37_Y29_N23
\result_1[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \number_1|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \result_1[4]~output_o\);

-- Location: IOOBUF_X37_Y29_N30
\result_1[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \number_1|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \result_1[5]~output_o\);

-- Location: IOOBUF_X39_Y29_N30
\result_1[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \number_1|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \result_1[6]~output_o\);

-- Location: IOOBUF_X32_Y29_N30
\result_2[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \number_2|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \result_2[0]~output_o\);

-- Location: IOOBUF_X30_Y29_N30
\result_2[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \number_2|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \result_2[1]~output_o\);

-- Location: IOOBUF_X28_Y29_N2
\result_2[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \number_2|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \result_2[2]~output_o\);

-- Location: IOOBUF_X30_Y29_N2
\result_2[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \number_2|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \result_2[3]~output_o\);

-- Location: IOOBUF_X30_Y29_N16
\result_2[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \number_2|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \result_2[4]~output_o\);

-- Location: IOOBUF_X30_Y29_N23
\result_2[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \number_2|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \result_2[5]~output_o\);

-- Location: IOOBUF_X37_Y29_N2
\result_2[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \number_2|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \result_2[6]~output_o\);

-- Location: IOOBUF_X21_Y29_N2
\result_3[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \number_3|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \result_3[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N9
\result_3[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \number_3|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \result_3[1]~output_o\);

-- Location: IOOBUF_X23_Y29_N2
\result_3[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \number_3|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \result_3[2]~output_o\);

-- Location: IOOBUF_X23_Y29_N23
\result_3[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \number_3|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \result_3[3]~output_o\);

-- Location: IOOBUF_X23_Y29_N30
\result_3[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \number_3|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \result_3[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N16
\result_3[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \number_3|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \result_3[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N23
\result_3[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \number_3|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \result_3[6]~output_o\);

-- Location: IOOBUF_X21_Y29_N23
\result_4[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \number_4|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \result_4[0]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\result_4[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \number_4|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \result_4[1]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\result_4[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \number_4|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \result_4[2]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\result_4[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \number_4|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \result_4[3]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\result_4[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \number_4|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \result_4[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\result_4[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \number_4|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \result_4[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\result_4[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \number_4|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \result_4[6]~output_o\);

-- Location: IOIBUF_X0_Y26_N1
\digit_1[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_digit_1(2),
	o => \digit_1[2]~input_o\);

-- Location: IOIBUF_X0_Y25_N1
\digit_1[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_digit_1(3),
	o => \digit_1[3]~input_o\);

-- Location: IOIBUF_X0_Y26_N8
\digit_1[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_digit_1(1),
	o => \digit_1[1]~input_o\);

-- Location: IOIBUF_X0_Y25_N15
\digit_1[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_digit_1(0),
	o => \digit_1[0]~input_o\);

-- Location: LCCOMB_X10_Y28_N24
\number_1|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \number_1|Mux6~0_combout\ = (!\digit_1[3]~input_o\ & (!\digit_1[1]~input_o\ & (\digit_1[2]~input_o\ $ (\digit_1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit_1[2]~input_o\,
	datab => \digit_1[3]~input_o\,
	datac => \digit_1[1]~input_o\,
	datad => \digit_1[0]~input_o\,
	combout => \number_1|Mux6~0_combout\);

-- Location: LCCOMB_X10_Y28_N2
\number_1|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \number_1|Mux5~0_combout\ = (\digit_1[2]~input_o\ & ((\digit_1[3]~input_o\) # (\digit_1[1]~input_o\ $ (\digit_1[0]~input_o\)))) # (!\digit_1[2]~input_o\ & (\digit_1[3]~input_o\ & (\digit_1[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit_1[2]~input_o\,
	datab => \digit_1[3]~input_o\,
	datac => \digit_1[1]~input_o\,
	datad => \digit_1[0]~input_o\,
	combout => \number_1|Mux5~0_combout\);

-- Location: LCCOMB_X10_Y28_N12
\number_1|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \number_1|Mux4~0_combout\ = (\digit_1[2]~input_o\ & (\digit_1[3]~input_o\)) # (!\digit_1[2]~input_o\ & (\digit_1[1]~input_o\ & ((\digit_1[3]~input_o\) # (!\digit_1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit_1[2]~input_o\,
	datab => \digit_1[3]~input_o\,
	datac => \digit_1[1]~input_o\,
	datad => \digit_1[0]~input_o\,
	combout => \number_1|Mux4~0_combout\);

-- Location: LCCOMB_X10_Y28_N6
\number_1|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \number_1|Mux3~0_combout\ = (!\digit_1[3]~input_o\ & ((\digit_1[2]~input_o\ & (\digit_1[1]~input_o\ $ (!\digit_1[0]~input_o\))) # (!\digit_1[2]~input_o\ & (!\digit_1[1]~input_o\ & \digit_1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit_1[2]~input_o\,
	datab => \digit_1[3]~input_o\,
	datac => \digit_1[1]~input_o\,
	datad => \digit_1[0]~input_o\,
	combout => \number_1|Mux3~0_combout\);

-- Location: LCCOMB_X10_Y28_N16
\number_1|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \number_1|Mux2~0_combout\ = (\digit_1[1]~input_o\ & (((!\digit_1[3]~input_o\ & \digit_1[0]~input_o\)))) # (!\digit_1[1]~input_o\ & ((\digit_1[2]~input_o\ & (!\digit_1[3]~input_o\)) # (!\digit_1[2]~input_o\ & ((\digit_1[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit_1[2]~input_o\,
	datab => \digit_1[3]~input_o\,
	datac => \digit_1[1]~input_o\,
	datad => \digit_1[0]~input_o\,
	combout => \number_1|Mux2~0_combout\);

-- Location: LCCOMB_X10_Y28_N10
\number_1|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \number_1|Mux1~0_combout\ = (!\digit_1[3]~input_o\ & ((\digit_1[2]~input_o\ & (\digit_1[1]~input_o\ & \digit_1[0]~input_o\)) # (!\digit_1[2]~input_o\ & ((\digit_1[1]~input_o\) # (\digit_1[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit_1[2]~input_o\,
	datab => \digit_1[3]~input_o\,
	datac => \digit_1[1]~input_o\,
	datad => \digit_1[0]~input_o\,
	combout => \number_1|Mux1~0_combout\);

-- Location: LCCOMB_X10_Y28_N20
\number_1|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \number_1|Mux0~0_combout\ = (\digit_1[3]~input_o\) # ((\digit_1[2]~input_o\ & ((!\digit_1[0]~input_o\) # (!\digit_1[1]~input_o\))) # (!\digit_1[2]~input_o\ & (\digit_1[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit_1[2]~input_o\,
	datab => \digit_1[3]~input_o\,
	datac => \digit_1[1]~input_o\,
	datad => \digit_1[0]~input_o\,
	combout => \number_1|Mux0~0_combout\);

-- Location: IOIBUF_X0_Y25_N22
\digit_2[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_digit_2(0),
	o => \digit_2[0]~input_o\);

-- Location: IOIBUF_X0_Y23_N8
\digit_2[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_digit_2(1),
	o => \digit_2[1]~input_o\);

-- Location: IOIBUF_X0_Y27_N22
\digit_2[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_digit_2(2),
	o => \digit_2[2]~input_o\);

-- Location: IOIBUF_X0_Y22_N15
\digit_2[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_digit_2(3),
	o => \digit_2[3]~input_o\);

-- Location: LCCOMB_X21_Y28_N8
\number_2|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \number_2|Mux6~0_combout\ = (!\digit_2[1]~input_o\ & (!\digit_2[3]~input_o\ & (\digit_2[0]~input_o\ $ (\digit_2[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit_2[0]~input_o\,
	datab => \digit_2[1]~input_o\,
	datac => \digit_2[2]~input_o\,
	datad => \digit_2[3]~input_o\,
	combout => \number_2|Mux6~0_combout\);

-- Location: LCCOMB_X21_Y28_N26
\number_2|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \number_2|Mux5~0_combout\ = (\digit_2[2]~input_o\ & ((\digit_2[3]~input_o\) # (\digit_2[0]~input_o\ $ (\digit_2[1]~input_o\)))) # (!\digit_2[2]~input_o\ & (((\digit_2[1]~input_o\ & \digit_2[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit_2[0]~input_o\,
	datab => \digit_2[1]~input_o\,
	datac => \digit_2[2]~input_o\,
	datad => \digit_2[3]~input_o\,
	combout => \number_2|Mux5~0_combout\);

-- Location: LCCOMB_X21_Y28_N28
\number_2|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \number_2|Mux4~0_combout\ = (\digit_2[2]~input_o\ & (((\digit_2[3]~input_o\)))) # (!\digit_2[2]~input_o\ & (\digit_2[1]~input_o\ & ((\digit_2[3]~input_o\) # (!\digit_2[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit_2[0]~input_o\,
	datab => \digit_2[1]~input_o\,
	datac => \digit_2[2]~input_o\,
	datad => \digit_2[3]~input_o\,
	combout => \number_2|Mux4~0_combout\);

-- Location: LCCOMB_X21_Y28_N14
\number_2|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \number_2|Mux3~0_combout\ = (!\digit_2[3]~input_o\ & ((\digit_2[0]~input_o\ & (\digit_2[1]~input_o\ $ (!\digit_2[2]~input_o\))) # (!\digit_2[0]~input_o\ & (!\digit_2[1]~input_o\ & \digit_2[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit_2[0]~input_o\,
	datab => \digit_2[1]~input_o\,
	datac => \digit_2[2]~input_o\,
	datad => \digit_2[3]~input_o\,
	combout => \number_2|Mux3~0_combout\);

-- Location: LCCOMB_X21_Y28_N24
\number_2|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \number_2|Mux2~0_combout\ = (\digit_2[1]~input_o\ & (\digit_2[0]~input_o\ & ((!\digit_2[3]~input_o\)))) # (!\digit_2[1]~input_o\ & ((\digit_2[2]~input_o\ & ((!\digit_2[3]~input_o\))) # (!\digit_2[2]~input_o\ & (\digit_2[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit_2[0]~input_o\,
	datab => \digit_2[1]~input_o\,
	datac => \digit_2[2]~input_o\,
	datad => \digit_2[3]~input_o\,
	combout => \number_2|Mux2~0_combout\);

-- Location: LCCOMB_X21_Y28_N18
\number_2|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \number_2|Mux1~0_combout\ = (!\digit_2[3]~input_o\ & ((\digit_2[0]~input_o\ & ((\digit_2[1]~input_o\) # (!\digit_2[2]~input_o\))) # (!\digit_2[0]~input_o\ & (\digit_2[1]~input_o\ & !\digit_2[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit_2[0]~input_o\,
	datab => \digit_2[1]~input_o\,
	datac => \digit_2[2]~input_o\,
	datad => \digit_2[3]~input_o\,
	combout => \number_2|Mux1~0_combout\);

-- Location: LCCOMB_X21_Y28_N12
\number_2|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \number_2|Mux0~0_combout\ = (\digit_2[3]~input_o\) # ((\digit_2[1]~input_o\ & ((!\digit_2[2]~input_o\) # (!\digit_2[0]~input_o\))) # (!\digit_2[1]~input_o\ & ((\digit_2[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit_2[0]~input_o\,
	datab => \digit_2[1]~input_o\,
	datac => \digit_2[2]~input_o\,
	datad => \digit_2[3]~input_o\,
	combout => \number_2|Mux0~0_combout\);

-- Location: IOIBUF_X0_Y27_N1
\symbol[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_symbol(1),
	o => \symbol[1]~input_o\);

-- Location: IOIBUF_X0_Y24_N1
\symbol[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_symbol(0),
	o => \symbol[0]~input_o\);

-- Location: LCCOMB_X21_Y28_N16
\selector|multiplication|e_3[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selector|multiplication|e_3\(3) = (\digit_1[3]~input_o\ & \digit_2[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \digit_1[3]~input_o\,
	datad => \digit_2[3]~input_o\,
	combout => \selector|multiplication|e_3\(3));

-- Location: LCCOMB_X12_Y19_N30
\selector|multiplication|e_1[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selector|multiplication|e_1\(2) = (\digit_2[2]~input_o\ & \digit_1[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit_2[2]~input_o\,
	datac => \digit_1[1]~input_o\,
	combout => \selector|multiplication|e_1\(2));

-- Location: LCCOMB_X10_Y28_N30
\selector|multiplication|e_1[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selector|multiplication|e_1\(1) = (\digit_2[1]~input_o\ & \digit_1[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \digit_2[1]~input_o\,
	datac => \digit_1[1]~input_o\,
	combout => \selector|multiplication|e_1\(1));

-- Location: LCCOMB_X10_Y28_N8
\selector|multiplication|adittion_1|full1|S~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selector|multiplication|adittion_1|full1|S~0_combout\ = (\digit_2[0]~input_o\ & (\digit_2[1]~input_o\ & (\digit_1[1]~input_o\ & \digit_1[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit_2[0]~input_o\,
	datab => \digit_2[1]~input_o\,
	datac => \digit_1[1]~input_o\,
	datad => \digit_1[0]~input_o\,
	combout => \selector|multiplication|adittion_1|full1|S~0_combout\);

-- Location: LCCOMB_X12_Y19_N20
\selector|multiplication|adittion_1|full2|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selector|multiplication|adittion_1|full2|Cout~0_combout\ = (\selector|multiplication|e_1\(1) & ((\selector|multiplication|adittion_1|full1|S~0_combout\) # ((\digit_1[0]~input_o\ & \digit_2[2]~input_o\)))) # (!\selector|multiplication|e_1\(1) & 
-- (\digit_1[0]~input_o\ & (\digit_2[2]~input_o\ & \selector|multiplication|adittion_1|full1|S~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit_1[0]~input_o\,
	datab => \selector|multiplication|e_1\(1),
	datac => \digit_2[2]~input_o\,
	datad => \selector|multiplication|adittion_1|full1|S~0_combout\,
	combout => \selector|multiplication|adittion_1|full2|Cout~0_combout\);

-- Location: LCCOMB_X12_Y19_N6
\selector|multiplication|adittion_1|full3|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selector|multiplication|adittion_1|full3|Cout~0_combout\ = (\selector|multiplication|e_1\(2) & ((\selector|multiplication|adittion_1|full2|Cout~0_combout\) # ((\digit_1[0]~input_o\ & \digit_2[3]~input_o\)))) # (!\selector|multiplication|e_1\(2) & 
-- (\digit_1[0]~input_o\ & (\digit_2[3]~input_o\ & \selector|multiplication|adittion_1|full2|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit_1[0]~input_o\,
	datab => \selector|multiplication|e_1\(2),
	datac => \digit_2[3]~input_o\,
	datad => \selector|multiplication|adittion_1|full2|Cout~0_combout\,
	combout => \selector|multiplication|adittion_1|full3|Cout~0_combout\);

-- Location: LCCOMB_X12_Y19_N26
\selector|multiplication|adittion_2|full4|Cout~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selector|multiplication|adittion_2|full4|Cout~2_combout\ = (\digit_1[1]~input_o\ & \selector|multiplication|adittion_1|full3|Cout~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \digit_1[1]~input_o\,
	datad => \selector|multiplication|adittion_1|full3|Cout~0_combout\,
	combout => \selector|multiplication|adittion_2|full4|Cout~2_combout\);

-- Location: LCCOMB_X12_Y19_N24
\selector|multiplication|adittion_2|full3|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selector|multiplication|adittion_2|full3|Cout~0_combout\ = \selector|multiplication|adittion_1|full3|Cout~0_combout\ $ (((\digit_2[3]~input_o\ & \digit_1[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit_2[3]~input_o\,
	datac => \digit_1[1]~input_o\,
	datad => \selector|multiplication|adittion_1|full3|Cout~0_combout\,
	combout => \selector|multiplication|adittion_2|full3|Cout~0_combout\);

-- Location: LCCOMB_X12_Y19_N16
\selector|multiplication|adittion_1|full3|S~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selector|multiplication|adittion_1|full3|S~0_combout\ = \selector|multiplication|e_1\(2) $ (\selector|multiplication|adittion_1|full2|Cout~0_combout\ $ (((\digit_1[0]~input_o\ & \digit_2[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit_1[0]~input_o\,
	datab => \selector|multiplication|e_1\(2),
	datac => \digit_2[3]~input_o\,
	datad => \selector|multiplication|adittion_1|full2|Cout~0_combout\,
	combout => \selector|multiplication|adittion_1|full3|S~0_combout\);

-- Location: LCCOMB_X12_Y19_N0
\selector|multiplication|adittion_1|full2|S~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selector|multiplication|adittion_1|full2|S~0_combout\ = \selector|multiplication|e_1\(1) $ (\selector|multiplication|adittion_1|full1|S~0_combout\ $ (((\digit_1[0]~input_o\ & \digit_2[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit_1[0]~input_o\,
	datab => \selector|multiplication|e_1\(1),
	datac => \digit_2[2]~input_o\,
	datad => \selector|multiplication|adittion_1|full1|S~0_combout\,
	combout => \selector|multiplication|adittion_1|full2|S~0_combout\);

-- Location: LCCOMB_X12_Y19_N18
\selector|multiplication|adittion_2|full1|S~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selector|multiplication|adittion_2|full1|S~0_combout\ = (\digit_1[2]~input_o\ & (\digit_2[0]~input_o\ & \selector|multiplication|adittion_1|full2|S~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \digit_1[2]~input_o\,
	datac => \digit_2[0]~input_o\,
	datad => \selector|multiplication|adittion_1|full2|S~0_combout\,
	combout => \selector|multiplication|adittion_2|full1|S~0_combout\);

-- Location: LCCOMB_X12_Y19_N2
\selector|multiplication|adittion_2|full2|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selector|multiplication|adittion_2|full2|Cout~0_combout\ = (\selector|multiplication|adittion_1|full3|S~0_combout\ & ((\selector|multiplication|adittion_2|full1|S~0_combout\) # ((\digit_2[1]~input_o\ & \digit_1[2]~input_o\)))) # 
-- (!\selector|multiplication|adittion_1|full3|S~0_combout\ & (\digit_2[1]~input_o\ & (\digit_1[2]~input_o\ & \selector|multiplication|adittion_2|full1|S~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit_2[1]~input_o\,
	datab => \digit_1[2]~input_o\,
	datac => \selector|multiplication|adittion_1|full3|S~0_combout\,
	datad => \selector|multiplication|adittion_2|full1|S~0_combout\,
	combout => \selector|multiplication|adittion_2|full2|Cout~0_combout\);

-- Location: LCCOMB_X12_Y19_N14
\selector|multiplication|adittion_2|full4|Cout~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selector|multiplication|adittion_2|full4|Cout~4_combout\ = (\selector|multiplication|adittion_2|full3|Cout~0_combout\ & ((\selector|multiplication|adittion_2|full2|Cout~0_combout\) # ((\digit_1[2]~input_o\ & \digit_2[2]~input_o\)))) # 
-- (!\selector|multiplication|adittion_2|full3|Cout~0_combout\ & (\digit_1[2]~input_o\ & (\digit_2[2]~input_o\ & \selector|multiplication|adittion_2|full2|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit_1[2]~input_o\,
	datab => \selector|multiplication|adittion_2|full3|Cout~0_combout\,
	datac => \digit_2[2]~input_o\,
	datad => \selector|multiplication|adittion_2|full2|Cout~0_combout\,
	combout => \selector|multiplication|adittion_2|full4|Cout~4_combout\);

-- Location: LCCOMB_X12_Y19_N12
\selector|multiplication|adittion_2|full4|Cout~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selector|multiplication|adittion_2|full4|Cout~3_combout\ = (\digit_2[3]~input_o\ & ((\selector|multiplication|adittion_2|full4|Cout~2_combout\ & ((\selector|multiplication|adittion_2|full4|Cout~4_combout\) # (\digit_1[2]~input_o\))) # 
-- (!\selector|multiplication|adittion_2|full4|Cout~2_combout\ & (\selector|multiplication|adittion_2|full4|Cout~4_combout\ & \digit_1[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector|multiplication|adittion_2|full4|Cout~2_combout\,
	datab => \selector|multiplication|adittion_2|full4|Cout~4_combout\,
	datac => \digit_2[3]~input_o\,
	datad => \digit_1[2]~input_o\,
	combout => \selector|multiplication|adittion_2|full4|Cout~3_combout\);

-- Location: LCCOMB_X12_Y19_N10
\selector|multiplication|adittion_2|full4|S~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selector|multiplication|adittion_2|full4|S~0_combout\ = (\digit_2[3]~input_o\ & (\digit_1[2]~input_o\ $ (((\digit_1[1]~input_o\ & \selector|multiplication|adittion_1|full3|Cout~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit_2[3]~input_o\,
	datab => \digit_1[2]~input_o\,
	datac => \digit_1[1]~input_o\,
	datad => \selector|multiplication|adittion_1|full3|Cout~0_combout\,
	combout => \selector|multiplication|adittion_2|full4|S~0_combout\);

-- Location: LCCOMB_X12_Y19_N28
\selector|multiplication|e_2[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selector|multiplication|e_2\(2) = (\digit_1[2]~input_o\ & \digit_2[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \digit_1[2]~input_o\,
	datac => \digit_2[2]~input_o\,
	combout => \selector|multiplication|e_2\(2));

-- Location: LCCOMB_X12_Y19_N4
\selector|multiplication|adittion_2|full4|S~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selector|multiplication|adittion_2|full4|S~1_combout\ = \selector|multiplication|adittion_2|full4|S~0_combout\ $ (((\selector|multiplication|e_2\(2) & ((\selector|multiplication|adittion_2|full2|Cout~0_combout\) # 
-- (\selector|multiplication|adittion_2|full3|Cout~0_combout\))) # (!\selector|multiplication|e_2\(2) & (\selector|multiplication|adittion_2|full2|Cout~0_combout\ & \selector|multiplication|adittion_2|full3|Cout~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector|multiplication|adittion_2|full4|S~0_combout\,
	datab => \selector|multiplication|e_2\(2),
	datac => \selector|multiplication|adittion_2|full2|Cout~0_combout\,
	datad => \selector|multiplication|adittion_2|full3|Cout~0_combout\,
	combout => \selector|multiplication|adittion_2|full4|S~1_combout\);

-- Location: LCCOMB_X21_Y28_N30
\selector|multiplication|e_3[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selector|multiplication|e_3\(2) = (\digit_1[3]~input_o\ & \digit_2[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \digit_1[3]~input_o\,
	datac => \digit_2[2]~input_o\,
	combout => \selector|multiplication|e_3\(2));

-- Location: LCCOMB_X12_Y19_N22
\selector|multiplication|adittion_2|full2|S~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selector|multiplication|adittion_2|full2|S~0_combout\ = \selector|multiplication|adittion_1|full3|S~0_combout\ $ (\selector|multiplication|adittion_2|full1|S~0_combout\ $ (((\digit_2[1]~input_o\ & \digit_1[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit_2[1]~input_o\,
	datab => \digit_1[2]~input_o\,
	datac => \selector|multiplication|adittion_1|full3|S~0_combout\,
	datad => \selector|multiplication|adittion_2|full1|S~0_combout\,
	combout => \selector|multiplication|adittion_2|full2|S~0_combout\);

-- Location: LCCOMB_X10_Y28_N26
\selector|multiplication|adittion_3|full1|S~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selector|multiplication|adittion_3|full1|S~0_combout\ = (\digit_2[0]~input_o\ & (\digit_1[3]~input_o\ & \selector|multiplication|adittion_2|full2|S~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit_2[0]~input_o\,
	datab => \digit_1[3]~input_o\,
	datad => \selector|multiplication|adittion_2|full2|S~0_combout\,
	combout => \selector|multiplication|adittion_3|full1|S~0_combout\);

-- Location: LCCOMB_X10_Y28_N28
\selector|multiplication|e_3[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selector|multiplication|e_3\(1) = (\digit_2[1]~input_o\ & \digit_1[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \digit_2[1]~input_o\,
	datac => \digit_1[3]~input_o\,
	combout => \selector|multiplication|e_3\(1));

-- Location: LCCOMB_X12_Y19_N8
\selector|multiplication|adittion_2|full3|S~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selector|multiplication|adittion_2|full3|S~0_combout\ = \selector|multiplication|adittion_2|full3|Cout~0_combout\ $ (\selector|multiplication|adittion_2|full2|Cout~0_combout\ $ (((\digit_1[2]~input_o\ & \digit_2[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit_1[2]~input_o\,
	datab => \selector|multiplication|adittion_2|full3|Cout~0_combout\,
	datac => \digit_2[2]~input_o\,
	datad => \selector|multiplication|adittion_2|full2|Cout~0_combout\,
	combout => \selector|multiplication|adittion_2|full3|S~0_combout\);

-- Location: LCCOMB_X11_Y19_N6
\selector|multiplication|adittion_3|full2|S~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selector|multiplication|adittion_3|full2|S~1_cout\ = CARRY(\selector|multiplication|adittion_2|full3|S~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \selector|multiplication|adittion_2|full3|S~0_combout\,
	datad => VCC,
	cout => \selector|multiplication|adittion_3|full2|S~1_cout\);

-- Location: LCCOMB_X11_Y19_N8
\selector|multiplication|adittion_3|full2|S~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selector|multiplication|adittion_3|full2|S~2_combout\ = (\selector|multiplication|adittion_3|full1|S~0_combout\ & ((\selector|multiplication|e_3\(1) & (\selector|multiplication|adittion_3|full2|S~1_cout\ & VCC)) # (!\selector|multiplication|e_3\(1) & 
-- (!\selector|multiplication|adittion_3|full2|S~1_cout\)))) # (!\selector|multiplication|adittion_3|full1|S~0_combout\ & ((\selector|multiplication|e_3\(1) & (!\selector|multiplication|adittion_3|full2|S~1_cout\)) # (!\selector|multiplication|e_3\(1) & 
-- ((\selector|multiplication|adittion_3|full2|S~1_cout\) # (GND)))))
-- \selector|multiplication|adittion_3|full2|S~3\ = CARRY((\selector|multiplication|adittion_3|full1|S~0_combout\ & (!\selector|multiplication|e_3\(1) & !\selector|multiplication|adittion_3|full2|S~1_cout\)) # 
-- (!\selector|multiplication|adittion_3|full1|S~0_combout\ & ((!\selector|multiplication|adittion_3|full2|S~1_cout\) # (!\selector|multiplication|e_3\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \selector|multiplication|adittion_3|full1|S~0_combout\,
	datab => \selector|multiplication|e_3\(1),
	datad => VCC,
	cin => \selector|multiplication|adittion_3|full2|S~1_cout\,
	combout => \selector|multiplication|adittion_3|full2|S~2_combout\,
	cout => \selector|multiplication|adittion_3|full2|S~3\);

-- Location: LCCOMB_X11_Y19_N10
\selector|multiplication|adittion_3|full2|S~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selector|multiplication|adittion_3|full2|S~4_combout\ = ((\selector|multiplication|adittion_2|full4|S~1_combout\ $ (\selector|multiplication|e_3\(2) $ (!\selector|multiplication|adittion_3|full2|S~3\)))) # (GND)
-- \selector|multiplication|adittion_3|full2|S~5\ = CARRY((\selector|multiplication|adittion_2|full4|S~1_combout\ & ((\selector|multiplication|e_3\(2)) # (!\selector|multiplication|adittion_3|full2|S~3\))) # 
-- (!\selector|multiplication|adittion_2|full4|S~1_combout\ & (\selector|multiplication|e_3\(2) & !\selector|multiplication|adittion_3|full2|S~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \selector|multiplication|adittion_2|full4|S~1_combout\,
	datab => \selector|multiplication|e_3\(2),
	datad => VCC,
	cin => \selector|multiplication|adittion_3|full2|S~3\,
	combout => \selector|multiplication|adittion_3|full2|S~4_combout\,
	cout => \selector|multiplication|adittion_3|full2|S~5\);

-- Location: LCCOMB_X11_Y19_N12
\selector|multiplication|adittion_3|full2|S~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selector|multiplication|adittion_3|full2|S~6_combout\ = (\selector|multiplication|e_3\(3) & ((\selector|multiplication|adittion_2|full4|Cout~3_combout\ & (\selector|multiplication|adittion_3|full2|S~5\ & VCC)) # 
-- (!\selector|multiplication|adittion_2|full4|Cout~3_combout\ & (!\selector|multiplication|adittion_3|full2|S~5\)))) # (!\selector|multiplication|e_3\(3) & ((\selector|multiplication|adittion_2|full4|Cout~3_combout\ & 
-- (!\selector|multiplication|adittion_3|full2|S~5\)) # (!\selector|multiplication|adittion_2|full4|Cout~3_combout\ & ((\selector|multiplication|adittion_3|full2|S~5\) # (GND)))))
-- \selector|multiplication|adittion_3|full2|S~7\ = CARRY((\selector|multiplication|e_3\(3) & (!\selector|multiplication|adittion_2|full4|Cout~3_combout\ & !\selector|multiplication|adittion_3|full2|S~5\)) # (!\selector|multiplication|e_3\(3) & 
-- ((!\selector|multiplication|adittion_3|full2|S~5\) # (!\selector|multiplication|adittion_2|full4|Cout~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \selector|multiplication|e_3\(3),
	datab => \selector|multiplication|adittion_2|full4|Cout~3_combout\,
	datad => VCC,
	cin => \selector|multiplication|adittion_3|full2|S~5\,
	combout => \selector|multiplication|adittion_3|full2|S~6_combout\,
	cout => \selector|multiplication|adittion_3|full2|S~7\);

-- Location: LCCOMB_X10_Y28_N0
\selector|multiplication|adittion_2|full1|S~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selector|multiplication|adittion_2|full1|S~1_combout\ = \selector|multiplication|adittion_1|full2|S~0_combout\ $ (((\digit_2[0]~input_o\ & \digit_1[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit_2[0]~input_o\,
	datab => \selector|multiplication|adittion_1|full2|S~0_combout\,
	datad => \digit_1[2]~input_o\,
	combout => \selector|multiplication|adittion_2|full1|S~1_combout\);

-- Location: LCCOMB_X10_Y28_N18
\selector|multiplication|adittion_3|full1|S~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selector|multiplication|adittion_3|full1|S~1_combout\ = \selector|multiplication|adittion_2|full2|S~0_combout\ $ (((\digit_2[0]~input_o\ & \digit_1[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit_2[0]~input_o\,
	datab => \digit_1[3]~input_o\,
	datad => \selector|multiplication|adittion_2|full2|S~0_combout\,
	combout => \selector|multiplication|adittion_3|full1|S~1_combout\);

-- Location: LCCOMB_X10_Y28_N22
\selector|multiplication|adittion_1|full1|S~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selector|multiplication|adittion_1|full1|S~1_combout\ = (\digit_2[0]~input_o\ & (\digit_1[1]~input_o\ $ (((\digit_2[1]~input_o\ & \digit_1[0]~input_o\))))) # (!\digit_2[0]~input_o\ & (\digit_2[1]~input_o\ & ((\digit_1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit_2[0]~input_o\,
	datab => \digit_2[1]~input_o\,
	datac => \digit_1[1]~input_o\,
	datad => \digit_1[0]~input_o\,
	combout => \selector|multiplication|adittion_1|full1|S~1_combout\);

-- Location: LCCOMB_X11_Y20_N2
\selector|decen_uni_multiplicacion|Mux3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selector|decen_uni_multiplicacion|Mux3~1_combout\ = (\selector|multiplication|adittion_3|full2|S~2_combout\ & ((\selector|multiplication|adittion_2|full1|S~1_combout\ & (\selector|multiplication|adittion_3|full1|S~1_combout\)) # 
-- (!\selector|multiplication|adittion_2|full1|S~1_combout\ & (!\selector|multiplication|adittion_3|full1|S~1_combout\ & !\selector|multiplication|adittion_1|full1|S~1_combout\)))) # (!\selector|multiplication|adittion_3|full2|S~2_combout\ & 
-- (((\selector|multiplication|adittion_3|full1|S~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector|multiplication|adittion_3|full2|S~2_combout\,
	datab => \selector|multiplication|adittion_2|full1|S~1_combout\,
	datac => \selector|multiplication|adittion_3|full1|S~1_combout\,
	datad => \selector|multiplication|adittion_1|full1|S~1_combout\,
	combout => \selector|decen_uni_multiplicacion|Mux3~1_combout\);

-- Location: LCCOMB_X11_Y20_N24
\selector|decen_uni_multiplicacion|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selector|decen_uni_multiplicacion|Mux3~0_combout\ = (\selector|multiplication|adittion_3|full2|S~2_combout\ & ((\selector|multiplication|adittion_2|full1|S~1_combout\ & (\selector|multiplication|adittion_3|full1|S~1_combout\ & 
-- \selector|multiplication|adittion_1|full1|S~1_combout\)) # (!\selector|multiplication|adittion_2|full1|S~1_combout\ & (!\selector|multiplication|adittion_3|full1|S~1_combout\)))) # (!\selector|multiplication|adittion_3|full2|S~2_combout\ & 
-- (\selector|multiplication|adittion_3|full1|S~1_combout\ & ((\selector|multiplication|adittion_2|full1|S~1_combout\) # (\selector|multiplication|adittion_1|full1|S~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector|multiplication|adittion_3|full2|S~2_combout\,
	datab => \selector|multiplication|adittion_2|full1|S~1_combout\,
	datac => \selector|multiplication|adittion_3|full1|S~1_combout\,
	datad => \selector|multiplication|adittion_1|full1|S~1_combout\,
	combout => \selector|decen_uni_multiplicacion|Mux3~0_combout\);

-- Location: LCCOMB_X11_Y19_N24
\selector|result_1[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selector|result_1[0]~0_combout\ = (\selector|multiplication|adittion_3|full2|S~4_combout\ & ((\selector|multiplication|adittion_3|full2|S~6_combout\) # ((!\selector|decen_uni_multiplicacion|Mux3~1_combout\)))) # 
-- (!\selector|multiplication|adittion_3|full2|S~4_combout\ & (!\selector|multiplication|adittion_3|full2|S~6_combout\ & ((\selector|decen_uni_multiplicacion|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector|multiplication|adittion_3|full2|S~4_combout\,
	datab => \selector|multiplication|adittion_3|full2|S~6_combout\,
	datac => \selector|decen_uni_multiplicacion|Mux3~1_combout\,
	datad => \selector|decen_uni_multiplicacion|Mux3~0_combout\,
	combout => \selector|result_1[0]~0_combout\);

-- Location: LCCOMB_X11_Y19_N14
\selector|multiplication|adittion_3|full2|S~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selector|multiplication|adittion_3|full2|S~8_combout\ = !\selector|multiplication|adittion_3|full2|S~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \selector|multiplication|adittion_3|full2|S~7\,
	combout => \selector|multiplication|adittion_3|full2|S~8_combout\);

-- Location: LCCOMB_X11_Y20_N4
\selector|decen_uni_multiplicacion|Mux3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selector|decen_uni_multiplicacion|Mux3~2_combout\ = (\selector|multiplication|adittion_3|full1|S~1_combout\) # ((\selector|multiplication|adittion_3|full2|S~2_combout\ & ((\selector|multiplication|adittion_2|full1|S~1_combout\) # 
-- (\selector|multiplication|adittion_1|full1|S~1_combout\))) # (!\selector|multiplication|adittion_3|full2|S~2_combout\ & (\selector|multiplication|adittion_2|full1|S~1_combout\ & \selector|multiplication|adittion_1|full1|S~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector|multiplication|adittion_3|full2|S~2_combout\,
	datab => \selector|multiplication|adittion_2|full1|S~1_combout\,
	datac => \selector|multiplication|adittion_3|full1|S~1_combout\,
	datad => \selector|multiplication|adittion_1|full1|S~1_combout\,
	combout => \selector|decen_uni_multiplicacion|Mux3~2_combout\);

-- Location: LCCOMB_X11_Y19_N2
\selector|result_1[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selector|result_1[0]~1_combout\ = (\selector|result_1[0]~0_combout\) # ((\selector|multiplication|adittion_3|full2|S~8_combout\) # ((\selector|multiplication|adittion_3|full2|S~6_combout\ & \selector|decen_uni_multiplicacion|Mux3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector|multiplication|adittion_3|full2|S~6_combout\,
	datab => \selector|result_1[0]~0_combout\,
	datac => \selector|multiplication|adittion_3|full2|S~8_combout\,
	datad => \selector|decen_uni_multiplicacion|Mux3~2_combout\,
	combout => \selector|result_1[0]~1_combout\);

-- Location: LCCOMB_X15_Y20_N10
\selector|adittion|full1|S~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selector|adittion|full1|S~0_combout\ = (\digit_2[0]~input_o\ & \digit_1[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \digit_2[0]~input_o\,
	datad => \digit_1[0]~input_o\,
	combout => \selector|adittion|full1|S~0_combout\);

-- Location: LCCOMB_X15_Y20_N0
\selector|adittion|full2|S~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selector|adittion|full2|S~1_cout\ = CARRY(\digit_2[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \digit_2[1]~input_o\,
	datad => VCC,
	cout => \selector|adittion|full2|S~1_cout\);

-- Location: LCCOMB_X15_Y20_N2
\selector|adittion|full2|S~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selector|adittion|full2|S~2_combout\ = (\selector|adittion|full1|S~0_combout\ & ((\digit_1[1]~input_o\ & (\selector|adittion|full2|S~1_cout\ & VCC)) # (!\digit_1[1]~input_o\ & (!\selector|adittion|full2|S~1_cout\)))) # 
-- (!\selector|adittion|full1|S~0_combout\ & ((\digit_1[1]~input_o\ & (!\selector|adittion|full2|S~1_cout\)) # (!\digit_1[1]~input_o\ & ((\selector|adittion|full2|S~1_cout\) # (GND)))))
-- \selector|adittion|full2|S~3\ = CARRY((\selector|adittion|full1|S~0_combout\ & (!\digit_1[1]~input_o\ & !\selector|adittion|full2|S~1_cout\)) # (!\selector|adittion|full1|S~0_combout\ & ((!\selector|adittion|full2|S~1_cout\) # (!\digit_1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \selector|adittion|full1|S~0_combout\,
	datab => \digit_1[1]~input_o\,
	datad => VCC,
	cin => \selector|adittion|full2|S~1_cout\,
	combout => \selector|adittion|full2|S~2_combout\,
	cout => \selector|adittion|full2|S~3\);

-- Location: LCCOMB_X15_Y20_N4
\selector|adittion|full2|S~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selector|adittion|full2|S~4_combout\ = ((\digit_2[2]~input_o\ $ (\digit_1[2]~input_o\ $ (!\selector|adittion|full2|S~3\)))) # (GND)
-- \selector|adittion|full2|S~5\ = CARRY((\digit_2[2]~input_o\ & ((\digit_1[2]~input_o\) # (!\selector|adittion|full2|S~3\))) # (!\digit_2[2]~input_o\ & (\digit_1[2]~input_o\ & !\selector|adittion|full2|S~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \digit_2[2]~input_o\,
	datab => \digit_1[2]~input_o\,
	datad => VCC,
	cin => \selector|adittion|full2|S~3\,
	combout => \selector|adittion|full2|S~4_combout\,
	cout => \selector|adittion|full2|S~5\);

-- Location: LCCOMB_X15_Y20_N6
\selector|adittion|full2|S~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selector|adittion|full2|S~6_combout\ = (\digit_2[3]~input_o\ & ((\digit_1[3]~input_o\ & (\selector|adittion|full2|S~5\ & VCC)) # (!\digit_1[3]~input_o\ & (!\selector|adittion|full2|S~5\)))) # (!\digit_2[3]~input_o\ & ((\digit_1[3]~input_o\ & 
-- (!\selector|adittion|full2|S~5\)) # (!\digit_1[3]~input_o\ & ((\selector|adittion|full2|S~5\) # (GND)))))
-- \selector|adittion|full2|S~7\ = CARRY((\digit_2[3]~input_o\ & (!\digit_1[3]~input_o\ & !\selector|adittion|full2|S~5\)) # (!\digit_2[3]~input_o\ & ((!\selector|adittion|full2|S~5\) # (!\digit_1[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \digit_2[3]~input_o\,
	datab => \digit_1[3]~input_o\,
	datad => VCC,
	cin => \selector|adittion|full2|S~5\,
	combout => \selector|adittion|full2|S~6_combout\,
	cout => \selector|adittion|full2|S~7\);

-- Location: LCCOMB_X15_Y20_N8
\selector|adittion|full2|S~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selector|adittion|full2|S~8_combout\ = !\selector|adittion|full2|S~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \selector|adittion|full2|S~7\,
	combout => \selector|adittion|full2|S~8_combout\);

-- Location: LCCOMB_X15_Y20_N28
\selector|decen_uni_suma|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selector|decen_uni_suma|Mux3~0_combout\ = (\selector|adittion|full2|S~6_combout\ & ((\selector|adittion|full2|S~4_combout\ & ((\selector|adittion|full2|S~2_combout\) # (!\selector|adittion|full2|S~8_combout\))) # (!\selector|adittion|full2|S~4_combout\ & 
-- (!\selector|adittion|full2|S~8_combout\ & \selector|adittion|full2|S~2_combout\)))) # (!\selector|adittion|full2|S~6_combout\ & (!\selector|adittion|full2|S~4_combout\ & (\selector|adittion|full2|S~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector|adittion|full2|S~6_combout\,
	datab => \selector|adittion|full2|S~4_combout\,
	datac => \selector|adittion|full2|S~8_combout\,
	datad => \selector|adittion|full2|S~2_combout\,
	combout => \selector|decen_uni_suma|Mux3~0_combout\);

-- Location: LCCOMB_X14_Y19_N24
\selector|result_1[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selector|result_1[0]~2_combout\ = (\symbol[0]~input_o\ & (\symbol[1]~input_o\ & ((\selector|decen_uni_suma|Mux3~0_combout\)))) # (!\symbol[0]~input_o\ & (((\selector|result_1[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \symbol[1]~input_o\,
	datab => \symbol[0]~input_o\,
	datac => \selector|result_1[0]~1_combout\,
	datad => \selector|decen_uni_suma|Mux3~0_combout\,
	combout => \selector|result_1[0]~2_combout\);

-- Location: LCCOMB_X14_Y19_N20
\selector|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selector|Equal1~0_combout\ = (\symbol[0]~input_o\ & !\symbol[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \symbol[0]~input_o\,
	datad => \symbol[1]~input_o\,
	combout => \selector|Equal1~0_combout\);

-- Location: LCCOMB_X15_Y20_N12
\selector|result_1[1]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selector|result_1[1]~9_combout\ = (!\selector|Equal1~0_combout\ & (\selector|adittion|full2|S~8_combout\ & ((\selector|adittion|full2|S~4_combout\) # (\selector|adittion|full2|S~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector|Equal1~0_combout\,
	datab => \selector|adittion|full2|S~4_combout\,
	datac => \selector|adittion|full2|S~8_combout\,
	datad => \selector|adittion|full2|S~6_combout\,
	combout => \selector|result_1[1]~9_combout\);

-- Location: LCCOMB_X11_Y19_N20
\selector|decen_uni_multiplicacion|Mux7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selector|decen_uni_multiplicacion|Mux7~2_combout\ = (!\selector|multiplication|adittion_3|full2|S~8_combout\ & ((\selector|multiplication|adittion_3|full2|S~2_combout\) # ((\selector|multiplication|adittion_3|full1|S~1_combout\) # 
-- (!\selector|multiplication|adittion_3|full2|S~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector|multiplication|adittion_3|full2|S~2_combout\,
	datab => \selector|multiplication|adittion_3|full1|S~1_combout\,
	datac => \selector|multiplication|adittion_3|full2|S~8_combout\,
	datad => \selector|multiplication|adittion_3|full2|S~4_combout\,
	combout => \selector|decen_uni_multiplicacion|Mux7~2_combout\);

-- Location: LCCOMB_X11_Y20_N30
\selector|result_1[1]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selector|result_1[1]~3_combout\ = (\selector|multiplication|adittion_3|full2|S~6_combout\ & (((\selector|multiplication|adittion_1|full1|S~1_combout\) # (\selector|multiplication|adittion_3|full2|S~4_combout\)) # 
-- (!\selector|multiplication|adittion_3|full2|S~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector|multiplication|adittion_3|full2|S~2_combout\,
	datab => \selector|multiplication|adittion_1|full1|S~1_combout\,
	datac => \selector|multiplication|adittion_3|full2|S~6_combout\,
	datad => \selector|multiplication|adittion_3|full2|S~4_combout\,
	combout => \selector|result_1[1]~3_combout\);

-- Location: LCCOMB_X11_Y20_N16
\selector|result_1[1]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selector|result_1[1]~4_combout\ = (\selector|multiplication|adittion_3|full2|S~2_combout\ & ((\selector|multiplication|adittion_2|full1|S~1_combout\ & ((\selector|multiplication|adittion_3|full1|S~1_combout\) # 
-- (!\selector|multiplication|adittion_3|full2|S~4_combout\))) # (!\selector|multiplication|adittion_2|full1|S~1_combout\ & (\selector|multiplication|adittion_3|full1|S~1_combout\ & !\selector|multiplication|adittion_3|full2|S~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector|multiplication|adittion_3|full2|S~2_combout\,
	datab => \selector|multiplication|adittion_2|full1|S~1_combout\,
	datac => \selector|multiplication|adittion_3|full1|S~1_combout\,
	datad => \selector|multiplication|adittion_3|full2|S~4_combout\,
	combout => \selector|result_1[1]~4_combout\);

-- Location: LCCOMB_X14_Y19_N26
\selector|result_1[1]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selector|result_1[1]~5_combout\ = (!\symbol[0]~input_o\ & (((\selector|result_1[1]~3_combout\) # (\selector|result_1[1]~4_combout\)) # (!\selector|decen_uni_multiplicacion|Mux7~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector|decen_uni_multiplicacion|Mux7~2_combout\,
	datab => \symbol[0]~input_o\,
	datac => \selector|result_1[1]~3_combout\,
	datad => \selector|result_1[1]~4_combout\,
	combout => \selector|result_1[1]~5_combout\);

-- Location: LCCOMB_X15_Y20_N22
\selector|result_1[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selector|result_1[3]~6_combout\ = (\digit_1[1]~input_o\ & (\digit_2[1]~input_o\ & (\digit_2[0]~input_o\ & !\digit_1[0]~input_o\))) # (!\digit_1[1]~input_o\ & ((\digit_2[1]~input_o\) # ((\digit_2[0]~input_o\ & !\digit_1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit_1[1]~input_o\,
	datab => \digit_2[1]~input_o\,
	datac => \digit_2[0]~input_o\,
	datad => \digit_1[0]~input_o\,
	combout => \selector|result_1[3]~6_combout\);

-- Location: LCCOMB_X15_Y20_N16
\selector|result_1[3]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selector|result_1[3]~7_combout\ = (\selector|result_1[3]~6_combout\ & ((\digit_2[2]~input_o\) # (!\digit_1[2]~input_o\))) # (!\selector|result_1[3]~6_combout\ & (!\digit_1[2]~input_o\ & \digit_2[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector|result_1[3]~6_combout\,
	datab => \digit_1[2]~input_o\,
	datac => \digit_2[2]~input_o\,
	combout => \selector|result_1[3]~7_combout\);

-- Location: LCCOMB_X15_Y20_N26
\selector|result_1[3]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selector|result_1[3]~8_combout\ = (\selector|Equal1~0_combout\ & ((\digit_1[3]~input_o\ & (\digit_2[3]~input_o\ & \selector|result_1[3]~7_combout\)) # (!\digit_1[3]~input_o\ & ((\digit_2[3]~input_o\) # (\selector|result_1[3]~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector|Equal1~0_combout\,
	datab => \digit_1[3]~input_o\,
	datac => \digit_2[3]~input_o\,
	datad => \selector|result_1[3]~7_combout\,
	combout => \selector|result_1[3]~8_combout\);

-- Location: LCCOMB_X14_Y19_N6
\selector|result_1[1]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selector|result_1[1]~10_combout\ = (\selector|result_1[1]~5_combout\) # ((\symbol[0]~input_o\ & ((\selector|result_1[1]~9_combout\) # (\selector|result_1[3]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector|result_1[1]~9_combout\,
	datab => \symbol[0]~input_o\,
	datac => \selector|result_1[1]~5_combout\,
	datad => \selector|result_1[3]~8_combout\,
	combout => \selector|result_1[1]~10_combout\);

-- Location: LCCOMB_X11_Y19_N16
\selector|decen_uni_multiplicacion|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selector|decen_uni_multiplicacion|Mux0~0_combout\ = (\selector|multiplication|adittion_3|full2|S~8_combout\) # ((\selector|multiplication|adittion_3|full2|S~6_combout\ & ((\selector|multiplication|adittion_3|full2|S~2_combout\) # 
-- (\selector|multiplication|adittion_3|full2|S~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector|multiplication|adittion_3|full2|S~2_combout\,
	datab => \selector|multiplication|adittion_3|full2|S~6_combout\,
	datac => \selector|multiplication|adittion_3|full2|S~8_combout\,
	datad => \selector|multiplication|adittion_3|full2|S~4_combout\,
	combout => \selector|decen_uni_multiplicacion|Mux0~0_combout\);

-- Location: LCCOMB_X14_Y19_N16
\selector|result_1[3]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selector|result_1[3]~14_combout\ = (\selector|result_1[3]~8_combout\) # ((!\symbol[0]~input_o\ & \selector|decen_uni_multiplicacion|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \symbol[0]~input_o\,
	datac => \selector|decen_uni_multiplicacion|Mux0~0_combout\,
	datad => \selector|result_1[3]~8_combout\,
	combout => \selector|result_1[3]~14_combout\);

-- Location: LCCOMB_X11_Y20_N18
\selector|result_1[2]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selector|result_1[2]~11_combout\ = (\selector|multiplication|adittion_3|full1|S~1_combout\ & (((\selector|multiplication|adittion_3|full2|S~4_combout\)))) # (!\selector|multiplication|adittion_3|full1|S~1_combout\ & 
-- (\selector|multiplication|adittion_3|full2|S~2_combout\ & ((\selector|multiplication|adittion_3|full2|S~4_combout\) # (!\selector|multiplication|adittion_2|full1|S~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector|multiplication|adittion_3|full2|S~2_combout\,
	datab => \selector|multiplication|adittion_2|full1|S~1_combout\,
	datac => \selector|multiplication|adittion_3|full1|S~1_combout\,
	datad => \selector|multiplication|adittion_3|full2|S~4_combout\,
	combout => \selector|result_1[2]~11_combout\);

-- Location: LCCOMB_X11_Y20_N12
\selector|result_1[2]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selector|result_1[2]~12_combout\ = (\selector|result_1[2]~11_combout\ & ((\selector|multiplication|adittion_3|full2|S~4_combout\) # ((\selector|multiplication|adittion_1|full1|S~1_combout\ & \selector|multiplication|adittion_3|full2|S~6_combout\)))) # 
-- (!\selector|result_1[2]~11_combout\ & (((\selector|multiplication|adittion_3|full2|S~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector|multiplication|adittion_3|full2|S~4_combout\,
	datab => \selector|multiplication|adittion_1|full1|S~1_combout\,
	datac => \selector|multiplication|adittion_3|full2|S~6_combout\,
	datad => \selector|result_1[2]~11_combout\,
	combout => \selector|result_1[2]~12_combout\);

-- Location: LCCOMB_X20_Y20_N8
\selector|result_1[2]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selector|result_1[2]~13_combout\ = (!\symbol[0]~input_o\ & ((\selector|result_1[2]~12_combout\) # (\selector|multiplication|adittion_3|full2|S~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \symbol[0]~input_o\,
	datab => \selector|result_1[2]~12_combout\,
	datac => \selector|multiplication|adittion_3|full2|S~8_combout\,
	combout => \selector|result_1[2]~13_combout\);

-- Location: LCCOMB_X16_Y23_N0
\number_3|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \number_3|Mux6~0_combout\ = (\selector|result_1[1]~10_combout\ & (!\selector|result_1[0]~2_combout\ & (\selector|result_1[3]~14_combout\ & !\selector|result_1[2]~13_combout\))) # (!\selector|result_1[1]~10_combout\ & (!\selector|result_1[3]~14_combout\ & 
-- (\selector|result_1[0]~2_combout\ $ (\selector|result_1[2]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector|result_1[0]~2_combout\,
	datab => \selector|result_1[1]~10_combout\,
	datac => \selector|result_1[3]~14_combout\,
	datad => \selector|result_1[2]~13_combout\,
	combout => \number_3|Mux6~0_combout\);

-- Location: LCCOMB_X16_Y23_N10
\number_3|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \number_3|Mux5~0_combout\ = (\selector|result_1[3]~14_combout\ & (((\selector|result_1[1]~10_combout\) # (\selector|result_1[2]~13_combout\)))) # (!\selector|result_1[3]~14_combout\ & (\selector|result_1[2]~13_combout\ & (\selector|result_1[0]~2_combout\ 
-- $ (\selector|result_1[1]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector|result_1[0]~2_combout\,
	datab => \selector|result_1[1]~10_combout\,
	datac => \selector|result_1[3]~14_combout\,
	datad => \selector|result_1[2]~13_combout\,
	combout => \number_3|Mux5~0_combout\);

-- Location: LCCOMB_X16_Y23_N4
\number_3|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \number_3|Mux4~0_combout\ = (\selector|result_1[2]~13_combout\ & (((\selector|result_1[3]~14_combout\)))) # (!\selector|result_1[2]~13_combout\ & (\selector|result_1[1]~10_combout\ & ((\selector|result_1[3]~14_combout\) # 
-- (!\selector|result_1[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector|result_1[0]~2_combout\,
	datab => \selector|result_1[1]~10_combout\,
	datac => \selector|result_1[3]~14_combout\,
	datad => \selector|result_1[2]~13_combout\,
	combout => \number_3|Mux4~0_combout\);

-- Location: LCCOMB_X16_Y23_N6
\number_3|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \number_3|Mux3~0_combout\ = (\selector|result_1[0]~2_combout\ & (!\selector|result_1[3]~14_combout\ & (\selector|result_1[1]~10_combout\ $ (!\selector|result_1[2]~13_combout\)))) # (!\selector|result_1[0]~2_combout\ & ((\selector|result_1[1]~10_combout\ & 
-- (\selector|result_1[3]~14_combout\ & !\selector|result_1[2]~13_combout\)) # (!\selector|result_1[1]~10_combout\ & (!\selector|result_1[3]~14_combout\ & \selector|result_1[2]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector|result_1[0]~2_combout\,
	datab => \selector|result_1[1]~10_combout\,
	datac => \selector|result_1[3]~14_combout\,
	datad => \selector|result_1[2]~13_combout\,
	combout => \number_3|Mux3~0_combout\);

-- Location: LCCOMB_X16_Y23_N16
\number_3|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \number_3|Mux2~0_combout\ = (\selector|result_1[3]~14_combout\ & (!\selector|result_1[2]~13_combout\ & (\selector|result_1[0]~2_combout\ $ (\selector|result_1[1]~10_combout\)))) # (!\selector|result_1[3]~14_combout\ & ((\selector|result_1[0]~2_combout\) # 
-- ((!\selector|result_1[1]~10_combout\ & \selector|result_1[2]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector|result_1[0]~2_combout\,
	datab => \selector|result_1[1]~10_combout\,
	datac => \selector|result_1[3]~14_combout\,
	datad => \selector|result_1[2]~13_combout\,
	combout => \number_3|Mux2~0_combout\);

-- Location: LCCOMB_X16_Y23_N2
\number_3|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \number_3|Mux1~0_combout\ = (\selector|result_1[0]~2_combout\ & (!\selector|result_1[3]~14_combout\ & ((\selector|result_1[1]~10_combout\) # (!\selector|result_1[2]~13_combout\)))) # (!\selector|result_1[0]~2_combout\ & (\selector|result_1[1]~10_combout\ 
-- & ((!\selector|result_1[2]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector|result_1[0]~2_combout\,
	datab => \selector|result_1[1]~10_combout\,
	datac => \selector|result_1[3]~14_combout\,
	datad => \selector|result_1[2]~13_combout\,
	combout => \number_3|Mux1~0_combout\);

-- Location: LCCOMB_X16_Y23_N28
\number_3|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \number_3|Mux0~0_combout\ = (\selector|result_1[3]~14_combout\) # ((\selector|result_1[1]~10_combout\ & ((!\selector|result_1[2]~13_combout\) # (!\selector|result_1[0]~2_combout\))) # (!\selector|result_1[1]~10_combout\ & 
-- ((\selector|result_1[2]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector|result_1[0]~2_combout\,
	datab => \selector|result_1[1]~10_combout\,
	datac => \selector|result_1[3]~14_combout\,
	datad => \selector|result_1[2]~13_combout\,
	combout => \number_3|Mux0~0_combout\);

-- Location: LCCOMB_X11_Y20_N20
\selector|decen_uni_multiplicacion|Mux4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selector|decen_uni_multiplicacion|Mux4~2_combout\ = (\selector|multiplication|adittion_3|full2|S~4_combout\) # ((\selector|multiplication|adittion_1|full1|S~1_combout\ & ((\selector|multiplication|adittion_3|full2|S~2_combout\) # 
-- (!\selector|multiplication|adittion_3|full1|S~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector|multiplication|adittion_3|full2|S~2_combout\,
	datab => \selector|multiplication|adittion_1|full1|S~1_combout\,
	datac => \selector|multiplication|adittion_3|full1|S~1_combout\,
	datad => \selector|multiplication|adittion_3|full2|S~4_combout\,
	combout => \selector|decen_uni_multiplicacion|Mux4~2_combout\);

-- Location: LCCOMB_X11_Y20_N22
\selector|decen_uni_multiplicacion|Mux4~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selector|decen_uni_multiplicacion|Mux4~3_combout\ = (\selector|multiplication|adittion_3|full2|S~2_combout\ & (\selector|multiplication|adittion_3|full1|S~1_combout\ $ (((\selector|multiplication|adittion_1|full1|S~1_combout\ & 
-- \selector|multiplication|adittion_3|full2|S~4_combout\))))) # (!\selector|multiplication|adittion_3|full2|S~2_combout\ & ((\selector|multiplication|adittion_3|full2|S~4_combout\) # ((!\selector|multiplication|adittion_1|full1|S~1_combout\ & 
-- \selector|multiplication|adittion_3|full1|S~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector|multiplication|adittion_3|full2|S~2_combout\,
	datab => \selector|multiplication|adittion_1|full1|S~1_combout\,
	datac => \selector|multiplication|adittion_3|full1|S~1_combout\,
	datad => \selector|multiplication|adittion_3|full2|S~4_combout\,
	combout => \selector|decen_uni_multiplicacion|Mux4~3_combout\);

-- Location: LCCOMB_X20_Y20_N28
\selector|decen_uni_multiplicacion|Mux4~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selector|decen_uni_multiplicacion|Mux4~5_combout\ = (\selector|decen_uni_multiplicacion|Mux4~2_combout\ & (\selector|multiplication|adittion_3|full2|S~2_combout\ & (!\selector|multiplication|adittion_2|full1|S~1_combout\ & 
-- !\selector|decen_uni_multiplicacion|Mux4~3_combout\))) # (!\selector|decen_uni_multiplicacion|Mux4~2_combout\ & (\selector|decen_uni_multiplicacion|Mux4~3_combout\ & (\selector|multiplication|adittion_3|full2|S~2_combout\ $ 
-- (!\selector|multiplication|adittion_2|full1|S~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector|multiplication|adittion_3|full2|S~2_combout\,
	datab => \selector|multiplication|adittion_2|full1|S~1_combout\,
	datac => \selector|decen_uni_multiplicacion|Mux4~2_combout\,
	datad => \selector|decen_uni_multiplicacion|Mux4~3_combout\,
	combout => \selector|decen_uni_multiplicacion|Mux4~5_combout\);

-- Location: LCCOMB_X20_Y20_N2
\selector|decen_uni_multiplicacion|Mux4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selector|decen_uni_multiplicacion|Mux4~4_combout\ = (\selector|multiplication|adittion_2|full1|S~1_combout\ & ((\selector|decen_uni_multiplicacion|Mux4~2_combout\ & ((\selector|multiplication|adittion_3|full2|S~2_combout\) # 
-- (\selector|decen_uni_multiplicacion|Mux4~3_combout\))) # (!\selector|decen_uni_multiplicacion|Mux4~2_combout\ & ((!\selector|decen_uni_multiplicacion|Mux4~3_combout\))))) # (!\selector|multiplication|adittion_2|full1|S~1_combout\ & 
-- (((\selector|decen_uni_multiplicacion|Mux4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector|multiplication|adittion_3|full2|S~2_combout\,
	datab => \selector|multiplication|adittion_2|full1|S~1_combout\,
	datac => \selector|decen_uni_multiplicacion|Mux4~2_combout\,
	datad => \selector|decen_uni_multiplicacion|Mux4~3_combout\,
	combout => \selector|decen_uni_multiplicacion|Mux4~4_combout\);

-- Location: LCCOMB_X20_Y20_N30
\selector|decen_uni_multiplicacion|Mux4~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selector|decen_uni_multiplicacion|Mux4~6_combout\ = (\selector|multiplication|adittion_3|full2|S~8_combout\) # (\selector|decen_uni_multiplicacion|Mux4~5_combout\ $ (((\selector|multiplication|adittion_3|full2|S~6_combout\ & 
-- \selector|decen_uni_multiplicacion|Mux4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector|multiplication|adittion_3|full2|S~6_combout\,
	datab => \selector|decen_uni_multiplicacion|Mux4~5_combout\,
	datac => \selector|multiplication|adittion_3|full2|S~8_combout\,
	datad => \selector|decen_uni_multiplicacion|Mux4~4_combout\,
	combout => \selector|decen_uni_multiplicacion|Mux4~6_combout\);

-- Location: LCCOMB_X10_Y28_N14
\selector|substraction|full2|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selector|substraction|full2|Cout~0_combout\ = (\digit_2[1]~input_o\ & (\digit_1[1]~input_o\ & ((\digit_1[0]~input_o\) # (!\digit_2[0]~input_o\)))) # (!\digit_2[1]~input_o\ & (((\digit_1[1]~input_o\) # (\digit_1[0]~input_o\)) # (!\digit_2[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit_2[0]~input_o\,
	datab => \digit_2[1]~input_o\,
	datac => \digit_1[1]~input_o\,
	datad => \digit_1[0]~input_o\,
	combout => \selector|substraction|full2|Cout~0_combout\);

-- Location: LCCOMB_X21_Y28_N10
\selector|decision|Mayor~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selector|decision|Mayor~0_combout\ = \digit_1[3]~input_o\ $ (\digit_2[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \digit_1[3]~input_o\,
	datad => \digit_2[3]~input_o\,
	combout => \selector|decision|Mayor~0_combout\);

-- Location: LCCOMB_X11_Y22_N4
\selector|substraction|full4|S~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selector|substraction|full4|S~0_combout\ = \selector|decision|Mayor~0_combout\ $ (((\selector|substraction|full2|Cout~0_combout\ & ((\digit_1[2]~input_o\) # (!\digit_2[2]~input_o\))) # (!\selector|substraction|full2|Cout~0_combout\ & 
-- (!\digit_2[2]~input_o\ & \digit_1[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110110110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector|substraction|full2|Cout~0_combout\,
	datab => \digit_2[2]~input_o\,
	datac => \digit_1[2]~input_o\,
	datad => \selector|decision|Mayor~0_combout\,
	combout => \selector|substraction|full4|S~0_combout\);

-- Location: LCCOMB_X14_Y19_N28
\selector|result_2[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selector|result_2[3]~0_combout\ = (\selector|result_1[3]~8_combout\) # ((\symbol[1]~input_o\ & \symbol[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \symbol[1]~input_o\,
	datab => \symbol[0]~input_o\,
	datad => \selector|result_1[3]~8_combout\,
	combout => \selector|result_2[3]~0_combout\);

-- Location: LCCOMB_X14_Y19_N22
\selector|result_2[3]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selector|result_2[3]~7_combout\ = (\selector|Equal1~0_combout\ & (((\selector|result_2[3]~0_combout\) # (!\selector|substraction|full4|S~0_combout\)))) # (!\selector|Equal1~0_combout\ & (\selector|decen_uni_multiplicacion|Mux4~6_combout\ & 
-- ((!\selector|result_2[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector|decen_uni_multiplicacion|Mux4~6_combout\,
	datab => \selector|Equal1~0_combout\,
	datac => \selector|substraction|full4|S~0_combout\,
	datad => \selector|result_2[3]~0_combout\,
	combout => \selector|result_2[3]~7_combout\);

-- Location: LCCOMB_X11_Y22_N24
\selector|substraction|full1|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selector|substraction|full1|Cout~0_combout\ = \digit_1[0]~input_o\ $ (\digit_2[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \digit_1[0]~input_o\,
	datad => \digit_2[0]~input_o\,
	combout => \selector|substraction|full1|Cout~0_combout\);

-- Location: LCCOMB_X10_Y28_N4
\selector|substraction|full2|S~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selector|substraction|full2|S~0_combout\ = \digit_2[1]~input_o\ $ (\digit_1[1]~input_o\ $ (((\digit_1[0]~input_o\) # (!\digit_2[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001101101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit_2[0]~input_o\,
	datab => \digit_2[1]~input_o\,
	datac => \digit_1[1]~input_o\,
	datad => \digit_1[0]~input_o\,
	combout => \selector|substraction|full2|S~0_combout\);

-- Location: LCCOMB_X11_Y22_N18
\selector|substraction|full3|S~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selector|substraction|full3|S~0_combout\ = \digit_2[2]~input_o\ $ (\digit_1[2]~input_o\ $ (\selector|substraction|full2|Cout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \digit_2[2]~input_o\,
	datac => \digit_1[2]~input_o\,
	datad => \selector|substraction|full2|Cout~0_combout\,
	combout => \selector|substraction|full3|S~0_combout\);

-- Location: LCCOMB_X11_Y22_N16
\selector|complemento|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selector|complemento|Mux0~0_combout\ = \selector|substraction|full4|S~0_combout\ $ (((!\selector|substraction|full1|Cout~0_combout\ & (\selector|substraction|full2|S~0_combout\ & \selector|substraction|full3|S~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector|substraction|full4|S~0_combout\,
	datab => \selector|substraction|full1|Cout~0_combout\,
	datac => \selector|substraction|full2|S~0_combout\,
	datad => \selector|substraction|full3|S~0_combout\,
	combout => \selector|complemento|Mux0~0_combout\);

-- Location: LCCOMB_X15_Y20_N20
\selector|decen_uni_suma|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selector|decen_uni_suma|Mux4~0_combout\ = (\selector|adittion|full2|S~6_combout\ & (!\selector|adittion|full2|S~2_combout\ & (\selector|adittion|full2|S~4_combout\ $ (!\selector|adittion|full2|S~8_combout\)))) # (!\selector|adittion|full2|S~6_combout\ & 
-- (!\selector|adittion|full2|S~4_combout\ & (\selector|adittion|full2|S~8_combout\ & \selector|adittion|full2|S~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector|adittion|full2|S~6_combout\,
	datab => \selector|adittion|full2|S~4_combout\,
	datac => \selector|adittion|full2|S~8_combout\,
	datad => \selector|adittion|full2|S~2_combout\,
	combout => \selector|decen_uni_suma|Mux4~0_combout\);

-- Location: LCCOMB_X14_Y19_N0
\selector|result_2[3]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selector|result_2[3]~8_combout\ = (\selector|result_2[3]~7_combout\ & (((\selector|complemento|Mux0~0_combout\)) # (!\selector|result_2[3]~0_combout\))) # (!\selector|result_2[3]~7_combout\ & (\selector|result_2[3]~0_combout\ & 
-- ((\selector|decen_uni_suma|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector|result_2[3]~7_combout\,
	datab => \selector|result_2[3]~0_combout\,
	datac => \selector|complemento|Mux0~0_combout\,
	datad => \selector|decen_uni_suma|Mux4~0_combout\,
	combout => \selector|result_2[3]~8_combout\);

-- Location: LCCOMB_X11_Y22_N12
\selector|complemento|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selector|complemento|Mux1~0_combout\ = (\selector|substraction|full1|Cout~0_combout\ & ((\selector|substraction|full3|S~0_combout\) # ((\selector|substraction|full4|S~0_combout\ & \selector|substraction|full2|S~0_combout\)))) # 
-- (!\selector|substraction|full1|Cout~0_combout\ & ((\selector|substraction|full2|S~0_combout\ & ((!\selector|substraction|full3|S~0_combout\))) # (!\selector|substraction|full2|S~0_combout\ & ((\selector|substraction|full4|S~0_combout\) # 
-- (\selector|substraction|full3|S~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector|substraction|full4|S~0_combout\,
	datab => \selector|substraction|full1|Cout~0_combout\,
	datac => \selector|substraction|full2|S~0_combout\,
	datad => \selector|substraction|full3|S~0_combout\,
	combout => \selector|complemento|Mux1~0_combout\);

-- Location: LCCOMB_X11_Y19_N30
\selector|decen_uni_multiplicacion|Mux7~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selector|decen_uni_multiplicacion|Mux7~5_combout\ = (!\selector|multiplication|adittion_3|full2|S~4_combout\ & !\selector|multiplication|adittion_3|full2|S~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector|multiplication|adittion_3|full2|S~4_combout\,
	datad => \selector|multiplication|adittion_3|full2|S~6_combout\,
	combout => \selector|decen_uni_multiplicacion|Mux7~5_combout\);

-- Location: LCCOMB_X11_Y19_N0
\selector|decen_uni_multiplicacion|Mux6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selector|decen_uni_multiplicacion|Mux6~4_combout\ = (!\selector|multiplication|adittion_3|full2|S~8_combout\ & ((!\selector|multiplication|adittion_3|full2|S~6_combout\) # (!\selector|multiplication|adittion_3|full2|S~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector|multiplication|adittion_3|full2|S~4_combout\,
	datab => \selector|multiplication|adittion_3|full2|S~6_combout\,
	datac => \selector|multiplication|adittion_3|full2|S~8_combout\,
	combout => \selector|decen_uni_multiplicacion|Mux6~4_combout\);

-- Location: LCCOMB_X11_Y20_N8
\selector|decen_uni_multiplicacion|Mux5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selector|decen_uni_multiplicacion|Mux5~1_combout\ = (\selector|multiplication|adittion_3|full2|S~2_combout\ & (!\selector|multiplication|adittion_2|full1|S~1_combout\ & (!\selector|multiplication|adittion_3|full1|S~1_combout\ & 
-- !\selector|multiplication|adittion_1|full1|S~1_combout\))) # (!\selector|multiplication|adittion_3|full2|S~2_combout\ & (\selector|multiplication|adittion_2|full1|S~1_combout\ $ (((\selector|multiplication|adittion_3|full1|S~1_combout\ & 
-- !\selector|multiplication|adittion_1|full1|S~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector|multiplication|adittion_3|full2|S~2_combout\,
	datab => \selector|multiplication|adittion_2|full1|S~1_combout\,
	datac => \selector|multiplication|adittion_3|full1|S~1_combout\,
	datad => \selector|multiplication|adittion_1|full1|S~1_combout\,
	combout => \selector|decen_uni_multiplicacion|Mux5~1_combout\);

-- Location: LCCOMB_X11_Y20_N14
\selector|decen_uni_multiplicacion|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selector|decen_uni_multiplicacion|Mux5~0_combout\ = (\selector|multiplication|adittion_1|full1|S~1_combout\ & (\selector|multiplication|adittion_2|full1|S~1_combout\ & (\selector|multiplication|adittion_3|full2|S~2_combout\ $ 
-- (\selector|multiplication|adittion_3|full1|S~1_combout\)))) # (!\selector|multiplication|adittion_1|full1|S~1_combout\ & (\selector|multiplication|adittion_3|full1|S~1_combout\ & (\selector|multiplication|adittion_3|full2|S~2_combout\ $ 
-- (\selector|multiplication|adittion_2|full1|S~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector|multiplication|adittion_3|full2|S~2_combout\,
	datab => \selector|multiplication|adittion_2|full1|S~1_combout\,
	datac => \selector|multiplication|adittion_3|full1|S~1_combout\,
	datad => \selector|multiplication|adittion_1|full1|S~1_combout\,
	combout => \selector|decen_uni_multiplicacion|Mux5~0_combout\);

-- Location: LCCOMB_X11_Y19_N4
\selector|decen_uni_multiplicacion|Mux5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selector|decen_uni_multiplicacion|Mux5~2_combout\ = (\selector|multiplication|adittion_3|full2|S~4_combout\ & ((\selector|decen_uni_multiplicacion|Mux5~0_combout\) # ((\selector|multiplication|adittion_3|full2|S~6_combout\ & 
-- !\selector|decen_uni_multiplicacion|Mux5~1_combout\)))) # (!\selector|multiplication|adittion_3|full2|S~4_combout\ & (\selector|multiplication|adittion_3|full2|S~6_combout\ & (!\selector|decen_uni_multiplicacion|Mux5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector|multiplication|adittion_3|full2|S~4_combout\,
	datab => \selector|multiplication|adittion_3|full2|S~6_combout\,
	datac => \selector|decen_uni_multiplicacion|Mux5~1_combout\,
	datad => \selector|decen_uni_multiplicacion|Mux5~0_combout\,
	combout => \selector|decen_uni_multiplicacion|Mux5~2_combout\);

-- Location: LCCOMB_X11_Y20_N26
\selector|decen_uni_multiplicacion|Mux5~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selector|decen_uni_multiplicacion|Mux5~3_combout\ = (\selector|multiplication|adittion_3|full2|S~2_combout\ & (!\selector|multiplication|adittion_2|full1|S~1_combout\ & ((\selector|multiplication|adittion_3|full1|S~1_combout\) # 
-- (!\selector|multiplication|adittion_1|full1|S~1_combout\)))) # (!\selector|multiplication|adittion_3|full2|S~2_combout\ & (\selector|multiplication|adittion_2|full1|S~1_combout\ & ((\selector|multiplication|adittion_1|full1|S~1_combout\) # 
-- (!\selector|multiplication|adittion_3|full1|S~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector|multiplication|adittion_3|full2|S~2_combout\,
	datab => \selector|multiplication|adittion_2|full1|S~1_combout\,
	datac => \selector|multiplication|adittion_3|full1|S~1_combout\,
	datad => \selector|multiplication|adittion_1|full1|S~1_combout\,
	combout => \selector|decen_uni_multiplicacion|Mux5~3_combout\);

-- Location: LCCOMB_X11_Y19_N22
\selector|decen_uni_multiplicacion|Mux5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selector|decen_uni_multiplicacion|Mux5~4_combout\ = ((\selector|decen_uni_multiplicacion|Mux5~2_combout\) # ((\selector|decen_uni_multiplicacion|Mux7~5_combout\ & \selector|decen_uni_multiplicacion|Mux5~3_combout\))) # 
-- (!\selector|decen_uni_multiplicacion|Mux6~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector|decen_uni_multiplicacion|Mux7~5_combout\,
	datab => \selector|decen_uni_multiplicacion|Mux6~4_combout\,
	datac => \selector|decen_uni_multiplicacion|Mux5~2_combout\,
	datad => \selector|decen_uni_multiplicacion|Mux5~3_combout\,
	combout => \selector|decen_uni_multiplicacion|Mux5~4_combout\);

-- Location: LCCOMB_X14_Y19_N12
\selector|result_2[2]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selector|result_2[2]~5_combout\ = (\selector|Equal1~0_combout\ & (((\selector|result_2[3]~0_combout\)) # (!\selector|substraction|full3|S~0_combout\))) # (!\selector|Equal1~0_combout\ & (((\selector|decen_uni_multiplicacion|Mux5~4_combout\ & 
-- !\selector|result_2[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector|substraction|full3|S~0_combout\,
	datab => \selector|Equal1~0_combout\,
	datac => \selector|decen_uni_multiplicacion|Mux5~4_combout\,
	datad => \selector|result_2[3]~0_combout\,
	combout => \selector|result_2[2]~5_combout\);

-- Location: LCCOMB_X15_Y20_N18
\selector|decen_uni_suma|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selector|decen_uni_suma|Mux5~0_combout\ = (\selector|adittion|full2|S~4_combout\ & (!\selector|adittion|full2|S~8_combout\ & ((\selector|adittion|full2|S~2_combout\) # (!\selector|adittion|full2|S~6_combout\)))) # (!\selector|adittion|full2|S~4_combout\ 
-- & (\selector|adittion|full2|S~8_combout\ & ((\selector|adittion|full2|S~6_combout\) # (!\selector|adittion|full2|S~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector|adittion|full2|S~6_combout\,
	datab => \selector|adittion|full2|S~4_combout\,
	datac => \selector|adittion|full2|S~8_combout\,
	datad => \selector|adittion|full2|S~2_combout\,
	combout => \selector|decen_uni_suma|Mux5~0_combout\);

-- Location: LCCOMB_X11_Y22_N14
\selector|result_2[2]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selector|result_2[2]~6_combout\ = (\selector|result_2[3]~0_combout\ & ((\selector|result_2[2]~5_combout\ & (\selector|complemento|Mux1~0_combout\)) # (!\selector|result_2[2]~5_combout\ & ((\selector|decen_uni_suma|Mux5~0_combout\))))) # 
-- (!\selector|result_2[3]~0_combout\ & (((\selector|result_2[2]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector|complemento|Mux1~0_combout\,
	datab => \selector|result_2[3]~0_combout\,
	datac => \selector|result_2[2]~5_combout\,
	datad => \selector|decen_uni_suma|Mux5~0_combout\,
	combout => \selector|result_2[2]~6_combout\);

-- Location: LCCOMB_X15_Y20_N24
\selector|decen_uni_suma|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selector|decen_uni_suma|Mux6~0_combout\ = (\selector|adittion|full2|S~6_combout\ & ((\selector|adittion|full2|S~8_combout\ & ((\selector|adittion|full2|S~2_combout\))) # (!\selector|adittion|full2|S~8_combout\ & (\selector|adittion|full2|S~4_combout\ & 
-- !\selector|adittion|full2|S~2_combout\)))) # (!\selector|adittion|full2|S~6_combout\ & (\selector|adittion|full2|S~2_combout\ $ (((!\selector|adittion|full2|S~4_combout\ & \selector|adittion|full2|S~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector|adittion|full2|S~6_combout\,
	datab => \selector|adittion|full2|S~4_combout\,
	datac => \selector|adittion|full2|S~8_combout\,
	datad => \selector|adittion|full2|S~2_combout\,
	combout => \selector|decen_uni_suma|Mux6~0_combout\);

-- Location: LCCOMB_X11_Y20_N28
\selector|decen_uni_multiplicacion|Mux6~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selector|decen_uni_multiplicacion|Mux6~3_combout\ = (\selector|multiplication|adittion_3|full2|S~2_combout\ & (\selector|multiplication|adittion_1|full1|S~1_combout\ $ (((!\selector|multiplication|adittion_2|full1|S~1_combout\ & 
-- !\selector|multiplication|adittion_3|full1|S~1_combout\))))) # (!\selector|multiplication|adittion_3|full2|S~2_combout\ & ((\selector|multiplication|adittion_3|full1|S~1_combout\ & (\selector|multiplication|adittion_2|full1|S~1_combout\ & 
-- !\selector|multiplication|adittion_1|full1|S~1_combout\)) # (!\selector|multiplication|adittion_3|full1|S~1_combout\ & ((\selector|multiplication|adittion_1|full1|S~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector|multiplication|adittion_3|full2|S~2_combout\,
	datab => \selector|multiplication|adittion_2|full1|S~1_combout\,
	datac => \selector|multiplication|adittion_3|full1|S~1_combout\,
	datad => \selector|multiplication|adittion_1|full1|S~1_combout\,
	combout => \selector|decen_uni_multiplicacion|Mux6~3_combout\);

-- Location: LCCOMB_X11_Y20_N10
\selector|decen_uni_multiplicacion|Mux6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selector|decen_uni_multiplicacion|Mux6~1_combout\ = (\selector|multiplication|adittion_3|full1|S~1_combout\ & (\selector|multiplication|adittion_1|full1|S~1_combout\ $ (((\selector|multiplication|adittion_2|full1|S~1_combout\) # 
-- (!\selector|multiplication|adittion_3|full2|S~2_combout\))))) # (!\selector|multiplication|adittion_3|full1|S~1_combout\ & (\selector|multiplication|adittion_3|full2|S~2_combout\ & ((\selector|multiplication|adittion_1|full1|S~1_combout\) # 
-- (!\selector|multiplication|adittion_2|full1|S~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector|multiplication|adittion_3|full2|S~2_combout\,
	datab => \selector|multiplication|adittion_2|full1|S~1_combout\,
	datac => \selector|multiplication|adittion_3|full1|S~1_combout\,
	datad => \selector|multiplication|adittion_1|full1|S~1_combout\,
	combout => \selector|decen_uni_multiplicacion|Mux6~1_combout\);

-- Location: LCCOMB_X11_Y20_N0
\selector|decen_uni_multiplicacion|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selector|decen_uni_multiplicacion|Mux6~0_combout\ = (\selector|multiplication|adittion_3|full1|S~1_combout\ & ((\selector|multiplication|adittion_3|full2|S~2_combout\) # ((!\selector|multiplication|adittion_1|full1|S~1_combout\)))) # 
-- (!\selector|multiplication|adittion_3|full1|S~1_combout\ & ((\selector|multiplication|adittion_2|full1|S~1_combout\ & (\selector|multiplication|adittion_3|full2|S~2_combout\)) # (!\selector|multiplication|adittion_2|full1|S~1_combout\ & 
-- ((\selector|multiplication|adittion_1|full1|S~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector|multiplication|adittion_3|full2|S~2_combout\,
	datab => \selector|multiplication|adittion_2|full1|S~1_combout\,
	datac => \selector|multiplication|adittion_3|full1|S~1_combout\,
	datad => \selector|multiplication|adittion_1|full1|S~1_combout\,
	combout => \selector|decen_uni_multiplicacion|Mux6~0_combout\);

-- Location: LCCOMB_X11_Y19_N28
\selector|decen_uni_multiplicacion|Mux6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selector|decen_uni_multiplicacion|Mux6~2_combout\ = (\selector|multiplication|adittion_3|full2|S~4_combout\ & (((\selector|multiplication|adittion_3|full2|S~6_combout\ & \selector|decen_uni_multiplicacion|Mux6~0_combout\)) # 
-- (!\selector|decen_uni_multiplicacion|Mux6~1_combout\))) # (!\selector|multiplication|adittion_3|full2|S~4_combout\ & (((\selector|multiplication|adittion_3|full2|S~6_combout\ & \selector|decen_uni_multiplicacion|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector|multiplication|adittion_3|full2|S~4_combout\,
	datab => \selector|decen_uni_multiplicacion|Mux6~1_combout\,
	datac => \selector|multiplication|adittion_3|full2|S~6_combout\,
	datad => \selector|decen_uni_multiplicacion|Mux6~0_combout\,
	combout => \selector|decen_uni_multiplicacion|Mux6~2_combout\);

-- Location: LCCOMB_X11_Y19_N26
\selector|decen_uni_multiplicacion|Mux6~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selector|decen_uni_multiplicacion|Mux6~5_combout\ = ((\selector|decen_uni_multiplicacion|Mux6~2_combout\) # ((\selector|decen_uni_multiplicacion|Mux6~3_combout\ & \selector|decen_uni_multiplicacion|Mux7~5_combout\))) # 
-- (!\selector|decen_uni_multiplicacion|Mux6~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector|decen_uni_multiplicacion|Mux6~3_combout\,
	datab => \selector|decen_uni_multiplicacion|Mux6~4_combout\,
	datac => \selector|decen_uni_multiplicacion|Mux7~5_combout\,
	datad => \selector|decen_uni_multiplicacion|Mux6~2_combout\,
	combout => \selector|decen_uni_multiplicacion|Mux6~5_combout\);

-- Location: LCCOMB_X14_Y19_N8
\selector|result_2[1]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selector|result_2[1]~3_combout\ = (\selector|Equal1~0_combout\ & (((\selector|result_2[3]~0_combout\) # (!\selector|substraction|full2|S~0_combout\)))) # (!\selector|Equal1~0_combout\ & (\selector|decen_uni_multiplicacion|Mux6~5_combout\ & 
-- ((!\selector|result_2[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector|decen_uni_multiplicacion|Mux6~5_combout\,
	datab => \selector|Equal1~0_combout\,
	datac => \selector|substraction|full2|S~0_combout\,
	datad => \selector|result_2[3]~0_combout\,
	combout => \selector|result_2[1]~3_combout\);

-- Location: LCCOMB_X11_Y22_N10
\selector|complemento|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selector|complemento|Mux2~0_combout\ = (\selector|substraction|full1|Cout~0_combout\ & (!\selector|substraction|full2|S~0_combout\ & ((!\selector|substraction|full3|S~0_combout\) # (!\selector|substraction|full4|S~0_combout\)))) # 
-- (!\selector|substraction|full1|Cout~0_combout\ & (\selector|substraction|full2|S~0_combout\ & ((\selector|substraction|full3|S~0_combout\) # (!\selector|substraction|full4|S~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector|substraction|full4|S~0_combout\,
	datab => \selector|substraction|full1|Cout~0_combout\,
	datac => \selector|substraction|full2|S~0_combout\,
	datad => \selector|substraction|full3|S~0_combout\,
	combout => \selector|complemento|Mux2~0_combout\);

-- Location: LCCOMB_X14_Y19_N2
\selector|result_2[1]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selector|result_2[1]~4_combout\ = (\selector|result_2[1]~3_combout\ & (((!\selector|result_2[3]~0_combout\) # (!\selector|complemento|Mux2~0_combout\)))) # (!\selector|result_2[1]~3_combout\ & (\selector|decen_uni_suma|Mux6~0_combout\ & 
-- ((\selector|result_2[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector|decen_uni_suma|Mux6~0_combout\,
	datab => \selector|result_2[1]~3_combout\,
	datac => \selector|complemento|Mux2~0_combout\,
	datad => \selector|result_2[3]~0_combout\,
	combout => \selector|result_2[1]~4_combout\);

-- Location: LCCOMB_X11_Y22_N30
\selector|complemento|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selector|complemento|Mux3~0_combout\ = (\selector|substraction|full1|Cout~0_combout\) # ((\selector|substraction|full4|S~0_combout\ & ((!\selector|substraction|full3|S~0_combout\) # (!\selector|substraction|full2|S~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector|substraction|full4|S~0_combout\,
	datab => \selector|substraction|full1|Cout~0_combout\,
	datac => \selector|substraction|full2|S~0_combout\,
	datad => \selector|substraction|full3|S~0_combout\,
	combout => \selector|complemento|Mux3~0_combout\);

-- Location: LCCOMB_X11_Y20_N6
\selector|decen_uni_multiplicacion|Mux7~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selector|decen_uni_multiplicacion|Mux7~3_combout\ = (\selector|multiplication|adittion_3|full1|S~1_combout\ & ((\selector|multiplication|adittion_3|full2|S~6_combout\) # ((\selector|multiplication|adittion_2|full1|S~1_combout\ & 
-- \selector|multiplication|adittion_1|full1|S~1_combout\)))) # (!\selector|multiplication|adittion_3|full1|S~1_combout\ & (\selector|multiplication|adittion_3|full2|S~6_combout\ & ((\selector|multiplication|adittion_2|full1|S~1_combout\) # 
-- (\selector|multiplication|adittion_1|full1|S~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector|multiplication|adittion_3|full1|S~1_combout\,
	datab => \selector|multiplication|adittion_2|full1|S~1_combout\,
	datac => \selector|multiplication|adittion_3|full2|S~6_combout\,
	datad => \selector|multiplication|adittion_1|full1|S~1_combout\,
	combout => \selector|decen_uni_multiplicacion|Mux7~3_combout\);

-- Location: LCCOMB_X11_Y19_N18
\selector|decen_uni_multiplicacion|Mux7~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selector|decen_uni_multiplicacion|Mux7~4_combout\ = (\selector|multiplication|adittion_3|full2|S~4_combout\ & (((\selector|multiplication|adittion_3|full2|S~6_combout\)))) # (!\selector|multiplication|adittion_3|full2|S~4_combout\ & 
-- (\selector|multiplication|adittion_3|full2|S~2_combout\ & ((\selector|decen_uni_multiplicacion|Mux7~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector|multiplication|adittion_3|full2|S~2_combout\,
	datab => \selector|multiplication|adittion_3|full2|S~6_combout\,
	datac => \selector|decen_uni_multiplicacion|Mux7~3_combout\,
	datad => \selector|multiplication|adittion_3|full2|S~4_combout\,
	combout => \selector|decen_uni_multiplicacion|Mux7~4_combout\);

-- Location: LCCOMB_X14_Y19_N10
\selector|decen_uni_multiplicacion|Mux7~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selector|decen_uni_multiplicacion|Mux7~6_combout\ = ((\selector|decen_uni_multiplicacion|Mux7~4_combout\) # ((\digit_1[0]~input_o\ & \digit_2[0]~input_o\))) # (!\selector|decen_uni_multiplicacion|Mux7~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector|decen_uni_multiplicacion|Mux7~2_combout\,
	datab => \digit_1[0]~input_o\,
	datac => \digit_2[0]~input_o\,
	datad => \selector|decen_uni_multiplicacion|Mux7~4_combout\,
	combout => \selector|decen_uni_multiplicacion|Mux7~6_combout\);

-- Location: LCCOMB_X15_Y20_N30
\selector|decen_uni_suma|Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selector|decen_uni_suma|Mux7~0_combout\ = (\selector|adittion|full2|S~6_combout\ & (\selector|adittion|full2|S~4_combout\ & (\selector|adittion|full2|S~8_combout\ & \selector|adittion|full2|S~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector|adittion|full2|S~6_combout\,
	datab => \selector|adittion|full2|S~4_combout\,
	datac => \selector|adittion|full2|S~8_combout\,
	datad => \selector|adittion|full2|S~2_combout\,
	combout => \selector|decen_uni_suma|Mux7~0_combout\);

-- Location: LCCOMB_X14_Y19_N18
\selector|decen_uni_suma|Mux7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selector|decen_uni_suma|Mux7~1_combout\ = (\selector|decen_uni_suma|Mux7~0_combout\) # (\digit_2[0]~input_o\ $ (\digit_1[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit_2[0]~input_o\,
	datab => \digit_1[0]~input_o\,
	datac => \selector|decen_uni_suma|Mux7~0_combout\,
	combout => \selector|decen_uni_suma|Mux7~1_combout\);

-- Location: LCCOMB_X14_Y19_N14
\selector|result_2[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selector|result_2[0]~1_combout\ = (\selector|Equal1~0_combout\ & (((\selector|result_2[3]~0_combout\)))) # (!\selector|Equal1~0_combout\ & ((\selector|result_2[3]~0_combout\ & ((\selector|decen_uni_suma|Mux7~1_combout\))) # 
-- (!\selector|result_2[3]~0_combout\ & (\selector|decen_uni_multiplicacion|Mux7~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector|decen_uni_multiplicacion|Mux7~6_combout\,
	datab => \selector|Equal1~0_combout\,
	datac => \selector|decen_uni_suma|Mux7~1_combout\,
	datad => \selector|result_2[3]~0_combout\,
	combout => \selector|result_2[0]~1_combout\);

-- Location: LCCOMB_X11_Y22_N0
\selector|result_2[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \selector|result_2[0]~2_combout\ = (\selector|Equal1~0_combout\ & ((\selector|result_2[0]~1_combout\ & ((\selector|complemento|Mux3~0_combout\))) # (!\selector|result_2[0]~1_combout\ & (\selector|substraction|full1|Cout~0_combout\)))) # 
-- (!\selector|Equal1~0_combout\ & (((\selector|result_2[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector|Equal1~0_combout\,
	datab => \selector|substraction|full1|Cout~0_combout\,
	datac => \selector|complemento|Mux3~0_combout\,
	datad => \selector|result_2[0]~1_combout\,
	combout => \selector|result_2[0]~2_combout\);

-- Location: LCCOMB_X11_Y22_N26
\number_4|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \number_4|Mux6~0_combout\ = (\selector|result_2[3]~8_combout\ & (!\selector|result_2[2]~6_combout\ & (\selector|result_2[1]~4_combout\ & !\selector|result_2[0]~2_combout\))) # (!\selector|result_2[3]~8_combout\ & (!\selector|result_2[1]~4_combout\ & 
-- (\selector|result_2[2]~6_combout\ $ (\selector|result_2[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector|result_2[3]~8_combout\,
	datab => \selector|result_2[2]~6_combout\,
	datac => \selector|result_2[1]~4_combout\,
	datad => \selector|result_2[0]~2_combout\,
	combout => \number_4|Mux6~0_combout\);

-- Location: LCCOMB_X11_Y22_N20
\number_4|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \number_4|Mux5~0_combout\ = (\selector|result_2[3]~8_combout\ & ((\selector|result_2[2]~6_combout\) # ((\selector|result_2[1]~4_combout\)))) # (!\selector|result_2[3]~8_combout\ & (\selector|result_2[2]~6_combout\ & (\selector|result_2[1]~4_combout\ $ 
-- (\selector|result_2[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector|result_2[3]~8_combout\,
	datab => \selector|result_2[2]~6_combout\,
	datac => \selector|result_2[1]~4_combout\,
	datad => \selector|result_2[0]~2_combout\,
	combout => \number_4|Mux5~0_combout\);

-- Location: LCCOMB_X11_Y22_N6
\number_4|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \number_4|Mux4~0_combout\ = (\selector|result_2[2]~6_combout\ & (\selector|result_2[3]~8_combout\)) # (!\selector|result_2[2]~6_combout\ & (\selector|result_2[1]~4_combout\ & ((\selector|result_2[3]~8_combout\) # (!\selector|result_2[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector|result_2[3]~8_combout\,
	datab => \selector|result_2[2]~6_combout\,
	datac => \selector|result_2[1]~4_combout\,
	datad => \selector|result_2[0]~2_combout\,
	combout => \number_4|Mux4~0_combout\);

-- Location: LCCOMB_X11_Y22_N8
\number_4|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \number_4|Mux3~0_combout\ = (\selector|result_2[3]~8_combout\ & (!\selector|result_2[2]~6_combout\ & (\selector|result_2[1]~4_combout\ & !\selector|result_2[0]~2_combout\))) # (!\selector|result_2[3]~8_combout\ & ((\selector|result_2[2]~6_combout\ & 
-- (\selector|result_2[1]~4_combout\ $ (!\selector|result_2[0]~2_combout\))) # (!\selector|result_2[2]~6_combout\ & (!\selector|result_2[1]~4_combout\ & \selector|result_2[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector|result_2[3]~8_combout\,
	datab => \selector|result_2[2]~6_combout\,
	datac => \selector|result_2[1]~4_combout\,
	datad => \selector|result_2[0]~2_combout\,
	combout => \number_4|Mux3~0_combout\);

-- Location: LCCOMB_X11_Y22_N2
\number_4|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \number_4|Mux2~0_combout\ = (\selector|result_2[3]~8_combout\ & (!\selector|result_2[2]~6_combout\ & (\selector|result_2[1]~4_combout\ $ (\selector|result_2[0]~2_combout\)))) # (!\selector|result_2[3]~8_combout\ & ((\selector|result_2[0]~2_combout\) # 
-- ((\selector|result_2[2]~6_combout\ & !\selector|result_2[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector|result_2[3]~8_combout\,
	datab => \selector|result_2[2]~6_combout\,
	datac => \selector|result_2[1]~4_combout\,
	datad => \selector|result_2[0]~2_combout\,
	combout => \number_4|Mux2~0_combout\);

-- Location: LCCOMB_X11_Y22_N28
\number_4|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \number_4|Mux1~0_combout\ = (\selector|result_2[0]~2_combout\ & (!\selector|result_2[3]~8_combout\ & ((\selector|result_2[1]~4_combout\) # (!\selector|result_2[2]~6_combout\)))) # (!\selector|result_2[0]~2_combout\ & (((!\selector|result_2[2]~6_combout\ & 
-- \selector|result_2[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector|result_2[3]~8_combout\,
	datab => \selector|result_2[2]~6_combout\,
	datac => \selector|result_2[1]~4_combout\,
	datad => \selector|result_2[0]~2_combout\,
	combout => \number_4|Mux1~0_combout\);

-- Location: LCCOMB_X11_Y22_N22
\number_4|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \number_4|Mux0~0_combout\ = (\selector|result_2[3]~8_combout\) # ((\selector|result_2[2]~6_combout\ & ((!\selector|result_2[0]~2_combout\) # (!\selector|result_2[1]~4_combout\))) # (!\selector|result_2[2]~6_combout\ & (\selector|result_2[1]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selector|result_2[3]~8_combout\,
	datab => \selector|result_2[2]~6_combout\,
	datac => \selector|result_2[1]~4_combout\,
	datad => \selector|result_2[0]~2_combout\,
	combout => \number_4|Mux0~0_combout\);

ww_result_1(0) <= \result_1[0]~output_o\;

ww_result_1(1) <= \result_1[1]~output_o\;

ww_result_1(2) <= \result_1[2]~output_o\;

ww_result_1(3) <= \result_1[3]~output_o\;

ww_result_1(4) <= \result_1[4]~output_o\;

ww_result_1(5) <= \result_1[5]~output_o\;

ww_result_1(6) <= \result_1[6]~output_o\;

ww_result_2(0) <= \result_2[0]~output_o\;

ww_result_2(1) <= \result_2[1]~output_o\;

ww_result_2(2) <= \result_2[2]~output_o\;

ww_result_2(3) <= \result_2[3]~output_o\;

ww_result_2(4) <= \result_2[4]~output_o\;

ww_result_2(5) <= \result_2[5]~output_o\;

ww_result_2(6) <= \result_2[6]~output_o\;

ww_result_3(0) <= \result_3[0]~output_o\;

ww_result_3(1) <= \result_3[1]~output_o\;

ww_result_3(2) <= \result_3[2]~output_o\;

ww_result_3(3) <= \result_3[3]~output_o\;

ww_result_3(4) <= \result_3[4]~output_o\;

ww_result_3(5) <= \result_3[5]~output_o\;

ww_result_3(6) <= \result_3[6]~output_o\;

ww_result_4(0) <= \result_4[0]~output_o\;

ww_result_4(1) <= \result_4[1]~output_o\;

ww_result_4(2) <= \result_4[2]~output_o\;

ww_result_4(3) <= \result_4[3]~output_o\;

ww_result_4(4) <= \result_4[4]~output_o\;

ww_result_4(5) <= \result_4[5]~output_o\;

ww_result_4(6) <= \result_4[6]~output_o\;
END structure;


